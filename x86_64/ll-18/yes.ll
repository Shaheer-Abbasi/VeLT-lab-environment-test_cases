; ModuleID = 'src/yes.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.iovec = type { ptr, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !310
@.str.20 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !302
@.str.1.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !304
@.str.2.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !306
@.str.3.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !308
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !312
@stderr = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !318
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !349
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !320
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !339
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !341
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !343
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !345
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !347
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !351
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !353
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !358
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !363
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !381
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.49, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.50, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !384
@optind = external local_unnamed_addr global i32, align 4
@.str.1.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !389
@.str.2.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !391
@.str.3.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !393
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !405
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !411
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !413
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !415
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !446
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !449
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !451
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !456
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !458
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !460
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !462
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !464
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !466
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !468
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.64, ptr @.str.1.65, ptr @.str.2.66, ptr @.str.3.67, ptr @.str.4.68, ptr @.str.5.69, ptr @.str.6.70, ptr @.str.7.71, ptr @.str.8.72, ptr @.str.9.73, ptr null], align 16, !dbg !470
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !495
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !509
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !547
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !554
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !511
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !556
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !499
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !516
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !518
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !520
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !522
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !524
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !562
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !565
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !567
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !569
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !571
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !573
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !578
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !583
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !585
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !590
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !595
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !600
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !605
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !607
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !612
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !617
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !622
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !627
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !629
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !631
@.str.20.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !633
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !635
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !637
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !639
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !644
@exit_failure = dso_local global i32 1, align 4, !dbg !652
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !658
@.str.1.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !661
@.str.2.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !663
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !665
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !668
@rpl_pipe2.have_pipe2_really = internal unnamed_addr global i32 0, align 4, !dbg !683
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !709

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !802 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !806, metadata !DIExpression()), !dbg !807
  %2 = icmp eq i32 %0, 0, !dbg !808
  br i1 %2, label %8, label %3, !dbg !810

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !811, !tbaa !813
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !811
  %6 = load ptr, ptr @program_name, align 8, !dbg !811, !tbaa !813
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !811
  br label %31, !dbg !811

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !817
  %10 = load ptr, ptr @program_name, align 8, !dbg !817, !tbaa !813
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #40, !dbg !817
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !819
  %13 = load ptr, ptr @stdout, align 8, !dbg !819, !tbaa !813
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !819
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !820
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !820
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !821
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !821
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !822, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata !841, metadata !835, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata ptr poison, metadata !834, metadata !DIExpression()), !dbg !839
  tail call void @emit_bug_reporting_address() #40, !dbg !842
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !843
  call void @llvm.dbg.value(metadata ptr %17, metadata !837, metadata !DIExpression()), !dbg !839
  %18 = icmp eq ptr %17, null, !dbg !844
  br i1 %18, label %26, label %19, !dbg !846

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #41, !dbg !847
  %21 = icmp eq i32 %20, 0, !dbg !847
  br i1 %21, label %26, label %22, !dbg !848

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #40, !dbg !849
  %24 = load ptr, ptr @stdout, align 8, !dbg !849, !tbaa !813
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !849
  br label %26, !dbg !851

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !834, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !838, metadata !DIExpression()), !dbg !839
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #40, !dbg !852
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #40, !dbg !852
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #40, !dbg !853
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #40, !dbg !853
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !854
  unreachable, !dbg !854
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !855 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !859 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !865 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !868 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !213, metadata !DIExpression()), !dbg !872
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !214, metadata !DIExpression()), !dbg !872
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !873, !tbaa !874
  %3 = icmp eq i32 %2, -1, !dbg !876
  br i1 %3, label %4, label %16, !dbg !877

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #40, !dbg !878
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !215, metadata !DIExpression()), !dbg !879
  %6 = icmp eq ptr %5, null, !dbg !880
  br i1 %6, label %14, label %7, !dbg !881

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !882, !tbaa !883
  %9 = icmp eq i8 %8, 0, !dbg !882
  br i1 %9, label %14, label %10, !dbg !884

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !885, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !891, metadata !DIExpression()), !dbg !892
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #41, !dbg !894
  %12 = icmp eq i32 %11, 0, !dbg !895
  %13 = zext i1 %12 to i32, !dbg !884
  br label %14, !dbg !884

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !896, !tbaa !874
  br label %16, !dbg !897

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !898
  %18 = icmp eq i32 %17, 0, !dbg !898
  br i1 %18, label %22, label %19, !dbg !900

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !901, !tbaa !813
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !901
  br label %124, !dbg !903

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !218, metadata !DIExpression()), !dbg !872
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #41, !dbg !904
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !905
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !872
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !906
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !221, metadata !DIExpression()), !dbg !872
  %26 = icmp eq ptr %25, null, !dbg !907
  br i1 %26, label %54, label %27, !dbg !908

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !909
  br i1 %28, label %54, label %29, !dbg !910

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !222, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !911
  %30 = icmp ult ptr %24, %25, !dbg !912
  br i1 %30, label %31, label %54, !dbg !913

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !872
  %33 = load ptr, ptr %32, align 8, !tbaa !813
  br label %34, !dbg !913

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !222, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !911
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !914
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !222, metadata !DIExpression()), !dbg !911
  %38 = load i8, ptr %35, align 1, !dbg !914, !tbaa !883
  %39 = sext i8 %38 to i64, !dbg !914
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !914
  %41 = load i16, ptr %40, align 2, !dbg !914, !tbaa !915
  %42 = freeze i16 %41, !dbg !917
  %43 = lshr i16 %42, 13, !dbg !917
  %44 = and i16 %43, 1, !dbg !917
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !918
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !226, metadata !DIExpression()), !dbg !911
  %47 = icmp ult ptr %37, %25, !dbg !912
  %48 = icmp ult i64 %46, 2, !dbg !919
  %49 = select i1 %47, i1 %48, i1 false, !dbg !919
  br i1 %49, label %34, label %50, !dbg !913, !llvm.loop !920

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !922
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !924
  %53 = zext i1 %51 to i8, !dbg !924
  br label %54, !dbg !924

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !872
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !872
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !218, metadata !DIExpression()), !dbg !872
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !221, metadata !DIExpression()), !dbg !872
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.16) #41, !dbg !925
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !227, metadata !DIExpression()), !dbg !872
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !926
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !228, metadata !DIExpression()), !dbg !872
  br label %59, !dbg !927

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !872
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !872
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !218, metadata !DIExpression()), !dbg !872
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !228, metadata !DIExpression()), !dbg !872
  %62 = load i8, ptr %60, align 1, !dbg !928, !tbaa !883
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !929

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !930
  %65 = load i8, ptr %64, align 1, !dbg !933, !tbaa !883
  %66 = icmp eq i8 %65, 45, !dbg !934
  %67 = select i1 %66, i8 0, i8 %61, !dbg !935
  br label %68, !dbg !935

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !872
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !218, metadata !DIExpression()), !dbg !872
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !936
  %71 = load ptr, ptr %70, align 8, !dbg !936, !tbaa !813
  %72 = sext i8 %62 to i64, !dbg !936
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !936
  %74 = load i16, ptr %73, align 2, !dbg !936, !tbaa !915
  %75 = and i16 %74, 8192, !dbg !936
  %76 = icmp eq i16 %75, 0, !dbg !936
  br i1 %76, label %92, label %77, !dbg !938

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !939
  br i1 %78, label %94, label %79, !dbg !942

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !943
  %81 = load i8, ptr %80, align 1, !dbg !943, !tbaa !883
  %82 = sext i8 %81 to i64, !dbg !943
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !943
  %84 = load i16, ptr %83, align 2, !dbg !943, !tbaa !915
  %85 = and i16 %84, 8192, !dbg !943
  %86 = icmp eq i16 %85, 0, !dbg !943
  br i1 %86, label %87, label %94, !dbg !944

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !945
  %89 = icmp ne i8 %88, 0, !dbg !945
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !947
  br i1 %91, label %92, label %94, !dbg !947

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !948
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !228, metadata !DIExpression()), !dbg !872
  br label %59, !dbg !927, !llvm.loop !949

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !951
  %96 = load ptr, ptr @stdout, align 8, !dbg !951, !tbaa !813
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata !841, metadata !891, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !285, metadata !DIExpression()), !dbg !872
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #41, !dbg !972
  %99 = icmp eq i32 %98, 0, !dbg !972
  br i1 %99, label %103, label %100, !dbg !974

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #41, !dbg !975
  %102 = icmp eq i32 %101, 0, !dbg !975
  br i1 %102, label %103, label %106, !dbg !976

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !977
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #40, !dbg !977
  br label %109, !dbg !979

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !980
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #40, !dbg !980
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !813
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %110), !dbg !982
  %112 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !813
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %112), !dbg !983
  %114 = ptrtoint ptr %60 to i64, !dbg !984
  %115 = sub i64 %114, %95, !dbg !984
  %116 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !813
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !984
  %118 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !813
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %118), !dbg !985
  %120 = load ptr, ptr @stdout, align 8, !dbg !986, !tbaa !813
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %120), !dbg !986
  %122 = load ptr, ptr @stdout, align 8, !dbg !987, !tbaa !813
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !987
  br label %124, !dbg !988

124:                                              ; preds = %109, %19
  ret void, !dbg !988
}

; Function Attrs: nounwind
declare !dbg !989 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !993 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !997 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !999 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1002 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1005 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1008 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1011 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1017 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1018 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1024 {
  %3 = alloca [2 x i32], align 8, !DIAssignID !1045
  %4 = alloca %struct.iovec, align 8, !DIAssignID !1046
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1029, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1030, metadata !DIExpression()), !dbg !1047
  %5 = load ptr, ptr %1, align 8, !dbg !1048, !tbaa !813
  tail call void @set_program_name(ptr noundef %5) #40, !dbg !1049
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #40, !dbg !1050
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #40, !dbg !1051
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #40, !dbg !1052
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1053
  %10 = load ptr, ptr @Version, align 8, !dbg !1054, !tbaa !813
  %11 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #40, !dbg !1055
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %10, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %11, ptr noundef null) #40, !dbg !1056
  %12 = load i32, ptr @optind, align 4, !dbg !1057, !tbaa !874
  %13 = sext i32 %12 to i64, !dbg !1058
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !1058
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1031, metadata !DIExpression()), !dbg !1047
  %15 = sext i32 %0 to i64, !dbg !1059
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1032, metadata !DIExpression()), !dbg !1047
  %17 = icmp eq i32 %12, %0, !dbg !1060
  br i1 %17, label %18, label %20, !dbg !1062

18:                                               ; preds = %2
  %19 = getelementptr inbounds ptr, ptr %16, i64 1, !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1032, metadata !DIExpression()), !dbg !1047
  store ptr @.str.11, ptr %16, align 8, !dbg !1064, !tbaa !813
  br label %20, !dbg !1065

20:                                               ; preds = %18, %2
  %21 = phi ptr [ %19, %18 ], [ %16, %2 ], !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1032, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1033, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1034, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1035, metadata !DIExpression()), !dbg !1047
  %22 = load ptr, ptr %14, align 8, !dbg !1066, !tbaa !813
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #41, !dbg !1067
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1036, metadata !DIExpression()), !dbg !1068
  %24 = add i64 %23, 1, !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1033, metadata !DIExpression()), !dbg !1047
  %25 = getelementptr inbounds ptr, ptr %14, i64 1, !dbg !1070
  %26 = icmp ult ptr %25, %21, !dbg !1072
  br i1 %26, label %27, label %43, !dbg !1073

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %41, %27 ], [ %25, %20 ]
  %29 = phi i64 [ %40, %27 ], [ %24, %20 ]
  %30 = phi i64 [ %38, %27 ], [ %23, %20 ]
  %31 = phi ptr [ %35, %27 ], [ %22, %20 ]
  %32 = phi i8 [ %37, %27 ], [ 1, %20 ]
  tail call void @llvm.dbg.value(metadata i8 %32, metadata !1034, metadata !DIExpression()), !dbg !1047
  %33 = getelementptr inbounds i8, ptr %31, i64 %30, !dbg !1074
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1075
  %35 = load ptr, ptr %28, align 8, !dbg !1076, !tbaa !813
  %36 = icmp eq ptr %34, %35, !dbg !1077
  %37 = select i1 %36, i8 %32, i8 0, !dbg !1078
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1033, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1034, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !1035, metadata !DIExpression()), !dbg !1047
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #41, !dbg !1067
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !1036, metadata !DIExpression()), !dbg !1068
  %39 = add i64 %29, 1, !dbg !1079
  %40 = add i64 %39, %38, !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1033, metadata !DIExpression()), !dbg !1047
  %41 = getelementptr inbounds ptr, ptr %28, i64 1, !dbg !1070
  %42 = icmp ult ptr %41, %21, !dbg !1072
  br i1 %42, label %27, label %43, !dbg !1073

43:                                               ; preds = %27, %20
  %44 = phi i8 [ 1, %20 ], [ %37, %27 ], !dbg !1047
  %45 = phi i64 [ %24, %20 ], [ %40, %27 ], !dbg !1069
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !1034, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1035, metadata !DIExpression()), !dbg !1047
  %46 = icmp ult i64 %45, 4097, !dbg !1080
  %47 = and i8 %44, 1, !dbg !1082
  %48 = select i1 %46, i64 8192, i64 %45, !dbg !1083
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1033, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1034, metadata !DIExpression()), !dbg !1047
  %49 = freeze i64 %48, !dbg !1084
  %50 = icmp eq i8 %47, 0, !dbg !1082
  %51 = select i1 %46, i1 true, i1 %50, !dbg !1082
  br i1 %51, label %52, label %54, !dbg !1082

52:                                               ; preds = %43
  %53 = tail call noalias nonnull ptr @xmalloc(i64 noundef %49) #44, !dbg !1087
  br label %54, !dbg !1082

54:                                               ; preds = %43, %52
  %55 = phi ptr [ %53, %52 ], [ %22, %43 ], !dbg !1082
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !1038, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1039, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1035, metadata !DIExpression()), !dbg !1047
  br label %56, !dbg !1088

56:                                               ; preds = %63, %54
  %57 = phi ptr [ %14, %54 ], [ %67, %63 ], !dbg !1047
  %58 = phi i64 [ 0, %54 ], [ %65, %63 ], !dbg !1047
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1039, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !1035, metadata !DIExpression()), !dbg !1047
  %59 = load ptr, ptr %57, align 8, !dbg !1089, !tbaa !813
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #41, !dbg !1090
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !1040, metadata !DIExpression()), !dbg !1091
  br i1 %51, label %61, label %63, !dbg !1092

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %55, i64 %58, !dbg !1093
  call void @llvm.dbg.value(metadata ptr %62, metadata !1095, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr %59, metadata !1102, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %60, metadata !1103, metadata !DIExpression()), !dbg !1104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %62, ptr noundef nonnull align 1 %59, i64 noundef %60, i1 noundef false) #40, !dbg !1106
  br label %63, !dbg !1107

63:                                               ; preds = %61, %56
  %64 = add i64 %60, %58, !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !1039, metadata !DIExpression()), !dbg !1047
  %65 = add i64 %64, 1, !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1039, metadata !DIExpression()), !dbg !1047
  %66 = getelementptr inbounds i8, ptr %55, i64 %64, !dbg !1110
  store i8 32, ptr %66, align 1, !dbg !1111, !tbaa !883
  %67 = getelementptr inbounds ptr, ptr %57, i64 1, !dbg !1112
  tail call void @llvm.dbg.value(metadata ptr %67, metadata !1035, metadata !DIExpression()), !dbg !1047
  %68 = icmp ult ptr %67, %21, !dbg !1113
  br i1 %68, label %56, label %69, !dbg !1114, !llvm.loop !1115

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, ptr %55, i64 %64
  store i8 10, ptr %70, align 1, !dbg !1117, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1042, metadata !DIExpression()), !dbg !1047
  %71 = tail call i64 @full_write(i32 noundef 1, ptr noundef nonnull %55, i64 noundef %65) #40, !dbg !1118
  %72 = icmp eq i64 %71, %65, !dbg !1119
  br i1 %72, label %73, label %195, !dbg !1120

73:                                               ; preds = %69
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1121, metadata !DIExpression(), metadata !1045, metadata ptr %3, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1134, metadata !DIExpression(), metadata !1046, metadata ptr %4, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr %55, metadata !1126, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 %65, metadata !1127, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8 0, metadata !1128, metadata !DIExpression()), !dbg !1157
  %74 = tail call i32 @getpagesize() #43, !dbg !1160
  %75 = sext i32 %74 to i64, !dbg !1160
  call void @llvm.dbg.value(metadata i64 %75, metadata !1129, metadata !DIExpression()), !dbg !1157
  %76 = tail call i32 @isapipe(i32 noundef 1) #40, !dbg !1161
  %77 = icmp sgt i32 %76, 0, !dbg !1162
  call void @llvm.dbg.value(metadata i1 %77, metadata !1130, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1163
  store i64 -1, ptr %3, align 8, !dbg !1164, !DIAssignID !1165
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1121, metadata !DIExpression(), metadata !1165, metadata ptr %3, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr null, metadata !1132, metadata !DIExpression()), !dbg !1157
  br i1 %77, label %78, label %83, !dbg !1166

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i32 1, metadata !1167, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %65, metadata !1172, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()), !dbg !1175
  %79 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1031, i32 noundef 524288) #40, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %79, metadata !1173, metadata !DIExpression()), !dbg !1175
  %80 = icmp slt i32 %79, 0, !dbg !1180
  br i1 %80, label %81, label %93, !dbg !1181

81:                                               ; preds = %78
  %82 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1032) #40, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %82, metadata !1173, metadata !DIExpression()), !dbg !1175
  br label %93, !dbg !1183

83:                                               ; preds = %73
  %84 = call i32 @pipe2_safer(ptr noundef nonnull %3, i32 noundef 0) #40, !dbg !1184
  %85 = icmp slt i32 %84, 0, !dbg !1187
  br i1 %85, label %86, label %87, !dbg !1188

86:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1189
  br label %178, !dbg !1190

87:                                               ; preds = %83
  %88 = load i32, ptr %3, align 8, !dbg !1191, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %88, metadata !1167, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %65, metadata !1172, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()), !dbg !1192
  %89 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %88, i32 noundef 1031, i32 noundef 524288) #40, !dbg !1194
  call void @llvm.dbg.value(metadata i32 %89, metadata !1173, metadata !DIExpression()), !dbg !1192
  %90 = icmp slt i32 %89, 0, !dbg !1195
  br i1 %90, label %91, label %93, !dbg !1196

91:                                               ; preds = %87
  %92 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %88, i32 noundef 1032) #40, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %92, metadata !1173, metadata !DIExpression()), !dbg !1192
  br label %93, !dbg !1198

93:                                               ; preds = %91, %87, %81, %78
  %94 = phi i32 [ %82, %81 ], [ %79, %78 ], [ %92, %91 ], [ %89, %87 ]
  %95 = icmp slt i32 %94, 1, !dbg !1199
  %96 = sdiv i32 %94, 4, !dbg !1202
  %97 = select i1 %95, i32 16384, i32 %96, !dbg !1202
  %98 = freeze i32 %97, !dbg !1203
  %99 = sext i32 %98 to i64, !dbg !1203
  %100 = urem i64 %99, %65, !dbg !1204
  %101 = sub nuw i64 %99, %100, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %101, metadata !1131, metadata !DIExpression()), !dbg !1157
  %102 = icmp eq i64 %101, 0, !dbg !1205
  br i1 %102, label %163, label %103, !dbg !1207

103:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i64 %75, metadata !1208, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %101, metadata !1214, metadata !DIExpression()), !dbg !1215
  %104 = call noalias ptr @aligned_alloc(i64 noundef %75, i64 noundef %101) #45, !dbg !1218
  call void @llvm.assume(i1 true) [ "align"(ptr %104, i64 %75) ], !dbg !1218
  call void @llvm.dbg.value(metadata ptr %104, metadata !1132, metadata !DIExpression()), !dbg !1157
  %105 = icmp eq ptr %104, null, !dbg !1219
  br i1 %105, label %163, label %106, !dbg !1220

106:                                              ; preds = %103
  call void @llvm.dbg.value(metadata ptr %104, metadata !1221, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr %55, metadata !1226, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %65, metadata !1227, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %101, metadata !1228, metadata !DIExpression()), !dbg !1234
  %107 = icmp eq ptr %104, %55, !dbg !1236
  br i1 %107, label %109, label %108, !dbg !1238

108:                                              ; preds = %106
  call void @llvm.dbg.value(metadata ptr %104, metadata !1095, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr %55, metadata !1102, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %65, metadata !1103, metadata !DIExpression()), !dbg !1239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %104, ptr noundef nonnull align 1 %55, i64 noundef %65, i1 noundef false) #40, !dbg !1241
  br label %109, !dbg !1242

109:                                              ; preds = %108, %106
  call void @llvm.dbg.value(metadata i64 %65, metadata !1229, metadata !DIExpression()), !dbg !1243
  %110 = icmp sgt i64 %101, %65, !dbg !1244
  br i1 %110, label %111, label %118, !dbg !1245

111:                                              ; preds = %109, %111
  %112 = phi i64 [ %116, %111 ], [ %65, %109 ]
  call void @llvm.dbg.value(metadata i64 %112, metadata !1229, metadata !DIExpression()), !dbg !1243
  %113 = sub nsw i64 %101, %112, !dbg !1246
  %114 = call i64 @llvm.smin.i64(i64 %112, i64 %113), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %114, metadata !1231, metadata !DIExpression()), !dbg !1247
  %115 = getelementptr inbounds i8, ptr %104, i64 %112, !dbg !1248
  call void @llvm.dbg.value(metadata ptr %115, metadata !1095, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr %104, metadata !1102, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %114, metadata !1103, metadata !DIExpression()), !dbg !1249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %115, ptr noundef nonnull align 1 %104, i64 noundef %114, i1 noundef false) #40, !dbg !1251
  %116 = add nsw i64 %114, %112, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %116, metadata !1229, metadata !DIExpression()), !dbg !1243
  %117 = icmp slt i64 %116, %101, !dbg !1244
  br i1 %117, label %111, label %118, !dbg !1245, !llvm.loop !1253

118:                                              ; preds = %111, %109
  %119 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1, !dbg !1255
  %120 = load i32, ptr %119, align 4, !dbg !1255
  %121 = select i1 %77, i32 1, i32 %120, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %121, metadata !1133, metadata !DIExpression()), !dbg !1157
  %122 = getelementptr inbounds %struct.iovec, ptr %4, i64 0, i32 1
  %123 = icmp slt i64 %101, 1
  %124 = or i1 %77, %123
  br label %125, !dbg !1256

125:                                              ; preds = %159, %118
  %126 = phi i8 [ 0, %118 ], [ %160, %159 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8 %126, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #40, !dbg !1258
  store ptr %104, ptr %4, align 8, !dbg !1259, !tbaa !1260, !DIAssignID !1263
  call void @llvm.dbg.assign(metadata ptr %104, metadata !1134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1263, metadata ptr %4, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.assign(metadata i64 %101, metadata !1134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1264, metadata ptr %122, metadata !DIExpression()), !dbg !1159
  store i64 %101, ptr %122, align 8, !dbg !1159, !tbaa !1265, !DIAssignID !1264
  br label %134, !dbg !1266

127:                                              ; preds = %134
  %128 = select i1 %77, i8 1, i8 %135, !dbg !1267
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1157
  %129 = load ptr, ptr %4, align 8, !dbg !1268, !tbaa !1260
  %130 = getelementptr inbounds i8, ptr %129, i64 %140, !dbg !1269
  store ptr %130, ptr %4, align 8, !dbg !1270, !tbaa !1260, !DIAssignID !1271
  call void @llvm.dbg.assign(metadata ptr %130, metadata !1134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1271, metadata ptr %4, metadata !DIExpression()), !dbg !1159
  %131 = load i64, ptr %122, align 8, !dbg !1272, !tbaa !1265
  %132 = sub i64 %131, %140, !dbg !1272
  call void @llvm.dbg.assign(metadata i64 %132, metadata !1134, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1264, metadata ptr %122, metadata !DIExpression()), !dbg !1159
  store i64 %132, ptr %122, align 8, !dbg !1159, !tbaa !1265, !DIAssignID !1264
  %133 = icmp eq i64 %132, 0, !dbg !1273
  br i1 %133, label %143, label %134, !dbg !1266

134:                                              ; preds = %127, %125
  %135 = phi i8 [ %126, %125 ], [ %128, %127 ]
  %136 = phi i64 [ %101, %125 ], [ %132, %127 ]
  call void @llvm.dbg.value(metadata i8 %135, metadata !1128, metadata !DIExpression()), !dbg !1157
  %137 = urem i64 %136, %75, !dbg !1274
  %138 = icmp eq i64 %137, 0, !dbg !1275
  %139 = select i1 %138, i32 8, i32 0, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %139, metadata !1143, metadata !DIExpression()), !dbg !1276
  %140 = call i64 @vmsplice(i32 noundef %121, ptr noundef nonnull %4, i64 noundef 1, i32 noundef %139) #40, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %140, metadata !1145, metadata !DIExpression()), !dbg !1276
  %141 = icmp sgt i64 %140, 0, !dbg !1278
  br i1 %141, label %127, label %142, !dbg !1280, !llvm.loop !1281

142:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i8 %135, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #40, !dbg !1283
  br label %163

143:                                              ; preds = %127
  br i1 %124, label %159, label %144, !dbg !1284

144:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 %101, metadata !1148, metadata !DIExpression()), !dbg !1285
  %145 = load i32, ptr %3, align 8, !dbg !1286, !tbaa !874
  %146 = call i64 @splice(i32 noundef %145, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %101, i32 noundef 1) #40, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %146, metadata !1151, metadata !DIExpression()), !dbg !1288
  %147 = icmp sgt i64 %146, 0, !dbg !1289
  call void @llvm.dbg.value(metadata i8 undef, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 poison, metadata !1148, metadata !DIExpression()), !dbg !1285
  br i1 %147, label %148, label %161, !llvm.loop !1291

148:                                              ; preds = %144
  %149 = sub nsw i64 %101, %146, !dbg !1294
  call void @llvm.dbg.value(metadata i8 poison, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 poison, metadata !1148, metadata !DIExpression()), !dbg !1285
  %150 = icmp sgt i64 %149, 0, !dbg !1295
  br i1 %150, label %154, label %159, !dbg !1292

151:                                              ; preds = %154
  %152 = sub nsw i64 %155, %157, !dbg !1294
  call void @llvm.dbg.value(metadata i8 poison, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 poison, metadata !1148, metadata !DIExpression()), !dbg !1285
  %153 = icmp sgt i64 %152, 0, !dbg !1295
  br i1 %153, label %154, label %159, !dbg !1292, !llvm.loop !1296

154:                                              ; preds = %148, %151
  %155 = phi i64 [ %152, %151 ], [ %149, %148 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 %155, metadata !1148, metadata !DIExpression()), !dbg !1285
  %156 = load i32, ptr %3, align 8, !dbg !1286, !tbaa !874
  %157 = call i64 @splice(i32 noundef %156, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %155, i32 noundef 1) #40, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %157, metadata !1151, metadata !DIExpression()), !dbg !1288
  %158 = icmp sgt i64 %157, 0, !dbg !1289
  call void @llvm.dbg.value(metadata i8 undef, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i64 poison, metadata !1148, metadata !DIExpression()), !dbg !1285
  br i1 %158, label %151, label %161, !llvm.loop !1298

159:                                              ; preds = %151, %148, %143
  %160 = phi i8 [ %128, %143 ], [ 1, %148 ], [ 1, %151 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8 %160, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #40, !dbg !1283
  br label %125

161:                                              ; preds = %144, %154
  %162 = phi i8 [ 1, %154 ], [ %128, %144 ]
  call void @llvm.dbg.value(metadata i8 %162, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #40, !dbg !1283
  br label %163, !dbg !1299

163:                                              ; preds = %161, %142, %103, %93
  %164 = phi ptr [ null, %93 ], [ null, %103 ], [ %104, %142 ], [ %104, %161 ], !dbg !1157
  %165 = phi i8 [ 0, %93 ], [ 0, %103 ], [ %135, %142 ], [ %162, %161 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8 %165, metadata !1128, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr %164, metadata !1132, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.label(metadata !1153), !dbg !1300
  %166 = load i32, ptr %3, align 8, !dbg !1299, !tbaa !874
  %167 = icmp sgt i32 %166, -1, !dbg !1301
  br i1 %167, label %168, label %175, !dbg !1302

168:                                              ; preds = %163
  %169 = tail call ptr @__errno_location() #43, !dbg !1303
  %170 = load i32, ptr %169, align 4, !dbg !1303, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %170, metadata !1154, metadata !DIExpression()), !dbg !1304
  %171 = call i32 @close(i32 noundef %166) #40, !dbg !1305
  %172 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1, !dbg !1306
  %173 = load i32, ptr %172, align 4, !dbg !1306, !tbaa !874
  %174 = call i32 @close(i32 noundef %173) #40, !dbg !1307
  store i32 %170, ptr %169, align 4, !dbg !1308, !tbaa !874
  br label %175, !dbg !1309

175:                                              ; preds = %163, %168
  call void @llvm.dbg.value(metadata ptr %164, metadata !1310, metadata !DIExpression()), !dbg !1315
  call void @free(ptr noundef %164) #40, !dbg !1317
  %176 = and i8 %165, 1, !dbg !1318
  %177 = icmp eq i8 %176, 0, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1189
  br i1 %177, label %178, label %195, !dbg !1190

178:                                              ; preds = %86, %175
  %179 = urem i64 %49, %65, !dbg !1084
  %180 = sub nuw i64 %49, %179, !dbg !1084
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !1039, metadata !DIExpression()), !dbg !1047
  %181 = icmp ugt i64 %180, %65, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %55, metadata !1221, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %55, metadata !1226, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %65, metadata !1227, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %180, metadata !1228, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %65, metadata !1229, metadata !DIExpression()), !dbg !1323
  %182 = icmp slt i64 %65, %180
  %183 = and i1 %181, %182, !dbg !1324
  br i1 %183, label %184, label %191, !dbg !1324

184:                                              ; preds = %178, %184
  %185 = phi i64 [ %189, %184 ], [ %65, %178 ]
  call void @llvm.dbg.value(metadata i64 %185, metadata !1229, metadata !DIExpression()), !dbg !1323
  %186 = sub nsw i64 %180, %185, !dbg !1325
  %187 = call i64 @llvm.smin.i64(i64 %185, i64 %186), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %187, metadata !1231, metadata !DIExpression()), !dbg !1326
  %188 = getelementptr inbounds i8, ptr %55, i64 %185, !dbg !1327
  call void @llvm.dbg.value(metadata ptr %188, metadata !1095, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %55, metadata !1102, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %187, metadata !1103, metadata !DIExpression()), !dbg !1328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %188, ptr noundef nonnull align 1 %55, i64 noundef %187, i1 noundef false) #40, !dbg !1330
  %189 = add nsw i64 %187, %185, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %189, metadata !1229, metadata !DIExpression()), !dbg !1323
  %190 = icmp slt i64 %189, %180, !dbg !1332
  br i1 %190, label %184, label %191, !dbg !1333, !llvm.loop !1334

191:                                              ; preds = %184, %178
  br label %192, !dbg !1336

192:                                              ; preds = %191, %192
  %193 = call i64 @full_write(i32 noundef 1, ptr noundef %55, i64 noundef %180) #40, !dbg !1337
  %194 = icmp eq i64 %193, %180, !dbg !1338
  br i1 %194, label %192, label %195, !dbg !1336, !llvm.loop !1339

195:                                              ; preds = %192, %175, %69
  %196 = tail call ptr @__errno_location() #43, !dbg !1341
  %197 = load i32, ptr %196, align 4, !dbg !1341, !tbaa !874
  %198 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1341
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %197, ptr noundef %198) #40, !dbg !1341
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
  store ptr %0, ptr @file_name, align 8, !dbg !1382, !tbaa !813
  ret void, !dbg !1383
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1384 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1388, metadata !DIExpression()), !dbg !1389
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1390, !tbaa !1391
  ret void, !dbg !1393
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1394 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1399, !tbaa !813
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1400
  %3 = icmp eq i32 %2, 0, !dbg !1401
  br i1 %3, label %22, label %4, !dbg !1402

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1403, !tbaa !1391, !range !1404, !noundef !841
  %6 = icmp eq i8 %5, 0, !dbg !1403
  br i1 %6, label %11, label %7, !dbg !1405

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1406
  %9 = load i32, ptr %8, align 4, !dbg !1406, !tbaa !874
  %10 = icmp eq i32 %9, 32, !dbg !1407
  br i1 %10, label %22, label %11, !dbg !1408

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #40, !dbg !1409
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1396, metadata !DIExpression()), !dbg !1410
  %13 = load ptr, ptr @file_name, align 8, !dbg !1411, !tbaa !813
  %14 = icmp eq ptr %13, null, !dbg !1411
  %15 = tail call ptr @__errno_location() #43, !dbg !1413
  %16 = load i32, ptr %15, align 4, !dbg !1413, !tbaa !874
  br i1 %14, label %19, label %17, !dbg !1414

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1415
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #40, !dbg !1415
  br label %20, !dbg !1415

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #40, !dbg !1416
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1417, !tbaa !874
  tail call void @_exit(i32 noundef %21) #42, !dbg !1418
  unreachable, !dbg !1418

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1419, !tbaa !813
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1421
  %25 = icmp eq i32 %24, 0, !dbg !1422
  br i1 %25, label %28, label %26, !dbg !1423

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1424, !tbaa !874
  tail call void @_exit(i32 noundef %27) #42, !dbg !1425
  unreachable, !dbg !1425

28:                                               ; preds = %22
  ret void, !dbg !1426
}

; Function Attrs: noreturn
declare !dbg !1427 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !1428 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1432, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1433, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1434, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1435, metadata !DIExpression()), !dbg !1436
  tail call fastcc void @flush_stdout(), !dbg !1437
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1438, !tbaa !813
  %6 = icmp eq ptr %5, null, !dbg !1438
  br i1 %6, label %8, label %7, !dbg !1440

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !1441
  br label %12, !dbg !1441

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1442, !tbaa !813
  %10 = tail call ptr @getprogname() #41, !dbg !1442
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %10) #40, !dbg !1442
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1444
  ret void, !dbg !1445
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1446 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1448, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i32 1, metadata !1450, metadata !DIExpression()), !dbg !1453
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1456
  %2 = icmp slt i32 %1, 0, !dbg !1457
  br i1 %2, label %6, label %3, !dbg !1458

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1459, !tbaa !813
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1459
  br label %6, !dbg !1459

6:                                                ; preds = %3, %0
  ret void, !dbg !1460
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1461 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1467
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1463, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1464, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1465, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1466, metadata !DIExpression()), !dbg !1468
  %6 = load ptr, ptr @stderr, align 8, !dbg !1469, !tbaa !813
  call void @llvm.dbg.value(metadata ptr %6, metadata !1470, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %2, metadata !1510, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %3, metadata !1511, metadata !DIExpression()), !dbg !1512
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1514
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1515, !tbaa !874
  %9 = add i32 %8, 1, !dbg !1515
  store i32 %9, ptr @error_message_count, align 4, !dbg !1515, !tbaa !874
  %10 = icmp eq i32 %1, 0, !dbg !1516
  br i1 %10, label %20, label %11, !dbg !1518

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1519, metadata !DIExpression(), metadata !1467, metadata ptr %5, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %1, metadata !1522, metadata !DIExpression()), !dbg !1527
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1529
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1530
  call void @llvm.dbg.value(metadata ptr %12, metadata !1523, metadata !DIExpression()), !dbg !1527
  %13 = icmp eq ptr %12, null, !dbg !1531
  br i1 %13, label %14, label %16, !dbg !1533

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #40, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %15, metadata !1523, metadata !DIExpression()), !dbg !1527
  br label %16, !dbg !1535

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1527
  call void @llvm.dbg.value(metadata ptr %17, metadata !1523, metadata !DIExpression()), !dbg !1527
  %18 = load ptr, ptr @stderr, align 8, !dbg !1536, !tbaa !813
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %17) #40, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1537
  br label %20, !dbg !1538

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1539, !tbaa !813
  call void @llvm.dbg.value(metadata i32 10, metadata !1540, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr %21, metadata !1546, metadata !DIExpression()), !dbg !1547
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1549
  %23 = load ptr, ptr %22, align 8, !dbg !1549, !tbaa !1550
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1549
  %25 = load ptr, ptr %24, align 8, !dbg !1549, !tbaa !1552
  %26 = icmp ult ptr %23, %25, !dbg !1549
  br i1 %26, label %29, label %27, !dbg !1549, !prof !1553

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !1549
  br label %31, !dbg !1549

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1549
  store ptr %30, ptr %22, align 8, !dbg !1549, !tbaa !1550
  store i8 10, ptr %23, align 1, !dbg !1549, !tbaa !883
  br label %31, !dbg !1549

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1554, !tbaa !813
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !1554
  %34 = icmp eq i32 %0, 0, !dbg !1555
  br i1 %34, label %36, label %35, !dbg !1557

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !1558
  unreachable, !dbg !1558

36:                                               ; preds = %31
  ret void, !dbg !1559
}

declare !dbg !1560 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1563 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1566 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1569 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1572 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1576 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1589
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1583, metadata !DIExpression(), metadata !1589, metadata ptr %4, metadata !DIExpression()), !dbg !1590
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1580, metadata !DIExpression()), !dbg !1590
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1581, metadata !DIExpression()), !dbg !1590
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1582, metadata !DIExpression()), !dbg !1590
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !1591
  call void @llvm.va_start(ptr nonnull %4), !dbg !1592
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !1593
  call void @llvm.va_end(ptr nonnull %4), !dbg !1594
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !1595
  ret void, !dbg !1595
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !322 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !333, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !334, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !335, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !336, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !337, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !338, metadata !DIExpression()), !dbg !1596
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1597, !tbaa !874
  %8 = icmp eq i32 %7, 0, !dbg !1597
  br i1 %8, label %23, label %9, !dbg !1599

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1600, !tbaa !874
  %11 = icmp eq i32 %10, %3, !dbg !1603
  br i1 %11, label %12, label %22, !dbg !1604

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1605, !tbaa !813
  %14 = icmp eq ptr %13, %2, !dbg !1606
  br i1 %14, label %36, label %15, !dbg !1607

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1608
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1609
  br i1 %18, label %19, label %22, !dbg !1609

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1610
  %21 = icmp eq i32 %20, 0, !dbg !1611
  br i1 %21, label %36, label %22, !dbg !1612

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1613, !tbaa !813
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1614, !tbaa !874
  br label %23, !dbg !1615

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1616
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1617, !tbaa !813
  %25 = icmp eq ptr %24, null, !dbg !1617
  br i1 %25, label %27, label %26, !dbg !1619

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !1620
  br label %31, !dbg !1620

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1621, !tbaa !813
  %29 = tail call ptr @getprogname() #41, !dbg !1621
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %29) #40, !dbg !1621
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1623, !tbaa !813
  %33 = icmp eq ptr %2, null, !dbg !1623
  %34 = select i1 %33, ptr @.str.3.31, ptr @.str.2.32, !dbg !1623
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !1623
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1624
  br label %36, !dbg !1625

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1625
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1626 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1635, metadata !DIExpression(), metadata !1636, metadata ptr %6, metadata !DIExpression()), !dbg !1637
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1630, metadata !DIExpression()), !dbg !1637
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1631, metadata !DIExpression()), !dbg !1637
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1632, metadata !DIExpression()), !dbg !1637
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1633, metadata !DIExpression()), !dbg !1637
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1634, metadata !DIExpression()), !dbg !1637
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !1638
  call void @llvm.va_start(ptr nonnull %6), !dbg !1639
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !1640
  call void @llvm.va_end(ptr nonnull %6), !dbg !1641
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !1642
  ret void, !dbg !1642
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1643 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1670
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1647, metadata !DIExpression(), metadata !1670, metadata ptr %3, metadata !DIExpression()), !dbg !1671
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1645, metadata !DIExpression()), !dbg !1671
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1646, metadata !DIExpression()), !dbg !1671
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40, !dbg !1672
  call void @llvm.va_start(ptr nonnull %3), !dbg !1673
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1658, metadata !DIExpression()), !dbg !1671
  switch i32 %1, label %90 [
    i32 0, label %4
    i32 1030, label %21
    i32 1, label %71
    i32 3, label %71
    i32 1025, label %71
    i32 9, label %71
    i32 1032, label %71
    i32 1034, label %71
    i32 11, label %71
    i32 1033, label %73
    i32 1031, label %73
    i32 10, label %73
    i32 1026, label %73
    i32 2, label %73
    i32 4, label %73
    i32 1024, label %73
    i32 8, label %73
  ], !dbg !1674

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !1675
  %6 = icmp ult i32 %5, 41, !dbg !1675
  br i1 %6, label %7, label %13, !dbg !1675

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1675
  %9 = load ptr, ptr %8, align 16, !dbg !1675
  %10 = zext nneg i32 %5 to i64, !dbg !1675
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !1675
  %12 = add nuw nsw i32 %5, 8, !dbg !1675
  store i32 %12, ptr %3, align 16, !dbg !1675, !DIAssignID !1676
  call void @llvm.dbg.assign(metadata i32 %12, metadata !1647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1676, metadata ptr %3, metadata !DIExpression()), !dbg !1671
  br label %17, !dbg !1675

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1675
  %15 = load ptr, ptr %14, align 8, !dbg !1675
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !1675
  store ptr %16, ptr %14, align 8, !dbg !1675, !DIAssignID !1677
  call void @llvm.dbg.assign(metadata ptr %16, metadata !1647, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1677, metadata ptr %14, metadata !DIExpression()), !dbg !1671
  br label %17, !dbg !1675

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !1675
  %19 = load i32, ptr %18, align 4, !dbg !1675
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1659, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i32 %0, metadata !1679, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %19, metadata !1682, metadata !DIExpression()), !dbg !1684
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #40, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %20, metadata !1683, metadata !DIExpression()), !dbg !1684
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1658, metadata !DIExpression()), !dbg !1671
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !1687
  %23 = icmp ult i32 %22, 41, !dbg !1687
  br i1 %23, label %24, label %30, !dbg !1687

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1687
  %26 = load ptr, ptr %25, align 16, !dbg !1687
  %27 = zext nneg i32 %22 to i64, !dbg !1687
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !1687
  %29 = add nuw nsw i32 %22, 8, !dbg !1687
  store i32 %29, ptr %3, align 16, !dbg !1687, !DIAssignID !1688
  call void @llvm.dbg.assign(metadata i32 %29, metadata !1647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1688, metadata ptr %3, metadata !DIExpression()), !dbg !1671
  br label %34, !dbg !1687

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1687
  %32 = load ptr, ptr %31, align 8, !dbg !1687
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !1687
  store ptr %33, ptr %31, align 8, !dbg !1687, !DIAssignID !1689
  call void @llvm.dbg.assign(metadata ptr %33, metadata !1647, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1689, metadata ptr %31, metadata !DIExpression()), !dbg !1671
  br label %34, !dbg !1687

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !1687
  %36 = load i32, ptr %35, align 4, !dbg !1687
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1662, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 %0, metadata !372, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 %36, metadata !373, metadata !DIExpression()), !dbg !1691
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1693, !tbaa !874
  %38 = icmp sgt i32 %37, -1, !dbg !1695
  br i1 %38, label %39, label %51, !dbg !1696

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #40, !dbg !1697
  call void @llvm.dbg.value(metadata i32 %40, metadata !374, metadata !DIExpression()), !dbg !1691
  %41 = icmp sgt i32 %40, -1, !dbg !1699
  br i1 %41, label %46, label %42, !dbg !1701

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #43, !dbg !1702
  %44 = load i32, ptr %43, align 4, !dbg !1702, !tbaa !874
  %45 = icmp eq i32 %44, 22, !dbg !1703
  br i1 %45, label %47, label %46, !dbg !1704

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1705, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %40, metadata !374, metadata !DIExpression()), !dbg !1691
  br label %107, !dbg !1707

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1679, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i32 %36, metadata !1682, metadata !DIExpression()), !dbg !1708
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %48, metadata !1683, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i32 %48, metadata !374, metadata !DIExpression()), !dbg !1691
  %49 = icmp sgt i32 %48, -1, !dbg !1712
  br i1 %49, label %50, label %107, !dbg !1714

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1715, !tbaa !874
  br label %55, !dbg !1716

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !1679, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i32 %36, metadata !1682, metadata !DIExpression()), !dbg !1717
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %52, metadata !1683, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i32 %52, metadata !374, metadata !DIExpression()), !dbg !1691
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !1720
  call void @llvm.dbg.value(metadata i32 %57, metadata !374, metadata !DIExpression()), !dbg !1691
  %58 = icmp sgt i32 %57, -1, !dbg !1721
  %59 = select i1 %58, i1 %56, i1 false, !dbg !1707
  br i1 %59, label %60, label %107, !dbg !1707

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #40, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %61, metadata !375, metadata !DIExpression()), !dbg !1723
  %62 = icmp slt i32 %61, 0, !dbg !1724
  br i1 %62, label %67, label %63, !dbg !1725

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !1726
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #40, !dbg !1727
  %66 = icmp eq i32 %65, -1, !dbg !1728
  br i1 %66, label %67, label %107, !dbg !1729

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #43, !dbg !1730
  %69 = load i32, ptr %68, align 4, !dbg !1730, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %69, metadata !378, metadata !DIExpression()), !dbg !1731
  %70 = call i32 @close(i32 noundef %57) #40, !dbg !1732
  store i32 %69, ptr %68, align 4, !dbg !1733, !tbaa !874
  call void @llvm.dbg.value(metadata i32 -1, metadata !374, metadata !DIExpression()), !dbg !1691
  br label %107, !dbg !1734

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !1735
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1658, metadata !DIExpression()), !dbg !1671
  br label %107, !dbg !1736

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !1737
  %75 = icmp ult i32 %74, 41, !dbg !1737
  br i1 %75, label %76, label %82, !dbg !1737

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1737
  %78 = load ptr, ptr %77, align 16, !dbg !1737
  %79 = zext nneg i32 %74 to i64, !dbg !1737
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !1737
  %81 = add nuw nsw i32 %74, 8, !dbg !1737
  store i32 %81, ptr %3, align 16, !dbg !1737, !DIAssignID !1738
  call void @llvm.dbg.assign(metadata i32 %81, metadata !1647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1738, metadata ptr %3, metadata !DIExpression()), !dbg !1671
  br label %86, !dbg !1737

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1737
  %84 = load ptr, ptr %83, align 8, !dbg !1737
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !1737
  store ptr %85, ptr %83, align 8, !dbg !1737, !DIAssignID !1739
  call void @llvm.dbg.assign(metadata ptr %85, metadata !1647, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1739, metadata ptr %83, metadata !DIExpression()), !dbg !1671
  br label %86, !dbg !1737

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !1737
  %88 = load i32, ptr %87, align 4, !dbg !1737
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1664, metadata !DIExpression()), !dbg !1740
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #40, !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !1658, metadata !DIExpression()), !dbg !1671
  br label %107, !dbg !1742

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !1743
  %92 = icmp ult i32 %91, 41, !dbg !1743
  br i1 %92, label %93, label %99, !dbg !1743

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1743
  %95 = load ptr, ptr %94, align 16, !dbg !1743
  %96 = zext nneg i32 %91 to i64, !dbg !1743
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !1743
  %98 = add nuw nsw i32 %91, 8, !dbg !1743
  store i32 %98, ptr %3, align 16, !dbg !1743, !DIAssignID !1744
  call void @llvm.dbg.assign(metadata i32 %98, metadata !1647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1744, metadata ptr %3, metadata !DIExpression()), !dbg !1671
  br label %103, !dbg !1743

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1743
  %101 = load ptr, ptr %100, align 8, !dbg !1743
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !1743
  store ptr %102, ptr %100, align 8, !dbg !1743, !DIAssignID !1745
  call void @llvm.dbg.assign(metadata ptr %102, metadata !1647, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1745, metadata ptr %100, metadata !DIExpression()), !dbg !1671
  br label %103, !dbg !1743

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !1743
  %105 = load ptr, ptr %104, align 8, !dbg !1743
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !1668, metadata !DIExpression()), !dbg !1746
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #40, !dbg !1747
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1658, metadata !DIExpression()), !dbg !1671
  br label %107, !dbg !1748

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !1749
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1658, metadata !DIExpression()), !dbg !1671
  call void @llvm.va_end(ptr nonnull %3), !dbg !1750
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40, !dbg !1751
  ret i32 %108, !dbg !1752
}

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1753 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1757, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1758, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1759, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1760, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1761, metadata !DIExpression()), !dbg !1764
  %4 = icmp sgt i64 %2, 0, !dbg !1765
  br i1 %4, label %5, label %20, !dbg !1766

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1759, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1761, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1760, metadata !DIExpression()), !dbg !1764
  %9 = tail call i64 @safe_write(i32 noundef %0, ptr noundef %7, i64 noundef %6) #40, !dbg !1767
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1762, metadata !DIExpression()), !dbg !1768
  %10 = icmp slt i64 %9, 0, !dbg !1769
  br i1 %10, label %20, label %11, !dbg !1771

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !1772
  br i1 %12, label %13, label %15, !dbg !1774

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #43, !dbg !1775
  store i32 28, ptr %14, align 4, !dbg !1777, !tbaa !874
  br label %20, !dbg !1778

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %9, %8, !dbg !1779
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1760, metadata !DIExpression()), !dbg !1764
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !1780
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1761, metadata !DIExpression()), !dbg !1764
  %18 = sub nsw i64 %6, %9, !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1759, metadata !DIExpression()), !dbg !1764
  %19 = icmp sgt i64 %18, 0, !dbg !1765
  br i1 %19, label %5, label %20, !dbg !1766

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1760, metadata !DIExpression()), !dbg !1764
  ret i64 %21, !dbg !1782
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1783 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1785, !tbaa !813
  ret ptr %1, !dbg !1786
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #21 !dbg !1787 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !1830
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1795, metadata !DIExpression(), metadata !1830, metadata ptr %2, metadata !DIExpression()), !dbg !1831
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1789, metadata !DIExpression()), !dbg !1831
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1790, metadata !DIExpression()), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1794, metadata !DIExpression()), !dbg !1831
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #40, !dbg !1832
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #40, !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1829, metadata !DIExpression()), !dbg !1831
  %4 = icmp eq i32 %3, 0, !dbg !1834
  br i1 %4, label %5, label %15, !dbg !1836

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1837
  %7 = load i64, ptr %6, align 8, !dbg !1837, !tbaa !1838
  %8 = icmp ult i64 %7, 2, !dbg !1841
  %9 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1842
  %10 = load i32, ptr %9, align 8, !dbg !1842
  %11 = and i32 %10, 61440, !dbg !1842
  %12 = icmp eq i32 %11, 4096, !dbg !1842
  %13 = select i1 %8, i1 %12, i1 false, !dbg !1842
  %14 = zext i1 %13 to i32, !dbg !1842
  br label %15, !dbg !1843

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ], !dbg !1831
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #40, !dbg !1844
  ret i32 %16, !dbg !1844
}

; Function Attrs: nofree nounwind
declare !dbg !1845 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1850 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1865, metadata !DIExpression(), metadata !1880, metadata ptr %7, metadata !DIExpression()), !dbg !1881
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1855, metadata !DIExpression()), !dbg !1882
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1856, metadata !DIExpression()), !dbg !1882
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1857, metadata !DIExpression()), !dbg !1882
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1858, metadata !DIExpression()), !dbg !1882
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1859, metadata !DIExpression()), !dbg !1882
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1860, metadata !DIExpression()), !dbg !1882
  %8 = load i32, ptr @opterr, align 4, !dbg !1883, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1861, metadata !DIExpression()), !dbg !1882
  store i32 0, ptr @opterr, align 4, !dbg !1884, !tbaa !874
  %9 = icmp eq i32 %0, 2, !dbg !1885
  br i1 %9, label %10, label %15, !dbg !1886

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1862, metadata !DIExpression()), !dbg !1888
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1889

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #40, !dbg !1890
  br label %15, !dbg !1891

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #40, !dbg !1892
  call void @llvm.va_start(ptr nonnull %7), !dbg !1893
  %14 = load ptr, ptr @stdout, align 8, !dbg !1894, !tbaa !813
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #40, !dbg !1895
  call void @exit(i32 noundef 0) #42, !dbg !1896
  unreachable, !dbg !1896

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1897, !tbaa !874
  store i32 0, ptr @optind, align 4, !dbg !1898, !tbaa !874
  ret void, !dbg !1899
}

; Function Attrs: nounwind
declare !dbg !1900 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1906 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1925
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1920, metadata !DIExpression(), metadata !1925, metadata ptr %8, metadata !DIExpression()), !dbg !1926
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1910, metadata !DIExpression()), !dbg !1927
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1911, metadata !DIExpression()), !dbg !1927
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1912, metadata !DIExpression()), !dbg !1927
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1913, metadata !DIExpression()), !dbg !1927
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1914, metadata !DIExpression()), !dbg !1927
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1915, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1927
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1916, metadata !DIExpression()), !dbg !1927
  %9 = load i32, ptr @opterr, align 4, !dbg !1928, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1917, metadata !DIExpression()), !dbg !1927
  store i32 1, ptr @opterr, align 4, !dbg !1929, !tbaa !874
  %10 = select i1 %5, ptr @.str.1.53, ptr @.str.48, !dbg !1930
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1918, metadata !DIExpression()), !dbg !1927
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1919, metadata !DIExpression()), !dbg !1927
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1932

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #40, !dbg !1933
  call void @llvm.va_start(ptr nonnull %8), !dbg !1934
  %13 = load ptr, ptr @stdout, align 8, !dbg !1935, !tbaa !813
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #40, !dbg !1936
  call void @exit(i32 noundef 0) #42, !dbg !1937
  unreachable, !dbg !1937

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1938, !tbaa !874
  br label %16, !dbg !1939

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #40, !dbg !1940
  br label %18, !dbg !1941

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1941, !tbaa !874
  ret void, !dbg !1942
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pipe2_safer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !1943 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1945, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1946, metadata !DIExpression()), !dbg !1956
  %3 = tail call i32 @rpl_pipe2(ptr noundef %0, i32 noundef %1) #40, !dbg !1957
  %4 = icmp eq i32 %3, 0, !dbg !1958
  br i1 %4, label %5, label %21, !dbg !1959

5:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1947, metadata !DIExpression()), !dbg !1960
  %6 = load i32, ptr %0, align 4, !dbg !1961, !tbaa !874
  %7 = tail call i32 @fd_safer_flag(i32 noundef %6, i32 noundef %1) #40, !dbg !1962
  store i32 %7, ptr %0, align 4, !dbg !1963, !tbaa !874
  %8 = icmp slt i32 %7, 0, !dbg !1964
  br i1 %8, label %9, label %16, !dbg !1965

9:                                                ; preds = %16, %5
  %10 = phi i64 [ 1, %5 ], [ 0, %16 ]
  %11 = tail call ptr @__errno_location() #43, !dbg !1966
  %12 = load i32, ptr %11, align 4, !dbg !1966, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1951, metadata !DIExpression()), !dbg !1967
  %13 = getelementptr inbounds i32, ptr %0, i64 %10, !dbg !1968
  %14 = load i32, ptr %13, align 4, !dbg !1968, !tbaa !874
  %15 = tail call i32 @close(i32 noundef %14) #40, !dbg !1969
  store i32 %12, ptr %11, align 4, !dbg !1970, !tbaa !874
  br label %21

16:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()), !dbg !1960
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()), !dbg !1960
  %17 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1961
  %18 = load i32, ptr %17, align 4, !dbg !1961, !tbaa !874
  %19 = tail call i32 @fd_safer_flag(i32 noundef %18, i32 noundef %1) #40, !dbg !1962
  store i32 %19, ptr %17, align 4, !dbg !1963, !tbaa !874
  %20 = icmp slt i32 %19, 0, !dbg !1964
  br i1 %20, label %9, label %21, !dbg !1965

21:                                               ; preds = %9, %16, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %9 ], [ 0, %16 ], !dbg !1956
  ret i32 %22, !dbg !1971
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !1972 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1974, metadata !DIExpression()), !dbg !1977
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !1978
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1975, metadata !DIExpression()), !dbg !1977
  %3 = icmp eq ptr %2, null, !dbg !1979
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1979
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1976, metadata !DIExpression()), !dbg !1977
  %6 = ptrtoint ptr %5 to i64, !dbg !1980
  %7 = ptrtoint ptr %0 to i64, !dbg !1980
  %8 = sub i64 %6, %7, !dbg !1980
  %9 = icmp sgt i64 %8, 6, !dbg !1982
  br i1 %9, label %10, label %19, !dbg !1983

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1984
  call void @llvm.dbg.value(metadata ptr %11, metadata !1985, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata ptr @.str.60, metadata !1990, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 7, metadata !1991, metadata !DIExpression()), !dbg !1992
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7), !dbg !1994
  %13 = icmp eq i32 %12, 0, !dbg !1995
  br i1 %13, label %14, label %19, !dbg !1996

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1974, metadata !DIExpression()), !dbg !1977
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.61, i64 noundef 3) #41, !dbg !1997
  %16 = icmp eq i32 %15, 0, !dbg !2000
  %17 = select i1 %16, i64 3, i64 0, !dbg !2001
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2001
  br label %19, !dbg !2001

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1976, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1974, metadata !DIExpression()), !dbg !1977
  store ptr %20, ptr @program_name, align 8, !dbg !2002, !tbaa !813
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2003, !tbaa !813
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2004, !tbaa !813
  ret void, !dbg !2005
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2006 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !417 {
  %3 = alloca i32, align 4, !DIAssignID !2007
  call void @llvm.dbg.assign(metadata i1 undef, metadata !427, metadata !DIExpression(), metadata !2007, metadata ptr %3, metadata !DIExpression()), !dbg !2008
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2009
  call void @llvm.dbg.assign(metadata i1 undef, metadata !432, metadata !DIExpression(), metadata !2009, metadata ptr %4, metadata !DIExpression()), !dbg !2008
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !424, metadata !DIExpression()), !dbg !2008
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !425, metadata !DIExpression()), !dbg !2008
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2010
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !426, metadata !DIExpression()), !dbg !2008
  %6 = icmp eq ptr %5, %0, !dbg !2011
  br i1 %6, label %7, label %14, !dbg !2013

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2014
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2015
  call void @llvm.dbg.value(metadata ptr %4, metadata !2016, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata ptr %4, metadata !2025, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 0, metadata !2030, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 8, metadata !2031, metadata !DIExpression()), !dbg !2032
  store i64 0, ptr %4, align 8, !dbg !2034
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2035
  %9 = icmp eq i64 %8, 2, !dbg !2037
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2038
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2008
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2039
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2039
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2008
  ret ptr %15, !dbg !2039
}

; Function Attrs: nounwind
declare !dbg !2040 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2046 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2051, metadata !DIExpression()), !dbg !2054
  %2 = tail call ptr @__errno_location() #43, !dbg !2055
  %3 = load i32, ptr %2, align 4, !dbg !2055, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2052, metadata !DIExpression()), !dbg !2054
  %4 = icmp eq ptr %0, null, !dbg !2056
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2056
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2053, metadata !DIExpression()), !dbg !2054
  store i32 %3, ptr %2, align 4, !dbg !2058, !tbaa !874
  ret ptr %6, !dbg !2059
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2060 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2066, metadata !DIExpression()), !dbg !2067
  %2 = icmp eq ptr %0, null, !dbg !2068
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2068
  %4 = load i32, ptr %3, align 8, !dbg !2069, !tbaa !2070
  ret i32 %4, !dbg !2072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2073 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2077, metadata !DIExpression()), !dbg !2079
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2078, metadata !DIExpression()), !dbg !2079
  %3 = icmp eq ptr %0, null, !dbg !2080
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2080
  store i32 %1, ptr %4, align 8, !dbg !2081, !tbaa !2070
  ret void, !dbg !2082
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2083 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2087, metadata !DIExpression()), !dbg !2095
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2088, metadata !DIExpression()), !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2089, metadata !DIExpression()), !dbg !2095
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2090, metadata !DIExpression()), !dbg !2095
  %4 = icmp eq ptr %0, null, !dbg !2096
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2096
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2097
  %7 = lshr i8 %1, 5, !dbg !2098
  %8 = zext nneg i8 %7 to i64, !dbg !2098
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2099
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2091, metadata !DIExpression()), !dbg !2095
  %10 = and i8 %1, 31, !dbg !2100
  %11 = zext nneg i8 %10 to i32, !dbg !2100
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2093, metadata !DIExpression()), !dbg !2095
  %12 = load i32, ptr %9, align 4, !dbg !2101, !tbaa !874
  %13 = lshr i32 %12, %11, !dbg !2102
  %14 = and i32 %13, 1, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2094, metadata !DIExpression()), !dbg !2095
  %15 = xor i32 %13, %2, !dbg !2104
  %16 = and i32 %15, 1, !dbg !2104
  %17 = shl nuw i32 %16, %11, !dbg !2105
  %18 = xor i32 %17, %12, !dbg !2106
  store i32 %18, ptr %9, align 4, !dbg !2106, !tbaa !874
  ret i32 %14, !dbg !2107
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2108 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2112, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2113, metadata !DIExpression()), !dbg !2115
  %3 = icmp eq ptr %0, null, !dbg !2116
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2118
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2112, metadata !DIExpression()), !dbg !2115
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2119
  %6 = load i32, ptr %5, align 4, !dbg !2119, !tbaa !2120
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2114, metadata !DIExpression()), !dbg !2115
  store i32 %1, ptr %5, align 4, !dbg !2121, !tbaa !2120
  ret i32 %6, !dbg !2122
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2123 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2127, metadata !DIExpression()), !dbg !2130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2128, metadata !DIExpression()), !dbg !2130
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2129, metadata !DIExpression()), !dbg !2130
  %4 = icmp eq ptr %0, null, !dbg !2131
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2133
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2127, metadata !DIExpression()), !dbg !2130
  store i32 10, ptr %5, align 8, !dbg !2134, !tbaa !2070
  %6 = icmp ne ptr %1, null, !dbg !2135
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2137
  br i1 %8, label %10, label %9, !dbg !2137

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2138
  unreachable, !dbg !2138

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2139
  store ptr %1, ptr %11, align 8, !dbg !2140, !tbaa !2141
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2142
  store ptr %2, ptr %12, align 8, !dbg !2143, !tbaa !2144
  ret void, !dbg !2145
}

; Function Attrs: noreturn nounwind
declare !dbg !2146 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2147 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2151, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2152, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2153, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2154, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2155, metadata !DIExpression()), !dbg !2159
  %6 = icmp eq ptr %4, null, !dbg !2160
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2156, metadata !DIExpression()), !dbg !2159
  %8 = tail call ptr @__errno_location() #43, !dbg !2161
  %9 = load i32, ptr %8, align 4, !dbg !2161, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2157, metadata !DIExpression()), !dbg !2159
  %10 = load i32, ptr %7, align 8, !dbg !2162, !tbaa !2070
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2163
  %12 = load i32, ptr %11, align 4, !dbg !2163, !tbaa !2120
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2164
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2165
  %15 = load ptr, ptr %14, align 8, !dbg !2165, !tbaa !2141
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2166
  %17 = load ptr, ptr %16, align 8, !dbg !2166, !tbaa !2144
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2158, metadata !DIExpression()), !dbg !2159
  store i32 %9, ptr %8, align 4, !dbg !2168, !tbaa !874
  ret i64 %18, !dbg !2169
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2170 {
  %10 = alloca i32, align 4, !DIAssignID !2238
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2239
  %12 = alloca i32, align 4, !DIAssignID !2240
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2241
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2242
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2216, metadata !DIExpression(), metadata !2242, metadata ptr %14, metadata !DIExpression()), !dbg !2243
  %15 = alloca i32, align 4, !DIAssignID !2244
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2219, metadata !DIExpression(), metadata !2244, metadata ptr %15, metadata !DIExpression()), !dbg !2245
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2176, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2178, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2179, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2180, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2181, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2182, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2183, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2184, metadata !DIExpression()), !dbg !2246
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2247
  %17 = icmp eq i64 %16, 1, !dbg !2248
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2188, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2189, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2246
  %18 = trunc i32 %5 to i8, !dbg !2249
  %19 = lshr i8 %18, 1, !dbg !2249
  %20 = and i8 %19, 1, !dbg !2249
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2191, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2193, metadata !DIExpression()), !dbg !2246
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2250

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2251
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2252
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2253
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2254
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2246
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2255
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2256
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2193, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2191, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2190, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2189, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2188, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2179, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2184, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2183, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2180, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.label(metadata !2194), !dbg !2257
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2246
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
  ], !dbg !2258

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2191, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2180, metadata !DIExpression()), !dbg !2246
  br label %114, !dbg !2259

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2191, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2180, metadata !DIExpression()), !dbg !2246
  %43 = and i8 %37, 1, !dbg !2260
  %44 = icmp eq i8 %43, 0, !dbg !2260
  br i1 %44, label %45, label %114, !dbg !2259

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2262
  br i1 %46, label %114, label %47, !dbg !2265

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2262, !tbaa !883
  br label %114, !dbg !2262

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !533, metadata !DIExpression(), metadata !2240, metadata ptr %12, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.assign(metadata i1 undef, metadata !534, metadata !DIExpression(), metadata !2241, metadata ptr %13, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata ptr @.str.11.74, metadata !530, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 %29, metadata !531, metadata !DIExpression()), !dbg !2266
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.11.74, i32 noundef 5) #40, !dbg !2270
  call void @llvm.dbg.value(metadata ptr %49, metadata !532, metadata !DIExpression()), !dbg !2266
  %50 = icmp eq ptr %49, @.str.11.74, !dbg !2271
  br i1 %50, label %51, label %60, !dbg !2273

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2275
  call void @llvm.dbg.value(metadata ptr %13, metadata !2276, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr %13, metadata !2284, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 8, metadata !2288, metadata !DIExpression()), !dbg !2289
  store i64 0, ptr %13, align 8, !dbg !2291
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2292
  %53 = icmp eq i64 %52, 3, !dbg !2294
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2295
  %57 = icmp eq i32 %29, 9, !dbg !2295
  %58 = select i1 %57, ptr @.str.10.76, ptr @.str.12.77, !dbg !2295
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2295
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2296
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2296
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2266
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.assign(metadata i1 undef, metadata !533, metadata !DIExpression(), metadata !2238, metadata ptr %10, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.assign(metadata i1 undef, metadata !534, metadata !DIExpression(), metadata !2239, metadata ptr %11, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr @.str.12.77, metadata !530, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %29, metadata !531, metadata !DIExpression()), !dbg !2297
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.12.77, i32 noundef 5) #40, !dbg !2299
  call void @llvm.dbg.value(metadata ptr %62, metadata !532, metadata !DIExpression()), !dbg !2297
  %63 = icmp eq ptr %62, @.str.12.77, !dbg !2300
  br i1 %63, label %64, label %73, !dbg !2301

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2303
  call void @llvm.dbg.value(metadata ptr %11, metadata !2276, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %11, metadata !2284, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 8, metadata !2288, metadata !DIExpression()), !dbg !2306
  store i64 0, ptr %11, align 8, !dbg !2308
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2309
  %66 = icmp eq i64 %65, 3, !dbg !2310
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2311
  %70 = icmp eq i32 %29, 9, !dbg !2311
  %71 = select i1 %70, ptr @.str.10.76, ptr @.str.12.77, !dbg !2311
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2311
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2312
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2312
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2184, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2183, metadata !DIExpression()), !dbg !2246
  %76 = and i8 %37, 1, !dbg !2313
  %77 = icmp eq i8 %76, 0, !dbg !2313
  br i1 %77, label %78, label %93, !dbg !2314

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2196, metadata !DIExpression()), !dbg !2315
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2186, metadata !DIExpression()), !dbg !2246
  %79 = load i8, ptr %74, align 1, !dbg !2316, !tbaa !883
  %80 = icmp eq i8 %79, 0, !dbg !2318
  br i1 %80, label %93, label %81, !dbg !2318

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2196, metadata !DIExpression()), !dbg !2315
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2186, metadata !DIExpression()), !dbg !2246
  %85 = icmp ult i64 %84, %40, !dbg !2319
  br i1 %85, label %86, label %88, !dbg !2322

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2319
  store i8 %82, ptr %87, align 1, !dbg !2319, !tbaa !883
  br label %88, !dbg !2319

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2186, metadata !DIExpression()), !dbg !2246
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2323
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2196, metadata !DIExpression()), !dbg !2315
  %91 = load i8, ptr %90, align 1, !dbg !2316, !tbaa !883
  %92 = icmp eq i8 %91, 0, !dbg !2318
  br i1 %92, label %93, label %81, !dbg !2318, !llvm.loop !2324

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2326
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2188, metadata !DIExpression()), !dbg !2246
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2189, metadata !DIExpression()), !dbg !2246
  br label %114, !dbg !2328

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2246
  br label %98, !dbg !2329

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2190, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2191, metadata !DIExpression()), !dbg !2246
  br label %98, !dbg !2330

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2254
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2191, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2190, metadata !DIExpression()), !dbg !2246
  %101 = and i8 %100, 1, !dbg !2331
  %102 = icmp eq i8 %101, 0, !dbg !2331
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2333
  br label %104, !dbg !2333

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2246
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2249
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2191, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2190, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2180, metadata !DIExpression()), !dbg !2246
  %107 = and i8 %106, 1, !dbg !2334
  %108 = icmp eq i8 %107, 0, !dbg !2334
  br i1 %108, label %109, label %114, !dbg !2336

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2337
  br i1 %110, label %114, label %111, !dbg !2340

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2337, !tbaa !883
  br label %114, !dbg !2337

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2191, metadata !DIExpression()), !dbg !2246
  br label %114, !dbg !2341

113:                                              ; preds = %28
  call void @abort() #42, !dbg !2342
  unreachable, !dbg !2342

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2326
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.76, %45 ], [ @.str.10.76, %47 ], [ @.str.10.76, %42 ], [ %34, %28 ], [ @.str.12.77, %109 ], [ @.str.12.77, %111 ], [ @.str.12.77, %104 ], [ @.str.10.76, %41 ], !dbg !2246
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2246
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2246
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2191, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2190, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2189, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2188, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2184, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2183, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2180, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2201, metadata !DIExpression()), !dbg !2343
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
  br label %138, !dbg !2344

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2326
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2251
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2255
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2256
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2345
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2346
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2193, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2179, metadata !DIExpression()), !dbg !2246
  %147 = icmp eq i64 %139, -1, !dbg !2347
  br i1 %147, label %148, label %152, !dbg !2348

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2349
  %150 = load i8, ptr %149, align 1, !dbg !2349, !tbaa !883
  %151 = icmp eq i8 %150, 0, !dbg !2350
  br i1 %151, label %612, label %154, !dbg !2351

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2352
  br i1 %153, label %612, label %154, !dbg !2351

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2203, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2353
  br i1 %128, label %155, label %170, !dbg !2354

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2356
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2357
  br i1 %157, label %158, label %160, !dbg !2357

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2358
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2179, metadata !DIExpression()), !dbg !2246
  br label %160, !dbg !2359

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2359
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2179, metadata !DIExpression()), !dbg !2246
  %162 = icmp ugt i64 %156, %161, !dbg !2360
  br i1 %162, label %170, label %163, !dbg !2361

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2362
  call void @llvm.dbg.value(metadata ptr %164, metadata !2363, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata ptr %119, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i64 %120, metadata !2367, metadata !DIExpression()), !dbg !2368
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2370
  %166 = icmp ne i32 %165, 0, !dbg !2371
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2372
  %168 = xor i1 %166, true, !dbg !2372
  %169 = zext i1 %168 to i8, !dbg !2372
  br i1 %167, label %170, label %666, !dbg !2372

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2353
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2203, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2179, metadata !DIExpression()), !dbg !2246
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2373
  %175 = load i8, ptr %174, align 1, !dbg !2373, !tbaa !883
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2208, metadata !DIExpression()), !dbg !2353
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
  ], !dbg !2374

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2375

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2376

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2206, metadata !DIExpression()), !dbg !2353
  %179 = and i8 %144, 1, !dbg !2380
  %180 = icmp eq i8 %179, 0, !dbg !2380
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2380
  br i1 %181, label %182, label %198, !dbg !2380

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2382
  br i1 %183, label %184, label %186, !dbg !2386

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2382
  store i8 39, ptr %185, align 1, !dbg !2382, !tbaa !883
  br label %186, !dbg !2382

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2386
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2186, metadata !DIExpression()), !dbg !2246
  %188 = icmp ult i64 %187, %146, !dbg !2387
  br i1 %188, label %189, label %191, !dbg !2390

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2387
  store i8 36, ptr %190, align 1, !dbg !2387, !tbaa !883
  br label %191, !dbg !2387

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2186, metadata !DIExpression()), !dbg !2246
  %193 = icmp ult i64 %192, %146, !dbg !2391
  br i1 %193, label %194, label %196, !dbg !2394

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2391
  store i8 39, ptr %195, align 1, !dbg !2391, !tbaa !883
  br label %196, !dbg !2391

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2394
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2195, metadata !DIExpression()), !dbg !2246
  br label %198, !dbg !2395

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2246
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2186, metadata !DIExpression()), !dbg !2246
  %201 = icmp ult i64 %199, %146, !dbg !2396
  br i1 %201, label %202, label %204, !dbg !2399

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2396
  store i8 92, ptr %203, align 1, !dbg !2396, !tbaa !883
  br label %204, !dbg !2396

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2399
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2186, metadata !DIExpression()), !dbg !2246
  br i1 %125, label %206, label %476, !dbg !2400

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2402
  %208 = icmp ult i64 %207, %171, !dbg !2403
  br i1 %208, label %209, label %465, !dbg !2404

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2405
  %211 = load i8, ptr %210, align 1, !dbg !2405, !tbaa !883
  %212 = add i8 %211, -48, !dbg !2406
  %213 = icmp ult i8 %212, 10, !dbg !2406
  br i1 %213, label %214, label %465, !dbg !2406

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2407
  br i1 %215, label %216, label %218, !dbg !2411

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2407
  store i8 48, ptr %217, align 1, !dbg !2407, !tbaa !883
  br label %218, !dbg !2407

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2186, metadata !DIExpression()), !dbg !2246
  %220 = icmp ult i64 %219, %146, !dbg !2412
  br i1 %220, label %221, label %223, !dbg !2415

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2412
  store i8 48, ptr %222, align 1, !dbg !2412, !tbaa !883
  br label %223, !dbg !2412

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2415
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2186, metadata !DIExpression()), !dbg !2246
  br label %465, !dbg !2416

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2417

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2418

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2419

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2421

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2423
  %231 = icmp ult i64 %230, %171, !dbg !2424
  br i1 %231, label %232, label %465, !dbg !2425

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2426
  %234 = load i8, ptr %233, align 1, !dbg !2426, !tbaa !883
  %235 = icmp eq i8 %234, 63, !dbg !2427
  br i1 %235, label %236, label %465, !dbg !2428

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2429
  %238 = load i8, ptr %237, align 1, !dbg !2429, !tbaa !883
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
  ], !dbg !2430

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2431

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2201, metadata !DIExpression()), !dbg !2343
  %241 = icmp ult i64 %140, %146, !dbg !2433
  br i1 %241, label %242, label %244, !dbg !2436

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2433
  store i8 63, ptr %243, align 1, !dbg !2433, !tbaa !883
  br label %244, !dbg !2433

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2186, metadata !DIExpression()), !dbg !2246
  %246 = icmp ult i64 %245, %146, !dbg !2437
  br i1 %246, label %247, label %249, !dbg !2440

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2437
  store i8 34, ptr %248, align 1, !dbg !2437, !tbaa !883
  br label %249, !dbg !2437

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2440
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2186, metadata !DIExpression()), !dbg !2246
  %251 = icmp ult i64 %250, %146, !dbg !2441
  br i1 %251, label %252, label %254, !dbg !2444

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2441
  store i8 34, ptr %253, align 1, !dbg !2441, !tbaa !883
  br label %254, !dbg !2441

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2186, metadata !DIExpression()), !dbg !2246
  %256 = icmp ult i64 %255, %146, !dbg !2445
  br i1 %256, label %257, label %259, !dbg !2448

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2445
  store i8 63, ptr %258, align 1, !dbg !2445, !tbaa !883
  br label %259, !dbg !2445

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2448
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2186, metadata !DIExpression()), !dbg !2246
  br label %465, !dbg !2449

261:                                              ; preds = %170
  br label %272, !dbg !2450

262:                                              ; preds = %170
  br label %272, !dbg !2451

263:                                              ; preds = %170
  br label %270, !dbg !2452

264:                                              ; preds = %170
  br label %270, !dbg !2453

265:                                              ; preds = %170
  br label %272, !dbg !2454

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2455

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2456

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2459

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2461

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2462
  call void @llvm.dbg.label(metadata !2209), !dbg !2463
  br i1 %133, label %272, label %655, !dbg !2464

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2462
  call void @llvm.dbg.label(metadata !2212), !dbg !2466
  br i1 %124, label %520, label %476, !dbg !2467

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2468

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2469, !tbaa !883
  %277 = icmp eq i8 %276, 0, !dbg !2471
  br i1 %277, label %278, label %465, !dbg !2472

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2473
  br i1 %279, label %280, label %465, !dbg !2475

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2353
  br label %281, !dbg !2476

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2207, metadata !DIExpression()), !dbg !2353
  br i1 %133, label %465, label %655, !dbg !2477

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2353
  br i1 %132, label %284, label %465, !dbg !2479

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2480

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2483
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2485
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2485
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2485
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2187, metadata !DIExpression()), !dbg !2246
  %291 = icmp ult i64 %140, %290, !dbg !2486
  br i1 %291, label %292, label %294, !dbg !2489

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2486
  store i8 39, ptr %293, align 1, !dbg !2486, !tbaa !883
  br label %294, !dbg !2486

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2186, metadata !DIExpression()), !dbg !2246
  %296 = icmp ult i64 %295, %290, !dbg !2490
  br i1 %296, label %297, label %299, !dbg !2493

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2490
  store i8 92, ptr %298, align 1, !dbg !2490, !tbaa !883
  br label %299, !dbg !2490

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2186, metadata !DIExpression()), !dbg !2246
  %301 = icmp ult i64 %300, %290, !dbg !2494
  br i1 %301, label %302, label %304, !dbg !2497

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2494
  store i8 39, ptr %303, align 1, !dbg !2494, !tbaa !883
  br label %304, !dbg !2494

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2246
  br label %465, !dbg !2498

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2499

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2213, metadata !DIExpression()), !dbg !2500
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !2501
  %309 = load ptr, ptr %308, align 8, !dbg !2501, !tbaa !813
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2501
  %312 = load i16, ptr %311, align 2, !dbg !2501, !tbaa !915
  %313 = and i16 %312, 16384, !dbg !2503
  %314 = icmp ne i16 %313, 0, !dbg !2503
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2215, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2500
  br label %355, !dbg !2504

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2505
  call void @llvm.dbg.value(metadata ptr %14, metadata !2276, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata ptr %14, metadata !2284, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i64 8, metadata !2288, metadata !DIExpression()), !dbg !2508
  store i64 0, ptr %14, align 8, !dbg !2510
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2213, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2215, metadata !DIExpression()), !dbg !2500
  %316 = icmp eq i64 %171, -1, !dbg !2511
  br i1 %316, label %317, label %319, !dbg !2513

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2514
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2179, metadata !DIExpression()), !dbg !2246
  br label %319, !dbg !2515

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2179, metadata !DIExpression()), !dbg !2246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2516
  %321 = sub i64 %320, %145, !dbg !2517
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !2518
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2223, metadata !DIExpression()), !dbg !2245
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2519

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2213, metadata !DIExpression()), !dbg !2500
  %324 = icmp ult i64 %145, %320, !dbg !2520
  br i1 %324, label %326, label %351, !dbg !2522

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2500
  br label %351, !dbg !2523

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2213, metadata !DIExpression()), !dbg !2500
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2525
  %330 = load i8, ptr %329, align 1, !dbg !2525, !tbaa !883
  %331 = icmp eq i8 %330, 0, !dbg !2522
  br i1 %331, label %351, label %332, !dbg !2526

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2527
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2213, metadata !DIExpression()), !dbg !2500
  %334 = add i64 %333, %145, !dbg !2528
  %335 = icmp eq i64 %333, %321, !dbg !2520
  br i1 %335, label %351, label %326, !dbg !2522, !llvm.loop !2529

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2224, metadata !DIExpression()), !dbg !2530
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2531
  %339 = and i1 %338, %132, !dbg !2531
  br i1 %339, label %340, label %347, !dbg !2531

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2224, metadata !DIExpression()), !dbg !2530
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2532
  %343 = load i8, ptr %342, align 1, !dbg !2532, !tbaa !883
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2534

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2224, metadata !DIExpression()), !dbg !2530
  %346 = icmp eq i64 %345, %322, !dbg !2536
  br i1 %346, label %347, label %340, !dbg !2537, !llvm.loop !2538

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2540, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %348, metadata !2542, metadata !DIExpression()), !dbg !2550
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !2552
  %350 = icmp ne i32 %349, 0, !dbg !2553
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2215, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2213, metadata !DIExpression()), !dbg !2500
  br label %351, !dbg !2554

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2215, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2213, metadata !DIExpression()), !dbg !2500
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2555
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2556
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2215, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2213, metadata !DIExpression()), !dbg !2500
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2555
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2556
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2353
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2557
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2557
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2215, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2213, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2179, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2207, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2353
  %359 = icmp ult i64 %357, 2, !dbg !2558
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2559
  br i1 %361, label %461, label %362, !dbg !2559

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2560
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2232, metadata !DIExpression()), !dbg !2561
  br label %364, !dbg !2562

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2246
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2345
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2343
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2353
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2563
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2206, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2203, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2186, metadata !DIExpression()), !dbg !2246
  br i1 %360, label %417, label %371, !dbg !2564

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2569

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2206, metadata !DIExpression()), !dbg !2353
  %373 = and i8 %366, 1, !dbg !2572
  %374 = icmp eq i8 %373, 0, !dbg !2572
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2572
  br i1 %375, label %376, label %392, !dbg !2572

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2574
  br i1 %377, label %378, label %380, !dbg !2578

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2574
  store i8 39, ptr %379, align 1, !dbg !2574, !tbaa !883
  br label %380, !dbg !2574

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2578
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2186, metadata !DIExpression()), !dbg !2246
  %382 = icmp ult i64 %381, %146, !dbg !2579
  br i1 %382, label %383, label %385, !dbg !2582

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2579
  store i8 36, ptr %384, align 1, !dbg !2579, !tbaa !883
  br label %385, !dbg !2579

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2582
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2186, metadata !DIExpression()), !dbg !2246
  %387 = icmp ult i64 %386, %146, !dbg !2583
  br i1 %387, label %388, label %390, !dbg !2586

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2583
  store i8 39, ptr %389, align 1, !dbg !2583, !tbaa !883
  br label %390, !dbg !2583

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2586
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2195, metadata !DIExpression()), !dbg !2246
  br label %392, !dbg !2587

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2246
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2186, metadata !DIExpression()), !dbg !2246
  %395 = icmp ult i64 %393, %146, !dbg !2588
  br i1 %395, label %396, label %398, !dbg !2591

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2588
  store i8 92, ptr %397, align 1, !dbg !2588, !tbaa !883
  br label %398, !dbg !2588

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2591
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2186, metadata !DIExpression()), !dbg !2246
  %400 = icmp ult i64 %399, %146, !dbg !2592
  br i1 %400, label %401, label %405, !dbg !2595

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2592
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2592
  store i8 %403, ptr %404, align 1, !dbg !2592, !tbaa !883
  br label %405, !dbg !2592

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2595
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2186, metadata !DIExpression()), !dbg !2246
  %407 = icmp ult i64 %406, %146, !dbg !2596
  br i1 %407, label %408, label %413, !dbg !2599

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2596
  %411 = or disjoint i8 %410, 48, !dbg !2596
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2596
  store i8 %411, ptr %412, align 1, !dbg !2596, !tbaa !883
  br label %413, !dbg !2596

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2186, metadata !DIExpression()), !dbg !2246
  %415 = and i8 %370, 7, !dbg !2600
  %416 = or disjoint i8 %415, 48, !dbg !2601
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2208, metadata !DIExpression()), !dbg !2353
  br label %426, !dbg !2602

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2603
  %419 = icmp eq i8 %418, 0, !dbg !2603
  br i1 %419, label %426, label %420, !dbg !2605

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2606
  br i1 %421, label %422, label %424, !dbg !2610

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2606
  store i8 92, ptr %423, align 1, !dbg !2606, !tbaa !883
  br label %424, !dbg !2606

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2203, metadata !DIExpression()), !dbg !2353
  br label %426, !dbg !2611

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2246
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2345
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2353
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2353
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2206, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2203, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2186, metadata !DIExpression()), !dbg !2246
  %432 = add i64 %367, 1, !dbg !2612
  %433 = icmp ugt i64 %363, %432, !dbg !2614
  br i1 %433, label %434, label %463, !dbg !2615

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2616
  %436 = icmp ne i8 %435, 0, !dbg !2616
  %437 = and i8 %430, 1, !dbg !2616
  %438 = icmp eq i8 %437, 0, !dbg !2616
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2616
  br i1 %439, label %440, label %451, !dbg !2616

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2619
  br i1 %441, label %442, label %444, !dbg !2623

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2619
  store i8 39, ptr %443, align 1, !dbg !2619, !tbaa !883
  br label %444, !dbg !2619

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2623
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2186, metadata !DIExpression()), !dbg !2246
  %446 = icmp ult i64 %445, %146, !dbg !2624
  br i1 %446, label %447, label %449, !dbg !2627

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2624
  store i8 39, ptr %448, align 1, !dbg !2624, !tbaa !883
  br label %449, !dbg !2624

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2627
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2246
  br label %451, !dbg !2628

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2629
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2186, metadata !DIExpression()), !dbg !2246
  %454 = icmp ult i64 %452, %146, !dbg !2630
  br i1 %454, label %455, label %457, !dbg !2633

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2630
  store i8 %431, ptr %456, align 1, !dbg !2630, !tbaa !883
  br label %457, !dbg !2630

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2633
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2201, metadata !DIExpression()), !dbg !2343
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2634
  %460 = load i8, ptr %459, align 1, !dbg !2634, !tbaa !883
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2208, metadata !DIExpression()), !dbg !2353
  br label %364, !dbg !2635, !llvm.loop !2636

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2207, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2203, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2179, metadata !DIExpression()), !dbg !2246
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2207, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2206, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2203, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2179, metadata !DIExpression()), !dbg !2246
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2639
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2246
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2251
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2246
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2246
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2343
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2353
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2353
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2353
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2207, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2206, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2203, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2179, metadata !DIExpression()), !dbg !2246
  br i1 %126, label %487, label %476, !dbg !2640

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
  br i1 %137, label %488, label %509, !dbg !2642

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2643

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
  %499 = lshr i8 %490, 5, !dbg !2644
  %500 = zext nneg i8 %499 to i64, !dbg !2644
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2645
  %502 = load i32, ptr %501, align 4, !dbg !2645, !tbaa !874
  %503 = and i8 %490, 31, !dbg !2646
  %504 = zext nneg i8 %503 to i32, !dbg !2646
  %505 = shl nuw i32 1, %504, !dbg !2647
  %506 = and i32 %502, %505, !dbg !2647
  %507 = icmp eq i32 %506, 0, !dbg !2647
  %508 = and i1 %172, %507, !dbg !2648
  br i1 %508, label %558, label %520, !dbg !2648

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
  br i1 %172, label %558, label %520, !dbg !2649

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2639
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2246
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2251
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2255
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2345
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2650
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2353
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2353
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2207, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2179, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.label(metadata !2235), !dbg !2651
  br i1 %131, label %530, label %659, !dbg !2652

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2206, metadata !DIExpression()), !dbg !2353
  %531 = and i8 %525, 1, !dbg !2654
  %532 = icmp eq i8 %531, 0, !dbg !2654
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2654
  br i1 %533, label %534, label %550, !dbg !2654

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2656
  br i1 %535, label %536, label %538, !dbg !2660

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2656
  store i8 39, ptr %537, align 1, !dbg !2656, !tbaa !883
  br label %538, !dbg !2656

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2186, metadata !DIExpression()), !dbg !2246
  %540 = icmp ult i64 %539, %529, !dbg !2661
  br i1 %540, label %541, label %543, !dbg !2664

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2661
  store i8 36, ptr %542, align 1, !dbg !2661, !tbaa !883
  br label %543, !dbg !2661

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2664
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2186, metadata !DIExpression()), !dbg !2246
  %545 = icmp ult i64 %544, %529, !dbg !2665
  br i1 %545, label %546, label %548, !dbg !2668

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2665
  store i8 39, ptr %547, align 1, !dbg !2665, !tbaa !883
  br label %548, !dbg !2665

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2668
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2195, metadata !DIExpression()), !dbg !2246
  br label %550, !dbg !2669

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2353
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2186, metadata !DIExpression()), !dbg !2246
  %553 = icmp ult i64 %551, %529, !dbg !2670
  br i1 %553, label %554, label %556, !dbg !2673

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2670
  store i8 92, ptr %555, align 1, !dbg !2670, !tbaa !883
  br label %556, !dbg !2670

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2673
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2207, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2206, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2179, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.label(metadata !2236), !dbg !2674
  br label %585, !dbg !2675

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2639
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2246
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2251
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2255
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2345
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2650
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2353
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2353
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2678
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2208, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2207, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2206, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2179, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.label(metadata !2236), !dbg !2674
  %569 = and i8 %563, 1, !dbg !2675
  %570 = icmp ne i8 %569, 0, !dbg !2675
  %571 = and i8 %565, 1, !dbg !2675
  %572 = icmp eq i8 %571, 0, !dbg !2675
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2675
  br i1 %573, label %574, label %585, !dbg !2675

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2679
  br i1 %575, label %576, label %578, !dbg !2683

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2679
  store i8 39, ptr %577, align 1, !dbg !2679, !tbaa !883
  br label %578, !dbg !2679

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2186, metadata !DIExpression()), !dbg !2246
  %580 = icmp ult i64 %579, %568, !dbg !2684
  br i1 %580, label %581, label %583, !dbg !2687

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2684
  store i8 39, ptr %582, align 1, !dbg !2684, !tbaa !883
  br label %583, !dbg !2684

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2246
  br label %585, !dbg !2688

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2353
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2186, metadata !DIExpression()), !dbg !2246
  %595 = icmp ult i64 %593, %586, !dbg !2689
  br i1 %595, label %596, label %598, !dbg !2692

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2689
  store i8 %587, ptr %597, align 1, !dbg !2689, !tbaa !883
  br label %598, !dbg !2689

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2692
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2186, metadata !DIExpression()), !dbg !2246
  %600 = icmp eq i8 %588, 0, !dbg !2693
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2193, metadata !DIExpression()), !dbg !2246
  br label %602, !dbg !2696

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2639
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2246
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2251
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2255
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2256
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2345
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2650
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2201, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2195, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2193, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2179, metadata !DIExpression()), !dbg !2246
  %611 = add i64 %609, 1, !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2201, metadata !DIExpression()), !dbg !2343
  br label %138, !dbg !2698, !llvm.loop !2699

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2177, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2193, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2192, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2187, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2186, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2179, metadata !DIExpression()), !dbg !2246
  %613 = icmp eq i64 %140, 0, !dbg !2701
  %614 = and i1 %132, %613, !dbg !2703
  %615 = xor i1 %614, true, !dbg !2703
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2703
  br i1 %616, label %617, label %655, !dbg !2703

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2704
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2704
  br i1 %621, label %622, label %631, !dbg !2704

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2706
  %624 = icmp eq i8 %623, 0, !dbg !2706
  br i1 %624, label %627, label %625, !dbg !2709

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2710
  br label %672, !dbg !2711

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2712
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2714
  br i1 %630, label %28, label %631, !dbg !2714

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2715
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2717
  br i1 %634, label %635, label %650, !dbg !2717

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2188, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2186, metadata !DIExpression()), !dbg !2246
  %636 = load i8, ptr %119, align 1, !dbg !2718, !tbaa !883
  %637 = icmp eq i8 %636, 0, !dbg !2721
  br i1 %637, label %650, label %638, !dbg !2721

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2188, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2186, metadata !DIExpression()), !dbg !2246
  %642 = icmp ult i64 %641, %146, !dbg !2722
  br i1 %642, label %643, label %645, !dbg !2725

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2722
  store i8 %639, ptr %644, align 1, !dbg !2722, !tbaa !883
  br label %645, !dbg !2722

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2725
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2186, metadata !DIExpression()), !dbg !2246
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2726
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2188, metadata !DIExpression()), !dbg !2246
  %648 = load i8, ptr %647, align 1, !dbg !2718, !tbaa !883
  %649 = icmp eq i8 %648, 0, !dbg !2721
  br i1 %649, label %650, label %638, !dbg !2721, !llvm.loop !2727

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2326
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2186, metadata !DIExpression()), !dbg !2246
  %652 = icmp ult i64 %651, %146, !dbg !2729
  br i1 %652, label %653, label %672, !dbg !2731

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2732
  store i8 0, ptr %654, align 1, !dbg !2733, !tbaa !883
  br label %672, !dbg !2732

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2237), !dbg !2734
  %657 = icmp eq i8 %123, 0, !dbg !2735
  %658 = select i1 %657, i32 2, i32 4, !dbg !2735
  br label %666, !dbg !2735

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2237), !dbg !2734
  %662 = icmp eq i32 %115, 2, !dbg !2737
  %663 = icmp eq i8 %123, 0, !dbg !2735
  %664 = select i1 %663, i32 2, i32 4, !dbg !2735
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2735
  br label %666, !dbg !2735

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2180, metadata !DIExpression()), !dbg !2246
  %670 = and i32 %5, -3, !dbg !2738
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2739
  br label %672, !dbg !2740

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2741
}

; Function Attrs: nounwind
declare !dbg !2742 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2744 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2746 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2750, metadata !DIExpression()), !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2751, metadata !DIExpression()), !dbg !2753
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %0, metadata !2754, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %1, metadata !2759, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr null, metadata !2760, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %2, metadata !2761, metadata !DIExpression()), !dbg !2767
  %4 = icmp eq ptr %2, null, !dbg !2769
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2769
  call void @llvm.dbg.value(metadata ptr %5, metadata !2762, metadata !DIExpression()), !dbg !2767
  %6 = tail call ptr @__errno_location() #43, !dbg !2770
  %7 = load i32, ptr %6, align 4, !dbg !2770, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !2763, metadata !DIExpression()), !dbg !2767
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2771
  %9 = load i32, ptr %8, align 4, !dbg !2771, !tbaa !2120
  %10 = or i32 %9, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i32 %10, metadata !2764, metadata !DIExpression()), !dbg !2767
  %11 = load i32, ptr %5, align 8, !dbg !2773, !tbaa !2070
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2774
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2775
  %14 = load ptr, ptr %13, align 8, !dbg !2775, !tbaa !2141
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2776
  %16 = load ptr, ptr %15, align 8, !dbg !2776, !tbaa !2144
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2777
  %18 = add i64 %17, 1, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %18, metadata !2765, metadata !DIExpression()), !dbg !2767
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2779
  call void @llvm.dbg.value(metadata ptr %19, metadata !2766, metadata !DIExpression()), !dbg !2767
  %20 = load i32, ptr %5, align 8, !dbg !2780, !tbaa !2070
  %21 = load ptr, ptr %13, align 8, !dbg !2781, !tbaa !2141
  %22 = load ptr, ptr %15, align 8, !dbg !2782, !tbaa !2144
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2783
  store i32 %7, ptr %6, align 4, !dbg !2784, !tbaa !874
  ret ptr %19, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2755 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2754, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2759, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2760, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !2786
  %5 = icmp eq ptr %3, null, !dbg !2787
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2787
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2762, metadata !DIExpression()), !dbg !2786
  %7 = tail call ptr @__errno_location() #43, !dbg !2788
  %8 = load i32, ptr %7, align 4, !dbg !2788, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2763, metadata !DIExpression()), !dbg !2786
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2789
  %10 = load i32, ptr %9, align 4, !dbg !2789, !tbaa !2120
  %11 = icmp eq ptr %2, null, !dbg !2790
  %12 = zext i1 %11 to i32, !dbg !2790
  %13 = or i32 %10, %12, !dbg !2791
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2764, metadata !DIExpression()), !dbg !2786
  %14 = load i32, ptr %6, align 8, !dbg !2792, !tbaa !2070
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2793
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2794
  %17 = load ptr, ptr %16, align 8, !dbg !2794, !tbaa !2141
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2795
  %19 = load ptr, ptr %18, align 8, !dbg !2795, !tbaa !2144
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2796
  %21 = add i64 %20, 1, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2765, metadata !DIExpression()), !dbg !2786
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2798
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2766, metadata !DIExpression()), !dbg !2786
  %23 = load i32, ptr %6, align 8, !dbg !2799, !tbaa !2070
  %24 = load ptr, ptr %16, align 8, !dbg !2800, !tbaa !2141
  %25 = load ptr, ptr %18, align 8, !dbg !2801, !tbaa !2144
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2802
  store i32 %8, ptr %7, align 4, !dbg !2803, !tbaa !874
  br i1 %11, label %28, label %27, !dbg !2804

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2805, !tbaa !2807
  br label %28, !dbg !2808

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2809
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2810 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2815, !tbaa !813
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2812, metadata !DIExpression()), !dbg !2816
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2813, metadata !DIExpression()), !dbg !2817
  %2 = load i32, ptr @nslots, align 4, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2813, metadata !DIExpression()), !dbg !2817
  %3 = icmp sgt i32 %2, 1, !dbg !2818
  br i1 %3, label %4, label %6, !dbg !2820

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2818
  br label %10, !dbg !2820

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2821
  %8 = load ptr, ptr %7, align 8, !dbg !2821, !tbaa !2823
  %9 = icmp eq ptr %8, @slot0, !dbg !2825
  br i1 %9, label %17, label %16, !dbg !2826

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2813, metadata !DIExpression()), !dbg !2817
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2827
  %13 = load ptr, ptr %12, align 8, !dbg !2827, !tbaa !2823
  tail call void @free(ptr noundef %13) #40, !dbg !2828
  %14 = add nuw nsw i64 %11, 1, !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2813, metadata !DIExpression()), !dbg !2817
  %15 = icmp eq i64 %14, %5, !dbg !2818
  br i1 %15, label %6, label %10, !dbg !2820, !llvm.loop !2830

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2832
  store i64 256, ptr @slotvec0, align 8, !dbg !2834, !tbaa !2835
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2836, !tbaa !2823
  br label %17, !dbg !2837

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2838
  br i1 %18, label %20, label %19, !dbg !2840

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2841
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2843, !tbaa !813
  br label %20, !dbg !2844

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2845, !tbaa !874
  ret void, !dbg !2846
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2847 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2849, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !2851
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2852
  ret ptr %3, !dbg !2853
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2854 {
  %5 = alloca i64, align 8, !DIAssignID !2874
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2868, metadata !DIExpression(), metadata !2874, metadata ptr %5, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2858, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2859, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2860, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2861, metadata !DIExpression()), !dbg !2876
  %6 = tail call ptr @__errno_location() #43, !dbg !2877
  %7 = load i32, ptr %6, align 4, !dbg !2877, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2862, metadata !DIExpression()), !dbg !2876
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2878, !tbaa !813
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2863, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2864, metadata !DIExpression()), !dbg !2876
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2879
  br i1 %9, label %10, label %11, !dbg !2879

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !2881
  unreachable, !dbg !2881

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2882, !tbaa !874
  %13 = icmp sgt i32 %12, %0, !dbg !2883
  br i1 %13, label %32, label %14, !dbg !2884

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2885
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2865, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2875
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !2886
  %16 = sext i32 %12 to i64, !dbg !2887
  store i64 %16, ptr %5, align 8, !dbg !2888, !tbaa !2807, !DIAssignID !2889
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2868, metadata !DIExpression(), metadata !2889, metadata ptr %5, metadata !DIExpression()), !dbg !2875
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2890
  %18 = add nuw nsw i32 %0, 1, !dbg !2891
  %19 = sub i32 %18, %12, !dbg !2892
  %20 = sext i32 %19 to i64, !dbg !2893
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2894
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2863, metadata !DIExpression()), !dbg !2876
  store ptr %21, ptr @slotvec, align 8, !dbg !2895, !tbaa !813
  br i1 %15, label %22, label %23, !dbg !2896

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2897, !tbaa.struct !2899
  br label %23, !dbg !2900

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2901, !tbaa !874
  %25 = sext i32 %24 to i64, !dbg !2902
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2902
  %27 = load i64, ptr %5, align 8, !dbg !2903, !tbaa !2807
  %28 = sub nsw i64 %27, %25, !dbg !2904
  %29 = shl i64 %28, 4, !dbg !2905
  call void @llvm.dbg.value(metadata ptr %26, metadata !2284, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %29, metadata !2288, metadata !DIExpression()), !dbg !2906
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !2908
  %30 = load i64, ptr %5, align 8, !dbg !2909, !tbaa !2807
  %31 = trunc i64 %30 to i32, !dbg !2909
  store i32 %31, ptr @nslots, align 4, !dbg !2910, !tbaa !874
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !2911
  br label %32, !dbg !2912

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2876
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2863, metadata !DIExpression()), !dbg !2876
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2913
  %36 = load i64, ptr %35, align 8, !dbg !2914, !tbaa !2835
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2869, metadata !DIExpression()), !dbg !2915
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2916
  %38 = load ptr, ptr %37, align 8, !dbg !2916, !tbaa !2823
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2871, metadata !DIExpression()), !dbg !2915
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2917
  %40 = load i32, ptr %39, align 4, !dbg !2917, !tbaa !2120
  %41 = or i32 %40, 1, !dbg !2918
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2872, metadata !DIExpression()), !dbg !2915
  %42 = load i32, ptr %3, align 8, !dbg !2919, !tbaa !2070
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2920
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2921
  %45 = load ptr, ptr %44, align 8, !dbg !2921, !tbaa !2141
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2922
  %47 = load ptr, ptr %46, align 8, !dbg !2922, !tbaa !2144
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2873, metadata !DIExpression()), !dbg !2915
  %49 = icmp ugt i64 %36, %48, !dbg !2924
  br i1 %49, label %60, label %50, !dbg !2926

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2927
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2869, metadata !DIExpression()), !dbg !2915
  store i64 %51, ptr %35, align 8, !dbg !2929, !tbaa !2835
  %52 = icmp eq ptr %38, @slot0, !dbg !2930
  br i1 %52, label %54, label %53, !dbg !2932

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !2933
  br label %54, !dbg !2933

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2934
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2871, metadata !DIExpression()), !dbg !2915
  store ptr %55, ptr %37, align 8, !dbg !2935, !tbaa !2823
  %56 = load i32, ptr %3, align 8, !dbg !2936, !tbaa !2070
  %57 = load ptr, ptr %44, align 8, !dbg !2937, !tbaa !2141
  %58 = load ptr, ptr %46, align 8, !dbg !2938, !tbaa !2144
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2939
  br label %60, !dbg !2940

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2915
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2871, metadata !DIExpression()), !dbg !2915
  store i32 %7, ptr %6, align 4, !dbg !2941, !tbaa !874
  ret ptr %61, !dbg !2942
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2943 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2947, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2948, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2949, metadata !DIExpression()), !dbg !2950
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2951
  ret ptr %4, !dbg !2952
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2953 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 0, metadata !2849, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata ptr %0, metadata !2850, metadata !DIExpression()), !dbg !2957
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2959
  ret ptr %2, !dbg !2960
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2961 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2965, metadata !DIExpression()), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2966, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 0, metadata !2947, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %0, metadata !2948, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %1, metadata !2949, metadata !DIExpression()), !dbg !2968
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2970
  ret ptr %3, !dbg !2971
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2972 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2980
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2979, metadata !DIExpression(), metadata !2980, metadata ptr %4, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2976, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2977, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !2981
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2982
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983), !dbg !2986
  call void @llvm.dbg.value(metadata i32 %1, metadata !2987, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2995, !alias.scope !2983, !DIAssignID !2996
  call void @llvm.dbg.assign(metadata i8 0, metadata !2979, metadata !DIExpression(), metadata !2996, metadata ptr %4, metadata !DIExpression()), !dbg !2981
  %5 = icmp eq i32 %1, 10, !dbg !2997
  br i1 %5, label %6, label %7, !dbg !2999

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3000, !noalias !2983
  unreachable, !dbg !3000

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3001, !tbaa !2070, !alias.scope !2983, !DIAssignID !3002
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2979, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3002, metadata ptr %4, metadata !DIExpression()), !dbg !2981
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3003
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3004
  ret ptr %8, !dbg !3005
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3006 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3015
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3015, metadata ptr %5, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3010, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3011, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3012, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018), !dbg !3021
  call void @llvm.dbg.value(metadata i32 %1, metadata !2987, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2992, metadata !DIExpression()), !dbg !3024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3024, !alias.scope !3018, !DIAssignID !3025
  call void @llvm.dbg.assign(metadata i8 0, metadata !3014, metadata !DIExpression(), metadata !3025, metadata ptr %5, metadata !DIExpression()), !dbg !3016
  %6 = icmp eq i32 %1, 10, !dbg !3026
  br i1 %6, label %7, label %8, !dbg !3027

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3028, !noalias !3018
  unreachable, !dbg !3028

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3029, !tbaa !2070, !alias.scope !3018, !DIAssignID !3030
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3030, metadata ptr %5, metadata !DIExpression()), !dbg !3016
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3031
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3032
  ret ptr %9, !dbg !3033
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3034 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3040
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2979, metadata !DIExpression(), metadata !3040, metadata ptr %3, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %0, metadata !2977, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %1, metadata !2978, metadata !DIExpression()), !dbg !3042
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3044
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2992, metadata !DIExpression()), !dbg !3051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3051, !alias.scope !3045, !DIAssignID !3052
  call void @llvm.dbg.assign(metadata i8 0, metadata !2979, metadata !DIExpression(), metadata !3052, metadata ptr %3, metadata !DIExpression()), !dbg !3042
  %4 = icmp eq i32 %0, 10, !dbg !3053
  br i1 %4, label %5, label %6, !dbg !3054

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3055, !noalias !3045
  unreachable, !dbg !3055

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3056, !tbaa !2070, !alias.scope !3045, !DIAssignID !3057
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2979, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3057, metadata ptr %3, metadata !DIExpression()), !dbg !3042
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3058
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3059
  ret ptr %7, !dbg !3060
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3061 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3068
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3065, metadata !DIExpression()), !dbg !3069
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3066, metadata !DIExpression()), !dbg !3069
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3067, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3068, metadata ptr %4, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 0, metadata !3010, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %0, metadata !3011, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %2, metadata !3013, metadata !DIExpression()), !dbg !3070
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3073), !dbg !3076
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2992, metadata !DIExpression()), !dbg !3079
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3079, !alias.scope !3073, !DIAssignID !3080
  call void @llvm.dbg.assign(metadata i8 0, metadata !3014, metadata !DIExpression(), metadata !3080, metadata ptr %4, metadata !DIExpression()), !dbg !3070
  %5 = icmp eq i32 %0, 10, !dbg !3081
  br i1 %5, label %6, label %7, !dbg !3082

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3083, !noalias !3073
  unreachable, !dbg !3083

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3084, !tbaa !2070, !alias.scope !3073, !DIAssignID !3085
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3085, metadata ptr %4, metadata !DIExpression()), !dbg !3070
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3086
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3087
  ret ptr %8, !dbg !3088
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3089 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3097
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3097, metadata ptr %4, metadata !DIExpression()), !dbg !3098
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3098
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3098
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3095, metadata !DIExpression()), !dbg !3098
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3100, !tbaa.struct !3101, !DIAssignID !3102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3102, metadata ptr %4, metadata !DIExpression()), !dbg !3098
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2087, metadata !DIExpression()), !dbg !3103
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2088, metadata !DIExpression()), !dbg !3103
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2089, metadata !DIExpression()), !dbg !3103
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2090, metadata !DIExpression()), !dbg !3103
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3105
  %6 = lshr i8 %2, 5, !dbg !3106
  %7 = zext nneg i8 %6 to i64, !dbg !3106
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3107
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2091, metadata !DIExpression()), !dbg !3103
  %9 = and i8 %2, 31, !dbg !3108
  %10 = zext nneg i8 %9 to i32, !dbg !3108
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2093, metadata !DIExpression()), !dbg !3103
  %11 = load i32, ptr %8, align 4, !dbg !3109, !tbaa !874
  %12 = lshr i32 %11, %10, !dbg !3110
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3103
  %13 = and i32 %12, 1, !dbg !3111
  %14 = xor i32 %13, 1, !dbg !3111
  %15 = shl nuw i32 %14, %10, !dbg !3112
  %16 = xor i32 %15, %11, !dbg !3113
  store i32 %16, ptr %8, align 4, !dbg !3113, !tbaa !874
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3114
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3115
  ret ptr %17, !dbg !3116
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3117 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3123
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3124
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3122, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3123, metadata ptr %3, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 -1, metadata !3094, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8 %1, metadata !3095, metadata !DIExpression()), !dbg !3125
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3128, !tbaa.struct !3101, !DIAssignID !3129
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3129, metadata ptr %3, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %3, metadata !2087, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 %1, metadata !2088, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 1, metadata !2089, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 %1, metadata !2090, metadata !DIExpression()), !dbg !3130
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3132
  %5 = lshr i8 %1, 5, !dbg !3133
  %6 = zext nneg i8 %5 to i64, !dbg !3133
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %7, metadata !2091, metadata !DIExpression()), !dbg !3130
  %8 = and i8 %1, 31, !dbg !3135
  %9 = zext nneg i8 %8 to i32, !dbg !3135
  call void @llvm.dbg.value(metadata i32 %9, metadata !2093, metadata !DIExpression()), !dbg !3130
  %10 = load i32, ptr %7, align 4, !dbg !3136, !tbaa !874
  %11 = lshr i32 %10, %9, !dbg !3137
  call void @llvm.dbg.value(metadata i32 %11, metadata !2094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3130
  %12 = and i32 %11, 1, !dbg !3138
  %13 = xor i32 %12, 1, !dbg !3138
  %14 = shl nuw i32 %13, %9, !dbg !3139
  %15 = xor i32 %14, %10, !dbg !3140
  store i32 %15, ptr %7, align 4, !dbg !3140, !tbaa !874
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3141
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3142
  ret ptr %16, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3144 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3147
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8 58, metadata !3122, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3147, metadata ptr %2, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 -1, metadata !3094, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8 58, metadata !3095, metadata !DIExpression()), !dbg !3151
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3154, !tbaa.struct !3101, !DIAssignID !3155
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3155, metadata ptr %2, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %2, metadata !2087, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 58, metadata !2088, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 1, metadata !2089, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 58, metadata !2090, metadata !DIExpression()), !dbg !3156
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3158
  call void @llvm.dbg.value(metadata ptr %3, metadata !2091, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 26, metadata !2093, metadata !DIExpression()), !dbg !3156
  %4 = load i32, ptr %3, align 4, !dbg !3159, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %4, metadata !2094, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3156
  %5 = or i32 %4, 67108864, !dbg !3160
  store i32 %5, ptr %3, align 4, !dbg !3160, !tbaa !874
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3161
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3162
  ret ptr %6, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3164 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3168
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3166, metadata !DIExpression()), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3167, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3168, metadata ptr %3, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i8 58, metadata !3095, metadata !DIExpression()), !dbg !3170
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3173, !tbaa.struct !3101, !DIAssignID !3174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3174, metadata ptr %3, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %3, metadata !2087, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8 58, metadata !2088, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i32 1, metadata !2089, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8 58, metadata !2090, metadata !DIExpression()), !dbg !3175
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3177
  call void @llvm.dbg.value(metadata ptr %4, metadata !2091, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i32 26, metadata !2093, metadata !DIExpression()), !dbg !3175
  %5 = load i32, ptr %4, align 4, !dbg !3178, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %5, metadata !2094, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3175
  %6 = or i32 %5, 67108864, !dbg !3179
  store i32 %6, ptr %4, align 4, !dbg !3179, !tbaa !874
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3180
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3181
  ret ptr %7, !dbg !3182
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3183 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3189
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3188, metadata !DIExpression(), metadata !3189, metadata ptr %4, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2992, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3191
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3186, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3187, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3193
  call void @llvm.dbg.value(metadata i32 %1, metadata !2987, metadata !DIExpression()), !dbg !3194
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2992, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3194
  %5 = icmp eq i32 %1, 10, !dbg !3195
  br i1 %5, label %6, label %7, !dbg !3196

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3197, !noalias !3198
  unreachable, !dbg !3197

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2992, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3194
  store i32 %1, ptr %4, align 8, !dbg !3201, !tbaa.struct !3101, !DIAssignID !3202
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3201
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3188, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3202, metadata ptr %4, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3188, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3203, metadata ptr %8, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2087, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2088, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2089, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2090, metadata !DIExpression()), !dbg !3204
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3206
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2091, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2093, metadata !DIExpression()), !dbg !3204
  %10 = load i32, ptr %9, align 4, !dbg !3207, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2094, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3204
  %11 = or i32 %10, 67108864, !dbg !3208
  store i32 %11, ptr %9, align 4, !dbg !3208, !tbaa !874, !DIAssignID !3209
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3188, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3209, metadata ptr %9, metadata !DIExpression()), !dbg !3190
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3210
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3211
  ret ptr %12, !dbg !3212
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3213 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3221
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3217, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3218, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3219, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3220, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3221, metadata ptr %5, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %0, metadata !3228, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %1, metadata !3229, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %2, metadata !3230, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %3, metadata !3231, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 -1, metadata !3232, metadata !DIExpression()), !dbg !3233
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3236, !tbaa.struct !3101, !DIAssignID !3237
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3237, metadata ptr %5, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3238, metadata ptr undef, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %5, metadata !2127, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %1, metadata !2128, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %2, metadata !2129, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %5, metadata !2127, metadata !DIExpression()), !dbg !3239
  store i32 10, ptr %5, align 8, !dbg !3241, !tbaa !2070, !DIAssignID !3242
  call void @llvm.dbg.assign(metadata i32 10, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3242, metadata ptr %5, metadata !DIExpression()), !dbg !3233
  %6 = icmp ne ptr %1, null, !dbg !3243
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3244
  br i1 %8, label %10, label %9, !dbg !3244

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3245
  unreachable, !dbg !3245

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3246
  store ptr %1, ptr %11, align 8, !dbg !3247, !tbaa !2141, !DIAssignID !3248
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3248, metadata ptr %11, metadata !DIExpression()), !dbg !3233
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3249
  store ptr %2, ptr %12, align 8, !dbg !3250, !tbaa !2144, !DIAssignID !3251
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3251, metadata ptr %12, metadata !DIExpression()), !dbg !3233
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3252
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3253
  ret ptr %13, !dbg !3254
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3224 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3255
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3255, metadata ptr %6, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3228, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3229, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3230, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3231, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3232, metadata !DIExpression()), !dbg !3256
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3258, !tbaa.struct !3101, !DIAssignID !3259
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3259, metadata ptr %6, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3260, metadata ptr undef, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %6, metadata !2127, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata ptr %1, metadata !2128, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata ptr %2, metadata !2129, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata ptr %6, metadata !2127, metadata !DIExpression()), !dbg !3261
  store i32 10, ptr %6, align 8, !dbg !3263, !tbaa !2070, !DIAssignID !3264
  call void @llvm.dbg.assign(metadata i32 10, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3264, metadata ptr %6, metadata !DIExpression()), !dbg !3256
  %7 = icmp ne ptr %1, null, !dbg !3265
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3266
  br i1 %9, label %11, label %10, !dbg !3266

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3267
  unreachable, !dbg !3267

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3268
  store ptr %1, ptr %12, align 8, !dbg !3269, !tbaa !2141, !DIAssignID !3270
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3270, metadata ptr %12, metadata !DIExpression()), !dbg !3256
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3271
  store ptr %2, ptr %13, align 8, !dbg !3272, !tbaa !2144, !DIAssignID !3273
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3273, metadata ptr %13, metadata !DIExpression()), !dbg !3256
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3274
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3275
  ret ptr %14, !dbg !3276
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3277 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3284
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3281, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3282, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3283, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i32 0, metadata !3217, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %0, metadata !3218, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %1, metadata !3219, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %2, metadata !3220, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3284, metadata ptr %4, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 0, metadata !3228, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %0, metadata !3229, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %1, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %2, metadata !3231, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 -1, metadata !3232, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3291, !tbaa.struct !3101, !DIAssignID !3292
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3292, metadata ptr %4, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3293, metadata ptr undef, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %4, metadata !2127, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %0, metadata !2128, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %1, metadata !2129, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %4, metadata !2127, metadata !DIExpression()), !dbg !3294
  store i32 10, ptr %4, align 8, !dbg !3296, !tbaa !2070, !DIAssignID !3297
  call void @llvm.dbg.assign(metadata i32 10, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3297, metadata ptr %4, metadata !DIExpression()), !dbg !3288
  %5 = icmp ne ptr %0, null, !dbg !3298
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3299
  br i1 %7, label %9, label %8, !dbg !3299

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3300
  unreachable, !dbg !3300

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3301
  store ptr %0, ptr %10, align 8, !dbg !3302, !tbaa !2141, !DIAssignID !3303
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3303, metadata ptr %10, metadata !DIExpression()), !dbg !3288
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3304
  store ptr %1, ptr %11, align 8, !dbg !3305, !tbaa !2144, !DIAssignID !3306
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3306, metadata ptr %11, metadata !DIExpression()), !dbg !3288
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3307
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3308
  ret ptr %12, !dbg !3309
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3310 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3318
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3314, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3315, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3316, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3317, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3318, metadata ptr %5, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 0, metadata !3228, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %0, metadata !3229, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %1, metadata !3230, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %2, metadata !3231, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %3, metadata !3232, metadata !DIExpression()), !dbg !3320
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3323, !tbaa.struct !3101, !DIAssignID !3324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3324, metadata ptr %5, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3325, metadata ptr undef, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %5, metadata !2127, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %0, metadata !2128, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %1, metadata !2129, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %5, metadata !2127, metadata !DIExpression()), !dbg !3326
  store i32 10, ptr %5, align 8, !dbg !3328, !tbaa !2070, !DIAssignID !3329
  call void @llvm.dbg.assign(metadata i32 10, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3329, metadata ptr %5, metadata !DIExpression()), !dbg !3320
  %6 = icmp ne ptr %0, null, !dbg !3330
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3331
  br i1 %8, label %10, label %9, !dbg !3331

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3332
  unreachable, !dbg !3332

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3333
  store ptr %0, ptr %11, align 8, !dbg !3334, !tbaa !2141, !DIAssignID !3335
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3335, metadata ptr %11, metadata !DIExpression()), !dbg !3320
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3336
  store ptr %1, ptr %12, align 8, !dbg !3337, !tbaa !2144, !DIAssignID !3338
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3338, metadata ptr %12, metadata !DIExpression()), !dbg !3320
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3339
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3340
  ret ptr %13, !dbg !3341
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3342 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3347, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3348, metadata !DIExpression()), !dbg !3349
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3350
  ret ptr %4, !dbg !3351
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3352 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3356, metadata !DIExpression()), !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 0, metadata !3346, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata ptr %0, metadata !3347, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()), !dbg !3359
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3361
  ret ptr %3, !dbg !3362
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3363 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3367, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata ptr %1, metadata !3347, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 -1, metadata !3348, metadata !DIExpression()), !dbg !3370
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3372
  ret ptr %3, !dbg !3373
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3374 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %0, metadata !3368, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 0, metadata !3346, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata ptr %0, metadata !3347, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 -1, metadata !3348, metadata !DIExpression()), !dbg !3382
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3384
  ret ptr %2, !dbg !3385
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @safe_write(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #21 !dbg !3386 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3392, metadata !DIExpression()), !dbg !3400
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3393, metadata !DIExpression()), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3394, metadata !DIExpression()), !dbg !3400
  br label %4, !dbg !3401

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3402

6:                                                ; preds = %9, %4
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3394, metadata !DIExpression()), !dbg !3400
  %7 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %5) #40, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3395, metadata !DIExpression()), !dbg !3404
  %8 = icmp sgt i64 %7, -1, !dbg !3405
  br i1 %8, label %17, label %9, !dbg !3402

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #43, !dbg !3407
  %11 = load i32, ptr %10, align 4, !dbg !3407, !tbaa !874
  %12 = icmp eq i32 %11, 4, !dbg !3407
  br i1 %12, label %6, label %13, !dbg !3409, !llvm.loop !3410

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3413
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3415
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3394, metadata !DIExpression()), !dbg !3400
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3416
}

; Function Attrs: nofree
declare !dbg !3417 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3420 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3460, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3461, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3462, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3463, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3464, metadata !DIExpression()), !dbg !3465
  %7 = icmp eq ptr %1, null, !dbg !3466
  br i1 %7, label %10, label %8, !dbg !3468

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3469
  br label %12, !dbg !3469

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.83, ptr noundef %2, ptr noundef %3) #40, !dbg !3470
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.3.85, i32 noundef 5) #40, !dbg !3471
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3471
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3472
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.5.87, i32 noundef 5) #40, !dbg !3473
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.88) #40, !dbg !3473
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3474
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
  ], !dbg !3475

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.7.89, i32 noundef 5) #40, !dbg !3476
  %21 = load ptr, ptr %4, align 8, !dbg !3476, !tbaa !813
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3476
  br label %147, !dbg !3478

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.8.90, i32 noundef 5) #40, !dbg !3479
  %25 = load ptr, ptr %4, align 8, !dbg !3479, !tbaa !813
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3479
  %27 = load ptr, ptr %26, align 8, !dbg !3479, !tbaa !813
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3479
  br label %147, !dbg !3480

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.9.91, i32 noundef 5) #40, !dbg !3481
  %31 = load ptr, ptr %4, align 8, !dbg !3481, !tbaa !813
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3481
  %33 = load ptr, ptr %32, align 8, !dbg !3481, !tbaa !813
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3481
  %35 = load ptr, ptr %34, align 8, !dbg !3481, !tbaa !813
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3481
  br label %147, !dbg !3482

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.10.92, i32 noundef 5) #40, !dbg !3483
  %39 = load ptr, ptr %4, align 8, !dbg !3483, !tbaa !813
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3483
  %41 = load ptr, ptr %40, align 8, !dbg !3483, !tbaa !813
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3483
  %43 = load ptr, ptr %42, align 8, !dbg !3483, !tbaa !813
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3483
  %45 = load ptr, ptr %44, align 8, !dbg !3483, !tbaa !813
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3483
  br label %147, !dbg !3484

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.11.93, i32 noundef 5) #40, !dbg !3485
  %49 = load ptr, ptr %4, align 8, !dbg !3485, !tbaa !813
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3485
  %51 = load ptr, ptr %50, align 8, !dbg !3485, !tbaa !813
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3485
  %53 = load ptr, ptr %52, align 8, !dbg !3485, !tbaa !813
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3485
  %55 = load ptr, ptr %54, align 8, !dbg !3485, !tbaa !813
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3485
  %57 = load ptr, ptr %56, align 8, !dbg !3485, !tbaa !813
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3485
  br label %147, !dbg !3486

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.12.94, i32 noundef 5) #40, !dbg !3487
  %61 = load ptr, ptr %4, align 8, !dbg !3487, !tbaa !813
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3487
  %63 = load ptr, ptr %62, align 8, !dbg !3487, !tbaa !813
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3487
  %65 = load ptr, ptr %64, align 8, !dbg !3487, !tbaa !813
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3487
  %67 = load ptr, ptr %66, align 8, !dbg !3487, !tbaa !813
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3487
  %69 = load ptr, ptr %68, align 8, !dbg !3487, !tbaa !813
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3487
  %71 = load ptr, ptr %70, align 8, !dbg !3487, !tbaa !813
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3487
  br label %147, !dbg !3488

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.13.95, i32 noundef 5) #40, !dbg !3489
  %75 = load ptr, ptr %4, align 8, !dbg !3489, !tbaa !813
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3489
  %77 = load ptr, ptr %76, align 8, !dbg !3489, !tbaa !813
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3489
  %79 = load ptr, ptr %78, align 8, !dbg !3489, !tbaa !813
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3489
  %81 = load ptr, ptr %80, align 8, !dbg !3489, !tbaa !813
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3489
  %83 = load ptr, ptr %82, align 8, !dbg !3489, !tbaa !813
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3489
  %85 = load ptr, ptr %84, align 8, !dbg !3489, !tbaa !813
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3489
  %87 = load ptr, ptr %86, align 8, !dbg !3489, !tbaa !813
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3489
  br label %147, !dbg !3490

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.14.96, i32 noundef 5) #40, !dbg !3491
  %91 = load ptr, ptr %4, align 8, !dbg !3491, !tbaa !813
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3491
  %93 = load ptr, ptr %92, align 8, !dbg !3491, !tbaa !813
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3491
  %95 = load ptr, ptr %94, align 8, !dbg !3491, !tbaa !813
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3491
  %97 = load ptr, ptr %96, align 8, !dbg !3491, !tbaa !813
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3491
  %99 = load ptr, ptr %98, align 8, !dbg !3491, !tbaa !813
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3491
  %101 = load ptr, ptr %100, align 8, !dbg !3491, !tbaa !813
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3491
  %103 = load ptr, ptr %102, align 8, !dbg !3491, !tbaa !813
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3491
  %105 = load ptr, ptr %104, align 8, !dbg !3491, !tbaa !813
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3491
  br label %147, !dbg !3492

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.15.97, i32 noundef 5) #40, !dbg !3493
  %109 = load ptr, ptr %4, align 8, !dbg !3493, !tbaa !813
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3493
  %111 = load ptr, ptr %110, align 8, !dbg !3493, !tbaa !813
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3493
  %113 = load ptr, ptr %112, align 8, !dbg !3493, !tbaa !813
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3493
  %115 = load ptr, ptr %114, align 8, !dbg !3493, !tbaa !813
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3493
  %117 = load ptr, ptr %116, align 8, !dbg !3493, !tbaa !813
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3493
  %119 = load ptr, ptr %118, align 8, !dbg !3493, !tbaa !813
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3493
  %121 = load ptr, ptr %120, align 8, !dbg !3493, !tbaa !813
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3493
  %123 = load ptr, ptr %122, align 8, !dbg !3493, !tbaa !813
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3493
  %125 = load ptr, ptr %124, align 8, !dbg !3493, !tbaa !813
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3493
  br label %147, !dbg !3494

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.16.98, i32 noundef 5) #40, !dbg !3495
  %129 = load ptr, ptr %4, align 8, !dbg !3495, !tbaa !813
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3495
  %131 = load ptr, ptr %130, align 8, !dbg !3495, !tbaa !813
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3495
  %133 = load ptr, ptr %132, align 8, !dbg !3495, !tbaa !813
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3495
  %135 = load ptr, ptr %134, align 8, !dbg !3495, !tbaa !813
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3495
  %137 = load ptr, ptr %136, align 8, !dbg !3495, !tbaa !813
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3495
  %139 = load ptr, ptr %138, align 8, !dbg !3495, !tbaa !813
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3495
  %141 = load ptr, ptr %140, align 8, !dbg !3495, !tbaa !813
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3495
  %143 = load ptr, ptr %142, align 8, !dbg !3495, !tbaa !813
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3495
  %145 = load ptr, ptr %144, align 8, !dbg !3495, !tbaa !813
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3495
  br label %147, !dbg !3496

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3497
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3498 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3502, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3503, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3504, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3505, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3506, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3507, metadata !DIExpression()), !dbg !3508
  br label %6, !dbg !3509

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3511
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3507, metadata !DIExpression()), !dbg !3508
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3512
  %9 = load ptr, ptr %8, align 8, !dbg !3512, !tbaa !813
  %10 = icmp eq ptr %9, null, !dbg !3514
  %11 = add i64 %7, 1, !dbg !3515
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3507, metadata !DIExpression()), !dbg !3508
  br i1 %10, label %12, label %6, !dbg !3514, !llvm.loop !3516

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3518
  ret void, !dbg !3519
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3520 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3539
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3537, metadata !DIExpression(), metadata !3539, metadata ptr %6, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3531, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3532, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3533, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3534, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3535, metadata !DIExpression()), !dbg !3540
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3536, metadata !DIExpression()), !dbg !3540
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3536, metadata !DIExpression()), !dbg !3540
  %10 = icmp ult i32 %9, 41, !dbg !3542
  br i1 %10, label %11, label %16, !dbg !3542

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3542
  %13 = zext nneg i32 %9 to i64, !dbg !3542
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3542
  %15 = add nuw nsw i32 %9, 8, !dbg !3542
  store i32 %15, ptr %4, align 8, !dbg !3542
  br label %19, !dbg !3542

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3542
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3542
  store ptr %18, ptr %7, align 8, !dbg !3542
  br label %19, !dbg !3542

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3542
  %22 = load ptr, ptr %21, align 8, !dbg !3542
  store ptr %22, ptr %6, align 16, !dbg !3545, !tbaa !813
  %23 = icmp eq ptr %22, null, !dbg !3546
  br i1 %23, label %128, label %24, !dbg !3547

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3536, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3536, metadata !DIExpression()), !dbg !3540
  %25 = icmp ult i32 %20, 41, !dbg !3542
  br i1 %25, label %29, label %26, !dbg !3542

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3542
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3542
  store ptr %28, ptr %7, align 8, !dbg !3542
  br label %34, !dbg !3542

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3542
  %31 = zext nneg i32 %20 to i64, !dbg !3542
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3542
  %33 = add nuw nsw i32 %20, 8, !dbg !3542
  store i32 %33, ptr %4, align 8, !dbg !3542
  br label %34, !dbg !3542

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3542
  %37 = load ptr, ptr %36, align 8, !dbg !3542
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3548
  store ptr %37, ptr %38, align 8, !dbg !3545, !tbaa !813
  %39 = icmp eq ptr %37, null, !dbg !3546
  br i1 %39, label %128, label %40, !dbg !3547

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3536, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3536, metadata !DIExpression()), !dbg !3540
  %41 = icmp ult i32 %35, 41, !dbg !3542
  br i1 %41, label %45, label %42, !dbg !3542

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3542
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3542
  store ptr %44, ptr %7, align 8, !dbg !3542
  br label %50, !dbg !3542

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3542
  %47 = zext nneg i32 %35 to i64, !dbg !3542
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3542
  %49 = add nuw nsw i32 %35, 8, !dbg !3542
  store i32 %49, ptr %4, align 8, !dbg !3542
  br label %50, !dbg !3542

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3542
  %53 = load ptr, ptr %52, align 8, !dbg !3542
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3548
  store ptr %53, ptr %54, align 16, !dbg !3545, !tbaa !813
  %55 = icmp eq ptr %53, null, !dbg !3546
  br i1 %55, label %128, label %56, !dbg !3547

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3536, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3536, metadata !DIExpression()), !dbg !3540
  %57 = icmp ult i32 %51, 41, !dbg !3542
  br i1 %57, label %61, label %58, !dbg !3542

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3542
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3542
  store ptr %60, ptr %7, align 8, !dbg !3542
  br label %66, !dbg !3542

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3542
  %63 = zext nneg i32 %51 to i64, !dbg !3542
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3542
  %65 = add nuw nsw i32 %51, 8, !dbg !3542
  store i32 %65, ptr %4, align 8, !dbg !3542
  br label %66, !dbg !3542

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3542
  %69 = load ptr, ptr %68, align 8, !dbg !3542
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3548
  store ptr %69, ptr %70, align 8, !dbg !3545, !tbaa !813
  %71 = icmp eq ptr %69, null, !dbg !3546
  br i1 %71, label %128, label %72, !dbg !3547

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3536, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3536, metadata !DIExpression()), !dbg !3540
  %73 = icmp ult i32 %67, 41, !dbg !3542
  br i1 %73, label %77, label %74, !dbg !3542

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3542
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3542
  store ptr %76, ptr %7, align 8, !dbg !3542
  br label %82, !dbg !3542

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3542
  %79 = zext nneg i32 %67 to i64, !dbg !3542
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3542
  %81 = add nuw nsw i32 %67, 8, !dbg !3542
  store i32 %81, ptr %4, align 8, !dbg !3542
  br label %82, !dbg !3542

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3542
  %85 = load ptr, ptr %84, align 8, !dbg !3542
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3548
  store ptr %85, ptr %86, align 16, !dbg !3545, !tbaa !813
  %87 = icmp eq ptr %85, null, !dbg !3546
  br i1 %87, label %128, label %88, !dbg !3547

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3536, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3536, metadata !DIExpression()), !dbg !3540
  %89 = icmp ult i32 %83, 41, !dbg !3542
  br i1 %89, label %93, label %90, !dbg !3542

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3542
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3542
  store ptr %92, ptr %7, align 8, !dbg !3542
  br label %98, !dbg !3542

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3542
  %95 = zext nneg i32 %83 to i64, !dbg !3542
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3542
  %97 = add nuw nsw i32 %83, 8, !dbg !3542
  store i32 %97, ptr %4, align 8, !dbg !3542
  br label %98, !dbg !3542

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3542
  %100 = load ptr, ptr %99, align 8, !dbg !3542
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3548
  store ptr %100, ptr %101, align 8, !dbg !3545, !tbaa !813
  %102 = icmp eq ptr %100, null, !dbg !3546
  br i1 %102, label %128, label %103, !dbg !3547

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3536, metadata !DIExpression()), !dbg !3540
  %104 = load ptr, ptr %7, align 8, !dbg !3542
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3542
  store ptr %105, ptr %7, align 8, !dbg !3542
  %106 = load ptr, ptr %104, align 8, !dbg !3542
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3548
  store ptr %106, ptr %107, align 16, !dbg !3545, !tbaa !813
  %108 = icmp eq ptr %106, null, !dbg !3546
  br i1 %108, label %128, label %109, !dbg !3547

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3536, metadata !DIExpression()), !dbg !3540
  %110 = load ptr, ptr %7, align 8, !dbg !3542
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3542
  store ptr %111, ptr %7, align 8, !dbg !3542
  %112 = load ptr, ptr %110, align 8, !dbg !3542
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3548
  store ptr %112, ptr %113, align 8, !dbg !3545, !tbaa !813
  %114 = icmp eq ptr %112, null, !dbg !3546
  br i1 %114, label %128, label %115, !dbg !3547

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3536, metadata !DIExpression()), !dbg !3540
  %116 = load ptr, ptr %7, align 8, !dbg !3542
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3542
  store ptr %117, ptr %7, align 8, !dbg !3542
  %118 = load ptr, ptr %116, align 8, !dbg !3542
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3548
  store ptr %118, ptr %119, align 16, !dbg !3545, !tbaa !813
  %120 = icmp eq ptr %118, null, !dbg !3546
  br i1 %120, label %128, label %121, !dbg !3547

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3536, metadata !DIExpression()), !dbg !3540
  %122 = load ptr, ptr %7, align 8, !dbg !3542
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3542
  store ptr %123, ptr %7, align 8, !dbg !3542
  %124 = load ptr, ptr %122, align 8, !dbg !3542
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3548
  store ptr %124, ptr %125, align 8, !dbg !3545, !tbaa !813
  %126 = icmp eq ptr %124, null, !dbg !3546
  %127 = select i1 %126, i64 9, i64 10, !dbg !3547
  br label %128, !dbg !3547

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3549
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3550
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3551
  ret void, !dbg !3551
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3552 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3560, metadata !DIExpression(), metadata !3565, metadata ptr %5, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3557, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3558, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3559, metadata !DIExpression()), !dbg !3566
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !3567
  call void @llvm.va_start(ptr nonnull %5), !dbg !3568
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3569
  call void @llvm.va_end(ptr nonnull %5), !dbg !3570
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !3571
  ret void, !dbg !3571
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3572 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3573, !tbaa !813
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %1), !dbg !3573
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.17.103, i32 noundef 5) #40, !dbg !3574
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #40, !dbg !3574
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !3575
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.104, ptr noundef nonnull @.str.21) #40, !dbg !3575
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !3576
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #40, !dbg !3576
  ret void, !dbg !3577
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3578 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3583, metadata !DIExpression()), !dbg !3586
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3584, metadata !DIExpression()), !dbg !3586
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %0, metadata !3587, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %1, metadata !3590, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %2, metadata !3591, metadata !DIExpression()), !dbg !3592
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3594
  call void @llvm.dbg.value(metadata ptr %4, metadata !3595, metadata !DIExpression()), !dbg !3600
  %5 = icmp eq ptr %4, null, !dbg !3602
  br i1 %5, label %6, label %7, !dbg !3604

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3605
  unreachable, !dbg !3605

7:                                                ; preds = %3
  ret ptr %4, !dbg !3606
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3588 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3587, metadata !DIExpression()), !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3590, metadata !DIExpression()), !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3591, metadata !DIExpression()), !dbg !3607
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3608
  call void @llvm.dbg.value(metadata ptr %4, metadata !3595, metadata !DIExpression()), !dbg !3609
  %5 = icmp eq ptr %4, null, !dbg !3611
  br i1 %5, label %6, label %7, !dbg !3612

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3613
  unreachable, !dbg !3613

7:                                                ; preds = %3
  ret ptr %4, !dbg !3614
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3615 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3619, metadata !DIExpression()), !dbg !3620
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3621
  call void @llvm.dbg.value(metadata ptr %2, metadata !3595, metadata !DIExpression()), !dbg !3622
  %3 = icmp eq ptr %2, null, !dbg !3624
  br i1 %3, label %4, label %5, !dbg !3625

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3626
  unreachable, !dbg !3626

5:                                                ; preds = %1
  ret ptr %2, !dbg !3627
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3628 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3629 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %0, metadata !3635, metadata !DIExpression()), !dbg !3639
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3641
  call void @llvm.dbg.value(metadata ptr %2, metadata !3595, metadata !DIExpression()), !dbg !3642
  %3 = icmp eq ptr %2, null, !dbg !3644
  br i1 %3, label %4, label %5, !dbg !3645

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3646
  unreachable, !dbg !3646

5:                                                ; preds = %1
  ret ptr %2, !dbg !3647
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3648 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %0, metadata !3619, metadata !DIExpression()), !dbg !3654
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3656
  call void @llvm.dbg.value(metadata ptr %2, metadata !3595, metadata !DIExpression()), !dbg !3657
  %3 = icmp eq ptr %2, null, !dbg !3659
  br i1 %3, label %4, label %5, !dbg !3660

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3661
  unreachable, !dbg !3661

5:                                                ; preds = %1
  ret ptr %2, !dbg !3662
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3663 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3667, metadata !DIExpression()), !dbg !3669
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %0, metadata !3670, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %1, metadata !3674, metadata !DIExpression()), !dbg !3675
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3677
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3678
  call void @llvm.dbg.value(metadata ptr %4, metadata !3595, metadata !DIExpression()), !dbg !3679
  %5 = icmp eq ptr %4, null, !dbg !3681
  br i1 %5, label %6, label %7, !dbg !3682

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3683
  unreachable, !dbg !3683

7:                                                ; preds = %2
  ret ptr %4, !dbg !3684
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3685 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3686 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %0, metadata !3693, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %1, metadata !3696, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %0, metadata !3670, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %1, metadata !3674, metadata !DIExpression()), !dbg !3699
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3701
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3702
  call void @llvm.dbg.value(metadata ptr %4, metadata !3595, metadata !DIExpression()), !dbg !3703
  %5 = icmp eq ptr %4, null, !dbg !3705
  br i1 %5, label %6, label %7, !dbg !3706

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3707
  unreachable, !dbg !3707

7:                                                ; preds = %2
  ret ptr %4, !dbg !3708
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3709 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3713, metadata !DIExpression()), !dbg !3716
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3714, metadata !DIExpression()), !dbg !3716
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3715, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata ptr %0, metadata !3717, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %1, metadata !3720, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %2, metadata !3721, metadata !DIExpression()), !dbg !3722
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3724
  call void @llvm.dbg.value(metadata ptr %4, metadata !3595, metadata !DIExpression()), !dbg !3725
  %5 = icmp eq ptr %4, null, !dbg !3727
  br i1 %5, label %6, label %7, !dbg !3728

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3729
  unreachable, !dbg !3729

7:                                                ; preds = %3
  ret ptr %4, !dbg !3730
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !3731 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3733, metadata !DIExpression()), !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3734, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr null, metadata !3587, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %0, metadata !3590, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %1, metadata !3591, metadata !DIExpression()), !dbg !3736
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3738
  call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3739
  %4 = icmp eq ptr %3, null, !dbg !3741
  br i1 %4, label %5, label %6, !dbg !3742

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3743
  unreachable, !dbg !3743

6:                                                ; preds = %2
  ret ptr %3, !dbg !3744
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !3745 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3749, metadata !DIExpression()), !dbg !3751
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3750, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr null, metadata !3713, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %0, metadata !3714, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr null, metadata !3717, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %0, metadata !3720, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %1, metadata !3721, metadata !DIExpression()), !dbg !3754
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3756
  call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3757
  %4 = icmp eq ptr %3, null, !dbg !3759
  br i1 %4, label %5, label %6, !dbg !3760

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3761
  unreachable, !dbg !3761

6:                                                ; preds = %2
  ret ptr %3, !dbg !3762
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3763 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3769
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3768, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata ptr %0, metadata !744, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %1, metadata !745, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 1, metadata !746, metadata !DIExpression()), !dbg !3770
  %3 = load i64, ptr %1, align 8, !dbg !3772, !tbaa !2807
  call void @llvm.dbg.value(metadata i64 %3, metadata !747, metadata !DIExpression()), !dbg !3770
  %4 = icmp eq ptr %0, null, !dbg !3773
  br i1 %4, label %5, label %8, !dbg !3775

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3776
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3779
  br label %15, !dbg !3779

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3780
  %10 = add nuw i64 %9, 1, !dbg !3780
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3780
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3780
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %13, metadata !747, metadata !DIExpression()), !dbg !3770
  br i1 %12, label %14, label %15, !dbg !3783

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !3784
  unreachable, !dbg !3784

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3770
  call void @llvm.dbg.value(metadata i64 %16, metadata !747, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %0, metadata !3587, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %16, metadata !3590, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 1, metadata !3591, metadata !DIExpression()), !dbg !3785
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !3787
  call void @llvm.dbg.value(metadata ptr %17, metadata !3595, metadata !DIExpression()), !dbg !3788
  %18 = icmp eq ptr %17, null, !dbg !3790
  br i1 %18, label %19, label %20, !dbg !3791

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !3792
  unreachable, !dbg !3792

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !744, metadata !DIExpression()), !dbg !3770
  store i64 %16, ptr %1, align 8, !dbg !3793, !tbaa !2807
  ret ptr %17, !dbg !3794
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !739 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !744, metadata !DIExpression()), !dbg !3795
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !745, metadata !DIExpression()), !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !746, metadata !DIExpression()), !dbg !3795
  %4 = load i64, ptr %1, align 8, !dbg !3796, !tbaa !2807
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !747, metadata !DIExpression()), !dbg !3795
  %5 = icmp eq ptr %0, null, !dbg !3797
  br i1 %5, label %6, label %13, !dbg !3798

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3799
  br i1 %7, label %8, label %20, !dbg !3800

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !747, metadata !DIExpression()), !dbg !3795
  %10 = icmp ugt i64 %2, 128, !dbg !3803
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !747, metadata !DIExpression()), !dbg !3795
  br label %20, !dbg !3805

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3806
  %15 = add nuw i64 %14, 1, !dbg !3806
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3806
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3806
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3806
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !747, metadata !DIExpression()), !dbg !3795
  br i1 %17, label %19, label %20, !dbg !3807

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !3808
  unreachable, !dbg !3808

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !747, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %0, metadata !3587, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %21, metadata !3590, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %2, metadata !3591, metadata !DIExpression()), !dbg !3809
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !3811
  call void @llvm.dbg.value(metadata ptr %22, metadata !3595, metadata !DIExpression()), !dbg !3812
  %23 = icmp eq ptr %22, null, !dbg !3814
  br i1 %23, label %24, label %25, !dbg !3815

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !3816
  unreachable, !dbg !3816

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !744, metadata !DIExpression()), !dbg !3795
  store i64 %21, ptr %1, align 8, !dbg !3817, !tbaa !2807
  ret ptr %22, !dbg !3818
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !751 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !760, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !761, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !762, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !763, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !764, metadata !DIExpression()), !dbg !3819
  %6 = load i64, ptr %1, align 8, !dbg !3820, !tbaa !2807
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !765, metadata !DIExpression()), !dbg !3819
  %7 = ashr i64 %6, 1, !dbg !3821
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3821
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3821
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !766, metadata !DIExpression()), !dbg !3819
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3823
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !766, metadata !DIExpression()), !dbg !3819
  %12 = icmp sgt i64 %3, -1, !dbg !3824
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3826
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !766, metadata !DIExpression()), !dbg !3819
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3827
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3827
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !767, metadata !DIExpression()), !dbg !3819
  %18 = icmp slt i64 %17, 128, !dbg !3827
  %19 = select i1 %18, i64 128, i64 0, !dbg !3827
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !768, metadata !DIExpression()), !dbg !3819
  %21 = icmp eq i64 %20, 0, !dbg !3828
  br i1 %21, label %26, label %22, !dbg !3830

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !766, metadata !DIExpression()), !dbg !3819
  %24 = srem i64 %20, %4, !dbg !3833
  %25 = sub nsw i64 %20, %24, !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !767, metadata !DIExpression()), !dbg !3819
  br label %26, !dbg !3835

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3819
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !767, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !766, metadata !DIExpression()), !dbg !3819
  %29 = icmp eq ptr %0, null, !dbg !3836
  br i1 %29, label %30, label %31, !dbg !3838

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3839, !tbaa !2807
  br label %31, !dbg !3840

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3841
  %33 = icmp slt i64 %32, %2, !dbg !3843
  br i1 %33, label %34, label %46, !dbg !3844

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3845
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3845
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3845
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !766, metadata !DIExpression()), !dbg !3819
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3846
  br i1 %40, label %45, label %41, !dbg !3846

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3847
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3847
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !767, metadata !DIExpression()), !dbg !3819
  br i1 %43, label %45, label %46, !dbg !3848

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !3849
  unreachable, !dbg !3849

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3819
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !767, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !766, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %0, metadata !3667, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %48, metadata !3668, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata ptr %0, metadata !3670, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %48, metadata !3674, metadata !DIExpression()), !dbg !3852
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3854
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %50, metadata !3595, metadata !DIExpression()), !dbg !3856
  %51 = icmp eq ptr %50, null, !dbg !3858
  br i1 %51, label %52, label %53, !dbg !3859

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !3860
  unreachable, !dbg !3860

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !760, metadata !DIExpression()), !dbg !3819
  store i64 %47, ptr %1, align 8, !dbg !3861, !tbaa !2807
  ret ptr %50, !dbg !3862
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3863 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3865, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %0, metadata !3867, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i64 1, metadata !3870, metadata !DIExpression()), !dbg !3871
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3873
  call void @llvm.dbg.value(metadata ptr %2, metadata !3595, metadata !DIExpression()), !dbg !3874
  %3 = icmp eq ptr %2, null, !dbg !3876
  br i1 %3, label %4, label %5, !dbg !3877

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3878
  unreachable, !dbg !3878

5:                                                ; preds = %1
  ret ptr %2, !dbg !3879
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3880 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !3868 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3867, metadata !DIExpression()), !dbg !3881
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3870, metadata !DIExpression()), !dbg !3881
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3882
  call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3883
  %4 = icmp eq ptr %3, null, !dbg !3885
  br i1 %4, label %5, label %6, !dbg !3886

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3887
  unreachable, !dbg !3887

6:                                                ; preds = %2
  ret ptr %3, !dbg !3888
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3889 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %0, metadata !3893, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i64 1, metadata !3896, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i64 %0, metadata !3899, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 1, metadata !3902, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %0, metadata !3899, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 1, metadata !3902, metadata !DIExpression()), !dbg !3903
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3905
  call void @llvm.dbg.value(metadata ptr %2, metadata !3595, metadata !DIExpression()), !dbg !3906
  %3 = icmp eq ptr %2, null, !dbg !3908
  br i1 %3, label %4, label %5, !dbg !3909

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3910
  unreachable, !dbg !3910

5:                                                ; preds = %1
  ret ptr %2, !dbg !3911
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !3894 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3893, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3896, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i64 %0, metadata !3899, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %1, metadata !3902, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %0, metadata !3899, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %1, metadata !3902, metadata !DIExpression()), !dbg !3913
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3915
  call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3916
  %4 = icmp eq ptr %3, null, !dbg !3918
  br i1 %4, label %5, label %6, !dbg !3919

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3920
  unreachable, !dbg !3920

6:                                                ; preds = %2
  ret ptr %3, !dbg !3921
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3922 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3926, metadata !DIExpression()), !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3927, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64 %1, metadata !3619, metadata !DIExpression()), !dbg !3929
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3931
  call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3932
  %4 = icmp eq ptr %3, null, !dbg !3934
  br i1 %4, label %5, label %6, !dbg !3935

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3936
  unreachable, !dbg !3936

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3937, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %0, metadata !3940, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !3942
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3944
  ret ptr %3, !dbg !3945
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3946 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3950, metadata !DIExpression()), !dbg !3952
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3951, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i64 %1, metadata !3633, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3635, metadata !DIExpression()), !dbg !3955
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3957
  call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3958
  %4 = icmp eq ptr %3, null, !dbg !3960
  br i1 %4, label %5, label %6, !dbg !3961

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3962
  unreachable, !dbg !3962

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3937, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %0, metadata !3940, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !3963
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3965
  ret ptr %3, !dbg !3966
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3967 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !3974
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3972, metadata !DIExpression()), !dbg !3974
  %3 = add nsw i64 %1, 1, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %3, metadata !3633, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64 %3, metadata !3635, metadata !DIExpression()), !dbg !3978
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %4, metadata !3595, metadata !DIExpression()), !dbg !3981
  %5 = icmp eq ptr %4, null, !dbg !3983
  br i1 %5, label %6, label %7, !dbg !3984

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3985
  unreachable, !dbg !3985

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3973, metadata !DIExpression()), !dbg !3974
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3986
  store i8 0, ptr %8, align 1, !dbg !3987, !tbaa !883
  call void @llvm.dbg.value(metadata ptr %4, metadata !3937, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %0, metadata !3940, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !3988
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3990
  ret ptr %4, !dbg !3991
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3992 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !3995
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3996
  %3 = add i64 %2, 1, !dbg !3997
  call void @llvm.dbg.value(metadata ptr %0, metadata !3926, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i64 %3, metadata !3927, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i64 %3, metadata !3619, metadata !DIExpression()), !dbg !4000
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4002
  call void @llvm.dbg.value(metadata ptr %4, metadata !3595, metadata !DIExpression()), !dbg !4003
  %5 = icmp eq ptr %4, null, !dbg !4005
  br i1 %5, label %6, label %7, !dbg !4006

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4007
  unreachable, !dbg !4007

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3937, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %0, metadata !3940, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %3, metadata !3941, metadata !DIExpression()), !dbg !4008
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4010
  ret ptr %4, !dbg !4011
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4012 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4017, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4014, metadata !DIExpression()), !dbg !4018
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.117, ptr noundef nonnull @.str.2.118, i32 noundef 5) #40, !dbg !4017
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef %2) #40, !dbg !4017
  %3 = icmp eq i32 %1, 0, !dbg !4017
  tail call void @llvm.assume(i1 %3), !dbg !4017
  tail call void @abort() #42, !dbg !4019
  unreachable, !dbg !4019
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4020 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4058, metadata !DIExpression()), !dbg !4063
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4059, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4063
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4065, metadata !DIExpression()), !dbg !4068
  %3 = load i32, ptr %0, align 8, !dbg !4070, !tbaa !4071
  %4 = and i32 %3, 32, !dbg !4072
  %5 = icmp eq i32 %4, 0, !dbg !4072
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4061, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4063
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4073
  %7 = icmp eq i32 %6, 0, !dbg !4074
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4063
  br i1 %5, label %8, label %18, !dbg !4075

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4077
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4059, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4063
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4078
  %11 = xor i1 %7, true, !dbg !4078
  %12 = sext i1 %11 to i32, !dbg !4078
  br i1 %10, label %21, label %13, !dbg !4078

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4079
  %15 = load i32, ptr %14, align 4, !dbg !4079, !tbaa !874
  %16 = icmp ne i32 %15, 9, !dbg !4080
  %17 = sext i1 %16 to i32, !dbg !4081
  br label %21, !dbg !4081

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4082

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4084
  store i32 0, ptr %20, align 4, !dbg !4086, !tbaa !874
  br label %21, !dbg !4084

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4063
  ret i32 %22, !dbg !4087
}

; Function Attrs: nounwind
declare !dbg !4088 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4130, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4131, metadata !DIExpression()), !dbg !4134
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4132, metadata !DIExpression()), !dbg !4134
  %3 = icmp slt i32 %2, 0, !dbg !4136
  br i1 %3, label %4, label %6, !dbg !4138

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4139
  br label %24, !dbg !4140

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4141
  %8 = icmp eq i32 %7, 0, !dbg !4141
  br i1 %8, label %13, label %9, !dbg !4143

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4144
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4145
  %12 = icmp eq i64 %11, -1, !dbg !4146
  br i1 %12, label %16, label %13, !dbg !4147

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4148
  %15 = icmp eq i32 %14, 0, !dbg !4148
  br i1 %15, label %16, label %18, !dbg !4149

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4131, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4133, metadata !DIExpression()), !dbg !4134
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4150
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4133, metadata !DIExpression()), !dbg !4134
  br label %24, !dbg !4151

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4152
  %20 = load i32, ptr %19, align 4, !dbg !4152, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4131, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4133, metadata !DIExpression()), !dbg !4134
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4150
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4133, metadata !DIExpression()), !dbg !4134
  %22 = icmp eq i32 %20, 0, !dbg !4153
  br i1 %22, label %24, label %23, !dbg !4151

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4155, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4133, metadata !DIExpression()), !dbg !4134
  br label %24, !dbg !4157

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4134
  ret i32 %25, !dbg !4158
}

; Function Attrs: nofree nounwind
declare !dbg !4159 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4160 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4161 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4162 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4165 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4167, metadata !DIExpression()), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4168, metadata !DIExpression()), !dbg !4173
  %3 = icmp ult i32 %0, 3, !dbg !4174
  br i1 %3, label %4, label %9, !dbg !4174

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #40, !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4169, metadata !DIExpression()), !dbg !4176
  %6 = tail call ptr @__errno_location() #43, !dbg !4177
  %7 = load i32, ptr %6, align 4, !dbg !4177, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4172, metadata !DIExpression()), !dbg !4176
  %8 = tail call i32 @close(i32 noundef %0) #40, !dbg !4178
  store i32 %7, ptr %6, align 4, !dbg !4179, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4167, metadata !DIExpression()), !dbg !4173
  br label %9, !dbg !4180

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4167, metadata !DIExpression()), !dbg !4173
  ret i32 %10, !dbg !4181
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4182 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4184, metadata !DIExpression()), !dbg !4186
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4185, metadata !DIExpression()), !dbg !4186
  %3 = and i32 %1, 524288, !dbg !4187
  %4 = icmp eq i32 %3, 0, !dbg !4188
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4188
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #40, !dbg !4189
  ret i32 %6, !dbg !4190
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4191 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4229, metadata !DIExpression()), !dbg !4230
  %2 = icmp eq ptr %0, null, !dbg !4231
  br i1 %2, label %6, label %3, !dbg !4233

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4234
  %5 = icmp eq i32 %4, 0, !dbg !4234
  br i1 %5, label %6, label %8, !dbg !4235

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4236
  br label %16, !dbg !4237

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4238, metadata !DIExpression()), !dbg !4243
  %9 = load i32, ptr %0, align 8, !dbg !4245, !tbaa !4071
  %10 = and i32 %9, 256, !dbg !4247
  %11 = icmp eq i32 %10, 0, !dbg !4247
  br i1 %11, label %14, label %12, !dbg !4248

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4249
  br label %14, !dbg !4249

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4250
  br label %16, !dbg !4251

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4230
  ret i32 %17, !dbg !4252
}

; Function Attrs: nofree nounwind
declare !dbg !4253 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4254 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4293, metadata !DIExpression()), !dbg !4299
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4294, metadata !DIExpression()), !dbg !4299
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4295, metadata !DIExpression()), !dbg !4299
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4300
  %5 = load ptr, ptr %4, align 8, !dbg !4300, !tbaa !4301
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4302
  %7 = load ptr, ptr %6, align 8, !dbg !4302, !tbaa !4303
  %8 = icmp eq ptr %5, %7, !dbg !4304
  br i1 %8, label %9, label %27, !dbg !4305

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4306
  %11 = load ptr, ptr %10, align 8, !dbg !4306, !tbaa !1550
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4307
  %13 = load ptr, ptr %12, align 8, !dbg !4307, !tbaa !4308
  %14 = icmp eq ptr %11, %13, !dbg !4309
  br i1 %14, label %15, label %27, !dbg !4310

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4311
  %17 = load ptr, ptr %16, align 8, !dbg !4311, !tbaa !4312
  %18 = icmp eq ptr %17, null, !dbg !4313
  br i1 %18, label %19, label %27, !dbg !4314

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4315
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4316
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4296, metadata !DIExpression()), !dbg !4317
  %22 = icmp eq i64 %21, -1, !dbg !4318
  br i1 %22, label %29, label %23, !dbg !4320

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4321, !tbaa !4071
  %25 = and i32 %24, -17, !dbg !4321
  store i32 %25, ptr %0, align 8, !dbg !4321, !tbaa !4071
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4322
  store i64 %21, ptr %26, align 8, !dbg !4323, !tbaa !4324
  br label %29, !dbg !4325

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4326
  br label %29, !dbg !4327

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4299
  ret i32 %30, !dbg !4328
}

; Function Attrs: nofree nounwind
declare !dbg !4329 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4332 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4337, metadata !DIExpression()), !dbg !4342
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4338, metadata !DIExpression()), !dbg !4342
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4339, metadata !DIExpression()), !dbg !4342
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4340, metadata !DIExpression()), !dbg !4342
  %5 = icmp eq ptr %1, null, !dbg !4343
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4345
  %7 = select i1 %5, ptr @.str.134, ptr %1, !dbg !4345
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4345
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4339, metadata !DIExpression()), !dbg !4342
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4338, metadata !DIExpression()), !dbg !4342
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4337, metadata !DIExpression()), !dbg !4342
  %9 = icmp eq ptr %3, null, !dbg !4346
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4348
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4340, metadata !DIExpression()), !dbg !4342
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4341, metadata !DIExpression()), !dbg !4342
  %12 = icmp ult i64 %11, -3, !dbg !4350
  br i1 %12, label %13, label %17, !dbg !4352

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4353
  %15 = icmp eq i32 %14, 0, !dbg !4353
  br i1 %15, label %16, label %29, !dbg !4354

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4355, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr %10, metadata !4362, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 0, metadata !4365, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 8, metadata !4366, metadata !DIExpression()), !dbg !4367
  store i64 0, ptr %10, align 1, !dbg !4369
  br label %29, !dbg !4370

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4371
  br i1 %18, label %19, label %20, !dbg !4373

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4374
  unreachable, !dbg !4374

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4375

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !4377
  br i1 %23, label %29, label %24, !dbg !4378

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4379
  br i1 %25, label %29, label %26, !dbg !4382

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4383, !tbaa !883
  %28 = zext i8 %27 to i32, !dbg !4384
  store i32 %28, ptr %6, align 4, !dbg !4385, !tbaa !874
  br label %29, !dbg !4386

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4342
  ret i64 %30, !dbg !4387
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4388 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_pipe2(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #10 !dbg !685 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !692, metadata !DIExpression()), !dbg !4394
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !693, metadata !DIExpression()), !dbg !4394
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !694, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4394
  %3 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !4395
  %4 = load <2 x i32>, ptr %0, align 4, !dbg !4396, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !694, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4394
  %5 = load i32, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4397, !tbaa !874
  %6 = icmp sgt i32 %5, -1, !dbg !4398
  br i1 %6, label %7, label %16, !dbg !4399

7:                                                ; preds = %2
  %8 = tail call i32 @pipe2(ptr noundef nonnull %0, i32 noundef %1) #40, !dbg !4400
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !696, metadata !DIExpression()), !dbg !4401
  %9 = icmp slt i32 %8, 0, !dbg !4402
  br i1 %9, label %10, label %15, !dbg !4404

10:                                               ; preds = %7
  %11 = tail call ptr @__errno_location() #43, !dbg !4405
  %12 = load i32, ptr %11, align 4, !dbg !4405, !tbaa !874
  %13 = icmp eq i32 %12, 38, !dbg !4406
  br i1 %13, label %14, label %15, !dbg !4407

14:                                               ; preds = %10
  store i32 -1, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4401, !tbaa !874
  br label %16

15:                                               ; preds = %7, %10
  store i32 1, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4401, !tbaa !874
  br label %72

16:                                               ; preds = %14, %2
  %17 = and i32 %1, -526337, !dbg !4408
  %18 = icmp eq i32 %17, 0, !dbg !4410
  br i1 %18, label %21, label %19, !dbg !4411

19:                                               ; preds = %16
  %20 = tail call ptr @__errno_location() #43, !dbg !4412
  store i32 22, ptr %20, align 4, !dbg !4414, !tbaa !874
  br label %72, !dbg !4415

21:                                               ; preds = %16
  %22 = tail call i32 @pipe(ptr noundef nonnull %0) #40, !dbg !4416
  %23 = icmp slt i32 %22, 0, !dbg !4418
  br i1 %23, label %72, label %24, !dbg !4419

24:                                               ; preds = %21
  %25 = and i32 %1, 2048, !dbg !4420
  %26 = icmp eq i32 %25, 0, !dbg !4420
  br i1 %26, label %45, label %27, !dbg !4421

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4, !dbg !4422, !tbaa !874
  %29 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %28, i32 noundef 3, i32 noundef 0) #40, !dbg !4424
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !700, metadata !DIExpression()), !dbg !4425
  %30 = icmp slt i32 %29, 0, !dbg !4426
  br i1 %30, label %65, label %31, !dbg !4427

31:                                               ; preds = %27
  %32 = load i32, ptr %3, align 4, !dbg !4428, !tbaa !874
  %33 = or i32 %29, 2048, !dbg !4429
  %34 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %32, i32 noundef 4, i32 noundef %33) #40, !dbg !4430
  %35 = icmp eq i32 %34, -1, !dbg !4431
  br i1 %35, label %65, label %36, !dbg !4432

36:                                               ; preds = %31
  %37 = load i32, ptr %0, align 4, !dbg !4433, !tbaa !874
  %38 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %37, i32 noundef 3, i32 noundef 0) #40, !dbg !4434
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !700, metadata !DIExpression()), !dbg !4425
  %39 = icmp slt i32 %38, 0, !dbg !4435
  br i1 %39, label %65, label %40, !dbg !4436

40:                                               ; preds = %36
  %41 = load i32, ptr %0, align 4, !dbg !4437, !tbaa !874
  %42 = or i32 %38, 2048, !dbg !4438
  %43 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %41, i32 noundef 4, i32 noundef %42) #40, !dbg !4439
  %44 = icmp eq i32 %43, -1, !dbg !4440
  br i1 %44, label %65, label %45, !dbg !4441

45:                                               ; preds = %40, %24
  %46 = icmp ult i32 %1, 524288, !dbg !4442
  br i1 %46, label %72, label %47, !dbg !4443

47:                                               ; preds = %45
  %48 = load i32, ptr %3, align 4, !dbg !4444, !tbaa !874
  %49 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %48, i32 noundef 1, i32 noundef 0) #40, !dbg !4446
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !703, metadata !DIExpression()), !dbg !4447
  %50 = icmp slt i32 %49, 0, !dbg !4448
  br i1 %50, label %65, label %51, !dbg !4449

51:                                               ; preds = %47
  %52 = load i32, ptr %3, align 4, !dbg !4450, !tbaa !874
  %53 = or i32 %49, 1, !dbg !4451
  %54 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %52, i32 noundef 2, i32 noundef %53) #40, !dbg !4452
  %55 = icmp eq i32 %54, -1, !dbg !4453
  br i1 %55, label %65, label %56, !dbg !4454

56:                                               ; preds = %51
  %57 = load i32, ptr %0, align 4, !dbg !4455, !tbaa !874
  %58 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %57, i32 noundef 1, i32 noundef 0) #40, !dbg !4456
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !703, metadata !DIExpression()), !dbg !4447
  %59 = icmp slt i32 %58, 0, !dbg !4457
  br i1 %59, label %65, label %60, !dbg !4458

60:                                               ; preds = %56
  %61 = load i32, ptr %0, align 4, !dbg !4459, !tbaa !874
  %62 = or i32 %58, 1, !dbg !4460
  %63 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %62) #40, !dbg !4461
  %64 = icmp eq i32 %63, -1, !dbg !4462
  br i1 %64, label %65, label %72, !dbg !4463

65:                                               ; preds = %60, %47, %51, %56, %40, %27, %31, %36
  call void @llvm.dbg.label(metadata !706), !dbg !4464
  %66 = tail call ptr @__errno_location() #43, !dbg !4465
  %67 = load i32, ptr %66, align 4, !dbg !4465, !tbaa !874
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !707, metadata !DIExpression()), !dbg !4466
  %68 = load i32, ptr %0, align 4, !dbg !4467, !tbaa !874
  %69 = tail call i32 @close(i32 noundef %68) #40, !dbg !4468
  %70 = load i32, ptr %3, align 4, !dbg !4469, !tbaa !874
  %71 = tail call i32 @close(i32 noundef %70) #40, !dbg !4470
  store <2 x i32> %4, ptr %0, align 4, !dbg !4471, !tbaa !874
  store i32 %67, ptr %66, align 4, !dbg !4472, !tbaa !874
  br label %72

72:                                               ; preds = %60, %45, %21, %15, %65, %19
  %73 = phi i32 [ -1, %19 ], [ -1, %65 ], [ %8, %15 ], [ -1, %21 ], [ 0, %45 ], [ 0, %60 ]
  ret i32 %73, !dbg !4473
}

; Function Attrs: nounwind
declare !dbg !4474 i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4475 i32 @pipe(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4478 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4480, metadata !DIExpression()), !dbg !4484
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4481, metadata !DIExpression()), !dbg !4484
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4482, metadata !DIExpression()), !dbg !4484
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4485
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4485
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4483, metadata !DIExpression()), !dbg !4484
  br i1 %5, label %6, label %8, !dbg !4487

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4488
  store i32 12, ptr %7, align 4, !dbg !4490, !tbaa !874
  br label %12, !dbg !4491

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4485
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4483, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata ptr %0, metadata !4492, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i64 %9, metadata !4495, metadata !DIExpression()), !dbg !4496
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4498
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4499
  br label %12, !dbg !4500

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4484
  ret ptr %13, !dbg !4501
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4502 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4507, metadata !DIExpression(), metadata !4511, metadata ptr %2, metadata !DIExpression()), !dbg !4512
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4506, metadata !DIExpression()), !dbg !4512
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4513
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4514
  %4 = icmp eq i32 %3, 0, !dbg !4514
  br i1 %4, label %5, label %12, !dbg !4516

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4517, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata !841, metadata !4520, metadata !DIExpression()), !dbg !4521
  %6 = load i16, ptr %2, align 16, !dbg !4524
  %7 = icmp eq i16 %6, 67, !dbg !4524
  br i1 %7, label %11, label %8, !dbg !4525

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4517, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr @.str.1.141, metadata !4520, metadata !DIExpression()), !dbg !4526
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.141, i64 6), !dbg !4528
  %10 = icmp eq i32 %9, 0, !dbg !4529
  br i1 %10, label %11, label %12, !dbg !4530

11:                                               ; preds = %8, %5
  br label %12, !dbg !4531

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4512
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4532
  ret i1 %13, !dbg !4532
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4533 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4537, metadata !DIExpression()), !dbg !4540
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4538, metadata !DIExpression()), !dbg !4540
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4539, metadata !DIExpression()), !dbg !4540
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4541
  ret i32 %4, !dbg !4542
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4543 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4547, metadata !DIExpression()), !dbg !4548
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4549
  ret ptr %2, !dbg !4550
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4551 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4553, metadata !DIExpression()), !dbg !4555
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4556
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4554, metadata !DIExpression()), !dbg !4555
  ret ptr %2, !dbg !4557
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4558 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4560, metadata !DIExpression()), !dbg !4567
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4561, metadata !DIExpression()), !dbg !4567
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4562, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i32 %0, metadata !4553, metadata !DIExpression()), !dbg !4568
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4570
  call void @llvm.dbg.value(metadata ptr %4, metadata !4554, metadata !DIExpression()), !dbg !4568
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4563, metadata !DIExpression()), !dbg !4567
  %5 = icmp eq ptr %4, null, !dbg !4571
  br i1 %5, label %6, label %9, !dbg !4572

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4573
  br i1 %7, label %19, label %8, !dbg !4576

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4577, !tbaa !883
  br label %19, !dbg !4578

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4579
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4564, metadata !DIExpression()), !dbg !4580
  %11 = icmp ult i64 %10, %2, !dbg !4581
  br i1 %11, label %12, label %14, !dbg !4583

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4584
  call void @llvm.dbg.value(metadata ptr %1, metadata !4586, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata ptr %4, metadata !4589, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %13, metadata !4590, metadata !DIExpression()), !dbg !4591
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !4593
  br label %19, !dbg !4594

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4595
  br i1 %15, label %19, label %16, !dbg !4598

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4599
  call void @llvm.dbg.value(metadata ptr %1, metadata !4586, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata ptr %4, metadata !4589, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %17, metadata !4590, metadata !DIExpression()), !dbg !4601
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4603
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4604
  store i8 0, ptr %18, align 1, !dbg !4605, !tbaa !883
  br label %19, !dbg !4606

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4607
  ret i32 %20, !dbg !4608
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!72, !295, !299, !314, !654, !369, !712, !715, !717, !386, !719, !407, !421, !472, !721, !729, !646, !735, !770, !772, !774, !776, !778, !780, !782, !670, !689, !784, !786, !790, !792}
!llvm.ident = !{!794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794}
!llvm.module.flags = !{!795, !796, !797, !798, !799, !800, !801}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/yes.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e168110abf014226da6862ea552ec304")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!313 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !314, file: !315, line: 66, type: !360, isLocal: false, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C11, file: !315, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !316, globals: !317, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!316 = !{!94, !100}
!317 = !{!318, !320, !339, !341, !343, !345, !312, !347, !349, !351, !353, !358}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !315, line: 272, type: !105, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "old_file_name", scope: !322, file: !315, line: 304, type: !70, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "verror_at_line", scope: !315, file: !315, line: 298, type: !323, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !332)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !95, !95, !70, !76, !70, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !327)
!327 = !{!328, !329, !330, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !326, file: !315, baseType: !76, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !326, file: !315, baseType: !76, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !326, file: !315, baseType: !94, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !326, file: !315, baseType: !94, size: 64, offset: 128)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DILocalVariable(name: "status", arg: 1, scope: !322, file: !315, line: 298, type: !95)
!334 = !DILocalVariable(name: "errnum", arg: 2, scope: !322, file: !315, line: 298, type: !95)
!335 = !DILocalVariable(name: "file_name", arg: 3, scope: !322, file: !315, line: 298, type: !70)
!336 = !DILocalVariable(name: "line_number", arg: 4, scope: !322, file: !315, line: 298, type: !76)
!337 = !DILocalVariable(name: "message", arg: 5, scope: !322, file: !315, line: 298, type: !70)
!338 = !DILocalVariable(name: "args", arg: 6, scope: !322, file: !315, line: 298, type: !325)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "old_line_number", scope: !322, file: !315, line: 305, type: !76, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !315, line: 338, type: !19, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !315, line: 346, type: !141, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !315, line: 346, type: !59, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "error_message_count", scope: !314, file: !315, line: 69, type: !76, isLocal: false, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !314, file: !315, line: 295, type: !95, isLocal: false, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !315, line: 208, type: !136, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !315, line: 208, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 21)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !315, line: 214, type: !105, isLocal: true, isDefinition: true)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null}
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !365, file: !366, line: 506, type: !95, isLocal: true, isDefinition: true)
!365 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !366, file: !366, line: 485, type: !367, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !371)
!366 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!367 = !DISubroutineType(types: !368)
!368 = !{!95, !95, !95}
!369 = distinct !DICompileUnit(language: DW_LANG_C11, file: !366, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !370, splitDebugInlining: false, nameTableKind: None)
!370 = !{!363}
!371 = !{!372, !373, !374, !375, !378}
!372 = !DILocalVariable(name: "fd", arg: 1, scope: !365, file: !366, line: 485, type: !95)
!373 = !DILocalVariable(name: "target", arg: 2, scope: !365, file: !366, line: 485, type: !95)
!374 = !DILocalVariable(name: "result", scope: !365, file: !366, line: 487, type: !95)
!375 = !DILocalVariable(name: "flags", scope: !376, file: !366, line: 530, type: !95)
!376 = distinct !DILexicalBlock(scope: !377, file: !366, line: 529, column: 5)
!377 = distinct !DILexicalBlock(scope: !365, file: !366, line: 528, column: 7)
!378 = !DILocalVariable(name: "saved_errno", scope: !379, file: !366, line: 533, type: !95)
!379 = distinct !DILexicalBlock(scope: !380, file: !366, line: 532, column: 9)
!380 = distinct !DILexicalBlock(scope: !376, file: !366, line: 531, column: 11)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !383, line: 60, type: !59, isLocal: true, isDefinition: true)
!383 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "long_options", scope: !386, file: !383, line: 34, type: !395, isLocal: true, isDefinition: true)
!386 = distinct !DICompileUnit(language: DW_LANG_C11, file: !383, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !387, globals: !388, splitDebugInlining: false, nameTableKind: None)
!387 = !{!94}
!388 = !{!381, !389, !391, !393, !384}
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !383, line: 112, type: !34, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !383, line: 36, type: !105, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !383, line: 37, type: !141, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 768, elements: !126)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !398, line: 50, size: 256, elements: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!399 = !{!400, !401, !402, !404}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !398, line: 52, baseType: !70, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !397, file: !398, line: 55, baseType: !95, size: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !397, file: !398, line: 56, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !397, file: !398, line: 57, baseType: !95, size: 32, offset: 192)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "program_name", scope: !407, file: !408, line: 31, type: !70, isLocal: false, isDefinition: true)
!407 = distinct !DICompileUnit(language: DW_LANG_C11, file: !408, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !409, globals: !410, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!409 = !{!94, !101}
!410 = !{!405, !411, !413}
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !408, line: 46, type: !141, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !408, line: 49, type: !19, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "utf07FF", scope: !417, file: !418, line: 46, type: !445, isLocal: true, isDefinition: true)
!417 = distinct !DISubprogram(name: "proper_name_lite", scope: !418, file: !418, line: 38, type: !419, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !423)
!418 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!419 = !DISubroutineType(types: !420)
!420 = !{!70, !70, !70}
!421 = distinct !DICompileUnit(language: DW_LANG_C11, file: !418, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !422, splitDebugInlining: false, nameTableKind: None)
!422 = !{!415}
!423 = !{!424, !425, !426, !427, !432}
!424 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !417, file: !418, line: 38, type: !70)
!425 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !417, file: !418, line: 38, type: !70)
!426 = !DILocalVariable(name: "translation", scope: !417, file: !418, line: 40, type: !70)
!427 = !DILocalVariable(name: "w", scope: !417, file: !418, line: 47, type: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !429, line: 37, baseType: !430)
!429 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !259, line: 57, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !76)
!432 = !DILocalVariable(name: "mbs", scope: !417, file: !418, line: 48, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !434, line: 6, baseType: !435)
!434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !436, line: 21, baseType: !437)
!436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 13, size: 64, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !437, file: !436, line: 15, baseType: !95, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !437, file: !436, line: 20, baseType: !441, size: 32, offset: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !436, line: 16, size: 32, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !441, file: !436, line: 18, baseType: !76, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !441, file: !436, line: 19, baseType: !19, size: 32)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !60)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !448, line: 78, type: !141, isLocal: true, isDefinition: true)
!448 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !448, line: 79, type: !114, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !448, line: 80, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 13)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !448, line: 81, type: !453, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !448, line: 82, type: !281, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !448, line: 83, type: !59, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !448, line: 84, type: !141, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !448, line: 85, type: !136, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !448, line: 86, type: !136, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !448, line: 87, type: !141, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !472, file: !448, line: 76, type: !558, isLocal: false, isDefinition: true)
!472 = distinct !DICompileUnit(language: DW_LANG_C11, file: !448, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !473, retainedTypes: !493, globals: !494, splitDebugInlining: false, nameTableKind: None)
!473 = !{!474, !488, !74}
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !475, line: 42, baseType: !76, size: 32, elements: !476)
!475 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!477 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!478 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!479 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!480 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!481 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!482 = !DIEnumerator(name: "c_quoting_style", value: 5)
!483 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!484 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!485 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!486 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!487 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!488 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !475, line: 254, baseType: !76, size: 32, elements: !489)
!489 = !{!490, !491, !492}
!490 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!491 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!492 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!493 = !{!94, !95, !96, !97}
!494 = !{!446, !449, !451, !456, !458, !460, !462, !464, !466, !468, !470, !495, !499, !509, !511, !516, !518, !520, !522, !524, !547, !554, !556}
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !472, file: !448, line: 92, type: !497, isLocal: false, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 320, elements: !40)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !472, file: !448, line: 1040, type: !501, isLocal: false, isDefinition: true)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !448, line: 56, size: 448, elements: !502)
!502 = !{!503, !504, !505, !507, !508}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !501, file: !448, line: 59, baseType: !474, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !448, line: 62, baseType: !95, size: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !501, file: !448, line: 66, baseType: !506, size: 256, offset: 64)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !142)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !501, file: !448, line: 69, baseType: !70, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !501, file: !448, line: 72, baseType: !70, size: 64, offset: 384)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !472, file: !448, line: 107, type: !501, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "slot0", scope: !472, file: !448, line: 831, type: !513, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 256)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !448, line: 321, type: !59, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !448, line: 357, type: !59, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !448, line: 358, type: !59, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !448, line: 199, type: !136, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "quote", scope: !526, file: !448, line: 228, type: !545, isLocal: true, isDefinition: true)
!526 = distinct !DISubprogram(name: "gettext_quote", scope: !448, file: !448, line: 197, type: !527, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!70, !70, !474}
!529 = !{!530, !531, !532, !533, !534}
!530 = !DILocalVariable(name: "msgid", arg: 1, scope: !526, file: !448, line: 197, type: !70)
!531 = !DILocalVariable(name: "s", arg: 2, scope: !526, file: !448, line: 197, type: !474)
!532 = !DILocalVariable(name: "translation", scope: !526, file: !448, line: 199, type: !70)
!533 = !DILocalVariable(name: "w", scope: !526, file: !448, line: 229, type: !428)
!534 = !DILocalVariable(name: "mbs", scope: !526, file: !448, line: 230, type: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !434, line: 6, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !436, line: 21, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 13, size: 64, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !537, file: !436, line: 15, baseType: !95, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !537, file: !436, line: 20, baseType: !541, size: 32, offset: 32)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !436, line: 16, size: 32, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !541, file: !436, line: 18, baseType: !76, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !541, file: !436, line: 19, baseType: !19, size: 32)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !546)
!546 = !{!61, !21}
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "slotvec", scope: !472, file: !448, line: 834, type: !549, isLocal: true, isDefinition: true)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !448, line: 823, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !550, file: !448, line: 825, baseType: !97, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !550, file: !448, line: 826, baseType: !101, size: 64, offset: 64)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "nslots", scope: !472, file: !448, line: 832, type: !95, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "slotvec0", scope: !472, file: !448, line: 833, type: !550, isLocal: true, isDefinition: true)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 704, elements: !560)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!560 = !{!561}
!561 = !DISubrange(count: 11)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !564, line: 67, type: !209, isLocal: true, isDefinition: true)
!564 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !564, line: 69, type: !136, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !564, line: 83, type: !136, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !564, line: 83, type: !19, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !564, line: 85, type: !59, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !564, line: 88, type: !575, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 171)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !564, line: 88, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 34)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !564, line: 105, type: !54, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !564, line: 109, type: !587, isLocal: true, isDefinition: true)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 23)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !564, line: 113, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 28)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !564, line: 120, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 32)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !564, line: 127, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 36)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !564, line: 134, type: !9, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !564, line: 142, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 44)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !564, line: 150, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 48)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !564, line: 159, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 52)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !564, line: 170, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 60)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !564, line: 248, type: !281, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !564, line: 248, type: !185, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !564, line: 254, type: !281, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !564, line: 254, type: !49, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !564, line: 254, type: !9, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !564, line: 259, type: !3, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !564, line: 259, type: !641, isLocal: true, isDefinition: true)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 29)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !646, file: !647, line: 26, type: !649, isLocal: false, isDefinition: true)
!646 = distinct !DICompileUnit(language: DW_LANG_C11, file: !647, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !648, splitDebugInlining: false, nameTableKind: None)
!647 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!648 = !{!644}
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 47)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(name: "exit_failure", scope: !654, file: !655, line: 24, type: !657, isLocal: false, isDefinition: true)
!654 = distinct !DICompileUnit(language: DW_LANG_C11, file: !655, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !656, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!656 = !{!652}
!657 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !660, line: 34, type: !125, isLocal: true, isDefinition: true)
!660 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !660, line: 34, type: !136, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !660, line: 34, type: !158, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !667, line: 108, type: !34, isLocal: true, isDefinition: true)
!667 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(name: "internal_state", scope: !670, file: !667, line: 97, type: !673, isLocal: true, isDefinition: true)
!670 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !671, globals: !672, splitDebugInlining: false, nameTableKind: None)
!671 = !{!94, !97, !100}
!672 = !{!665, !668}
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !434, line: 6, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !436, line: 21, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 13, size: 64, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !675, file: !436, line: 15, baseType: !95, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !675, file: !436, line: 20, baseType: !679, size: 32, offset: 32)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !436, line: 16, size: 32, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !679, file: !436, line: 18, baseType: !76, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !679, file: !436, line: 19, baseType: !19, size: 32)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "have_pipe2_really", scope: !685, file: !686, line: 54, type: !95, isLocal: true, isDefinition: true)
!685 = distinct !DISubprogram(name: "rpl_pipe2", scope: !686, file: !686, line: 39, type: !687, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !691)
!686 = !DIFile(filename: "lib/pipe2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b2941420442dd7afd7b1a45758b7ccee")
!687 = !DISubroutineType(types: !688)
!688 = !{!95, !403, !95}
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-pipe2.o -MD -MP -MF lib/.deps/libcoreutils_a-pipe2.Tpo -c lib/pipe2.c -o lib/.libcoreutils_a-pipe2.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !690, splitDebugInlining: false, nameTableKind: None)
!690 = !{!683}
!691 = !{!692, !693, !694, !696, !700, !703, !706, !707}
!692 = !DILocalVariable(name: "fd", arg: 1, scope: !685, file: !686, line: 39, type: !403)
!693 = !DILocalVariable(name: "flags", arg: 2, scope: !685, file: !686, line: 39, type: !95)
!694 = !DILocalVariable(name: "tmp", scope: !685, file: !686, line: 44, type: !695)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !60)
!696 = !DILocalVariable(name: "result", scope: !697, file: !686, line: 57, type: !95)
!697 = distinct !DILexicalBlock(scope: !698, file: !686, line: 56, column: 7)
!698 = distinct !DILexicalBlock(scope: !699, file: !686, line: 55, column: 9)
!699 = distinct !DILexicalBlock(scope: !685, file: !686, line: 52, column: 3)
!700 = !DILocalVariable(name: "fcntl_flags", scope: !701, file: !686, line: 117, type: !95)
!701 = distinct !DILexicalBlock(scope: !702, file: !686, line: 116, column: 5)
!702 = distinct !DILexicalBlock(scope: !685, file: !686, line: 115, column: 7)
!703 = !DILocalVariable(name: "fcntl_flags", scope: !704, file: !686, line: 128, type: !95)
!704 = distinct !DILexicalBlock(scope: !705, file: !686, line: 127, column: 5)
!705 = distinct !DILexicalBlock(scope: !685, file: !686, line: 126, column: 7)
!706 = !DILabel(scope: !685, name: "fail", file: !686, line: 155)
!707 = !DILocalVariable(name: "saved_errno", scope: !708, file: !686, line: 157, type: !95)
!708 = distinct !DILexicalBlock(scope: !685, file: !686, line: 156, column: 3)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !711, line: 35, type: !114, isLocal: true, isDefinition: true)
!711 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-full-write.o -MD -MP -MF lib/.deps/libcoreutils_a-full-write.Tpo -c lib/full-write.c -o lib/.libcoreutils_a-full-write.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!714 = !{!70}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-isapipe.o -MD -MP -MF lib/.deps/libcoreutils_a-isapipe.Tpo -c lib/isapipe.c -o lib/.libcoreutils_a-isapipe.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-pipe2-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-pipe2-safer.Tpo -c lib/pipe2-safer.c -o lib/.libcoreutils_a-pipe2-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/pipe2-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5a0d0feff89b6f036d8f7a6e8480abb")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-safe-write.o -MD -MP -MF lib/.deps/libcoreutils_a-safe-write.Tpo -c lib/safe-write.c -o lib/.libcoreutils_a-safe-write.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !723, retainedTypes: !728, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!723 = !{!724}
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !725, line: 36, baseType: !76, size: 32, elements: !726)
!725 = !DIFile(filename: "lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!726 = !{!727}
!727 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!728 = !{!97}
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !564, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !387, globals: !734, splitDebugInlining: false, nameTableKind: None)
!730 = !{!731}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !564, line: 40, baseType: !76, size: 32, elements: !732)
!732 = !{!733}
!733 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!734 = !{!562, !565, !567, !569, !571, !573, !578, !583, !585, !590, !595, !600, !605, !607, !612, !617, !622, !627, !629, !631, !633, !635, !637, !639}
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !737, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!737 = !{!738, !750}
!738 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !739, file: !736, line: 188, baseType: !76, size: 32, elements: !748)
!739 = distinct !DISubprogram(name: "x2nrealloc", scope: !736, file: !736, line: 176, type: !740, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !743)
!740 = !DISubroutineType(types: !741)
!741 = !{!94, !94, !742, !97}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!743 = !{!744, !745, !746, !747}
!744 = !DILocalVariable(name: "p", arg: 1, scope: !739, file: !736, line: 176, type: !94)
!745 = !DILocalVariable(name: "pn", arg: 2, scope: !739, file: !736, line: 176, type: !742)
!746 = !DILocalVariable(name: "s", arg: 3, scope: !739, file: !736, line: 176, type: !97)
!747 = !DILocalVariable(name: "n", scope: !739, file: !736, line: 178, type: !97)
!748 = !{!749}
!749 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!750 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !751, file: !736, line: 228, baseType: !76, size: 32, elements: !748)
!751 = distinct !DISubprogram(name: "xpalloc", scope: !736, file: !736, line: 223, type: !752, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !759)
!752 = !DISubroutineType(types: !753)
!753 = !{!94, !94, !754, !755, !757, !755}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !756, line: 130, baseType: !757)
!756 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !758, line: 18, baseType: !260)
!758 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768}
!760 = !DILocalVariable(name: "pa", arg: 1, scope: !751, file: !736, line: 223, type: !94)
!761 = !DILocalVariable(name: "pn", arg: 2, scope: !751, file: !736, line: 223, type: !754)
!762 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !751, file: !736, line: 223, type: !755)
!763 = !DILocalVariable(name: "n_max", arg: 4, scope: !751, file: !736, line: 223, type: !757)
!764 = !DILocalVariable(name: "s", arg: 5, scope: !751, file: !736, line: 223, type: !755)
!765 = !DILocalVariable(name: "n0", scope: !751, file: !736, line: 230, type: !755)
!766 = !DILocalVariable(name: "n", scope: !751, file: !736, line: 237, type: !755)
!767 = !DILocalVariable(name: "nbytes", scope: !751, file: !736, line: 248, type: !755)
!768 = !DILocalVariable(name: "adjusted_nbytes", scope: !751, file: !736, line: 252, type: !755)
!769 = !{!101, !94}
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !660, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !771, splitDebugInlining: false, nameTableKind: None)
!771 = !{!658, !661, !663}
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer-flag.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer-flag.Tpo -c lib/fd-safer-flag.c -o lib/.libcoreutils_a-fd-safer-flag.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer-flag.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer-flag.Tpo -c lib/dup-safer-flag.c -o lib/.libcoreutils_a-dup-safer-flag.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !387, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !387, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !387, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !787, splitDebugInlining: false, nameTableKind: None)
!787 = !{!788, !709}
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !711, line: 35, type: !59, isLocal: true, isDefinition: true)
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!791 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !387, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!794 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!795 = !{i32 7, !"Dwarf Version", i32 5}
!796 = !{i32 2, !"Debug Info Version", i32 3}
!797 = !{i32 1, !"wchar_size", i32 4}
!798 = !{i32 8, !"PIC Level", i32 2}
!799 = !{i32 7, !"PIE Level", i32 2}
!800 = !{i32 7, !"uwtable", i32 2}
!801 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!802 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 38, type: !803, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !95}
!805 = !{!806}
!806 = !DILocalVariable(name: "status", arg: 1, scope: !802, file: !2, line: 38, type: !95)
!807 = !DILocation(line: 0, scope: !802)
!808 = !DILocation(line: 40, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !2, line: 40, column: 7)
!810 = !DILocation(line: 40, column: 7, scope: !802)
!811 = !DILocation(line: 41, column: 5, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !2, line: 41, column: 5)
!813 = !{!814, !814, i64 0}
!814 = !{!"any pointer", !815, i64 0}
!815 = !{!"omnipotent char", !816, i64 0}
!816 = !{!"Simple C/C++ TBAA"}
!817 = !DILocation(line: 44, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !809, file: !2, line: 43, column: 5)
!819 = !DILocation(line: 50, column: 7, scope: !818)
!820 = !DILocation(line: 54, column: 7, scope: !818)
!821 = !DILocation(line: 55, column: 7, scope: !818)
!822 = !DILocalVariable(name: "program", arg: 1, scope: !823, file: !67, line: 836, type: !70)
!823 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !824, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !70}
!826 = !{!822, !827, !834, !835, !837, !838}
!827 = !DILocalVariable(name: "infomap", scope: !823, file: !67, line: 838, type: !828)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 896, elements: !137)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !823, file: !67, line: 838, size: 128, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !830, file: !67, line: 838, baseType: !70, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !830, file: !67, line: 838, baseType: !70, size: 64, offset: 64)
!834 = !DILocalVariable(name: "node", scope: !823, file: !67, line: 848, type: !70)
!835 = !DILocalVariable(name: "map_prog", scope: !823, file: !67, line: 849, type: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!837 = !DILocalVariable(name: "lc_messages", scope: !823, file: !67, line: 861, type: !70)
!838 = !DILocalVariable(name: "url_program", scope: !823, file: !67, line: 874, type: !70)
!839 = !DILocation(line: 0, scope: !823, inlinedAt: !840)
!840 = distinct !DILocation(line: 56, column: 7, scope: !818)
!841 = !{}
!842 = !DILocation(line: 857, column: 3, scope: !823, inlinedAt: !840)
!843 = !DILocation(line: 861, column: 29, scope: !823, inlinedAt: !840)
!844 = !DILocation(line: 862, column: 7, scope: !845, inlinedAt: !840)
!845 = distinct !DILexicalBlock(scope: !823, file: !67, line: 862, column: 7)
!846 = !DILocation(line: 862, column: 19, scope: !845, inlinedAt: !840)
!847 = !DILocation(line: 862, column: 22, scope: !845, inlinedAt: !840)
!848 = !DILocation(line: 862, column: 7, scope: !823, inlinedAt: !840)
!849 = !DILocation(line: 868, column: 7, scope: !850, inlinedAt: !840)
!850 = distinct !DILexicalBlock(scope: !845, file: !67, line: 863, column: 5)
!851 = !DILocation(line: 870, column: 5, scope: !850, inlinedAt: !840)
!852 = !DILocation(line: 875, column: 3, scope: !823, inlinedAt: !840)
!853 = !DILocation(line: 877, column: 3, scope: !823, inlinedAt: !840)
!854 = !DILocation(line: 58, column: 3, scope: !802)
!855 = !DISubprogram(name: "dcgettext", scope: !856, file: !856, line: 51, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!857 = !DISubroutineType(types: !858)
!858 = !{!101, !70, !70, !95}
!859 = !DISubprogram(name: "__fprintf_chk", scope: !860, file: !860, line: 93, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!860 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!861 = !DISubroutineType(types: !862)
!862 = !{!95, !863, !95, !864, null}
!863 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!865 = !DISubprogram(name: "__printf_chk", scope: !860, file: !860, line: 95, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DISubroutineType(types: !867)
!867 = !{!95, !95, !864, null}
!868 = !DISubprogram(name: "fputs_unlocked", scope: !869, file: !869, line: 691, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!870 = !DISubroutineType(types: !871)
!871 = !{!95, !864, !863}
!872 = !DILocation(line: 0, scope: !66)
!873 = !DILocation(line: 581, column: 7, scope: !217)
!874 = !{!875, !875, i64 0}
!875 = !{!"int", !815, i64 0}
!876 = !DILocation(line: 581, column: 19, scope: !217)
!877 = !DILocation(line: 581, column: 7, scope: !66)
!878 = !DILocation(line: 585, column: 26, scope: !216)
!879 = !DILocation(line: 0, scope: !216)
!880 = !DILocation(line: 586, column: 23, scope: !216)
!881 = !DILocation(line: 586, column: 28, scope: !216)
!882 = !DILocation(line: 586, column: 32, scope: !216)
!883 = !{!815, !815, i64 0}
!884 = !DILocation(line: 586, column: 38, scope: !216)
!885 = !DILocalVariable(name: "__s1", arg: 1, scope: !886, file: !887, line: 1359, type: !70)
!886 = distinct !DISubprogram(name: "streq", scope: !887, file: !887, line: 1359, type: !888, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !890)
!887 = !DIFile(filename: "./lib/string.h", directory: "/src")
!888 = !DISubroutineType(types: !889)
!889 = !{!219, !70, !70}
!890 = !{!885, !891}
!891 = !DILocalVariable(name: "__s2", arg: 2, scope: !886, file: !887, line: 1359, type: !70)
!892 = !DILocation(line: 0, scope: !886, inlinedAt: !893)
!893 = distinct !DILocation(line: 586, column: 41, scope: !216)
!894 = !DILocation(line: 1361, column: 11, scope: !886, inlinedAt: !893)
!895 = !DILocation(line: 1361, column: 10, scope: !886, inlinedAt: !893)
!896 = !DILocation(line: 586, column: 19, scope: !216)
!897 = !DILocation(line: 587, column: 5, scope: !216)
!898 = !DILocation(line: 588, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !66, file: !67, line: 588, column: 7)
!900 = !DILocation(line: 588, column: 7, scope: !66)
!901 = !DILocation(line: 590, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !67, line: 589, column: 5)
!903 = !DILocation(line: 591, column: 7, scope: !902)
!904 = !DILocation(line: 595, column: 37, scope: !66)
!905 = !DILocation(line: 595, column: 35, scope: !66)
!906 = !DILocation(line: 596, column: 29, scope: !66)
!907 = !DILocation(line: 597, column: 8, scope: !225)
!908 = !DILocation(line: 597, column: 7, scope: !66)
!909 = !DILocation(line: 604, column: 24, scope: !224)
!910 = !DILocation(line: 604, column: 12, scope: !225)
!911 = !DILocation(line: 0, scope: !223)
!912 = !DILocation(line: 610, column: 16, scope: !223)
!913 = !DILocation(line: 610, column: 7, scope: !223)
!914 = !DILocation(line: 611, column: 21, scope: !223)
!915 = !{!916, !916, i64 0}
!916 = !{!"short", !815, i64 0}
!917 = !DILocation(line: 611, column: 19, scope: !223)
!918 = !DILocation(line: 611, column: 16, scope: !223)
!919 = !DILocation(line: 610, column: 30, scope: !223)
!920 = distinct !{!920, !913, !914, !921}
!921 = !{!"llvm.loop.mustprogress"}
!922 = !DILocation(line: 612, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !223, file: !67, line: 612, column: 11)
!924 = !DILocation(line: 612, column: 11, scope: !223)
!925 = !DILocation(line: 620, column: 23, scope: !66)
!926 = !DILocation(line: 625, column: 39, scope: !66)
!927 = !DILocation(line: 626, column: 3, scope: !66)
!928 = !DILocation(line: 626, column: 10, scope: !66)
!929 = !DILocation(line: 626, column: 21, scope: !66)
!930 = !DILocation(line: 628, column: 44, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !67, line: 628, column: 11)
!932 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!933 = !DILocation(line: 628, column: 32, scope: !931)
!934 = !DILocation(line: 628, column: 49, scope: !931)
!935 = !DILocation(line: 628, column: 11, scope: !932)
!936 = !DILocation(line: 630, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !67, line: 630, column: 11)
!938 = !DILocation(line: 630, column: 11, scope: !932)
!939 = !DILocation(line: 632, column: 26, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !67, line: 632, column: 15)
!941 = distinct !DILexicalBlock(scope: !937, file: !67, line: 631, column: 9)
!942 = !DILocation(line: 632, column: 34, scope: !940)
!943 = !DILocation(line: 632, column: 37, scope: !940)
!944 = !DILocation(line: 632, column: 15, scope: !941)
!945 = !DILocation(line: 636, column: 16, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !67, line: 636, column: 15)
!947 = !DILocation(line: 636, column: 29, scope: !946)
!948 = !DILocation(line: 640, column: 16, scope: !932)
!949 = distinct !{!949, !927, !950, !921}
!950 = !DILocation(line: 641, column: 5, scope: !66)
!951 = !DILocation(line: 644, column: 3, scope: !66)
!952 = !DILocation(line: 0, scope: !886, inlinedAt: !953)
!953 = distinct !DILocation(line: 648, column: 31, scope: !66)
!954 = !DILocation(line: 0, scope: !886, inlinedAt: !955)
!955 = distinct !DILocation(line: 649, column: 31, scope: !66)
!956 = !DILocation(line: 0, scope: !886, inlinedAt: !957)
!957 = distinct !DILocation(line: 650, column: 31, scope: !66)
!958 = !DILocation(line: 0, scope: !886, inlinedAt: !959)
!959 = distinct !DILocation(line: 651, column: 31, scope: !66)
!960 = !DILocation(line: 0, scope: !886, inlinedAt: !961)
!961 = distinct !DILocation(line: 652, column: 31, scope: !66)
!962 = !DILocation(line: 0, scope: !886, inlinedAt: !963)
!963 = distinct !DILocation(line: 653, column: 31, scope: !66)
!964 = !DILocation(line: 0, scope: !886, inlinedAt: !965)
!965 = distinct !DILocation(line: 654, column: 31, scope: !66)
!966 = !DILocation(line: 0, scope: !886, inlinedAt: !967)
!967 = distinct !DILocation(line: 655, column: 31, scope: !66)
!968 = !DILocation(line: 0, scope: !886, inlinedAt: !969)
!969 = distinct !DILocation(line: 656, column: 31, scope: !66)
!970 = !DILocation(line: 0, scope: !886, inlinedAt: !971)
!971 = distinct !DILocation(line: 657, column: 31, scope: !66)
!972 = !DILocation(line: 663, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!974 = !DILocation(line: 664, column: 7, scope: !973)
!975 = !DILocation(line: 664, column: 10, scope: !973)
!976 = !DILocation(line: 663, column: 7, scope: !66)
!977 = !DILocation(line: 669, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !67, line: 665, column: 5)
!979 = !DILocation(line: 671, column: 5, scope: !978)
!980 = !DILocation(line: 676, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !973, file: !67, line: 673, column: 5)
!982 = !DILocation(line: 679, column: 3, scope: !66)
!983 = !DILocation(line: 683, column: 3, scope: !66)
!984 = !DILocation(line: 686, column: 3, scope: !66)
!985 = !DILocation(line: 688, column: 3, scope: !66)
!986 = !DILocation(line: 691, column: 3, scope: !66)
!987 = !DILocation(line: 695, column: 3, scope: !66)
!988 = !DILocation(line: 696, column: 1, scope: !66)
!989 = !DISubprogram(name: "setlocale", scope: !990, file: !990, line: 122, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!991 = !DISubroutineType(types: !992)
!992 = !{!101, !95, !70}
!993 = !DISubprogram(name: "strncmp", scope: !994, file: !994, line: 159, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!995 = !DISubroutineType(types: !996)
!996 = !{!95, !70, !70, !97}
!997 = !DISubprogram(name: "exit", scope: !998, file: !998, line: 624, type: !803, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!998 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!999 = !DISubprogram(name: "getenv", scope: !998, file: !998, line: 641, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!101, !70}
!1002 = !DISubprogram(name: "strcmp", scope: !994, file: !994, line: 156, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!95, !70, !70}
!1005 = !DISubprogram(name: "strspn", scope: !994, file: !994, line: 297, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!99, !70, !70}
!1008 = !DISubprogram(name: "strchr", scope: !994, file: !994, line: 246, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!101, !70, !95}
!1011 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1017 = !DISubprogram(name: "strcspn", scope: !994, file: !994, line: 293, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DISubprogram(name: "fwrite_unlocked", scope: !869, file: !869, line: 704, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!97, !1021, !97, !97, !863}
!1021 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1024 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 201, type: !1025, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1028)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!95, !95, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1038, !1039, !1040, !1042}
!1029 = !DILocalVariable(name: "argc", arg: 1, scope: !1024, file: !2, line: 201, type: !95)
!1030 = !DILocalVariable(name: "argv", arg: 2, scope: !1024, file: !2, line: 201, type: !1027)
!1031 = !DILocalVariable(name: "operands", scope: !1024, file: !2, line: 215, type: !1027)
!1032 = !DILocalVariable(name: "operand_lim", scope: !1024, file: !2, line: 216, type: !1027)
!1033 = !DILocalVariable(name: "bufalloc", scope: !1024, file: !2, line: 222, type: !97)
!1034 = !DILocalVariable(name: "reuse_operand_strings", scope: !1024, file: !2, line: 223, type: !219)
!1035 = !DILocalVariable(name: "operandp", scope: !1024, file: !2, line: 224, type: !1027)
!1036 = !DILocalVariable(name: "operand_len", scope: !1037, file: !2, line: 227, type: !97)
!1037 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 226, column: 5)
!1038 = !DILocalVariable(name: "buf", scope: !1024, file: !2, line: 249, type: !101)
!1039 = !DILocalVariable(name: "bufused", scope: !1024, file: !2, line: 250, type: !97)
!1040 = !DILocalVariable(name: "operand_len", scope: !1041, file: !2, line: 254, type: !97)
!1041 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 253, column: 5)
!1042 = !DILocalVariable(name: "copysize", scope: !1024, file: !2, line: 263, type: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1044, line: 130, baseType: !757)
!1044 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1045 = distinct !DIAssignID()
!1046 = distinct !DIAssignID()
!1047 = !DILocation(line: 0, scope: !1024)
!1048 = !DILocation(line: 204, column: 21, scope: !1024)
!1049 = !DILocation(line: 204, column: 3, scope: !1024)
!1050 = !DILocation(line: 205, column: 3, scope: !1024)
!1051 = !DILocation(line: 206, column: 3, scope: !1024)
!1052 = !DILocation(line: 207, column: 3, scope: !1024)
!1053 = !DILocation(line: 209, column: 3, scope: !1024)
!1054 = !DILocation(line: 212, column: 36, scope: !1024)
!1055 = !DILocation(line: 212, column: 58, scope: !1024)
!1056 = !DILocation(line: 211, column: 3, scope: !1024)
!1057 = !DILocation(line: 215, column: 28, scope: !1024)
!1058 = !DILocation(line: 215, column: 26, scope: !1024)
!1059 = !DILocation(line: 216, column: 29, scope: !1024)
!1060 = !DILocation(line: 217, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 217, column: 7)
!1062 = !DILocation(line: 217, column: 7, scope: !1024)
!1063 = !DILocation(line: 218, column: 17, scope: !1061)
!1064 = !DILocation(line: 218, column: 20, scope: !1061)
!1065 = !DILocation(line: 218, column: 5, scope: !1061)
!1066 = !DILocation(line: 227, column: 36, scope: !1037)
!1067 = !DILocation(line: 227, column: 28, scope: !1037)
!1068 = !DILocation(line: 0, scope: !1037)
!1069 = !DILocation(line: 228, column: 16, scope: !1037)
!1070 = !DILocation(line: 229, column: 20, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 229, column: 11)
!1072 = !DILocation(line: 229, column: 24, scope: !1071)
!1073 = !DILocation(line: 230, column: 11, scope: !1071)
!1074 = !DILocation(line: 230, column: 24, scope: !1071)
!1075 = !DILocation(line: 230, column: 38, scope: !1071)
!1076 = !DILocation(line: 230, column: 45, scope: !1071)
!1077 = !DILocation(line: 230, column: 42, scope: !1071)
!1078 = !DILocation(line: 229, column: 11, scope: !1037)
!1079 = !DILocation(line: 228, column: 31, scope: !1037)
!1080 = !DILocation(line: 236, column: 16, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 236, column: 7)
!1082 = !DILocation(line: 249, column: 15, scope: !1024)
!1083 = !DILocation(line: 236, column: 7, scope: !1024)
!1084 = !DILocation(line: 272, column: 37, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 270, column: 5)
!1086 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 268, column: 7)
!1087 = !DILocation(line: 249, column: 51, scope: !1024)
!1088 = !DILocation(line: 252, column: 3, scope: !1024)
!1089 = !DILocation(line: 254, column: 36, scope: !1041)
!1090 = !DILocation(line: 254, column: 28, scope: !1041)
!1091 = !DILocation(line: 0, scope: !1041)
!1092 = !DILocation(line: 255, column: 11, scope: !1041)
!1093 = !DILocation(line: 256, column: 21, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 255, column: 11)
!1095 = !DILocalVariable(name: "__dest", arg: 1, scope: !1096, file: !1097, line: 26, type: !1100)
!1096 = distinct !DISubprogram(name: "memcpy", scope: !1097, file: !1097, line: 26, type: !1098, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1101)
!1097 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!94, !1100, !1021, !97}
!1100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!1101 = !{!1095, !1102, !1103}
!1102 = !DILocalVariable(name: "__src", arg: 2, scope: !1096, file: !1097, line: 26, type: !1021)
!1103 = !DILocalVariable(name: "__len", arg: 3, scope: !1096, file: !1097, line: 26, type: !97)
!1104 = !DILocation(line: 0, scope: !1096, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 256, column: 9, scope: !1094)
!1106 = !DILocation(line: 29, column: 10, scope: !1096, inlinedAt: !1105)
!1107 = !DILocation(line: 256, column: 9, scope: !1094)
!1108 = !DILocation(line: 257, column: 15, scope: !1041)
!1109 = !DILocation(line: 258, column: 18, scope: !1041)
!1110 = !DILocation(line: 258, column: 7, scope: !1041)
!1111 = !DILocation(line: 258, column: 22, scope: !1041)
!1112 = !DILocation(line: 260, column: 10, scope: !1024)
!1113 = !DILocation(line: 260, column: 21, scope: !1024)
!1114 = !DILocation(line: 259, column: 5, scope: !1041)
!1115 = distinct !{!1115, !1088, !1116, !921}
!1116 = !DILocation(line: 260, column: 34, scope: !1024)
!1117 = !DILocation(line: 261, column: 20, scope: !1024)
!1118 = !DILocation(line: 268, column: 7, scope: !1086)
!1119 = !DILocation(line: 268, column: 49, scope: !1086)
!1120 = !DILocation(line: 269, column: 7, scope: !1086)
!1121 = !DILocalVariable(name: "pipefd", scope: !1122, file: !2, line: 123, type: !695)
!1122 = distinct !DISubprogram(name: "splice_write", scope: !2, file: !2, line: 113, type: !1123, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!219, !70, !1043}
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1121, !1131, !1132, !1133, !1134, !1143, !1145, !1148, !1151, !1153, !1154}
!1126 = !DILocalVariable(name: "buf", arg: 1, scope: !1122, file: !2, line: 113, type: !70)
!1127 = !DILocalVariable(name: "copysize", arg: 2, scope: !1122, file: !2, line: 113, type: !1043)
!1128 = !DILocalVariable(name: "output_started", scope: !1122, file: !2, line: 115, type: !219)
!1129 = !DILocalVariable(name: "page_size", scope: !1122, file: !2, line: 117, type: !1043)
!1130 = !DILocalVariable(name: "stdout_is_pipe", scope: !1122, file: !2, line: 119, type: !219)
!1131 = !DILocalVariable(name: "splice_bufsize", scope: !1122, file: !2, line: 124, type: !1043)
!1132 = !DILocalVariable(name: "splice_buf", scope: !1122, file: !2, line: 125, type: !101)
!1133 = !DILocalVariable(name: "vmsplice_fd", scope: !1122, file: !2, line: 149, type: !95)
!1134 = !DILocalVariable(name: "iov", scope: !1135, file: !2, line: 153, type: !1138)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 152, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 151, column: 3)
!1137 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 151, column: 3)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1139, line: 26, size: 128, elements: !1140)
!1139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1138, file: !1139, line: 28, baseType: !94, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1138, file: !1139, line: 29, baseType: !97, size: 64, offset: 64)
!1143 = !DILocalVariable(name: "flags", scope: !1144, file: !2, line: 161, type: !76)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 157, column: 9)
!1145 = !DILocalVariable(name: "n", scope: !1144, file: !2, line: 162, type: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !869, line: 77, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !259, line: 194, baseType: !260)
!1148 = !DILocalVariable(name: "remaining", scope: !1149, file: !2, line: 174, type: !1043)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 173, column: 9)
!1150 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 172, column: 11)
!1151 = !DILocalVariable(name: "s", scope: !1152, file: !2, line: 177, type: !1146)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 176, column: 13)
!1153 = !DILabel(scope: !1122, name: "done", file: !2, line: 187)
!1154 = !DILocalVariable(name: "saved_errno", scope: !1155, file: !2, line: 190, type: !95)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 189, column: 5)
!1156 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 188, column: 7)
!1157 = !DILocation(line: 0, scope: !1122, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 269, column: 10, scope: !1086)
!1159 = !DILocation(line: 0, scope: !1135, inlinedAt: !1158)
!1160 = !DILocation(line: 117, column: 21, scope: !1122, inlinedAt: !1158)
!1161 = !DILocation(line: 119, column: 25, scope: !1122, inlinedAt: !1158)
!1162 = !DILocation(line: 119, column: 49, scope: !1122, inlinedAt: !1158)
!1163 = !DILocation(line: 123, column: 3, scope: !1122, inlinedAt: !1158)
!1164 = !DILocation(line: 123, column: 7, scope: !1122, inlinedAt: !1158)
!1165 = distinct !DIAssignID()
!1166 = !DILocation(line: 127, column: 7, scope: !1122, inlinedAt: !1158)
!1167 = !DILocalVariable(name: "fd", arg: 1, scope: !1168, file: !2, line: 89, type: !95)
!1168 = distinct !DISubprogram(name: "pipe_splice_size", scope: !2, file: !2, line: 89, type: !1169, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1043, !95, !1043}
!1171 = !{!1167, !1172, !1173, !1174}
!1172 = !DILocalVariable(name: "copysize", arg: 2, scope: !1168, file: !2, line: 89, type: !1043)
!1173 = !DILocalVariable(name: "pipe_cap", scope: !1168, file: !2, line: 91, type: !95)
!1174 = !DILocalVariable(name: "buf_cap", scope: !1168, file: !2, line: 99, type: !97)
!1175 = !DILocation(line: 0, scope: !1168, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 128, column: 22, scope: !1177, inlinedAt: !1158)
!1177 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 127, column: 7)
!1178 = !DILocation(line: 93, column: 19, scope: !1179, inlinedAt: !1176)
!1179 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 93, column: 7)
!1180 = !DILocation(line: 93, column: 63, scope: !1179, inlinedAt: !1176)
!1181 = !DILocation(line: 93, column: 7, scope: !1168, inlinedAt: !1176)
!1182 = !DILocation(line: 94, column: 16, scope: !1179, inlinedAt: !1176)
!1183 = !DILocation(line: 94, column: 5, scope: !1179, inlinedAt: !1176)
!1184 = !DILocation(line: 131, column: 11, scope: !1185, inlinedAt: !1158)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 131, column: 11)
!1186 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 130, column: 5)
!1187 = !DILocation(line: 131, column: 29, scope: !1185, inlinedAt: !1158)
!1188 = !DILocation(line: 131, column: 11, scope: !1186, inlinedAt: !1158)
!1189 = !DILocation(line: 198, column: 1, scope: !1122, inlinedAt: !1158)
!1190 = !DILocation(line: 268, column: 7, scope: !1024)
!1191 = !DILocation(line: 133, column: 42, scope: !1186, inlinedAt: !1158)
!1192 = !DILocation(line: 0, scope: !1168, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 133, column: 24, scope: !1186, inlinedAt: !1158)
!1194 = !DILocation(line: 93, column: 19, scope: !1179, inlinedAt: !1193)
!1195 = !DILocation(line: 93, column: 63, scope: !1179, inlinedAt: !1193)
!1196 = !DILocation(line: 93, column: 7, scope: !1168, inlinedAt: !1193)
!1197 = !DILocation(line: 94, column: 16, scope: !1179, inlinedAt: !1193)
!1198 = !DILocation(line: 94, column: 5, scope: !1179, inlinedAt: !1193)
!1199 = !DILocation(line: 96, column: 16, scope: !1200, inlinedAt: !1201)
!1200 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 96, column: 7)
!1201 = distinct !DILocation(line: 0, scope: !1177, inlinedAt: !1158)
!1202 = !DILocation(line: 99, column: 29, scope: !1168, inlinedAt: !1201)
!1203 = !DILocation(line: 99, column: 20, scope: !1168, inlinedAt: !1201)
!1204 = !DILocation(line: 100, column: 29, scope: !1168, inlinedAt: !1201)
!1205 = !DILocation(line: 136, column: 22, scope: !1206, inlinedAt: !1158)
!1206 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 136, column: 7)
!1207 = !DILocation(line: 136, column: 7, scope: !1122, inlinedAt: !1158)
!1208 = !DILocalVariable(name: "alignment", arg: 1, scope: !1209, file: !1210, line: 90, type: !1043)
!1209 = distinct !DISubprogram(name: "alignalloc", scope: !1210, file: !1210, line: 90, type: !1211, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1213)
!1210 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!94, !1043, !1043}
!1213 = !{!1208, !1214}
!1214 = !DILocalVariable(name: "size", arg: 2, scope: !1209, file: !1210, line: 90, type: !1043)
!1215 = !DILocation(line: 0, scope: !1209, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 141, column: 23, scope: !1217, inlinedAt: !1158)
!1217 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 141, column: 7)
!1218 = !DILocation(line: 98, column: 10, scope: !1209, inlinedAt: !1216)
!1219 = !DILocation(line: 141, column: 21, scope: !1217, inlinedAt: !1158)
!1220 = !DILocation(line: 141, column: 7, scope: !1122, inlinedAt: !1158)
!1221 = !DILocalVariable(name: "dest", arg: 1, scope: !1222, file: !2, line: 65, type: !101)
!1222 = distinct !DISubprogram(name: "repeat_pattern", scope: !2, file: !2, line: 65, type: !1223, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !101, !70, !1043, !1043}
!1225 = !{!1221, !1226, !1227, !1228, !1229, !1231}
!1226 = !DILocalVariable(name: "src", arg: 2, scope: !1222, file: !2, line: 65, type: !70)
!1227 = !DILocalVariable(name: "srcsize", arg: 3, scope: !1222, file: !2, line: 65, type: !1043)
!1228 = !DILocalVariable(name: "bufsize", arg: 4, scope: !1222, file: !2, line: 65, type: !1043)
!1229 = !DILocalVariable(name: "filled", scope: !1230, file: !2, line: 69, type: !1043)
!1230 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 69, column: 3)
!1231 = !DILocalVariable(name: "chunk", scope: !1232, file: !2, line: 71, type: !1043)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 70, column: 5)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 69, column: 3)
!1234 = !DILocation(line: 0, scope: !1222, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 144, column: 3, scope: !1122, inlinedAt: !1158)
!1236 = !DILocation(line: 67, column: 12, scope: !1237, inlinedAt: !1235)
!1237 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 67, column: 7)
!1238 = !DILocation(line: 67, column: 7, scope: !1222, inlinedAt: !1235)
!1239 = !DILocation(line: 0, scope: !1096, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 68, column: 5, scope: !1237, inlinedAt: !1235)
!1241 = !DILocation(line: 29, column: 10, scope: !1096, inlinedAt: !1240)
!1242 = !DILocation(line: 68, column: 5, scope: !1237, inlinedAt: !1235)
!1243 = !DILocation(line: 0, scope: !1230, inlinedAt: !1235)
!1244 = !DILocation(line: 69, column: 39, scope: !1233, inlinedAt: !1235)
!1245 = !DILocation(line: 69, column: 3, scope: !1230, inlinedAt: !1235)
!1246 = !DILocation(line: 71, column: 21, scope: !1232, inlinedAt: !1235)
!1247 = !DILocation(line: 0, scope: !1232, inlinedAt: !1235)
!1248 = !DILocation(line: 72, column: 20, scope: !1232, inlinedAt: !1235)
!1249 = !DILocation(line: 0, scope: !1096, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 72, column: 7, scope: !1232, inlinedAt: !1235)
!1251 = !DILocation(line: 29, column: 10, scope: !1096, inlinedAt: !1250)
!1252 = !DILocation(line: 73, column: 14, scope: !1232, inlinedAt: !1235)
!1253 = distinct !{!1253, !1245, !1254, !921}
!1254 = !DILocation(line: 74, column: 5, scope: !1230, inlinedAt: !1235)
!1255 = !DILocation(line: 149, column: 21, scope: !1122, inlinedAt: !1158)
!1256 = !DILocation(line: 151, column: 3, scope: !1122, inlinedAt: !1158)
!1257 = !DILocation(line: 115, column: 8, scope: !1122, inlinedAt: !1158)
!1258 = !DILocation(line: 153, column: 7, scope: !1135, inlinedAt: !1158)
!1259 = !DILocation(line: 153, column: 26, scope: !1135, inlinedAt: !1158)
!1260 = !{!1261, !814, i64 0}
!1261 = !{!"iovec", !814, i64 0, !1262, i64 8}
!1262 = !{!"long", !815, i64 0}
!1263 = distinct !DIAssignID()
!1264 = distinct !DIAssignID()
!1265 = !{!1261, !1262, i64 8}
!1266 = !DILocation(line: 156, column: 7, scope: !1135, inlinedAt: !1158)
!1267 = !DILocation(line: 165, column: 15, scope: !1144, inlinedAt: !1158)
!1268 = !DILocation(line: 167, column: 39, scope: !1144, inlinedAt: !1158)
!1269 = !DILocation(line: 167, column: 48, scope: !1144, inlinedAt: !1158)
!1270 = !DILocation(line: 167, column: 24, scope: !1144, inlinedAt: !1158)
!1271 = distinct !DIAssignID()
!1272 = !DILocation(line: 168, column: 23, scope: !1144, inlinedAt: !1158)
!1273 = !DILocation(line: 156, column: 26, scope: !1135, inlinedAt: !1158)
!1274 = !DILocation(line: 161, column: 44, scope: !1144, inlinedAt: !1158)
!1275 = !DILocation(line: 161, column: 32, scope: !1144, inlinedAt: !1158)
!1276 = !DILocation(line: 0, scope: !1144, inlinedAt: !1158)
!1277 = !DILocation(line: 162, column: 23, scope: !1144, inlinedAt: !1158)
!1278 = !DILocation(line: 163, column: 17, scope: !1279, inlinedAt: !1158)
!1279 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 163, column: 15)
!1280 = !DILocation(line: 163, column: 15, scope: !1144, inlinedAt: !1158)
!1281 = distinct !{!1281, !1266, !1282, !921}
!1282 = !DILocation(line: 169, column: 9, scope: !1135, inlinedAt: !1158)
!1283 = !DILocation(line: 185, column: 5, scope: !1136, inlinedAt: !1158)
!1284 = !DILocation(line: 172, column: 11, scope: !1135, inlinedAt: !1158)
!1285 = !DILocation(line: 0, scope: !1149, inlinedAt: !1158)
!1286 = !DILocation(line: 177, column: 35, scope: !1152, inlinedAt: !1158)
!1287 = !DILocation(line: 177, column: 27, scope: !1152, inlinedAt: !1158)
!1288 = !DILocation(line: 0, scope: !1152, inlinedAt: !1158)
!1289 = !DILocation(line: 179, column: 21, scope: !1290, inlinedAt: !1158)
!1290 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 179, column: 19)
!1291 = distinct !{!1291, !1292, !1293, !921}
!1292 = !DILocation(line: 175, column: 11, scope: !1149, inlinedAt: !1158)
!1293 = !DILocation(line: 183, column: 13, scope: !1149, inlinedAt: !1158)
!1294 = !DILocation(line: 179, column: 19, scope: !1152, inlinedAt: !1158)
!1295 = !DILocation(line: 175, column: 28, scope: !1149, inlinedAt: !1158)
!1296 = distinct !{!1296, !1292, !1293, !921, !1297}
!1297 = !{!"llvm.loop.peeled.count", i32 1}
!1298 = distinct !{!1298, !1292, !1293, !921}
!1299 = !DILocation(line: 188, column: 7, scope: !1156, inlinedAt: !1158)
!1300 = !DILocation(line: 187, column: 1, scope: !1122, inlinedAt: !1158)
!1301 = !DILocation(line: 188, column: 17, scope: !1156, inlinedAt: !1158)
!1302 = !DILocation(line: 188, column: 7, scope: !1122, inlinedAt: !1158)
!1303 = !DILocation(line: 190, column: 25, scope: !1155, inlinedAt: !1158)
!1304 = !DILocation(line: 0, scope: !1155, inlinedAt: !1158)
!1305 = !DILocation(line: 191, column: 7, scope: !1155, inlinedAt: !1158)
!1306 = !DILocation(line: 192, column: 14, scope: !1155, inlinedAt: !1158)
!1307 = !DILocation(line: 192, column: 7, scope: !1155, inlinedAt: !1158)
!1308 = !DILocation(line: 193, column: 13, scope: !1155, inlinedAt: !1158)
!1309 = !DILocation(line: 194, column: 5, scope: !1155, inlinedAt: !1158)
!1310 = !DILocalVariable(name: "ptr", arg: 1, scope: !1311, file: !1210, line: 75, type: !94)
!1311 = distinct !DISubprogram(name: "alignfree", scope: !1210, file: !1210, line: 75, type: !1312, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1314)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !94}
!1314 = !{!1310}
!1315 = !DILocation(line: 0, scope: !1311, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 195, column: 3, scope: !1122, inlinedAt: !1158)
!1317 = !DILocation(line: 77, column: 3, scope: !1311, inlinedAt: !1316)
!1318 = !DILocation(line: 197, column: 10, scope: !1122, inlinedAt: !1158)
!1319 = !DILocation(line: 273, column: 19, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 273, column: 11)
!1321 = !DILocation(line: 0, scope: !1222, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 274, column: 9, scope: !1320)
!1323 = !DILocation(line: 0, scope: !1230, inlinedAt: !1322)
!1324 = !DILocation(line: 273, column: 11, scope: !1085)
!1325 = !DILocation(line: 71, column: 21, scope: !1232, inlinedAt: !1322)
!1326 = !DILocation(line: 0, scope: !1232, inlinedAt: !1322)
!1327 = !DILocation(line: 72, column: 20, scope: !1232, inlinedAt: !1322)
!1328 = !DILocation(line: 0, scope: !1096, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 72, column: 7, scope: !1232, inlinedAt: !1322)
!1330 = !DILocation(line: 29, column: 10, scope: !1096, inlinedAt: !1329)
!1331 = !DILocation(line: 73, column: 14, scope: !1232, inlinedAt: !1322)
!1332 = !DILocation(line: 69, column: 39, scope: !1233, inlinedAt: !1322)
!1333 = !DILocation(line: 69, column: 3, scope: !1230, inlinedAt: !1322)
!1334 = distinct !{!1334, !1333, !1335, !921}
!1335 = !DILocation(line: 74, column: 5, scope: !1230, inlinedAt: !1322)
!1336 = !DILocation(line: 275, column: 7, scope: !1085)
!1337 = !DILocation(line: 275, column: 14, scope: !1085)
!1338 = !DILocation(line: 275, column: 55, scope: !1085)
!1339 = distinct !{!1339, !1336, !1340, !921}
!1340 = !DILocation(line: 276, column: 9, scope: !1085)
!1341 = !DILocation(line: 279, column: 3, scope: !1024)
!1342 = !DILocation(line: 280, column: 3, scope: !1024)
!1343 = !DISubprogram(name: "bindtextdomain", scope: !856, file: !856, line: 86, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!101, !70, !70}
!1346 = !DISubprogram(name: "textdomain", scope: !856, file: !856, line: 82, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1347 = !DISubprogram(name: "atexit", scope: !998, file: !998, line: 602, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!95, !360}
!1350 = !DISubprogram(name: "strlen", scope: !994, file: !994, line: 407, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!99, !70}
!1353 = !DISubprogram(name: "getpagesize", scope: !1354, file: !1354, line: 1011, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1354 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!95}
!1357 = !DISubprogram(name: "aligned_alloc", scope: !998, file: !998, line: 592, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!94, !97, !97}
!1360 = !DISubprogram(name: "vmsplice", scope: !1361, file: !1361, line: 414, type: !1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h", directory: "", checksumkind: CSK_MD5, checksum: "1c3bf9fc3309d17651ecfc421f385bcf")
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1147, !95, !1364, !97, !76}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1366 = !DISubprogram(name: "splice", scope: !1361, file: !1361, line: 421, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1147, !95, !1369, !95, !1369, !97, !76}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1370 = !DISubprogram(name: "__errno_location", scope: !1371, file: !1371, line: 37, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!403}
!1374 = !DISubprogram(name: "close", scope: !1354, file: !1354, line: 358, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!95, !95}
!1377 = !DISubprogram(name: "free", scope: !998, file: !998, line: 555, type: !1312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1378 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !300, file: !300, line: 50, type: !824, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1379)
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
!1392 = !{!"_Bool", !815, i64 0}
!1393 = !DILocation(line: 90, column: 1, scope: !1384)
!1394 = distinct !DISubprogram(name: "close_stdout", scope: !300, file: !300, line: 116, type: !361, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1395)
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
!1427 = !DISubprogram(name: "_exit", scope: !1354, file: !1354, line: 624, type: !803, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!1445 = !DILocation(line: 282, column: 1, scope: !1428)
!1446 = distinct !DISubprogram(name: "flush_stdout", scope: !315, file: !315, line: 163, type: !361, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1447)
!1447 = !{!1448}
!1448 = !DILocalVariable(name: "stdout_fd", scope: !1446, file: !315, line: 166, type: !95)
!1449 = !DILocation(line: 0, scope: !1446)
!1450 = !DILocalVariable(name: "fd", arg: 1, scope: !1451, file: !315, line: 145, type: !95)
!1451 = distinct !DISubprogram(name: "is_open", scope: !315, file: !315, line: 145, type: !1375, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1452)
!1452 = !{!1450}
!1453 = !DILocation(line: 0, scope: !1451, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 182, column: 25, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1446, file: !315, line: 182, column: 7)
!1456 = !DILocation(line: 157, column: 15, scope: !1451, inlinedAt: !1454)
!1457 = !DILocation(line: 157, column: 12, scope: !1451, inlinedAt: !1454)
!1458 = !DILocation(line: 182, column: 7, scope: !1446)
!1459 = !DILocation(line: 184, column: 5, scope: !1455)
!1460 = !DILocation(line: 185, column: 1, scope: !1446)
!1461 = distinct !DISubprogram(name: "error_tail", scope: !315, file: !315, line: 219, type: !1429, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1462)
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DILocalVariable(name: "status", arg: 1, scope: !1461, file: !315, line: 219, type: !95)
!1464 = !DILocalVariable(name: "errnum", arg: 2, scope: !1461, file: !315, line: 219, type: !95)
!1465 = !DILocalVariable(name: "message", arg: 3, scope: !1461, file: !315, line: 219, type: !70)
!1466 = !DILocalVariable(name: "args", arg: 4, scope: !1461, file: !315, line: 219, type: !325)
!1467 = distinct !DIAssignID()
!1468 = !DILocation(line: 0, scope: !1461)
!1469 = !DILocation(line: 229, column: 13, scope: !1461)
!1470 = !DILocalVariable(name: "__stream", arg: 1, scope: !1471, file: !860, line: 132, type: !1474)
!1471 = distinct !DISubprogram(name: "vfprintf", scope: !860, file: !860, line: 132, type: !1472, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1509)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!95, !1474, !864, !325}
!1474 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1477, file: !236, line: 51, baseType: !95, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1477, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1477, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1477, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1477, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1477, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1477, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1477, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1477, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1477, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1477, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1477, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1477, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1477, file: !236, line: 70, baseType: !1493, size: 64, offset: 832)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1477, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1477, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1477, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1477, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1477, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1477, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1477, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1477, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1477, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1477, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1477, file: !236, line: 93, baseType: !1493, size: 64, offset: 1344)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1477, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1477, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1477, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1477, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!1509 = !{!1470, !1510, !1511}
!1510 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1471, file: !860, line: 133, type: !864)
!1511 = !DILocalVariable(name: "__ap", arg: 3, scope: !1471, file: !860, line: 133, type: !325)
!1512 = !DILocation(line: 0, scope: !1471, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 229, column: 3, scope: !1461)
!1514 = !DILocation(line: 135, column: 10, scope: !1471, inlinedAt: !1513)
!1515 = !DILocation(line: 232, column: 3, scope: !1461)
!1516 = !DILocation(line: 233, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1461, file: !315, line: 233, column: 7)
!1518 = !DILocation(line: 233, column: 7, scope: !1461)
!1519 = !DILocalVariable(name: "errbuf", scope: !1520, file: !315, line: 193, type: !1524)
!1520 = distinct !DISubprogram(name: "print_errno_message", scope: !315, file: !315, line: 188, type: !803, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1521)
!1521 = !{!1522, !1523, !1519}
!1522 = !DILocalVariable(name: "errnum", arg: 1, scope: !1520, file: !315, line: 188, type: !95)
!1523 = !DILocalVariable(name: "s", scope: !1520, file: !315, line: 190, type: !70)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1525)
!1525 = !{!1526}
!1526 = !DISubrange(count: 1024)
!1527 = !DILocation(line: 0, scope: !1520, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 234, column: 5, scope: !1517)
!1529 = !DILocation(line: 193, column: 3, scope: !1520, inlinedAt: !1528)
!1530 = !DILocation(line: 195, column: 7, scope: !1520, inlinedAt: !1528)
!1531 = !DILocation(line: 207, column: 9, scope: !1532, inlinedAt: !1528)
!1532 = distinct !DILexicalBlock(scope: !1520, file: !315, line: 207, column: 7)
!1533 = !DILocation(line: 207, column: 7, scope: !1520, inlinedAt: !1528)
!1534 = !DILocation(line: 208, column: 9, scope: !1532, inlinedAt: !1528)
!1535 = !DILocation(line: 208, column: 5, scope: !1532, inlinedAt: !1528)
!1536 = !DILocation(line: 214, column: 3, scope: !1520, inlinedAt: !1528)
!1537 = !DILocation(line: 216, column: 1, scope: !1520, inlinedAt: !1528)
!1538 = !DILocation(line: 234, column: 5, scope: !1517)
!1539 = !DILocation(line: 238, column: 3, scope: !1461)
!1540 = !DILocalVariable(name: "__c", arg: 1, scope: !1541, file: !1542, line: 101, type: !95)
!1541 = distinct !DISubprogram(name: "putc_unlocked", scope: !1542, file: !1542, line: 101, type: !1543, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1545)
!1542 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!95, !95, !1475}
!1545 = !{!1540, !1546}
!1546 = !DILocalVariable(name: "__stream", arg: 2, scope: !1541, file: !1542, line: 101, type: !1475)
!1547 = !DILocation(line: 0, scope: !1541, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 238, column: 3, scope: !1461)
!1549 = !DILocation(line: 103, column: 10, scope: !1541, inlinedAt: !1548)
!1550 = !{!1551, !814, i64 40}
!1551 = !{!"_IO_FILE", !875, i64 0, !814, i64 8, !814, i64 16, !814, i64 24, !814, i64 32, !814, i64 40, !814, i64 48, !814, i64 56, !814, i64 64, !814, i64 72, !814, i64 80, !814, i64 88, !814, i64 96, !814, i64 104, !875, i64 112, !875, i64 116, !1262, i64 120, !916, i64 128, !815, i64 130, !815, i64 131, !814, i64 136, !1262, i64 144, !814, i64 152, !814, i64 160, !814, i64 168, !814, i64 176, !1262, i64 184, !875, i64 192, !815, i64 196}
!1552 = !{!1551, !814, i64 48}
!1553 = !{!"branch_weights", i32 2000, i32 1}
!1554 = !DILocation(line: 240, column: 3, scope: !1461)
!1555 = !DILocation(line: 241, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1461, file: !315, line: 241, column: 7)
!1557 = !DILocation(line: 241, column: 7, scope: !1461)
!1558 = !DILocation(line: 242, column: 5, scope: !1556)
!1559 = !DILocation(line: 243, column: 1, scope: !1461)
!1560 = !DISubprogram(name: "__vfprintf_chk", scope: !860, file: !860, line: 96, type: !1561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!95, !1474, !95, !864, !325}
!1563 = !DISubprogram(name: "strerror_r", scope: !994, file: !994, line: 444, type: !1564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!101, !95, !101, !97}
!1566 = !DISubprogram(name: "__overflow", scope: !869, file: !869, line: 886, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!95, !1475, !95}
!1569 = !DISubprogram(name: "fflush_unlocked", scope: !869, file: !869, line: 239, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!95, !1475}
!1572 = !DISubprogram(name: "fcntl", scope: !1573, file: !1573, line: 149, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!95, !95, !95, null}
!1576 = distinct !DISubprogram(name: "error", scope: !315, file: !315, line: 285, type: !1577, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !95, !95, !70, null}
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DILocalVariable(name: "status", arg: 1, scope: !1576, file: !315, line: 285, type: !95)
!1581 = !DILocalVariable(name: "errnum", arg: 2, scope: !1576, file: !315, line: 285, type: !95)
!1582 = !DILocalVariable(name: "message", arg: 3, scope: !1576, file: !315, line: 285, type: !70)
!1583 = !DILocalVariable(name: "ap", scope: !1576, file: !315, line: 287, type: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !869, line: 52, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1586, line: 12, baseType: !1587)
!1586 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !315, baseType: !1588)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 192, elements: !35)
!1589 = distinct !DIAssignID()
!1590 = !DILocation(line: 0, scope: !1576)
!1591 = !DILocation(line: 287, column: 3, scope: !1576)
!1592 = !DILocation(line: 288, column: 3, scope: !1576)
!1593 = !DILocation(line: 289, column: 3, scope: !1576)
!1594 = !DILocation(line: 290, column: 3, scope: !1576)
!1595 = !DILocation(line: 291, column: 1, scope: !1576)
!1596 = !DILocation(line: 0, scope: !322)
!1597 = !DILocation(line: 302, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !322, file: !315, line: 302, column: 7)
!1599 = !DILocation(line: 302, column: 7, scope: !322)
!1600 = !DILocation(line: 307, column: 11, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !315, line: 307, column: 11)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !315, line: 303, column: 5)
!1603 = !DILocation(line: 307, column: 27, scope: !1601)
!1604 = !DILocation(line: 308, column: 11, scope: !1601)
!1605 = !DILocation(line: 308, column: 28, scope: !1601)
!1606 = !DILocation(line: 308, column: 25, scope: !1601)
!1607 = !DILocation(line: 309, column: 15, scope: !1601)
!1608 = !DILocation(line: 309, column: 33, scope: !1601)
!1609 = !DILocation(line: 310, column: 19, scope: !1601)
!1610 = !DILocation(line: 311, column: 22, scope: !1601)
!1611 = !DILocation(line: 311, column: 56, scope: !1601)
!1612 = !DILocation(line: 307, column: 11, scope: !1602)
!1613 = !DILocation(line: 316, column: 21, scope: !1602)
!1614 = !DILocation(line: 317, column: 23, scope: !1602)
!1615 = !DILocation(line: 318, column: 5, scope: !1602)
!1616 = !DILocation(line: 327, column: 3, scope: !322)
!1617 = !DILocation(line: 331, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !322, file: !315, line: 331, column: 7)
!1619 = !DILocation(line: 331, column: 7, scope: !322)
!1620 = !DILocation(line: 332, column: 5, scope: !1618)
!1621 = !DILocation(line: 338, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !315, line: 334, column: 5)
!1623 = !DILocation(line: 346, column: 3, scope: !322)
!1624 = !DILocation(line: 350, column: 3, scope: !322)
!1625 = !DILocation(line: 356, column: 1, scope: !322)
!1626 = distinct !DISubprogram(name: "error_at_line", scope: !315, file: !315, line: 359, type: !1627, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !95, !95, !70, !76, !70, null}
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635}
!1630 = !DILocalVariable(name: "status", arg: 1, scope: !1626, file: !315, line: 359, type: !95)
!1631 = !DILocalVariable(name: "errnum", arg: 2, scope: !1626, file: !315, line: 359, type: !95)
!1632 = !DILocalVariable(name: "file_name", arg: 3, scope: !1626, file: !315, line: 359, type: !70)
!1633 = !DILocalVariable(name: "line_number", arg: 4, scope: !1626, file: !315, line: 360, type: !76)
!1634 = !DILocalVariable(name: "message", arg: 5, scope: !1626, file: !315, line: 360, type: !70)
!1635 = !DILocalVariable(name: "ap", scope: !1626, file: !315, line: 362, type: !1584)
!1636 = distinct !DIAssignID()
!1637 = !DILocation(line: 0, scope: !1626)
!1638 = !DILocation(line: 362, column: 3, scope: !1626)
!1639 = !DILocation(line: 363, column: 3, scope: !1626)
!1640 = !DILocation(line: 364, column: 3, scope: !1626)
!1641 = !DILocation(line: 366, column: 3, scope: !1626)
!1642 = !DILocation(line: 367, column: 1, scope: !1626)
!1643 = distinct !DISubprogram(name: "rpl_fcntl", scope: !366, file: !366, line: 202, type: !1574, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !1644)
!1644 = !{!1645, !1646, !1647, !1658, !1659, !1662, !1664, !1668}
!1645 = !DILocalVariable(name: "fd", arg: 1, scope: !1643, file: !366, line: 202, type: !95)
!1646 = !DILocalVariable(name: "action", arg: 2, scope: !1643, file: !366, line: 202, type: !95)
!1647 = !DILocalVariable(name: "arg", scope: !1643, file: !366, line: 208, type: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1649, line: 12, baseType: !1650)
!1649 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !366, baseType: !1651)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1652, size: 192, elements: !35)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1652, file: !366, line: 208, baseType: !76, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1652, file: !366, line: 208, baseType: !76, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1652, file: !366, line: 208, baseType: !94, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1652, file: !366, line: 208, baseType: !94, size: 64, offset: 128)
!1658 = !DILocalVariable(name: "result", scope: !1643, file: !366, line: 211, type: !95)
!1659 = !DILocalVariable(name: "target", scope: !1660, file: !366, line: 216, type: !95)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !366, line: 215, column: 7)
!1661 = distinct !DILexicalBlock(scope: !1643, file: !366, line: 213, column: 5)
!1662 = !DILocalVariable(name: "target", scope: !1663, file: !366, line: 223, type: !95)
!1663 = distinct !DILexicalBlock(scope: !1661, file: !366, line: 222, column: 7)
!1664 = !DILocalVariable(name: "x", scope: !1665, file: !366, line: 418, type: !95)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !366, line: 417, column: 13)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !366, line: 261, column: 11)
!1667 = distinct !DILexicalBlock(scope: !1661, file: !366, line: 258, column: 7)
!1668 = !DILocalVariable(name: "p", scope: !1669, file: !366, line: 426, type: !94)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !366, line: 425, column: 13)
!1670 = distinct !DIAssignID()
!1671 = !DILocation(line: 0, scope: !1643)
!1672 = !DILocation(line: 208, column: 3, scope: !1643)
!1673 = !DILocation(line: 209, column: 3, scope: !1643)
!1674 = !DILocation(line: 212, column: 3, scope: !1643)
!1675 = !DILocation(line: 216, column: 22, scope: !1660)
!1676 = distinct !DIAssignID()
!1677 = distinct !DIAssignID()
!1678 = !DILocation(line: 0, scope: !1660)
!1679 = !DILocalVariable(name: "fd", arg: 1, scope: !1680, file: !366, line: 444, type: !95)
!1680 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !366, file: !366, line: 444, type: !367, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !1681)
!1681 = !{!1679, !1682, !1683}
!1682 = !DILocalVariable(name: "target", arg: 2, scope: !1680, file: !366, line: 444, type: !95)
!1683 = !DILocalVariable(name: "result", scope: !1680, file: !366, line: 446, type: !95)
!1684 = !DILocation(line: 0, scope: !1680, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 217, column: 18, scope: !1660)
!1686 = !DILocation(line: 479, column: 12, scope: !1680, inlinedAt: !1685)
!1687 = !DILocation(line: 223, column: 22, scope: !1663)
!1688 = distinct !DIAssignID()
!1689 = distinct !DIAssignID()
!1690 = !DILocation(line: 0, scope: !1663)
!1691 = !DILocation(line: 0, scope: !365, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 224, column: 18, scope: !1663)
!1693 = !DILocation(line: 507, column: 12, scope: !1694, inlinedAt: !1692)
!1694 = distinct !DILexicalBlock(scope: !365, file: !366, line: 507, column: 7)
!1695 = !DILocation(line: 507, column: 9, scope: !1694, inlinedAt: !1692)
!1696 = !DILocation(line: 507, column: 7, scope: !365, inlinedAt: !1692)
!1697 = !DILocation(line: 509, column: 16, scope: !1698, inlinedAt: !1692)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !366, line: 508, column: 5)
!1699 = !DILocation(line: 510, column: 13, scope: !1700, inlinedAt: !1692)
!1700 = distinct !DILexicalBlock(scope: !1698, file: !366, line: 510, column: 11)
!1701 = !DILocation(line: 510, column: 23, scope: !1700, inlinedAt: !1692)
!1702 = !DILocation(line: 510, column: 26, scope: !1700, inlinedAt: !1692)
!1703 = !DILocation(line: 510, column: 32, scope: !1700, inlinedAt: !1692)
!1704 = !DILocation(line: 510, column: 11, scope: !1698, inlinedAt: !1692)
!1705 = !DILocation(line: 512, column: 30, scope: !1706, inlinedAt: !1692)
!1706 = distinct !DILexicalBlock(scope: !1700, file: !366, line: 511, column: 9)
!1707 = !DILocation(line: 528, column: 19, scope: !377, inlinedAt: !1692)
!1708 = !DILocation(line: 0, scope: !1680, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 520, column: 20, scope: !1710, inlinedAt: !1692)
!1710 = distinct !DILexicalBlock(scope: !1700, file: !366, line: 519, column: 9)
!1711 = !DILocation(line: 479, column: 12, scope: !1680, inlinedAt: !1709)
!1712 = !DILocation(line: 521, column: 22, scope: !1713, inlinedAt: !1692)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !366, line: 521, column: 15)
!1714 = !DILocation(line: 521, column: 15, scope: !1710, inlinedAt: !1692)
!1715 = !DILocation(line: 522, column: 32, scope: !1713, inlinedAt: !1692)
!1716 = !DILocation(line: 522, column: 13, scope: !1713, inlinedAt: !1692)
!1717 = !DILocation(line: 0, scope: !1680, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 527, column: 14, scope: !1694, inlinedAt: !1692)
!1719 = !DILocation(line: 479, column: 12, scope: !1680, inlinedAt: !1718)
!1720 = !DILocation(line: 0, scope: !1694, inlinedAt: !1692)
!1721 = !DILocation(line: 528, column: 9, scope: !377, inlinedAt: !1692)
!1722 = !DILocation(line: 530, column: 19, scope: !376, inlinedAt: !1692)
!1723 = !DILocation(line: 0, scope: !376, inlinedAt: !1692)
!1724 = !DILocation(line: 531, column: 17, scope: !380, inlinedAt: !1692)
!1725 = !DILocation(line: 531, column: 21, scope: !380, inlinedAt: !1692)
!1726 = !DILocation(line: 531, column: 54, scope: !380, inlinedAt: !1692)
!1727 = !DILocation(line: 531, column: 24, scope: !380, inlinedAt: !1692)
!1728 = !DILocation(line: 531, column: 68, scope: !380, inlinedAt: !1692)
!1729 = !DILocation(line: 531, column: 11, scope: !376, inlinedAt: !1692)
!1730 = !DILocation(line: 533, column: 29, scope: !379, inlinedAt: !1692)
!1731 = !DILocation(line: 0, scope: !379, inlinedAt: !1692)
!1732 = !DILocation(line: 534, column: 11, scope: !379, inlinedAt: !1692)
!1733 = !DILocation(line: 535, column: 17, scope: !379, inlinedAt: !1692)
!1734 = !DILocation(line: 537, column: 9, scope: !379, inlinedAt: !1692)
!1735 = !DILocation(line: 329, column: 22, scope: !1666)
!1736 = !DILocation(line: 330, column: 13, scope: !1666)
!1737 = !DILocation(line: 418, column: 23, scope: !1665)
!1738 = distinct !DIAssignID()
!1739 = distinct !DIAssignID()
!1740 = !DILocation(line: 0, scope: !1665)
!1741 = !DILocation(line: 419, column: 24, scope: !1665)
!1742 = !DILocation(line: 421, column: 13, scope: !1666)
!1743 = !DILocation(line: 426, column: 25, scope: !1669)
!1744 = distinct !DIAssignID()
!1745 = distinct !DIAssignID()
!1746 = !DILocation(line: 0, scope: !1669)
!1747 = !DILocation(line: 427, column: 24, scope: !1669)
!1748 = !DILocation(line: 429, column: 13, scope: !1666)
!1749 = !DILocation(line: 0, scope: !1661)
!1750 = !DILocation(line: 438, column: 3, scope: !1643)
!1751 = !DILocation(line: 441, column: 1, scope: !1643)
!1752 = !DILocation(line: 440, column: 3, scope: !1643)
!1753 = distinct !DISubprogram(name: "full_write", scope: !713, file: !713, line: 58, type: !1754, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!755, !95, !1022, !755}
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762}
!1757 = !DILocalVariable(name: "fd", arg: 1, scope: !1753, file: !713, line: 58, type: !95)
!1758 = !DILocalVariable(name: "buf", arg: 2, scope: !1753, file: !713, line: 58, type: !1022)
!1759 = !DILocalVariable(name: "count", arg: 3, scope: !1753, file: !713, line: 58, type: !755)
!1760 = !DILocalVariable(name: "total", scope: !1753, file: !713, line: 60, type: !755)
!1761 = !DILocalVariable(name: "ptr", scope: !1753, file: !713, line: 61, type: !70)
!1762 = !DILocalVariable(name: "n_rw", scope: !1763, file: !713, line: 65, type: !757)
!1763 = distinct !DILexicalBlock(scope: !1753, file: !713, line: 64, column: 5)
!1764 = !DILocation(line: 0, scope: !1753)
!1765 = !DILocation(line: 63, column: 16, scope: !1753)
!1766 = !DILocation(line: 63, column: 3, scope: !1753)
!1767 = !DILocation(line: 65, column: 24, scope: !1763)
!1768 = !DILocation(line: 0, scope: !1763)
!1769 = !DILocation(line: 66, column: 16, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !713, line: 66, column: 11)
!1771 = !DILocation(line: 66, column: 11, scope: !1763)
!1772 = !DILocation(line: 68, column: 16, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1763, file: !713, line: 68, column: 11)
!1774 = !DILocation(line: 68, column: 11, scope: !1763)
!1775 = !DILocation(line: 70, column: 11, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !713, line: 69, column: 9)
!1777 = !DILocation(line: 70, column: 17, scope: !1776)
!1778 = !DILocation(line: 71, column: 11, scope: !1776)
!1779 = !DILocation(line: 73, column: 13, scope: !1763)
!1780 = !DILocation(line: 74, column: 11, scope: !1763)
!1781 = !DILocation(line: 75, column: 13, scope: !1763)
!1782 = !DILocation(line: 78, column: 3, scope: !1753)
!1783 = distinct !DISubprogram(name: "getprogname", scope: !716, file: !716, line: 54, type: !1784, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715)
!1784 = !DISubroutineType(types: !714)
!1785 = !DILocation(line: 58, column: 10, scope: !1783)
!1786 = !DILocation(line: 58, column: 3, scope: !1783)
!1787 = distinct !DISubprogram(name: "isapipe", scope: !718, file: !718, line: 72, type: !1375, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !1788)
!1788 = !{!1789, !1790, !1794, !1795, !1829}
!1789 = !DILocalVariable(name: "fd", arg: 1, scope: !1787, file: !718, line: 72, type: !95)
!1790 = !DILocalVariable(name: "pipe_link_count_max", scope: !1787, file: !718, line: 74, type: !1791)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1792, line: 74, baseType: !1793)
!1792 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !259, line: 151, baseType: !99)
!1794 = !DILocalVariable(name: "check_for_fifo", scope: !1787, file: !718, line: 75, type: !219)
!1795 = !DILocalVariable(name: "st", scope: !1787, file: !718, line: 77, type: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1797, line: 26, size: 1152, elements: !1798)
!1797 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1798 = !{!1799, !1801, !1803, !1804, !1806, !1808, !1810, !1811, !1812, !1813, !1815, !1817, !1825, !1826, !1827}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1796, file: !1797, line: 31, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !259, line: 145, baseType: !99)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1796, file: !1797, line: 36, baseType: !1802, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !259, line: 148, baseType: !99)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1796, file: !1797, line: 44, baseType: !1793, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1796, file: !1797, line: 45, baseType: !1805, size: 32, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !259, line: 150, baseType: !76)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1796, file: !1797, line: 47, baseType: !1807, size: 32, offset: 224)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !259, line: 146, baseType: !76)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1796, file: !1797, line: 48, baseType: !1809, size: 32, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !259, line: 147, baseType: !76)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1796, file: !1797, line: 50, baseType: !95, size: 32, offset: 288)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1796, file: !1797, line: 52, baseType: !1800, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1796, file: !1797, line: 57, baseType: !258, size: 64, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1796, file: !1797, line: 61, baseType: !1814, size: 64, offset: 448)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !259, line: 175, baseType: !260)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1796, file: !1797, line: 63, baseType: !1816, size: 64, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !259, line: 180, baseType: !260)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1796, file: !1797, line: 74, baseType: !1818, size: 128, offset: 576)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1819, line: 11, size: 128, elements: !1820)
!1819 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1820 = !{!1821, !1823}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1818, file: !1819, line: 16, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !259, line: 160, baseType: !260)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1818, file: !1819, line: 21, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !259, line: 197, baseType: !260)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1796, file: !1797, line: 75, baseType: !1818, size: 128, offset: 704)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1796, file: !1797, line: 76, baseType: !1818, size: 128, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1796, file: !1797, line: 89, baseType: !1828, size: 192, offset: 960)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1824, size: 192, elements: !126)
!1829 = !DILocalVariable(name: "fstat_result", scope: !1787, file: !718, line: 78, type: !95)
!1830 = distinct !DIAssignID()
!1831 = !DILocation(line: 0, scope: !1787)
!1832 = !DILocation(line: 77, column: 3, scope: !1787)
!1833 = !DILocation(line: 78, column: 22, scope: !1787)
!1834 = !DILocation(line: 79, column: 20, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1787, file: !718, line: 79, column: 7)
!1836 = !DILocation(line: 79, column: 7, scope: !1787)
!1837 = !DILocation(line: 118, column: 9, scope: !1787)
!1838 = !{!1839, !1262, i64 16}
!1839 = !{!"stat", !1262, i64 0, !1262, i64 8, !1262, i64 16, !875, i64 24, !875, i64 28, !875, i64 32, !875, i64 36, !1262, i64 40, !1262, i64 48, !1262, i64 56, !1262, i64 64, !1840, i64 72, !1840, i64 88, !1840, i64 104, !815, i64 120}
!1840 = !{!"timespec", !1262, i64 0, !1262, i64 8}
!1841 = !DILocation(line: 118, column: 18, scope: !1787)
!1842 = !DILocation(line: 119, column: 6, scope: !1787)
!1843 = !DILocation(line: 117, column: 3, scope: !1787)
!1844 = !DILocation(line: 120, column: 1, scope: !1787)
!1845 = !DISubprogram(name: "fstat", scope: !1846, file: !1846, line: 210, type: !1847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1846 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!95, !95, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1850 = distinct !DISubprogram(name: "parse_long_options", scope: !383, file: !383, line: 45, type: !1851, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1854)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !95, !1027, !70, !70, !70, !1853, null}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1865}
!1855 = !DILocalVariable(name: "argc", arg: 1, scope: !1850, file: !383, line: 45, type: !95)
!1856 = !DILocalVariable(name: "argv", arg: 2, scope: !1850, file: !383, line: 46, type: !1027)
!1857 = !DILocalVariable(name: "command_name", arg: 3, scope: !1850, file: !383, line: 47, type: !70)
!1858 = !DILocalVariable(name: "package", arg: 4, scope: !1850, file: !383, line: 48, type: !70)
!1859 = !DILocalVariable(name: "version", arg: 5, scope: !1850, file: !383, line: 49, type: !70)
!1860 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1850, file: !383, line: 50, type: !1853)
!1861 = !DILocalVariable(name: "saved_opterr", scope: !1850, file: !383, line: 53, type: !95)
!1862 = !DILocalVariable(name: "c", scope: !1863, file: !383, line: 60, type: !95)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !383, line: 59, column: 5)
!1864 = distinct !DILexicalBlock(scope: !1850, file: !383, line: 58, column: 7)
!1865 = !DILocalVariable(name: "authors", scope: !1866, file: !383, line: 71, type: !1870)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !383, line: 70, column: 15)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !383, line: 64, column: 13)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !383, line: 62, column: 9)
!1869 = distinct !DILexicalBlock(scope: !1863, file: !383, line: 61, column: 11)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !869, line: 52, baseType: !1871)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1586, line: 12, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !383, baseType: !1873)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1874, size: 192, elements: !35)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1874, file: !383, line: 71, baseType: !76, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1874, file: !383, line: 71, baseType: !76, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1874, file: !383, line: 71, baseType: !94, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1874, file: !383, line: 71, baseType: !94, size: 64, offset: 128)
!1880 = distinct !DIAssignID()
!1881 = !DILocation(line: 0, scope: !1866)
!1882 = !DILocation(line: 0, scope: !1850)
!1883 = !DILocation(line: 53, column: 22, scope: !1850)
!1884 = !DILocation(line: 56, column: 10, scope: !1850)
!1885 = !DILocation(line: 58, column: 12, scope: !1864)
!1886 = !DILocation(line: 58, column: 7, scope: !1850)
!1887 = !DILocation(line: 60, column: 15, scope: !1863)
!1888 = !DILocation(line: 0, scope: !1863)
!1889 = !DILocation(line: 61, column: 11, scope: !1863)
!1890 = !DILocation(line: 66, column: 15, scope: !1867)
!1891 = !DILocation(line: 67, column: 15, scope: !1867)
!1892 = !DILocation(line: 71, column: 17, scope: !1866)
!1893 = !DILocation(line: 72, column: 17, scope: !1866)
!1894 = !DILocation(line: 73, column: 33, scope: !1866)
!1895 = !DILocation(line: 73, column: 17, scope: !1866)
!1896 = !DILocation(line: 74, column: 17, scope: !1866)
!1897 = !DILocation(line: 85, column: 10, scope: !1850)
!1898 = !DILocation(line: 89, column: 10, scope: !1850)
!1899 = !DILocation(line: 90, column: 1, scope: !1850)
!1900 = !DISubprogram(name: "getopt_long", scope: !398, file: !398, line: 66, type: !1901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!95, !95, !1903, !70, !1905, !403}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1906 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !383, file: !383, line: 98, type: !1907, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !95, !1027, !70, !70, !70, !219, !1853, null}
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920}
!1910 = !DILocalVariable(name: "argc", arg: 1, scope: !1906, file: !383, line: 98, type: !95)
!1911 = !DILocalVariable(name: "argv", arg: 2, scope: !1906, file: !383, line: 99, type: !1027)
!1912 = !DILocalVariable(name: "command_name", arg: 3, scope: !1906, file: !383, line: 100, type: !70)
!1913 = !DILocalVariable(name: "package", arg: 4, scope: !1906, file: !383, line: 101, type: !70)
!1914 = !DILocalVariable(name: "version", arg: 5, scope: !1906, file: !383, line: 102, type: !70)
!1915 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1906, file: !383, line: 103, type: !219)
!1916 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1906, file: !383, line: 104, type: !1853)
!1917 = !DILocalVariable(name: "saved_opterr", scope: !1906, file: !383, line: 107, type: !95)
!1918 = !DILocalVariable(name: "optstring", scope: !1906, file: !383, line: 112, type: !70)
!1919 = !DILocalVariable(name: "c", scope: !1906, file: !383, line: 114, type: !95)
!1920 = !DILocalVariable(name: "authors", scope: !1921, file: !383, line: 125, type: !1870)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !383, line: 124, column: 11)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !383, line: 118, column: 9)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !383, line: 116, column: 5)
!1924 = distinct !DILexicalBlock(scope: !1906, file: !383, line: 115, column: 7)
!1925 = distinct !DIAssignID()
!1926 = !DILocation(line: 0, scope: !1921)
!1927 = !DILocation(line: 0, scope: !1906)
!1928 = !DILocation(line: 107, column: 22, scope: !1906)
!1929 = !DILocation(line: 110, column: 10, scope: !1906)
!1930 = !DILocation(line: 112, column: 27, scope: !1906)
!1931 = !DILocation(line: 114, column: 11, scope: !1906)
!1932 = !DILocation(line: 115, column: 7, scope: !1906)
!1933 = !DILocation(line: 125, column: 13, scope: !1921)
!1934 = !DILocation(line: 126, column: 13, scope: !1921)
!1935 = !DILocation(line: 127, column: 29, scope: !1921)
!1936 = !DILocation(line: 127, column: 13, scope: !1921)
!1937 = !DILocation(line: 128, column: 13, scope: !1921)
!1938 = !DILocation(line: 132, column: 26, scope: !1922)
!1939 = !DILocation(line: 133, column: 11, scope: !1922)
!1940 = !DILocation(line: 0, scope: !1922)
!1941 = !DILocation(line: 138, column: 10, scope: !1906)
!1942 = !DILocation(line: 139, column: 1, scope: !1906)
!1943 = distinct !DISubprogram(name: "pipe2_safer", scope: !720, file: !720, line: 31, type: !687, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !1944)
!1944 = !{!1945, !1946, !1947, !1951}
!1945 = !DILocalVariable(name: "fd", arg: 1, scope: !1943, file: !720, line: 31, type: !403)
!1946 = !DILocalVariable(name: "flags", arg: 2, scope: !1943, file: !720, line: 31, type: !95)
!1947 = !DILocalVariable(name: "i", scope: !1948, file: !720, line: 36, type: !95)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !720, line: 36, column: 7)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !720, line: 35, column: 5)
!1950 = distinct !DILexicalBlock(scope: !1943, file: !720, line: 34, column: 7)
!1951 = !DILocalVariable(name: "saved_errno", scope: !1952, file: !720, line: 41, type: !95)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !720, line: 40, column: 13)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !720, line: 39, column: 15)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !720, line: 37, column: 9)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !720, line: 36, column: 7)
!1956 = !DILocation(line: 0, scope: !1943)
!1957 = !DILocation(line: 34, column: 7, scope: !1950)
!1958 = !DILocation(line: 34, column: 25, scope: !1950)
!1959 = !DILocation(line: 34, column: 7, scope: !1943)
!1960 = !DILocation(line: 0, scope: !1948)
!1961 = !DILocation(line: 38, column: 34, scope: !1954)
!1962 = !DILocation(line: 38, column: 19, scope: !1954)
!1963 = !DILocation(line: 38, column: 17, scope: !1954)
!1964 = !DILocation(line: 39, column: 21, scope: !1953)
!1965 = !DILocation(line: 39, column: 15, scope: !1954)
!1966 = !DILocation(line: 41, column: 33, scope: !1952)
!1967 = !DILocation(line: 0, scope: !1952)
!1968 = !DILocation(line: 42, column: 22, scope: !1952)
!1969 = !DILocation(line: 42, column: 15, scope: !1952)
!1970 = !DILocation(line: 43, column: 21, scope: !1952)
!1971 = !DILocation(line: 51, column: 1, scope: !1943)
!1972 = distinct !DISubprogram(name: "set_program_name", scope: !408, file: !408, line: 37, type: !824, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DILocalVariable(name: "argv0", arg: 1, scope: !1972, file: !408, line: 37, type: !70)
!1975 = !DILocalVariable(name: "slash", scope: !1972, file: !408, line: 44, type: !70)
!1976 = !DILocalVariable(name: "base", scope: !1972, file: !408, line: 45, type: !70)
!1977 = !DILocation(line: 0, scope: !1972)
!1978 = !DILocation(line: 44, column: 23, scope: !1972)
!1979 = !DILocation(line: 45, column: 22, scope: !1972)
!1980 = !DILocation(line: 46, column: 17, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1972, file: !408, line: 46, column: 7)
!1982 = !DILocation(line: 46, column: 9, scope: !1981)
!1983 = !DILocation(line: 46, column: 25, scope: !1981)
!1984 = !DILocation(line: 46, column: 40, scope: !1981)
!1985 = !DILocalVariable(name: "__s1", arg: 1, scope: !1986, file: !887, line: 974, type: !1022)
!1986 = distinct !DISubprogram(name: "memeq", scope: !887, file: !887, line: 974, type: !1987, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!219, !1022, !1022, !97}
!1989 = !{!1985, !1990, !1991}
!1990 = !DILocalVariable(name: "__s2", arg: 2, scope: !1986, file: !887, line: 974, type: !1022)
!1991 = !DILocalVariable(name: "__n", arg: 3, scope: !1986, file: !887, line: 974, type: !97)
!1992 = !DILocation(line: 0, scope: !1986, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 46, column: 28, scope: !1981)
!1994 = !DILocation(line: 976, column: 11, scope: !1986, inlinedAt: !1993)
!1995 = !DILocation(line: 976, column: 10, scope: !1986, inlinedAt: !1993)
!1996 = !DILocation(line: 46, column: 7, scope: !1972)
!1997 = !DILocation(line: 49, column: 11, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !408, line: 49, column: 11)
!1999 = distinct !DILexicalBlock(scope: !1981, file: !408, line: 47, column: 5)
!2000 = !DILocation(line: 49, column: 36, scope: !1998)
!2001 = !DILocation(line: 49, column: 11, scope: !1999)
!2002 = !DILocation(line: 65, column: 16, scope: !1972)
!2003 = !DILocation(line: 71, column: 27, scope: !1972)
!2004 = !DILocation(line: 74, column: 33, scope: !1972)
!2005 = !DILocation(line: 76, column: 1, scope: !1972)
!2006 = !DISubprogram(name: "strrchr", scope: !994, file: !994, line: 273, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2007 = distinct !DIAssignID()
!2008 = !DILocation(line: 0, scope: !417)
!2009 = distinct !DIAssignID()
!2010 = !DILocation(line: 40, column: 29, scope: !417)
!2011 = !DILocation(line: 41, column: 19, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !417, file: !418, line: 41, column: 7)
!2013 = !DILocation(line: 41, column: 7, scope: !417)
!2014 = !DILocation(line: 47, column: 3, scope: !417)
!2015 = !DILocation(line: 48, column: 3, scope: !417)
!2016 = !DILocalVariable(name: "ps", arg: 1, scope: !2017, file: !2018, line: 1135, type: !2021)
!2017 = distinct !DISubprogram(name: "mbszero", scope: !2018, file: !2018, line: 1135, type: !2019, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !2022)
!2018 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2022 = !{!2016}
!2023 = !DILocation(line: 0, scope: !2017, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 48, column: 18, scope: !417)
!2025 = !DILocalVariable(name: "__dest", arg: 1, scope: !2026, file: !1097, line: 57, type: !94)
!2026 = distinct !DISubprogram(name: "memset", scope: !1097, file: !1097, line: 57, type: !2027, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!94, !94, !95, !97}
!2029 = !{!2025, !2030, !2031}
!2030 = !DILocalVariable(name: "__ch", arg: 2, scope: !2026, file: !1097, line: 57, type: !95)
!2031 = !DILocalVariable(name: "__len", arg: 3, scope: !2026, file: !1097, line: 57, type: !97)
!2032 = !DILocation(line: 0, scope: !2026, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 1137, column: 3, scope: !2017, inlinedAt: !2024)
!2034 = !DILocation(line: 59, column: 10, scope: !2026, inlinedAt: !2033)
!2035 = !DILocation(line: 49, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !417, file: !418, line: 49, column: 7)
!2037 = !DILocation(line: 49, column: 39, scope: !2036)
!2038 = !DILocation(line: 49, column: 44, scope: !2036)
!2039 = !DILocation(line: 54, column: 1, scope: !417)
!2040 = !DISubprogram(name: "mbrtoc32", scope: !429, file: !429, line: 57, type: !2041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!97, !2043, !864, !97, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2021)
!2046 = distinct !DISubprogram(name: "clone_quoting_options", scope: !448, file: !448, line: 113, type: !2047, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2050)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!2049, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!2050 = !{!2051, !2052, !2053}
!2051 = !DILocalVariable(name: "o", arg: 1, scope: !2046, file: !448, line: 113, type: !2049)
!2052 = !DILocalVariable(name: "saved_errno", scope: !2046, file: !448, line: 115, type: !95)
!2053 = !DILocalVariable(name: "p", scope: !2046, file: !448, line: 116, type: !2049)
!2054 = !DILocation(line: 0, scope: !2046)
!2055 = !DILocation(line: 115, column: 21, scope: !2046)
!2056 = !DILocation(line: 116, column: 40, scope: !2046)
!2057 = !DILocation(line: 116, column: 31, scope: !2046)
!2058 = !DILocation(line: 118, column: 9, scope: !2046)
!2059 = !DILocation(line: 119, column: 3, scope: !2046)
!2060 = distinct !DISubprogram(name: "get_quoting_style", scope: !448, file: !448, line: 124, type: !2061, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2065)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!474, !2063}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "o", arg: 1, scope: !2060, file: !448, line: 124, type: !2063)
!2067 = !DILocation(line: 0, scope: !2060)
!2068 = !DILocation(line: 126, column: 11, scope: !2060)
!2069 = !DILocation(line: 126, column: 46, scope: !2060)
!2070 = !{!2071, !875, i64 0}
!2071 = !{!"quoting_options", !875, i64 0, !875, i64 4, !815, i64 8, !814, i64 40, !814, i64 48}
!2072 = !DILocation(line: 126, column: 3, scope: !2060)
!2073 = distinct !DISubprogram(name: "set_quoting_style", scope: !448, file: !448, line: 132, type: !2074, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !2049, !474}
!2076 = !{!2077, !2078}
!2077 = !DILocalVariable(name: "o", arg: 1, scope: !2073, file: !448, line: 132, type: !2049)
!2078 = !DILocalVariable(name: "s", arg: 2, scope: !2073, file: !448, line: 132, type: !474)
!2079 = !DILocation(line: 0, scope: !2073)
!2080 = !DILocation(line: 134, column: 4, scope: !2073)
!2081 = !DILocation(line: 134, column: 45, scope: !2073)
!2082 = !DILocation(line: 135, column: 1, scope: !2073)
!2083 = distinct !DISubprogram(name: "set_char_quoting", scope: !448, file: !448, line: 143, type: !2084, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!95, !2049, !4, !95}
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2093, !2094}
!2087 = !DILocalVariable(name: "o", arg: 1, scope: !2083, file: !448, line: 143, type: !2049)
!2088 = !DILocalVariable(name: "c", arg: 2, scope: !2083, file: !448, line: 143, type: !4)
!2089 = !DILocalVariable(name: "i", arg: 3, scope: !2083, file: !448, line: 143, type: !95)
!2090 = !DILocalVariable(name: "uc", scope: !2083, file: !448, line: 145, type: !100)
!2091 = !DILocalVariable(name: "p", scope: !2083, file: !448, line: 146, type: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2093 = !DILocalVariable(name: "shift", scope: !2083, file: !448, line: 148, type: !95)
!2094 = !DILocalVariable(name: "r", scope: !2083, file: !448, line: 149, type: !76)
!2095 = !DILocation(line: 0, scope: !2083)
!2096 = !DILocation(line: 147, column: 6, scope: !2083)
!2097 = !DILocation(line: 147, column: 41, scope: !2083)
!2098 = !DILocation(line: 147, column: 62, scope: !2083)
!2099 = !DILocation(line: 147, column: 57, scope: !2083)
!2100 = !DILocation(line: 148, column: 15, scope: !2083)
!2101 = !DILocation(line: 149, column: 21, scope: !2083)
!2102 = !DILocation(line: 149, column: 24, scope: !2083)
!2103 = !DILocation(line: 149, column: 34, scope: !2083)
!2104 = !DILocation(line: 150, column: 19, scope: !2083)
!2105 = !DILocation(line: 150, column: 24, scope: !2083)
!2106 = !DILocation(line: 150, column: 6, scope: !2083)
!2107 = !DILocation(line: 151, column: 3, scope: !2083)
!2108 = distinct !DISubprogram(name: "set_quoting_flags", scope: !448, file: !448, line: 159, type: !2109, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!95, !2049, !95}
!2111 = !{!2112, !2113, !2114}
!2112 = !DILocalVariable(name: "o", arg: 1, scope: !2108, file: !448, line: 159, type: !2049)
!2113 = !DILocalVariable(name: "i", arg: 2, scope: !2108, file: !448, line: 159, type: !95)
!2114 = !DILocalVariable(name: "r", scope: !2108, file: !448, line: 163, type: !95)
!2115 = !DILocation(line: 0, scope: !2108)
!2116 = !DILocation(line: 161, column: 8, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2108, file: !448, line: 161, column: 7)
!2118 = !DILocation(line: 161, column: 7, scope: !2108)
!2119 = !DILocation(line: 163, column: 14, scope: !2108)
!2120 = !{!2071, !875, i64 4}
!2121 = !DILocation(line: 164, column: 12, scope: !2108)
!2122 = !DILocation(line: 165, column: 3, scope: !2108)
!2123 = distinct !DISubprogram(name: "set_custom_quoting", scope: !448, file: !448, line: 169, type: !2124, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !2049, !70, !70}
!2126 = !{!2127, !2128, !2129}
!2127 = !DILocalVariable(name: "o", arg: 1, scope: !2123, file: !448, line: 169, type: !2049)
!2128 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2123, file: !448, line: 170, type: !70)
!2129 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2123, file: !448, line: 170, type: !70)
!2130 = !DILocation(line: 0, scope: !2123)
!2131 = !DILocation(line: 172, column: 8, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2123, file: !448, line: 172, column: 7)
!2133 = !DILocation(line: 172, column: 7, scope: !2123)
!2134 = !DILocation(line: 174, column: 12, scope: !2123)
!2135 = !DILocation(line: 175, column: 8, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2123, file: !448, line: 175, column: 7)
!2137 = !DILocation(line: 175, column: 19, scope: !2136)
!2138 = !DILocation(line: 176, column: 5, scope: !2136)
!2139 = !DILocation(line: 177, column: 6, scope: !2123)
!2140 = !DILocation(line: 177, column: 17, scope: !2123)
!2141 = !{!2071, !814, i64 40}
!2142 = !DILocation(line: 178, column: 6, scope: !2123)
!2143 = !DILocation(line: 178, column: 18, scope: !2123)
!2144 = !{!2071, !814, i64 48}
!2145 = !DILocation(line: 179, column: 1, scope: !2123)
!2146 = !DISubprogram(name: "abort", scope: !998, file: !998, line: 598, type: !361, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2147 = distinct !DISubprogram(name: "quotearg_buffer", scope: !448, file: !448, line: 774, type: !2148, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!97, !101, !97, !70, !97, !2063}
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158}
!2151 = !DILocalVariable(name: "buffer", arg: 1, scope: !2147, file: !448, line: 774, type: !101)
!2152 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2147, file: !448, line: 774, type: !97)
!2153 = !DILocalVariable(name: "arg", arg: 3, scope: !2147, file: !448, line: 775, type: !70)
!2154 = !DILocalVariable(name: "argsize", arg: 4, scope: !2147, file: !448, line: 775, type: !97)
!2155 = !DILocalVariable(name: "o", arg: 5, scope: !2147, file: !448, line: 776, type: !2063)
!2156 = !DILocalVariable(name: "p", scope: !2147, file: !448, line: 778, type: !2063)
!2157 = !DILocalVariable(name: "saved_errno", scope: !2147, file: !448, line: 779, type: !95)
!2158 = !DILocalVariable(name: "r", scope: !2147, file: !448, line: 780, type: !97)
!2159 = !DILocation(line: 0, scope: !2147)
!2160 = !DILocation(line: 778, column: 37, scope: !2147)
!2161 = !DILocation(line: 779, column: 21, scope: !2147)
!2162 = !DILocation(line: 781, column: 43, scope: !2147)
!2163 = !DILocation(line: 781, column: 53, scope: !2147)
!2164 = !DILocation(line: 781, column: 63, scope: !2147)
!2165 = !DILocation(line: 782, column: 43, scope: !2147)
!2166 = !DILocation(line: 782, column: 58, scope: !2147)
!2167 = !DILocation(line: 780, column: 14, scope: !2147)
!2168 = !DILocation(line: 783, column: 9, scope: !2147)
!2169 = !DILocation(line: 784, column: 3, scope: !2147)
!2170 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !448, file: !448, line: 251, type: !2171, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2175)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!97, !101, !97, !70, !97, !474, !95, !2173, !70, !70}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2201, !2203, !2206, !2207, !2208, !2209, !2212, !2213, !2215, !2216, !2219, !2223, !2224, !2232, !2235, !2236, !2237}
!2176 = !DILocalVariable(name: "buffer", arg: 1, scope: !2170, file: !448, line: 251, type: !101)
!2177 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2170, file: !448, line: 251, type: !97)
!2178 = !DILocalVariable(name: "arg", arg: 3, scope: !2170, file: !448, line: 252, type: !70)
!2179 = !DILocalVariable(name: "argsize", arg: 4, scope: !2170, file: !448, line: 252, type: !97)
!2180 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2170, file: !448, line: 253, type: !474)
!2181 = !DILocalVariable(name: "flags", arg: 6, scope: !2170, file: !448, line: 253, type: !95)
!2182 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2170, file: !448, line: 254, type: !2173)
!2183 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2170, file: !448, line: 255, type: !70)
!2184 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2170, file: !448, line: 256, type: !70)
!2185 = !DILocalVariable(name: "unibyte_locale", scope: !2170, file: !448, line: 258, type: !219)
!2186 = !DILocalVariable(name: "len", scope: !2170, file: !448, line: 260, type: !97)
!2187 = !DILocalVariable(name: "orig_buffersize", scope: !2170, file: !448, line: 261, type: !97)
!2188 = !DILocalVariable(name: "quote_string", scope: !2170, file: !448, line: 262, type: !70)
!2189 = !DILocalVariable(name: "quote_string_len", scope: !2170, file: !448, line: 263, type: !97)
!2190 = !DILocalVariable(name: "backslash_escapes", scope: !2170, file: !448, line: 264, type: !219)
!2191 = !DILocalVariable(name: "elide_outer_quotes", scope: !2170, file: !448, line: 265, type: !219)
!2192 = !DILocalVariable(name: "encountered_single_quote", scope: !2170, file: !448, line: 266, type: !219)
!2193 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2170, file: !448, line: 267, type: !219)
!2194 = !DILabel(scope: !2170, name: "process_input", file: !448, line: 308)
!2195 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2170, file: !448, line: 309, type: !219)
!2196 = !DILocalVariable(name: "lq", scope: !2197, file: !448, line: 361, type: !70)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !448, line: 361, column: 11)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !448, line: 360, column: 13)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !448, line: 333, column: 7)
!2200 = distinct !DILexicalBlock(scope: !2170, file: !448, line: 312, column: 5)
!2201 = !DILocalVariable(name: "i", scope: !2202, file: !448, line: 395, type: !97)
!2202 = distinct !DILexicalBlock(scope: !2170, file: !448, line: 395, column: 3)
!2203 = !DILocalVariable(name: "is_right_quote", scope: !2204, file: !448, line: 397, type: !219)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !448, line: 396, column: 5)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !448, line: 395, column: 3)
!2206 = !DILocalVariable(name: "escaping", scope: !2204, file: !448, line: 398, type: !219)
!2207 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2204, file: !448, line: 399, type: !219)
!2208 = !DILocalVariable(name: "c", scope: !2204, file: !448, line: 417, type: !100)
!2209 = !DILabel(scope: !2210, name: "c_and_shell_escape", file: !448, line: 502)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !448, line: 478, column: 9)
!2211 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 419, column: 9)
!2212 = !DILabel(scope: !2210, name: "c_escape", file: !448, line: 507)
!2213 = !DILocalVariable(name: "m", scope: !2214, file: !448, line: 598, type: !97)
!2214 = distinct !DILexicalBlock(scope: !2211, file: !448, line: 596, column: 11)
!2215 = !DILocalVariable(name: "printable", scope: !2214, file: !448, line: 600, type: !219)
!2216 = !DILocalVariable(name: "mbs", scope: !2217, file: !448, line: 609, type: !535)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !448, line: 608, column: 15)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !448, line: 602, column: 17)
!2219 = !DILocalVariable(name: "w", scope: !2220, file: !448, line: 618, type: !428)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !448, line: 617, column: 19)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !448, line: 616, column: 17)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !448, line: 616, column: 17)
!2223 = !DILocalVariable(name: "bytes", scope: !2220, file: !448, line: 619, type: !97)
!2224 = !DILocalVariable(name: "j", scope: !2225, file: !448, line: 648, type: !97)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !448, line: 648, column: 29)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !448, line: 647, column: 27)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !448, line: 645, column: 29)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !448, line: 636, column: 23)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !448, line: 628, column: 30)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !448, line: 623, column: 30)
!2231 = distinct !DILexicalBlock(scope: !2220, file: !448, line: 621, column: 25)
!2232 = !DILocalVariable(name: "ilim", scope: !2233, file: !448, line: 674, type: !97)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !448, line: 671, column: 15)
!2234 = distinct !DILexicalBlock(scope: !2214, file: !448, line: 670, column: 17)
!2235 = !DILabel(scope: !2204, name: "store_escape", file: !448, line: 709)
!2236 = !DILabel(scope: !2204, name: "store_c", file: !448, line: 712)
!2237 = !DILabel(scope: !2170, name: "force_outer_quoting_style", file: !448, line: 753)
!2238 = distinct !DIAssignID()
!2239 = distinct !DIAssignID()
!2240 = distinct !DIAssignID()
!2241 = distinct !DIAssignID()
!2242 = distinct !DIAssignID()
!2243 = !DILocation(line: 0, scope: !2217)
!2244 = distinct !DIAssignID()
!2245 = !DILocation(line: 0, scope: !2220)
!2246 = !DILocation(line: 0, scope: !2170)
!2247 = !DILocation(line: 258, column: 25, scope: !2170)
!2248 = !DILocation(line: 258, column: 36, scope: !2170)
!2249 = !DILocation(line: 265, column: 8, scope: !2170)
!2250 = !DILocation(line: 267, column: 3, scope: !2170)
!2251 = !DILocation(line: 261, column: 10, scope: !2170)
!2252 = !DILocation(line: 262, column: 15, scope: !2170)
!2253 = !DILocation(line: 263, column: 10, scope: !2170)
!2254 = !DILocation(line: 264, column: 8, scope: !2170)
!2255 = !DILocation(line: 266, column: 8, scope: !2170)
!2256 = !DILocation(line: 267, column: 8, scope: !2170)
!2257 = !DILocation(line: 308, column: 2, scope: !2170)
!2258 = !DILocation(line: 311, column: 3, scope: !2170)
!2259 = !DILocation(line: 318, column: 11, scope: !2200)
!2260 = !DILocation(line: 318, column: 12, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2200, file: !448, line: 318, column: 11)
!2262 = !DILocation(line: 319, column: 9, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !448, line: 319, column: 9)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !448, line: 319, column: 9)
!2265 = !DILocation(line: 319, column: 9, scope: !2264)
!2266 = !DILocation(line: 0, scope: !526, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 357, column: 26, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !448, line: 335, column: 11)
!2269 = distinct !DILexicalBlock(scope: !2199, file: !448, line: 334, column: 13)
!2270 = !DILocation(line: 199, column: 29, scope: !526, inlinedAt: !2267)
!2271 = !DILocation(line: 201, column: 19, scope: !2272, inlinedAt: !2267)
!2272 = distinct !DILexicalBlock(scope: !526, file: !448, line: 201, column: 7)
!2273 = !DILocation(line: 201, column: 7, scope: !526, inlinedAt: !2267)
!2274 = !DILocation(line: 229, column: 3, scope: !526, inlinedAt: !2267)
!2275 = !DILocation(line: 230, column: 3, scope: !526, inlinedAt: !2267)
!2276 = !DILocalVariable(name: "ps", arg: 1, scope: !2277, file: !2018, line: 1135, type: !2280)
!2277 = distinct !DISubprogram(name: "mbszero", scope: !2018, file: !2018, line: 1135, type: !2278, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2281)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2280}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!2281 = !{!2276}
!2282 = !DILocation(line: 0, scope: !2277, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 230, column: 18, scope: !526, inlinedAt: !2267)
!2284 = !DILocalVariable(name: "__dest", arg: 1, scope: !2285, file: !1097, line: 57, type: !94)
!2285 = distinct !DISubprogram(name: "memset", scope: !1097, file: !1097, line: 57, type: !2027, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2286)
!2286 = !{!2284, !2287, !2288}
!2287 = !DILocalVariable(name: "__ch", arg: 2, scope: !2285, file: !1097, line: 57, type: !95)
!2288 = !DILocalVariable(name: "__len", arg: 3, scope: !2285, file: !1097, line: 57, type: !97)
!2289 = !DILocation(line: 0, scope: !2285, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 1137, column: 3, scope: !2277, inlinedAt: !2283)
!2291 = !DILocation(line: 59, column: 10, scope: !2285, inlinedAt: !2290)
!2292 = !DILocation(line: 231, column: 7, scope: !2293, inlinedAt: !2267)
!2293 = distinct !DILexicalBlock(scope: !526, file: !448, line: 231, column: 7)
!2294 = !DILocation(line: 231, column: 40, scope: !2293, inlinedAt: !2267)
!2295 = !DILocation(line: 231, column: 45, scope: !2293, inlinedAt: !2267)
!2296 = !DILocation(line: 235, column: 1, scope: !526, inlinedAt: !2267)
!2297 = !DILocation(line: 0, scope: !526, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 358, column: 27, scope: !2268)
!2299 = !DILocation(line: 199, column: 29, scope: !526, inlinedAt: !2298)
!2300 = !DILocation(line: 201, column: 19, scope: !2272, inlinedAt: !2298)
!2301 = !DILocation(line: 201, column: 7, scope: !526, inlinedAt: !2298)
!2302 = !DILocation(line: 229, column: 3, scope: !526, inlinedAt: !2298)
!2303 = !DILocation(line: 230, column: 3, scope: !526, inlinedAt: !2298)
!2304 = !DILocation(line: 0, scope: !2277, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 230, column: 18, scope: !526, inlinedAt: !2298)
!2306 = !DILocation(line: 0, scope: !2285, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 1137, column: 3, scope: !2277, inlinedAt: !2305)
!2308 = !DILocation(line: 59, column: 10, scope: !2285, inlinedAt: !2307)
!2309 = !DILocation(line: 231, column: 7, scope: !2293, inlinedAt: !2298)
!2310 = !DILocation(line: 231, column: 40, scope: !2293, inlinedAt: !2298)
!2311 = !DILocation(line: 231, column: 45, scope: !2293, inlinedAt: !2298)
!2312 = !DILocation(line: 235, column: 1, scope: !526, inlinedAt: !2298)
!2313 = !DILocation(line: 360, column: 14, scope: !2198)
!2314 = !DILocation(line: 360, column: 13, scope: !2199)
!2315 = !DILocation(line: 0, scope: !2197)
!2316 = !DILocation(line: 361, column: 45, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2197, file: !448, line: 361, column: 11)
!2318 = !DILocation(line: 361, column: 11, scope: !2197)
!2319 = !DILocation(line: 362, column: 13, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !448, line: 362, column: 13)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !448, line: 362, column: 13)
!2322 = !DILocation(line: 362, column: 13, scope: !2321)
!2323 = !DILocation(line: 361, column: 52, scope: !2317)
!2324 = distinct !{!2324, !2318, !2325, !921}
!2325 = !DILocation(line: 362, column: 13, scope: !2197)
!2326 = !DILocation(line: 260, column: 10, scope: !2170)
!2327 = !DILocation(line: 365, column: 28, scope: !2199)
!2328 = !DILocation(line: 367, column: 7, scope: !2200)
!2329 = !DILocation(line: 370, column: 7, scope: !2200)
!2330 = !DILocation(line: 373, column: 7, scope: !2200)
!2331 = !DILocation(line: 376, column: 12, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2200, file: !448, line: 376, column: 11)
!2333 = !DILocation(line: 376, column: 11, scope: !2200)
!2334 = !DILocation(line: 381, column: 12, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2200, file: !448, line: 381, column: 11)
!2336 = !DILocation(line: 381, column: 11, scope: !2200)
!2337 = !DILocation(line: 382, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !448, line: 382, column: 9)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !448, line: 382, column: 9)
!2340 = !DILocation(line: 382, column: 9, scope: !2339)
!2341 = !DILocation(line: 389, column: 7, scope: !2200)
!2342 = !DILocation(line: 392, column: 7, scope: !2200)
!2343 = !DILocation(line: 0, scope: !2202)
!2344 = !DILocation(line: 395, column: 8, scope: !2202)
!2345 = !DILocation(line: 309, column: 8, scope: !2170)
!2346 = !DILocation(line: 395, scope: !2202)
!2347 = !DILocation(line: 395, column: 34, scope: !2205)
!2348 = !DILocation(line: 395, column: 26, scope: !2205)
!2349 = !DILocation(line: 395, column: 48, scope: !2205)
!2350 = !DILocation(line: 395, column: 55, scope: !2205)
!2351 = !DILocation(line: 395, column: 3, scope: !2202)
!2352 = !DILocation(line: 395, column: 67, scope: !2205)
!2353 = !DILocation(line: 0, scope: !2204)
!2354 = !DILocation(line: 402, column: 11, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 401, column: 11)
!2356 = !DILocation(line: 404, column: 17, scope: !2355)
!2357 = !DILocation(line: 405, column: 39, scope: !2355)
!2358 = !DILocation(line: 409, column: 32, scope: !2355)
!2359 = !DILocation(line: 405, column: 19, scope: !2355)
!2360 = !DILocation(line: 405, column: 15, scope: !2355)
!2361 = !DILocation(line: 410, column: 11, scope: !2355)
!2362 = !DILocation(line: 410, column: 25, scope: !2355)
!2363 = !DILocalVariable(name: "__s1", arg: 1, scope: !2364, file: !887, line: 974, type: !1022)
!2364 = distinct !DISubprogram(name: "memeq", scope: !887, file: !887, line: 974, type: !1987, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2365)
!2365 = !{!2363, !2366, !2367}
!2366 = !DILocalVariable(name: "__s2", arg: 2, scope: !2364, file: !887, line: 974, type: !1022)
!2367 = !DILocalVariable(name: "__n", arg: 3, scope: !2364, file: !887, line: 974, type: !97)
!2368 = !DILocation(line: 0, scope: !2364, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 410, column: 14, scope: !2355)
!2370 = !DILocation(line: 976, column: 11, scope: !2364, inlinedAt: !2369)
!2371 = !DILocation(line: 976, column: 10, scope: !2364, inlinedAt: !2369)
!2372 = !DILocation(line: 401, column: 11, scope: !2204)
!2373 = !DILocation(line: 417, column: 25, scope: !2204)
!2374 = !DILocation(line: 418, column: 7, scope: !2204)
!2375 = !DILocation(line: 421, column: 15, scope: !2211)
!2376 = !DILocation(line: 423, column: 15, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !448, line: 423, column: 15)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !448, line: 422, column: 13)
!2379 = distinct !DILexicalBlock(scope: !2211, file: !448, line: 421, column: 15)
!2380 = !DILocation(line: 423, column: 15, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !448, line: 423, column: 15)
!2382 = !DILocation(line: 423, column: 15, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !448, line: 423, column: 15)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !448, line: 423, column: 15)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !448, line: 423, column: 15)
!2386 = !DILocation(line: 423, column: 15, scope: !2384)
!2387 = !DILocation(line: 423, column: 15, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !448, line: 423, column: 15)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !448, line: 423, column: 15)
!2390 = !DILocation(line: 423, column: 15, scope: !2389)
!2391 = !DILocation(line: 423, column: 15, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !448, line: 423, column: 15)
!2393 = distinct !DILexicalBlock(scope: !2385, file: !448, line: 423, column: 15)
!2394 = !DILocation(line: 423, column: 15, scope: !2393)
!2395 = !DILocation(line: 423, column: 15, scope: !2385)
!2396 = !DILocation(line: 423, column: 15, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !448, line: 423, column: 15)
!2398 = distinct !DILexicalBlock(scope: !2377, file: !448, line: 423, column: 15)
!2399 = !DILocation(line: 423, column: 15, scope: !2398)
!2400 = !DILocation(line: 431, column: 19, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2378, file: !448, line: 430, column: 19)
!2402 = !DILocation(line: 431, column: 24, scope: !2401)
!2403 = !DILocation(line: 431, column: 28, scope: !2401)
!2404 = !DILocation(line: 431, column: 38, scope: !2401)
!2405 = !DILocation(line: 431, column: 48, scope: !2401)
!2406 = !DILocation(line: 431, column: 59, scope: !2401)
!2407 = !DILocation(line: 433, column: 19, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !448, line: 433, column: 19)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !448, line: 433, column: 19)
!2410 = distinct !DILexicalBlock(scope: !2401, file: !448, line: 432, column: 17)
!2411 = !DILocation(line: 433, column: 19, scope: !2409)
!2412 = !DILocation(line: 434, column: 19, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !448, line: 434, column: 19)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !448, line: 434, column: 19)
!2415 = !DILocation(line: 434, column: 19, scope: !2414)
!2416 = !DILocation(line: 435, column: 17, scope: !2410)
!2417 = !DILocation(line: 442, column: 20, scope: !2379)
!2418 = !DILocation(line: 447, column: 11, scope: !2211)
!2419 = !DILocation(line: 450, column: 19, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2211, file: !448, line: 448, column: 13)
!2421 = !DILocation(line: 456, column: 19, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2420, file: !448, line: 455, column: 19)
!2423 = !DILocation(line: 456, column: 24, scope: !2422)
!2424 = !DILocation(line: 456, column: 28, scope: !2422)
!2425 = !DILocation(line: 456, column: 38, scope: !2422)
!2426 = !DILocation(line: 456, column: 41, scope: !2422)
!2427 = !DILocation(line: 456, column: 52, scope: !2422)
!2428 = !DILocation(line: 455, column: 19, scope: !2420)
!2429 = !DILocation(line: 457, column: 25, scope: !2422)
!2430 = !DILocation(line: 457, column: 17, scope: !2422)
!2431 = !DILocation(line: 464, column: 25, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2422, file: !448, line: 458, column: 19)
!2433 = !DILocation(line: 468, column: 21, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !448, line: 468, column: 21)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !448, line: 468, column: 21)
!2436 = !DILocation(line: 468, column: 21, scope: !2435)
!2437 = !DILocation(line: 469, column: 21, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !448, line: 469, column: 21)
!2439 = distinct !DILexicalBlock(scope: !2432, file: !448, line: 469, column: 21)
!2440 = !DILocation(line: 469, column: 21, scope: !2439)
!2441 = !DILocation(line: 470, column: 21, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !448, line: 470, column: 21)
!2443 = distinct !DILexicalBlock(scope: !2432, file: !448, line: 470, column: 21)
!2444 = !DILocation(line: 470, column: 21, scope: !2443)
!2445 = !DILocation(line: 471, column: 21, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !448, line: 471, column: 21)
!2447 = distinct !DILexicalBlock(scope: !2432, file: !448, line: 471, column: 21)
!2448 = !DILocation(line: 471, column: 21, scope: !2447)
!2449 = !DILocation(line: 472, column: 21, scope: !2432)
!2450 = !DILocation(line: 482, column: 33, scope: !2210)
!2451 = !DILocation(line: 483, column: 33, scope: !2210)
!2452 = !DILocation(line: 485, column: 33, scope: !2210)
!2453 = !DILocation(line: 486, column: 33, scope: !2210)
!2454 = !DILocation(line: 487, column: 33, scope: !2210)
!2455 = !DILocation(line: 490, column: 17, scope: !2210)
!2456 = !DILocation(line: 492, column: 21, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !448, line: 491, column: 15)
!2458 = distinct !DILexicalBlock(scope: !2210, file: !448, line: 490, column: 17)
!2459 = !DILocation(line: 499, column: 35, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2210, file: !448, line: 499, column: 17)
!2461 = !DILocation(line: 499, column: 57, scope: !2460)
!2462 = !DILocation(line: 0, scope: !2210)
!2463 = !DILocation(line: 502, column: 11, scope: !2210)
!2464 = !DILocation(line: 504, column: 17, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2210, file: !448, line: 503, column: 17)
!2466 = !DILocation(line: 507, column: 11, scope: !2210)
!2467 = !DILocation(line: 508, column: 17, scope: !2210)
!2468 = !DILocation(line: 517, column: 15, scope: !2211)
!2469 = !DILocation(line: 517, column: 40, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2211, file: !448, line: 517, column: 15)
!2471 = !DILocation(line: 517, column: 47, scope: !2470)
!2472 = !DILocation(line: 517, column: 18, scope: !2470)
!2473 = !DILocation(line: 521, column: 17, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2211, file: !448, line: 521, column: 15)
!2475 = !DILocation(line: 521, column: 15, scope: !2211)
!2476 = !DILocation(line: 525, column: 11, scope: !2211)
!2477 = !DILocation(line: 537, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2211, file: !448, line: 536, column: 15)
!2479 = !DILocation(line: 544, column: 15, scope: !2211)
!2480 = !DILocation(line: 546, column: 19, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !448, line: 545, column: 13)
!2482 = distinct !DILexicalBlock(scope: !2211, file: !448, line: 544, column: 15)
!2483 = !DILocation(line: 549, column: 19, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !448, line: 549, column: 19)
!2485 = !DILocation(line: 549, column: 30, scope: !2484)
!2486 = !DILocation(line: 558, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !448, line: 558, column: 15)
!2488 = distinct !DILexicalBlock(scope: !2481, file: !448, line: 558, column: 15)
!2489 = !DILocation(line: 558, column: 15, scope: !2488)
!2490 = !DILocation(line: 559, column: 15, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !448, line: 559, column: 15)
!2492 = distinct !DILexicalBlock(scope: !2481, file: !448, line: 559, column: 15)
!2493 = !DILocation(line: 559, column: 15, scope: !2492)
!2494 = !DILocation(line: 560, column: 15, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !448, line: 560, column: 15)
!2496 = distinct !DILexicalBlock(scope: !2481, file: !448, line: 560, column: 15)
!2497 = !DILocation(line: 560, column: 15, scope: !2496)
!2498 = !DILocation(line: 562, column: 13, scope: !2481)
!2499 = !DILocation(line: 602, column: 17, scope: !2214)
!2500 = !DILocation(line: 0, scope: !2214)
!2501 = !DILocation(line: 605, column: 29, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2218, file: !448, line: 603, column: 15)
!2503 = !DILocation(line: 605, column: 27, scope: !2502)
!2504 = !DILocation(line: 606, column: 15, scope: !2502)
!2505 = !DILocation(line: 609, column: 17, scope: !2217)
!2506 = !DILocation(line: 0, scope: !2277, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 609, column: 32, scope: !2217)
!2508 = !DILocation(line: 0, scope: !2285, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 1137, column: 3, scope: !2277, inlinedAt: !2507)
!2510 = !DILocation(line: 59, column: 10, scope: !2285, inlinedAt: !2509)
!2511 = !DILocation(line: 613, column: 29, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2217, file: !448, line: 613, column: 21)
!2513 = !DILocation(line: 613, column: 21, scope: !2217)
!2514 = !DILocation(line: 614, column: 29, scope: !2512)
!2515 = !DILocation(line: 614, column: 19, scope: !2512)
!2516 = !DILocation(line: 618, column: 21, scope: !2220)
!2517 = !DILocation(line: 620, column: 54, scope: !2220)
!2518 = !DILocation(line: 619, column: 36, scope: !2220)
!2519 = !DILocation(line: 621, column: 25, scope: !2220)
!2520 = !DILocation(line: 631, column: 38, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2229, file: !448, line: 629, column: 23)
!2522 = !DILocation(line: 631, column: 48, scope: !2521)
!2523 = !DILocation(line: 626, column: 25, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2230, file: !448, line: 624, column: 23)
!2525 = !DILocation(line: 631, column: 51, scope: !2521)
!2526 = !DILocation(line: 631, column: 25, scope: !2521)
!2527 = !DILocation(line: 632, column: 28, scope: !2521)
!2528 = !DILocation(line: 631, column: 34, scope: !2521)
!2529 = distinct !{!2529, !2526, !2527, !921}
!2530 = !DILocation(line: 0, scope: !2225)
!2531 = !DILocation(line: 646, column: 29, scope: !2227)
!2532 = !DILocation(line: 649, column: 39, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2225, file: !448, line: 648, column: 29)
!2534 = !DILocation(line: 649, column: 31, scope: !2533)
!2535 = !DILocation(line: 648, column: 60, scope: !2533)
!2536 = !DILocation(line: 648, column: 50, scope: !2533)
!2537 = !DILocation(line: 648, column: 29, scope: !2225)
!2538 = distinct !{!2538, !2537, !2539, !921}
!2539 = !DILocation(line: 654, column: 33, scope: !2225)
!2540 = !DILocation(line: 657, column: 43, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2228, file: !448, line: 657, column: 29)
!2542 = !DILocalVariable(name: "wc", arg: 1, scope: !2543, file: !2544, line: 865, type: !2547)
!2543 = distinct !DISubprogram(name: "c32isprint", scope: !2544, file: !2544, line: 865, type: !2545, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2549)
!2544 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!95, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2548, line: 20, baseType: !76)
!2548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2549 = !{!2542}
!2550 = !DILocation(line: 0, scope: !2543, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 657, column: 31, scope: !2541)
!2552 = !DILocation(line: 871, column: 10, scope: !2543, inlinedAt: !2551)
!2553 = !DILocation(line: 657, column: 31, scope: !2541)
!2554 = !DILocation(line: 664, column: 23, scope: !2220)
!2555 = !DILocation(line: 665, column: 19, scope: !2221)
!2556 = !DILocation(line: 666, column: 15, scope: !2218)
!2557 = !DILocation(line: 0, scope: !2218)
!2558 = !DILocation(line: 670, column: 19, scope: !2234)
!2559 = !DILocation(line: 670, column: 23, scope: !2234)
!2560 = !DILocation(line: 674, column: 33, scope: !2233)
!2561 = !DILocation(line: 0, scope: !2233)
!2562 = !DILocation(line: 676, column: 17, scope: !2233)
!2563 = !DILocation(line: 398, column: 12, scope: !2204)
!2564 = !DILocation(line: 678, column: 43, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !448, line: 678, column: 25)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !448, line: 677, column: 19)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !448, line: 676, column: 17)
!2568 = distinct !DILexicalBlock(scope: !2233, file: !448, line: 676, column: 17)
!2569 = !DILocation(line: 680, column: 25, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !448, line: 680, column: 25)
!2571 = distinct !DILexicalBlock(scope: !2565, file: !448, line: 679, column: 23)
!2572 = !DILocation(line: 680, column: 25, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !448, line: 680, column: 25)
!2574 = !DILocation(line: 680, column: 25, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !448, line: 680, column: 25)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !448, line: 680, column: 25)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !448, line: 680, column: 25)
!2578 = !DILocation(line: 680, column: 25, scope: !2576)
!2579 = !DILocation(line: 680, column: 25, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !448, line: 680, column: 25)
!2581 = distinct !DILexicalBlock(scope: !2577, file: !448, line: 680, column: 25)
!2582 = !DILocation(line: 680, column: 25, scope: !2581)
!2583 = !DILocation(line: 680, column: 25, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !448, line: 680, column: 25)
!2585 = distinct !DILexicalBlock(scope: !2577, file: !448, line: 680, column: 25)
!2586 = !DILocation(line: 680, column: 25, scope: !2585)
!2587 = !DILocation(line: 680, column: 25, scope: !2577)
!2588 = !DILocation(line: 680, column: 25, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !448, line: 680, column: 25)
!2590 = distinct !DILexicalBlock(scope: !2570, file: !448, line: 680, column: 25)
!2591 = !DILocation(line: 680, column: 25, scope: !2590)
!2592 = !DILocation(line: 681, column: 25, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !448, line: 681, column: 25)
!2594 = distinct !DILexicalBlock(scope: !2571, file: !448, line: 681, column: 25)
!2595 = !DILocation(line: 681, column: 25, scope: !2594)
!2596 = !DILocation(line: 682, column: 25, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !448, line: 682, column: 25)
!2598 = distinct !DILexicalBlock(scope: !2571, file: !448, line: 682, column: 25)
!2599 = !DILocation(line: 682, column: 25, scope: !2598)
!2600 = !DILocation(line: 683, column: 38, scope: !2571)
!2601 = !DILocation(line: 683, column: 33, scope: !2571)
!2602 = !DILocation(line: 684, column: 23, scope: !2571)
!2603 = !DILocation(line: 685, column: 30, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2565, file: !448, line: 685, column: 30)
!2605 = !DILocation(line: 685, column: 30, scope: !2565)
!2606 = !DILocation(line: 687, column: 25, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !448, line: 687, column: 25)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !448, line: 687, column: 25)
!2609 = distinct !DILexicalBlock(scope: !2604, file: !448, line: 686, column: 23)
!2610 = !DILocation(line: 687, column: 25, scope: !2608)
!2611 = !DILocation(line: 689, column: 23, scope: !2609)
!2612 = !DILocation(line: 690, column: 35, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2566, file: !448, line: 690, column: 25)
!2614 = !DILocation(line: 690, column: 30, scope: !2613)
!2615 = !DILocation(line: 690, column: 25, scope: !2566)
!2616 = !DILocation(line: 692, column: 21, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !448, line: 692, column: 21)
!2618 = distinct !DILexicalBlock(scope: !2566, file: !448, line: 692, column: 21)
!2619 = !DILocation(line: 692, column: 21, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !448, line: 692, column: 21)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !448, line: 692, column: 21)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !448, line: 692, column: 21)
!2623 = !DILocation(line: 692, column: 21, scope: !2621)
!2624 = !DILocation(line: 692, column: 21, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !448, line: 692, column: 21)
!2626 = distinct !DILexicalBlock(scope: !2622, file: !448, line: 692, column: 21)
!2627 = !DILocation(line: 692, column: 21, scope: !2626)
!2628 = !DILocation(line: 692, column: 21, scope: !2622)
!2629 = !DILocation(line: 0, scope: !2566)
!2630 = !DILocation(line: 693, column: 21, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !448, line: 693, column: 21)
!2632 = distinct !DILexicalBlock(scope: !2566, file: !448, line: 693, column: 21)
!2633 = !DILocation(line: 693, column: 21, scope: !2632)
!2634 = !DILocation(line: 694, column: 25, scope: !2566)
!2635 = !DILocation(line: 676, column: 17, scope: !2567)
!2636 = distinct !{!2636, !2637, !2638}
!2637 = !DILocation(line: 676, column: 17, scope: !2568)
!2638 = !DILocation(line: 695, column: 19, scope: !2568)
!2639 = !DILocation(line: 409, column: 30, scope: !2355)
!2640 = !DILocation(line: 702, column: 34, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 702, column: 11)
!2642 = !DILocation(line: 704, column: 14, scope: !2641)
!2643 = !DILocation(line: 705, column: 14, scope: !2641)
!2644 = !DILocation(line: 705, column: 35, scope: !2641)
!2645 = !DILocation(line: 705, column: 17, scope: !2641)
!2646 = !DILocation(line: 705, column: 47, scope: !2641)
!2647 = !DILocation(line: 705, column: 65, scope: !2641)
!2648 = !DILocation(line: 706, column: 11, scope: !2641)
!2649 = !DILocation(line: 702, column: 11, scope: !2204)
!2650 = !DILocation(line: 395, column: 15, scope: !2202)
!2651 = !DILocation(line: 709, column: 5, scope: !2204)
!2652 = !DILocation(line: 710, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 710, column: 7)
!2654 = !DILocation(line: 710, column: 7, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2653, file: !448, line: 710, column: 7)
!2656 = !DILocation(line: 710, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !448, line: 710, column: 7)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !448, line: 710, column: 7)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !448, line: 710, column: 7)
!2660 = !DILocation(line: 710, column: 7, scope: !2658)
!2661 = !DILocation(line: 710, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !448, line: 710, column: 7)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !448, line: 710, column: 7)
!2664 = !DILocation(line: 710, column: 7, scope: !2663)
!2665 = !DILocation(line: 710, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !448, line: 710, column: 7)
!2667 = distinct !DILexicalBlock(scope: !2659, file: !448, line: 710, column: 7)
!2668 = !DILocation(line: 710, column: 7, scope: !2667)
!2669 = !DILocation(line: 710, column: 7, scope: !2659)
!2670 = !DILocation(line: 710, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !448, line: 710, column: 7)
!2672 = distinct !DILexicalBlock(scope: !2653, file: !448, line: 710, column: 7)
!2673 = !DILocation(line: 710, column: 7, scope: !2672)
!2674 = !DILocation(line: 712, column: 5, scope: !2204)
!2675 = !DILocation(line: 713, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !448, line: 713, column: 7)
!2677 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 713, column: 7)
!2678 = !DILocation(line: 417, column: 21, scope: !2204)
!2679 = !DILocation(line: 713, column: 7, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !448, line: 713, column: 7)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !448, line: 713, column: 7)
!2682 = distinct !DILexicalBlock(scope: !2676, file: !448, line: 713, column: 7)
!2683 = !DILocation(line: 713, column: 7, scope: !2681)
!2684 = !DILocation(line: 713, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !448, line: 713, column: 7)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !448, line: 713, column: 7)
!2687 = !DILocation(line: 713, column: 7, scope: !2686)
!2688 = !DILocation(line: 713, column: 7, scope: !2682)
!2689 = !DILocation(line: 714, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !448, line: 714, column: 7)
!2691 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 714, column: 7)
!2692 = !DILocation(line: 714, column: 7, scope: !2691)
!2693 = !DILocation(line: 716, column: 13, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 716, column: 11)
!2695 = !DILocation(line: 716, column: 11, scope: !2204)
!2696 = !DILocation(line: 718, column: 5, scope: !2205)
!2697 = !DILocation(line: 395, column: 82, scope: !2205)
!2698 = !DILocation(line: 395, column: 3, scope: !2205)
!2699 = distinct !{!2699, !2351, !2700, !921}
!2700 = !DILocation(line: 718, column: 5, scope: !2202)
!2701 = !DILocation(line: 720, column: 11, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2170, file: !448, line: 720, column: 7)
!2703 = !DILocation(line: 720, column: 16, scope: !2702)
!2704 = !DILocation(line: 728, column: 51, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2170, file: !448, line: 728, column: 7)
!2706 = !DILocation(line: 731, column: 11, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !448, line: 731, column: 11)
!2708 = distinct !DILexicalBlock(scope: !2705, file: !448, line: 730, column: 5)
!2709 = !DILocation(line: 731, column: 11, scope: !2708)
!2710 = !DILocation(line: 732, column: 16, scope: !2707)
!2711 = !DILocation(line: 732, column: 9, scope: !2707)
!2712 = !DILocation(line: 736, column: 18, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2707, file: !448, line: 736, column: 16)
!2714 = !DILocation(line: 736, column: 29, scope: !2713)
!2715 = !DILocation(line: 745, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2170, file: !448, line: 745, column: 7)
!2717 = !DILocation(line: 745, column: 20, scope: !2716)
!2718 = !DILocation(line: 746, column: 12, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !448, line: 746, column: 5)
!2720 = distinct !DILexicalBlock(scope: !2716, file: !448, line: 746, column: 5)
!2721 = !DILocation(line: 746, column: 5, scope: !2720)
!2722 = !DILocation(line: 747, column: 7, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !448, line: 747, column: 7)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !448, line: 747, column: 7)
!2725 = !DILocation(line: 747, column: 7, scope: !2724)
!2726 = !DILocation(line: 746, column: 39, scope: !2719)
!2727 = distinct !{!2727, !2721, !2728, !921}
!2728 = !DILocation(line: 747, column: 7, scope: !2720)
!2729 = !DILocation(line: 749, column: 11, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2170, file: !448, line: 749, column: 7)
!2731 = !DILocation(line: 749, column: 7, scope: !2170)
!2732 = !DILocation(line: 750, column: 5, scope: !2730)
!2733 = !DILocation(line: 750, column: 17, scope: !2730)
!2734 = !DILocation(line: 753, column: 2, scope: !2170)
!2735 = !DILocation(line: 756, column: 51, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2170, file: !448, line: 756, column: 7)
!2737 = !DILocation(line: 756, column: 21, scope: !2736)
!2738 = !DILocation(line: 760, column: 42, scope: !2170)
!2739 = !DILocation(line: 758, column: 10, scope: !2170)
!2740 = !DILocation(line: 758, column: 3, scope: !2170)
!2741 = !DILocation(line: 762, column: 1, scope: !2170)
!2742 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !998, file: !998, line: 98, type: !2743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2743 = !DISubroutineType(types: !728)
!2744 = !DISubprogram(name: "iswprint", scope: !2745, file: !2745, line: 120, type: !2545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2745 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2746 = distinct !DISubprogram(name: "quotearg_alloc", scope: !448, file: !448, line: 788, type: !2747, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!101, !70, !97, !2063}
!2749 = !{!2750, !2751, !2752}
!2750 = !DILocalVariable(name: "arg", arg: 1, scope: !2746, file: !448, line: 788, type: !70)
!2751 = !DILocalVariable(name: "argsize", arg: 2, scope: !2746, file: !448, line: 788, type: !97)
!2752 = !DILocalVariable(name: "o", arg: 3, scope: !2746, file: !448, line: 789, type: !2063)
!2753 = !DILocation(line: 0, scope: !2746)
!2754 = !DILocalVariable(name: "arg", arg: 1, scope: !2755, file: !448, line: 801, type: !70)
!2755 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !448, file: !448, line: 801, type: !2756, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!101, !70, !97, !742, !2063}
!2758 = !{!2754, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766}
!2759 = !DILocalVariable(name: "argsize", arg: 2, scope: !2755, file: !448, line: 801, type: !97)
!2760 = !DILocalVariable(name: "size", arg: 3, scope: !2755, file: !448, line: 801, type: !742)
!2761 = !DILocalVariable(name: "o", arg: 4, scope: !2755, file: !448, line: 802, type: !2063)
!2762 = !DILocalVariable(name: "p", scope: !2755, file: !448, line: 804, type: !2063)
!2763 = !DILocalVariable(name: "saved_errno", scope: !2755, file: !448, line: 805, type: !95)
!2764 = !DILocalVariable(name: "flags", scope: !2755, file: !448, line: 807, type: !95)
!2765 = !DILocalVariable(name: "bufsize", scope: !2755, file: !448, line: 808, type: !97)
!2766 = !DILocalVariable(name: "buf", scope: !2755, file: !448, line: 812, type: !101)
!2767 = !DILocation(line: 0, scope: !2755, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 791, column: 10, scope: !2746)
!2769 = !DILocation(line: 804, column: 37, scope: !2755, inlinedAt: !2768)
!2770 = !DILocation(line: 805, column: 21, scope: !2755, inlinedAt: !2768)
!2771 = !DILocation(line: 807, column: 18, scope: !2755, inlinedAt: !2768)
!2772 = !DILocation(line: 807, column: 24, scope: !2755, inlinedAt: !2768)
!2773 = !DILocation(line: 808, column: 72, scope: !2755, inlinedAt: !2768)
!2774 = !DILocation(line: 809, column: 56, scope: !2755, inlinedAt: !2768)
!2775 = !DILocation(line: 810, column: 49, scope: !2755, inlinedAt: !2768)
!2776 = !DILocation(line: 811, column: 49, scope: !2755, inlinedAt: !2768)
!2777 = !DILocation(line: 808, column: 20, scope: !2755, inlinedAt: !2768)
!2778 = !DILocation(line: 811, column: 62, scope: !2755, inlinedAt: !2768)
!2779 = !DILocation(line: 812, column: 15, scope: !2755, inlinedAt: !2768)
!2780 = !DILocation(line: 813, column: 60, scope: !2755, inlinedAt: !2768)
!2781 = !DILocation(line: 815, column: 32, scope: !2755, inlinedAt: !2768)
!2782 = !DILocation(line: 815, column: 47, scope: !2755, inlinedAt: !2768)
!2783 = !DILocation(line: 813, column: 3, scope: !2755, inlinedAt: !2768)
!2784 = !DILocation(line: 816, column: 9, scope: !2755, inlinedAt: !2768)
!2785 = !DILocation(line: 791, column: 3, scope: !2746)
!2786 = !DILocation(line: 0, scope: !2755)
!2787 = !DILocation(line: 804, column: 37, scope: !2755)
!2788 = !DILocation(line: 805, column: 21, scope: !2755)
!2789 = !DILocation(line: 807, column: 18, scope: !2755)
!2790 = !DILocation(line: 807, column: 27, scope: !2755)
!2791 = !DILocation(line: 807, column: 24, scope: !2755)
!2792 = !DILocation(line: 808, column: 72, scope: !2755)
!2793 = !DILocation(line: 809, column: 56, scope: !2755)
!2794 = !DILocation(line: 810, column: 49, scope: !2755)
!2795 = !DILocation(line: 811, column: 49, scope: !2755)
!2796 = !DILocation(line: 808, column: 20, scope: !2755)
!2797 = !DILocation(line: 811, column: 62, scope: !2755)
!2798 = !DILocation(line: 812, column: 15, scope: !2755)
!2799 = !DILocation(line: 813, column: 60, scope: !2755)
!2800 = !DILocation(line: 815, column: 32, scope: !2755)
!2801 = !DILocation(line: 815, column: 47, scope: !2755)
!2802 = !DILocation(line: 813, column: 3, scope: !2755)
!2803 = !DILocation(line: 816, column: 9, scope: !2755)
!2804 = !DILocation(line: 817, column: 7, scope: !2755)
!2805 = !DILocation(line: 818, column: 11, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2755, file: !448, line: 817, column: 7)
!2807 = !{!1262, !1262, i64 0}
!2808 = !DILocation(line: 818, column: 5, scope: !2806)
!2809 = !DILocation(line: 819, column: 3, scope: !2755)
!2810 = distinct !DISubprogram(name: "quotearg_free", scope: !448, file: !448, line: 837, type: !361, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2811)
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "sv", scope: !2810, file: !448, line: 839, type: !549)
!2813 = !DILocalVariable(name: "i", scope: !2814, file: !448, line: 840, type: !95)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !448, line: 840, column: 3)
!2815 = !DILocation(line: 839, column: 24, scope: !2810)
!2816 = !DILocation(line: 0, scope: !2810)
!2817 = !DILocation(line: 0, scope: !2814)
!2818 = !DILocation(line: 840, column: 21, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2814, file: !448, line: 840, column: 3)
!2820 = !DILocation(line: 840, column: 3, scope: !2814)
!2821 = !DILocation(line: 842, column: 13, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2810, file: !448, line: 842, column: 7)
!2823 = !{!2824, !814, i64 8}
!2824 = !{!"slotvec", !1262, i64 0, !814, i64 8}
!2825 = !DILocation(line: 842, column: 17, scope: !2822)
!2826 = !DILocation(line: 842, column: 7, scope: !2810)
!2827 = !DILocation(line: 841, column: 17, scope: !2819)
!2828 = !DILocation(line: 841, column: 5, scope: !2819)
!2829 = !DILocation(line: 840, column: 32, scope: !2819)
!2830 = distinct !{!2830, !2820, !2831, !921}
!2831 = !DILocation(line: 841, column: 20, scope: !2814)
!2832 = !DILocation(line: 844, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2822, file: !448, line: 843, column: 5)
!2834 = !DILocation(line: 845, column: 21, scope: !2833)
!2835 = !{!2824, !1262, i64 0}
!2836 = !DILocation(line: 846, column: 20, scope: !2833)
!2837 = !DILocation(line: 847, column: 5, scope: !2833)
!2838 = !DILocation(line: 848, column: 10, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2810, file: !448, line: 848, column: 7)
!2840 = !DILocation(line: 848, column: 7, scope: !2810)
!2841 = !DILocation(line: 850, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !448, line: 849, column: 5)
!2843 = !DILocation(line: 851, column: 15, scope: !2842)
!2844 = !DILocation(line: 852, column: 5, scope: !2842)
!2845 = !DILocation(line: 853, column: 10, scope: !2810)
!2846 = !DILocation(line: 854, column: 1, scope: !2810)
!2847 = distinct !DISubprogram(name: "quotearg_n", scope: !448, file: !448, line: 919, type: !991, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2848)
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "n", arg: 1, scope: !2847, file: !448, line: 919, type: !95)
!2850 = !DILocalVariable(name: "arg", arg: 2, scope: !2847, file: !448, line: 919, type: !70)
!2851 = !DILocation(line: 0, scope: !2847)
!2852 = !DILocation(line: 921, column: 10, scope: !2847)
!2853 = !DILocation(line: 921, column: 3, scope: !2847)
!2854 = distinct !DISubprogram(name: "quotearg_n_options", scope: !448, file: !448, line: 866, type: !2855, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!101, !95, !70, !97, !2063}
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2868, !2869, !2871, !2872, !2873}
!2858 = !DILocalVariable(name: "n", arg: 1, scope: !2854, file: !448, line: 866, type: !95)
!2859 = !DILocalVariable(name: "arg", arg: 2, scope: !2854, file: !448, line: 866, type: !70)
!2860 = !DILocalVariable(name: "argsize", arg: 3, scope: !2854, file: !448, line: 866, type: !97)
!2861 = !DILocalVariable(name: "options", arg: 4, scope: !2854, file: !448, line: 867, type: !2063)
!2862 = !DILocalVariable(name: "saved_errno", scope: !2854, file: !448, line: 869, type: !95)
!2863 = !DILocalVariable(name: "sv", scope: !2854, file: !448, line: 871, type: !549)
!2864 = !DILocalVariable(name: "nslots_max", scope: !2854, file: !448, line: 873, type: !95)
!2865 = !DILocalVariable(name: "preallocated", scope: !2866, file: !448, line: 879, type: !219)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !448, line: 878, column: 5)
!2867 = distinct !DILexicalBlock(scope: !2854, file: !448, line: 877, column: 7)
!2868 = !DILocalVariable(name: "new_nslots", scope: !2866, file: !448, line: 880, type: !755)
!2869 = !DILocalVariable(name: "size", scope: !2870, file: !448, line: 891, type: !97)
!2870 = distinct !DILexicalBlock(scope: !2854, file: !448, line: 890, column: 3)
!2871 = !DILocalVariable(name: "val", scope: !2870, file: !448, line: 892, type: !101)
!2872 = !DILocalVariable(name: "flags", scope: !2870, file: !448, line: 894, type: !95)
!2873 = !DILocalVariable(name: "qsize", scope: !2870, file: !448, line: 895, type: !97)
!2874 = distinct !DIAssignID()
!2875 = !DILocation(line: 0, scope: !2866)
!2876 = !DILocation(line: 0, scope: !2854)
!2877 = !DILocation(line: 869, column: 21, scope: !2854)
!2878 = !DILocation(line: 871, column: 24, scope: !2854)
!2879 = !DILocation(line: 874, column: 17, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2854, file: !448, line: 874, column: 7)
!2881 = !DILocation(line: 875, column: 5, scope: !2880)
!2882 = !DILocation(line: 877, column: 7, scope: !2867)
!2883 = !DILocation(line: 877, column: 14, scope: !2867)
!2884 = !DILocation(line: 877, column: 7, scope: !2854)
!2885 = !DILocation(line: 879, column: 31, scope: !2866)
!2886 = !DILocation(line: 880, column: 7, scope: !2866)
!2887 = !DILocation(line: 880, column: 26, scope: !2866)
!2888 = !DILocation(line: 880, column: 13, scope: !2866)
!2889 = distinct !DIAssignID()
!2890 = !DILocation(line: 882, column: 31, scope: !2866)
!2891 = !DILocation(line: 883, column: 33, scope: !2866)
!2892 = !DILocation(line: 883, column: 42, scope: !2866)
!2893 = !DILocation(line: 883, column: 31, scope: !2866)
!2894 = !DILocation(line: 882, column: 22, scope: !2866)
!2895 = !DILocation(line: 882, column: 15, scope: !2866)
!2896 = !DILocation(line: 884, column: 11, scope: !2866)
!2897 = !DILocation(line: 885, column: 15, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2866, file: !448, line: 884, column: 11)
!2899 = !{i64 0, i64 8, !2807, i64 8, i64 8, !813}
!2900 = !DILocation(line: 885, column: 9, scope: !2898)
!2901 = !DILocation(line: 886, column: 20, scope: !2866)
!2902 = !DILocation(line: 886, column: 18, scope: !2866)
!2903 = !DILocation(line: 886, column: 32, scope: !2866)
!2904 = !DILocation(line: 886, column: 43, scope: !2866)
!2905 = !DILocation(line: 886, column: 53, scope: !2866)
!2906 = !DILocation(line: 0, scope: !2285, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 886, column: 7, scope: !2866)
!2908 = !DILocation(line: 59, column: 10, scope: !2285, inlinedAt: !2907)
!2909 = !DILocation(line: 887, column: 16, scope: !2866)
!2910 = !DILocation(line: 887, column: 14, scope: !2866)
!2911 = !DILocation(line: 888, column: 5, scope: !2867)
!2912 = !DILocation(line: 888, column: 5, scope: !2866)
!2913 = !DILocation(line: 891, column: 19, scope: !2870)
!2914 = !DILocation(line: 891, column: 25, scope: !2870)
!2915 = !DILocation(line: 0, scope: !2870)
!2916 = !DILocation(line: 892, column: 23, scope: !2870)
!2917 = !DILocation(line: 894, column: 26, scope: !2870)
!2918 = !DILocation(line: 894, column: 32, scope: !2870)
!2919 = !DILocation(line: 896, column: 55, scope: !2870)
!2920 = !DILocation(line: 897, column: 55, scope: !2870)
!2921 = !DILocation(line: 898, column: 55, scope: !2870)
!2922 = !DILocation(line: 899, column: 55, scope: !2870)
!2923 = !DILocation(line: 895, column: 20, scope: !2870)
!2924 = !DILocation(line: 901, column: 14, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2870, file: !448, line: 901, column: 9)
!2926 = !DILocation(line: 901, column: 9, scope: !2870)
!2927 = !DILocation(line: 903, column: 35, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2925, file: !448, line: 902, column: 7)
!2929 = !DILocation(line: 903, column: 20, scope: !2928)
!2930 = !DILocation(line: 904, column: 17, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2928, file: !448, line: 904, column: 13)
!2932 = !DILocation(line: 904, column: 13, scope: !2928)
!2933 = !DILocation(line: 905, column: 11, scope: !2931)
!2934 = !DILocation(line: 906, column: 27, scope: !2928)
!2935 = !DILocation(line: 906, column: 19, scope: !2928)
!2936 = !DILocation(line: 907, column: 69, scope: !2928)
!2937 = !DILocation(line: 909, column: 44, scope: !2928)
!2938 = !DILocation(line: 910, column: 44, scope: !2928)
!2939 = !DILocation(line: 907, column: 9, scope: !2928)
!2940 = !DILocation(line: 911, column: 7, scope: !2928)
!2941 = !DILocation(line: 913, column: 11, scope: !2870)
!2942 = !DILocation(line: 914, column: 5, scope: !2870)
!2943 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !448, file: !448, line: 925, type: !2944, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!101, !95, !70, !97}
!2946 = !{!2947, !2948, !2949}
!2947 = !DILocalVariable(name: "n", arg: 1, scope: !2943, file: !448, line: 925, type: !95)
!2948 = !DILocalVariable(name: "arg", arg: 2, scope: !2943, file: !448, line: 925, type: !70)
!2949 = !DILocalVariable(name: "argsize", arg: 3, scope: !2943, file: !448, line: 925, type: !97)
!2950 = !DILocation(line: 0, scope: !2943)
!2951 = !DILocation(line: 927, column: 10, scope: !2943)
!2952 = !DILocation(line: 927, column: 3, scope: !2943)
!2953 = distinct !DISubprogram(name: "quotearg", scope: !448, file: !448, line: 931, type: !1000, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2954)
!2954 = !{!2955}
!2955 = !DILocalVariable(name: "arg", arg: 1, scope: !2953, file: !448, line: 931, type: !70)
!2956 = !DILocation(line: 0, scope: !2953)
!2957 = !DILocation(line: 0, scope: !2847, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 933, column: 10, scope: !2953)
!2959 = !DILocation(line: 921, column: 10, scope: !2847, inlinedAt: !2958)
!2960 = !DILocation(line: 933, column: 3, scope: !2953)
!2961 = distinct !DISubprogram(name: "quotearg_mem", scope: !448, file: !448, line: 937, type: !2962, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!101, !70, !97}
!2964 = !{!2965, !2966}
!2965 = !DILocalVariable(name: "arg", arg: 1, scope: !2961, file: !448, line: 937, type: !70)
!2966 = !DILocalVariable(name: "argsize", arg: 2, scope: !2961, file: !448, line: 937, type: !97)
!2967 = !DILocation(line: 0, scope: !2961)
!2968 = !DILocation(line: 0, scope: !2943, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 939, column: 10, scope: !2961)
!2970 = !DILocation(line: 927, column: 10, scope: !2943, inlinedAt: !2969)
!2971 = !DILocation(line: 939, column: 3, scope: !2961)
!2972 = distinct !DISubprogram(name: "quotearg_n_style", scope: !448, file: !448, line: 943, type: !2973, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!101, !95, !474, !70}
!2975 = !{!2976, !2977, !2978, !2979}
!2976 = !DILocalVariable(name: "n", arg: 1, scope: !2972, file: !448, line: 943, type: !95)
!2977 = !DILocalVariable(name: "s", arg: 2, scope: !2972, file: !448, line: 943, type: !474)
!2978 = !DILocalVariable(name: "arg", arg: 3, scope: !2972, file: !448, line: 943, type: !70)
!2979 = !DILocalVariable(name: "o", scope: !2972, file: !448, line: 945, type: !2064)
!2980 = distinct !DIAssignID()
!2981 = !DILocation(line: 0, scope: !2972)
!2982 = !DILocation(line: 945, column: 3, scope: !2972)
!2983 = !{!2984}
!2984 = distinct !{!2984, !2985, !"quoting_options_from_style: argument 0"}
!2985 = distinct !{!2985, !"quoting_options_from_style"}
!2986 = !DILocation(line: 945, column: 36, scope: !2972)
!2987 = !DILocalVariable(name: "style", arg: 1, scope: !2988, file: !448, line: 183, type: !474)
!2988 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !448, file: !448, line: 183, type: !2989, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!501, !474}
!2991 = !{!2987, !2992}
!2992 = !DILocalVariable(name: "o", scope: !2988, file: !448, line: 185, type: !501)
!2993 = !DILocation(line: 0, scope: !2988, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 945, column: 36, scope: !2972)
!2995 = !DILocation(line: 185, column: 26, scope: !2988, inlinedAt: !2994)
!2996 = distinct !DIAssignID()
!2997 = !DILocation(line: 186, column: 13, scope: !2998, inlinedAt: !2994)
!2998 = distinct !DILexicalBlock(scope: !2988, file: !448, line: 186, column: 7)
!2999 = !DILocation(line: 186, column: 7, scope: !2988, inlinedAt: !2994)
!3000 = !DILocation(line: 187, column: 5, scope: !2998, inlinedAt: !2994)
!3001 = !DILocation(line: 188, column: 11, scope: !2988, inlinedAt: !2994)
!3002 = distinct !DIAssignID()
!3003 = !DILocation(line: 946, column: 10, scope: !2972)
!3004 = !DILocation(line: 947, column: 1, scope: !2972)
!3005 = !DILocation(line: 946, column: 3, scope: !2972)
!3006 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !448, file: !448, line: 950, type: !3007, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!101, !95, !474, !70, !97}
!3009 = !{!3010, !3011, !3012, !3013, !3014}
!3010 = !DILocalVariable(name: "n", arg: 1, scope: !3006, file: !448, line: 950, type: !95)
!3011 = !DILocalVariable(name: "s", arg: 2, scope: !3006, file: !448, line: 950, type: !474)
!3012 = !DILocalVariable(name: "arg", arg: 3, scope: !3006, file: !448, line: 951, type: !70)
!3013 = !DILocalVariable(name: "argsize", arg: 4, scope: !3006, file: !448, line: 951, type: !97)
!3014 = !DILocalVariable(name: "o", scope: !3006, file: !448, line: 953, type: !2064)
!3015 = distinct !DIAssignID()
!3016 = !DILocation(line: 0, scope: !3006)
!3017 = !DILocation(line: 953, column: 3, scope: !3006)
!3018 = !{!3019}
!3019 = distinct !{!3019, !3020, !"quoting_options_from_style: argument 0"}
!3020 = distinct !{!3020, !"quoting_options_from_style"}
!3021 = !DILocation(line: 953, column: 36, scope: !3006)
!3022 = !DILocation(line: 0, scope: !2988, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 953, column: 36, scope: !3006)
!3024 = !DILocation(line: 185, column: 26, scope: !2988, inlinedAt: !3023)
!3025 = distinct !DIAssignID()
!3026 = !DILocation(line: 186, column: 13, scope: !2998, inlinedAt: !3023)
!3027 = !DILocation(line: 186, column: 7, scope: !2988, inlinedAt: !3023)
!3028 = !DILocation(line: 187, column: 5, scope: !2998, inlinedAt: !3023)
!3029 = !DILocation(line: 188, column: 11, scope: !2988, inlinedAt: !3023)
!3030 = distinct !DIAssignID()
!3031 = !DILocation(line: 954, column: 10, scope: !3006)
!3032 = !DILocation(line: 955, column: 1, scope: !3006)
!3033 = !DILocation(line: 954, column: 3, scope: !3006)
!3034 = distinct !DISubprogram(name: "quotearg_style", scope: !448, file: !448, line: 958, type: !3035, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!101, !474, !70}
!3037 = !{!3038, !3039}
!3038 = !DILocalVariable(name: "s", arg: 1, scope: !3034, file: !448, line: 958, type: !474)
!3039 = !DILocalVariable(name: "arg", arg: 2, scope: !3034, file: !448, line: 958, type: !70)
!3040 = distinct !DIAssignID()
!3041 = !DILocation(line: 0, scope: !3034)
!3042 = !DILocation(line: 0, scope: !2972, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 960, column: 10, scope: !3034)
!3044 = !DILocation(line: 945, column: 3, scope: !2972, inlinedAt: !3043)
!3045 = !{!3046}
!3046 = distinct !{!3046, !3047, !"quoting_options_from_style: argument 0"}
!3047 = distinct !{!3047, !"quoting_options_from_style"}
!3048 = !DILocation(line: 945, column: 36, scope: !2972, inlinedAt: !3043)
!3049 = !DILocation(line: 0, scope: !2988, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 945, column: 36, scope: !2972, inlinedAt: !3043)
!3051 = !DILocation(line: 185, column: 26, scope: !2988, inlinedAt: !3050)
!3052 = distinct !DIAssignID()
!3053 = !DILocation(line: 186, column: 13, scope: !2998, inlinedAt: !3050)
!3054 = !DILocation(line: 186, column: 7, scope: !2988, inlinedAt: !3050)
!3055 = !DILocation(line: 187, column: 5, scope: !2998, inlinedAt: !3050)
!3056 = !DILocation(line: 188, column: 11, scope: !2988, inlinedAt: !3050)
!3057 = distinct !DIAssignID()
!3058 = !DILocation(line: 946, column: 10, scope: !2972, inlinedAt: !3043)
!3059 = !DILocation(line: 947, column: 1, scope: !2972, inlinedAt: !3043)
!3060 = !DILocation(line: 960, column: 3, scope: !3034)
!3061 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !448, file: !448, line: 964, type: !3062, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!101, !474, !70, !97}
!3064 = !{!3065, !3066, !3067}
!3065 = !DILocalVariable(name: "s", arg: 1, scope: !3061, file: !448, line: 964, type: !474)
!3066 = !DILocalVariable(name: "arg", arg: 2, scope: !3061, file: !448, line: 964, type: !70)
!3067 = !DILocalVariable(name: "argsize", arg: 3, scope: !3061, file: !448, line: 964, type: !97)
!3068 = distinct !DIAssignID()
!3069 = !DILocation(line: 0, scope: !3061)
!3070 = !DILocation(line: 0, scope: !3006, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 966, column: 10, scope: !3061)
!3072 = !DILocation(line: 953, column: 3, scope: !3006, inlinedAt: !3071)
!3073 = !{!3074}
!3074 = distinct !{!3074, !3075, !"quoting_options_from_style: argument 0"}
!3075 = distinct !{!3075, !"quoting_options_from_style"}
!3076 = !DILocation(line: 953, column: 36, scope: !3006, inlinedAt: !3071)
!3077 = !DILocation(line: 0, scope: !2988, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 953, column: 36, scope: !3006, inlinedAt: !3071)
!3079 = !DILocation(line: 185, column: 26, scope: !2988, inlinedAt: !3078)
!3080 = distinct !DIAssignID()
!3081 = !DILocation(line: 186, column: 13, scope: !2998, inlinedAt: !3078)
!3082 = !DILocation(line: 186, column: 7, scope: !2988, inlinedAt: !3078)
!3083 = !DILocation(line: 187, column: 5, scope: !2998, inlinedAt: !3078)
!3084 = !DILocation(line: 188, column: 11, scope: !2988, inlinedAt: !3078)
!3085 = distinct !DIAssignID()
!3086 = !DILocation(line: 954, column: 10, scope: !3006, inlinedAt: !3071)
!3087 = !DILocation(line: 955, column: 1, scope: !3006, inlinedAt: !3071)
!3088 = !DILocation(line: 966, column: 3, scope: !3061)
!3089 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !448, file: !448, line: 970, type: !3090, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!101, !70, !97, !4}
!3092 = !{!3093, !3094, !3095, !3096}
!3093 = !DILocalVariable(name: "arg", arg: 1, scope: !3089, file: !448, line: 970, type: !70)
!3094 = !DILocalVariable(name: "argsize", arg: 2, scope: !3089, file: !448, line: 970, type: !97)
!3095 = !DILocalVariable(name: "ch", arg: 3, scope: !3089, file: !448, line: 970, type: !4)
!3096 = !DILocalVariable(name: "options", scope: !3089, file: !448, line: 972, type: !501)
!3097 = distinct !DIAssignID()
!3098 = !DILocation(line: 0, scope: !3089)
!3099 = !DILocation(line: 972, column: 3, scope: !3089)
!3100 = !DILocation(line: 973, column: 13, scope: !3089)
!3101 = !{i64 0, i64 4, !874, i64 4, i64 4, !874, i64 8, i64 32, !883, i64 40, i64 8, !813, i64 48, i64 8, !813}
!3102 = distinct !DIAssignID()
!3103 = !DILocation(line: 0, scope: !2083, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 974, column: 3, scope: !3089)
!3105 = !DILocation(line: 147, column: 41, scope: !2083, inlinedAt: !3104)
!3106 = !DILocation(line: 147, column: 62, scope: !2083, inlinedAt: !3104)
!3107 = !DILocation(line: 147, column: 57, scope: !2083, inlinedAt: !3104)
!3108 = !DILocation(line: 148, column: 15, scope: !2083, inlinedAt: !3104)
!3109 = !DILocation(line: 149, column: 21, scope: !2083, inlinedAt: !3104)
!3110 = !DILocation(line: 149, column: 24, scope: !2083, inlinedAt: !3104)
!3111 = !DILocation(line: 150, column: 19, scope: !2083, inlinedAt: !3104)
!3112 = !DILocation(line: 150, column: 24, scope: !2083, inlinedAt: !3104)
!3113 = !DILocation(line: 150, column: 6, scope: !2083, inlinedAt: !3104)
!3114 = !DILocation(line: 975, column: 10, scope: !3089)
!3115 = !DILocation(line: 976, column: 1, scope: !3089)
!3116 = !DILocation(line: 975, column: 3, scope: !3089)
!3117 = distinct !DISubprogram(name: "quotearg_char", scope: !448, file: !448, line: 979, type: !3118, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!101, !70, !4}
!3120 = !{!3121, !3122}
!3121 = !DILocalVariable(name: "arg", arg: 1, scope: !3117, file: !448, line: 979, type: !70)
!3122 = !DILocalVariable(name: "ch", arg: 2, scope: !3117, file: !448, line: 979, type: !4)
!3123 = distinct !DIAssignID()
!3124 = !DILocation(line: 0, scope: !3117)
!3125 = !DILocation(line: 0, scope: !3089, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 981, column: 10, scope: !3117)
!3127 = !DILocation(line: 972, column: 3, scope: !3089, inlinedAt: !3126)
!3128 = !DILocation(line: 973, column: 13, scope: !3089, inlinedAt: !3126)
!3129 = distinct !DIAssignID()
!3130 = !DILocation(line: 0, scope: !2083, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 974, column: 3, scope: !3089, inlinedAt: !3126)
!3132 = !DILocation(line: 147, column: 41, scope: !2083, inlinedAt: !3131)
!3133 = !DILocation(line: 147, column: 62, scope: !2083, inlinedAt: !3131)
!3134 = !DILocation(line: 147, column: 57, scope: !2083, inlinedAt: !3131)
!3135 = !DILocation(line: 148, column: 15, scope: !2083, inlinedAt: !3131)
!3136 = !DILocation(line: 149, column: 21, scope: !2083, inlinedAt: !3131)
!3137 = !DILocation(line: 149, column: 24, scope: !2083, inlinedAt: !3131)
!3138 = !DILocation(line: 150, column: 19, scope: !2083, inlinedAt: !3131)
!3139 = !DILocation(line: 150, column: 24, scope: !2083, inlinedAt: !3131)
!3140 = !DILocation(line: 150, column: 6, scope: !2083, inlinedAt: !3131)
!3141 = !DILocation(line: 975, column: 10, scope: !3089, inlinedAt: !3126)
!3142 = !DILocation(line: 976, column: 1, scope: !3089, inlinedAt: !3126)
!3143 = !DILocation(line: 981, column: 3, scope: !3117)
!3144 = distinct !DISubprogram(name: "quotearg_colon", scope: !448, file: !448, line: 985, type: !1000, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3145)
!3145 = !{!3146}
!3146 = !DILocalVariable(name: "arg", arg: 1, scope: !3144, file: !448, line: 985, type: !70)
!3147 = distinct !DIAssignID()
!3148 = !DILocation(line: 0, scope: !3144)
!3149 = !DILocation(line: 0, scope: !3117, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 987, column: 10, scope: !3144)
!3151 = !DILocation(line: 0, scope: !3089, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 981, column: 10, scope: !3117, inlinedAt: !3150)
!3153 = !DILocation(line: 972, column: 3, scope: !3089, inlinedAt: !3152)
!3154 = !DILocation(line: 973, column: 13, scope: !3089, inlinedAt: !3152)
!3155 = distinct !DIAssignID()
!3156 = !DILocation(line: 0, scope: !2083, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 974, column: 3, scope: !3089, inlinedAt: !3152)
!3158 = !DILocation(line: 147, column: 57, scope: !2083, inlinedAt: !3157)
!3159 = !DILocation(line: 149, column: 21, scope: !2083, inlinedAt: !3157)
!3160 = !DILocation(line: 150, column: 6, scope: !2083, inlinedAt: !3157)
!3161 = !DILocation(line: 975, column: 10, scope: !3089, inlinedAt: !3152)
!3162 = !DILocation(line: 976, column: 1, scope: !3089, inlinedAt: !3152)
!3163 = !DILocation(line: 987, column: 3, scope: !3144)
!3164 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !448, file: !448, line: 991, type: !2962, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3165)
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "arg", arg: 1, scope: !3164, file: !448, line: 991, type: !70)
!3167 = !DILocalVariable(name: "argsize", arg: 2, scope: !3164, file: !448, line: 991, type: !97)
!3168 = distinct !DIAssignID()
!3169 = !DILocation(line: 0, scope: !3164)
!3170 = !DILocation(line: 0, scope: !3089, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 993, column: 10, scope: !3164)
!3172 = !DILocation(line: 972, column: 3, scope: !3089, inlinedAt: !3171)
!3173 = !DILocation(line: 973, column: 13, scope: !3089, inlinedAt: !3171)
!3174 = distinct !DIAssignID()
!3175 = !DILocation(line: 0, scope: !2083, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 974, column: 3, scope: !3089, inlinedAt: !3171)
!3177 = !DILocation(line: 147, column: 57, scope: !2083, inlinedAt: !3176)
!3178 = !DILocation(line: 149, column: 21, scope: !2083, inlinedAt: !3176)
!3179 = !DILocation(line: 150, column: 6, scope: !2083, inlinedAt: !3176)
!3180 = !DILocation(line: 975, column: 10, scope: !3089, inlinedAt: !3171)
!3181 = !DILocation(line: 976, column: 1, scope: !3089, inlinedAt: !3171)
!3182 = !DILocation(line: 993, column: 3, scope: !3164)
!3183 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !448, file: !448, line: 997, type: !2973, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3184)
!3184 = !{!3185, !3186, !3187, !3188}
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3183, file: !448, line: 997, type: !95)
!3186 = !DILocalVariable(name: "s", arg: 2, scope: !3183, file: !448, line: 997, type: !474)
!3187 = !DILocalVariable(name: "arg", arg: 3, scope: !3183, file: !448, line: 997, type: !70)
!3188 = !DILocalVariable(name: "options", scope: !3183, file: !448, line: 999, type: !501)
!3189 = distinct !DIAssignID()
!3190 = !DILocation(line: 0, scope: !3183)
!3191 = !DILocation(line: 185, column: 26, scope: !2988, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1000, column: 13, scope: !3183)
!3193 = !DILocation(line: 999, column: 3, scope: !3183)
!3194 = !DILocation(line: 0, scope: !2988, inlinedAt: !3192)
!3195 = !DILocation(line: 186, column: 13, scope: !2998, inlinedAt: !3192)
!3196 = !DILocation(line: 186, column: 7, scope: !2988, inlinedAt: !3192)
!3197 = !DILocation(line: 187, column: 5, scope: !2998, inlinedAt: !3192)
!3198 = !{!3199}
!3199 = distinct !{!3199, !3200, !"quoting_options_from_style: argument 0"}
!3200 = distinct !{!3200, !"quoting_options_from_style"}
!3201 = !DILocation(line: 1000, column: 13, scope: !3183)
!3202 = distinct !DIAssignID()
!3203 = distinct !DIAssignID()
!3204 = !DILocation(line: 0, scope: !2083, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 1001, column: 3, scope: !3183)
!3206 = !DILocation(line: 147, column: 57, scope: !2083, inlinedAt: !3205)
!3207 = !DILocation(line: 149, column: 21, scope: !2083, inlinedAt: !3205)
!3208 = !DILocation(line: 150, column: 6, scope: !2083, inlinedAt: !3205)
!3209 = distinct !DIAssignID()
!3210 = !DILocation(line: 1002, column: 10, scope: !3183)
!3211 = !DILocation(line: 1003, column: 1, scope: !3183)
!3212 = !DILocation(line: 1002, column: 3, scope: !3183)
!3213 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !448, file: !448, line: 1006, type: !3214, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!101, !95, !70, !70, !70}
!3216 = !{!3217, !3218, !3219, !3220}
!3217 = !DILocalVariable(name: "n", arg: 1, scope: !3213, file: !448, line: 1006, type: !95)
!3218 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3213, file: !448, line: 1006, type: !70)
!3219 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3213, file: !448, line: 1007, type: !70)
!3220 = !DILocalVariable(name: "arg", arg: 4, scope: !3213, file: !448, line: 1007, type: !70)
!3221 = distinct !DIAssignID()
!3222 = !DILocation(line: 0, scope: !3213)
!3223 = !DILocalVariable(name: "o", scope: !3224, file: !448, line: 1018, type: !501)
!3224 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !448, file: !448, line: 1014, type: !3225, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!101, !95, !70, !70, !70, !97}
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3223}
!3228 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !448, line: 1014, type: !95)
!3229 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3224, file: !448, line: 1014, type: !70)
!3230 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3224, file: !448, line: 1015, type: !70)
!3231 = !DILocalVariable(name: "arg", arg: 4, scope: !3224, file: !448, line: 1016, type: !70)
!3232 = !DILocalVariable(name: "argsize", arg: 5, scope: !3224, file: !448, line: 1016, type: !97)
!3233 = !DILocation(line: 0, scope: !3224, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 1009, column: 10, scope: !3213)
!3235 = !DILocation(line: 1018, column: 3, scope: !3224, inlinedAt: !3234)
!3236 = !DILocation(line: 1018, column: 30, scope: !3224, inlinedAt: !3234)
!3237 = distinct !DIAssignID()
!3238 = distinct !DIAssignID()
!3239 = !DILocation(line: 0, scope: !2123, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 1019, column: 3, scope: !3224, inlinedAt: !3234)
!3241 = !DILocation(line: 174, column: 12, scope: !2123, inlinedAt: !3240)
!3242 = distinct !DIAssignID()
!3243 = !DILocation(line: 175, column: 8, scope: !2136, inlinedAt: !3240)
!3244 = !DILocation(line: 175, column: 19, scope: !2136, inlinedAt: !3240)
!3245 = !DILocation(line: 176, column: 5, scope: !2136, inlinedAt: !3240)
!3246 = !DILocation(line: 177, column: 6, scope: !2123, inlinedAt: !3240)
!3247 = !DILocation(line: 177, column: 17, scope: !2123, inlinedAt: !3240)
!3248 = distinct !DIAssignID()
!3249 = !DILocation(line: 178, column: 6, scope: !2123, inlinedAt: !3240)
!3250 = !DILocation(line: 178, column: 18, scope: !2123, inlinedAt: !3240)
!3251 = distinct !DIAssignID()
!3252 = !DILocation(line: 1020, column: 10, scope: !3224, inlinedAt: !3234)
!3253 = !DILocation(line: 1021, column: 1, scope: !3224, inlinedAt: !3234)
!3254 = !DILocation(line: 1009, column: 3, scope: !3213)
!3255 = distinct !DIAssignID()
!3256 = !DILocation(line: 0, scope: !3224)
!3257 = !DILocation(line: 1018, column: 3, scope: !3224)
!3258 = !DILocation(line: 1018, column: 30, scope: !3224)
!3259 = distinct !DIAssignID()
!3260 = distinct !DIAssignID()
!3261 = !DILocation(line: 0, scope: !2123, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 1019, column: 3, scope: !3224)
!3263 = !DILocation(line: 174, column: 12, scope: !2123, inlinedAt: !3262)
!3264 = distinct !DIAssignID()
!3265 = !DILocation(line: 175, column: 8, scope: !2136, inlinedAt: !3262)
!3266 = !DILocation(line: 175, column: 19, scope: !2136, inlinedAt: !3262)
!3267 = !DILocation(line: 176, column: 5, scope: !2136, inlinedAt: !3262)
!3268 = !DILocation(line: 177, column: 6, scope: !2123, inlinedAt: !3262)
!3269 = !DILocation(line: 177, column: 17, scope: !2123, inlinedAt: !3262)
!3270 = distinct !DIAssignID()
!3271 = !DILocation(line: 178, column: 6, scope: !2123, inlinedAt: !3262)
!3272 = !DILocation(line: 178, column: 18, scope: !2123, inlinedAt: !3262)
!3273 = distinct !DIAssignID()
!3274 = !DILocation(line: 1020, column: 10, scope: !3224)
!3275 = !DILocation(line: 1021, column: 1, scope: !3224)
!3276 = !DILocation(line: 1020, column: 3, scope: !3224)
!3277 = distinct !DISubprogram(name: "quotearg_custom", scope: !448, file: !448, line: 1024, type: !3278, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!101, !70, !70, !70}
!3280 = !{!3281, !3282, !3283}
!3281 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3277, file: !448, line: 1024, type: !70)
!3282 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3277, file: !448, line: 1024, type: !70)
!3283 = !DILocalVariable(name: "arg", arg: 3, scope: !3277, file: !448, line: 1025, type: !70)
!3284 = distinct !DIAssignID()
!3285 = !DILocation(line: 0, scope: !3277)
!3286 = !DILocation(line: 0, scope: !3213, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1027, column: 10, scope: !3277)
!3288 = !DILocation(line: 0, scope: !3224, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1009, column: 10, scope: !3213, inlinedAt: !3287)
!3290 = !DILocation(line: 1018, column: 3, scope: !3224, inlinedAt: !3289)
!3291 = !DILocation(line: 1018, column: 30, scope: !3224, inlinedAt: !3289)
!3292 = distinct !DIAssignID()
!3293 = distinct !DIAssignID()
!3294 = !DILocation(line: 0, scope: !2123, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 1019, column: 3, scope: !3224, inlinedAt: !3289)
!3296 = !DILocation(line: 174, column: 12, scope: !2123, inlinedAt: !3295)
!3297 = distinct !DIAssignID()
!3298 = !DILocation(line: 175, column: 8, scope: !2136, inlinedAt: !3295)
!3299 = !DILocation(line: 175, column: 19, scope: !2136, inlinedAt: !3295)
!3300 = !DILocation(line: 176, column: 5, scope: !2136, inlinedAt: !3295)
!3301 = !DILocation(line: 177, column: 6, scope: !2123, inlinedAt: !3295)
!3302 = !DILocation(line: 177, column: 17, scope: !2123, inlinedAt: !3295)
!3303 = distinct !DIAssignID()
!3304 = !DILocation(line: 178, column: 6, scope: !2123, inlinedAt: !3295)
!3305 = !DILocation(line: 178, column: 18, scope: !2123, inlinedAt: !3295)
!3306 = distinct !DIAssignID()
!3307 = !DILocation(line: 1020, column: 10, scope: !3224, inlinedAt: !3289)
!3308 = !DILocation(line: 1021, column: 1, scope: !3224, inlinedAt: !3289)
!3309 = !DILocation(line: 1027, column: 3, scope: !3277)
!3310 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !448, file: !448, line: 1031, type: !3311, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!101, !70, !70, !70, !97}
!3313 = !{!3314, !3315, !3316, !3317}
!3314 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3310, file: !448, line: 1031, type: !70)
!3315 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3310, file: !448, line: 1031, type: !70)
!3316 = !DILocalVariable(name: "arg", arg: 3, scope: !3310, file: !448, line: 1032, type: !70)
!3317 = !DILocalVariable(name: "argsize", arg: 4, scope: !3310, file: !448, line: 1032, type: !97)
!3318 = distinct !DIAssignID()
!3319 = !DILocation(line: 0, scope: !3310)
!3320 = !DILocation(line: 0, scope: !3224, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 1034, column: 10, scope: !3310)
!3322 = !DILocation(line: 1018, column: 3, scope: !3224, inlinedAt: !3321)
!3323 = !DILocation(line: 1018, column: 30, scope: !3224, inlinedAt: !3321)
!3324 = distinct !DIAssignID()
!3325 = distinct !DIAssignID()
!3326 = !DILocation(line: 0, scope: !2123, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1019, column: 3, scope: !3224, inlinedAt: !3321)
!3328 = !DILocation(line: 174, column: 12, scope: !2123, inlinedAt: !3327)
!3329 = distinct !DIAssignID()
!3330 = !DILocation(line: 175, column: 8, scope: !2136, inlinedAt: !3327)
!3331 = !DILocation(line: 175, column: 19, scope: !2136, inlinedAt: !3327)
!3332 = !DILocation(line: 176, column: 5, scope: !2136, inlinedAt: !3327)
!3333 = !DILocation(line: 177, column: 6, scope: !2123, inlinedAt: !3327)
!3334 = !DILocation(line: 177, column: 17, scope: !2123, inlinedAt: !3327)
!3335 = distinct !DIAssignID()
!3336 = !DILocation(line: 178, column: 6, scope: !2123, inlinedAt: !3327)
!3337 = !DILocation(line: 178, column: 18, scope: !2123, inlinedAt: !3327)
!3338 = distinct !DIAssignID()
!3339 = !DILocation(line: 1020, column: 10, scope: !3224, inlinedAt: !3321)
!3340 = !DILocation(line: 1021, column: 1, scope: !3224, inlinedAt: !3321)
!3341 = !DILocation(line: 1034, column: 3, scope: !3310)
!3342 = distinct !DISubprogram(name: "quote_n_mem", scope: !448, file: !448, line: 1049, type: !3343, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!70, !95, !70, !97}
!3345 = !{!3346, !3347, !3348}
!3346 = !DILocalVariable(name: "n", arg: 1, scope: !3342, file: !448, line: 1049, type: !95)
!3347 = !DILocalVariable(name: "arg", arg: 2, scope: !3342, file: !448, line: 1049, type: !70)
!3348 = !DILocalVariable(name: "argsize", arg: 3, scope: !3342, file: !448, line: 1049, type: !97)
!3349 = !DILocation(line: 0, scope: !3342)
!3350 = !DILocation(line: 1051, column: 10, scope: !3342)
!3351 = !DILocation(line: 1051, column: 3, scope: !3342)
!3352 = distinct !DISubprogram(name: "quote_mem", scope: !448, file: !448, line: 1055, type: !3353, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!70, !70, !97}
!3355 = !{!3356, !3357}
!3356 = !DILocalVariable(name: "arg", arg: 1, scope: !3352, file: !448, line: 1055, type: !70)
!3357 = !DILocalVariable(name: "argsize", arg: 2, scope: !3352, file: !448, line: 1055, type: !97)
!3358 = !DILocation(line: 0, scope: !3352)
!3359 = !DILocation(line: 0, scope: !3342, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 1057, column: 10, scope: !3352)
!3361 = !DILocation(line: 1051, column: 10, scope: !3342, inlinedAt: !3360)
!3362 = !DILocation(line: 1057, column: 3, scope: !3352)
!3363 = distinct !DISubprogram(name: "quote_n", scope: !448, file: !448, line: 1061, type: !3364, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!70, !95, !70}
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !448, line: 1061, type: !95)
!3368 = !DILocalVariable(name: "arg", arg: 2, scope: !3363, file: !448, line: 1061, type: !70)
!3369 = !DILocation(line: 0, scope: !3363)
!3370 = !DILocation(line: 0, scope: !3342, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 1063, column: 10, scope: !3363)
!3372 = !DILocation(line: 1051, column: 10, scope: !3342, inlinedAt: !3371)
!3373 = !DILocation(line: 1063, column: 3, scope: !3363)
!3374 = distinct !DISubprogram(name: "quote", scope: !448, file: !448, line: 1067, type: !3375, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!70, !70}
!3377 = !{!3378}
!3378 = !DILocalVariable(name: "arg", arg: 1, scope: !3374, file: !448, line: 1067, type: !70)
!3379 = !DILocation(line: 0, scope: !3374)
!3380 = !DILocation(line: 0, scope: !3363, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 1069, column: 10, scope: !3374)
!3382 = !DILocation(line: 0, scope: !3342, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 1063, column: 10, scope: !3363, inlinedAt: !3381)
!3384 = !DILocation(line: 1051, column: 10, scope: !3342, inlinedAt: !3383)
!3385 = !DILocation(line: 1069, column: 3, scope: !3374)
!3386 = distinct !DISubprogram(name: "safe_write", scope: !3387, file: !3387, line: 56, type: !3388, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3391)
!3387 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!757, !95, !3390, !755}
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3387, line: 45, baseType: !1022)
!3391 = !{!3392, !3393, !3394, !3395}
!3392 = !DILocalVariable(name: "fd", arg: 1, scope: !3386, file: !3387, line: 56, type: !95)
!3393 = !DILocalVariable(name: "buf", arg: 2, scope: !3386, file: !3387, line: 56, type: !3390)
!3394 = !DILocalVariable(name: "count", arg: 3, scope: !3386, file: !3387, line: 56, type: !755)
!3395 = !DILocalVariable(name: "result", scope: !3396, file: !3387, line: 60, type: !3399)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3387, line: 59, column: 5)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !3387, line: 58, column: 3)
!3398 = distinct !DILexicalBlock(scope: !3386, file: !3387, line: 58, column: 3)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1792, line: 108, baseType: !1147)
!3400 = !DILocation(line: 0, scope: !3386)
!3401 = !DILocation(line: 58, column: 3, scope: !3386)
!3402 = !DILocation(line: 62, column: 11, scope: !3396)
!3403 = !DILocation(line: 60, column: 24, scope: !3396)
!3404 = !DILocation(line: 0, scope: !3396)
!3405 = !DILocation(line: 62, column: 13, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3396, file: !3387, line: 62, column: 11)
!3407 = !DILocation(line: 64, column: 16, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3406, file: !3387, line: 64, column: 16)
!3409 = !DILocation(line: 64, column: 16, scope: !3406)
!3410 = distinct !{!3410, !3411, !3412}
!3411 = !DILocation(line: 58, column: 3, scope: !3398)
!3412 = !DILocation(line: 70, column: 5, scope: !3398)
!3413 = !DILocation(line: 66, column: 22, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3408, file: !3387, line: 66, column: 16)
!3415 = !DILocation(line: 0, scope: !3397)
!3416 = !DILocation(line: 71, column: 1, scope: !3386)
!3417 = !DISubprogram(name: "write", scope: !1354, file: !1354, line: 378, type: !3418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!3399, !95, !1022, !97}
!3420 = distinct !DISubprogram(name: "version_etc_arn", scope: !564, file: !564, line: 61, type: !3421, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3458)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !3423, !70, !70, !70, !3457, !97}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3425, file: !236, line: 51, baseType: !95, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3425, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3425, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3425, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3425, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3425, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3425, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3425, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3425, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3425, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3425, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3425, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3425, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3425, file: !236, line: 70, baseType: !3441, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3425, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3425, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3425, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3425, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3425, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3425, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3425, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3425, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3425, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3425, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3425, file: !236, line: 93, baseType: !3441, size: 64, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3425, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3425, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3425, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3425, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464}
!3459 = !DILocalVariable(name: "stream", arg: 1, scope: !3420, file: !564, line: 61, type: !3423)
!3460 = !DILocalVariable(name: "command_name", arg: 2, scope: !3420, file: !564, line: 62, type: !70)
!3461 = !DILocalVariable(name: "package", arg: 3, scope: !3420, file: !564, line: 62, type: !70)
!3462 = !DILocalVariable(name: "version", arg: 4, scope: !3420, file: !564, line: 63, type: !70)
!3463 = !DILocalVariable(name: "authors", arg: 5, scope: !3420, file: !564, line: 64, type: !3457)
!3464 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3420, file: !564, line: 64, type: !97)
!3465 = !DILocation(line: 0, scope: !3420)
!3466 = !DILocation(line: 66, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3420, file: !564, line: 66, column: 7)
!3468 = !DILocation(line: 66, column: 7, scope: !3420)
!3469 = !DILocation(line: 67, column: 5, scope: !3467)
!3470 = !DILocation(line: 69, column: 5, scope: !3467)
!3471 = !DILocation(line: 83, column: 3, scope: !3420)
!3472 = !DILocation(line: 85, column: 3, scope: !3420)
!3473 = !DILocation(line: 88, column: 3, scope: !3420)
!3474 = !DILocation(line: 95, column: 3, scope: !3420)
!3475 = !DILocation(line: 97, column: 3, scope: !3420)
!3476 = !DILocation(line: 105, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3420, file: !564, line: 98, column: 5)
!3478 = !DILocation(line: 106, column: 7, scope: !3477)
!3479 = !DILocation(line: 109, column: 7, scope: !3477)
!3480 = !DILocation(line: 110, column: 7, scope: !3477)
!3481 = !DILocation(line: 113, column: 7, scope: !3477)
!3482 = !DILocation(line: 115, column: 7, scope: !3477)
!3483 = !DILocation(line: 120, column: 7, scope: !3477)
!3484 = !DILocation(line: 122, column: 7, scope: !3477)
!3485 = !DILocation(line: 127, column: 7, scope: !3477)
!3486 = !DILocation(line: 129, column: 7, scope: !3477)
!3487 = !DILocation(line: 134, column: 7, scope: !3477)
!3488 = !DILocation(line: 137, column: 7, scope: !3477)
!3489 = !DILocation(line: 142, column: 7, scope: !3477)
!3490 = !DILocation(line: 145, column: 7, scope: !3477)
!3491 = !DILocation(line: 150, column: 7, scope: !3477)
!3492 = !DILocation(line: 154, column: 7, scope: !3477)
!3493 = !DILocation(line: 159, column: 7, scope: !3477)
!3494 = !DILocation(line: 163, column: 7, scope: !3477)
!3495 = !DILocation(line: 170, column: 7, scope: !3477)
!3496 = !DILocation(line: 174, column: 7, scope: !3477)
!3497 = !DILocation(line: 176, column: 1, scope: !3420)
!3498 = distinct !DISubprogram(name: "version_etc_ar", scope: !564, file: !564, line: 183, type: !3499, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{null, !3423, !70, !70, !70, !3457}
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507}
!3502 = !DILocalVariable(name: "stream", arg: 1, scope: !3498, file: !564, line: 183, type: !3423)
!3503 = !DILocalVariable(name: "command_name", arg: 2, scope: !3498, file: !564, line: 184, type: !70)
!3504 = !DILocalVariable(name: "package", arg: 3, scope: !3498, file: !564, line: 184, type: !70)
!3505 = !DILocalVariable(name: "version", arg: 4, scope: !3498, file: !564, line: 185, type: !70)
!3506 = !DILocalVariable(name: "authors", arg: 5, scope: !3498, file: !564, line: 185, type: !3457)
!3507 = !DILocalVariable(name: "n_authors", scope: !3498, file: !564, line: 187, type: !97)
!3508 = !DILocation(line: 0, scope: !3498)
!3509 = !DILocation(line: 189, column: 8, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3498, file: !564, line: 189, column: 3)
!3511 = !DILocation(line: 189, scope: !3510)
!3512 = !DILocation(line: 189, column: 23, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !564, line: 189, column: 3)
!3514 = !DILocation(line: 189, column: 3, scope: !3510)
!3515 = !DILocation(line: 189, column: 52, scope: !3513)
!3516 = distinct !{!3516, !3514, !3517, !921}
!3517 = !DILocation(line: 190, column: 5, scope: !3510)
!3518 = !DILocation(line: 191, column: 3, scope: !3498)
!3519 = !DILocation(line: 192, column: 1, scope: !3498)
!3520 = distinct !DISubprogram(name: "version_etc_va", scope: !564, file: !564, line: 199, type: !3521, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3530)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !3423, !70, !70, !70, !3523}
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3525)
!3525 = !{!3526, !3527, !3528, !3529}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3524, file: !564, line: 192, baseType: !76, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3524, file: !564, line: 192, baseType: !76, size: 32, offset: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3524, file: !564, line: 192, baseType: !94, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3524, file: !564, line: 192, baseType: !94, size: 64, offset: 128)
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3531 = !DILocalVariable(name: "stream", arg: 1, scope: !3520, file: !564, line: 199, type: !3423)
!3532 = !DILocalVariable(name: "command_name", arg: 2, scope: !3520, file: !564, line: 200, type: !70)
!3533 = !DILocalVariable(name: "package", arg: 3, scope: !3520, file: !564, line: 200, type: !70)
!3534 = !DILocalVariable(name: "version", arg: 4, scope: !3520, file: !564, line: 201, type: !70)
!3535 = !DILocalVariable(name: "authors", arg: 5, scope: !3520, file: !564, line: 201, type: !3523)
!3536 = !DILocalVariable(name: "n_authors", scope: !3520, file: !564, line: 203, type: !97)
!3537 = !DILocalVariable(name: "authtab", scope: !3520, file: !564, line: 204, type: !3538)
!3538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!3539 = distinct !DIAssignID()
!3540 = !DILocation(line: 0, scope: !3520)
!3541 = !DILocation(line: 204, column: 3, scope: !3520)
!3542 = !DILocation(line: 208, column: 35, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !564, line: 206, column: 3)
!3544 = distinct !DILexicalBlock(scope: !3520, file: !564, line: 206, column: 3)
!3545 = !DILocation(line: 208, column: 33, scope: !3543)
!3546 = !DILocation(line: 208, column: 67, scope: !3543)
!3547 = !DILocation(line: 206, column: 3, scope: !3544)
!3548 = !DILocation(line: 208, column: 14, scope: !3543)
!3549 = !DILocation(line: 0, scope: !3544)
!3550 = !DILocation(line: 211, column: 3, scope: !3520)
!3551 = !DILocation(line: 213, column: 1, scope: !3520)
!3552 = distinct !DISubprogram(name: "version_etc", scope: !564, file: !564, line: 230, type: !3553, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3423, !70, !70, !70, null}
!3555 = !{!3556, !3557, !3558, !3559, !3560}
!3556 = !DILocalVariable(name: "stream", arg: 1, scope: !3552, file: !564, line: 230, type: !3423)
!3557 = !DILocalVariable(name: "command_name", arg: 2, scope: !3552, file: !564, line: 231, type: !70)
!3558 = !DILocalVariable(name: "package", arg: 3, scope: !3552, file: !564, line: 231, type: !70)
!3559 = !DILocalVariable(name: "version", arg: 4, scope: !3552, file: !564, line: 232, type: !70)
!3560 = !DILocalVariable(name: "authors", scope: !3552, file: !564, line: 234, type: !3561)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !869, line: 52, baseType: !3562)
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1586, line: 12, baseType: !3563)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !564, baseType: !3564)
!3564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3524, size: 192, elements: !35)
!3565 = distinct !DIAssignID()
!3566 = !DILocation(line: 0, scope: !3552)
!3567 = !DILocation(line: 234, column: 3, scope: !3552)
!3568 = !DILocation(line: 235, column: 3, scope: !3552)
!3569 = !DILocation(line: 236, column: 3, scope: !3552)
!3570 = !DILocation(line: 237, column: 3, scope: !3552)
!3571 = !DILocation(line: 238, column: 1, scope: !3552)
!3572 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !564, file: !564, line: 241, type: !361, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729)
!3573 = !DILocation(line: 243, column: 3, scope: !3572)
!3574 = !DILocation(line: 248, column: 3, scope: !3572)
!3575 = !DILocation(line: 254, column: 3, scope: !3572)
!3576 = !DILocation(line: 259, column: 3, scope: !3572)
!3577 = !DILocation(line: 261, column: 1, scope: !3572)
!3578 = distinct !DISubprogram(name: "xnrealloc", scope: !3579, file: !3579, line: 147, type: !3580, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3582)
!3579 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!94, !94, !97, !97}
!3582 = !{!3583, !3584, !3585}
!3583 = !DILocalVariable(name: "p", arg: 1, scope: !3578, file: !3579, line: 147, type: !94)
!3584 = !DILocalVariable(name: "n", arg: 2, scope: !3578, file: !3579, line: 147, type: !97)
!3585 = !DILocalVariable(name: "s", arg: 3, scope: !3578, file: !3579, line: 147, type: !97)
!3586 = !DILocation(line: 0, scope: !3578)
!3587 = !DILocalVariable(name: "p", arg: 1, scope: !3588, file: !736, line: 83, type: !94)
!3588 = distinct !DISubprogram(name: "xreallocarray", scope: !736, file: !736, line: 83, type: !3580, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3589)
!3589 = !{!3587, !3590, !3591}
!3590 = !DILocalVariable(name: "n", arg: 2, scope: !3588, file: !736, line: 83, type: !97)
!3591 = !DILocalVariable(name: "s", arg: 3, scope: !3588, file: !736, line: 83, type: !97)
!3592 = !DILocation(line: 0, scope: !3588, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 149, column: 10, scope: !3578)
!3594 = !DILocation(line: 85, column: 25, scope: !3588, inlinedAt: !3593)
!3595 = !DILocalVariable(name: "p", arg: 1, scope: !3596, file: !736, line: 37, type: !94)
!3596 = distinct !DISubprogram(name: "check_nonnull", scope: !736, file: !736, line: 37, type: !3597, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!94, !94}
!3599 = !{!3595}
!3600 = !DILocation(line: 0, scope: !3596, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 85, column: 10, scope: !3588, inlinedAt: !3593)
!3602 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3601)
!3603 = distinct !DILexicalBlock(scope: !3596, file: !736, line: 39, column: 7)
!3604 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3601)
!3605 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3601)
!3606 = !DILocation(line: 149, column: 3, scope: !3578)
!3607 = !DILocation(line: 0, scope: !3588)
!3608 = !DILocation(line: 85, column: 25, scope: !3588)
!3609 = !DILocation(line: 0, scope: !3596, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 85, column: 10, scope: !3588)
!3611 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3610)
!3612 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3610)
!3613 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3610)
!3614 = !DILocation(line: 85, column: 3, scope: !3588)
!3615 = distinct !DISubprogram(name: "xmalloc", scope: !736, file: !736, line: 47, type: !3616, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3618)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!94, !97}
!3618 = !{!3619}
!3619 = !DILocalVariable(name: "s", arg: 1, scope: !3615, file: !736, line: 47, type: !97)
!3620 = !DILocation(line: 0, scope: !3615)
!3621 = !DILocation(line: 49, column: 25, scope: !3615)
!3622 = !DILocation(line: 0, scope: !3596, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 49, column: 10, scope: !3615)
!3624 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3623)
!3625 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3623)
!3626 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3623)
!3627 = !DILocation(line: 49, column: 3, scope: !3615)
!3628 = !DISubprogram(name: "malloc", scope: !998, file: !998, line: 540, type: !3616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3629 = distinct !DISubprogram(name: "ximalloc", scope: !736, file: !736, line: 53, type: !3630, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!94, !755}
!3632 = !{!3633}
!3633 = !DILocalVariable(name: "s", arg: 1, scope: !3629, file: !736, line: 53, type: !755)
!3634 = !DILocation(line: 0, scope: !3629)
!3635 = !DILocalVariable(name: "s", arg: 1, scope: !3636, file: !3637, line: 55, type: !755)
!3636 = distinct !DISubprogram(name: "imalloc", scope: !3637, file: !3637, line: 55, type: !3630, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3638)
!3637 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3638 = !{!3635}
!3639 = !DILocation(line: 0, scope: !3636, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 55, column: 25, scope: !3629)
!3641 = !DILocation(line: 57, column: 26, scope: !3636, inlinedAt: !3640)
!3642 = !DILocation(line: 0, scope: !3596, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 55, column: 10, scope: !3629)
!3644 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3643)
!3645 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3643)
!3646 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3643)
!3647 = !DILocation(line: 55, column: 3, scope: !3629)
!3648 = distinct !DISubprogram(name: "xcharalloc", scope: !736, file: !736, line: 59, type: !3649, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3651)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!101, !97}
!3651 = !{!3652}
!3652 = !DILocalVariable(name: "n", arg: 1, scope: !3648, file: !736, line: 59, type: !97)
!3653 = !DILocation(line: 0, scope: !3648)
!3654 = !DILocation(line: 0, scope: !3615, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 61, column: 10, scope: !3648)
!3656 = !DILocation(line: 49, column: 25, scope: !3615, inlinedAt: !3655)
!3657 = !DILocation(line: 0, scope: !3596, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 49, column: 10, scope: !3615, inlinedAt: !3655)
!3659 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3658)
!3660 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3658)
!3661 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3658)
!3662 = !DILocation(line: 61, column: 3, scope: !3648)
!3663 = distinct !DISubprogram(name: "xrealloc", scope: !736, file: !736, line: 68, type: !3664, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!94, !94, !97}
!3666 = !{!3667, !3668}
!3667 = !DILocalVariable(name: "p", arg: 1, scope: !3663, file: !736, line: 68, type: !94)
!3668 = !DILocalVariable(name: "s", arg: 2, scope: !3663, file: !736, line: 68, type: !97)
!3669 = !DILocation(line: 0, scope: !3663)
!3670 = !DILocalVariable(name: "ptr", arg: 1, scope: !3671, file: !3672, line: 2057, type: !94)
!3671 = distinct !DISubprogram(name: "rpl_realloc", scope: !3672, file: !3672, line: 2057, type: !3664, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3673)
!3672 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3673 = !{!3670, !3674}
!3674 = !DILocalVariable(name: "size", arg: 2, scope: !3671, file: !3672, line: 2057, type: !97)
!3675 = !DILocation(line: 0, scope: !3671, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 70, column: 25, scope: !3663)
!3677 = !DILocation(line: 2059, column: 24, scope: !3671, inlinedAt: !3676)
!3678 = !DILocation(line: 2059, column: 10, scope: !3671, inlinedAt: !3676)
!3679 = !DILocation(line: 0, scope: !3596, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 70, column: 10, scope: !3663)
!3681 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3680)
!3682 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3680)
!3683 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3680)
!3684 = !DILocation(line: 70, column: 3, scope: !3663)
!3685 = !DISubprogram(name: "realloc", scope: !998, file: !998, line: 551, type: !3664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3686 = distinct !DISubprogram(name: "xirealloc", scope: !736, file: !736, line: 74, type: !3687, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!94, !94, !755}
!3689 = !{!3690, !3691}
!3690 = !DILocalVariable(name: "p", arg: 1, scope: !3686, file: !736, line: 74, type: !94)
!3691 = !DILocalVariable(name: "s", arg: 2, scope: !3686, file: !736, line: 74, type: !755)
!3692 = !DILocation(line: 0, scope: !3686)
!3693 = !DILocalVariable(name: "p", arg: 1, scope: !3694, file: !3637, line: 66, type: !94)
!3694 = distinct !DISubprogram(name: "irealloc", scope: !3637, file: !3637, line: 66, type: !3687, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3695)
!3695 = !{!3693, !3696}
!3696 = !DILocalVariable(name: "s", arg: 2, scope: !3694, file: !3637, line: 66, type: !755)
!3697 = !DILocation(line: 0, scope: !3694, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 76, column: 25, scope: !3686)
!3699 = !DILocation(line: 0, scope: !3671, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 68, column: 26, scope: !3694, inlinedAt: !3698)
!3701 = !DILocation(line: 2059, column: 24, scope: !3671, inlinedAt: !3700)
!3702 = !DILocation(line: 2059, column: 10, scope: !3671, inlinedAt: !3700)
!3703 = !DILocation(line: 0, scope: !3596, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 76, column: 10, scope: !3686)
!3705 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3704)
!3706 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3704)
!3707 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3704)
!3708 = !DILocation(line: 76, column: 3, scope: !3686)
!3709 = distinct !DISubprogram(name: "xireallocarray", scope: !736, file: !736, line: 89, type: !3710, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!94, !94, !755, !755}
!3712 = !{!3713, !3714, !3715}
!3713 = !DILocalVariable(name: "p", arg: 1, scope: !3709, file: !736, line: 89, type: !94)
!3714 = !DILocalVariable(name: "n", arg: 2, scope: !3709, file: !736, line: 89, type: !755)
!3715 = !DILocalVariable(name: "s", arg: 3, scope: !3709, file: !736, line: 89, type: !755)
!3716 = !DILocation(line: 0, scope: !3709)
!3717 = !DILocalVariable(name: "p", arg: 1, scope: !3718, file: !3637, line: 98, type: !94)
!3718 = distinct !DISubprogram(name: "ireallocarray", scope: !3637, file: !3637, line: 98, type: !3710, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3719)
!3719 = !{!3717, !3720, !3721}
!3720 = !DILocalVariable(name: "n", arg: 2, scope: !3718, file: !3637, line: 98, type: !755)
!3721 = !DILocalVariable(name: "s", arg: 3, scope: !3718, file: !3637, line: 98, type: !755)
!3722 = !DILocation(line: 0, scope: !3718, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 91, column: 25, scope: !3709)
!3724 = !DILocation(line: 101, column: 13, scope: !3718, inlinedAt: !3723)
!3725 = !DILocation(line: 0, scope: !3596, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 91, column: 10, scope: !3709)
!3727 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3726)
!3728 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3726)
!3729 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3726)
!3730 = !DILocation(line: 91, column: 3, scope: !3709)
!3731 = distinct !DISubprogram(name: "xnmalloc", scope: !736, file: !736, line: 98, type: !1358, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3732)
!3732 = !{!3733, !3734}
!3733 = !DILocalVariable(name: "n", arg: 1, scope: !3731, file: !736, line: 98, type: !97)
!3734 = !DILocalVariable(name: "s", arg: 2, scope: !3731, file: !736, line: 98, type: !97)
!3735 = !DILocation(line: 0, scope: !3731)
!3736 = !DILocation(line: 0, scope: !3588, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 100, column: 10, scope: !3731)
!3738 = !DILocation(line: 85, column: 25, scope: !3588, inlinedAt: !3737)
!3739 = !DILocation(line: 0, scope: !3596, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 85, column: 10, scope: !3588, inlinedAt: !3737)
!3741 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3740)
!3742 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3740)
!3743 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3740)
!3744 = !DILocation(line: 100, column: 3, scope: !3731)
!3745 = distinct !DISubprogram(name: "xinmalloc", scope: !736, file: !736, line: 104, type: !3746, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!94, !755, !755}
!3748 = !{!3749, !3750}
!3749 = !DILocalVariable(name: "n", arg: 1, scope: !3745, file: !736, line: 104, type: !755)
!3750 = !DILocalVariable(name: "s", arg: 2, scope: !3745, file: !736, line: 104, type: !755)
!3751 = !DILocation(line: 0, scope: !3745)
!3752 = !DILocation(line: 0, scope: !3709, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 106, column: 10, scope: !3745)
!3754 = !DILocation(line: 0, scope: !3718, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 91, column: 25, scope: !3709, inlinedAt: !3753)
!3756 = !DILocation(line: 101, column: 13, scope: !3718, inlinedAt: !3755)
!3757 = !DILocation(line: 0, scope: !3596, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 91, column: 10, scope: !3709, inlinedAt: !3753)
!3759 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3758)
!3760 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3758)
!3761 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3758)
!3762 = !DILocation(line: 106, column: 3, scope: !3745)
!3763 = distinct !DISubprogram(name: "x2realloc", scope: !736, file: !736, line: 116, type: !3764, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!94, !94, !742}
!3766 = !{!3767, !3768}
!3767 = !DILocalVariable(name: "p", arg: 1, scope: !3763, file: !736, line: 116, type: !94)
!3768 = !DILocalVariable(name: "ps", arg: 2, scope: !3763, file: !736, line: 116, type: !742)
!3769 = !DILocation(line: 0, scope: !3763)
!3770 = !DILocation(line: 0, scope: !739, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 118, column: 10, scope: !3763)
!3772 = !DILocation(line: 178, column: 14, scope: !739, inlinedAt: !3771)
!3773 = !DILocation(line: 180, column: 9, scope: !3774, inlinedAt: !3771)
!3774 = distinct !DILexicalBlock(scope: !739, file: !736, line: 180, column: 7)
!3775 = !DILocation(line: 180, column: 7, scope: !739, inlinedAt: !3771)
!3776 = !DILocation(line: 182, column: 13, scope: !3777, inlinedAt: !3771)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !736, line: 182, column: 11)
!3778 = distinct !DILexicalBlock(scope: !3774, file: !736, line: 181, column: 5)
!3779 = !DILocation(line: 182, column: 11, scope: !3778, inlinedAt: !3771)
!3780 = !DILocation(line: 197, column: 11, scope: !3781, inlinedAt: !3771)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !736, line: 197, column: 11)
!3782 = distinct !DILexicalBlock(scope: !3774, file: !736, line: 195, column: 5)
!3783 = !DILocation(line: 197, column: 11, scope: !3782, inlinedAt: !3771)
!3784 = !DILocation(line: 198, column: 9, scope: !3781, inlinedAt: !3771)
!3785 = !DILocation(line: 0, scope: !3588, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 201, column: 7, scope: !739, inlinedAt: !3771)
!3787 = !DILocation(line: 85, column: 25, scope: !3588, inlinedAt: !3786)
!3788 = !DILocation(line: 0, scope: !3596, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 85, column: 10, scope: !3588, inlinedAt: !3786)
!3790 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3789)
!3791 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3789)
!3792 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3789)
!3793 = !DILocation(line: 202, column: 7, scope: !739, inlinedAt: !3771)
!3794 = !DILocation(line: 118, column: 3, scope: !3763)
!3795 = !DILocation(line: 0, scope: !739)
!3796 = !DILocation(line: 178, column: 14, scope: !739)
!3797 = !DILocation(line: 180, column: 9, scope: !3774)
!3798 = !DILocation(line: 180, column: 7, scope: !739)
!3799 = !DILocation(line: 182, column: 13, scope: !3777)
!3800 = !DILocation(line: 182, column: 11, scope: !3778)
!3801 = !DILocation(line: 190, column: 30, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3777, file: !736, line: 183, column: 9)
!3803 = !DILocation(line: 191, column: 16, scope: !3802)
!3804 = !DILocation(line: 191, column: 13, scope: !3802)
!3805 = !DILocation(line: 192, column: 9, scope: !3802)
!3806 = !DILocation(line: 197, column: 11, scope: !3781)
!3807 = !DILocation(line: 197, column: 11, scope: !3782)
!3808 = !DILocation(line: 198, column: 9, scope: !3781)
!3809 = !DILocation(line: 0, scope: !3588, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 201, column: 7, scope: !739)
!3811 = !DILocation(line: 85, column: 25, scope: !3588, inlinedAt: !3810)
!3812 = !DILocation(line: 0, scope: !3596, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 85, column: 10, scope: !3588, inlinedAt: !3810)
!3814 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3813)
!3815 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3813)
!3816 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3813)
!3817 = !DILocation(line: 202, column: 7, scope: !739)
!3818 = !DILocation(line: 203, column: 3, scope: !739)
!3819 = !DILocation(line: 0, scope: !751)
!3820 = !DILocation(line: 230, column: 14, scope: !751)
!3821 = !DILocation(line: 238, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !751, file: !736, line: 238, column: 7)
!3823 = !DILocation(line: 238, column: 7, scope: !751)
!3824 = !DILocation(line: 240, column: 9, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !751, file: !736, line: 240, column: 7)
!3826 = !DILocation(line: 240, column: 18, scope: !3825)
!3827 = !DILocation(line: 253, column: 8, scope: !751)
!3828 = !DILocation(line: 256, column: 7, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !751, file: !736, line: 256, column: 7)
!3830 = !DILocation(line: 256, column: 7, scope: !751)
!3831 = !DILocation(line: 258, column: 27, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3829, file: !736, line: 257, column: 5)
!3833 = !DILocation(line: 259, column: 50, scope: !3832)
!3834 = !DILocation(line: 259, column: 32, scope: !3832)
!3835 = !DILocation(line: 260, column: 5, scope: !3832)
!3836 = !DILocation(line: 262, column: 9, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !751, file: !736, line: 262, column: 7)
!3838 = !DILocation(line: 262, column: 7, scope: !751)
!3839 = !DILocation(line: 263, column: 9, scope: !3837)
!3840 = !DILocation(line: 263, column: 5, scope: !3837)
!3841 = !DILocation(line: 264, column: 9, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !751, file: !736, line: 264, column: 7)
!3843 = !DILocation(line: 264, column: 14, scope: !3842)
!3844 = !DILocation(line: 265, column: 7, scope: !3842)
!3845 = !DILocation(line: 265, column: 11, scope: !3842)
!3846 = !DILocation(line: 266, column: 11, scope: !3842)
!3847 = !DILocation(line: 267, column: 14, scope: !3842)
!3848 = !DILocation(line: 264, column: 7, scope: !751)
!3849 = !DILocation(line: 268, column: 5, scope: !3842)
!3850 = !DILocation(line: 0, scope: !3663, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 269, column: 8, scope: !751)
!3852 = !DILocation(line: 0, scope: !3671, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 70, column: 25, scope: !3663, inlinedAt: !3851)
!3854 = !DILocation(line: 2059, column: 24, scope: !3671, inlinedAt: !3853)
!3855 = !DILocation(line: 2059, column: 10, scope: !3671, inlinedAt: !3853)
!3856 = !DILocation(line: 0, scope: !3596, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 70, column: 10, scope: !3663, inlinedAt: !3851)
!3858 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3857)
!3859 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3857)
!3860 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3857)
!3861 = !DILocation(line: 270, column: 7, scope: !751)
!3862 = !DILocation(line: 271, column: 3, scope: !751)
!3863 = distinct !DISubprogram(name: "xzalloc", scope: !736, file: !736, line: 279, type: !3616, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3864)
!3864 = !{!3865}
!3865 = !DILocalVariable(name: "s", arg: 1, scope: !3863, file: !736, line: 279, type: !97)
!3866 = !DILocation(line: 0, scope: !3863)
!3867 = !DILocalVariable(name: "n", arg: 1, scope: !3868, file: !736, line: 294, type: !97)
!3868 = distinct !DISubprogram(name: "xcalloc", scope: !736, file: !736, line: 294, type: !1358, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3869)
!3869 = !{!3867, !3870}
!3870 = !DILocalVariable(name: "s", arg: 2, scope: !3868, file: !736, line: 294, type: !97)
!3871 = !DILocation(line: 0, scope: !3868, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 281, column: 10, scope: !3863)
!3873 = !DILocation(line: 296, column: 25, scope: !3868, inlinedAt: !3872)
!3874 = !DILocation(line: 0, scope: !3596, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 296, column: 10, scope: !3868, inlinedAt: !3872)
!3876 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3875)
!3877 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3875)
!3878 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3875)
!3879 = !DILocation(line: 281, column: 3, scope: !3863)
!3880 = !DISubprogram(name: "calloc", scope: !998, file: !998, line: 543, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3881 = !DILocation(line: 0, scope: !3868)
!3882 = !DILocation(line: 296, column: 25, scope: !3868)
!3883 = !DILocation(line: 0, scope: !3596, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 296, column: 10, scope: !3868)
!3885 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3884)
!3886 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3884)
!3887 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3884)
!3888 = !DILocation(line: 296, column: 3, scope: !3868)
!3889 = distinct !DISubprogram(name: "xizalloc", scope: !736, file: !736, line: 285, type: !3630, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3890)
!3890 = !{!3891}
!3891 = !DILocalVariable(name: "s", arg: 1, scope: !3889, file: !736, line: 285, type: !755)
!3892 = !DILocation(line: 0, scope: !3889)
!3893 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !736, line: 300, type: !755)
!3894 = distinct !DISubprogram(name: "xicalloc", scope: !736, file: !736, line: 300, type: !3746, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3895)
!3895 = !{!3893, !3896}
!3896 = !DILocalVariable(name: "s", arg: 2, scope: !3894, file: !736, line: 300, type: !755)
!3897 = !DILocation(line: 0, scope: !3894, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 287, column: 10, scope: !3889)
!3899 = !DILocalVariable(name: "n", arg: 1, scope: !3900, file: !3637, line: 77, type: !755)
!3900 = distinct !DISubprogram(name: "icalloc", scope: !3637, file: !3637, line: 77, type: !3746, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3901)
!3901 = !{!3899, !3902}
!3902 = !DILocalVariable(name: "s", arg: 2, scope: !3900, file: !3637, line: 77, type: !755)
!3903 = !DILocation(line: 0, scope: !3900, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 302, column: 25, scope: !3894, inlinedAt: !3898)
!3905 = !DILocation(line: 91, column: 10, scope: !3900, inlinedAt: !3904)
!3906 = !DILocation(line: 0, scope: !3596, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 302, column: 10, scope: !3894, inlinedAt: !3898)
!3908 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3907)
!3909 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3907)
!3910 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3907)
!3911 = !DILocation(line: 287, column: 3, scope: !3889)
!3912 = !DILocation(line: 0, scope: !3894)
!3913 = !DILocation(line: 0, scope: !3900, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 302, column: 25, scope: !3894)
!3915 = !DILocation(line: 91, column: 10, scope: !3900, inlinedAt: !3914)
!3916 = !DILocation(line: 0, scope: !3596, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 302, column: 10, scope: !3894)
!3918 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3917)
!3919 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3917)
!3920 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3917)
!3921 = !DILocation(line: 302, column: 3, scope: !3894)
!3922 = distinct !DISubprogram(name: "xmemdup", scope: !736, file: !736, line: 310, type: !3923, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!94, !1022, !97}
!3925 = !{!3926, !3927}
!3926 = !DILocalVariable(name: "p", arg: 1, scope: !3922, file: !736, line: 310, type: !1022)
!3927 = !DILocalVariable(name: "s", arg: 2, scope: !3922, file: !736, line: 310, type: !97)
!3928 = !DILocation(line: 0, scope: !3922)
!3929 = !DILocation(line: 0, scope: !3615, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 312, column: 18, scope: !3922)
!3931 = !DILocation(line: 49, column: 25, scope: !3615, inlinedAt: !3930)
!3932 = !DILocation(line: 0, scope: !3596, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 49, column: 10, scope: !3615, inlinedAt: !3930)
!3934 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3933)
!3935 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3933)
!3936 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3933)
!3937 = !DILocalVariable(name: "__dest", arg: 1, scope: !3938, file: !1097, line: 26, type: !1100)
!3938 = distinct !DISubprogram(name: "memcpy", scope: !1097, file: !1097, line: 26, type: !1098, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3939)
!3939 = !{!3937, !3940, !3941}
!3940 = !DILocalVariable(name: "__src", arg: 2, scope: !3938, file: !1097, line: 26, type: !1021)
!3941 = !DILocalVariable(name: "__len", arg: 3, scope: !3938, file: !1097, line: 26, type: !97)
!3942 = !DILocation(line: 0, scope: !3938, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 312, column: 10, scope: !3922)
!3944 = !DILocation(line: 29, column: 10, scope: !3938, inlinedAt: !3943)
!3945 = !DILocation(line: 312, column: 3, scope: !3922)
!3946 = distinct !DISubprogram(name: "ximemdup", scope: !736, file: !736, line: 316, type: !3947, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!94, !1022, !755}
!3949 = !{!3950, !3951}
!3950 = !DILocalVariable(name: "p", arg: 1, scope: !3946, file: !736, line: 316, type: !1022)
!3951 = !DILocalVariable(name: "s", arg: 2, scope: !3946, file: !736, line: 316, type: !755)
!3952 = !DILocation(line: 0, scope: !3946)
!3953 = !DILocation(line: 0, scope: !3629, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 318, column: 18, scope: !3946)
!3955 = !DILocation(line: 0, scope: !3636, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 55, column: 25, scope: !3629, inlinedAt: !3954)
!3957 = !DILocation(line: 57, column: 26, scope: !3636, inlinedAt: !3956)
!3958 = !DILocation(line: 0, scope: !3596, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 55, column: 10, scope: !3629, inlinedAt: !3954)
!3960 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3959)
!3961 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3959)
!3962 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3959)
!3963 = !DILocation(line: 0, scope: !3938, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 318, column: 10, scope: !3946)
!3965 = !DILocation(line: 29, column: 10, scope: !3938, inlinedAt: !3964)
!3966 = !DILocation(line: 318, column: 3, scope: !3946)
!3967 = distinct !DISubprogram(name: "ximemdup0", scope: !736, file: !736, line: 325, type: !3968, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!101, !1022, !755}
!3970 = !{!3971, !3972, !3973}
!3971 = !DILocalVariable(name: "p", arg: 1, scope: !3967, file: !736, line: 325, type: !1022)
!3972 = !DILocalVariable(name: "s", arg: 2, scope: !3967, file: !736, line: 325, type: !755)
!3973 = !DILocalVariable(name: "result", scope: !3967, file: !736, line: 327, type: !101)
!3974 = !DILocation(line: 0, scope: !3967)
!3975 = !DILocation(line: 327, column: 30, scope: !3967)
!3976 = !DILocation(line: 0, scope: !3629, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 327, column: 18, scope: !3967)
!3978 = !DILocation(line: 0, scope: !3636, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 55, column: 25, scope: !3629, inlinedAt: !3977)
!3980 = !DILocation(line: 57, column: 26, scope: !3636, inlinedAt: !3979)
!3981 = !DILocation(line: 0, scope: !3596, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 55, column: 10, scope: !3629, inlinedAt: !3977)
!3983 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !3982)
!3984 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !3982)
!3985 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !3982)
!3986 = !DILocation(line: 328, column: 3, scope: !3967)
!3987 = !DILocation(line: 328, column: 13, scope: !3967)
!3988 = !DILocation(line: 0, scope: !3938, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 329, column: 10, scope: !3967)
!3990 = !DILocation(line: 29, column: 10, scope: !3938, inlinedAt: !3989)
!3991 = !DILocation(line: 329, column: 3, scope: !3967)
!3992 = distinct !DISubprogram(name: "xstrdup", scope: !736, file: !736, line: 335, type: !1000, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3993)
!3993 = !{!3994}
!3994 = !DILocalVariable(name: "string", arg: 1, scope: !3992, file: !736, line: 335, type: !70)
!3995 = !DILocation(line: 0, scope: !3992)
!3996 = !DILocation(line: 337, column: 27, scope: !3992)
!3997 = !DILocation(line: 337, column: 43, scope: !3992)
!3998 = !DILocation(line: 0, scope: !3922, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 337, column: 10, scope: !3992)
!4000 = !DILocation(line: 0, scope: !3615, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 312, column: 18, scope: !3922, inlinedAt: !3999)
!4002 = !DILocation(line: 49, column: 25, scope: !3615, inlinedAt: !4001)
!4003 = !DILocation(line: 0, scope: !3596, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 49, column: 10, scope: !3615, inlinedAt: !4001)
!4005 = !DILocation(line: 39, column: 8, scope: !3603, inlinedAt: !4004)
!4006 = !DILocation(line: 39, column: 7, scope: !3596, inlinedAt: !4004)
!4007 = !DILocation(line: 40, column: 5, scope: !3603, inlinedAt: !4004)
!4008 = !DILocation(line: 0, scope: !3938, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 312, column: 10, scope: !3922, inlinedAt: !3999)
!4010 = !DILocation(line: 29, column: 10, scope: !3938, inlinedAt: !4009)
!4011 = !DILocation(line: 337, column: 3, scope: !3992)
!4012 = distinct !DISubprogram(name: "xalloc_die", scope: !660, file: !660, line: 32, type: !361, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !4013)
!4013 = !{!4014}
!4014 = !DILocalVariable(name: "__errstatus", scope: !4015, file: !660, line: 34, type: !4016)
!4015 = distinct !DILexicalBlock(scope: !4012, file: !660, line: 34, column: 3)
!4016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!4017 = !DILocation(line: 34, column: 3, scope: !4015)
!4018 = !DILocation(line: 0, scope: !4015)
!4019 = !DILocation(line: 40, column: 3, scope: !4012)
!4020 = distinct !DISubprogram(name: "close_stream", scope: !773, file: !773, line: 55, type: !4021, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4057)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!95, !4023}
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4025)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4025, file: !236, line: 51, baseType: !95, size: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4025, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4025, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4025, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4025, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4025, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4025, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4025, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4025, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4025, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4025, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4025, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4025, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4025, file: !236, line: 70, baseType: !4041, size: 64, offset: 832)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4025, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4025, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4025, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4025, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4025, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4025, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4025, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4025, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4025, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4025, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4025, file: !236, line: 93, baseType: !4041, size: 64, offset: 1344)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4025, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4025, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4025, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4025, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4057 = !{!4058, !4059, !4061, !4062}
!4058 = !DILocalVariable(name: "stream", arg: 1, scope: !4020, file: !773, line: 55, type: !4023)
!4059 = !DILocalVariable(name: "some_pending", scope: !4020, file: !773, line: 57, type: !4060)
!4060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!4061 = !DILocalVariable(name: "prev_fail", scope: !4020, file: !773, line: 58, type: !4060)
!4062 = !DILocalVariable(name: "fclose_fail", scope: !4020, file: !773, line: 59, type: !4060)
!4063 = !DILocation(line: 0, scope: !4020)
!4064 = !DILocation(line: 57, column: 30, scope: !4020)
!4065 = !DILocalVariable(name: "__stream", arg: 1, scope: !4066, file: !1542, line: 135, type: !4023)
!4066 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1542, file: !1542, line: 135, type: !4021, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4067)
!4067 = !{!4065}
!4068 = !DILocation(line: 0, scope: !4066, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 58, column: 27, scope: !4020)
!4070 = !DILocation(line: 137, column: 10, scope: !4066, inlinedAt: !4069)
!4071 = !{!1551, !875, i64 0}
!4072 = !DILocation(line: 58, column: 43, scope: !4020)
!4073 = !DILocation(line: 59, column: 29, scope: !4020)
!4074 = !DILocation(line: 59, column: 45, scope: !4020)
!4075 = !DILocation(line: 69, column: 17, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4020, file: !773, line: 69, column: 7)
!4077 = !DILocation(line: 57, column: 50, scope: !4020)
!4078 = !DILocation(line: 69, column: 33, scope: !4076)
!4079 = !DILocation(line: 69, column: 53, scope: !4076)
!4080 = !DILocation(line: 69, column: 59, scope: !4076)
!4081 = !DILocation(line: 69, column: 7, scope: !4020)
!4082 = !DILocation(line: 71, column: 11, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4076, file: !773, line: 70, column: 5)
!4084 = !DILocation(line: 72, column: 9, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4083, file: !773, line: 71, column: 11)
!4086 = !DILocation(line: 72, column: 15, scope: !4085)
!4087 = !DILocation(line: 77, column: 1, scope: !4020)
!4088 = !DISubprogram(name: "__fpending", scope: !4089, file: !4089, line: 75, type: !4090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4089 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!97, !4023}
!4092 = distinct !DISubprogram(name: "rpl_fclose", scope: !775, file: !775, line: 58, type: !4093, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4129)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!95, !4095}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4097)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4098)
!4098 = !{!4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4097, file: !236, line: 51, baseType: !95, size: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4097, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4097, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4097, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4097, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4097, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4097, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4097, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4097, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4097, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4097, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4097, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4097, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4097, file: !236, line: 70, baseType: !4113, size: 64, offset: 832)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4097, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4097, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4097, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4097, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4097, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4097, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4097, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4097, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4097, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4097, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4097, file: !236, line: 93, baseType: !4113, size: 64, offset: 1344)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4097, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4097, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4097, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4097, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4129 = !{!4130, !4131, !4132, !4133}
!4130 = !DILocalVariable(name: "fp", arg: 1, scope: !4092, file: !775, line: 58, type: !4095)
!4131 = !DILocalVariable(name: "saved_errno", scope: !4092, file: !775, line: 60, type: !95)
!4132 = !DILocalVariable(name: "fd", scope: !4092, file: !775, line: 63, type: !95)
!4133 = !DILocalVariable(name: "result", scope: !4092, file: !775, line: 74, type: !95)
!4134 = !DILocation(line: 0, scope: !4092)
!4135 = !DILocation(line: 63, column: 12, scope: !4092)
!4136 = !DILocation(line: 64, column: 10, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4092, file: !775, line: 64, column: 7)
!4138 = !DILocation(line: 64, column: 7, scope: !4092)
!4139 = !DILocation(line: 65, column: 12, scope: !4137)
!4140 = !DILocation(line: 65, column: 5, scope: !4137)
!4141 = !DILocation(line: 70, column: 9, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4092, file: !775, line: 70, column: 7)
!4143 = !DILocation(line: 70, column: 23, scope: !4142)
!4144 = !DILocation(line: 70, column: 33, scope: !4142)
!4145 = !DILocation(line: 70, column: 26, scope: !4142)
!4146 = !DILocation(line: 70, column: 59, scope: !4142)
!4147 = !DILocation(line: 71, column: 7, scope: !4142)
!4148 = !DILocation(line: 71, column: 10, scope: !4142)
!4149 = !DILocation(line: 70, column: 7, scope: !4092)
!4150 = !DILocation(line: 100, column: 12, scope: !4092)
!4151 = !DILocation(line: 105, column: 7, scope: !4092)
!4152 = !DILocation(line: 72, column: 19, scope: !4142)
!4153 = !DILocation(line: 105, column: 19, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4092, file: !775, line: 105, column: 7)
!4155 = !DILocation(line: 107, column: 13, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4154, file: !775, line: 106, column: 5)
!4157 = !DILocation(line: 109, column: 5, scope: !4156)
!4158 = !DILocation(line: 112, column: 1, scope: !4092)
!4159 = !DISubprogram(name: "fileno", scope: !869, file: !869, line: 809, type: !4093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4160 = !DISubprogram(name: "fclose", scope: !869, file: !869, line: 178, type: !4093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4161 = !DISubprogram(name: "__freading", scope: !4089, file: !4089, line: 51, type: !4093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DISubprogram(name: "lseek", scope: !1354, file: !1354, line: 339, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!258, !95, !258, !95}
!4165 = distinct !DISubprogram(name: "fd_safer_flag", scope: !777, file: !777, line: 40, type: !367, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4166)
!4166 = !{!4167, !4168, !4169, !4172}
!4167 = !DILocalVariable(name: "fd", arg: 1, scope: !4165, file: !777, line: 40, type: !95)
!4168 = !DILocalVariable(name: "flag", arg: 2, scope: !4165, file: !777, line: 40, type: !95)
!4169 = !DILocalVariable(name: "f", scope: !4170, file: !777, line: 44, type: !95)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !777, line: 43, column: 5)
!4171 = distinct !DILexicalBlock(scope: !4165, file: !777, line: 42, column: 7)
!4172 = !DILocalVariable(name: "saved_errno", scope: !4170, file: !777, line: 45, type: !95)
!4173 = !DILocation(line: 0, scope: !4165)
!4174 = !DILocation(line: 42, column: 26, scope: !4171)
!4175 = !DILocation(line: 44, column: 15, scope: !4170)
!4176 = !DILocation(line: 0, scope: !4170)
!4177 = !DILocation(line: 45, column: 25, scope: !4170)
!4178 = !DILocation(line: 46, column: 7, scope: !4170)
!4179 = !DILocation(line: 47, column: 13, scope: !4170)
!4180 = !DILocation(line: 49, column: 5, scope: !4170)
!4181 = !DILocation(line: 51, column: 3, scope: !4165)
!4182 = distinct !DISubprogram(name: "dup_safer_flag", scope: !779, file: !779, line: 34, type: !367, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4183)
!4183 = !{!4184, !4185}
!4184 = !DILocalVariable(name: "fd", arg: 1, scope: !4182, file: !779, line: 34, type: !95)
!4185 = !DILocalVariable(name: "flag", arg: 2, scope: !4182, file: !779, line: 34, type: !95)
!4186 = !DILocation(line: 0, scope: !4182)
!4187 = !DILocation(line: 36, column: 27, scope: !4182)
!4188 = !DILocation(line: 36, column: 21, scope: !4182)
!4189 = !DILocation(line: 36, column: 10, scope: !4182)
!4190 = !DILocation(line: 36, column: 3, scope: !4182)
!4191 = distinct !DISubprogram(name: "rpl_fflush", scope: !781, file: !781, line: 130, type: !4192, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4228)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!95, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4196)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4196, file: !236, line: 51, baseType: !95, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4196, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4196, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4196, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4196, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4196, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4196, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4196, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4196, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4196, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4196, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4196, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4196, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4196, file: !236, line: 70, baseType: !4212, size: 64, offset: 832)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4196, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4196, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4196, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4196, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4196, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4196, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4196, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4196, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4196, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4196, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4196, file: !236, line: 93, baseType: !4212, size: 64, offset: 1344)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4196, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4196, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4196, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4196, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4228 = !{!4229}
!4229 = !DILocalVariable(name: "stream", arg: 1, scope: !4191, file: !781, line: 130, type: !4194)
!4230 = !DILocation(line: 0, scope: !4191)
!4231 = !DILocation(line: 151, column: 14, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4191, file: !781, line: 151, column: 7)
!4233 = !DILocation(line: 151, column: 22, scope: !4232)
!4234 = !DILocation(line: 151, column: 27, scope: !4232)
!4235 = !DILocation(line: 151, column: 7, scope: !4191)
!4236 = !DILocation(line: 152, column: 12, scope: !4232)
!4237 = !DILocation(line: 152, column: 5, scope: !4232)
!4238 = !DILocalVariable(name: "fp", arg: 1, scope: !4239, file: !781, line: 42, type: !4194)
!4239 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !781, file: !781, line: 42, type: !4240, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4242)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !4194}
!4242 = !{!4238}
!4243 = !DILocation(line: 0, scope: !4239, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 157, column: 3, scope: !4191)
!4245 = !DILocation(line: 44, column: 12, scope: !4246, inlinedAt: !4244)
!4246 = distinct !DILexicalBlock(scope: !4239, file: !781, line: 44, column: 7)
!4247 = !DILocation(line: 44, column: 19, scope: !4246, inlinedAt: !4244)
!4248 = !DILocation(line: 44, column: 7, scope: !4239, inlinedAt: !4244)
!4249 = !DILocation(line: 46, column: 5, scope: !4246, inlinedAt: !4244)
!4250 = !DILocation(line: 159, column: 10, scope: !4191)
!4251 = !DILocation(line: 159, column: 3, scope: !4191)
!4252 = !DILocation(line: 236, column: 1, scope: !4191)
!4253 = !DISubprogram(name: "fflush", scope: !869, file: !869, line: 230, type: !4192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4254 = distinct !DISubprogram(name: "rpl_fseeko", scope: !783, file: !783, line: 28, type: !4255, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4292)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!95, !4257, !4291, !95}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4259)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4260)
!4260 = !{!4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4259, file: !236, line: 51, baseType: !95, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4259, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4259, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4259, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4259, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4259, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4259, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4259, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4259, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4259, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4259, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4259, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4259, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4259, file: !236, line: 70, baseType: !4275, size: 64, offset: 832)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4259, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4259, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4259, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4259, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4259, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4259, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4259, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4259, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4259, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4259, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4259, file: !236, line: 93, baseType: !4275, size: 64, offset: 1344)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4259, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4259, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4259, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4259, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4291 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !869, line: 63, baseType: !258)
!4292 = !{!4293, !4294, !4295, !4296}
!4293 = !DILocalVariable(name: "fp", arg: 1, scope: !4254, file: !783, line: 28, type: !4257)
!4294 = !DILocalVariable(name: "offset", arg: 2, scope: !4254, file: !783, line: 28, type: !4291)
!4295 = !DILocalVariable(name: "whence", arg: 3, scope: !4254, file: !783, line: 28, type: !95)
!4296 = !DILocalVariable(name: "pos", scope: !4297, file: !783, line: 123, type: !4291)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !783, line: 119, column: 5)
!4298 = distinct !DILexicalBlock(scope: !4254, file: !783, line: 55, column: 7)
!4299 = !DILocation(line: 0, scope: !4254)
!4300 = !DILocation(line: 55, column: 12, scope: !4298)
!4301 = !{!1551, !814, i64 16}
!4302 = !DILocation(line: 55, column: 33, scope: !4298)
!4303 = !{!1551, !814, i64 8}
!4304 = !DILocation(line: 55, column: 25, scope: !4298)
!4305 = !DILocation(line: 56, column: 7, scope: !4298)
!4306 = !DILocation(line: 56, column: 15, scope: !4298)
!4307 = !DILocation(line: 56, column: 37, scope: !4298)
!4308 = !{!1551, !814, i64 32}
!4309 = !DILocation(line: 56, column: 29, scope: !4298)
!4310 = !DILocation(line: 57, column: 7, scope: !4298)
!4311 = !DILocation(line: 57, column: 15, scope: !4298)
!4312 = !{!1551, !814, i64 72}
!4313 = !DILocation(line: 57, column: 29, scope: !4298)
!4314 = !DILocation(line: 55, column: 7, scope: !4254)
!4315 = !DILocation(line: 123, column: 26, scope: !4297)
!4316 = !DILocation(line: 123, column: 19, scope: !4297)
!4317 = !DILocation(line: 0, scope: !4297)
!4318 = !DILocation(line: 124, column: 15, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4297, file: !783, line: 124, column: 11)
!4320 = !DILocation(line: 124, column: 11, scope: !4297)
!4321 = !DILocation(line: 135, column: 19, scope: !4297)
!4322 = !DILocation(line: 136, column: 12, scope: !4297)
!4323 = !DILocation(line: 136, column: 20, scope: !4297)
!4324 = !{!1551, !1262, i64 144}
!4325 = !DILocation(line: 167, column: 7, scope: !4297)
!4326 = !DILocation(line: 169, column: 10, scope: !4254)
!4327 = !DILocation(line: 169, column: 3, scope: !4254)
!4328 = !DILocation(line: 170, column: 1, scope: !4254)
!4329 = !DISubprogram(name: "fseeko", scope: !869, file: !869, line: 736, type: !4330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!95, !4257, !258, !95}
!4332 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !667, file: !667, line: 100, type: !4333, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !4336)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!97, !2044, !70, !97, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!4336 = !{!4337, !4338, !4339, !4340, !4341}
!4337 = !DILocalVariable(name: "pwc", arg: 1, scope: !4332, file: !667, line: 100, type: !2044)
!4338 = !DILocalVariable(name: "s", arg: 2, scope: !4332, file: !667, line: 100, type: !70)
!4339 = !DILocalVariable(name: "n", arg: 3, scope: !4332, file: !667, line: 100, type: !97)
!4340 = !DILocalVariable(name: "ps", arg: 4, scope: !4332, file: !667, line: 100, type: !4335)
!4341 = !DILocalVariable(name: "ret", scope: !4332, file: !667, line: 130, type: !97)
!4342 = !DILocation(line: 0, scope: !4332)
!4343 = !DILocation(line: 105, column: 9, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4332, file: !667, line: 105, column: 7)
!4345 = !DILocation(line: 105, column: 7, scope: !4332)
!4346 = !DILocation(line: 117, column: 10, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4332, file: !667, line: 117, column: 7)
!4348 = !DILocation(line: 117, column: 7, scope: !4332)
!4349 = !DILocation(line: 130, column: 16, scope: !4332)
!4350 = !DILocation(line: 135, column: 11, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4332, file: !667, line: 135, column: 7)
!4352 = !DILocation(line: 135, column: 25, scope: !4351)
!4353 = !DILocation(line: 135, column: 30, scope: !4351)
!4354 = !DILocation(line: 135, column: 7, scope: !4332)
!4355 = !DILocalVariable(name: "ps", arg: 1, scope: !4356, file: !2018, line: 1135, type: !4335)
!4356 = distinct !DISubprogram(name: "mbszero", scope: !2018, file: !2018, line: 1135, type: !4357, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !4359)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !4335}
!4359 = !{!4355}
!4360 = !DILocation(line: 0, scope: !4356, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 137, column: 5, scope: !4351)
!4362 = !DILocalVariable(name: "__dest", arg: 1, scope: !4363, file: !1097, line: 57, type: !94)
!4363 = distinct !DISubprogram(name: "memset", scope: !1097, file: !1097, line: 57, type: !2027, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !4364)
!4364 = !{!4362, !4365, !4366}
!4365 = !DILocalVariable(name: "__ch", arg: 2, scope: !4363, file: !1097, line: 57, type: !95)
!4366 = !DILocalVariable(name: "__len", arg: 3, scope: !4363, file: !1097, line: 57, type: !97)
!4367 = !DILocation(line: 0, scope: !4363, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 1137, column: 3, scope: !4356, inlinedAt: !4361)
!4369 = !DILocation(line: 59, column: 10, scope: !4363, inlinedAt: !4368)
!4370 = !DILocation(line: 137, column: 5, scope: !4351)
!4371 = !DILocation(line: 138, column: 11, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4332, file: !667, line: 138, column: 7)
!4373 = !DILocation(line: 138, column: 7, scope: !4332)
!4374 = !DILocation(line: 139, column: 5, scope: !4372)
!4375 = !DILocation(line: 143, column: 26, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4332, file: !667, line: 143, column: 7)
!4377 = !DILocation(line: 143, column: 41, scope: !4376)
!4378 = !DILocation(line: 143, column: 7, scope: !4332)
!4379 = !DILocation(line: 145, column: 15, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !667, line: 145, column: 11)
!4381 = distinct !DILexicalBlock(scope: !4376, file: !667, line: 144, column: 5)
!4382 = !DILocation(line: 145, column: 11, scope: !4381)
!4383 = !DILocation(line: 146, column: 32, scope: !4380)
!4384 = !DILocation(line: 146, column: 16, scope: !4380)
!4385 = !DILocation(line: 146, column: 14, scope: !4380)
!4386 = !DILocation(line: 146, column: 9, scope: !4380)
!4387 = !DILocation(line: 286, column: 1, scope: !4332)
!4388 = !DISubprogram(name: "mbsinit", scope: !4389, file: !4389, line: 293, type: !4390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4389 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!95, !4392}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!4394 = !DILocation(line: 0, scope: !685)
!4395 = !DILocation(line: 46, column: 12, scope: !685)
!4396 = !DILocation(line: 45, column: 12, scope: !685)
!4397 = !DILocation(line: 55, column: 9, scope: !698)
!4398 = !DILocation(line: 55, column: 27, scope: !698)
!4399 = !DILocation(line: 55, column: 9, scope: !699)
!4400 = !DILocation(line: 57, column: 22, scope: !697)
!4401 = !DILocation(line: 0, scope: !697)
!4402 = !DILocation(line: 58, column: 22, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !697, file: !686, line: 58, column: 13)
!4404 = !DILocation(line: 58, column: 26, scope: !4403)
!4405 = !DILocation(line: 58, column: 29, scope: !4403)
!4406 = !DILocation(line: 58, column: 35, scope: !4403)
!4407 = !DILocation(line: 58, column: 13, scope: !697)
!4408 = !DILocation(line: 69, column: 14, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !685, file: !686, line: 69, column: 7)
!4410 = !DILocation(line: 69, column: 63, scope: !4409)
!4411 = !DILocation(line: 69, column: 7, scope: !685)
!4412 = !DILocation(line: 71, column: 7, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4409, file: !686, line: 70, column: 5)
!4414 = !DILocation(line: 71, column: 13, scope: !4413)
!4415 = !DILocation(line: 72, column: 7, scope: !4413)
!4416 = !DILocation(line: 106, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !685, file: !686, line: 106, column: 7)
!4418 = !DILocation(line: 106, column: 17, scope: !4417)
!4419 = !DILocation(line: 106, column: 7, scope: !685)
!4420 = !DILocation(line: 115, column: 13, scope: !702)
!4421 = !DILocation(line: 115, column: 7, scope: !685)
!4422 = !DILocation(line: 119, column: 33, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !701, file: !686, line: 119, column: 11)
!4424 = !DILocation(line: 119, column: 26, scope: !4423)
!4425 = !DILocation(line: 0, scope: !701)
!4426 = !DILocation(line: 119, column: 53, scope: !4423)
!4427 = !DILocation(line: 120, column: 11, scope: !4423)
!4428 = !DILocation(line: 120, column: 21, scope: !4423)
!4429 = !DILocation(line: 120, column: 49, scope: !4423)
!4430 = !DILocation(line: 120, column: 14, scope: !4423)
!4431 = !DILocation(line: 120, column: 63, scope: !4423)
!4432 = !DILocation(line: 121, column: 11, scope: !4423)
!4433 = !DILocation(line: 121, column: 36, scope: !4423)
!4434 = !DILocation(line: 121, column: 29, scope: !4423)
!4435 = !DILocation(line: 121, column: 56, scope: !4423)
!4436 = !DILocation(line: 122, column: 11, scope: !4423)
!4437 = !DILocation(line: 122, column: 21, scope: !4423)
!4438 = !DILocation(line: 122, column: 49, scope: !4423)
!4439 = !DILocation(line: 122, column: 14, scope: !4423)
!4440 = !DILocation(line: 122, column: 63, scope: !4423)
!4441 = !DILocation(line: 119, column: 11, scope: !701)
!4442 = !DILocation(line: 126, column: 13, scope: !705)
!4443 = !DILocation(line: 126, column: 7, scope: !685)
!4444 = !DILocation(line: 130, column: 33, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !704, file: !686, line: 130, column: 11)
!4446 = !DILocation(line: 130, column: 26, scope: !4445)
!4447 = !DILocation(line: 0, scope: !704)
!4448 = !DILocation(line: 130, column: 53, scope: !4445)
!4449 = !DILocation(line: 131, column: 11, scope: !4445)
!4450 = !DILocation(line: 131, column: 21, scope: !4445)
!4451 = !DILocation(line: 131, column: 49, scope: !4445)
!4452 = !DILocation(line: 131, column: 14, scope: !4445)
!4453 = !DILocation(line: 131, column: 63, scope: !4445)
!4454 = !DILocation(line: 132, column: 11, scope: !4445)
!4455 = !DILocation(line: 132, column: 36, scope: !4445)
!4456 = !DILocation(line: 132, column: 29, scope: !4445)
!4457 = !DILocation(line: 132, column: 56, scope: !4445)
!4458 = !DILocation(line: 133, column: 11, scope: !4445)
!4459 = !DILocation(line: 133, column: 21, scope: !4445)
!4460 = !DILocation(line: 133, column: 49, scope: !4445)
!4461 = !DILocation(line: 133, column: 14, scope: !4445)
!4462 = !DILocation(line: 133, column: 63, scope: !4445)
!4463 = !DILocation(line: 130, column: 11, scope: !704)
!4464 = !DILocation(line: 155, column: 2, scope: !685)
!4465 = !DILocation(line: 157, column: 23, scope: !708)
!4466 = !DILocation(line: 0, scope: !708)
!4467 = !DILocation(line: 158, column: 12, scope: !708)
!4468 = !DILocation(line: 158, column: 5, scope: !708)
!4469 = !DILocation(line: 159, column: 12, scope: !708)
!4470 = !DILocation(line: 159, column: 5, scope: !708)
!4471 = !DILocation(line: 160, column: 11, scope: !708)
!4472 = !DILocation(line: 162, column: 11, scope: !708)
!4473 = !DILocation(line: 166, column: 1, scope: !685)
!4474 = !DISubprogram(name: "pipe2", scope: !1354, file: !1354, line: 442, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4475 = !DISubprogram(name: "pipe", scope: !1354, file: !1354, line: 437, type: !4476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!95, !403}
!4478 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !785, file: !785, line: 27, type: !3580, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4479)
!4479 = !{!4480, !4481, !4482, !4483}
!4480 = !DILocalVariable(name: "ptr", arg: 1, scope: !4478, file: !785, line: 27, type: !94)
!4481 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4478, file: !785, line: 27, type: !97)
!4482 = !DILocalVariable(name: "size", arg: 3, scope: !4478, file: !785, line: 27, type: !97)
!4483 = !DILocalVariable(name: "nbytes", scope: !4478, file: !785, line: 29, type: !97)
!4484 = !DILocation(line: 0, scope: !4478)
!4485 = !DILocation(line: 30, column: 7, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4478, file: !785, line: 30, column: 7)
!4487 = !DILocation(line: 30, column: 7, scope: !4478)
!4488 = !DILocation(line: 32, column: 7, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4486, file: !785, line: 31, column: 5)
!4490 = !DILocation(line: 32, column: 13, scope: !4489)
!4491 = !DILocation(line: 33, column: 7, scope: !4489)
!4492 = !DILocalVariable(name: "ptr", arg: 1, scope: !4493, file: !3672, line: 2057, type: !94)
!4493 = distinct !DISubprogram(name: "rpl_realloc", scope: !3672, file: !3672, line: 2057, type: !3664, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4494)
!4494 = !{!4492, !4495}
!4495 = !DILocalVariable(name: "size", arg: 2, scope: !4493, file: !3672, line: 2057, type: !97)
!4496 = !DILocation(line: 0, scope: !4493, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 37, column: 10, scope: !4478)
!4498 = !DILocation(line: 2059, column: 24, scope: !4493, inlinedAt: !4497)
!4499 = !DILocation(line: 2059, column: 10, scope: !4493, inlinedAt: !4497)
!4500 = !DILocation(line: 37, column: 3, scope: !4478)
!4501 = !DILocation(line: 38, column: 1, scope: !4478)
!4502 = distinct !DISubprogram(name: "hard_locale", scope: !711, file: !711, line: 28, type: !4503, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4505)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!219, !95}
!4505 = !{!4506, !4507}
!4506 = !DILocalVariable(name: "category", arg: 1, scope: !4502, file: !711, line: 28, type: !95)
!4507 = !DILocalVariable(name: "locale", scope: !4502, file: !711, line: 30, type: !4508)
!4508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4509)
!4509 = !{!4510}
!4510 = !DISubrange(count: 257)
!4511 = distinct !DIAssignID()
!4512 = !DILocation(line: 0, scope: !4502)
!4513 = !DILocation(line: 30, column: 3, scope: !4502)
!4514 = !DILocation(line: 32, column: 7, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4502, file: !711, line: 32, column: 7)
!4516 = !DILocation(line: 32, column: 7, scope: !4502)
!4517 = !DILocalVariable(name: "__s1", arg: 1, scope: !4518, file: !887, line: 1359, type: !70)
!4518 = distinct !DISubprogram(name: "streq", scope: !887, file: !887, line: 1359, type: !888, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4519)
!4519 = !{!4517, !4520}
!4520 = !DILocalVariable(name: "__s2", arg: 2, scope: !4518, file: !887, line: 1359, type: !70)
!4521 = !DILocation(line: 0, scope: !4518, inlinedAt: !4522)
!4522 = distinct !DILocation(line: 35, column: 9, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4502, file: !711, line: 35, column: 7)
!4524 = !DILocation(line: 1361, column: 11, scope: !4518, inlinedAt: !4522)
!4525 = !DILocation(line: 35, column: 29, scope: !4523)
!4526 = !DILocation(line: 0, scope: !4518, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 35, column: 32, scope: !4523)
!4528 = !DILocation(line: 1361, column: 11, scope: !4518, inlinedAt: !4527)
!4529 = !DILocation(line: 1361, column: 10, scope: !4518, inlinedAt: !4527)
!4530 = !DILocation(line: 35, column: 7, scope: !4502)
!4531 = !DILocation(line: 46, column: 3, scope: !4502)
!4532 = !DILocation(line: 47, column: 1, scope: !4502)
!4533 = distinct !DISubprogram(name: "setlocale_null_r", scope: !791, file: !791, line: 154, type: !4534, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4536)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!95, !95, !101, !97}
!4536 = !{!4537, !4538, !4539}
!4537 = !DILocalVariable(name: "category", arg: 1, scope: !4533, file: !791, line: 154, type: !95)
!4538 = !DILocalVariable(name: "buf", arg: 2, scope: !4533, file: !791, line: 154, type: !101)
!4539 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4533, file: !791, line: 154, type: !97)
!4540 = !DILocation(line: 0, scope: !4533)
!4541 = !DILocation(line: 159, column: 10, scope: !4533)
!4542 = !DILocation(line: 159, column: 3, scope: !4533)
!4543 = distinct !DISubprogram(name: "setlocale_null", scope: !791, file: !791, line: 186, type: !4544, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!70, !95}
!4546 = !{!4547}
!4547 = !DILocalVariable(name: "category", arg: 1, scope: !4543, file: !791, line: 186, type: !95)
!4548 = !DILocation(line: 0, scope: !4543)
!4549 = !DILocation(line: 189, column: 10, scope: !4543)
!4550 = !DILocation(line: 189, column: 3, scope: !4543)
!4551 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !793, file: !793, line: 35, type: !4544, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4552)
!4552 = !{!4553, !4554}
!4553 = !DILocalVariable(name: "category", arg: 1, scope: !4551, file: !793, line: 35, type: !95)
!4554 = !DILocalVariable(name: "result", scope: !4551, file: !793, line: 37, type: !70)
!4555 = !DILocation(line: 0, scope: !4551)
!4556 = !DILocation(line: 37, column: 24, scope: !4551)
!4557 = !DILocation(line: 62, column: 3, scope: !4551)
!4558 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !793, file: !793, line: 66, type: !4534, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4559)
!4559 = !{!4560, !4561, !4562, !4563, !4564}
!4560 = !DILocalVariable(name: "category", arg: 1, scope: !4558, file: !793, line: 66, type: !95)
!4561 = !DILocalVariable(name: "buf", arg: 2, scope: !4558, file: !793, line: 66, type: !101)
!4562 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4558, file: !793, line: 66, type: !97)
!4563 = !DILocalVariable(name: "result", scope: !4558, file: !793, line: 111, type: !70)
!4564 = !DILocalVariable(name: "length", scope: !4565, file: !793, line: 125, type: !97)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !793, line: 124, column: 5)
!4566 = distinct !DILexicalBlock(scope: !4558, file: !793, line: 113, column: 7)
!4567 = !DILocation(line: 0, scope: !4558)
!4568 = !DILocation(line: 0, scope: !4551, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 111, column: 24, scope: !4558)
!4570 = !DILocation(line: 37, column: 24, scope: !4551, inlinedAt: !4569)
!4571 = !DILocation(line: 113, column: 14, scope: !4566)
!4572 = !DILocation(line: 113, column: 7, scope: !4558)
!4573 = !DILocation(line: 116, column: 19, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4575, file: !793, line: 116, column: 11)
!4575 = distinct !DILexicalBlock(scope: !4566, file: !793, line: 114, column: 5)
!4576 = !DILocation(line: 116, column: 11, scope: !4575)
!4577 = !DILocation(line: 120, column: 16, scope: !4574)
!4578 = !DILocation(line: 120, column: 9, scope: !4574)
!4579 = !DILocation(line: 125, column: 23, scope: !4565)
!4580 = !DILocation(line: 0, scope: !4565)
!4581 = !DILocation(line: 126, column: 18, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4565, file: !793, line: 126, column: 11)
!4583 = !DILocation(line: 126, column: 11, scope: !4565)
!4584 = !DILocation(line: 128, column: 39, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4582, file: !793, line: 127, column: 9)
!4586 = !DILocalVariable(name: "__dest", arg: 1, scope: !4587, file: !1097, line: 26, type: !1100)
!4587 = distinct !DISubprogram(name: "memcpy", scope: !1097, file: !1097, line: 26, type: !1098, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4588)
!4588 = !{!4586, !4589, !4590}
!4589 = !DILocalVariable(name: "__src", arg: 2, scope: !4587, file: !1097, line: 26, type: !1021)
!4590 = !DILocalVariable(name: "__len", arg: 3, scope: !4587, file: !1097, line: 26, type: !97)
!4591 = !DILocation(line: 0, scope: !4587, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 128, column: 11, scope: !4585)
!4593 = !DILocation(line: 29, column: 10, scope: !4587, inlinedAt: !4592)
!4594 = !DILocation(line: 129, column: 11, scope: !4585)
!4595 = !DILocation(line: 133, column: 23, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !793, line: 133, column: 15)
!4597 = distinct !DILexicalBlock(scope: !4582, file: !793, line: 132, column: 9)
!4598 = !DILocation(line: 133, column: 15, scope: !4597)
!4599 = !DILocation(line: 138, column: 44, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4596, file: !793, line: 134, column: 13)
!4601 = !DILocation(line: 0, scope: !4587, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 138, column: 15, scope: !4600)
!4603 = !DILocation(line: 29, column: 10, scope: !4587, inlinedAt: !4602)
!4604 = !DILocation(line: 139, column: 15, scope: !4600)
!4605 = !DILocation(line: 139, column: 32, scope: !4600)
!4606 = !DILocation(line: 140, column: 13, scope: !4600)
!4607 = !DILocation(line: 0, scope: !4566)
!4608 = !DILocation(line: 145, column: 1, scope: !4558)
