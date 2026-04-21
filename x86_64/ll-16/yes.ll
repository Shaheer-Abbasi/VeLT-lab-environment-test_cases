; ModuleID = 'src/yes.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !350
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !320
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !340
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !342
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !344
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !346
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !348
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !352
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !354
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !359
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !364
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !382
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.49, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.50, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !385
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !806, metadata !DIExpression()), !dbg !807
  %2 = icmp eq i32 %0, 0, !dbg !808
  br i1 %2, label %8, label %3, !dbg !810

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !811, !tbaa !813
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !811
  %6 = load ptr, ptr @program_name, align 8, !dbg !811, !tbaa !813
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !811
  br label %31, !dbg !811

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !817
  %10 = load ptr, ptr @program_name, align 8, !dbg !817, !tbaa !813
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #39, !dbg !817
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !819
  %13 = load ptr, ptr @stdout, align 8, !dbg !819, !tbaa !813
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !819
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !820
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !820
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !821
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !821
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !822, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !834, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata ptr poison, metadata !834, metadata !DIExpression()), !dbg !839
  tail call void @emit_bug_reporting_address() #39, !dbg !841
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !842
  call void @llvm.dbg.value(metadata ptr %17, metadata !837, metadata !DIExpression()), !dbg !839
  %18 = icmp eq ptr %17, null, !dbg !843
  br i1 %18, label %26, label %19, !dbg !845

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #40, !dbg !846
  %21 = icmp eq i32 %20, 0, !dbg !846
  br i1 %21, label %26, label %22, !dbg !847

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #39, !dbg !848
  %24 = load ptr, ptr @stdout, align 8, !dbg !848, !tbaa !813
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !848
  br label %26, !dbg !850

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !834, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !838, metadata !DIExpression()), !dbg !839
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #39, !dbg !851
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #39, !dbg !851
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !852
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #39, !dbg !852
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !853
  unreachable, !dbg !853
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !854 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !859 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !865 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !868 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !213, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %0, metadata !214, metadata !DIExpression()), !dbg !872
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !873, !tbaa !874
  %3 = icmp eq i32 %2, -1, !dbg !876
  br i1 %3, label %4, label %16, !dbg !877

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #39, !dbg !878
  call void @llvm.dbg.value(metadata ptr %5, metadata !215, metadata !DIExpression()), !dbg !879
  %6 = icmp eq ptr %5, null, !dbg !880
  br i1 %6, label %14, label %7, !dbg !881

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !882, !tbaa !883
  %9 = icmp eq i8 %8, 0, !dbg !882
  br i1 %9, label %14, label %10, !dbg !884

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !885, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !891, metadata !DIExpression()), !dbg !892
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #40, !dbg !894
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
  br label %128, !dbg !903

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !218, metadata !DIExpression()), !dbg !872
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #40, !dbg !904
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !905
  call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !872
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !906
  call void @llvm.dbg.value(metadata ptr %25, metadata !221, metadata !DIExpression()), !dbg !872
  %26 = icmp eq ptr %25, null, !dbg !907
  br i1 %26, label %58, label %27, !dbg !908

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !909
  br i1 %28, label %58, label %29, !dbg !910

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !222, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !911
  %30 = icmp ult ptr %24, %25, !dbg !912
  br i1 %30, label %31, label %52, !dbg !913

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !872
  %33 = load ptr, ptr %32, align 8, !tbaa !813
  br label %34, !dbg !913

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !222, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !911
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !914
  call void @llvm.dbg.value(metadata ptr %37, metadata !222, metadata !DIExpression()), !dbg !911
  %38 = load i8, ptr %35, align 1, !dbg !914, !tbaa !883
  %39 = sext i8 %38 to i64, !dbg !914
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !914
  %41 = load i16, ptr %40, align 2, !dbg !914, !tbaa !915
  %42 = freeze i16 %41, !dbg !917
  %43 = lshr i16 %42, 13, !dbg !917
  %44 = and i16 %43, 1, !dbg !917
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !918
  call void @llvm.dbg.value(metadata i64 %46, metadata !226, metadata !DIExpression()), !dbg !911
  %47 = icmp ult ptr %37, %25, !dbg !912
  %48 = icmp ult i64 %46, 2, !dbg !919
  %49 = select i1 %47, i1 %48, i1 false, !dbg !919
  br i1 %49, label %34, label %50, !dbg !913, !llvm.loop !920

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !922
  br i1 %51, label %52, label %54, !dbg !924

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !924

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !924
  call void @llvm.dbg.value(metadata i8 %57, metadata !218, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %56, metadata !221, metadata !DIExpression()), !dbg !872
  br label %58, !dbg !925

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !872
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !872
  call void @llvm.dbg.value(metadata i8 %60, metadata !218, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %59, metadata !221, metadata !DIExpression()), !dbg !872
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.16) #40, !dbg !926
  call void @llvm.dbg.value(metadata i64 %61, metadata !227, metadata !DIExpression()), !dbg !872
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !927
  call void @llvm.dbg.value(metadata ptr %62, metadata !228, metadata !DIExpression()), !dbg !872
  br label %63, !dbg !928

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !872
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !872
  call void @llvm.dbg.value(metadata i8 %65, metadata !218, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %64, metadata !228, metadata !DIExpression()), !dbg !872
  %66 = load i8, ptr %64, align 1, !dbg !929, !tbaa !883
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !930

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !931
  %69 = load i8, ptr %68, align 1, !dbg !934, !tbaa !883
  %70 = icmp eq i8 %69, 45, !dbg !935
  %71 = select i1 %70, i8 0, i8 %65, !dbg !936
  br label %72, !dbg !936

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !872
  call void @llvm.dbg.value(metadata i8 %73, metadata !218, metadata !DIExpression()), !dbg !872
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !937
  %75 = load ptr, ptr %74, align 8, !dbg !937, !tbaa !813
  %76 = sext i8 %66 to i64, !dbg !937
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !937
  %78 = load i16, ptr %77, align 2, !dbg !937, !tbaa !915
  %79 = and i16 %78, 8192, !dbg !937
  %80 = icmp eq i16 %79, 0, !dbg !937
  br i1 %80, label %96, label %81, !dbg !939

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !940
  br i1 %82, label %98, label %83, !dbg !943

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !944
  %85 = load i8, ptr %84, align 1, !dbg !944, !tbaa !883
  %86 = sext i8 %85 to i64, !dbg !944
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !944
  %88 = load i16, ptr %87, align 2, !dbg !944, !tbaa !915
  %89 = and i16 %88, 8192, !dbg !944
  %90 = icmp eq i16 %89, 0, !dbg !944
  br i1 %90, label %91, label %98, !dbg !945

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !946
  %93 = icmp ne i8 %92, 0, !dbg !946
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !948
  br i1 %95, label %96, label %98, !dbg !948

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !949
  call void @llvm.dbg.value(metadata ptr %97, metadata !228, metadata !DIExpression()), !dbg !872
  br label %63, !dbg !928, !llvm.loop !950

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !952
  %100 = load ptr, ptr @stdout, align 8, !dbg !952, !tbaa !813
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !285, metadata !DIExpression()), !dbg !872
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #40, !dbg !973
  %103 = icmp eq i32 %102, 0, !dbg !973
  br i1 %103, label %107, label %104, !dbg !975

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #40, !dbg !976
  %106 = icmp eq i32 %105, 0, !dbg !976
  br i1 %106, label %107, label %110, !dbg !977

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !978
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #39, !dbg !978
  br label %113, !dbg !980

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !981
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #39, !dbg !981
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !813
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %114), !dbg !983
  %116 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !813
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %116), !dbg !984
  %118 = ptrtoint ptr %64 to i64, !dbg !985
  %119 = sub i64 %118, %99, !dbg !985
  %120 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !813
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !985
  %122 = load ptr, ptr @stdout, align 8, !dbg !986, !tbaa !813
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %122), !dbg !986
  %124 = load ptr, ptr @stdout, align 8, !dbg !987, !tbaa !813
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %124), !dbg !987
  %126 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !813
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !988
  br label %128, !dbg !989

128:                                              ; preds = %113, %19
  ret void, !dbg !989
}

; Function Attrs: nounwind
declare !dbg !990 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !994 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !998 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1000 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1003 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1006 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1009 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1012 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1018 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1019 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1025 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca %struct.iovec, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1030, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr %1, metadata !1031, metadata !DIExpression()), !dbg !1044
  %5 = load ptr, ptr %1, align 8, !dbg !1045, !tbaa !813
  tail call void @set_program_name(ptr noundef %5) #39, !dbg !1046
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #39, !dbg !1047
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #39, !dbg !1048
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #39, !dbg !1049
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1050
  %10 = load ptr, ptr @Version, align 8, !dbg !1051, !tbaa !813
  %11 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #39, !dbg !1052
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %10, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %11, ptr noundef null) #39, !dbg !1053
  %12 = load i32, ptr @optind, align 4, !dbg !1054, !tbaa !874
  %13 = sext i32 %12 to i64, !dbg !1055
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !1055
  call void @llvm.dbg.value(metadata ptr %14, metadata !1032, metadata !DIExpression()), !dbg !1044
  %15 = sext i32 %0 to i64, !dbg !1056
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1056
  call void @llvm.dbg.value(metadata ptr %16, metadata !1033, metadata !DIExpression()), !dbg !1044
  %17 = icmp eq i32 %12, %0, !dbg !1057
  br i1 %17, label %18, label %20, !dbg !1059

18:                                               ; preds = %2
  %19 = getelementptr inbounds ptr, ptr %16, i64 1, !dbg !1060
  call void @llvm.dbg.value(metadata ptr %19, metadata !1033, metadata !DIExpression()), !dbg !1044
  store ptr @.str.11, ptr %16, align 8, !dbg !1061, !tbaa !813
  br label %20, !dbg !1062

20:                                               ; preds = %18, %2
  %21 = phi ptr [ %19, %18 ], [ %16, %2 ], !dbg !1044
  call void @llvm.dbg.value(metadata ptr %21, metadata !1033, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 0, metadata !1034, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8 1, metadata !1035, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr %14, metadata !1036, metadata !DIExpression()), !dbg !1044
  %22 = load ptr, ptr %14, align 8, !dbg !1063, !tbaa !813
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #40, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %23, metadata !1037, metadata !DIExpression()), !dbg !1065
  %24 = add i64 %23, 1, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %24, metadata !1034, metadata !DIExpression()), !dbg !1044
  %25 = getelementptr inbounds ptr, ptr %14, i64 1, !dbg !1067
  %26 = icmp ult ptr %25, %21, !dbg !1069
  br i1 %26, label %27, label %43, !dbg !1070

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %41, %27 ], [ %25, %20 ]
  %29 = phi i64 [ %40, %27 ], [ %24, %20 ]
  %30 = phi i64 [ %38, %27 ], [ %23, %20 ]
  %31 = phi ptr [ %35, %27 ], [ %22, %20 ]
  %32 = phi i8 [ %37, %27 ], [ 1, %20 ]
  call void @llvm.dbg.value(metadata i8 %32, metadata !1035, metadata !DIExpression()), !dbg !1044
  %33 = getelementptr i8, ptr %31, i64 1, !dbg !1071
  %34 = getelementptr i8, ptr %33, i64 %30, !dbg !1072
  %35 = load ptr, ptr %28, align 8, !dbg !1073, !tbaa !813
  %36 = icmp eq ptr %34, %35, !dbg !1074
  %37 = select i1 %36, i8 %32, i8 0, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %29, metadata !1034, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8 %37, metadata !1035, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr %28, metadata !1036, metadata !DIExpression()), !dbg !1044
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #40, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %38, metadata !1037, metadata !DIExpression()), !dbg !1065
  %39 = add i64 %29, 1, !dbg !1076
  %40 = add i64 %39, %38, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %40, metadata !1034, metadata !DIExpression()), !dbg !1044
  %41 = getelementptr inbounds ptr, ptr %28, i64 1, !dbg !1067
  %42 = icmp ult ptr %41, %21, !dbg !1069
  br i1 %42, label %27, label %43, !dbg !1070

43:                                               ; preds = %27, %20
  %44 = phi i8 [ 1, %20 ], [ %37, %27 ], !dbg !1044
  %45 = phi i64 [ %24, %20 ], [ %40, %27 ], !dbg !1066
  call void @llvm.dbg.value(metadata i8 %44, metadata !1035, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr undef, metadata !1036, metadata !DIExpression()), !dbg !1044
  %46 = icmp ult i64 %45, 4097, !dbg !1077
  %47 = select i1 %46, i64 8192, i64 %45, !dbg !1079
  %48 = freeze i64 %47, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %47, metadata !1034, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8 poison, metadata !1035, metadata !DIExpression()), !dbg !1044
  %49 = and i8 %44, 1, !dbg !1083
  %50 = icmp eq i8 %49, 0, !dbg !1083
  %51 = select i1 %46, i1 true, i1 %50, !dbg !1083
  br i1 %51, label %52, label %54, !dbg !1083

52:                                               ; preds = %43
  %53 = tail call noalias nonnull ptr @xmalloc(i64 noundef %48) #43, !dbg !1084
  br label %54, !dbg !1083

54:                                               ; preds = %43, %52
  %55 = phi ptr [ %53, %52 ], [ %22, %43 ], !dbg !1083
  call void @llvm.dbg.value(metadata ptr %55, metadata !1039, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 0, metadata !1040, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr %14, metadata !1036, metadata !DIExpression()), !dbg !1044
  br label %56, !dbg !1085

56:                                               ; preds = %63, %54
  %57 = phi ptr [ %14, %54 ], [ %67, %63 ], !dbg !1044
  %58 = phi i64 [ 0, %54 ], [ %65, %63 ], !dbg !1044
  call void @llvm.dbg.value(metadata i64 %58, metadata !1040, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr %57, metadata !1036, metadata !DIExpression()), !dbg !1044
  %59 = load ptr, ptr %57, align 8, !dbg !1086, !tbaa !813
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #40, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %60, metadata !1041, metadata !DIExpression()), !dbg !1088
  br i1 %51, label %61, label %63, !dbg !1089

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %55, i64 %58, !dbg !1090
  call void @llvm.dbg.value(metadata ptr %62, metadata !1092, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr %59, metadata !1099, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %60, metadata !1100, metadata !DIExpression()), !dbg !1101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %62, ptr noundef nonnull align 1 %59, i64 noundef %60, i1 noundef false) #39, !dbg !1103
  br label %63, !dbg !1104

63:                                               ; preds = %61, %56
  %64 = add i64 %60, %58, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %64, metadata !1040, metadata !DIExpression()), !dbg !1044
  %65 = add i64 %64, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %65, metadata !1040, metadata !DIExpression()), !dbg !1044
  %66 = getelementptr inbounds i8, ptr %55, i64 %64, !dbg !1107
  store i8 32, ptr %66, align 1, !dbg !1108, !tbaa !883
  %67 = getelementptr inbounds ptr, ptr %57, i64 1, !dbg !1109
  call void @llvm.dbg.value(metadata ptr %67, metadata !1036, metadata !DIExpression()), !dbg !1044
  %68 = icmp ult ptr %67, %21, !dbg !1110
  br i1 %68, label %56, label %69, !dbg !1111, !llvm.loop !1112

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, ptr %55, i64 %64, !dbg !1107
  store i8 10, ptr %70, align 1, !dbg !1114, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %65, metadata !1043, metadata !DIExpression()), !dbg !1044
  %71 = tail call i64 @full_write(i32 noundef 1, ptr noundef nonnull %55, i64 noundef %65) #39, !dbg !1115
  %72 = icmp eq i64 %71, %65, !dbg !1116
  br i1 %72, label %73, label %195, !dbg !1117

73:                                               ; preds = %69
  call void @llvm.dbg.value(metadata ptr %55, metadata !1118, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %65, metadata !1123, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i8 0, metadata !1124, metadata !DIExpression()), !dbg !1154
  %74 = tail call i32 @getpagesize() #42, !dbg !1156
  %75 = sext i32 %74 to i64, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %75, metadata !1125, metadata !DIExpression()), !dbg !1154
  %76 = tail call i32 @isapipe(i32 noundef 1) #39, !dbg !1157
  %77 = icmp sgt i32 %76, 0, !dbg !1158
  call void @llvm.dbg.value(metadata i1 %77, metadata !1126, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1127, metadata !DIExpression()), !dbg !1160
  store i64 -1, ptr %3, align 8, !dbg !1160
  call void @llvm.dbg.value(metadata ptr null, metadata !1129, metadata !DIExpression()), !dbg !1154
  br i1 %77, label %78, label %83, !dbg !1161

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i32 1, metadata !1162, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i64 %65, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 0, metadata !1168, metadata !DIExpression()), !dbg !1170
  %79 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1031, i32 noundef 524288) #39, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %79, metadata !1168, metadata !DIExpression()), !dbg !1170
  %80 = icmp slt i32 %79, 0, !dbg !1175
  br i1 %80, label %81, label %93, !dbg !1176

81:                                               ; preds = %78
  %82 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1032) #39, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %82, metadata !1168, metadata !DIExpression()), !dbg !1170
  br label %93, !dbg !1178

83:                                               ; preds = %73
  %84 = call i32 @pipe2_safer(ptr noundef nonnull %3, i32 noundef 0) #39, !dbg !1179
  %85 = icmp slt i32 %84, 0, !dbg !1182
  br i1 %85, label %86, label %87, !dbg !1183

86:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1184
  br label %178, !dbg !1185

87:                                               ; preds = %83
  %88 = load i32, ptr %3, align 8, !dbg !1186, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %88, metadata !1162, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %65, metadata !1167, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i32 0, metadata !1168, metadata !DIExpression()), !dbg !1187
  %89 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %88, i32 noundef 1031, i32 noundef 524288) #39, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %89, metadata !1168, metadata !DIExpression()), !dbg !1187
  %90 = icmp slt i32 %89, 0, !dbg !1190
  br i1 %90, label %91, label %93, !dbg !1191

91:                                               ; preds = %87
  %92 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %88, i32 noundef 1032) #39, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %92, metadata !1168, metadata !DIExpression()), !dbg !1187
  br label %93, !dbg !1193

93:                                               ; preds = %91, %87, %81, %78
  %94 = phi i32 [ %82, %81 ], [ %79, %78 ], [ %92, %91 ], [ %89, %87 ]
  %95 = icmp slt i32 %94, 1, !dbg !1194
  %96 = lshr i32 %94, 2, !dbg !1194
  %97 = select i1 %95, i32 16384, i32 %96, !dbg !1194
  %98 = freeze i32 %97, !dbg !1194
  %99 = sext i32 %98 to i64, !dbg !1194
  %100 = urem i64 %99, %65, !dbg !1194
  %101 = sub nuw i64 %99, %100, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %101, metadata !1128, metadata !DIExpression()), !dbg !1154
  %102 = icmp eq i64 %101, 0, !dbg !1195
  br i1 %102, label %163, label %103, !dbg !1197

103:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i64 %75, metadata !1198, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %101, metadata !1204, metadata !DIExpression()), !dbg !1205
  %104 = call noalias ptr @aligned_alloc(i64 noundef %75, i64 noundef %101) #44, !dbg !1208
  call void @llvm.assume(i1 true) [ "align"(ptr %104, i64 %75) ], !dbg !1208
  call void @llvm.dbg.value(metadata ptr %104, metadata !1129, metadata !DIExpression()), !dbg !1154
  %105 = icmp eq ptr %104, null, !dbg !1209
  br i1 %105, label %163, label %106, !dbg !1210

106:                                              ; preds = %103
  call void @llvm.dbg.value(metadata ptr %104, metadata !1211, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr %55, metadata !1216, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %65, metadata !1217, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %101, metadata !1218, metadata !DIExpression()), !dbg !1224
  %107 = icmp eq ptr %104, %55, !dbg !1226
  br i1 %107, label %109, label %108, !dbg !1228

108:                                              ; preds = %106
  call void @llvm.dbg.value(metadata ptr %104, metadata !1092, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr %55, metadata !1099, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %65, metadata !1100, metadata !DIExpression()), !dbg !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %104, ptr noundef nonnull align 1 %55, i64 noundef %65, i1 noundef false) #39, !dbg !1231
  br label %109, !dbg !1232

109:                                              ; preds = %108, %106
  call void @llvm.dbg.value(metadata i64 %65, metadata !1219, metadata !DIExpression()), !dbg !1233
  %110 = icmp sgt i64 %101, %65, !dbg !1234
  br i1 %110, label %111, label %118, !dbg !1235

111:                                              ; preds = %109, %111
  %112 = phi i64 [ %116, %111 ], [ %65, %109 ]
  call void @llvm.dbg.value(metadata i64 %112, metadata !1219, metadata !DIExpression()), !dbg !1233
  %113 = sub nsw i64 %101, %112, !dbg !1236
  %114 = call i64 @llvm.smin.i64(i64 %112, i64 %113), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %114, metadata !1221, metadata !DIExpression()), !dbg !1237
  %115 = getelementptr inbounds i8, ptr %104, i64 %112, !dbg !1238
  call void @llvm.dbg.value(metadata ptr %115, metadata !1092, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr %104, metadata !1099, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %114, metadata !1100, metadata !DIExpression()), !dbg !1239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %115, ptr noundef nonnull align 1 %104, i64 noundef %114, i1 noundef false) #39, !dbg !1241
  %116 = add nsw i64 %114, %112, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %116, metadata !1219, metadata !DIExpression()), !dbg !1233
  %117 = icmp slt i64 %116, %101, !dbg !1234
  br i1 %117, label %111, label %118, !dbg !1235, !llvm.loop !1243

118:                                              ; preds = %111, %109
  %119 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1, !dbg !1245
  %120 = load i32, ptr %119, align 4, !dbg !1245
  %121 = select i1 %77, i32 1, i32 %120, !dbg !1245
  call void @llvm.dbg.value(metadata i32 %121, metadata !1130, metadata !DIExpression()), !dbg !1154
  %122 = getelementptr inbounds %struct.iovec, ptr %4, i64 0, i32 1
  %123 = icmp slt i64 %101, 1
  %124 = select i1 %77, i1 true, i1 %123
  br label %125, !dbg !1246

125:                                              ; preds = %159, %118
  %126 = phi i8 [ 0, %118 ], [ %160, %159 ], !dbg !1247
  call void @llvm.dbg.value(metadata i8 %126, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #39, !dbg !1248
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1131, metadata !DIExpression()), !dbg !1249
  store ptr %104, ptr %4, align 8, !dbg !1250, !tbaa !1251
  store i64 %101, ptr %122, align 8, !dbg !1254, !tbaa !1255
  br label %134, !dbg !1256

127:                                              ; preds = %134
  %128 = select i1 %77, i8 1, i8 %135, !dbg !1257
  call void @llvm.dbg.value(metadata i8 %128, metadata !1124, metadata !DIExpression()), !dbg !1154
  %129 = load ptr, ptr %4, align 8, !dbg !1258, !tbaa !1251
  %130 = getelementptr inbounds i8, ptr %129, i64 %140, !dbg !1259
  store ptr %130, ptr %4, align 8, !dbg !1260, !tbaa !1251
  %131 = load i64, ptr %122, align 8, !dbg !1261, !tbaa !1255
  %132 = sub i64 %131, %140, !dbg !1261
  store i64 %132, ptr %122, align 8, !dbg !1254, !tbaa !1255
  %133 = icmp eq i64 %132, 0, !dbg !1262
  br i1 %133, label %143, label %134, !dbg !1256

134:                                              ; preds = %127, %125
  %135 = phi i8 [ %126, %125 ], [ %128, %127 ]
  %136 = phi i64 [ %101, %125 ], [ %132, %127 ]
  call void @llvm.dbg.value(metadata i8 %135, metadata !1124, metadata !DIExpression()), !dbg !1154
  %137 = urem i64 %136, %75, !dbg !1263
  %138 = icmp eq i64 %137, 0, !dbg !1264
  %139 = select i1 %138, i32 8, i32 0, !dbg !1264
  call void @llvm.dbg.value(metadata i32 %139, metadata !1140, metadata !DIExpression()), !dbg !1265
  %140 = call i64 @vmsplice(i32 noundef %121, ptr noundef nonnull %4, i64 noundef 1, i32 noundef %139) #39, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %140, metadata !1142, metadata !DIExpression()), !dbg !1265
  %141 = icmp sgt i64 %140, 0, !dbg !1267
  br i1 %141, label %127, label %142, !dbg !1269, !llvm.loop !1270

142:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i8 %135, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #39, !dbg !1272
  br label %163

143:                                              ; preds = %127
  br i1 %124, label %159, label %144, !dbg !1273

144:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8 %128, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %101, metadata !1145, metadata !DIExpression()), !dbg !1274
  %145 = load i32, ptr %3, align 8, !dbg !1275, !tbaa !874
  %146 = call i64 @splice(i32 noundef %145, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %101, i32 noundef 1) #39, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %146, metadata !1148, metadata !DIExpression()), !dbg !1277
  %147 = icmp sgt i64 %146, 0, !dbg !1278
  call void @llvm.dbg.value(metadata i8 poison, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 poison, metadata !1145, metadata !DIExpression()), !dbg !1274
  br i1 %147, label %148, label %161, !llvm.loop !1280

148:                                              ; preds = %144
  %149 = sub nsw i64 %101, %146, !dbg !1283
  call void @llvm.dbg.value(metadata i8 1, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 poison, metadata !1145, metadata !DIExpression()), !dbg !1274
  %150 = icmp sgt i64 %149, 0, !dbg !1284
  br i1 %150, label %154, label %159, !dbg !1281

151:                                              ; preds = %154
  %152 = sub nsw i64 %155, %157, !dbg !1283
  call void @llvm.dbg.value(metadata i8 1, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 poison, metadata !1145, metadata !DIExpression()), !dbg !1274
  %153 = icmp sgt i64 %152, 0, !dbg !1284
  br i1 %153, label %154, label %159, !dbg !1281, !llvm.loop !1285

154:                                              ; preds = %148, %151
  %155 = phi i64 [ %152, %151 ], [ %149, %148 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %155, metadata !1145, metadata !DIExpression()), !dbg !1274
  %156 = load i32, ptr %3, align 8, !dbg !1275, !tbaa !874
  %157 = call i64 @splice(i32 noundef %156, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %155, i32 noundef 1) #39, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %157, metadata !1148, metadata !DIExpression()), !dbg !1277
  %158 = icmp sgt i64 %157, 0, !dbg !1278
  call void @llvm.dbg.value(metadata i8 poison, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 poison, metadata !1145, metadata !DIExpression()), !dbg !1274
  br i1 %158, label %151, label %161, !llvm.loop !1287

159:                                              ; preds = %151, %148, %143
  %160 = phi i8 [ %128, %143 ], [ 1, %148 ], [ 1, %151 ], !dbg !1247
  call void @llvm.dbg.value(metadata i8 %160, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #39, !dbg !1272
  br label %125

161:                                              ; preds = %144, %154
  %162 = phi i8 [ 1, %154 ], [ %128, %144 ]
  call void @llvm.dbg.value(metadata i8 %162, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #39, !dbg !1272
  br label %163, !dbg !1288

163:                                              ; preds = %161, %142, %103, %93
  %164 = phi ptr [ null, %93 ], [ null, %103 ], [ %104, %142 ], [ %104, %161 ], !dbg !1154
  %165 = phi i8 [ 0, %93 ], [ 0, %103 ], [ %135, %142 ], [ %162, %161 ], !dbg !1247
  call void @llvm.dbg.value(metadata i8 %165, metadata !1124, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %164, metadata !1129, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.label(metadata !1153), !dbg !1289
  %166 = load i32, ptr %3, align 8, !dbg !1288, !tbaa !874
  %167 = icmp sgt i32 %166, -1, !dbg !1290
  br i1 %167, label %168, label %175, !dbg !1291

168:                                              ; preds = %163
  %169 = tail call ptr @__errno_location() #42, !dbg !1292
  %170 = load i32, ptr %169, align 4, !dbg !1292, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %170, metadata !1150, metadata !DIExpression()), !dbg !1293
  %171 = call i32 @close(i32 noundef %166) #39, !dbg !1294
  %172 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1, !dbg !1295
  %173 = load i32, ptr %172, align 4, !dbg !1295, !tbaa !874
  %174 = call i32 @close(i32 noundef %173) #39, !dbg !1296
  store i32 %170, ptr %169, align 4, !dbg !1297, !tbaa !874
  br label %175, !dbg !1298

175:                                              ; preds = %163, %168
  call void @llvm.dbg.value(metadata ptr %164, metadata !1299, metadata !DIExpression()), !dbg !1304
  call void @free(ptr noundef %164) #39, !dbg !1306
  %176 = and i8 %165, 1, !dbg !1307
  %177 = icmp eq i8 %176, 0, !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1184
  br i1 %177, label %178, label %195, !dbg !1185

178:                                              ; preds = %86, %175
  %179 = urem i64 %48, %65, !dbg !1080
  %180 = sub nuw i64 %48, %179, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %180, metadata !1040, metadata !DIExpression()), !dbg !1044
  %181 = icmp ugt i64 %180, %65, !dbg !1308
  %182 = icmp slt i64 %65, %180
  %183 = and i1 %181, %182, !dbg !1310
  call void @llvm.dbg.value(metadata ptr %55, metadata !1211, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %55, metadata !1216, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %65, metadata !1217, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %180, metadata !1218, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %65, metadata !1219, metadata !DIExpression()), !dbg !1313
  br i1 %183, label %184, label %191, !dbg !1310

184:                                              ; preds = %178, %184
  %185 = phi i64 [ %189, %184 ], [ %65, %178 ]
  call void @llvm.dbg.value(metadata i64 %185, metadata !1219, metadata !DIExpression()), !dbg !1313
  %186 = sub nsw i64 %180, %185, !dbg !1314
  %187 = call i64 @llvm.smin.i64(i64 %185, i64 %186), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %187, metadata !1221, metadata !DIExpression()), !dbg !1315
  %188 = getelementptr inbounds i8, ptr %55, i64 %185, !dbg !1316
  call void @llvm.dbg.value(metadata ptr %188, metadata !1092, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %55, metadata !1099, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %187, metadata !1100, metadata !DIExpression()), !dbg !1317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %188, ptr noundef nonnull align 1 %55, i64 noundef %187, i1 noundef false) #39, !dbg !1319
  %189 = add nsw i64 %187, %185, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %189, metadata !1219, metadata !DIExpression()), !dbg !1313
  %190 = icmp slt i64 %189, %180, !dbg !1321
  br i1 %190, label %184, label %191, !dbg !1322, !llvm.loop !1323

191:                                              ; preds = %184, %178
  br label %192, !dbg !1325

192:                                              ; preds = %191, %192
  %193 = call i64 @full_write(i32 noundef 1, ptr noundef %55, i64 noundef %180) #39, !dbg !1326
  %194 = icmp eq i64 %193, %180, !dbg !1327
  br i1 %194, label %192, label %195, !dbg !1325, !llvm.loop !1328

195:                                              ; preds = %192, %175, %69
  %196 = tail call ptr @__errno_location() #42, !dbg !1330
  %197 = load i32, ptr %196, align 4, !dbg !1330, !tbaa !874
  %198 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !1330
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %197, ptr noundef %198) #39, !dbg !1330
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
  store ptr %0, ptr @file_name, align 8, !dbg !1371, !tbaa !813
  ret void, !dbg !1372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1373 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1377, metadata !DIExpression()), !dbg !1378
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1379, !tbaa !1380
  ret void, !dbg !1382
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1383 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1388, !tbaa !813
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1389
  %3 = icmp eq i32 %2, 0, !dbg !1390
  br i1 %3, label %22, label %4, !dbg !1391

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1392, !tbaa !1380, !range !1393, !noundef !858
  %6 = icmp eq i8 %5, 0, !dbg !1392
  br i1 %6, label %11, label %7, !dbg !1394

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1395
  %9 = load i32, ptr %8, align 4, !dbg !1395, !tbaa !874
  %10 = icmp eq i32 %9, 32, !dbg !1396
  br i1 %10, label %22, label %11, !dbg !1397

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #39, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %12, metadata !1385, metadata !DIExpression()), !dbg !1399
  %13 = load ptr, ptr @file_name, align 8, !dbg !1400, !tbaa !813
  %14 = icmp eq ptr %13, null, !dbg !1400
  %15 = tail call ptr @__errno_location() #42, !dbg !1402
  %16 = load i32, ptr %15, align 4, !dbg !1402, !tbaa !874
  br i1 %14, label %19, label %17, !dbg !1403

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1404
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #39, !dbg !1404
  br label %20, !dbg !1404

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #39, !dbg !1405
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1406, !tbaa !874
  tail call void @_exit(i32 noundef %21) #41, !dbg !1407
  unreachable, !dbg !1407

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1408, !tbaa !813
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1410
  %25 = icmp eq i32 %24, 0, !dbg !1411
  br i1 %25, label %28, label %26, !dbg !1412

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1413, !tbaa !874
  tail call void @_exit(i32 noundef %27) #41, !dbg !1414
  unreachable, !dbg !1414

28:                                               ; preds = %22
  ret void, !dbg !1415
}

; Function Attrs: noreturn
declare !dbg !1416 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !1417 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1421, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 %1, metadata !1422, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata ptr %2, metadata !1423, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata ptr %3, metadata !1424, metadata !DIExpression()), !dbg !1425
  tail call fastcc void @flush_stdout(), !dbg !1426
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1427, !tbaa !813
  %6 = icmp eq ptr %5, null, !dbg !1427
  br i1 %6, label %8, label %7, !dbg !1429

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1430
  br label %12, !dbg !1430

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1431, !tbaa !813
  %10 = tail call ptr @getprogname() #40, !dbg !1431
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %10) #39, !dbg !1431
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1433
  ret void, !dbg !1434
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1435 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1437, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 1, metadata !1439, metadata !DIExpression()), !dbg !1442
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1445
  %2 = icmp slt i32 %1, 0, !dbg !1446
  br i1 %2, label %6, label %3, !dbg !1447

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1448, !tbaa !813
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1448
  br label %6, !dbg !1448

6:                                                ; preds = %3, %0
  ret void, !dbg !1449
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1450 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1452, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i32 %1, metadata !1453, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %2, metadata !1454, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %3, metadata !1455, metadata !DIExpression()), !dbg !1456
  %6 = load ptr, ptr @stderr, align 8, !dbg !1457, !tbaa !813
  call void @llvm.dbg.value(metadata ptr %6, metadata !1458, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata ptr %2, metadata !1498, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata ptr %3, metadata !1499, metadata !DIExpression()), !dbg !1500
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1502
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1503, !tbaa !874
  %9 = add i32 %8, 1, !dbg !1503
  store i32 %9, ptr @error_message_count, align 4, !dbg !1503, !tbaa !874
  %10 = icmp eq i32 %1, 0, !dbg !1504
  br i1 %10, label %20, label %11, !dbg !1506

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1507, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1517
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1511, metadata !DIExpression()), !dbg !1518
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1519
  call void @llvm.dbg.value(metadata ptr %12, metadata !1510, metadata !DIExpression()), !dbg !1515
  %13 = icmp eq ptr %12, null, !dbg !1520
  br i1 %13, label %14, label %16, !dbg !1522

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #39, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %15, metadata !1510, metadata !DIExpression()), !dbg !1515
  br label %16, !dbg !1524

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1515
  call void @llvm.dbg.value(metadata ptr %17, metadata !1510, metadata !DIExpression()), !dbg !1515
  %18 = load ptr, ptr @stderr, align 8, !dbg !1525, !tbaa !813
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %17) #39, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1526
  br label %20, !dbg !1527

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1528, !tbaa !813
  call void @llvm.dbg.value(metadata i32 10, metadata !1529, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %21, metadata !1535, metadata !DIExpression()), !dbg !1536
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1538
  %23 = load ptr, ptr %22, align 8, !dbg !1538, !tbaa !1539
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1538
  %25 = load ptr, ptr %24, align 8, !dbg !1538, !tbaa !1541
  %26 = icmp ult ptr %23, %25, !dbg !1538
  br i1 %26, label %29, label %27, !dbg !1538, !prof !1542

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1538
  br label %31, !dbg !1538

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1538
  store ptr %30, ptr %22, align 8, !dbg !1538, !tbaa !1539
  store i8 10, ptr %23, align 1, !dbg !1538, !tbaa !883
  br label %31, !dbg !1538

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1543, !tbaa !813
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1543
  %34 = icmp eq i32 %0, 0, !dbg !1544
  br i1 %34, label %36, label %35, !dbg !1546

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1547
  unreachable, !dbg !1547

36:                                               ; preds = %31
  ret void, !dbg !1548
}

declare !dbg !1549 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1552 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1555 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1558 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1561 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1565 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1569, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32 %1, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata ptr %2, metadata !1571, metadata !DIExpression()), !dbg !1578
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1572, metadata !DIExpression()), !dbg !1580
  call void @llvm.va_start(ptr nonnull %4), !dbg !1581
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1582
  call void @llvm.va_end(ptr nonnull %4), !dbg !1583
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1584
  ret void, !dbg !1584
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !322 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !334, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 %1, metadata !335, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata ptr %2, metadata !336, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 %3, metadata !337, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata ptr %5, metadata !339, metadata !DIExpression()), !dbg !1585
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1586, !tbaa !874
  %8 = icmp eq i32 %7, 0, !dbg !1586
  br i1 %8, label %23, label %9, !dbg !1588

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1589, !tbaa !874
  %11 = icmp eq i32 %10, %3, !dbg !1592
  br i1 %11, label %12, label %22, !dbg !1593

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1594, !tbaa !813
  %14 = icmp eq ptr %13, %2, !dbg !1595
  br i1 %14, label %36, label %15, !dbg !1596

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1597
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1598
  br i1 %18, label %19, label %22, !dbg !1598

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1599
  %21 = icmp eq i32 %20, 0, !dbg !1600
  br i1 %21, label %36, label %22, !dbg !1601

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1602, !tbaa !813
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1603, !tbaa !874
  br label %23, !dbg !1604

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1605
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1606, !tbaa !813
  %25 = icmp eq ptr %24, null, !dbg !1606
  br i1 %25, label %27, label %26, !dbg !1608

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1609
  br label %31, !dbg !1609

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1610, !tbaa !813
  %29 = tail call ptr @getprogname() #40, !dbg !1610
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %29) #39, !dbg !1610
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1612, !tbaa !813
  %33 = icmp eq ptr %2, null, !dbg !1612
  %34 = select i1 %33, ptr @.str.3.31, ptr @.str.2.32, !dbg !1612
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1612
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1613
  br label %36, !dbg !1614

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1614
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1615 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1619, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %1, metadata !1620, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata ptr %2, metadata !1621, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %3, metadata !1622, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata ptr %4, metadata !1623, metadata !DIExpression()), !dbg !1625
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1626
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1624, metadata !DIExpression()), !dbg !1627
  call void @llvm.va_start(ptr nonnull %6), !dbg !1628
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1629
  call void @llvm.va_end(ptr nonnull %6), !dbg !1630
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1631
  ret void, !dbg !1631
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1632 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1634, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %1, metadata !1635, metadata !DIExpression()), !dbg !1659
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #39, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1636, metadata !DIExpression()), !dbg !1661
  call void @llvm.va_start(ptr nonnull %3), !dbg !1662
  call void @llvm.dbg.value(metadata i32 -1, metadata !1647, metadata !DIExpression()), !dbg !1659
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
  ], !dbg !1663

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !1664
  %6 = icmp ult i32 %5, 41, !dbg !1664
  br i1 %6, label %7, label %13, !dbg !1664

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1664
  %9 = load ptr, ptr %8, align 16, !dbg !1664
  %10 = zext i32 %5 to i64, !dbg !1664
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !1664
  %12 = add nuw nsw i32 %5, 8, !dbg !1664
  store i32 %12, ptr %3, align 16, !dbg !1664
  br label %17, !dbg !1664

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1664
  %15 = load ptr, ptr %14, align 8, !dbg !1664
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !1664
  store ptr %16, ptr %14, align 8, !dbg !1664
  br label %17, !dbg !1664

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !1664
  %19 = load i32, ptr %18, align 4, !dbg !1664
  call void @llvm.dbg.value(metadata i32 %19, metadata !1648, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 %0, metadata !1666, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 %19, metadata !1669, metadata !DIExpression()), !dbg !1671
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #39, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %20, metadata !1670, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 %20, metadata !1647, metadata !DIExpression()), !dbg !1659
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !1674
  %23 = icmp ult i32 %22, 41, !dbg !1674
  br i1 %23, label %24, label %30, !dbg !1674

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1674
  %26 = load ptr, ptr %25, align 16, !dbg !1674
  %27 = zext i32 %22 to i64, !dbg !1674
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !1674
  %29 = add nuw nsw i32 %22, 8, !dbg !1674
  store i32 %29, ptr %3, align 16, !dbg !1674
  br label %34, !dbg !1674

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1674
  %32 = load ptr, ptr %31, align 8, !dbg !1674
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !1674
  store ptr %33, ptr %31, align 8, !dbg !1674
  br label %34, !dbg !1674

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !1674
  %36 = load i32, ptr %35, align 4, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %36, metadata !1651, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %0, metadata !373, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %36, metadata !374, metadata !DIExpression()), !dbg !1676
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1678, !tbaa !874
  %38 = icmp sgt i32 %37, -1, !dbg !1680
  br i1 %38, label %39, label %51, !dbg !1681

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #39, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %40, metadata !375, metadata !DIExpression()), !dbg !1676
  %41 = icmp sgt i32 %40, -1, !dbg !1684
  br i1 %41, label %46, label %42, !dbg !1686

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #42, !dbg !1687
  %44 = load i32, ptr %43, align 4, !dbg !1687, !tbaa !874
  %45 = icmp eq i32 %44, 22, !dbg !1688
  br i1 %45, label %47, label %46, !dbg !1689

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1690, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %40, metadata !375, metadata !DIExpression()), !dbg !1676
  br label %107, !dbg !1692

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1666, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 %36, metadata !1669, metadata !DIExpression()), !dbg !1693
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #39, !dbg !1696
  call void @llvm.dbg.value(metadata i32 %48, metadata !1670, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 %48, metadata !375, metadata !DIExpression()), !dbg !1676
  %49 = icmp sgt i32 %48, -1, !dbg !1697
  br i1 %49, label %50, label %107, !dbg !1699

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1700, !tbaa !874
  br label %55, !dbg !1701

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !1666, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %36, metadata !1669, metadata !DIExpression()), !dbg !1702
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #39, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %52, metadata !1670, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %52, metadata !375, metadata !DIExpression()), !dbg !1676
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !1705
  call void @llvm.dbg.value(metadata i32 %57, metadata !375, metadata !DIExpression()), !dbg !1676
  %58 = icmp sgt i32 %57, -1, !dbg !1706
  %59 = select i1 %58, i1 %56, i1 false, !dbg !1692
  br i1 %59, label %60, label %107, !dbg !1692

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #39, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %61, metadata !376, metadata !DIExpression()), !dbg !1708
  %62 = icmp slt i32 %61, 0, !dbg !1709
  br i1 %62, label %67, label %63, !dbg !1710

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !1711
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #39, !dbg !1712
  %66 = icmp eq i32 %65, -1, !dbg !1713
  br i1 %66, label %67, label %107, !dbg !1714

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #42, !dbg !1715
  %69 = load i32, ptr %68, align 4, !dbg !1715, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %69, metadata !379, metadata !DIExpression()), !dbg !1716
  %70 = call i32 @close(i32 noundef %57) #39, !dbg !1717
  store i32 %69, ptr %68, align 4, !dbg !1718, !tbaa !874
  call void @llvm.dbg.value(metadata i32 -1, metadata !375, metadata !DIExpression()), !dbg !1676
  br label %107, !dbg !1719

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #39, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %72, metadata !1647, metadata !DIExpression()), !dbg !1659
  br label %107, !dbg !1721

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !1722
  %75 = icmp ult i32 %74, 41, !dbg !1722
  br i1 %75, label %76, label %82, !dbg !1722

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1722
  %78 = load ptr, ptr %77, align 16, !dbg !1722
  %79 = zext i32 %74 to i64, !dbg !1722
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !1722
  %81 = add nuw nsw i32 %74, 8, !dbg !1722
  store i32 %81, ptr %3, align 16, !dbg !1722
  br label %86, !dbg !1722

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1722
  %84 = load ptr, ptr %83, align 8, !dbg !1722
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !1722
  store ptr %85, ptr %83, align 8, !dbg !1722
  br label %86, !dbg !1722

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !1722
  %88 = load i32, ptr %87, align 4, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %88, metadata !1653, metadata !DIExpression()), !dbg !1723
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #39, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %89, metadata !1647, metadata !DIExpression()), !dbg !1659
  br label %107, !dbg !1725

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !1726
  %92 = icmp ult i32 %91, 41, !dbg !1726
  br i1 %92, label %93, label %99, !dbg !1726

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1726
  %95 = load ptr, ptr %94, align 16, !dbg !1726
  %96 = zext i32 %91 to i64, !dbg !1726
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !1726
  %98 = add nuw nsw i32 %91, 8, !dbg !1726
  store i32 %98, ptr %3, align 16, !dbg !1726
  br label %103, !dbg !1726

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1726
  %101 = load ptr, ptr %100, align 8, !dbg !1726
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !1726
  store ptr %102, ptr %100, align 8, !dbg !1726
  br label %103, !dbg !1726

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !1726
  %105 = load ptr, ptr %104, align 8, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %105, metadata !1657, metadata !DIExpression()), !dbg !1727
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #39, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %106, metadata !1647, metadata !DIExpression()), !dbg !1659
  br label %107, !dbg !1729

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !1730
  call void @llvm.dbg.value(metadata i32 %108, metadata !1647, metadata !DIExpression()), !dbg !1659
  call void @llvm.va_end(ptr nonnull %3), !dbg !1731
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39, !dbg !1732
  ret i32 %108, !dbg !1733
}

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1734 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1738, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata ptr %1, metadata !1739, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %2, metadata !1740, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata ptr %1, metadata !1742, metadata !DIExpression()), !dbg !1745
  %4 = icmp sgt i64 %2, 0, !dbg !1746
  br i1 %4, label %5, label %20, !dbg !1747

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1740, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata ptr %7, metadata !1742, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %8, metadata !1741, metadata !DIExpression()), !dbg !1745
  %9 = tail call i64 @safe_write(i32 noundef %0, ptr noundef %7, i64 noundef %6) #39, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %9, metadata !1743, metadata !DIExpression()), !dbg !1749
  %10 = icmp slt i64 %9, 0, !dbg !1750
  br i1 %10, label %20, label %11, !dbg !1752

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !1753
  br i1 %12, label %13, label %15, !dbg !1755

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #42, !dbg !1756
  store i32 28, ptr %14, align 4, !dbg !1758, !tbaa !874
  br label %20, !dbg !1759

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %16, metadata !1741, metadata !DIExpression()), !dbg !1745
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !1761
  call void @llvm.dbg.value(metadata ptr %17, metadata !1742, metadata !DIExpression()), !dbg !1745
  %18 = sub nsw i64 %6, %9, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %18, metadata !1740, metadata !DIExpression()), !dbg !1745
  %19 = icmp sgt i64 %18, 0, !dbg !1746
  br i1 %19, label %5, label %20, !dbg !1747

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1741, metadata !DIExpression()), !dbg !1745
  ret i64 %21, !dbg !1763
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1764 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1766, !tbaa !813
  ret ptr %1, !dbg !1767
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #21 !dbg !1768 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1770, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i64 1, metadata !1771, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1811
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #39, !dbg !1812
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1776, metadata !DIExpression()), !dbg !1813
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #39, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %3, metadata !1810, metadata !DIExpression()), !dbg !1811
  %4 = icmp eq i32 %3, 0, !dbg !1815
  br i1 %4, label %5, label %15, !dbg !1817

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1818
  %7 = load i64, ptr %6, align 8, !dbg !1818, !tbaa !1819
  %8 = icmp ult i64 %7, 2, !dbg !1822
  %9 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1823
  %10 = load i32, ptr %9, align 8, !dbg !1823
  %11 = and i32 %10, 61440, !dbg !1823
  %12 = icmp eq i32 %11, 4096, !dbg !1823
  %13 = select i1 %8, i1 %12, i1 false, !dbg !1823
  %14 = zext i1 %13 to i32, !dbg !1823
  br label %15, !dbg !1824

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ], !dbg !1811
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #39, !dbg !1825
  ret i32 %16, !dbg !1825
}

; Function Attrs: nofree nounwind
declare !dbg !1826 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1831 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1836, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %1, metadata !1837, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %2, metadata !1838, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %3, metadata !1839, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %4, metadata !1840, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %5, metadata !1841, metadata !DIExpression()), !dbg !1862
  %8 = load i32, ptr @opterr, align 4, !dbg !1863, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %8, metadata !1842, metadata !DIExpression()), !dbg !1862
  store i32 0, ptr @opterr, align 4, !dbg !1864, !tbaa !874
  %9 = icmp eq i32 %0, 2, !dbg !1865
  br i1 %9, label %10, label %15, !dbg !1866

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %11, metadata !1843, metadata !DIExpression()), !dbg !1868
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1869

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #39, !dbg !1870
  br label %15, !dbg !1871

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #39, !dbg !1872
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1846, metadata !DIExpression()), !dbg !1873
  call void @llvm.va_start(ptr nonnull %7), !dbg !1874
  %14 = load ptr, ptr @stdout, align 8, !dbg !1875, !tbaa !813
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #39, !dbg !1876
  call void @exit(i32 noundef 0) #41, !dbg !1877
  unreachable, !dbg !1877

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1878, !tbaa !874
  store i32 0, ptr @optind, align 4, !dbg !1879, !tbaa !874
  ret void, !dbg !1880
}

; Function Attrs: nounwind
declare !dbg !1881 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1887 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1891, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %1, metadata !1892, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %2, metadata !1893, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %3, metadata !1894, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %4, metadata !1895, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i1 %5, metadata !1896, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %6, metadata !1897, metadata !DIExpression()), !dbg !1906
  %9 = load i32, ptr @opterr, align 4, !dbg !1907, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %9, metadata !1898, metadata !DIExpression()), !dbg !1906
  store i32 1, ptr @opterr, align 4, !dbg !1908, !tbaa !874
  %10 = select i1 %5, ptr @.str.1.53, ptr @.str.48, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %10, metadata !1899, metadata !DIExpression()), !dbg !1906
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %11, metadata !1900, metadata !DIExpression()), !dbg !1906
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1911

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #39, !dbg !1912
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1901, metadata !DIExpression()), !dbg !1913
  call void @llvm.va_start(ptr nonnull %8), !dbg !1914
  %13 = load ptr, ptr @stdout, align 8, !dbg !1915, !tbaa !813
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #39, !dbg !1916
  call void @exit(i32 noundef 0) #41, !dbg !1917
  unreachable, !dbg !1917

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1918, !tbaa !874
  br label %16, !dbg !1919

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #39, !dbg !1920
  br label %18, !dbg !1921

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1921, !tbaa !874
  ret void, !dbg !1922
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pipe2_safer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !1923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1925, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i32 %1, metadata !1926, metadata !DIExpression()), !dbg !1936
  %3 = tail call i32 @rpl_pipe2(ptr noundef %0, i32 noundef %1) #39, !dbg !1937
  %4 = icmp eq i32 %3, 0, !dbg !1938
  br i1 %4, label %5, label %21, !dbg !1939

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1927, metadata !DIExpression()), !dbg !1940
  %6 = load i32, ptr %0, align 4, !dbg !1941, !tbaa !874
  %7 = tail call i32 @fd_safer_flag(i32 noundef %6, i32 noundef %1) #39, !dbg !1942
  store i32 %7, ptr %0, align 4, !dbg !1943, !tbaa !874
  %8 = icmp slt i32 %7, 0, !dbg !1944
  br i1 %8, label %9, label %16, !dbg !1945

9:                                                ; preds = %16, %5
  %10 = phi i64 [ 1, %5 ], [ 0, %16 ]
  %11 = tail call ptr @__errno_location() #42, !dbg !1946
  %12 = load i32, ptr %11, align 4, !dbg !1946, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %12, metadata !1931, metadata !DIExpression()), !dbg !1947
  %13 = getelementptr inbounds i32, ptr %0, i64 %10, !dbg !1948
  %14 = load i32, ptr %13, align 4, !dbg !1948, !tbaa !874
  %15 = tail call i32 @close(i32 noundef %14) #39, !dbg !1949
  store i32 %12, ptr %11, align 4, !dbg !1950, !tbaa !874
  br label %21

16:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 1, metadata !1927, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i64 1, metadata !1927, metadata !DIExpression()), !dbg !1940
  %17 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1941
  %18 = load i32, ptr %17, align 4, !dbg !1941, !tbaa !874
  %19 = tail call i32 @fd_safer_flag(i32 noundef %18, i32 noundef %1) #39, !dbg !1942
  store i32 %19, ptr %17, align 4, !dbg !1943, !tbaa !874
  %20 = icmp slt i32 %19, 0, !dbg !1944
  br i1 %20, label %9, label %21, !dbg !1945

21:                                               ; preds = %9, %16, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %9 ], [ 0, %16 ], !dbg !1936
  ret i32 %22, !dbg !1951
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !1952 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1954, metadata !DIExpression()), !dbg !1957
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1958
  call void @llvm.dbg.value(metadata ptr %2, metadata !1955, metadata !DIExpression()), !dbg !1957
  %3 = icmp eq ptr %2, null, !dbg !1959
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1959
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1959
  call void @llvm.dbg.value(metadata ptr %5, metadata !1956, metadata !DIExpression()), !dbg !1957
  %6 = ptrtoint ptr %5 to i64, !dbg !1960
  %7 = ptrtoint ptr %0 to i64, !dbg !1960
  %8 = sub i64 %6, %7, !dbg !1960
  %9 = icmp sgt i64 %8, 6, !dbg !1962
  br i1 %9, label %10, label %19, !dbg !1963

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %11, metadata !1965, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata ptr @.str.60, metadata !1970, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 7, metadata !1971, metadata !DIExpression()), !dbg !1972
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7), !dbg !1974
  %13 = icmp eq i32 %12, 0, !dbg !1975
  br i1 %13, label %14, label %19, !dbg !1976

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1954, metadata !DIExpression()), !dbg !1957
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.61, i64 noundef 3) #40, !dbg !1977
  %16 = icmp eq i32 %15, 0, !dbg !1980
  %17 = select i1 %16, i64 3, i64 0, !dbg !1981
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1981
  br label %19, !dbg !1981

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1957
  call void @llvm.dbg.value(metadata ptr %21, metadata !1956, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata ptr %20, metadata !1954, metadata !DIExpression()), !dbg !1957
  store ptr %20, ptr @program_name, align 8, !dbg !1982, !tbaa !813
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1983, !tbaa !813
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1984, !tbaa !813
  ret void, !dbg !1985
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1986 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !417 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !424, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata ptr %1, metadata !425, metadata !DIExpression()), !dbg !1987
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1988
  call void @llvm.dbg.value(metadata ptr %5, metadata !426, metadata !DIExpression()), !dbg !1987
  %6 = icmp eq ptr %5, %0, !dbg !1989
  br i1 %6, label %7, label %14, !dbg !1991

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1992
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1993
  call void @llvm.dbg.declare(metadata ptr %4, metadata !432, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata ptr %4, metadata !1995, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata ptr %4, metadata !2004, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 0, metadata !2009, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 8, metadata !2010, metadata !DIExpression()), !dbg !2011
  store i64 0, ptr %4, align 8, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %3, metadata !427, metadata !DIExpression(DW_OP_deref)), !dbg !1987
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2014
  %9 = icmp eq i64 %8, 2, !dbg !2016
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !427, metadata !DIExpression()), !dbg !1987
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2017
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1987
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2018
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2018
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1987
  ret ptr %15, !dbg !2018
}

; Function Attrs: nounwind
declare !dbg !2019 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2025 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2030, metadata !DIExpression()), !dbg !2033
  %2 = tail call ptr @__errno_location() #42, !dbg !2034
  %3 = load i32, ptr %2, align 4, !dbg !2034, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %3, metadata !2031, metadata !DIExpression()), !dbg !2033
  %4 = icmp eq ptr %0, null, !dbg !2035
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2035
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %6, metadata !2032, metadata !DIExpression()), !dbg !2033
  store i32 %3, ptr %2, align 4, !dbg !2037, !tbaa !874
  ret ptr %6, !dbg !2038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2039 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2045, metadata !DIExpression()), !dbg !2046
  %2 = icmp eq ptr %0, null, !dbg !2047
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2047
  %4 = load i32, ptr %3, align 8, !dbg !2048, !tbaa !2049
  ret i32 %4, !dbg !2051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2052 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2056, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i32 %1, metadata !2057, metadata !DIExpression()), !dbg !2058
  %3 = icmp eq ptr %0, null, !dbg !2059
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2059
  store i32 %1, ptr %4, align 8, !dbg !2060, !tbaa !2049
  ret void, !dbg !2061
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2062 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2066, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %1, metadata !2067, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 %2, metadata !2068, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %1, metadata !2069, metadata !DIExpression()), !dbg !2074
  %4 = icmp eq ptr %0, null, !dbg !2075
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2075
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2076
  %7 = lshr i8 %1, 5, !dbg !2077
  %8 = zext i8 %7 to i64, !dbg !2077
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2078
  call void @llvm.dbg.value(metadata ptr %9, metadata !2070, metadata !DIExpression()), !dbg !2074
  %10 = and i8 %1, 31, !dbg !2079
  %11 = zext i8 %10 to i32, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %11, metadata !2072, metadata !DIExpression()), !dbg !2074
  %12 = load i32, ptr %9, align 4, !dbg !2080, !tbaa !874
  %13 = lshr i32 %12, %11, !dbg !2081
  %14 = and i32 %13, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %14, metadata !2073, metadata !DIExpression()), !dbg !2074
  %15 = xor i32 %13, %2, !dbg !2083
  %16 = and i32 %15, 1, !dbg !2083
  %17 = shl nuw i32 %16, %11, !dbg !2084
  %18 = xor i32 %17, %12, !dbg !2085
  store i32 %18, ptr %9, align 4, !dbg !2085, !tbaa !874
  ret i32 %14, !dbg !2086
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2087 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2091, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %1, metadata !2092, metadata !DIExpression()), !dbg !2094
  %3 = icmp eq ptr %0, null, !dbg !2095
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2097
  call void @llvm.dbg.value(metadata ptr %4, metadata !2091, metadata !DIExpression()), !dbg !2094
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2098
  %6 = load i32, ptr %5, align 4, !dbg !2098, !tbaa !2099
  call void @llvm.dbg.value(metadata i32 %6, metadata !2093, metadata !DIExpression()), !dbg !2094
  store i32 %1, ptr %5, align 4, !dbg !2100, !tbaa !2099
  ret i32 %6, !dbg !2101
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2102 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2106, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata ptr %1, metadata !2107, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata ptr %2, metadata !2108, metadata !DIExpression()), !dbg !2109
  %4 = icmp eq ptr %0, null, !dbg !2110
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %5, metadata !2106, metadata !DIExpression()), !dbg !2109
  store i32 10, ptr %5, align 8, !dbg !2113, !tbaa !2049
  %6 = icmp ne ptr %1, null, !dbg !2114
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2116
  br i1 %8, label %10, label %9, !dbg !2116

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2117
  unreachable, !dbg !2117

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2118
  store ptr %1, ptr %11, align 8, !dbg !2119, !tbaa !2120
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2121
  store ptr %2, ptr %12, align 8, !dbg !2122, !tbaa !2123
  ret void, !dbg !2124
}

; Function Attrs: noreturn nounwind
declare !dbg !2125 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2126 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2130, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i64 %1, metadata !2131, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %2, metadata !2132, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i64 %3, metadata !2133, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %4, metadata !2134, metadata !DIExpression()), !dbg !2138
  %6 = icmp eq ptr %4, null, !dbg !2139
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2139
  call void @llvm.dbg.value(metadata ptr %7, metadata !2135, metadata !DIExpression()), !dbg !2138
  %8 = tail call ptr @__errno_location() #42, !dbg !2140
  %9 = load i32, ptr %8, align 4, !dbg !2140, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %9, metadata !2136, metadata !DIExpression()), !dbg !2138
  %10 = load i32, ptr %7, align 8, !dbg !2141, !tbaa !2049
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2142
  %12 = load i32, ptr %11, align 4, !dbg !2142, !tbaa !2099
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2143
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2144
  %15 = load ptr, ptr %14, align 8, !dbg !2144, !tbaa !2120
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2145
  %17 = load ptr, ptr %16, align 8, !dbg !2145, !tbaa !2123
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %18, metadata !2137, metadata !DIExpression()), !dbg !2138
  store i32 %9, ptr %8, align 4, !dbg !2147, !tbaa !874
  ret i64 %18, !dbg !2148
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2149 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2155, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %1, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %2, metadata !2157, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %3, metadata !2158, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %4, metadata !2159, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %5, metadata !2160, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %6, metadata !2161, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %7, metadata !2162, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %8, metadata !2163, metadata !DIExpression()), !dbg !2217
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2218
  %17 = icmp eq i64 %16, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i1 %17, metadata !2164, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2217
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr null, metadata !2167, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 0, metadata !2168, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2217
  %18 = trunc i32 %5 to i8, !dbg !2220
  %19 = lshr i8 %18, 1, !dbg !2220
  %20 = and i8 %19, 1, !dbg !2220
  call void @llvm.dbg.value(metadata i8 %20, metadata !2170, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 1, metadata !2172, metadata !DIExpression()), !dbg !2217
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2221

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2222
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2223
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2224
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2225
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2217
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2226
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2227
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %39, metadata !2172, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %38, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %37, metadata !2170, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %36, metadata !2169, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %35, metadata !2168, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %34, metadata !2167, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %33, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %32, metadata !2158, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %31, metadata !2163, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %30, metadata !2162, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %29, metadata !2159, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.label(metadata !2210), !dbg !2228
  call void @llvm.dbg.value(metadata i8 0, metadata !2173, metadata !DIExpression()), !dbg !2217
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
  ], !dbg !2229

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2170, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 5, metadata !2159, metadata !DIExpression()), !dbg !2217
  br label %115, !dbg !2230

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2170, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 5, metadata !2159, metadata !DIExpression()), !dbg !2217
  %43 = and i8 %37, 1, !dbg !2231
  %44 = icmp eq i8 %43, 0, !dbg !2231
  br i1 %44, label %45, label %115, !dbg !2230

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2233
  br i1 %46, label %115, label %47, !dbg !2236

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2233, !tbaa !883
  br label %115, !dbg !2233

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.74, metadata !530, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %29, metadata !531, metadata !DIExpression()), !dbg !2237
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.11.74, i32 noundef 5) #39, !dbg !2241
  call void @llvm.dbg.value(metadata ptr %49, metadata !532, metadata !DIExpression()), !dbg !2237
  %50 = icmp eq ptr %49, @.str.11.74, !dbg !2242
  br i1 %50, label %51, label %60, !dbg !2244

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2245
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2246
  call void @llvm.dbg.declare(metadata ptr %13, metadata !534, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %13, metadata !2248, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata ptr %13, metadata !2256, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 8, metadata !2260, metadata !DIExpression()), !dbg !2261
  store i64 0, ptr %13, align 8, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %12, metadata !533, metadata !DIExpression(DW_OP_deref)), !dbg !2237
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2264
  %53 = icmp eq i64 %52, 3, !dbg !2266
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !533, metadata !DIExpression()), !dbg !2237
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2267
  %57 = icmp eq i32 %29, 9, !dbg !2267
  %58 = select i1 %57, ptr @.str.10.76, ptr @.str.12.77, !dbg !2267
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2268
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2237
  call void @llvm.dbg.value(metadata ptr %61, metadata !2162, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr @.str.12.77, metadata !530, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i32 %29, metadata !531, metadata !DIExpression()), !dbg !2269
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.12.77, i32 noundef 5) #39, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %62, metadata !532, metadata !DIExpression()), !dbg !2269
  %63 = icmp eq ptr %62, @.str.12.77, !dbg !2272
  br i1 %63, label %64, label %73, !dbg !2273

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %11, metadata !534, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata ptr %11, metadata !2248, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata ptr %11, metadata !2256, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 8, metadata !2260, metadata !DIExpression()), !dbg !2279
  store i64 0, ptr %11, align 8, !dbg !2281
  call void @llvm.dbg.value(metadata ptr %10, metadata !533, metadata !DIExpression(DW_OP_deref)), !dbg !2269
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2282
  %66 = icmp eq i64 %65, 3, !dbg !2283
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !533, metadata !DIExpression()), !dbg !2269
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2284
  %70 = icmp eq i32 %29, 9, !dbg !2284
  %71 = select i1 %70, ptr @.str.10.76, ptr @.str.12.77, !dbg !2284
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2284
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2285
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2285
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2163, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %74, metadata !2162, metadata !DIExpression()), !dbg !2217
  %76 = and i8 %37, 1, !dbg !2286
  %77 = icmp eq i8 %76, 0, !dbg !2286
  br i1 %77, label %78, label %93, !dbg !2287

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2174, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 0, metadata !2165, metadata !DIExpression()), !dbg !2217
  %79 = load i8, ptr %74, align 1, !dbg !2289, !tbaa !883
  %80 = icmp eq i8 %79, 0, !dbg !2291
  br i1 %80, label %93, label %81, !dbg !2291

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2174, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %84, metadata !2165, metadata !DIExpression()), !dbg !2217
  %85 = icmp ult i64 %84, %40, !dbg !2292
  br i1 %85, label %86, label %88, !dbg !2295

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2292
  store i8 %82, ptr %87, align 1, !dbg !2292, !tbaa !883
  br label %88, !dbg !2292

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %89, metadata !2165, metadata !DIExpression()), !dbg !2217
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %90, metadata !2174, metadata !DIExpression()), !dbg !2288
  %91 = load i8, ptr %90, align 1, !dbg !2289, !tbaa !883
  %92 = icmp eq i8 %91, 0, !dbg !2291
  br i1 %92, label %93, label %81, !dbg !2291, !llvm.loop !2297

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2299
  call void @llvm.dbg.value(metadata i64 %94, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 1, metadata !2169, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %75, metadata !2167, metadata !DIExpression()), !dbg !2217
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %95, metadata !2168, metadata !DIExpression()), !dbg !2217
  br label %115, !dbg !2301

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2169, metadata !DIExpression()), !dbg !2217
  br label %97, !dbg !2302

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %98, metadata !2169, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 1, metadata !2170, metadata !DIExpression()), !dbg !2217
  br label %99, !dbg !2303

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2225
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %101, metadata !2170, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %100, metadata !2169, metadata !DIExpression()), !dbg !2217
  %102 = and i8 %101, 1, !dbg !2304
  %103 = icmp eq i8 %102, 0, !dbg !2304
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2306
  br label %105, !dbg !2306

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2217
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2220
  call void @llvm.dbg.value(metadata i8 %107, metadata !2170, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %106, metadata !2169, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 2, metadata !2159, metadata !DIExpression()), !dbg !2217
  %108 = and i8 %107, 1, !dbg !2307
  %109 = icmp eq i8 %108, 0, !dbg !2307
  br i1 %109, label %110, label %115, !dbg !2309

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2310
  br i1 %111, label %115, label %112, !dbg !2313

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2310, !tbaa !883
  br label %115, !dbg !2310

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2217
  br label %115, !dbg !2314

114:                                              ; preds = %28
  call void @abort() #41, !dbg !2315
  unreachable, !dbg !2315

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2299
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.76, %45 ], [ @.str.10.76, %47 ], [ @.str.10.76, %42 ], [ %34, %28 ], [ @.str.12.77, %110 ], [ @.str.12.77, %112 ], [ @.str.12.77, %105 ], [ @.str.10.76, %41 ], !dbg !2217
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2217
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2217
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %123, metadata !2170, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %122, metadata !2169, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %121, metadata !2168, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %120, metadata !2167, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %119, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %118, metadata !2163, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %117, metadata !2162, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %116, metadata !2159, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 0, metadata !2179, metadata !DIExpression()), !dbg !2316
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
  br label %138, !dbg !2317

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2299
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2222
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2226
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2227
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2318
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2319
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %145, metadata !2179, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %144, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %143, metadata !2172, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %142, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %141, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %140, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %139, metadata !2158, metadata !DIExpression()), !dbg !2217
  %147 = icmp eq i64 %139, -1, !dbg !2320
  br i1 %147, label %148, label %152, !dbg !2321

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2322
  %150 = load i8, ptr %149, align 1, !dbg !2322, !tbaa !883
  %151 = icmp eq i8 %150, 0, !dbg !2323
  br i1 %151, label %627, label %154, !dbg !2324

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2325
  br i1 %153, label %627, label %154, !dbg !2324

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2326
  br i1 %129, label %155, label %170, !dbg !2327

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2329
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2330
  br i1 %157, label %158, label %160, !dbg !2330

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %159, metadata !2158, metadata !DIExpression()), !dbg !2217
  br label %160, !dbg !2332

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2332
  call void @llvm.dbg.value(metadata i64 %161, metadata !2158, metadata !DIExpression()), !dbg !2217
  %162 = icmp ugt i64 %156, %161, !dbg !2333
  br i1 %162, label %170, label %163, !dbg !2334

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %164, metadata !2336, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata ptr %120, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %121, metadata !2340, metadata !DIExpression()), !dbg !2341
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2343
  %166 = icmp ne i32 %165, 0, !dbg !2344
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2345
  %168 = xor i1 %166, true, !dbg !2345
  %169 = zext i1 %168 to i8, !dbg !2345
  br i1 %167, label %170, label %688, !dbg !2345

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2326
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2326
  call void @llvm.dbg.value(metadata i8 %173, metadata !2181, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %171, metadata !2158, metadata !DIExpression()), !dbg !2217
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2346
  %175 = load i8, ptr %174, align 1, !dbg !2346, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %175, metadata !2186, metadata !DIExpression()), !dbg !2326
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
  ], !dbg !2347

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2348

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2349

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2184, metadata !DIExpression()), !dbg !2326
  %179 = and i8 %144, 1, !dbg !2353
  %180 = icmp eq i8 %179, 0, !dbg !2353
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2353
  br i1 %181, label %182, label %198, !dbg !2353

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2355
  br i1 %183, label %184, label %186, !dbg !2359

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2355
  store i8 39, ptr %185, align 1, !dbg !2355, !tbaa !883
  br label %186, !dbg !2355

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %187, metadata !2165, metadata !DIExpression()), !dbg !2217
  %188 = icmp ult i64 %187, %146, !dbg !2360
  br i1 %188, label %189, label %191, !dbg !2363

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2360
  store i8 36, ptr %190, align 1, !dbg !2360, !tbaa !883
  br label %191, !dbg !2360

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %192, metadata !2165, metadata !DIExpression()), !dbg !2217
  %193 = icmp ult i64 %192, %146, !dbg !2364
  br i1 %193, label %194, label %196, !dbg !2367

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2364
  store i8 39, ptr %195, align 1, !dbg !2364, !tbaa !883
  br label %196, !dbg !2364

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %197, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 1, metadata !2173, metadata !DIExpression()), !dbg !2217
  br label %198, !dbg !2368

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2217
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %200, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %199, metadata !2165, metadata !DIExpression()), !dbg !2217
  %201 = icmp ult i64 %199, %146, !dbg !2369
  br i1 %201, label %202, label %204, !dbg !2372

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2369
  store i8 92, ptr %203, align 1, !dbg !2369, !tbaa !883
  br label %204, !dbg !2369

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %205, metadata !2165, metadata !DIExpression()), !dbg !2217
  br i1 %126, label %206, label %491, !dbg !2373

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2375
  %208 = icmp ult i64 %207, %171, !dbg !2376
  br i1 %208, label %209, label %480, !dbg !2377

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2378
  %211 = load i8, ptr %210, align 1, !dbg !2378, !tbaa !883
  %212 = add i8 %211, -48, !dbg !2379
  %213 = icmp ult i8 %212, 10, !dbg !2379
  br i1 %213, label %214, label %480, !dbg !2379

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2380
  br i1 %215, label %216, label %218, !dbg !2384

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2380
  store i8 48, ptr %217, align 1, !dbg !2380, !tbaa !883
  br label %218, !dbg !2380

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %219, metadata !2165, metadata !DIExpression()), !dbg !2217
  %220 = icmp ult i64 %219, %146, !dbg !2385
  br i1 %220, label %221, label %223, !dbg !2388

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2385
  store i8 48, ptr %222, align 1, !dbg !2385, !tbaa !883
  br label %223, !dbg !2385

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %224, metadata !2165, metadata !DIExpression()), !dbg !2217
  br label %480, !dbg !2389

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2390

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2391

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2392

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2394

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2396
  %231 = icmp ult i64 %230, %171, !dbg !2397
  br i1 %231, label %232, label %480, !dbg !2398

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2399
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2400
  %235 = load i8, ptr %234, align 1, !dbg !2400, !tbaa !883
  %236 = icmp eq i8 %235, 63, !dbg !2401
  br i1 %236, label %237, label %480, !dbg !2402

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2403
  %239 = load i8, ptr %238, align 1, !dbg !2403, !tbaa !883
  %240 = sext i8 %239 to i32, !dbg !2403
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
  ], !dbg !2404

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2405

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2186, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %230, metadata !2179, metadata !DIExpression()), !dbg !2316
  %243 = icmp ult i64 %140, %146, !dbg !2407
  br i1 %243, label %244, label %246, !dbg !2410

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2407
  store i8 63, ptr %245, align 1, !dbg !2407, !tbaa !883
  br label %246, !dbg !2407

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %247, metadata !2165, metadata !DIExpression()), !dbg !2217
  %248 = icmp ult i64 %247, %146, !dbg !2411
  br i1 %248, label %249, label %251, !dbg !2414

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2411
  store i8 34, ptr %250, align 1, !dbg !2411, !tbaa !883
  br label %251, !dbg !2411

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %252, metadata !2165, metadata !DIExpression()), !dbg !2217
  %253 = icmp ult i64 %252, %146, !dbg !2415
  br i1 %253, label %254, label %256, !dbg !2418

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2415
  store i8 34, ptr %255, align 1, !dbg !2415, !tbaa !883
  br label %256, !dbg !2415

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %257, metadata !2165, metadata !DIExpression()), !dbg !2217
  %258 = icmp ult i64 %257, %146, !dbg !2419
  br i1 %258, label %259, label %261, !dbg !2422

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2419
  store i8 63, ptr %260, align 1, !dbg !2419, !tbaa !883
  br label %261, !dbg !2419

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %262, metadata !2165, metadata !DIExpression()), !dbg !2217
  br label %480, !dbg !2423

263:                                              ; preds = %170
  br label %274, !dbg !2424

264:                                              ; preds = %170
  br label %274, !dbg !2425

265:                                              ; preds = %170
  br label %272, !dbg !2426

266:                                              ; preds = %170
  br label %272, !dbg !2427

267:                                              ; preds = %170
  br label %274, !dbg !2428

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2429

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2430

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2433

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2435

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2436
  call void @llvm.dbg.label(metadata !2211), !dbg !2437
  br i1 %134, label %274, label %670, !dbg !2438

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2436
  call void @llvm.dbg.label(metadata !2213), !dbg !2440
  br i1 %125, label %535, label %491, !dbg !2441

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2442

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2443, !tbaa !883
  %279 = icmp eq i8 %278, 0, !dbg !2445
  br i1 %279, label %280, label %480, !dbg !2446

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2447
  br i1 %281, label %282, label %480, !dbg !2449

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2185, metadata !DIExpression()), !dbg !2326
  br label %283, !dbg !2450

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2326
  call void @llvm.dbg.value(metadata i8 %284, metadata !2185, metadata !DIExpression()), !dbg !2326
  br i1 %134, label %480, label %670, !dbg !2451

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 1, metadata !2185, metadata !DIExpression()), !dbg !2326
  br i1 %133, label %286, label %480, !dbg !2453

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2454

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2457
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2459
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2459
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %292, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %291, metadata !2166, metadata !DIExpression()), !dbg !2217
  %293 = icmp ult i64 %140, %292, !dbg !2460
  br i1 %293, label %294, label %296, !dbg !2463

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2460
  store i8 39, ptr %295, align 1, !dbg !2460, !tbaa !883
  br label %296, !dbg !2460

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %297, metadata !2165, metadata !DIExpression()), !dbg !2217
  %298 = icmp ult i64 %297, %292, !dbg !2464
  br i1 %298, label %299, label %301, !dbg !2467

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2464
  store i8 92, ptr %300, align 1, !dbg !2464, !tbaa !883
  br label %301, !dbg !2464

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %302, metadata !2165, metadata !DIExpression()), !dbg !2217
  %303 = icmp ult i64 %302, %292, !dbg !2468
  br i1 %303, label %304, label %306, !dbg !2471

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2468
  store i8 39, ptr %305, align 1, !dbg !2468, !tbaa !883
  br label %306, !dbg !2468

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %307, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 0, metadata !2173, metadata !DIExpression()), !dbg !2217
  br label %480, !dbg !2472

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2473

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2187, metadata !DIExpression()), !dbg !2474
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !2475
  %311 = load ptr, ptr %310, align 8, !dbg !2475, !tbaa !813
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2475
  %314 = load i16, ptr %313, align 2, !dbg !2475, !tbaa !915
  %315 = lshr i16 %314, 14, !dbg !2477
  %316 = trunc i16 %315 to i8, !dbg !2477
  %317 = and i8 %316, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i8 %317, metadata !2190, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %171, metadata !2158, metadata !DIExpression()), !dbg !2217
  %318 = icmp eq i8 %317, 0, !dbg !2478
  call void @llvm.dbg.value(metadata i1 %318, metadata !2185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  br label %368, !dbg !2479

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2191, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata ptr %14, metadata !2248, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata ptr %14, metadata !2256, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 8, metadata !2260, metadata !DIExpression()), !dbg !2484
  store i64 0, ptr %14, align 8, !dbg !2486
  call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2474
  %320 = icmp eq i64 %171, -1, !dbg !2487
  br i1 %320, label %321, label %323, !dbg !2489

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %322, metadata !2158, metadata !DIExpression()), !dbg !2217
  br label %323, !dbg !2491

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2326
  call void @llvm.dbg.value(metadata i64 %324, metadata !2158, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2492
  %325 = sub i64 %324, %145, !dbg !2493
  call void @llvm.dbg.value(metadata ptr %15, metadata !2194, metadata !DIExpression(DW_OP_deref)), !dbg !2494
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %326, metadata !2198, metadata !DIExpression()), !dbg !2494
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2496

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2474
  %328 = icmp ugt i64 %324, %145, !dbg !2497
  br i1 %328, label %331, label %329, !dbg !2499

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %324, metadata !2158, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i1 true, metadata !2185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  br label %368, !dbg !2479

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2474
  br label %360, !dbg !2502

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2187, metadata !DIExpression()), !dbg !2474
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2504
  %335 = load i8, ptr %334, align 1, !dbg !2504, !tbaa !883
  %336 = icmp eq i8 %335, 0, !dbg !2499
  br i1 %336, label %363, label %337, !dbg !2505

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %338, metadata !2187, metadata !DIExpression()), !dbg !2474
  %339 = add i64 %338, %145, !dbg !2507
  %340 = icmp eq i64 %338, %325, !dbg !2497
  br i1 %340, label %363, label %331, !dbg !2499, !llvm.loop !2508

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2509
  %344 = and i1 %343, %133, !dbg !2509
  call void @llvm.dbg.value(metadata i64 1, metadata !2199, metadata !DIExpression()), !dbg !2510
  br i1 %344, label %345, label %354, !dbg !2509

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2199, metadata !DIExpression()), !dbg !2510
  %347 = add i64 %346, %145, !dbg !2511
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2513
  %349 = load i8, ptr %348, align 1, !dbg !2513, !tbaa !883
  %350 = sext i8 %349 to i32, !dbg !2513
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2514

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %352, metadata !2199, metadata !DIExpression()), !dbg !2510
  %353 = icmp eq i64 %352, %326, !dbg !2516
  br i1 %353, label %354, label %345, !dbg !2517, !llvm.loop !2518

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2520, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %355, metadata !2194, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %355, metadata !2522, metadata !DIExpression()), !dbg !2530
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !2532
  %357 = icmp ne i32 %356, 0, !dbg !2533
  %358 = zext i1 %357 to i8, !dbg !2534
  call void @llvm.dbg.value(metadata i8 %358, metadata !2190, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %326, metadata !2187, metadata !DIExpression()), !dbg !2474
  br label %363, !dbg !2535

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2501
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2190, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %324, metadata !2158, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i1 %361, metadata !2185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  br label %368, !dbg !2479

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2190, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %364, metadata !2187, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %324, metadata !2158, metadata !DIExpression()), !dbg !2217
  %366 = icmp eq i8 %365, 0, !dbg !2478
  call void @llvm.dbg.value(metadata i1 %366, metadata !2185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  %367 = icmp ugt i64 %364, 1, !dbg !2536
  br i1 %367, label %374, label %368, !dbg !2479

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2537
  br i1 %373, label %374, label %480, !dbg !2537

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %379, metadata !2207, metadata !DIExpression()), !dbg !2539
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2540

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2217
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2318
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2316
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2326
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2541
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2326
  call void @llvm.dbg.value(metadata i8 %387, metadata !2186, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %386, metadata !2184, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %385, metadata !2181, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %384, metadata !2179, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %383, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %382, metadata !2165, metadata !DIExpression()), !dbg !2217
  br i1 %380, label %388, label %434, !dbg !2542

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2547

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2184, metadata !DIExpression()), !dbg !2326
  %390 = and i8 %383, 1, !dbg !2550
  %391 = icmp eq i8 %390, 0, !dbg !2550
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2550
  br i1 %392, label %393, label %409, !dbg !2550

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2552
  br i1 %394, label %395, label %397, !dbg !2556

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2552
  store i8 39, ptr %396, align 1, !dbg !2552, !tbaa !883
  br label %397, !dbg !2552

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %398, metadata !2165, metadata !DIExpression()), !dbg !2217
  %399 = icmp ult i64 %398, %146, !dbg !2557
  br i1 %399, label %400, label %402, !dbg !2560

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2557
  store i8 36, ptr %401, align 1, !dbg !2557, !tbaa !883
  br label %402, !dbg !2557

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %403, metadata !2165, metadata !DIExpression()), !dbg !2217
  %404 = icmp ult i64 %403, %146, !dbg !2561
  br i1 %404, label %405, label %407, !dbg !2564

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2561
  store i8 39, ptr %406, align 1, !dbg !2561, !tbaa !883
  br label %407, !dbg !2561

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %408, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 1, metadata !2173, metadata !DIExpression()), !dbg !2217
  br label %409, !dbg !2565

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2217
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %411, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %410, metadata !2165, metadata !DIExpression()), !dbg !2217
  %412 = icmp ult i64 %410, %146, !dbg !2566
  br i1 %412, label %413, label %415, !dbg !2569

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2566
  store i8 92, ptr %414, align 1, !dbg !2566, !tbaa !883
  br label %415, !dbg !2566

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %416, metadata !2165, metadata !DIExpression()), !dbg !2217
  %417 = icmp ult i64 %416, %146, !dbg !2570
  br i1 %417, label %418, label %422, !dbg !2573

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2570
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2570
  store i8 %420, ptr %421, align 1, !dbg !2570, !tbaa !883
  br label %422, !dbg !2570

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %423, metadata !2165, metadata !DIExpression()), !dbg !2217
  %424 = icmp ult i64 %423, %146, !dbg !2574
  br i1 %424, label %425, label %430, !dbg !2577

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2574
  %428 = or i8 %427, 48, !dbg !2574
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2574
  store i8 %428, ptr %429, align 1, !dbg !2574, !tbaa !883
  br label %430, !dbg !2574

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %431, metadata !2165, metadata !DIExpression()), !dbg !2217
  %432 = and i8 %387, 7, !dbg !2578
  %433 = or i8 %432, 48, !dbg !2579
  call void @llvm.dbg.value(metadata i8 %433, metadata !2186, metadata !DIExpression()), !dbg !2326
  br label %443, !dbg !2580

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2581
  %436 = icmp eq i8 %435, 0, !dbg !2581
  br i1 %436, label %443, label %437, !dbg !2583

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2584
  br i1 %438, label %439, label %441, !dbg !2588

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2584
  store i8 92, ptr %440, align 1, !dbg !2584, !tbaa !883
  br label %441, !dbg !2584

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %442, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2326
  br label %443, !dbg !2589

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2217
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2318
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2326
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2326
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2326
  call void @llvm.dbg.value(metadata i8 %448, metadata !2186, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %447, metadata !2184, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %446, metadata !2181, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %445, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %444, metadata !2165, metadata !DIExpression()), !dbg !2217
  %449 = add i64 %384, 1, !dbg !2590
  %450 = icmp ugt i64 %379, %449, !dbg !2592
  br i1 %450, label %451, label %478, !dbg !2593

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2594
  %453 = icmp ne i8 %452, 0, !dbg !2594
  %454 = and i8 %447, 1, !dbg !2594
  %455 = icmp eq i8 %454, 0, !dbg !2594
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2594
  br i1 %456, label %457, label %468, !dbg !2594

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2597
  br i1 %458, label %459, label %461, !dbg !2601

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2597
  store i8 39, ptr %460, align 1, !dbg !2597, !tbaa !883
  br label %461, !dbg !2597

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %462, metadata !2165, metadata !DIExpression()), !dbg !2217
  %463 = icmp ult i64 %462, %146, !dbg !2602
  br i1 %463, label %464, label %466, !dbg !2605

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2602
  store i8 39, ptr %465, align 1, !dbg !2602, !tbaa !883
  br label %466, !dbg !2602

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %467, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 0, metadata !2173, metadata !DIExpression()), !dbg !2217
  br label %468, !dbg !2606

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2607
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %470, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %469, metadata !2165, metadata !DIExpression()), !dbg !2217
  %471 = icmp ult i64 %469, %146, !dbg !2608
  br i1 %471, label %472, label %474, !dbg !2611

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2608
  store i8 %448, ptr %473, align 1, !dbg !2608, !tbaa !883
  br label %474, !dbg !2608

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %475, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %449, metadata !2179, metadata !DIExpression()), !dbg !2316
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2612
  %477 = load i8, ptr %476, align 1, !dbg !2612, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %477, metadata !2186, metadata !DIExpression()), !dbg !2326
  br label %381, !dbg !2613, !llvm.loop !2614

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i8 %448, metadata !2186, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %479, metadata !2185, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %447, metadata !2184, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %446, metadata !2181, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %384, metadata !2179, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %445, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %444, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %378, metadata !2158, metadata !DIExpression()), !dbg !2217
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2617
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2217
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2222
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2217
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2217
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2316
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2326
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2326
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2326
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %489, metadata !2186, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %488, metadata !2185, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %487, metadata !2184, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %173, metadata !2181, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %486, metadata !2179, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %485, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %484, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %483, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %482, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %481, metadata !2158, metadata !DIExpression()), !dbg !2217
  br i1 %127, label %502, label %491, !dbg !2618

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
  br i1 %137, label %503, label %524, !dbg !2620

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2621

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
  %514 = lshr i8 %505, 5, !dbg !2622
  %515 = zext i8 %514 to i64, !dbg !2622
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2623
  %517 = load i32, ptr %516, align 4, !dbg !2623, !tbaa !874
  %518 = and i8 %505, 31, !dbg !2624
  %519 = zext i8 %518 to i32, !dbg !2624
  %520 = shl nuw i32 1, %519, !dbg !2625
  %521 = and i32 %517, %520, !dbg !2625
  %522 = icmp eq i32 %521, 0, !dbg !2625
  %523 = and i1 %172, %522, !dbg !2626
  br i1 %523, label %573, label %535, !dbg !2626

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
  br i1 %172, label %573, label %535, !dbg !2627

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2617
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2217
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2222
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2226
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2318
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2628
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2326
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2326
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %543, metadata !2186, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %542, metadata !2185, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %541, metadata !2179, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %540, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %539, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %538, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %537, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %536, metadata !2158, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.label(metadata !2214), !dbg !2629
  br i1 %132, label %545, label %674, !dbg !2630

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2184, metadata !DIExpression()), !dbg !2326
  %546 = and i8 %540, 1, !dbg !2632
  %547 = icmp eq i8 %546, 0, !dbg !2632
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2632
  br i1 %548, label %549, label %565, !dbg !2632

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2634
  br i1 %550, label %551, label %553, !dbg !2638

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2634
  store i8 39, ptr %552, align 1, !dbg !2634, !tbaa !883
  br label %553, !dbg !2634

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %554, metadata !2165, metadata !DIExpression()), !dbg !2217
  %555 = icmp ult i64 %554, %544, !dbg !2639
  br i1 %555, label %556, label %558, !dbg !2642

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2639
  store i8 36, ptr %557, align 1, !dbg !2639, !tbaa !883
  br label %558, !dbg !2639

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %559, metadata !2165, metadata !DIExpression()), !dbg !2217
  %560 = icmp ult i64 %559, %544, !dbg !2643
  br i1 %560, label %561, label %563, !dbg !2646

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2643
  store i8 39, ptr %562, align 1, !dbg !2643, !tbaa !883
  br label %563, !dbg !2643

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %564, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 1, metadata !2173, metadata !DIExpression()), !dbg !2217
  br label %565, !dbg !2647

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2326
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %567, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %566, metadata !2165, metadata !DIExpression()), !dbg !2217
  %568 = icmp ult i64 %566, %544, !dbg !2648
  br i1 %568, label %569, label %571, !dbg !2651

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2648
  store i8 92, ptr %570, align 1, !dbg !2648, !tbaa !883
  br label %571, !dbg !2648

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %544, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %543, metadata !2186, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %542, metadata !2185, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 1, metadata !2184, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %541, metadata !2179, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %567, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %539, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %538, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %572, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %536, metadata !2158, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.label(metadata !2215), !dbg !2652
  br label %600, !dbg !2653

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2617
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2217
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2222
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2226
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2318
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2628
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2326
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2326
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2656
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %582, metadata !2186, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %581, metadata !2185, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %580, metadata !2184, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %579, metadata !2179, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %578, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %577, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %576, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %575, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %574, metadata !2158, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.label(metadata !2215), !dbg !2652
  %584 = and i8 %578, 1, !dbg !2653
  %585 = icmp ne i8 %584, 0, !dbg !2653
  %586 = and i8 %580, 1, !dbg !2653
  %587 = icmp eq i8 %586, 0, !dbg !2653
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2653
  br i1 %588, label %589, label %600, !dbg !2653

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2657
  br i1 %590, label %591, label %593, !dbg !2661

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2657
  store i8 39, ptr %592, align 1, !dbg !2657, !tbaa !883
  br label %593, !dbg !2657

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %594, metadata !2165, metadata !DIExpression()), !dbg !2217
  %595 = icmp ult i64 %594, %583, !dbg !2662
  br i1 %595, label %596, label %598, !dbg !2665

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2662
  store i8 39, ptr %597, align 1, !dbg !2662, !tbaa !883
  br label %598, !dbg !2662

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %599, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 0, metadata !2173, metadata !DIExpression()), !dbg !2217
  br label %600, !dbg !2666

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2326
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %609, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %608, metadata !2165, metadata !DIExpression()), !dbg !2217
  %610 = icmp ult i64 %608, %601, !dbg !2667
  br i1 %610, label %611, label %613, !dbg !2670

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2667
  store i8 %602, ptr %612, align 1, !dbg !2667, !tbaa !883
  br label %613, !dbg !2667

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %614, metadata !2165, metadata !DIExpression()), !dbg !2217
  %615 = icmp eq i8 %603, 0, !dbg !2671
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2673
  call void @llvm.dbg.value(metadata i8 %616, metadata !2172, metadata !DIExpression()), !dbg !2217
  br label %617, !dbg !2674

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2617
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2217
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2222
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2226
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2227
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2318
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2628
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %624, metadata !2179, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %623, metadata !2173, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %622, metadata !2172, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %621, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %620, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %619, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %618, metadata !2158, metadata !DIExpression()), !dbg !2217
  %626 = add i64 %624, 1, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %626, metadata !2179, metadata !DIExpression()), !dbg !2316
  br label %138, !dbg !2676, !llvm.loop !2677

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2156, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %143, metadata !2172, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %142, metadata !2171, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %141, metadata !2166, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %140, metadata !2165, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %139, metadata !2158, metadata !DIExpression()), !dbg !2217
  %628 = icmp eq i64 %140, 0, !dbg !2679
  %629 = and i1 %133, %628, !dbg !2681
  %630 = xor i1 %629, true, !dbg !2681
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2681
  br i1 %631, label %632, label %670, !dbg !2681

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2682
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2682
  br i1 %636, label %637, label %646, !dbg !2682

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2684
  %639 = icmp eq i8 %638, 0, !dbg !2684
  br i1 %639, label %642, label %640, !dbg !2687

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2688
  br label %694, !dbg !2689

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2690
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2692
  br i1 %645, label %28, label %646, !dbg !2692

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2693
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2695
  br i1 %649, label %650, label %665, !dbg !2695

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2167, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %140, metadata !2165, metadata !DIExpression()), !dbg !2217
  %651 = load i8, ptr %120, align 1, !dbg !2696, !tbaa !883
  %652 = icmp eq i8 %651, 0, !dbg !2699
  br i1 %652, label %665, label %653, !dbg !2699

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2167, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %656, metadata !2165, metadata !DIExpression()), !dbg !2217
  %657 = icmp ult i64 %656, %146, !dbg !2700
  br i1 %657, label %658, label %660, !dbg !2703

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2700
  store i8 %654, ptr %659, align 1, !dbg !2700, !tbaa !883
  br label %660, !dbg !2700

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %661, metadata !2165, metadata !DIExpression()), !dbg !2217
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2704
  call void @llvm.dbg.value(metadata ptr %662, metadata !2167, metadata !DIExpression()), !dbg !2217
  %663 = load i8, ptr %662, align 1, !dbg !2696, !tbaa !883
  %664 = icmp eq i8 %663, 0, !dbg !2699
  br i1 %664, label %665, label %653, !dbg !2699, !llvm.loop !2705

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2299
  call void @llvm.dbg.value(metadata i64 %666, metadata !2165, metadata !DIExpression()), !dbg !2217
  %667 = icmp ult i64 %666, %146, !dbg !2707
  br i1 %667, label %668, label %694, !dbg !2709

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2710
  store i8 0, ptr %669, align 1, !dbg !2711, !tbaa !883
  br label %694, !dbg !2710

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2216), !dbg !2712
  %672 = icmp eq i8 %124, 0, !dbg !2713
  %673 = select i1 %672, i32 2, i32 4, !dbg !2713
  br label %684, !dbg !2713

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2713
  %678 = select i1 %677, i32 2, i32 4, !dbg !2713
  br label %679, !dbg !2715

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2216), !dbg !2712
  %683 = icmp eq i32 %116, 2, !dbg !2715
  br i1 %683, label %684, label %688, !dbg !2713

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2713

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2159, metadata !DIExpression()), !dbg !2217
  %692 = and i32 %5, -3, !dbg !2716
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2717
  br label %694, !dbg !2718

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2719
}

; Function Attrs: nounwind
declare !dbg !2720 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2722 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2724 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2728, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %1, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %2, metadata !2730, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %0, metadata !2732, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %1, metadata !2737, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata ptr null, metadata !2738, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata ptr %2, metadata !2739, metadata !DIExpression()), !dbg !2745
  %4 = icmp eq ptr %2, null, !dbg !2747
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2747
  call void @llvm.dbg.value(metadata ptr %5, metadata !2740, metadata !DIExpression()), !dbg !2745
  %6 = tail call ptr @__errno_location() #42, !dbg !2748
  %7 = load i32, ptr %6, align 4, !dbg !2748, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !2741, metadata !DIExpression()), !dbg !2745
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2749
  %9 = load i32, ptr %8, align 4, !dbg !2749, !tbaa !2099
  %10 = or i32 %9, 1, !dbg !2750
  call void @llvm.dbg.value(metadata i32 %10, metadata !2742, metadata !DIExpression()), !dbg !2745
  %11 = load i32, ptr %5, align 8, !dbg !2751, !tbaa !2049
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2752
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2753
  %14 = load ptr, ptr %13, align 8, !dbg !2753, !tbaa !2120
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2754
  %16 = load ptr, ptr %15, align 8, !dbg !2754, !tbaa !2123
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2755
  %18 = add i64 %17, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i64 %18, metadata !2743, metadata !DIExpression()), !dbg !2745
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2757
  call void @llvm.dbg.value(metadata ptr %19, metadata !2744, metadata !DIExpression()), !dbg !2745
  %20 = load i32, ptr %5, align 8, !dbg !2758, !tbaa !2049
  %21 = load ptr, ptr %13, align 8, !dbg !2759, !tbaa !2120
  %22 = load ptr, ptr %15, align 8, !dbg !2760, !tbaa !2123
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2761
  store i32 %7, ptr %6, align 4, !dbg !2762, !tbaa !874
  ret ptr %19, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2733 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2732, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %1, metadata !2737, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %2, metadata !2738, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %3, metadata !2739, metadata !DIExpression()), !dbg !2764
  %5 = icmp eq ptr %3, null, !dbg !2765
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2765
  call void @llvm.dbg.value(metadata ptr %6, metadata !2740, metadata !DIExpression()), !dbg !2764
  %7 = tail call ptr @__errno_location() #42, !dbg !2766
  %8 = load i32, ptr %7, align 4, !dbg !2766, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %8, metadata !2741, metadata !DIExpression()), !dbg !2764
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2767
  %10 = load i32, ptr %9, align 4, !dbg !2767, !tbaa !2099
  %11 = icmp eq ptr %2, null, !dbg !2768
  %12 = zext i1 %11 to i32, !dbg !2768
  %13 = or i32 %10, %12, !dbg !2769
  call void @llvm.dbg.value(metadata i32 %13, metadata !2742, metadata !DIExpression()), !dbg !2764
  %14 = load i32, ptr %6, align 8, !dbg !2770, !tbaa !2049
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2771
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2772
  %17 = load ptr, ptr %16, align 8, !dbg !2772, !tbaa !2120
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2773
  %19 = load ptr, ptr %18, align 8, !dbg !2773, !tbaa !2123
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2774
  %21 = add i64 %20, 1, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %21, metadata !2743, metadata !DIExpression()), !dbg !2764
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2776
  call void @llvm.dbg.value(metadata ptr %22, metadata !2744, metadata !DIExpression()), !dbg !2764
  %23 = load i32, ptr %6, align 8, !dbg !2777, !tbaa !2049
  %24 = load ptr, ptr %16, align 8, !dbg !2778, !tbaa !2120
  %25 = load ptr, ptr %18, align 8, !dbg !2779, !tbaa !2123
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2780
  store i32 %8, ptr %7, align 4, !dbg !2781, !tbaa !874
  br i1 %11, label %28, label %27, !dbg !2782

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2783, !tbaa !2785
  br label %28, !dbg !2786

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2787
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2788 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2793, !tbaa !813
  call void @llvm.dbg.value(metadata ptr %1, metadata !2790, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 1, metadata !2791, metadata !DIExpression()), !dbg !2795
  %2 = load i32, ptr @nslots, align 4, !tbaa !874
  call void @llvm.dbg.value(metadata i32 1, metadata !2791, metadata !DIExpression()), !dbg !2795
  %3 = icmp sgt i32 %2, 1, !dbg !2796
  br i1 %3, label %4, label %6, !dbg !2798

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2796
  br label %10, !dbg !2798

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2799
  %8 = load ptr, ptr %7, align 8, !dbg !2799, !tbaa !2801
  %9 = icmp eq ptr %8, @slot0, !dbg !2803
  br i1 %9, label %17, label %16, !dbg !2804

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2791, metadata !DIExpression()), !dbg !2795
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2805
  %13 = load ptr, ptr %12, align 8, !dbg !2805, !tbaa !2801
  tail call void @free(ptr noundef %13) #39, !dbg !2806
  %14 = add nuw nsw i64 %11, 1, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %14, metadata !2791, metadata !DIExpression()), !dbg !2795
  %15 = icmp eq i64 %14, %5, !dbg !2796
  br i1 %15, label %6, label %10, !dbg !2798, !llvm.loop !2808

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2810
  store i64 256, ptr @slotvec0, align 8, !dbg !2812, !tbaa !2813
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2814, !tbaa !2801
  br label %17, !dbg !2815

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2816
  br i1 %18, label %20, label %19, !dbg !2818

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2819
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2821, !tbaa !813
  br label %20, !dbg !2822

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2823, !tbaa !874
  ret void, !dbg !2824
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2825 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2827, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %1, metadata !2828, metadata !DIExpression()), !dbg !2829
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2830
  ret ptr %3, !dbg !2831
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2832 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2836, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %1, metadata !2837, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %2, metadata !2838, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %3, metadata !2839, metadata !DIExpression()), !dbg !2852
  %6 = tail call ptr @__errno_location() #42, !dbg !2853
  %7 = load i32, ptr %6, align 4, !dbg !2853, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !2840, metadata !DIExpression()), !dbg !2852
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2854, !tbaa !813
  call void @llvm.dbg.value(metadata ptr %8, metadata !2841, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2842, metadata !DIExpression()), !dbg !2852
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2855
  br i1 %9, label %10, label %11, !dbg !2855

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2857
  unreachable, !dbg !2857

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2858, !tbaa !874
  %13 = icmp sgt i32 %12, %0, !dbg !2859
  br i1 %13, label %32, label %14, !dbg !2860

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2861
  call void @llvm.dbg.value(metadata i1 %15, metadata !2843, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2862
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2863
  %16 = sext i32 %12 to i64, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %16, metadata !2846, metadata !DIExpression()), !dbg !2862
  store i64 %16, ptr %5, align 8, !dbg !2865, !tbaa !2785
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2866
  %18 = add nuw nsw i32 %0, 1, !dbg !2867
  %19 = sub i32 %18, %12, !dbg !2868
  %20 = sext i32 %19 to i64, !dbg !2869
  call void @llvm.dbg.value(metadata ptr %5, metadata !2846, metadata !DIExpression(DW_OP_deref)), !dbg !2862
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2870
  call void @llvm.dbg.value(metadata ptr %21, metadata !2841, metadata !DIExpression()), !dbg !2852
  store ptr %21, ptr @slotvec, align 8, !dbg !2871, !tbaa !813
  br i1 %15, label %22, label %23, !dbg !2872

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2873, !tbaa.struct !2875
  br label %23, !dbg !2876

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2877, !tbaa !874
  %25 = sext i32 %24 to i64, !dbg !2878
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2878
  %27 = load i64, ptr %5, align 8, !dbg !2879, !tbaa !2785
  call void @llvm.dbg.value(metadata i64 %27, metadata !2846, metadata !DIExpression()), !dbg !2862
  %28 = sub nsw i64 %27, %25, !dbg !2880
  %29 = shl i64 %28, 4, !dbg !2881
  call void @llvm.dbg.value(metadata ptr %26, metadata !2256, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %29, metadata !2260, metadata !DIExpression()), !dbg !2882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2884
  %30 = load i64, ptr %5, align 8, !dbg !2885, !tbaa !2785
  call void @llvm.dbg.value(metadata i64 %30, metadata !2846, metadata !DIExpression()), !dbg !2862
  %31 = trunc i64 %30 to i32, !dbg !2885
  store i32 %31, ptr @nslots, align 4, !dbg !2886, !tbaa !874
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2887
  br label %32, !dbg !2888

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2852
  call void @llvm.dbg.value(metadata ptr %33, metadata !2841, metadata !DIExpression()), !dbg !2852
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2889
  %36 = load i64, ptr %35, align 8, !dbg !2890, !tbaa !2813
  call void @llvm.dbg.value(metadata i64 %36, metadata !2847, metadata !DIExpression()), !dbg !2891
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2892
  %38 = load ptr, ptr %37, align 8, !dbg !2892, !tbaa !2801
  call void @llvm.dbg.value(metadata ptr %38, metadata !2849, metadata !DIExpression()), !dbg !2891
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2893
  %40 = load i32, ptr %39, align 4, !dbg !2893, !tbaa !2099
  %41 = or i32 %40, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %41, metadata !2850, metadata !DIExpression()), !dbg !2891
  %42 = load i32, ptr %3, align 8, !dbg !2895, !tbaa !2049
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2896
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2897
  %45 = load ptr, ptr %44, align 8, !dbg !2897, !tbaa !2120
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2898
  %47 = load ptr, ptr %46, align 8, !dbg !2898, !tbaa !2123
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %48, metadata !2851, metadata !DIExpression()), !dbg !2891
  %49 = icmp ugt i64 %36, %48, !dbg !2900
  br i1 %49, label %60, label %50, !dbg !2902

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %51, metadata !2847, metadata !DIExpression()), !dbg !2891
  store i64 %51, ptr %35, align 8, !dbg !2905, !tbaa !2813
  %52 = icmp eq ptr %38, @slot0, !dbg !2906
  br i1 %52, label %54, label %53, !dbg !2908

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2909
  br label %54, !dbg !2909

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2910
  call void @llvm.dbg.value(metadata ptr %55, metadata !2849, metadata !DIExpression()), !dbg !2891
  store ptr %55, ptr %37, align 8, !dbg !2911, !tbaa !2801
  %56 = load i32, ptr %3, align 8, !dbg !2912, !tbaa !2049
  %57 = load ptr, ptr %44, align 8, !dbg !2913, !tbaa !2120
  %58 = load ptr, ptr %46, align 8, !dbg !2914, !tbaa !2123
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2915
  br label %60, !dbg !2916

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2891
  call void @llvm.dbg.value(metadata ptr %61, metadata !2849, metadata !DIExpression()), !dbg !2891
  store i32 %7, ptr %6, align 4, !dbg !2917, !tbaa !874
  ret ptr %61, !dbg !2918
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2923, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata ptr %1, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %2, metadata !2925, metadata !DIExpression()), !dbg !2926
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2927
  ret ptr %4, !dbg !2928
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2929 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 0, metadata !2827, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2933
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2935
  ret ptr %2, !dbg !2936
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i32 0, metadata !2923, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()), !dbg !2944
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2946
  ret ptr %3, !dbg !2947
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2948 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2952, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 %1, metadata !2953, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %2, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2957
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2955, metadata !DIExpression()), !dbg !2958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2959), !dbg !2962
  call void @llvm.dbg.value(metadata i32 %1, metadata !2963, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2971, !alias.scope !2959
  %5 = icmp eq i32 %1, 10, !dbg !2972
  br i1 %5, label %6, label %7, !dbg !2974

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2975, !noalias !2959
  unreachable, !dbg !2975

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2976, !tbaa !2049, !alias.scope !2959
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2977
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2978
  ret ptr %8, !dbg !2979
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2980 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2984, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 %1, metadata !2985, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %3, metadata !2987, metadata !DIExpression()), !dbg !2989
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2990
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2988, metadata !DIExpression()), !dbg !2991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2992), !dbg !2995
  call void @llvm.dbg.value(metadata i32 %1, metadata !2963, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2968, metadata !DIExpression()), !dbg !2998
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2998, !alias.scope !2992
  %6 = icmp eq i32 %1, 10, !dbg !2999
  br i1 %6, label %7, label %8, !dbg !3000

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3001, !noalias !2992
  unreachable, !dbg !3001

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3002, !tbaa !2049, !alias.scope !2992
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3003
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3004
  ret ptr %9, !dbg !3005
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3006 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %1, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 0, metadata !2952, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %1, metadata !2954, metadata !DIExpression()), !dbg !3013
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3015
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2955, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017), !dbg !3020
  call void @llvm.dbg.value(metadata i32 %0, metadata !2963, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2968, metadata !DIExpression()), !dbg !3023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3023, !alias.scope !3017
  %4 = icmp eq i32 %0, 10, !dbg !3024
  br i1 %4, label %5, label %6, !dbg !3025

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3026, !noalias !3017
  unreachable, !dbg !3026

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3027, !tbaa !2049, !alias.scope !3017
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3028
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3029
  ret ptr %7, !dbg !3030
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3031 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3035, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %1, metadata !3036, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %2, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 0, metadata !2984, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i32 %0, metadata !2985, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %1, metadata !2986, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %2, metadata !2987, metadata !DIExpression()), !dbg !3039
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3041
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2988, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3043), !dbg !3046
  call void @llvm.dbg.value(metadata i32 %0, metadata !2963, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2968, metadata !DIExpression()), !dbg !3049
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3049, !alias.scope !3043
  %5 = icmp eq i32 %0, 10, !dbg !3050
  br i1 %5, label %6, label %7, !dbg !3051

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3052, !noalias !3043
  unreachable, !dbg !3052

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3053, !tbaa !2049, !alias.scope !3043
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3054
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3055
  ret ptr %8, !dbg !3056
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3057 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8 %2, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3066
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3064, metadata !DIExpression()), !dbg !3067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3068, !tbaa.struct !3069
  call void @llvm.dbg.value(metadata ptr %4, metadata !2066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8 %2, metadata !2067, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 1, metadata !2068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8 %2, metadata !2069, metadata !DIExpression()), !dbg !3070
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3072
  %6 = lshr i8 %2, 5, !dbg !3073
  %7 = zext i8 %6 to i64, !dbg !3073
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3074
  call void @llvm.dbg.value(metadata ptr %8, metadata !2070, metadata !DIExpression()), !dbg !3070
  %9 = and i8 %2, 31, !dbg !3075
  %10 = zext i8 %9 to i32, !dbg !3075
  call void @llvm.dbg.value(metadata i32 %10, metadata !2072, metadata !DIExpression()), !dbg !3070
  %11 = load i32, ptr %8, align 4, !dbg !3076, !tbaa !874
  %12 = lshr i32 %11, %10, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %12, metadata !2073, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3070
  %13 = and i32 %12, 1, !dbg !3078
  %14 = xor i32 %13, 1, !dbg !3078
  %15 = shl nuw i32 %14, %10, !dbg !3079
  %16 = xor i32 %15, %11, !dbg !3080
  store i32 %16, ptr %8, align 4, !dbg !3080, !tbaa !874
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3081
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3082
  ret ptr %17, !dbg !3083
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3084 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8 %1, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 -1, metadata !3062, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %1, metadata !3063, metadata !DIExpression()), !dbg !3091
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3093
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3064, metadata !DIExpression()), !dbg !3094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3095, !tbaa.struct !3069
  call void @llvm.dbg.value(metadata ptr %3, metadata !2066, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %1, metadata !2067, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 1, metadata !2068, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %1, metadata !2069, metadata !DIExpression()), !dbg !3096
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3098
  %5 = lshr i8 %1, 5, !dbg !3099
  %6 = zext i8 %5 to i64, !dbg !3099
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %7, metadata !2070, metadata !DIExpression()), !dbg !3096
  %8 = and i8 %1, 31, !dbg !3101
  %9 = zext i8 %8 to i32, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %9, metadata !2072, metadata !DIExpression()), !dbg !3096
  %10 = load i32, ptr %7, align 4, !dbg !3102, !tbaa !874
  %11 = lshr i32 %10, %9, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %11, metadata !2073, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3096
  %12 = and i32 %11, 1, !dbg !3104
  %13 = xor i32 %12, 1, !dbg !3104
  %14 = shl nuw i32 %13, %9, !dbg !3105
  %15 = xor i32 %14, %10, !dbg !3106
  store i32 %15, ptr %7, align 4, !dbg !3106, !tbaa !874
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3107
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3108
  ret ptr %16, !dbg !3109
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3110 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %0, metadata !3088, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 58, metadata !3089, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 -1, metadata !3062, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i8 58, metadata !3063, metadata !DIExpression()), !dbg !3116
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3118
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3120, !tbaa.struct !3069
  call void @llvm.dbg.value(metadata ptr %2, metadata !2066, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 1, metadata !2068, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8 58, metadata !2069, metadata !DIExpression()), !dbg !3121
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3123
  call void @llvm.dbg.value(metadata ptr %3, metadata !2070, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 26, metadata !2072, metadata !DIExpression()), !dbg !3121
  %4 = load i32, ptr %3, align 4, !dbg !3124, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %4, metadata !2073, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3121
  %5 = or i32 %4, 67108864, !dbg !3125
  store i32 %5, ptr %3, align 4, !dbg !3125, !tbaa !874
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3126
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3127
  ret ptr %6, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3129 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %1, metadata !3132, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8 58, metadata !3063, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3136
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3064, metadata !DIExpression()), !dbg !3137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3138, !tbaa.struct !3069
  call void @llvm.dbg.value(metadata ptr %3, metadata !2066, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i32 1, metadata !2068, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8 58, metadata !2069, metadata !DIExpression()), !dbg !3139
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %4, metadata !2070, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i32 26, metadata !2072, metadata !DIExpression()), !dbg !3139
  %5 = load i32, ptr %4, align 4, !dbg !3142, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %5, metadata !2073, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3139
  %6 = or i32 %5, 67108864, !dbg !3143
  store i32 %6, ptr %4, align 4, !dbg !3143, !tbaa !874
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3144
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3145
  ret ptr %7, !dbg !3146
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3147 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2968, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %0, metadata !3149, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 %1, metadata !3150, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %2, metadata !3151, metadata !DIExpression()), !dbg !3155
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3152, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 %1, metadata !2963, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 0, metadata !2968, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3158
  %5 = icmp eq i32 %1, 10, !dbg !3159
  br i1 %5, label %6, label %7, !dbg !3160

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3161, !noalias !3162
  unreachable, !dbg !3161

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2968, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3158
  store i32 %1, ptr %4, align 8, !dbg !3165, !tbaa.struct !3069
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %4, metadata !2066, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 1, metadata !2068, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8 58, metadata !2069, metadata !DIExpression()), !dbg !3166
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %9, metadata !2070, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 26, metadata !2072, metadata !DIExpression()), !dbg !3166
  %10 = load i32, ptr %9, align 4, !dbg !3169, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %10, metadata !2073, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3166
  %11 = or i32 %10, 67108864, !dbg !3170
  store i32 %11, ptr %9, align 4, !dbg !3170, !tbaa !874
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3171
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3172
  ret ptr %12, !dbg !3173
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3174 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3178, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %1, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %2, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %3, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %0, metadata !3183, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %1, metadata !3188, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %2, metadata !3189, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %3, metadata !3190, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 -1, metadata !3191, metadata !DIExpression()), !dbg !3193
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3195
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3197, !tbaa.struct !3069
  call void @llvm.dbg.value(metadata ptr %5, metadata !2106, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %1, metadata !2107, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %2, metadata !2108, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %5, metadata !2106, metadata !DIExpression()), !dbg !3198
  store i32 10, ptr %5, align 8, !dbg !3200, !tbaa !2049
  %6 = icmp ne ptr %1, null, !dbg !3201
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3202
  br i1 %8, label %10, label %9, !dbg !3202

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3203
  unreachable, !dbg !3203

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3204
  store ptr %1, ptr %11, align 8, !dbg !3205, !tbaa !2120
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3206
  store ptr %2, ptr %12, align 8, !dbg !3207, !tbaa !2123
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3208
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3209
  ret ptr %13, !dbg !3210
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3184 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3183, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %1, metadata !3188, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %2, metadata !3189, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %3, metadata !3190, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %4, metadata !3191, metadata !DIExpression()), !dbg !3211
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3212
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3192, metadata !DIExpression()), !dbg !3213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3214, !tbaa.struct !3069
  call void @llvm.dbg.value(metadata ptr %6, metadata !2106, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata ptr %1, metadata !2107, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata ptr %2, metadata !2108, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata ptr %6, metadata !2106, metadata !DIExpression()), !dbg !3215
  store i32 10, ptr %6, align 8, !dbg !3217, !tbaa !2049
  %7 = icmp ne ptr %1, null, !dbg !3218
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3219
  br i1 %9, label %11, label %10, !dbg !3219

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3220
  unreachable, !dbg !3220

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3221
  store ptr %1, ptr %12, align 8, !dbg !3222, !tbaa !2120
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3223
  store ptr %2, ptr %13, align 8, !dbg !3224, !tbaa !2123
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3225
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3226
  ret ptr %14, !dbg !3227
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3228 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3232, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata ptr %1, metadata !3233, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata ptr %2, metadata !3234, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i32 0, metadata !3178, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %0, metadata !3179, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %1, metadata !3180, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %2, metadata !3181, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 0, metadata !3183, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr %0, metadata !3188, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr %1, metadata !3189, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr %2, metadata !3190, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 -1, metadata !3191, metadata !DIExpression()), !dbg !3238
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3240
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3192, metadata !DIExpression()), !dbg !3241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3242, !tbaa.struct !3069
  call void @llvm.dbg.value(metadata ptr %4, metadata !2106, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %0, metadata !2107, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %1, metadata !2108, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %4, metadata !2106, metadata !DIExpression()), !dbg !3243
  store i32 10, ptr %4, align 8, !dbg !3245, !tbaa !2049
  %5 = icmp ne ptr %0, null, !dbg !3246
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3247
  br i1 %7, label %9, label %8, !dbg !3247

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3248
  unreachable, !dbg !3248

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3249
  store ptr %0, ptr %10, align 8, !dbg !3250, !tbaa !2120
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3251
  store ptr %1, ptr %11, align 8, !dbg !3252, !tbaa !2123
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3253
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3254
  ret ptr %12, !dbg !3255
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3256 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3260, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %1, metadata !3261, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %2, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %3, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 0, metadata !3183, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata ptr %0, metadata !3188, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata ptr %1, metadata !3189, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata ptr %2, metadata !3190, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %3, metadata !3191, metadata !DIExpression()), !dbg !3265
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3267
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3192, metadata !DIExpression()), !dbg !3268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3269, !tbaa.struct !3069
  call void @llvm.dbg.value(metadata ptr %5, metadata !2106, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %0, metadata !2107, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %1, metadata !2108, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %5, metadata !2106, metadata !DIExpression()), !dbg !3270
  store i32 10, ptr %5, align 8, !dbg !3272, !tbaa !2049
  %6 = icmp ne ptr %0, null, !dbg !3273
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3274
  br i1 %8, label %10, label %9, !dbg !3274

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3275
  unreachable, !dbg !3275

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3276
  store ptr %0, ptr %11, align 8, !dbg !3277, !tbaa !2120
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3278
  store ptr %1, ptr %12, align 8, !dbg !3279, !tbaa !2123
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3280
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3281
  ret ptr %13, !dbg !3282
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3287, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %1, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %2, metadata !3289, metadata !DIExpression()), !dbg !3290
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3291
  ret ptr %4, !dbg !3292
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3293 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %1, metadata !3298, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 0, metadata !3287, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3300
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3302
  ret ptr %3, !dbg !3303
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %1, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %0, metadata !3287, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %1, metadata !3288, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 -1, metadata !3289, metadata !DIExpression()), !dbg !3311
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3313
  ret ptr %3, !dbg !3314
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3315 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 0, metadata !3308, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata ptr %0, metadata !3309, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i32 0, metadata !3287, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 -1, metadata !3289, metadata !DIExpression()), !dbg !3323
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3325
  ret ptr %2, !dbg !3326
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_write(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #21 !dbg !3327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3333, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata ptr %1, metadata !3334, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %2, metadata !3335, metadata !DIExpression()), !dbg !3341
  br label %4, !dbg !3342

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3343

6:                                                ; preds = %9, %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !3335, metadata !DIExpression()), !dbg !3341
  %7 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %5) #39, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %7, metadata !3336, metadata !DIExpression()), !dbg !3345
  %8 = icmp sgt i64 %7, -1, !dbg !3346
  br i1 %8, label %17, label %9, !dbg !3343

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #42, !dbg !3348
  %11 = load i32, ptr %10, align 4, !dbg !3348, !tbaa !874
  %12 = icmp eq i32 %11, 4, !dbg !3348
  br i1 %12, label %6, label %13, !dbg !3350, !llvm.loop !3351

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3354
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %5, metadata !3335, metadata !DIExpression()), !dbg !3341
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3357
}

; Function Attrs: nofree
declare !dbg !3358 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3361 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3400, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %1, metadata !3401, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %2, metadata !3402, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %3, metadata !3403, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %4, metadata !3404, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %5, metadata !3405, metadata !DIExpression()), !dbg !3406
  %7 = icmp eq ptr %1, null, !dbg !3407
  br i1 %7, label %10, label %8, !dbg !3409

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3410
  br label %12, !dbg !3410

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.83, ptr noundef %2, ptr noundef %3) #39, !dbg !3411
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.3.85, i32 noundef 5) #39, !dbg !3412
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3412
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3413
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.5.87, i32 noundef 5) #39, !dbg !3414
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.88) #39, !dbg !3414
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3415
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
  ], !dbg !3416

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.7.89, i32 noundef 5) #39, !dbg !3417
  %21 = load ptr, ptr %4, align 8, !dbg !3417, !tbaa !813
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3417
  br label %147, !dbg !3419

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.8.90, i32 noundef 5) #39, !dbg !3420
  %25 = load ptr, ptr %4, align 8, !dbg !3420, !tbaa !813
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3420
  %27 = load ptr, ptr %26, align 8, !dbg !3420, !tbaa !813
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3420
  br label %147, !dbg !3421

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.9.91, i32 noundef 5) #39, !dbg !3422
  %31 = load ptr, ptr %4, align 8, !dbg !3422, !tbaa !813
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3422
  %33 = load ptr, ptr %32, align 8, !dbg !3422, !tbaa !813
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3422
  %35 = load ptr, ptr %34, align 8, !dbg !3422, !tbaa !813
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3422
  br label %147, !dbg !3423

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.10.92, i32 noundef 5) #39, !dbg !3424
  %39 = load ptr, ptr %4, align 8, !dbg !3424, !tbaa !813
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3424
  %41 = load ptr, ptr %40, align 8, !dbg !3424, !tbaa !813
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3424
  %43 = load ptr, ptr %42, align 8, !dbg !3424, !tbaa !813
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3424
  %45 = load ptr, ptr %44, align 8, !dbg !3424, !tbaa !813
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3424
  br label %147, !dbg !3425

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.11.93, i32 noundef 5) #39, !dbg !3426
  %49 = load ptr, ptr %4, align 8, !dbg !3426, !tbaa !813
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3426
  %51 = load ptr, ptr %50, align 8, !dbg !3426, !tbaa !813
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3426
  %53 = load ptr, ptr %52, align 8, !dbg !3426, !tbaa !813
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3426
  %55 = load ptr, ptr %54, align 8, !dbg !3426, !tbaa !813
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3426
  %57 = load ptr, ptr %56, align 8, !dbg !3426, !tbaa !813
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3426
  br label %147, !dbg !3427

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.12.94, i32 noundef 5) #39, !dbg !3428
  %61 = load ptr, ptr %4, align 8, !dbg !3428, !tbaa !813
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3428
  %63 = load ptr, ptr %62, align 8, !dbg !3428, !tbaa !813
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3428
  %65 = load ptr, ptr %64, align 8, !dbg !3428, !tbaa !813
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3428
  %67 = load ptr, ptr %66, align 8, !dbg !3428, !tbaa !813
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3428
  %69 = load ptr, ptr %68, align 8, !dbg !3428, !tbaa !813
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3428
  %71 = load ptr, ptr %70, align 8, !dbg !3428, !tbaa !813
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3428
  br label %147, !dbg !3429

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.13.95, i32 noundef 5) #39, !dbg !3430
  %75 = load ptr, ptr %4, align 8, !dbg !3430, !tbaa !813
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3430
  %77 = load ptr, ptr %76, align 8, !dbg !3430, !tbaa !813
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3430
  %79 = load ptr, ptr %78, align 8, !dbg !3430, !tbaa !813
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3430
  %81 = load ptr, ptr %80, align 8, !dbg !3430, !tbaa !813
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3430
  %83 = load ptr, ptr %82, align 8, !dbg !3430, !tbaa !813
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3430
  %85 = load ptr, ptr %84, align 8, !dbg !3430, !tbaa !813
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3430
  %87 = load ptr, ptr %86, align 8, !dbg !3430, !tbaa !813
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3430
  br label %147, !dbg !3431

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.14.96, i32 noundef 5) #39, !dbg !3432
  %91 = load ptr, ptr %4, align 8, !dbg !3432, !tbaa !813
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3432
  %93 = load ptr, ptr %92, align 8, !dbg !3432, !tbaa !813
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3432
  %95 = load ptr, ptr %94, align 8, !dbg !3432, !tbaa !813
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3432
  %97 = load ptr, ptr %96, align 8, !dbg !3432, !tbaa !813
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3432
  %99 = load ptr, ptr %98, align 8, !dbg !3432, !tbaa !813
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3432
  %101 = load ptr, ptr %100, align 8, !dbg !3432, !tbaa !813
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3432
  %103 = load ptr, ptr %102, align 8, !dbg !3432, !tbaa !813
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3432
  %105 = load ptr, ptr %104, align 8, !dbg !3432, !tbaa !813
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3432
  br label %147, !dbg !3433

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.15.97, i32 noundef 5) #39, !dbg !3434
  %109 = load ptr, ptr %4, align 8, !dbg !3434, !tbaa !813
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3434
  %111 = load ptr, ptr %110, align 8, !dbg !3434, !tbaa !813
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3434
  %113 = load ptr, ptr %112, align 8, !dbg !3434, !tbaa !813
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3434
  %115 = load ptr, ptr %114, align 8, !dbg !3434, !tbaa !813
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3434
  %117 = load ptr, ptr %116, align 8, !dbg !3434, !tbaa !813
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3434
  %119 = load ptr, ptr %118, align 8, !dbg !3434, !tbaa !813
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3434
  %121 = load ptr, ptr %120, align 8, !dbg !3434, !tbaa !813
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3434
  %123 = load ptr, ptr %122, align 8, !dbg !3434, !tbaa !813
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3434
  %125 = load ptr, ptr %124, align 8, !dbg !3434, !tbaa !813
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3434
  br label %147, !dbg !3435

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.16.98, i32 noundef 5) #39, !dbg !3436
  %129 = load ptr, ptr %4, align 8, !dbg !3436, !tbaa !813
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3436
  %131 = load ptr, ptr %130, align 8, !dbg !3436, !tbaa !813
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3436
  %133 = load ptr, ptr %132, align 8, !dbg !3436, !tbaa !813
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3436
  %135 = load ptr, ptr %134, align 8, !dbg !3436, !tbaa !813
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3436
  %137 = load ptr, ptr %136, align 8, !dbg !3436, !tbaa !813
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3436
  %139 = load ptr, ptr %138, align 8, !dbg !3436, !tbaa !813
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3436
  %141 = load ptr, ptr %140, align 8, !dbg !3436, !tbaa !813
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3436
  %143 = load ptr, ptr %142, align 8, !dbg !3436, !tbaa !813
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3436
  %145 = load ptr, ptr %144, align 8, !dbg !3436, !tbaa !813
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3436
  br label %147, !dbg !3437

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3438
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3439 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %1, metadata !3444, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %2, metadata !3445, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %3, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %4, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 0, metadata !3448, metadata !DIExpression()), !dbg !3449
  br label %6, !dbg !3450

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3452
  call void @llvm.dbg.value(metadata i64 %7, metadata !3448, metadata !DIExpression()), !dbg !3449
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3453
  %9 = load ptr, ptr %8, align 8, !dbg !3453, !tbaa !813
  %10 = icmp eq ptr %9, null, !dbg !3455
  %11 = add i64 %7, 1, !dbg !3456
  call void @llvm.dbg.value(metadata i64 %11, metadata !3448, metadata !DIExpression()), !dbg !3449
  br i1 %10, label %12, label %6, !dbg !3455, !llvm.loop !3457

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3459
  ret void, !dbg !3460
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3461 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3473, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %1, metadata !3474, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %2, metadata !3475, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %3, metadata !3476, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %4, metadata !3477, metadata !DIExpression()), !dbg !3481
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3482
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3479, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 0, metadata !3478, metadata !DIExpression()), !dbg !3481
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3478, metadata !DIExpression()), !dbg !3481
  %10 = icmp ult i32 %9, 41, !dbg !3484
  br i1 %10, label %11, label %16, !dbg !3484

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3484
  %13 = zext i32 %9 to i64, !dbg !3484
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3484
  %15 = add nuw nsw i32 %9, 8, !dbg !3484
  store i32 %15, ptr %4, align 8, !dbg !3484
  br label %19, !dbg !3484

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3484
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3484
  store ptr %18, ptr %7, align 8, !dbg !3484
  br label %19, !dbg !3484

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3484
  %22 = load ptr, ptr %21, align 8, !dbg !3484
  store ptr %22, ptr %6, align 16, !dbg !3487, !tbaa !813
  %23 = icmp eq ptr %22, null, !dbg !3488
  br i1 %23, label %128, label %24, !dbg !3489

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 1, metadata !3478, metadata !DIExpression()), !dbg !3481
  %25 = icmp ult i32 %20, 41, !dbg !3484
  br i1 %25, label %29, label %26, !dbg !3484

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3484
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3484
  store ptr %28, ptr %7, align 8, !dbg !3484
  br label %34, !dbg !3484

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3484
  %31 = zext i32 %20 to i64, !dbg !3484
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3484
  %33 = add nuw nsw i32 %20, 8, !dbg !3484
  store i32 %33, ptr %4, align 8, !dbg !3484
  br label %34, !dbg !3484

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3484
  %37 = load ptr, ptr %36, align 8, !dbg !3484
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3490
  store ptr %37, ptr %38, align 8, !dbg !3487, !tbaa !813
  %39 = icmp eq ptr %37, null, !dbg !3488
  br i1 %39, label %128, label %40, !dbg !3489

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 2, metadata !3478, metadata !DIExpression()), !dbg !3481
  %41 = icmp ult i32 %35, 41, !dbg !3484
  br i1 %41, label %45, label %42, !dbg !3484

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3484
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3484
  store ptr %44, ptr %7, align 8, !dbg !3484
  br label %50, !dbg !3484

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3484
  %47 = zext i32 %35 to i64, !dbg !3484
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3484
  %49 = add nuw nsw i32 %35, 8, !dbg !3484
  store i32 %49, ptr %4, align 8, !dbg !3484
  br label %50, !dbg !3484

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3484
  %53 = load ptr, ptr %52, align 8, !dbg !3484
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3490
  store ptr %53, ptr %54, align 16, !dbg !3487, !tbaa !813
  %55 = icmp eq ptr %53, null, !dbg !3488
  br i1 %55, label %128, label %56, !dbg !3489

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 3, metadata !3478, metadata !DIExpression()), !dbg !3481
  %57 = icmp ult i32 %51, 41, !dbg !3484
  br i1 %57, label %61, label %58, !dbg !3484

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3484
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3484
  store ptr %60, ptr %7, align 8, !dbg !3484
  br label %66, !dbg !3484

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3484
  %63 = zext i32 %51 to i64, !dbg !3484
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3484
  %65 = add nuw nsw i32 %51, 8, !dbg !3484
  store i32 %65, ptr %4, align 8, !dbg !3484
  br label %66, !dbg !3484

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3484
  %69 = load ptr, ptr %68, align 8, !dbg !3484
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3490
  store ptr %69, ptr %70, align 8, !dbg !3487, !tbaa !813
  %71 = icmp eq ptr %69, null, !dbg !3488
  br i1 %71, label %128, label %72, !dbg !3489

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 4, metadata !3478, metadata !DIExpression()), !dbg !3481
  %73 = icmp ult i32 %67, 41, !dbg !3484
  br i1 %73, label %77, label %74, !dbg !3484

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3484
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3484
  store ptr %76, ptr %7, align 8, !dbg !3484
  br label %82, !dbg !3484

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3484
  %79 = zext i32 %67 to i64, !dbg !3484
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3484
  %81 = add nuw nsw i32 %67, 8, !dbg !3484
  store i32 %81, ptr %4, align 8, !dbg !3484
  br label %82, !dbg !3484

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3484
  %85 = load ptr, ptr %84, align 8, !dbg !3484
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3490
  store ptr %85, ptr %86, align 16, !dbg !3487, !tbaa !813
  %87 = icmp eq ptr %85, null, !dbg !3488
  br i1 %87, label %128, label %88, !dbg !3489

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 5, metadata !3478, metadata !DIExpression()), !dbg !3481
  %89 = icmp ult i32 %83, 41, !dbg !3484
  br i1 %89, label %93, label %90, !dbg !3484

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3484
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3484
  store ptr %92, ptr %7, align 8, !dbg !3484
  br label %98, !dbg !3484

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3484
  %95 = zext i32 %83 to i64, !dbg !3484
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3484
  %97 = add nuw nsw i32 %83, 8, !dbg !3484
  store i32 %97, ptr %4, align 8, !dbg !3484
  br label %98, !dbg !3484

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3484
  %100 = load ptr, ptr %99, align 8, !dbg !3484
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3490
  store ptr %100, ptr %101, align 8, !dbg !3487, !tbaa !813
  %102 = icmp eq ptr %100, null, !dbg !3488
  br i1 %102, label %128, label %103, !dbg !3489

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3478, metadata !DIExpression()), !dbg !3481
  %104 = load ptr, ptr %7, align 8, !dbg !3484
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3484
  store ptr %105, ptr %7, align 8, !dbg !3484
  %106 = load ptr, ptr %104, align 8, !dbg !3484
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3490
  store ptr %106, ptr %107, align 16, !dbg !3487, !tbaa !813
  %108 = icmp eq ptr %106, null, !dbg !3488
  br i1 %108, label %128, label %109, !dbg !3489

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3478, metadata !DIExpression()), !dbg !3481
  %110 = load ptr, ptr %7, align 8, !dbg !3484
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3484
  store ptr %111, ptr %7, align 8, !dbg !3484
  %112 = load ptr, ptr %110, align 8, !dbg !3484
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3490
  store ptr %112, ptr %113, align 8, !dbg !3487, !tbaa !813
  %114 = icmp eq ptr %112, null, !dbg !3488
  br i1 %114, label %128, label %115, !dbg !3489

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3478, metadata !DIExpression()), !dbg !3481
  %116 = load ptr, ptr %7, align 8, !dbg !3484
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3484
  store ptr %117, ptr %7, align 8, !dbg !3484
  %118 = load ptr, ptr %116, align 8, !dbg !3484
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3490
  store ptr %118, ptr %119, align 16, !dbg !3487, !tbaa !813
  %120 = icmp eq ptr %118, null, !dbg !3488
  br i1 %120, label %128, label %121, !dbg !3489

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3478, metadata !DIExpression()), !dbg !3481
  %122 = load ptr, ptr %7, align 8, !dbg !3484
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3484
  store ptr %123, ptr %7, align 8, !dbg !3484
  %124 = load ptr, ptr %122, align 8, !dbg !3484
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3490
  store ptr %124, ptr %125, align 8, !dbg !3487, !tbaa !813
  %126 = icmp eq ptr %124, null, !dbg !3488
  %127 = select i1 %126, i64 9, i64 10, !dbg !3489
  br label %128, !dbg !3489

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3491
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3492
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3493
  ret void, !dbg !3493
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3494 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3498, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %1, metadata !3499, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %2, metadata !3500, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %3, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3508
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3502, metadata !DIExpression()), !dbg !3509
  call void @llvm.va_start(ptr nonnull %5), !dbg !3510
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3511
  call void @llvm.va_end(ptr nonnull %5), !dbg !3512
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3513
  ret void, !dbg !3513
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3514 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3515, !tbaa !813
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %1), !dbg !3515
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.17.103, i32 noundef 5) #39, !dbg !3516
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #39, !dbg !3516
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !3517
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.104, ptr noundef nonnull @.str.21) #39, !dbg !3517
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !3518
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #39, !dbg !3518
  ret void, !dbg !3519
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3520 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3525, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %1, metadata !3526, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %2, metadata !3527, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %1, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %2, metadata !3533, metadata !DIExpression()), !dbg !3534
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3536
  call void @llvm.dbg.value(metadata ptr %4, metadata !3537, metadata !DIExpression()), !dbg !3542
  %5 = icmp eq ptr %4, null, !dbg !3544
  br i1 %5, label %6, label %7, !dbg !3546

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3547
  unreachable, !dbg !3547

7:                                                ; preds = %3
  ret ptr %4, !dbg !3548
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 %1, metadata !3532, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 %2, metadata !3533, metadata !DIExpression()), !dbg !3549
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3550
  call void @llvm.dbg.value(metadata ptr %4, metadata !3537, metadata !DIExpression()), !dbg !3551
  %5 = icmp eq ptr %4, null, !dbg !3553
  br i1 %5, label %6, label %7, !dbg !3554

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3555
  unreachable, !dbg !3555

7:                                                ; preds = %3
  ret ptr %4, !dbg !3556
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3557 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3561, metadata !DIExpression()), !dbg !3562
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3563
  call void @llvm.dbg.value(metadata ptr %2, metadata !3537, metadata !DIExpression()), !dbg !3564
  %3 = icmp eq ptr %2, null, !dbg !3566
  br i1 %3, label %4, label %5, !dbg !3567

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3568
  unreachable, !dbg !3568

5:                                                ; preds = %1
  ret ptr %2, !dbg !3569
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3570 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3571 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %0, metadata !3577, metadata !DIExpression()), !dbg !3581
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3583
  call void @llvm.dbg.value(metadata ptr %2, metadata !3537, metadata !DIExpression()), !dbg !3584
  %3 = icmp eq ptr %2, null, !dbg !3586
  br i1 %3, label %4, label %5, !dbg !3587

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3588
  unreachable, !dbg !3588

5:                                                ; preds = %1
  ret ptr %2, !dbg !3589
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3590 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %0, metadata !3561, metadata !DIExpression()), !dbg !3596
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3598
  call void @llvm.dbg.value(metadata ptr %2, metadata !3537, metadata !DIExpression()), !dbg !3599
  %3 = icmp eq ptr %2, null, !dbg !3601
  br i1 %3, label %4, label %5, !dbg !3602

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3603
  unreachable, !dbg !3603

5:                                                ; preds = %1
  ret ptr %2, !dbg !3604
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3605 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3609, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %1, metadata !3610, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %0, metadata !3612, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %1, metadata !3616, metadata !DIExpression()), !dbg !3617
  %3 = icmp eq i64 %1, 0, !dbg !3619
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3619
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3620
  call void @llvm.dbg.value(metadata ptr %5, metadata !3537, metadata !DIExpression()), !dbg !3621
  %6 = icmp eq ptr %5, null, !dbg !3623
  br i1 %6, label %7, label %8, !dbg !3624

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3625
  unreachable, !dbg !3625

8:                                                ; preds = %2
  ret ptr %5, !dbg !3626
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3627 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3628 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %0, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %1, metadata !3638, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr %0, metadata !3612, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %1, metadata !3616, metadata !DIExpression()), !dbg !3641
  %3 = icmp eq i64 %1, 0, !dbg !3643
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3643
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3644
  call void @llvm.dbg.value(metadata ptr %5, metadata !3537, metadata !DIExpression()), !dbg !3645
  %6 = icmp eq ptr %5, null, !dbg !3647
  br i1 %6, label %7, label %8, !dbg !3648

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3649
  unreachable, !dbg !3649

8:                                                ; preds = %2
  ret ptr %5, !dbg !3650
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3651 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i64 %1, metadata !3656, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i64 %2, metadata !3657, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %2, metadata !3663, metadata !DIExpression()), !dbg !3664
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %4, metadata !3537, metadata !DIExpression()), !dbg !3667
  %5 = icmp eq ptr %4, null, !dbg !3669
  br i1 %5, label %6, label %7, !dbg !3670

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3671
  unreachable, !dbg !3671

7:                                                ; preds = %3
  ret ptr %4, !dbg !3672
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3673 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3675, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %1, metadata !3676, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr null, metadata !3529, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %0, metadata !3532, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %1, metadata !3533, metadata !DIExpression()), !dbg !3678
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3680
  call void @llvm.dbg.value(metadata ptr %3, metadata !3537, metadata !DIExpression()), !dbg !3681
  %4 = icmp eq ptr %3, null, !dbg !3683
  br i1 %4, label %5, label %6, !dbg !3684

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3685
  unreachable, !dbg !3685

6:                                                ; preds = %2
  ret ptr %3, !dbg !3686
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3687 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3689, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %1, metadata !3690, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr null, metadata !3655, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %0, metadata !3656, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3657, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr null, metadata !3659, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %0, metadata !3662, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %1, metadata !3663, metadata !DIExpression()), !dbg !3694
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3696
  call void @llvm.dbg.value(metadata ptr %3, metadata !3537, metadata !DIExpression()), !dbg !3697
  %4 = icmp eq ptr %3, null, !dbg !3699
  br i1 %4, label %5, label %6, !dbg !3700

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3701
  unreachable, !dbg !3701

6:                                                ; preds = %2
  ret ptr %3, !dbg !3702
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3703 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3707, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata ptr %1, metadata !3708, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata ptr %0, metadata !745, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %1, metadata !746, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 1, metadata !747, metadata !DIExpression()), !dbg !3710
  %3 = load i64, ptr %1, align 8, !dbg !3712, !tbaa !2785
  call void @llvm.dbg.value(metadata i64 %3, metadata !748, metadata !DIExpression()), !dbg !3710
  %4 = icmp eq ptr %0, null, !dbg !3713
  br i1 %4, label %5, label %8, !dbg !3715

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3716
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3719
  br label %15, !dbg !3719

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3720
  %10 = add nuw i64 %9, 1, !dbg !3720
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3720
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3720
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %13, metadata !748, metadata !DIExpression()), !dbg !3710
  br i1 %12, label %14, label %15, !dbg !3723

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3724
  unreachable, !dbg !3724

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3710
  call void @llvm.dbg.value(metadata i64 %16, metadata !748, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %16, metadata !3532, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 1, metadata !3533, metadata !DIExpression()), !dbg !3725
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3727
  call void @llvm.dbg.value(metadata ptr %17, metadata !3537, metadata !DIExpression()), !dbg !3728
  %18 = icmp eq ptr %17, null, !dbg !3730
  br i1 %18, label %19, label %20, !dbg !3731

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3732
  unreachable, !dbg !3732

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !745, metadata !DIExpression()), !dbg !3710
  store i64 %16, ptr %1, align 8, !dbg !3733, !tbaa !2785
  ret ptr %17, !dbg !3734
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !740 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !745, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %1, metadata !746, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 %2, metadata !747, metadata !DIExpression()), !dbg !3735
  %4 = load i64, ptr %1, align 8, !dbg !3736, !tbaa !2785
  call void @llvm.dbg.value(metadata i64 %4, metadata !748, metadata !DIExpression()), !dbg !3735
  %5 = icmp eq ptr %0, null, !dbg !3737
  br i1 %5, label %6, label %13, !dbg !3738

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3739
  br i1 %7, label %8, label %20, !dbg !3740

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %9, metadata !748, metadata !DIExpression()), !dbg !3735
  %10 = icmp ugt i64 %2, 128, !dbg !3743
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3744
  call void @llvm.dbg.value(metadata i64 %12, metadata !748, metadata !DIExpression()), !dbg !3735
  br label %20, !dbg !3745

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3746
  %15 = add nuw i64 %14, 1, !dbg !3746
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3746
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3746
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %18, metadata !748, metadata !DIExpression()), !dbg !3735
  br i1 %17, label %19, label %20, !dbg !3747

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3748
  unreachable, !dbg !3748

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3735
  call void @llvm.dbg.value(metadata i64 %21, metadata !748, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %21, metadata !3532, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %2, metadata !3533, metadata !DIExpression()), !dbg !3749
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3751
  call void @llvm.dbg.value(metadata ptr %22, metadata !3537, metadata !DIExpression()), !dbg !3752
  %23 = icmp eq ptr %22, null, !dbg !3754
  br i1 %23, label %24, label %25, !dbg !3755

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3756
  unreachable, !dbg !3756

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !745, metadata !DIExpression()), !dbg !3735
  store i64 %21, ptr %1, align 8, !dbg !3757, !tbaa !2785
  ret ptr %22, !dbg !3758
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !752 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !760, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %1, metadata !761, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %2, metadata !762, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %3, metadata !763, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %4, metadata !764, metadata !DIExpression()), !dbg !3759
  %6 = load i64, ptr %1, align 8, !dbg !3760, !tbaa !2785
  call void @llvm.dbg.value(metadata i64 %6, metadata !765, metadata !DIExpression()), !dbg !3759
  %7 = ashr i64 %6, 1, !dbg !3761
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3761
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3761
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %10, metadata !766, metadata !DIExpression()), !dbg !3759
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3763
  call void @llvm.dbg.value(metadata i64 %11, metadata !766, metadata !DIExpression()), !dbg !3759
  %12 = icmp sgt i64 %3, -1, !dbg !3764
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3766
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3766
  call void @llvm.dbg.value(metadata i64 %15, metadata !766, metadata !DIExpression()), !dbg !3759
  %16 = icmp slt i64 %4, 0, !dbg !3767
  br i1 %16, label %17, label %30, !dbg !3767

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3767
  br i1 %18, label %19, label %24, !dbg !3767

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3767
  %21 = udiv i64 9223372036854775807, %20, !dbg !3767
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3767
  br i1 %23, label %46, label %43, !dbg !3767

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3767
  br i1 %25, label %43, label %26, !dbg !3767

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3767
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3767
  %29 = icmp ult i64 %28, %15, !dbg !3767
  br i1 %29, label %46, label %43, !dbg !3767

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3767
  br i1 %31, label %43, label %32, !dbg !3767

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3767
  br i1 %33, label %34, label %40, !dbg !3767

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3767
  br i1 %35, label %43, label %36, !dbg !3767

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3767
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3767
  %39 = icmp ult i64 %38, %4, !dbg !3767
  br i1 %39, label %46, label %43, !dbg !3767

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3767
  br i1 %42, label %46, label %43, !dbg !3767

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !767, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3759
  %44 = mul i64 %15, %4, !dbg !3767
  call void @llvm.dbg.value(metadata i64 %44, metadata !767, metadata !DIExpression()), !dbg !3759
  %45 = icmp slt i64 %44, 128, !dbg !3767
  br i1 %45, label %46, label %51, !dbg !3767

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !768, metadata !DIExpression()), !dbg !3759
  %48 = sdiv i64 %47, %4, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %48, metadata !766, metadata !DIExpression()), !dbg !3759
  %49 = srem i64 %47, %4, !dbg !3771
  %50 = sub nsw i64 %47, %49, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %50, metadata !767, metadata !DIExpression()), !dbg !3759
  br label %51, !dbg !3773

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3759
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3759
  call void @llvm.dbg.value(metadata i64 %53, metadata !767, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %52, metadata !766, metadata !DIExpression()), !dbg !3759
  %54 = icmp eq ptr %0, null, !dbg !3774
  br i1 %54, label %55, label %56, !dbg !3776

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3777, !tbaa !2785
  br label %56, !dbg !3778

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3779
  %58 = icmp slt i64 %57, %2, !dbg !3781
  br i1 %58, label %59, label %96, !dbg !3782

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3783
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3783
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %62, metadata !766, metadata !DIExpression()), !dbg !3759
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3784
  br i1 %65, label %95, label %66, !dbg !3784

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3785

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3785
  br i1 %68, label %69, label %74, !dbg !3785

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3785
  %71 = udiv i64 9223372036854775807, %70, !dbg !3785
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3785
  br i1 %73, label %95, label %93, !dbg !3785

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3785
  br i1 %75, label %93, label %76, !dbg !3785

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3785
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3785
  %79 = icmp ult i64 %78, %62, !dbg !3785
  br i1 %79, label %95, label %93, !dbg !3785

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3785
  br i1 %81, label %93, label %82, !dbg !3785

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3785
  br i1 %83, label %84, label %90, !dbg !3785

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3785
  br i1 %85, label %93, label %86, !dbg !3785

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3785
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3785
  %89 = icmp ult i64 %88, %4, !dbg !3785
  br i1 %89, label %95, label %93, !dbg !3785

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3785
  br i1 %92, label %95, label %93, !dbg !3785

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !767, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3759
  %94 = mul i64 %62, %4, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %94, metadata !767, metadata !DIExpression()), !dbg !3759
  br label %96, !dbg !3786

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !3787
  unreachable, !dbg !3787

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3759
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3759
  call void @llvm.dbg.value(metadata i64 %98, metadata !767, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %97, metadata !766, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %0, metadata !3609, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i64 %98, metadata !3610, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata ptr %0, metadata !3612, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %98, metadata !3616, metadata !DIExpression()), !dbg !3790
  %99 = icmp eq i64 %98, 0, !dbg !3792
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3792
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !3793
  call void @llvm.dbg.value(metadata ptr %101, metadata !3537, metadata !DIExpression()), !dbg !3794
  %102 = icmp eq ptr %101, null, !dbg !3796
  br i1 %102, label %103, label %104, !dbg !3797

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !3798
  unreachable, !dbg !3798

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !760, metadata !DIExpression()), !dbg !3759
  store i64 %97, ptr %1, align 8, !dbg !3799, !tbaa !2785
  ret ptr %101, !dbg !3800
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3801 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3803, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %0, metadata !3805, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 1, metadata !3808, metadata !DIExpression()), !dbg !3809
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3811
  call void @llvm.dbg.value(metadata ptr %2, metadata !3537, metadata !DIExpression()), !dbg !3812
  %3 = icmp eq ptr %2, null, !dbg !3814
  br i1 %3, label %4, label %5, !dbg !3815

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3816
  unreachable, !dbg !3816

5:                                                ; preds = %1
  ret ptr %2, !dbg !3817
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3818 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3806 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3805, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %1, metadata !3808, metadata !DIExpression()), !dbg !3819
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3820
  call void @llvm.dbg.value(metadata ptr %3, metadata !3537, metadata !DIExpression()), !dbg !3821
  %4 = icmp eq ptr %3, null, !dbg !3823
  br i1 %4, label %5, label %6, !dbg !3824

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3825
  unreachable, !dbg !3825

6:                                                ; preds = %2
  ret ptr %3, !dbg !3826
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3827 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3829, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %0, metadata !3831, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 1, metadata !3834, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %0, metadata !3837, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i64 1, metadata !3840, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i64 %0, metadata !3837, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i64 1, metadata !3840, metadata !DIExpression()), !dbg !3841
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3843
  call void @llvm.dbg.value(metadata ptr %2, metadata !3537, metadata !DIExpression()), !dbg !3844
  %3 = icmp eq ptr %2, null, !dbg !3846
  br i1 %3, label %4, label %5, !dbg !3847

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3848
  unreachable, !dbg !3848

5:                                                ; preds = %1
  ret ptr %2, !dbg !3849
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3832 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3831, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %1, metadata !3834, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %0, metadata !3837, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %1, metadata !3840, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %0, metadata !3837, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %1, metadata !3840, metadata !DIExpression()), !dbg !3851
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3853
  call void @llvm.dbg.value(metadata ptr %3, metadata !3537, metadata !DIExpression()), !dbg !3854
  %4 = icmp eq ptr %3, null, !dbg !3856
  br i1 %4, label %5, label %6, !dbg !3857

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3858
  unreachable, !dbg !3858

6:                                                ; preds = %2
  ret ptr %3, !dbg !3859
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3860 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3864, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %1, metadata !3865, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %1, metadata !3561, metadata !DIExpression()), !dbg !3867
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3869
  call void @llvm.dbg.value(metadata ptr %3, metadata !3537, metadata !DIExpression()), !dbg !3870
  %4 = icmp eq ptr %3, null, !dbg !3872
  br i1 %4, label %5, label %6, !dbg !3873

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3874
  unreachable, !dbg !3874

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3875, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3882
  ret ptr %3, !dbg !3883
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3884 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3888, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %1, metadata !3889, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %1, metadata !3577, metadata !DIExpression()), !dbg !3893
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3895
  call void @llvm.dbg.value(metadata ptr %3, metadata !3537, metadata !DIExpression()), !dbg !3896
  %4 = icmp eq ptr %3, null, !dbg !3898
  br i1 %4, label %5, label %6, !dbg !3899

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3900
  unreachable, !dbg !3900

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3875, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !3901
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3903
  ret ptr %3, !dbg !3904
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3905 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i64 %1, metadata !3910, metadata !DIExpression()), !dbg !3912
  %3 = add nsw i64 %1, 1, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %3, metadata !3575, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %3, metadata !3577, metadata !DIExpression()), !dbg !3916
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3918
  call void @llvm.dbg.value(metadata ptr %4, metadata !3537, metadata !DIExpression()), !dbg !3919
  %5 = icmp eq ptr %4, null, !dbg !3921
  br i1 %5, label %6, label %7, !dbg !3922

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3923
  unreachable, !dbg !3923

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3911, metadata !DIExpression()), !dbg !3912
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3924
  store i8 0, ptr %8, align 1, !dbg !3925, !tbaa !883
  call void @llvm.dbg.value(metadata ptr %4, metadata !3875, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !3926
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3928
  ret ptr %4, !dbg !3929
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3932, metadata !DIExpression()), !dbg !3933
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3934
  %3 = add i64 %2, 1, !dbg !3935
  call void @llvm.dbg.value(metadata ptr %0, metadata !3864, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %3, metadata !3865, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %3, metadata !3561, metadata !DIExpression()), !dbg !3938
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3940
  call void @llvm.dbg.value(metadata ptr %4, metadata !3537, metadata !DIExpression()), !dbg !3941
  %5 = icmp eq ptr %4, null, !dbg !3943
  br i1 %5, label %6, label %7, !dbg !3944

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3945
  unreachable, !dbg !3945

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3875, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %3, metadata !3879, metadata !DIExpression()), !dbg !3946
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3948
  ret ptr %4, !dbg !3949
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3950 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3955, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %1, metadata !3952, metadata !DIExpression()), !dbg !3956
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.117, ptr noundef nonnull @.str.2.118, i32 noundef 5) #39, !dbg !3955
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef %2) #39, !dbg !3955
  %3 = icmp eq i32 %1, 0, !dbg !3955
  tail call void @llvm.assume(i1 %3), !dbg !3955
  tail call void @abort() #41, !dbg !3957
  unreachable, !dbg !3957
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3958 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3996, metadata !DIExpression()), !dbg !4001
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4002
  call void @llvm.dbg.value(metadata i1 poison, metadata !3997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %0, metadata !4003, metadata !DIExpression()), !dbg !4006
  %3 = load i32, ptr %0, align 8, !dbg !4008, !tbaa !4009
  %4 = and i32 %3, 32, !dbg !4010
  %5 = icmp eq i32 %4, 0, !dbg !4010
  call void @llvm.dbg.value(metadata i1 %5, metadata !3999, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4001
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4011
  %7 = icmp eq i32 %6, 0, !dbg !4012
  call void @llvm.dbg.value(metadata i1 %7, metadata !4000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4001
  br i1 %5, label %8, label %18, !dbg !4013

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4015
  call void @llvm.dbg.value(metadata i1 %9, metadata !3997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4001
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4016
  %11 = xor i1 %7, true, !dbg !4016
  %12 = sext i1 %11 to i32, !dbg !4016
  br i1 %10, label %21, label %13, !dbg !4016

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4017
  %15 = load i32, ptr %14, align 4, !dbg !4017, !tbaa !874
  %16 = icmp ne i32 %15, 9, !dbg !4018
  %17 = sext i1 %16 to i32, !dbg !4019
  br label %21, !dbg !4019

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4020

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4022
  store i32 0, ptr %20, align 4, !dbg !4024, !tbaa !874
  br label %21, !dbg !4022

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4001
  ret i32 %22, !dbg !4025
}

; Function Attrs: nounwind
declare !dbg !4026 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4030 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4068, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4072
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4073
  call void @llvm.dbg.value(metadata i32 %2, metadata !4070, metadata !DIExpression()), !dbg !4072
  %3 = icmp slt i32 %2, 0, !dbg !4074
  br i1 %3, label %4, label %6, !dbg !4076

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4077
  br label %24, !dbg !4078

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4079
  %8 = icmp eq i32 %7, 0, !dbg !4079
  br i1 %8, label %13, label %9, !dbg !4081

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4082
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4083
  %12 = icmp eq i64 %11, -1, !dbg !4084
  br i1 %12, label %16, label %13, !dbg !4085

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4086
  %15 = icmp eq i32 %14, 0, !dbg !4086
  br i1 %15, label %16, label %18, !dbg !4087

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 0, metadata !4071, metadata !DIExpression()), !dbg !4072
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4088
  call void @llvm.dbg.value(metadata i32 %17, metadata !4071, metadata !DIExpression()), !dbg !4072
  br label %24, !dbg !4089

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4090
  %20 = load i32, ptr %19, align 4, !dbg !4090, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %20, metadata !4069, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 0, metadata !4071, metadata !DIExpression()), !dbg !4072
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4088
  call void @llvm.dbg.value(metadata i32 %21, metadata !4071, metadata !DIExpression()), !dbg !4072
  %22 = icmp eq i32 %20, 0, !dbg !4091
  br i1 %22, label %24, label %23, !dbg !4089

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4093, !tbaa !874
  call void @llvm.dbg.value(metadata i32 -1, metadata !4071, metadata !DIExpression()), !dbg !4072
  br label %24, !dbg !4095

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4072
  ret i32 %25, !dbg !4096
}

; Function Attrs: nofree nounwind
declare !dbg !4097 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4098 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4099 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4100 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4105, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i32 %1, metadata !4106, metadata !DIExpression()), !dbg !4111
  %3 = icmp ult i32 %0, 3, !dbg !4112
  br i1 %3, label %4, label %9, !dbg !4112

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #39, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %5, metadata !4107, metadata !DIExpression()), !dbg !4114
  %6 = tail call ptr @__errno_location() #42, !dbg !4115
  %7 = load i32, ptr %6, align 4, !dbg !4115, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !4110, metadata !DIExpression()), !dbg !4114
  %8 = tail call i32 @close(i32 noundef %0) #39, !dbg !4116
  store i32 %7, ptr %6, align 4, !dbg !4117, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %5, metadata !4105, metadata !DIExpression()), !dbg !4111
  br label %9, !dbg !4118

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4105, metadata !DIExpression()), !dbg !4111
  ret i32 %10, !dbg !4119
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4122, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i32 %1, metadata !4123, metadata !DIExpression()), !dbg !4124
  %3 = and i32 %1, 524288, !dbg !4125
  %4 = icmp eq i32 %3, 0, !dbg !4126
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4126
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #39, !dbg !4127
  ret i32 %6, !dbg !4128
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4167, metadata !DIExpression()), !dbg !4168
  %2 = icmp eq ptr %0, null, !dbg !4169
  br i1 %2, label %6, label %3, !dbg !4171

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4172
  %5 = icmp eq i32 %4, 0, !dbg !4172
  br i1 %5, label %6, label %8, !dbg !4173

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4174
  br label %16, !dbg !4175

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4176, metadata !DIExpression()), !dbg !4181
  %9 = load i32, ptr %0, align 8, !dbg !4183, !tbaa !4009
  %10 = and i32 %9, 256, !dbg !4185
  %11 = icmp eq i32 %10, 0, !dbg !4185
  br i1 %11, label %14, label %12, !dbg !4186

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4187
  br label %14, !dbg !4187

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4188
  br label %16, !dbg !4189

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4168
  ret i32 %17, !dbg !4190
}

; Function Attrs: nofree nounwind
declare !dbg !4191 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4192 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4231, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %1, metadata !4232, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i32 %2, metadata !4233, metadata !DIExpression()), !dbg !4237
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4238
  %5 = load ptr, ptr %4, align 8, !dbg !4238, !tbaa !4239
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4240
  %7 = load ptr, ptr %6, align 8, !dbg !4240, !tbaa !4241
  %8 = icmp eq ptr %5, %7, !dbg !4242
  br i1 %8, label %9, label %27, !dbg !4243

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4244
  %11 = load ptr, ptr %10, align 8, !dbg !4244, !tbaa !1539
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4245
  %13 = load ptr, ptr %12, align 8, !dbg !4245, !tbaa !4246
  %14 = icmp eq ptr %11, %13, !dbg !4247
  br i1 %14, label %15, label %27, !dbg !4248

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4249
  %17 = load ptr, ptr %16, align 8, !dbg !4249, !tbaa !4250
  %18 = icmp eq ptr %17, null, !dbg !4251
  br i1 %18, label %19, label %27, !dbg !4252

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4253
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4254
  call void @llvm.dbg.value(metadata i64 %21, metadata !4234, metadata !DIExpression()), !dbg !4255
  %22 = icmp eq i64 %21, -1, !dbg !4256
  br i1 %22, label %29, label %23, !dbg !4258

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4259, !tbaa !4009
  %25 = and i32 %24, -17, !dbg !4259
  store i32 %25, ptr %0, align 8, !dbg !4259, !tbaa !4009
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4260
  store i64 %21, ptr %26, align 8, !dbg !4261, !tbaa !4262
  br label %29, !dbg !4263

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4264
  br label %29, !dbg !4265

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4237
  ret i32 %30, !dbg !4266
}

; Function Attrs: nofree nounwind
declare !dbg !4267 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4270 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4275, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %1, metadata !4276, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %2, metadata !4277, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %3, metadata !4278, metadata !DIExpression()), !dbg !4280
  %5 = icmp eq ptr %1, null, !dbg !4281
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4283
  %7 = select i1 %5, ptr @.str.134, ptr %1, !dbg !4283
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %8, metadata !4277, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %7, metadata !4276, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %6, metadata !4275, metadata !DIExpression()), !dbg !4280
  %9 = icmp eq ptr %3, null, !dbg !4284
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4286
  call void @llvm.dbg.value(metadata ptr %10, metadata !4278, metadata !DIExpression()), !dbg !4280
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4287
  call void @llvm.dbg.value(metadata i64 %11, metadata !4279, metadata !DIExpression()), !dbg !4280
  %12 = icmp ult i64 %11, -3, !dbg !4288
  br i1 %12, label %13, label %17, !dbg !4290

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4291
  %15 = icmp eq i32 %14, 0, !dbg !4291
  br i1 %15, label %16, label %29, !dbg !4292

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4293, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata ptr %10, metadata !4300, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i64 8, metadata !4304, metadata !DIExpression()), !dbg !4305
  store i64 0, ptr %10, align 1, !dbg !4307
  br label %29, !dbg !4308

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4309
  br i1 %18, label %19, label %20, !dbg !4311

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4312
  unreachable, !dbg !4312

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4313

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4315
  br i1 %23, label %29, label %24, !dbg !4316

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4317
  br i1 %25, label %29, label %26, !dbg !4320

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4321, !tbaa !883
  %28 = zext i8 %27 to i32, !dbg !4322
  store i32 %28, ptr %6, align 4, !dbg !4323, !tbaa !874
  br label %29, !dbg !4324

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4280
  ret i64 %30, !dbg !4325
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4326 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_pipe2(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #10 !dbg !685 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !692, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i32 %1, metadata !693, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i32 undef, metadata !694, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4332
  %3 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !4333
  %4 = load <2 x i32>, ptr %0, align 4, !dbg !4334, !tbaa !874
  call void @llvm.dbg.value(metadata i32 undef, metadata !694, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4332
  %5 = load i32, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4335, !tbaa !874
  %6 = icmp sgt i32 %5, -1, !dbg !4336
  br i1 %6, label %7, label %16, !dbg !4337

7:                                                ; preds = %2
  %8 = tail call i32 @pipe2(ptr noundef nonnull %0, i32 noundef %1) #39, !dbg !4338
  call void @llvm.dbg.value(metadata i32 %8, metadata !696, metadata !DIExpression()), !dbg !4339
  %9 = icmp slt i32 %8, 0, !dbg !4340
  br i1 %9, label %10, label %15, !dbg !4342

10:                                               ; preds = %7
  %11 = tail call ptr @__errno_location() #42, !dbg !4343
  %12 = load i32, ptr %11, align 4, !dbg !4343, !tbaa !874
  %13 = icmp eq i32 %12, 38, !dbg !4344
  br i1 %13, label %14, label %15, !dbg !4345

14:                                               ; preds = %10
  store i32 -1, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4339, !tbaa !874
  br label %16

15:                                               ; preds = %7, %10
  store i32 1, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4339, !tbaa !874
  br label %73

16:                                               ; preds = %14, %2
  %17 = and i32 %1, -526337, !dbg !4346
  %18 = icmp eq i32 %17, 0, !dbg !4348
  br i1 %18, label %21, label %19, !dbg !4349

19:                                               ; preds = %16
  %20 = tail call ptr @__errno_location() #42, !dbg !4350
  store i32 22, ptr %20, align 4, !dbg !4352, !tbaa !874
  br label %73, !dbg !4353

21:                                               ; preds = %16
  %22 = tail call i32 @pipe(ptr noundef nonnull %0) #39, !dbg !4354
  %23 = icmp slt i32 %22, 0, !dbg !4356
  br i1 %23, label %73, label %24, !dbg !4357

24:                                               ; preds = %21
  %25 = and i32 %1, 2048, !dbg !4358
  %26 = icmp eq i32 %25, 0, !dbg !4358
  br i1 %26, label %45, label %27, !dbg !4359

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4, !dbg !4360, !tbaa !874
  %29 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %28, i32 noundef 3, i32 noundef 0) #39, !dbg !4362
  call void @llvm.dbg.value(metadata i32 %29, metadata !700, metadata !DIExpression()), !dbg !4363
  %30 = icmp slt i32 %29, 0, !dbg !4364
  br i1 %30, label %66, label %31, !dbg !4365

31:                                               ; preds = %27
  %32 = load i32, ptr %3, align 4, !dbg !4366, !tbaa !874
  %33 = or i32 %29, 2048, !dbg !4367
  %34 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %32, i32 noundef 4, i32 noundef %33) #39, !dbg !4368
  %35 = icmp eq i32 %34, -1, !dbg !4369
  br i1 %35, label %66, label %36, !dbg !4370

36:                                               ; preds = %31
  %37 = load i32, ptr %0, align 4, !dbg !4371, !tbaa !874
  %38 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %37, i32 noundef 3, i32 noundef 0) #39, !dbg !4372
  call void @llvm.dbg.value(metadata i32 %38, metadata !700, metadata !DIExpression()), !dbg !4363
  %39 = icmp slt i32 %38, 0, !dbg !4373
  br i1 %39, label %66, label %40, !dbg !4374

40:                                               ; preds = %36
  %41 = load i32, ptr %0, align 4, !dbg !4375, !tbaa !874
  %42 = or i32 %38, 2048, !dbg !4376
  %43 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %41, i32 noundef 4, i32 noundef %42) #39, !dbg !4377
  %44 = icmp eq i32 %43, -1, !dbg !4378
  br i1 %44, label %66, label %45, !dbg !4379

45:                                               ; preds = %40, %24
  %46 = and i32 %1, 524288, !dbg !4380
  %47 = icmp eq i32 %46, 0, !dbg !4380
  br i1 %47, label %73, label %48, !dbg !4381

48:                                               ; preds = %45
  %49 = load i32, ptr %3, align 4, !dbg !4382, !tbaa !874
  %50 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %49, i32 noundef 1, i32 noundef 0) #39, !dbg !4384
  call void @llvm.dbg.value(metadata i32 %50, metadata !703, metadata !DIExpression()), !dbg !4385
  %51 = icmp slt i32 %50, 0, !dbg !4386
  br i1 %51, label %66, label %52, !dbg !4387

52:                                               ; preds = %48
  %53 = load i32, ptr %3, align 4, !dbg !4388, !tbaa !874
  %54 = or i32 %50, 1, !dbg !4389
  %55 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %53, i32 noundef 2, i32 noundef %54) #39, !dbg !4390
  %56 = icmp eq i32 %55, -1, !dbg !4391
  br i1 %56, label %66, label %57, !dbg !4392

57:                                               ; preds = %52
  %58 = load i32, ptr %0, align 4, !dbg !4393, !tbaa !874
  %59 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %58, i32 noundef 1, i32 noundef 0) #39, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %59, metadata !703, metadata !DIExpression()), !dbg !4385
  %60 = icmp slt i32 %59, 0, !dbg !4395
  br i1 %60, label %66, label %61, !dbg !4396

61:                                               ; preds = %57
  %62 = load i32, ptr %0, align 4, !dbg !4397, !tbaa !874
  %63 = or i32 %59, 1, !dbg !4398
  %64 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %62, i32 noundef 2, i32 noundef %63) #39, !dbg !4399
  %65 = icmp eq i32 %64, -1, !dbg !4400
  br i1 %65, label %66, label %73, !dbg !4401

66:                                               ; preds = %61, %48, %52, %57, %40, %27, %31, %36
  call void @llvm.dbg.label(metadata !708), !dbg !4402
  %67 = tail call ptr @__errno_location() #42, !dbg !4403
  %68 = load i32, ptr %67, align 4, !dbg !4403, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %68, metadata !706, metadata !DIExpression()), !dbg !4404
  %69 = load i32, ptr %0, align 4, !dbg !4405, !tbaa !874
  %70 = tail call i32 @close(i32 noundef %69) #39, !dbg !4406
  %71 = load i32, ptr %3, align 4, !dbg !4407, !tbaa !874
  %72 = tail call i32 @close(i32 noundef %71) #39, !dbg !4408
  store <2 x i32> %4, ptr %0, align 4, !dbg !4409, !tbaa !874
  store i32 %68, ptr %67, align 4, !dbg !4410, !tbaa !874
  br label %73

73:                                               ; preds = %61, %45, %21, %15, %66, %19
  %74 = phi i32 [ -1, %19 ], [ -1, %66 ], [ %8, %15 ], [ -1, %21 ], [ 0, %45 ], [ 0, %61 ]
  ret i32 %74, !dbg !4411
}

; Function Attrs: nounwind
declare !dbg !4412 i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4413 i32 @pipe(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4416 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4418, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %1, metadata !4419, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %2, metadata !4420, metadata !DIExpression()), !dbg !4422
  %4 = icmp eq i64 %2, 0, !dbg !4423
  br i1 %4, label %8, label %5, !dbg !4423

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4423
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4423
  br i1 %7, label %13, label %8, !dbg !4423

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4421, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4422
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4421, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4422
  %9 = mul i64 %2, %1, !dbg !4423
  call void @llvm.dbg.value(metadata i64 %9, metadata !4421, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata ptr %0, metadata !4425, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %9, metadata !4428, metadata !DIExpression()), !dbg !4429
  %10 = icmp eq i64 %9, 0, !dbg !4431
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4431
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4432
  br label %15, !dbg !4433

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4421, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4422
  %14 = tail call ptr @__errno_location() #42, !dbg !4434
  store i32 12, ptr %14, align 4, !dbg !4436, !tbaa !874
  br label %15, !dbg !4437

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4422
  ret ptr %16, !dbg !4438
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4439 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4443, metadata !DIExpression()), !dbg !4448
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4449
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4444, metadata !DIExpression()), !dbg !4450
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4451
  %4 = icmp eq i32 %3, 0, !dbg !4451
  br i1 %4, label %5, label %12, !dbg !4453

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4454, metadata !DIExpression()), !dbg !4458
  %6 = load i16, ptr %2, align 16, !dbg !4461
  %7 = icmp eq i16 %6, 67, !dbg !4461
  br i1 %7, label %11, label %8, !dbg !4462

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4454, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata ptr @.str.1.141, metadata !4457, metadata !DIExpression()), !dbg !4463
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.141, i64 6), !dbg !4465
  %10 = icmp eq i32 %9, 0, !dbg !4466
  br i1 %10, label %11, label %12, !dbg !4467

11:                                               ; preds = %8, %5
  br label %12, !dbg !4468

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4448
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4469
  ret i1 %13, !dbg !4469
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4474, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata ptr %1, metadata !4475, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i64 %2, metadata !4476, metadata !DIExpression()), !dbg !4477
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4478
  ret i32 %4, !dbg !4479
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4484, metadata !DIExpression()), !dbg !4485
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4486
  ret ptr %2, !dbg !4487
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4488 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4490, metadata !DIExpression()), !dbg !4492
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4493
  call void @llvm.dbg.value(metadata ptr %2, metadata !4491, metadata !DIExpression()), !dbg !4492
  ret ptr %2, !dbg !4494
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4495 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4497, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr %1, metadata !4498, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %2, metadata !4499, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 %0, metadata !4490, metadata !DIExpression()), !dbg !4505
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4507
  call void @llvm.dbg.value(metadata ptr %4, metadata !4491, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr %4, metadata !4500, metadata !DIExpression()), !dbg !4504
  %5 = icmp eq ptr %4, null, !dbg !4508
  br i1 %5, label %6, label %9, !dbg !4509

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4510
  br i1 %7, label %19, label %8, !dbg !4513

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4514, !tbaa !883
  br label %19, !dbg !4515

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %10, metadata !4501, metadata !DIExpression()), !dbg !4517
  %11 = icmp ult i64 %10, %2, !dbg !4518
  br i1 %11, label %12, label %14, !dbg !4520

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4521
  call void @llvm.dbg.value(metadata ptr %1, metadata !4523, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata ptr %4, metadata !4526, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i64 %13, metadata !4527, metadata !DIExpression()), !dbg !4528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4530
  br label %19, !dbg !4531

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4532
  br i1 %15, label %19, label %16, !dbg !4535

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4536
  call void @llvm.dbg.value(metadata ptr %1, metadata !4523, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata ptr %4, metadata !4526, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %17, metadata !4527, metadata !DIExpression()), !dbg !4538
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4540
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4541
  store i8 0, ptr %18, align 1, !dbg !4542, !tbaa !883
  br label %19, !dbg !4543

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4544
  ret i32 %20, !dbg !4545
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!72, !295, !299, !314, !654, !370, !712, !715, !717, !387, !719, !407, !421, !472, !721, !729, !646, !736, !770, !772, !774, !776, !778, !780, !782, !670, !689, !784, !787, !791, !793}
!llvm.ident = !{!795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795}
!llvm.module.flags = !{!796, !797, !798, !799, !800, !801}

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
!313 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !314, file: !315, line: 66, type: !361, isLocal: false, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C11, file: !315, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !316, globals: !317, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!316 = !{!94, !100}
!317 = !{!318, !320, !340, !342, !344, !346, !312, !348, !350, !352, !354, !359}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !315, line: 272, type: !105, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "old_file_name", scope: !322, file: !315, line: 304, type: !70, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "verror_at_line", scope: !315, file: !315, line: 298, type: !323, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !333)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !95, !95, !70, !76, !70, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !327)
!327 = !{!328, !330, !331, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !326, file: !329, baseType: !76, size: 32)
!329 = !DIFile(filename: "lib/error.c", directory: "/src")
!330 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !326, file: !329, baseType: !76, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !326, file: !329, baseType: !94, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !326, file: !329, baseType: !94, size: 64, offset: 128)
!333 = !{!334, !335, !336, !337, !338, !339}
!334 = !DILocalVariable(name: "status", arg: 1, scope: !322, file: !315, line: 298, type: !95)
!335 = !DILocalVariable(name: "errnum", arg: 2, scope: !322, file: !315, line: 298, type: !95)
!336 = !DILocalVariable(name: "file_name", arg: 3, scope: !322, file: !315, line: 298, type: !70)
!337 = !DILocalVariable(name: "line_number", arg: 4, scope: !322, file: !315, line: 298, type: !76)
!338 = !DILocalVariable(name: "message", arg: 5, scope: !322, file: !315, line: 298, type: !70)
!339 = !DILocalVariable(name: "args", arg: 6, scope: !322, file: !315, line: 298, type: !325)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "old_line_number", scope: !322, file: !315, line: 305, type: !76, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !315, line: 338, type: !19, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !315, line: 346, type: !141, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !315, line: 346, type: !59, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "error_message_count", scope: !314, file: !315, line: 69, type: !76, isLocal: false, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !314, file: !315, line: 295, type: !95, isLocal: false, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !315, line: 208, type: !136, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !315, line: 208, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 21)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !315, line: 214, type: !105, isLocal: true, isDefinition: true)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null}
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !366, file: !367, line: 506, type: !95, isLocal: true, isDefinition: true)
!366 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !367, file: !367, line: 485, type: !368, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !372)
!367 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!368 = !DISubroutineType(types: !369)
!369 = !{!95, !95, !95}
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !367, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !371, splitDebugInlining: false, nameTableKind: None)
!371 = !{!364}
!372 = !{!373, !374, !375, !376, !379}
!373 = !DILocalVariable(name: "fd", arg: 1, scope: !366, file: !367, line: 485, type: !95)
!374 = !DILocalVariable(name: "target", arg: 2, scope: !366, file: !367, line: 485, type: !95)
!375 = !DILocalVariable(name: "result", scope: !366, file: !367, line: 487, type: !95)
!376 = !DILocalVariable(name: "flags", scope: !377, file: !367, line: 530, type: !95)
!377 = distinct !DILexicalBlock(scope: !378, file: !367, line: 529, column: 5)
!378 = distinct !DILexicalBlock(scope: !366, file: !367, line: 528, column: 7)
!379 = !DILocalVariable(name: "saved_errno", scope: !380, file: !367, line: 533, type: !95)
!380 = distinct !DILexicalBlock(scope: !381, file: !367, line: 532, column: 9)
!381 = distinct !DILexicalBlock(scope: !377, file: !367, line: 531, column: 11)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !384, line: 60, type: !59, isLocal: true, isDefinition: true)
!384 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "long_options", scope: !387, file: !384, line: 34, type: !395, isLocal: true, isDefinition: true)
!387 = distinct !DICompileUnit(language: DW_LANG_C11, file: !384, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !388, splitDebugInlining: false, nameTableKind: None)
!388 = !{!382, !389, !391, !393, !385}
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !384, line: 112, type: !34, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !384, line: 36, type: !105, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !384, line: 37, type: !141, isLocal: true, isDefinition: true)
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
!407 = distinct !DICompileUnit(language: DW_LANG_C11, file: !408, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !409, globals: !410, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!409 = !{!101}
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
!421 = distinct !DICompileUnit(language: DW_LANG_C11, file: !418, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !422, splitDebugInlining: false, nameTableKind: None)
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
!472 = distinct !DICompileUnit(language: DW_LANG_C11, file: !448, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !473, retainedTypes: !493, globals: !494, splitDebugInlining: false, nameTableKind: None)
!473 = !{!474, !488, !74}
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !475, line: 42, baseType: !76, size: 32, elements: !476)
!475 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!493 = !{!95, !96, !97}
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
!646 = distinct !DICompileUnit(language: DW_LANG_C11, file: !647, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !648, splitDebugInlining: false, nameTableKind: None)
!647 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!648 = !{!644}
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 47)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(name: "exit_failure", scope: !654, file: !655, line: 24, type: !657, isLocal: false, isDefinition: true)
!654 = distinct !DICompileUnit(language: DW_LANG_C11, file: !655, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !656, splitDebugInlining: false, nameTableKind: None)
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
!670 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !671, globals: !672, splitDebugInlining: false, nameTableKind: None)
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
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !690, splitDebugInlining: false, nameTableKind: None)
!690 = !{!683}
!691 = !{!692, !693, !694, !696, !700, !703, !706, !708}
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
!706 = !DILocalVariable(name: "saved_errno", scope: !707, file: !686, line: 157, type: !95)
!707 = distinct !DILexicalBlock(scope: !685, file: !686, line: 156, column: 3)
!708 = !DILabel(scope: !685, name: "fail", file: !686, line: 155)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !711, line: 35, type: !114, isLocal: true, isDefinition: true)
!711 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!714 = !{!70}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/pipe2-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5a0d0feff89b6f036d8f7a6e8480abb")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !723, retainedTypes: !728, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!723 = !{!724}
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !725, line: 36, baseType: !76, size: 32, elements: !726)
!725 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!726 = !{!727}
!727 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!728 = !{!97}
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !564, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !734, globals: !735, splitDebugInlining: false, nameTableKind: None)
!730 = !{!731}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !564, line: 40, baseType: !76, size: 32, elements: !732)
!732 = !{!733}
!733 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!734 = !{!94}
!735 = !{!562, !565, !567, !569, !571, !573, !578, !583, !585, !590, !595, !600, !605, !607, !612, !617, !622, !627, !629, !631, !633, !635, !637, !639}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !738, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!738 = !{!739, !751}
!739 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !740, file: !737, line: 188, baseType: !76, size: 32, elements: !749)
!740 = distinct !DISubprogram(name: "x2nrealloc", scope: !737, file: !737, line: 176, type: !741, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !744)
!741 = !DISubroutineType(types: !742)
!742 = !{!94, !94, !743, !97}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!744 = !{!745, !746, !747, !748}
!745 = !DILocalVariable(name: "p", arg: 1, scope: !740, file: !737, line: 176, type: !94)
!746 = !DILocalVariable(name: "pn", arg: 2, scope: !740, file: !737, line: 176, type: !743)
!747 = !DILocalVariable(name: "s", arg: 3, scope: !740, file: !737, line: 176, type: !97)
!748 = !DILocalVariable(name: "n", scope: !740, file: !737, line: 178, type: !97)
!749 = !{!750}
!750 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!751 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !752, file: !737, line: 228, baseType: !76, size: 32, elements: !749)
!752 = distinct !DISubprogram(name: "xpalloc", scope: !737, file: !737, line: 223, type: !753, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !759)
!753 = !DISubroutineType(types: !754)
!754 = !{!94, !94, !755, !756, !758, !756}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !757, line: 130, baseType: !758)
!757 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !98, line: 35, baseType: !260)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768}
!760 = !DILocalVariable(name: "pa", arg: 1, scope: !752, file: !737, line: 223, type: !94)
!761 = !DILocalVariable(name: "pn", arg: 2, scope: !752, file: !737, line: 223, type: !755)
!762 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !752, file: !737, line: 223, type: !756)
!763 = !DILocalVariable(name: "n_max", arg: 4, scope: !752, file: !737, line: 223, type: !758)
!764 = !DILocalVariable(name: "s", arg: 5, scope: !752, file: !737, line: 223, type: !756)
!765 = !DILocalVariable(name: "n0", scope: !752, file: !737, line: 230, type: !756)
!766 = !DILocalVariable(name: "n", scope: !752, file: !737, line: 237, type: !756)
!767 = !DILocalVariable(name: "nbytes", scope: !752, file: !737, line: 248, type: !756)
!768 = !DILocalVariable(name: "adjusted_nbytes", scope: !752, file: !737, line: 252, type: !756)
!769 = !{!101, !94, !219, !260, !99}
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !660, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !771, splitDebugInlining: false, nameTableKind: None)
!771 = !{!658, !661, !663}
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !734, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !734, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !786, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!786 = !{!219, !99, !94}
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !788, splitDebugInlining: false, nameTableKind: None)
!788 = !{!789, !709}
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !711, line: 35, type: !59, isLocal: true, isDefinition: true)
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !734, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!795 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!796 = !{i32 7, !"Dwarf Version", i32 5}
!797 = !{i32 2, !"Debug Info Version", i32 3}
!798 = !{i32 1, !"wchar_size", i32 4}
!799 = !{i32 8, !"PIC Level", i32 2}
!800 = !{i32 7, !"PIE Level", i32 2}
!801 = !{i32 7, !"uwtable", i32 2}
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
!841 = !DILocation(line: 857, column: 3, scope: !823, inlinedAt: !840)
!842 = !DILocation(line: 861, column: 29, scope: !823, inlinedAt: !840)
!843 = !DILocation(line: 862, column: 7, scope: !844, inlinedAt: !840)
!844 = distinct !DILexicalBlock(scope: !823, file: !67, line: 862, column: 7)
!845 = !DILocation(line: 862, column: 19, scope: !844, inlinedAt: !840)
!846 = !DILocation(line: 862, column: 22, scope: !844, inlinedAt: !840)
!847 = !DILocation(line: 862, column: 7, scope: !823, inlinedAt: !840)
!848 = !DILocation(line: 868, column: 7, scope: !849, inlinedAt: !840)
!849 = distinct !DILexicalBlock(scope: !844, file: !67, line: 863, column: 5)
!850 = !DILocation(line: 870, column: 5, scope: !849, inlinedAt: !840)
!851 = !DILocation(line: 875, column: 3, scope: !823, inlinedAt: !840)
!852 = !DILocation(line: 877, column: 3, scope: !823, inlinedAt: !840)
!853 = !DILocation(line: 58, column: 3, scope: !802)
!854 = !DISubprogram(name: "dcgettext", scope: !855, file: !855, line: 51, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!855 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!856 = !DISubroutineType(types: !857)
!857 = !{!101, !70, !70, !95}
!858 = !{}
!859 = !DISubprogram(name: "__fprintf_chk", scope: !860, file: !860, line: 93, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!860 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!861 = !DISubroutineType(types: !862)
!862 = !{!95, !863, !95, !864, null}
!863 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!865 = !DISubprogram(name: "__printf_chk", scope: !860, file: !860, line: 95, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!866 = !DISubroutineType(types: !867)
!867 = !{!95, !95, !864, null}
!868 = !DISubprogram(name: "fputs_unlocked", scope: !869, file: !869, line: 691, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
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
!925 = !DILocation(line: 618, column: 5, scope: !223)
!926 = !DILocation(line: 620, column: 23, scope: !66)
!927 = !DILocation(line: 625, column: 39, scope: !66)
!928 = !DILocation(line: 626, column: 3, scope: !66)
!929 = !DILocation(line: 626, column: 10, scope: !66)
!930 = !DILocation(line: 626, column: 21, scope: !66)
!931 = !DILocation(line: 628, column: 44, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !67, line: 628, column: 11)
!933 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!934 = !DILocation(line: 628, column: 32, scope: !932)
!935 = !DILocation(line: 628, column: 49, scope: !932)
!936 = !DILocation(line: 628, column: 11, scope: !933)
!937 = !DILocation(line: 630, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !933, file: !67, line: 630, column: 11)
!939 = !DILocation(line: 630, column: 11, scope: !933)
!940 = !DILocation(line: 632, column: 26, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !67, line: 632, column: 15)
!942 = distinct !DILexicalBlock(scope: !938, file: !67, line: 631, column: 9)
!943 = !DILocation(line: 632, column: 34, scope: !941)
!944 = !DILocation(line: 632, column: 37, scope: !941)
!945 = !DILocation(line: 632, column: 15, scope: !942)
!946 = !DILocation(line: 636, column: 16, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !67, line: 636, column: 15)
!948 = !DILocation(line: 636, column: 29, scope: !947)
!949 = !DILocation(line: 640, column: 16, scope: !933)
!950 = distinct !{!950, !928, !951, !921}
!951 = !DILocation(line: 641, column: 5, scope: !66)
!952 = !DILocation(line: 644, column: 3, scope: !66)
!953 = !DILocation(line: 0, scope: !886, inlinedAt: !954)
!954 = distinct !DILocation(line: 648, column: 31, scope: !66)
!955 = !DILocation(line: 0, scope: !886, inlinedAt: !956)
!956 = distinct !DILocation(line: 649, column: 31, scope: !66)
!957 = !DILocation(line: 0, scope: !886, inlinedAt: !958)
!958 = distinct !DILocation(line: 650, column: 31, scope: !66)
!959 = !DILocation(line: 0, scope: !886, inlinedAt: !960)
!960 = distinct !DILocation(line: 651, column: 31, scope: !66)
!961 = !DILocation(line: 0, scope: !886, inlinedAt: !962)
!962 = distinct !DILocation(line: 652, column: 31, scope: !66)
!963 = !DILocation(line: 0, scope: !886, inlinedAt: !964)
!964 = distinct !DILocation(line: 653, column: 31, scope: !66)
!965 = !DILocation(line: 0, scope: !886, inlinedAt: !966)
!966 = distinct !DILocation(line: 654, column: 31, scope: !66)
!967 = !DILocation(line: 0, scope: !886, inlinedAt: !968)
!968 = distinct !DILocation(line: 655, column: 31, scope: !66)
!969 = !DILocation(line: 0, scope: !886, inlinedAt: !970)
!970 = distinct !DILocation(line: 656, column: 31, scope: !66)
!971 = !DILocation(line: 0, scope: !886, inlinedAt: !972)
!972 = distinct !DILocation(line: 657, column: 31, scope: !66)
!973 = !DILocation(line: 663, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!975 = !DILocation(line: 664, column: 7, scope: !974)
!976 = !DILocation(line: 664, column: 10, scope: !974)
!977 = !DILocation(line: 663, column: 7, scope: !66)
!978 = !DILocation(line: 669, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !67, line: 665, column: 5)
!980 = !DILocation(line: 671, column: 5, scope: !979)
!981 = !DILocation(line: 676, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !974, file: !67, line: 673, column: 5)
!983 = !DILocation(line: 679, column: 3, scope: !66)
!984 = !DILocation(line: 683, column: 3, scope: !66)
!985 = !DILocation(line: 686, column: 3, scope: !66)
!986 = !DILocation(line: 688, column: 3, scope: !66)
!987 = !DILocation(line: 691, column: 3, scope: !66)
!988 = !DILocation(line: 695, column: 3, scope: !66)
!989 = !DILocation(line: 696, column: 1, scope: !66)
!990 = !DISubprogram(name: "setlocale", scope: !991, file: !991, line: 122, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!991 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!992 = !DISubroutineType(types: !993)
!993 = !{!101, !95, !70}
!994 = !DISubprogram(name: "strncmp", scope: !995, file: !995, line: 159, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!995 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!996 = !DISubroutineType(types: !997)
!997 = !{!95, !70, !70, !97}
!998 = !DISubprogram(name: "exit", scope: !999, file: !999, line: 624, type: !803, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !858)
!999 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1000 = !DISubprogram(name: "getenv", scope: !999, file: !999, line: 641, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!101, !70}
!1003 = !DISubprogram(name: "strcmp", scope: !995, file: !995, line: 156, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!95, !70, !70}
!1006 = !DISubprogram(name: "strspn", scope: !995, file: !995, line: 297, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!99, !70, !70}
!1009 = !DISubprogram(name: "strchr", scope: !995, file: !995, line: 246, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!101, !70, !95}
!1012 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1018 = !DISubprogram(name: "strcspn", scope: !995, file: !995, line: 293, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1019 = !DISubprogram(name: "fwrite_unlocked", scope: !869, file: !869, line: 704, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!97, !1022, !97, !97, !863}
!1022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1025 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 201, type: !1026, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1029)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!95, !95, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1039, !1040, !1041, !1043}
!1030 = !DILocalVariable(name: "argc", arg: 1, scope: !1025, file: !2, line: 201, type: !95)
!1031 = !DILocalVariable(name: "argv", arg: 2, scope: !1025, file: !2, line: 201, type: !1028)
!1032 = !DILocalVariable(name: "operands", scope: !1025, file: !2, line: 215, type: !1028)
!1033 = !DILocalVariable(name: "operand_lim", scope: !1025, file: !2, line: 216, type: !1028)
!1034 = !DILocalVariable(name: "bufalloc", scope: !1025, file: !2, line: 222, type: !97)
!1035 = !DILocalVariable(name: "reuse_operand_strings", scope: !1025, file: !2, line: 223, type: !219)
!1036 = !DILocalVariable(name: "operandp", scope: !1025, file: !2, line: 224, type: !1028)
!1037 = !DILocalVariable(name: "operand_len", scope: !1038, file: !2, line: 227, type: !97)
!1038 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 226, column: 5)
!1039 = !DILocalVariable(name: "buf", scope: !1025, file: !2, line: 249, type: !101)
!1040 = !DILocalVariable(name: "bufused", scope: !1025, file: !2, line: 250, type: !97)
!1041 = !DILocalVariable(name: "operand_len", scope: !1042, file: !2, line: 254, type: !97)
!1042 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 253, column: 5)
!1043 = !DILocalVariable(name: "copysize", scope: !1025, file: !2, line: 263, type: !756)
!1044 = !DILocation(line: 0, scope: !1025)
!1045 = !DILocation(line: 204, column: 21, scope: !1025)
!1046 = !DILocation(line: 204, column: 3, scope: !1025)
!1047 = !DILocation(line: 205, column: 3, scope: !1025)
!1048 = !DILocation(line: 206, column: 3, scope: !1025)
!1049 = !DILocation(line: 207, column: 3, scope: !1025)
!1050 = !DILocation(line: 209, column: 3, scope: !1025)
!1051 = !DILocation(line: 212, column: 36, scope: !1025)
!1052 = !DILocation(line: 212, column: 58, scope: !1025)
!1053 = !DILocation(line: 211, column: 3, scope: !1025)
!1054 = !DILocation(line: 215, column: 28, scope: !1025)
!1055 = !DILocation(line: 215, column: 26, scope: !1025)
!1056 = !DILocation(line: 216, column: 29, scope: !1025)
!1057 = !DILocation(line: 217, column: 14, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 217, column: 7)
!1059 = !DILocation(line: 217, column: 7, scope: !1025)
!1060 = !DILocation(line: 218, column: 17, scope: !1058)
!1061 = !DILocation(line: 218, column: 20, scope: !1058)
!1062 = !DILocation(line: 218, column: 5, scope: !1058)
!1063 = !DILocation(line: 227, column: 36, scope: !1038)
!1064 = !DILocation(line: 227, column: 28, scope: !1038)
!1065 = !DILocation(line: 0, scope: !1038)
!1066 = !DILocation(line: 228, column: 16, scope: !1038)
!1067 = !DILocation(line: 229, column: 20, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 229, column: 11)
!1069 = !DILocation(line: 229, column: 24, scope: !1068)
!1070 = !DILocation(line: 230, column: 11, scope: !1068)
!1071 = !DILocation(line: 230, column: 24, scope: !1068)
!1072 = !DILocation(line: 230, column: 38, scope: !1068)
!1073 = !DILocation(line: 230, column: 45, scope: !1068)
!1074 = !DILocation(line: 230, column: 42, scope: !1068)
!1075 = !DILocation(line: 229, column: 11, scope: !1038)
!1076 = !DILocation(line: 228, column: 31, scope: !1038)
!1077 = !DILocation(line: 236, column: 16, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 236, column: 7)
!1079 = !DILocation(line: 236, column: 7, scope: !1025)
!1080 = !DILocation(line: 272, column: 37, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 270, column: 5)
!1082 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 268, column: 7)
!1083 = !DILocation(line: 249, column: 15, scope: !1025)
!1084 = !DILocation(line: 249, column: 51, scope: !1025)
!1085 = !DILocation(line: 252, column: 3, scope: !1025)
!1086 = !DILocation(line: 254, column: 36, scope: !1042)
!1087 = !DILocation(line: 254, column: 28, scope: !1042)
!1088 = !DILocation(line: 0, scope: !1042)
!1089 = !DILocation(line: 255, column: 11, scope: !1042)
!1090 = !DILocation(line: 256, column: 21, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 255, column: 11)
!1092 = !DILocalVariable(name: "__dest", arg: 1, scope: !1093, file: !1094, line: 26, type: !1097)
!1093 = distinct !DISubprogram(name: "memcpy", scope: !1094, file: !1094, line: 26, type: !1095, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1098)
!1094 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!94, !1097, !1022, !97}
!1097 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!1098 = !{!1092, !1099, !1100}
!1099 = !DILocalVariable(name: "__src", arg: 2, scope: !1093, file: !1094, line: 26, type: !1022)
!1100 = !DILocalVariable(name: "__len", arg: 3, scope: !1093, file: !1094, line: 26, type: !97)
!1101 = !DILocation(line: 0, scope: !1093, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 256, column: 9, scope: !1091)
!1103 = !DILocation(line: 29, column: 10, scope: !1093, inlinedAt: !1102)
!1104 = !DILocation(line: 256, column: 9, scope: !1091)
!1105 = !DILocation(line: 257, column: 15, scope: !1042)
!1106 = !DILocation(line: 258, column: 18, scope: !1042)
!1107 = !DILocation(line: 258, column: 7, scope: !1042)
!1108 = !DILocation(line: 258, column: 22, scope: !1042)
!1109 = !DILocation(line: 260, column: 10, scope: !1025)
!1110 = !DILocation(line: 260, column: 21, scope: !1025)
!1111 = !DILocation(line: 259, column: 5, scope: !1042)
!1112 = distinct !{!1112, !1085, !1113, !921}
!1113 = !DILocation(line: 260, column: 34, scope: !1025)
!1114 = !DILocation(line: 261, column: 20, scope: !1025)
!1115 = !DILocation(line: 268, column: 7, scope: !1082)
!1116 = !DILocation(line: 268, column: 49, scope: !1082)
!1117 = !DILocation(line: 269, column: 7, scope: !1082)
!1118 = !DILocalVariable(name: "buf", arg: 1, scope: !1119, file: !2, line: 113, type: !70)
!1119 = distinct !DISubprogram(name: "splice_write", scope: !2, file: !2, line: 113, type: !1120, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!219, !70, !756}
!1122 = !{!1118, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1140, !1142, !1145, !1148, !1150, !1153}
!1123 = !DILocalVariable(name: "copysize", arg: 2, scope: !1119, file: !2, line: 113, type: !756)
!1124 = !DILocalVariable(name: "output_started", scope: !1119, file: !2, line: 115, type: !219)
!1125 = !DILocalVariable(name: "page_size", scope: !1119, file: !2, line: 117, type: !756)
!1126 = !DILocalVariable(name: "stdout_is_pipe", scope: !1119, file: !2, line: 119, type: !219)
!1127 = !DILocalVariable(name: "pipefd", scope: !1119, file: !2, line: 123, type: !695)
!1128 = !DILocalVariable(name: "splice_bufsize", scope: !1119, file: !2, line: 124, type: !756)
!1129 = !DILocalVariable(name: "splice_buf", scope: !1119, file: !2, line: 125, type: !101)
!1130 = !DILocalVariable(name: "vmsplice_fd", scope: !1119, file: !2, line: 149, type: !95)
!1131 = !DILocalVariable(name: "iov", scope: !1132, file: !2, line: 153, type: !1135)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 152, column: 5)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 151, column: 3)
!1134 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 151, column: 3)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1136, line: 26, size: 128, elements: !1137)
!1136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1135, file: !1136, line: 28, baseType: !94, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1135, file: !1136, line: 29, baseType: !97, size: 64, offset: 64)
!1140 = !DILocalVariable(name: "flags", scope: !1141, file: !2, line: 161, type: !76)
!1141 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 157, column: 9)
!1142 = !DILocalVariable(name: "n", scope: !1141, file: !2, line: 162, type: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !869, line: 77, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !259, line: 194, baseType: !260)
!1145 = !DILocalVariable(name: "remaining", scope: !1146, file: !2, line: 174, type: !756)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 173, column: 9)
!1147 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 172, column: 11)
!1148 = !DILocalVariable(name: "s", scope: !1149, file: !2, line: 177, type: !1143)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 176, column: 13)
!1150 = !DILocalVariable(name: "saved_errno", scope: !1151, file: !2, line: 190, type: !95)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 189, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 188, column: 7)
!1153 = !DILabel(scope: !1119, name: "done", file: !2, line: 187)
!1154 = !DILocation(line: 0, scope: !1119, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 269, column: 10, scope: !1082)
!1156 = !DILocation(line: 117, column: 21, scope: !1119, inlinedAt: !1155)
!1157 = !DILocation(line: 119, column: 25, scope: !1119, inlinedAt: !1155)
!1158 = !DILocation(line: 119, column: 49, scope: !1119, inlinedAt: !1155)
!1159 = !DILocation(line: 123, column: 3, scope: !1119, inlinedAt: !1155)
!1160 = !DILocation(line: 123, column: 7, scope: !1119, inlinedAt: !1155)
!1161 = !DILocation(line: 127, column: 7, scope: !1119, inlinedAt: !1155)
!1162 = !DILocalVariable(name: "fd", arg: 1, scope: !1163, file: !2, line: 89, type: !95)
!1163 = distinct !DISubprogram(name: "pipe_splice_size", scope: !2, file: !2, line: 89, type: !1164, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1166)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!756, !95, !756}
!1166 = !{!1162, !1167, !1168, !1169}
!1167 = !DILocalVariable(name: "copysize", arg: 2, scope: !1163, file: !2, line: 89, type: !756)
!1168 = !DILocalVariable(name: "pipe_cap", scope: !1163, file: !2, line: 91, type: !95)
!1169 = !DILocalVariable(name: "buf_cap", scope: !1163, file: !2, line: 99, type: !97)
!1170 = !DILocation(line: 0, scope: !1163, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 128, column: 22, scope: !1172, inlinedAt: !1155)
!1172 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 127, column: 7)
!1173 = !DILocation(line: 93, column: 19, scope: !1174, inlinedAt: !1171)
!1174 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 93, column: 7)
!1175 = !DILocation(line: 93, column: 63, scope: !1174, inlinedAt: !1171)
!1176 = !DILocation(line: 93, column: 7, scope: !1163, inlinedAt: !1171)
!1177 = !DILocation(line: 94, column: 16, scope: !1174, inlinedAt: !1171)
!1178 = !DILocation(line: 94, column: 5, scope: !1174, inlinedAt: !1171)
!1179 = !DILocation(line: 131, column: 11, scope: !1180, inlinedAt: !1155)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 131, column: 11)
!1181 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 130, column: 5)
!1182 = !DILocation(line: 131, column: 29, scope: !1180, inlinedAt: !1155)
!1183 = !DILocation(line: 131, column: 11, scope: !1181, inlinedAt: !1155)
!1184 = !DILocation(line: 198, column: 1, scope: !1119, inlinedAt: !1155)
!1185 = !DILocation(line: 268, column: 7, scope: !1025)
!1186 = !DILocation(line: 133, column: 42, scope: !1181, inlinedAt: !1155)
!1187 = !DILocation(line: 0, scope: !1163, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 133, column: 24, scope: !1181, inlinedAt: !1155)
!1189 = !DILocation(line: 93, column: 19, scope: !1174, inlinedAt: !1188)
!1190 = !DILocation(line: 93, column: 63, scope: !1174, inlinedAt: !1188)
!1191 = !DILocation(line: 93, column: 7, scope: !1163, inlinedAt: !1188)
!1192 = !DILocation(line: 94, column: 16, scope: !1174, inlinedAt: !1188)
!1193 = !DILocation(line: 94, column: 5, scope: !1174, inlinedAt: !1188)
!1194 = !DILocation(line: 0, scope: !1172, inlinedAt: !1155)
!1195 = !DILocation(line: 136, column: 22, scope: !1196, inlinedAt: !1155)
!1196 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 136, column: 7)
!1197 = !DILocation(line: 136, column: 7, scope: !1119, inlinedAt: !1155)
!1198 = !DILocalVariable(name: "alignment", arg: 1, scope: !1199, file: !1200, line: 90, type: !756)
!1199 = distinct !DISubprogram(name: "alignalloc", scope: !1200, file: !1200, line: 90, type: !1201, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1203)
!1200 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!94, !756, !756}
!1203 = !{!1198, !1204}
!1204 = !DILocalVariable(name: "size", arg: 2, scope: !1199, file: !1200, line: 90, type: !756)
!1205 = !DILocation(line: 0, scope: !1199, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 141, column: 23, scope: !1207, inlinedAt: !1155)
!1207 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 141, column: 7)
!1208 = !DILocation(line: 98, column: 10, scope: !1199, inlinedAt: !1206)
!1209 = !DILocation(line: 141, column: 21, scope: !1207, inlinedAt: !1155)
!1210 = !DILocation(line: 141, column: 7, scope: !1119, inlinedAt: !1155)
!1211 = !DILocalVariable(name: "dest", arg: 1, scope: !1212, file: !2, line: 65, type: !101)
!1212 = distinct !DISubprogram(name: "repeat_pattern", scope: !2, file: !2, line: 65, type: !1213, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !101, !70, !756, !756}
!1215 = !{!1211, !1216, !1217, !1218, !1219, !1221}
!1216 = !DILocalVariable(name: "src", arg: 2, scope: !1212, file: !2, line: 65, type: !70)
!1217 = !DILocalVariable(name: "srcsize", arg: 3, scope: !1212, file: !2, line: 65, type: !756)
!1218 = !DILocalVariable(name: "bufsize", arg: 4, scope: !1212, file: !2, line: 65, type: !756)
!1219 = !DILocalVariable(name: "filled", scope: !1220, file: !2, line: 69, type: !756)
!1220 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 69, column: 3)
!1221 = !DILocalVariable(name: "chunk", scope: !1222, file: !2, line: 71, type: !756)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 70, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 69, column: 3)
!1224 = !DILocation(line: 0, scope: !1212, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 144, column: 3, scope: !1119, inlinedAt: !1155)
!1226 = !DILocation(line: 67, column: 12, scope: !1227, inlinedAt: !1225)
!1227 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 67, column: 7)
!1228 = !DILocation(line: 67, column: 7, scope: !1212, inlinedAt: !1225)
!1229 = !DILocation(line: 0, scope: !1093, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 68, column: 5, scope: !1227, inlinedAt: !1225)
!1231 = !DILocation(line: 29, column: 10, scope: !1093, inlinedAt: !1230)
!1232 = !DILocation(line: 68, column: 5, scope: !1227, inlinedAt: !1225)
!1233 = !DILocation(line: 0, scope: !1220, inlinedAt: !1225)
!1234 = !DILocation(line: 69, column: 39, scope: !1223, inlinedAt: !1225)
!1235 = !DILocation(line: 69, column: 3, scope: !1220, inlinedAt: !1225)
!1236 = !DILocation(line: 71, column: 21, scope: !1222, inlinedAt: !1225)
!1237 = !DILocation(line: 0, scope: !1222, inlinedAt: !1225)
!1238 = !DILocation(line: 72, column: 20, scope: !1222, inlinedAt: !1225)
!1239 = !DILocation(line: 0, scope: !1093, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 72, column: 7, scope: !1222, inlinedAt: !1225)
!1241 = !DILocation(line: 29, column: 10, scope: !1093, inlinedAt: !1240)
!1242 = !DILocation(line: 73, column: 14, scope: !1222, inlinedAt: !1225)
!1243 = distinct !{!1243, !1235, !1244, !921}
!1244 = !DILocation(line: 74, column: 5, scope: !1220, inlinedAt: !1225)
!1245 = !DILocation(line: 149, column: 21, scope: !1119, inlinedAt: !1155)
!1246 = !DILocation(line: 151, column: 3, scope: !1119, inlinedAt: !1155)
!1247 = !DILocation(line: 115, column: 8, scope: !1119, inlinedAt: !1155)
!1248 = !DILocation(line: 153, column: 7, scope: !1132, inlinedAt: !1155)
!1249 = !DILocation(line: 153, column: 20, scope: !1132, inlinedAt: !1155)
!1250 = !DILocation(line: 153, column: 26, scope: !1132, inlinedAt: !1155)
!1251 = !{!1252, !814, i64 0}
!1252 = !{!"iovec", !814, i64 0, !1253, i64 8}
!1253 = !{!"long", !815, i64 0}
!1254 = !DILocation(line: 0, scope: !1132, inlinedAt: !1155)
!1255 = !{!1252, !1253, i64 8}
!1256 = !DILocation(line: 156, column: 7, scope: !1132, inlinedAt: !1155)
!1257 = !DILocation(line: 165, column: 15, scope: !1141, inlinedAt: !1155)
!1258 = !DILocation(line: 167, column: 39, scope: !1141, inlinedAt: !1155)
!1259 = !DILocation(line: 167, column: 48, scope: !1141, inlinedAt: !1155)
!1260 = !DILocation(line: 167, column: 24, scope: !1141, inlinedAt: !1155)
!1261 = !DILocation(line: 168, column: 23, scope: !1141, inlinedAt: !1155)
!1262 = !DILocation(line: 156, column: 26, scope: !1132, inlinedAt: !1155)
!1263 = !DILocation(line: 161, column: 44, scope: !1141, inlinedAt: !1155)
!1264 = !DILocation(line: 161, column: 32, scope: !1141, inlinedAt: !1155)
!1265 = !DILocation(line: 0, scope: !1141, inlinedAt: !1155)
!1266 = !DILocation(line: 162, column: 23, scope: !1141, inlinedAt: !1155)
!1267 = !DILocation(line: 163, column: 17, scope: !1268, inlinedAt: !1155)
!1268 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 163, column: 15)
!1269 = !DILocation(line: 163, column: 15, scope: !1141, inlinedAt: !1155)
!1270 = distinct !{!1270, !1256, !1271, !921}
!1271 = !DILocation(line: 169, column: 9, scope: !1132, inlinedAt: !1155)
!1272 = !DILocation(line: 185, column: 5, scope: !1133, inlinedAt: !1155)
!1273 = !DILocation(line: 172, column: 11, scope: !1132, inlinedAt: !1155)
!1274 = !DILocation(line: 0, scope: !1146, inlinedAt: !1155)
!1275 = !DILocation(line: 177, column: 35, scope: !1149, inlinedAt: !1155)
!1276 = !DILocation(line: 177, column: 27, scope: !1149, inlinedAt: !1155)
!1277 = !DILocation(line: 0, scope: !1149, inlinedAt: !1155)
!1278 = !DILocation(line: 179, column: 21, scope: !1279, inlinedAt: !1155)
!1279 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 179, column: 19)
!1280 = distinct !{!1280, !1281, !1282, !921}
!1281 = !DILocation(line: 175, column: 11, scope: !1146, inlinedAt: !1155)
!1282 = !DILocation(line: 183, column: 13, scope: !1146, inlinedAt: !1155)
!1283 = !DILocation(line: 179, column: 19, scope: !1149, inlinedAt: !1155)
!1284 = !DILocation(line: 175, column: 28, scope: !1146, inlinedAt: !1155)
!1285 = distinct !{!1285, !1281, !1282, !921, !1286}
!1286 = !{!"llvm.loop.peeled.count", i32 1}
!1287 = distinct !{!1287, !1281, !1282, !921}
!1288 = !DILocation(line: 188, column: 7, scope: !1152, inlinedAt: !1155)
!1289 = !DILocation(line: 187, column: 1, scope: !1119, inlinedAt: !1155)
!1290 = !DILocation(line: 188, column: 17, scope: !1152, inlinedAt: !1155)
!1291 = !DILocation(line: 188, column: 7, scope: !1119, inlinedAt: !1155)
!1292 = !DILocation(line: 190, column: 25, scope: !1151, inlinedAt: !1155)
!1293 = !DILocation(line: 0, scope: !1151, inlinedAt: !1155)
!1294 = !DILocation(line: 191, column: 7, scope: !1151, inlinedAt: !1155)
!1295 = !DILocation(line: 192, column: 14, scope: !1151, inlinedAt: !1155)
!1296 = !DILocation(line: 192, column: 7, scope: !1151, inlinedAt: !1155)
!1297 = !DILocation(line: 193, column: 13, scope: !1151, inlinedAt: !1155)
!1298 = !DILocation(line: 194, column: 5, scope: !1151, inlinedAt: !1155)
!1299 = !DILocalVariable(name: "ptr", arg: 1, scope: !1300, file: !1200, line: 75, type: !94)
!1300 = distinct !DISubprogram(name: "alignfree", scope: !1200, file: !1200, line: 75, type: !1301, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !94}
!1303 = !{!1299}
!1304 = !DILocation(line: 0, scope: !1300, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 195, column: 3, scope: !1119, inlinedAt: !1155)
!1306 = !DILocation(line: 77, column: 3, scope: !1300, inlinedAt: !1305)
!1307 = !DILocation(line: 197, column: 10, scope: !1119, inlinedAt: !1155)
!1308 = !DILocation(line: 273, column: 19, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 273, column: 11)
!1310 = !DILocation(line: 273, column: 11, scope: !1081)
!1311 = !DILocation(line: 0, scope: !1212, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 274, column: 9, scope: !1309)
!1313 = !DILocation(line: 0, scope: !1220, inlinedAt: !1312)
!1314 = !DILocation(line: 71, column: 21, scope: !1222, inlinedAt: !1312)
!1315 = !DILocation(line: 0, scope: !1222, inlinedAt: !1312)
!1316 = !DILocation(line: 72, column: 20, scope: !1222, inlinedAt: !1312)
!1317 = !DILocation(line: 0, scope: !1093, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 72, column: 7, scope: !1222, inlinedAt: !1312)
!1319 = !DILocation(line: 29, column: 10, scope: !1093, inlinedAt: !1318)
!1320 = !DILocation(line: 73, column: 14, scope: !1222, inlinedAt: !1312)
!1321 = !DILocation(line: 69, column: 39, scope: !1223, inlinedAt: !1312)
!1322 = !DILocation(line: 69, column: 3, scope: !1220, inlinedAt: !1312)
!1323 = distinct !{!1323, !1322, !1324, !921}
!1324 = !DILocation(line: 74, column: 5, scope: !1220, inlinedAt: !1312)
!1325 = !DILocation(line: 275, column: 7, scope: !1081)
!1326 = !DILocation(line: 275, column: 14, scope: !1081)
!1327 = !DILocation(line: 275, column: 55, scope: !1081)
!1328 = distinct !{!1328, !1325, !1329, !921}
!1329 = !DILocation(line: 276, column: 9, scope: !1081)
!1330 = !DILocation(line: 279, column: 3, scope: !1025)
!1331 = !DILocation(line: 280, column: 3, scope: !1025)
!1332 = !DISubprogram(name: "bindtextdomain", scope: !855, file: !855, line: 86, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!101, !70, !70}
!1335 = !DISubprogram(name: "textdomain", scope: !855, file: !855, line: 82, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1336 = !DISubprogram(name: "atexit", scope: !999, file: !999, line: 602, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!95, !361}
!1339 = !DISubprogram(name: "strlen", scope: !995, file: !995, line: 407, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!99, !70}
!1342 = !DISubprogram(name: "getpagesize", scope: !1343, file: !1343, line: 1011, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1343 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!95}
!1346 = !DISubprogram(name: "aligned_alloc", scope: !999, file: !999, line: 592, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!94, !97, !97}
!1349 = !DISubprogram(name: "vmsplice", scope: !1350, file: !1350, line: 414, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h", directory: "", checksumkind: CSK_MD5, checksum: "1c3bf9fc3309d17651ecfc421f385bcf")
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!1144, !95, !1353, !97, !76}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1135)
!1355 = !DISubprogram(name: "splice", scope: !1350, file: !1350, line: 421, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1144, !95, !1358, !95, !1358, !97, !76}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1359 = !DISubprogram(name: "__errno_location", scope: !1360, file: !1360, line: 37, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1360 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!403}
!1363 = !DISubprogram(name: "close", scope: !1343, file: !1343, line: 358, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!95, !95}
!1366 = !DISubprogram(name: "free", scope: !999, file: !999, line: 555, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1367 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !300, file: !300, line: 50, type: !824, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1368)
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
!1381 = !{!"_Bool", !815, i64 0}
!1382 = !DILocation(line: 90, column: 1, scope: !1373)
!1383 = distinct !DISubprogram(name: "close_stdout", scope: !300, file: !300, line: 116, type: !362, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1384)
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
!1416 = !DISubprogram(name: "_exit", scope: !1343, file: !1343, line: 624, type: !803, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1417 = distinct !DISubprogram(name: "verror", scope: !315, file: !315, line: 251, type: !1418, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !95, !95, !70, !325}
!1420 = !{!1421, !1422, !1423, !1424}
!1421 = !DILocalVariable(name: "status", arg: 1, scope: !1417, file: !315, line: 251, type: !95)
!1422 = !DILocalVariable(name: "errnum", arg: 2, scope: !1417, file: !315, line: 251, type: !95)
!1423 = !DILocalVariable(name: "message", arg: 3, scope: !1417, file: !315, line: 251, type: !70)
!1424 = !DILocalVariable(name: "args", arg: 4, scope: !1417, file: !315, line: 251, type: !325)
!1425 = !DILocation(line: 0, scope: !1417)
!1426 = !DILocation(line: 261, column: 3, scope: !1417)
!1427 = !DILocation(line: 265, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1417, file: !315, line: 265, column: 7)
!1429 = !DILocation(line: 265, column: 7, scope: !1417)
!1430 = !DILocation(line: 266, column: 5, scope: !1428)
!1431 = !DILocation(line: 272, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !315, line: 268, column: 5)
!1433 = !DILocation(line: 276, column: 3, scope: !1417)
!1434 = !DILocation(line: 282, column: 1, scope: !1417)
!1435 = distinct !DISubprogram(name: "flush_stdout", scope: !315, file: !315, line: 163, type: !362, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1436)
!1436 = !{!1437}
!1437 = !DILocalVariable(name: "stdout_fd", scope: !1435, file: !315, line: 166, type: !95)
!1438 = !DILocation(line: 0, scope: !1435)
!1439 = !DILocalVariable(name: "fd", arg: 1, scope: !1440, file: !315, line: 145, type: !95)
!1440 = distinct !DISubprogram(name: "is_open", scope: !315, file: !315, line: 145, type: !1364, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1441)
!1441 = !{!1439}
!1442 = !DILocation(line: 0, scope: !1440, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 182, column: 25, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1435, file: !315, line: 182, column: 7)
!1445 = !DILocation(line: 157, column: 15, scope: !1440, inlinedAt: !1443)
!1446 = !DILocation(line: 157, column: 12, scope: !1440, inlinedAt: !1443)
!1447 = !DILocation(line: 182, column: 7, scope: !1435)
!1448 = !DILocation(line: 184, column: 5, scope: !1444)
!1449 = !DILocation(line: 185, column: 1, scope: !1435)
!1450 = distinct !DISubprogram(name: "error_tail", scope: !315, file: !315, line: 219, type: !1418, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1451)
!1451 = !{!1452, !1453, !1454, !1455}
!1452 = !DILocalVariable(name: "status", arg: 1, scope: !1450, file: !315, line: 219, type: !95)
!1453 = !DILocalVariable(name: "errnum", arg: 2, scope: !1450, file: !315, line: 219, type: !95)
!1454 = !DILocalVariable(name: "message", arg: 3, scope: !1450, file: !315, line: 219, type: !70)
!1455 = !DILocalVariable(name: "args", arg: 4, scope: !1450, file: !315, line: 219, type: !325)
!1456 = !DILocation(line: 0, scope: !1450)
!1457 = !DILocation(line: 229, column: 13, scope: !1450)
!1458 = !DILocalVariable(name: "__stream", arg: 1, scope: !1459, file: !860, line: 132, type: !1462)
!1459 = distinct !DISubprogram(name: "vfprintf", scope: !860, file: !860, line: 132, type: !1460, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1497)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!95, !1462, !864, !325}
!1462 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1465, file: !236, line: 51, baseType: !95, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1465, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1465, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1465, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1465, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1465, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1465, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1465, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1465, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1465, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1465, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1465, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1465, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1465, file: !236, line: 70, baseType: !1481, size: 64, offset: 832)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1465, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1465, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1465, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1465, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1465, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1465, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1465, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1465, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1465, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1465, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1465, file: !236, line: 93, baseType: !1481, size: 64, offset: 1344)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1465, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1465, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1465, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1465, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!1497 = !{!1458, !1498, !1499}
!1498 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1459, file: !860, line: 133, type: !864)
!1499 = !DILocalVariable(name: "__ap", arg: 3, scope: !1459, file: !860, line: 133, type: !325)
!1500 = !DILocation(line: 0, scope: !1459, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 229, column: 3, scope: !1450)
!1502 = !DILocation(line: 135, column: 10, scope: !1459, inlinedAt: !1501)
!1503 = !DILocation(line: 232, column: 3, scope: !1450)
!1504 = !DILocation(line: 233, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1450, file: !315, line: 233, column: 7)
!1506 = !DILocation(line: 233, column: 7, scope: !1450)
!1507 = !DILocalVariable(name: "errnum", arg: 1, scope: !1508, file: !315, line: 188, type: !95)
!1508 = distinct !DISubprogram(name: "print_errno_message", scope: !315, file: !315, line: 188, type: !803, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1509)
!1509 = !{!1507, !1510, !1511}
!1510 = !DILocalVariable(name: "s", scope: !1508, file: !315, line: 190, type: !70)
!1511 = !DILocalVariable(name: "errbuf", scope: !1508, file: !315, line: 193, type: !1512)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1513)
!1513 = !{!1514}
!1514 = !DISubrange(count: 1024)
!1515 = !DILocation(line: 0, scope: !1508, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 234, column: 5, scope: !1505)
!1517 = !DILocation(line: 193, column: 3, scope: !1508, inlinedAt: !1516)
!1518 = !DILocation(line: 193, column: 8, scope: !1508, inlinedAt: !1516)
!1519 = !DILocation(line: 195, column: 7, scope: !1508, inlinedAt: !1516)
!1520 = !DILocation(line: 207, column: 9, scope: !1521, inlinedAt: !1516)
!1521 = distinct !DILexicalBlock(scope: !1508, file: !315, line: 207, column: 7)
!1522 = !DILocation(line: 207, column: 7, scope: !1508, inlinedAt: !1516)
!1523 = !DILocation(line: 208, column: 9, scope: !1521, inlinedAt: !1516)
!1524 = !DILocation(line: 208, column: 5, scope: !1521, inlinedAt: !1516)
!1525 = !DILocation(line: 214, column: 3, scope: !1508, inlinedAt: !1516)
!1526 = !DILocation(line: 216, column: 1, scope: !1508, inlinedAt: !1516)
!1527 = !DILocation(line: 234, column: 5, scope: !1505)
!1528 = !DILocation(line: 238, column: 3, scope: !1450)
!1529 = !DILocalVariable(name: "__c", arg: 1, scope: !1530, file: !1531, line: 101, type: !95)
!1530 = distinct !DISubprogram(name: "putc_unlocked", scope: !1531, file: !1531, line: 101, type: !1532, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1534)
!1531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!95, !95, !1463}
!1534 = !{!1529, !1535}
!1535 = !DILocalVariable(name: "__stream", arg: 2, scope: !1530, file: !1531, line: 101, type: !1463)
!1536 = !DILocation(line: 0, scope: !1530, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 238, column: 3, scope: !1450)
!1538 = !DILocation(line: 103, column: 10, scope: !1530, inlinedAt: !1537)
!1539 = !{!1540, !814, i64 40}
!1540 = !{!"_IO_FILE", !875, i64 0, !814, i64 8, !814, i64 16, !814, i64 24, !814, i64 32, !814, i64 40, !814, i64 48, !814, i64 56, !814, i64 64, !814, i64 72, !814, i64 80, !814, i64 88, !814, i64 96, !814, i64 104, !875, i64 112, !875, i64 116, !1253, i64 120, !916, i64 128, !815, i64 130, !815, i64 131, !814, i64 136, !1253, i64 144, !814, i64 152, !814, i64 160, !814, i64 168, !814, i64 176, !1253, i64 184, !875, i64 192, !815, i64 196}
!1541 = !{!1540, !814, i64 48}
!1542 = !{!"branch_weights", i32 2000, i32 1}
!1543 = !DILocation(line: 240, column: 3, scope: !1450)
!1544 = !DILocation(line: 241, column: 7, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1450, file: !315, line: 241, column: 7)
!1546 = !DILocation(line: 241, column: 7, scope: !1450)
!1547 = !DILocation(line: 242, column: 5, scope: !1545)
!1548 = !DILocation(line: 243, column: 1, scope: !1450)
!1549 = !DISubprogram(name: "__vfprintf_chk", scope: !860, file: !860, line: 96, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!95, !1462, !95, !864, !325}
!1552 = !DISubprogram(name: "strerror_r", scope: !995, file: !995, line: 444, type: !1553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!101, !95, !101, !97}
!1555 = !DISubprogram(name: "__overflow", scope: !869, file: !869, line: 886, type: !1556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!95, !1463, !95}
!1558 = !DISubprogram(name: "fflush_unlocked", scope: !869, file: !869, line: 239, type: !1559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!95, !1463}
!1561 = !DISubprogram(name: "fcntl", scope: !1562, file: !1562, line: 149, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1562 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!95, !95, !95, null}
!1565 = distinct !DISubprogram(name: "error", scope: !315, file: !315, line: 285, type: !1566, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !95, !95, !70, null}
!1568 = !{!1569, !1570, !1571, !1572}
!1569 = !DILocalVariable(name: "status", arg: 1, scope: !1565, file: !315, line: 285, type: !95)
!1570 = !DILocalVariable(name: "errnum", arg: 2, scope: !1565, file: !315, line: 285, type: !95)
!1571 = !DILocalVariable(name: "message", arg: 3, scope: !1565, file: !315, line: 285, type: !70)
!1572 = !DILocalVariable(name: "ap", scope: !1565, file: !315, line: 287, type: !1573)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !869, line: 52, baseType: !1574)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1575, line: 14, baseType: !1576)
!1575 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !329, baseType: !1577)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 192, elements: !35)
!1578 = !DILocation(line: 0, scope: !1565)
!1579 = !DILocation(line: 287, column: 3, scope: !1565)
!1580 = !DILocation(line: 287, column: 11, scope: !1565)
!1581 = !DILocation(line: 288, column: 3, scope: !1565)
!1582 = !DILocation(line: 289, column: 3, scope: !1565)
!1583 = !DILocation(line: 290, column: 3, scope: !1565)
!1584 = !DILocation(line: 291, column: 1, scope: !1565)
!1585 = !DILocation(line: 0, scope: !322)
!1586 = !DILocation(line: 302, column: 7, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !322, file: !315, line: 302, column: 7)
!1588 = !DILocation(line: 302, column: 7, scope: !322)
!1589 = !DILocation(line: 307, column: 11, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !315, line: 307, column: 11)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !315, line: 303, column: 5)
!1592 = !DILocation(line: 307, column: 27, scope: !1590)
!1593 = !DILocation(line: 308, column: 11, scope: !1590)
!1594 = !DILocation(line: 308, column: 28, scope: !1590)
!1595 = !DILocation(line: 308, column: 25, scope: !1590)
!1596 = !DILocation(line: 309, column: 15, scope: !1590)
!1597 = !DILocation(line: 309, column: 33, scope: !1590)
!1598 = !DILocation(line: 310, column: 19, scope: !1590)
!1599 = !DILocation(line: 311, column: 22, scope: !1590)
!1600 = !DILocation(line: 311, column: 56, scope: !1590)
!1601 = !DILocation(line: 307, column: 11, scope: !1591)
!1602 = !DILocation(line: 316, column: 21, scope: !1591)
!1603 = !DILocation(line: 317, column: 23, scope: !1591)
!1604 = !DILocation(line: 318, column: 5, scope: !1591)
!1605 = !DILocation(line: 327, column: 3, scope: !322)
!1606 = !DILocation(line: 331, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !322, file: !315, line: 331, column: 7)
!1608 = !DILocation(line: 331, column: 7, scope: !322)
!1609 = !DILocation(line: 332, column: 5, scope: !1607)
!1610 = !DILocation(line: 338, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !315, line: 334, column: 5)
!1612 = !DILocation(line: 346, column: 3, scope: !322)
!1613 = !DILocation(line: 350, column: 3, scope: !322)
!1614 = !DILocation(line: 356, column: 1, scope: !322)
!1615 = distinct !DISubprogram(name: "error_at_line", scope: !315, file: !315, line: 359, type: !1616, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !95, !95, !70, !76, !70, null}
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624}
!1619 = !DILocalVariable(name: "status", arg: 1, scope: !1615, file: !315, line: 359, type: !95)
!1620 = !DILocalVariable(name: "errnum", arg: 2, scope: !1615, file: !315, line: 359, type: !95)
!1621 = !DILocalVariable(name: "file_name", arg: 3, scope: !1615, file: !315, line: 359, type: !70)
!1622 = !DILocalVariable(name: "line_number", arg: 4, scope: !1615, file: !315, line: 360, type: !76)
!1623 = !DILocalVariable(name: "message", arg: 5, scope: !1615, file: !315, line: 360, type: !70)
!1624 = !DILocalVariable(name: "ap", scope: !1615, file: !315, line: 362, type: !1573)
!1625 = !DILocation(line: 0, scope: !1615)
!1626 = !DILocation(line: 362, column: 3, scope: !1615)
!1627 = !DILocation(line: 362, column: 11, scope: !1615)
!1628 = !DILocation(line: 363, column: 3, scope: !1615)
!1629 = !DILocation(line: 364, column: 3, scope: !1615)
!1630 = !DILocation(line: 366, column: 3, scope: !1615)
!1631 = !DILocation(line: 367, column: 1, scope: !1615)
!1632 = distinct !DISubprogram(name: "rpl_fcntl", scope: !367, file: !367, line: 202, type: !1563, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1633)
!1633 = !{!1634, !1635, !1636, !1647, !1648, !1651, !1653, !1657}
!1634 = !DILocalVariable(name: "fd", arg: 1, scope: !1632, file: !367, line: 202, type: !95)
!1635 = !DILocalVariable(name: "action", arg: 2, scope: !1632, file: !367, line: 202, type: !95)
!1636 = !DILocalVariable(name: "arg", scope: !1632, file: !367, line: 208, type: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1575, line: 22, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1639, baseType: !1640)
!1639 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1641, size: 192, elements: !35)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1641, file: !1639, line: 208, baseType: !76, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1641, file: !1639, line: 208, baseType: !76, size: 32, offset: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1641, file: !1639, line: 208, baseType: !94, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1641, file: !1639, line: 208, baseType: !94, size: 64, offset: 128)
!1647 = !DILocalVariable(name: "result", scope: !1632, file: !367, line: 211, type: !95)
!1648 = !DILocalVariable(name: "target", scope: !1649, file: !367, line: 216, type: !95)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !367, line: 215, column: 7)
!1650 = distinct !DILexicalBlock(scope: !1632, file: !367, line: 213, column: 5)
!1651 = !DILocalVariable(name: "target", scope: !1652, file: !367, line: 223, type: !95)
!1652 = distinct !DILexicalBlock(scope: !1650, file: !367, line: 222, column: 7)
!1653 = !DILocalVariable(name: "x", scope: !1654, file: !367, line: 418, type: !95)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !367, line: 417, column: 13)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !367, line: 261, column: 11)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !367, line: 258, column: 7)
!1657 = !DILocalVariable(name: "p", scope: !1658, file: !367, line: 426, type: !94)
!1658 = distinct !DILexicalBlock(scope: !1655, file: !367, line: 425, column: 13)
!1659 = !DILocation(line: 0, scope: !1632)
!1660 = !DILocation(line: 208, column: 3, scope: !1632)
!1661 = !DILocation(line: 208, column: 11, scope: !1632)
!1662 = !DILocation(line: 209, column: 3, scope: !1632)
!1663 = !DILocation(line: 212, column: 3, scope: !1632)
!1664 = !DILocation(line: 216, column: 22, scope: !1649)
!1665 = !DILocation(line: 0, scope: !1649)
!1666 = !DILocalVariable(name: "fd", arg: 1, scope: !1667, file: !367, line: 444, type: !95)
!1667 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !367, file: !367, line: 444, type: !368, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1668)
!1668 = !{!1666, !1669, !1670}
!1669 = !DILocalVariable(name: "target", arg: 2, scope: !1667, file: !367, line: 444, type: !95)
!1670 = !DILocalVariable(name: "result", scope: !1667, file: !367, line: 446, type: !95)
!1671 = !DILocation(line: 0, scope: !1667, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 217, column: 18, scope: !1649)
!1673 = !DILocation(line: 479, column: 12, scope: !1667, inlinedAt: !1672)
!1674 = !DILocation(line: 223, column: 22, scope: !1652)
!1675 = !DILocation(line: 0, scope: !1652)
!1676 = !DILocation(line: 0, scope: !366, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 224, column: 18, scope: !1652)
!1678 = !DILocation(line: 507, column: 12, scope: !1679, inlinedAt: !1677)
!1679 = distinct !DILexicalBlock(scope: !366, file: !367, line: 507, column: 7)
!1680 = !DILocation(line: 507, column: 9, scope: !1679, inlinedAt: !1677)
!1681 = !DILocation(line: 507, column: 7, scope: !366, inlinedAt: !1677)
!1682 = !DILocation(line: 509, column: 16, scope: !1683, inlinedAt: !1677)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !367, line: 508, column: 5)
!1684 = !DILocation(line: 510, column: 13, scope: !1685, inlinedAt: !1677)
!1685 = distinct !DILexicalBlock(scope: !1683, file: !367, line: 510, column: 11)
!1686 = !DILocation(line: 510, column: 23, scope: !1685, inlinedAt: !1677)
!1687 = !DILocation(line: 510, column: 26, scope: !1685, inlinedAt: !1677)
!1688 = !DILocation(line: 510, column: 32, scope: !1685, inlinedAt: !1677)
!1689 = !DILocation(line: 510, column: 11, scope: !1683, inlinedAt: !1677)
!1690 = !DILocation(line: 512, column: 30, scope: !1691, inlinedAt: !1677)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !367, line: 511, column: 9)
!1692 = !DILocation(line: 528, column: 19, scope: !378, inlinedAt: !1677)
!1693 = !DILocation(line: 0, scope: !1667, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 520, column: 20, scope: !1695, inlinedAt: !1677)
!1695 = distinct !DILexicalBlock(scope: !1685, file: !367, line: 519, column: 9)
!1696 = !DILocation(line: 479, column: 12, scope: !1667, inlinedAt: !1694)
!1697 = !DILocation(line: 521, column: 22, scope: !1698, inlinedAt: !1677)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !367, line: 521, column: 15)
!1699 = !DILocation(line: 521, column: 15, scope: !1695, inlinedAt: !1677)
!1700 = !DILocation(line: 522, column: 32, scope: !1698, inlinedAt: !1677)
!1701 = !DILocation(line: 522, column: 13, scope: !1698, inlinedAt: !1677)
!1702 = !DILocation(line: 0, scope: !1667, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 527, column: 14, scope: !1679, inlinedAt: !1677)
!1704 = !DILocation(line: 479, column: 12, scope: !1667, inlinedAt: !1703)
!1705 = !DILocation(line: 0, scope: !1679, inlinedAt: !1677)
!1706 = !DILocation(line: 528, column: 9, scope: !378, inlinedAt: !1677)
!1707 = !DILocation(line: 530, column: 19, scope: !377, inlinedAt: !1677)
!1708 = !DILocation(line: 0, scope: !377, inlinedAt: !1677)
!1709 = !DILocation(line: 531, column: 17, scope: !381, inlinedAt: !1677)
!1710 = !DILocation(line: 531, column: 21, scope: !381, inlinedAt: !1677)
!1711 = !DILocation(line: 531, column: 54, scope: !381, inlinedAt: !1677)
!1712 = !DILocation(line: 531, column: 24, scope: !381, inlinedAt: !1677)
!1713 = !DILocation(line: 531, column: 68, scope: !381, inlinedAt: !1677)
!1714 = !DILocation(line: 531, column: 11, scope: !377, inlinedAt: !1677)
!1715 = !DILocation(line: 533, column: 29, scope: !380, inlinedAt: !1677)
!1716 = !DILocation(line: 0, scope: !380, inlinedAt: !1677)
!1717 = !DILocation(line: 534, column: 11, scope: !380, inlinedAt: !1677)
!1718 = !DILocation(line: 535, column: 17, scope: !380, inlinedAt: !1677)
!1719 = !DILocation(line: 537, column: 9, scope: !380, inlinedAt: !1677)
!1720 = !DILocation(line: 329, column: 22, scope: !1655)
!1721 = !DILocation(line: 330, column: 13, scope: !1655)
!1722 = !DILocation(line: 418, column: 23, scope: !1654)
!1723 = !DILocation(line: 0, scope: !1654)
!1724 = !DILocation(line: 419, column: 24, scope: !1654)
!1725 = !DILocation(line: 421, column: 13, scope: !1655)
!1726 = !DILocation(line: 426, column: 25, scope: !1658)
!1727 = !DILocation(line: 0, scope: !1658)
!1728 = !DILocation(line: 427, column: 24, scope: !1658)
!1729 = !DILocation(line: 429, column: 13, scope: !1655)
!1730 = !DILocation(line: 0, scope: !1650)
!1731 = !DILocation(line: 438, column: 3, scope: !1632)
!1732 = !DILocation(line: 441, column: 1, scope: !1632)
!1733 = !DILocation(line: 440, column: 3, scope: !1632)
!1734 = distinct !DISubprogram(name: "full_write", scope: !713, file: !713, line: 58, type: !1735, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !1737)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!756, !95, !1023, !756}
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743}
!1738 = !DILocalVariable(name: "fd", arg: 1, scope: !1734, file: !713, line: 58, type: !95)
!1739 = !DILocalVariable(name: "buf", arg: 2, scope: !1734, file: !713, line: 58, type: !1023)
!1740 = !DILocalVariable(name: "count", arg: 3, scope: !1734, file: !713, line: 58, type: !756)
!1741 = !DILocalVariable(name: "total", scope: !1734, file: !713, line: 60, type: !756)
!1742 = !DILocalVariable(name: "ptr", scope: !1734, file: !713, line: 61, type: !70)
!1743 = !DILocalVariable(name: "n_rw", scope: !1744, file: !713, line: 65, type: !758)
!1744 = distinct !DILexicalBlock(scope: !1734, file: !713, line: 64, column: 5)
!1745 = !DILocation(line: 0, scope: !1734)
!1746 = !DILocation(line: 63, column: 16, scope: !1734)
!1747 = !DILocation(line: 63, column: 3, scope: !1734)
!1748 = !DILocation(line: 65, column: 24, scope: !1744)
!1749 = !DILocation(line: 0, scope: !1744)
!1750 = !DILocation(line: 66, column: 16, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1744, file: !713, line: 66, column: 11)
!1752 = !DILocation(line: 66, column: 11, scope: !1744)
!1753 = !DILocation(line: 68, column: 16, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1744, file: !713, line: 68, column: 11)
!1755 = !DILocation(line: 68, column: 11, scope: !1744)
!1756 = !DILocation(line: 70, column: 11, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !713, line: 69, column: 9)
!1758 = !DILocation(line: 70, column: 17, scope: !1757)
!1759 = !DILocation(line: 71, column: 11, scope: !1757)
!1760 = !DILocation(line: 73, column: 13, scope: !1744)
!1761 = !DILocation(line: 74, column: 11, scope: !1744)
!1762 = !DILocation(line: 75, column: 13, scope: !1744)
!1763 = !DILocation(line: 78, column: 3, scope: !1734)
!1764 = distinct !DISubprogram(name: "getprogname", scope: !716, file: !716, line: 54, type: !1765, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !858)
!1765 = !DISubroutineType(types: !714)
!1766 = !DILocation(line: 58, column: 10, scope: !1764)
!1767 = !DILocation(line: 58, column: 3, scope: !1764)
!1768 = distinct !DISubprogram(name: "isapipe", scope: !718, file: !718, line: 72, type: !1364, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !1769)
!1769 = !{!1770, !1771, !1775, !1776, !1810}
!1770 = !DILocalVariable(name: "fd", arg: 1, scope: !1768, file: !718, line: 72, type: !95)
!1771 = !DILocalVariable(name: "pipe_link_count_max", scope: !1768, file: !718, line: 74, type: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1773, line: 74, baseType: !1774)
!1773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !259, line: 151, baseType: !99)
!1775 = !DILocalVariable(name: "check_for_fifo", scope: !1768, file: !718, line: 75, type: !219)
!1776 = !DILocalVariable(name: "st", scope: !1768, file: !718, line: 77, type: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1778, line: 26, size: 1152, elements: !1779)
!1778 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1779 = !{!1780, !1782, !1784, !1785, !1787, !1789, !1791, !1792, !1793, !1794, !1796, !1798, !1806, !1807, !1808}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1777, file: !1778, line: 31, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !259, line: 145, baseType: !99)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1777, file: !1778, line: 36, baseType: !1783, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !259, line: 148, baseType: !99)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1777, file: !1778, line: 44, baseType: !1774, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1777, file: !1778, line: 45, baseType: !1786, size: 32, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !259, line: 150, baseType: !76)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1777, file: !1778, line: 47, baseType: !1788, size: 32, offset: 224)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !259, line: 146, baseType: !76)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1777, file: !1778, line: 48, baseType: !1790, size: 32, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !259, line: 147, baseType: !76)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1777, file: !1778, line: 50, baseType: !95, size: 32, offset: 288)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1777, file: !1778, line: 52, baseType: !1781, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1777, file: !1778, line: 57, baseType: !258, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1777, file: !1778, line: 61, baseType: !1795, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !259, line: 175, baseType: !260)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1777, file: !1778, line: 63, baseType: !1797, size: 64, offset: 512)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !259, line: 180, baseType: !260)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1777, file: !1778, line: 74, baseType: !1799, size: 128, offset: 576)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1800, line: 11, size: 128, elements: !1801)
!1800 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1801 = !{!1802, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1799, file: !1800, line: 16, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !259, line: 160, baseType: !260)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1799, file: !1800, line: 21, baseType: !1805, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !259, line: 197, baseType: !260)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1777, file: !1778, line: 75, baseType: !1799, size: 128, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1777, file: !1778, line: 76, baseType: !1799, size: 128, offset: 832)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1777, file: !1778, line: 89, baseType: !1809, size: 192, offset: 960)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 192, elements: !126)
!1810 = !DILocalVariable(name: "fstat_result", scope: !1768, file: !718, line: 78, type: !95)
!1811 = !DILocation(line: 0, scope: !1768)
!1812 = !DILocation(line: 77, column: 3, scope: !1768)
!1813 = !DILocation(line: 77, column: 15, scope: !1768)
!1814 = !DILocation(line: 78, column: 22, scope: !1768)
!1815 = !DILocation(line: 79, column: 20, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1768, file: !718, line: 79, column: 7)
!1817 = !DILocation(line: 79, column: 7, scope: !1768)
!1818 = !DILocation(line: 118, column: 9, scope: !1768)
!1819 = !{!1820, !1253, i64 16}
!1820 = !{!"stat", !1253, i64 0, !1253, i64 8, !1253, i64 16, !875, i64 24, !875, i64 28, !875, i64 32, !875, i64 36, !1253, i64 40, !1253, i64 48, !1253, i64 56, !1253, i64 64, !1821, i64 72, !1821, i64 88, !1821, i64 104, !815, i64 120}
!1821 = !{!"timespec", !1253, i64 0, !1253, i64 8}
!1822 = !DILocation(line: 118, column: 18, scope: !1768)
!1823 = !DILocation(line: 119, column: 6, scope: !1768)
!1824 = !DILocation(line: 117, column: 3, scope: !1768)
!1825 = !DILocation(line: 120, column: 1, scope: !1768)
!1826 = !DISubprogram(name: "fstat", scope: !1827, file: !1827, line: 210, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1827 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!95, !95, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1831 = distinct !DISubprogram(name: "parse_long_options", scope: !384, file: !384, line: 45, type: !1832, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1835)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !95, !1028, !70, !70, !70, !1834, null}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1846}
!1836 = !DILocalVariable(name: "argc", arg: 1, scope: !1831, file: !384, line: 45, type: !95)
!1837 = !DILocalVariable(name: "argv", arg: 2, scope: !1831, file: !384, line: 46, type: !1028)
!1838 = !DILocalVariable(name: "command_name", arg: 3, scope: !1831, file: !384, line: 47, type: !70)
!1839 = !DILocalVariable(name: "package", arg: 4, scope: !1831, file: !384, line: 48, type: !70)
!1840 = !DILocalVariable(name: "version", arg: 5, scope: !1831, file: !384, line: 49, type: !70)
!1841 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1831, file: !384, line: 50, type: !1834)
!1842 = !DILocalVariable(name: "saved_opterr", scope: !1831, file: !384, line: 53, type: !95)
!1843 = !DILocalVariable(name: "c", scope: !1844, file: !384, line: 60, type: !95)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !384, line: 59, column: 5)
!1845 = distinct !DILexicalBlock(scope: !1831, file: !384, line: 58, column: 7)
!1846 = !DILocalVariable(name: "authors", scope: !1847, file: !384, line: 71, type: !1851)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !384, line: 70, column: 15)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !384, line: 64, column: 13)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !384, line: 62, column: 9)
!1850 = distinct !DILexicalBlock(scope: !1844, file: !384, line: 61, column: 11)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !869, line: 52, baseType: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1575, line: 14, baseType: !1853)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1854, baseType: !1855)
!1854 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1856, size: 192, elements: !35)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1856, file: !1854, line: 71, baseType: !76, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1856, file: !1854, line: 71, baseType: !76, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1856, file: !1854, line: 71, baseType: !94, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1856, file: !1854, line: 71, baseType: !94, size: 64, offset: 128)
!1862 = !DILocation(line: 0, scope: !1831)
!1863 = !DILocation(line: 53, column: 22, scope: !1831)
!1864 = !DILocation(line: 56, column: 10, scope: !1831)
!1865 = !DILocation(line: 58, column: 12, scope: !1845)
!1866 = !DILocation(line: 58, column: 7, scope: !1831)
!1867 = !DILocation(line: 60, column: 15, scope: !1844)
!1868 = !DILocation(line: 0, scope: !1844)
!1869 = !DILocation(line: 61, column: 11, scope: !1844)
!1870 = !DILocation(line: 66, column: 15, scope: !1848)
!1871 = !DILocation(line: 67, column: 15, scope: !1848)
!1872 = !DILocation(line: 71, column: 17, scope: !1847)
!1873 = !DILocation(line: 71, column: 25, scope: !1847)
!1874 = !DILocation(line: 72, column: 17, scope: !1847)
!1875 = !DILocation(line: 73, column: 33, scope: !1847)
!1876 = !DILocation(line: 73, column: 17, scope: !1847)
!1877 = !DILocation(line: 74, column: 17, scope: !1847)
!1878 = !DILocation(line: 85, column: 10, scope: !1831)
!1879 = !DILocation(line: 89, column: 10, scope: !1831)
!1880 = !DILocation(line: 90, column: 1, scope: !1831)
!1881 = !DISubprogram(name: "getopt_long", scope: !398, file: !398, line: 66, type: !1882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!95, !95, !1884, !70, !1886, !403}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1887 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !384, file: !384, line: 98, type: !1888, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !95, !1028, !70, !70, !70, !219, !1834, null}
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1891 = !DILocalVariable(name: "argc", arg: 1, scope: !1887, file: !384, line: 98, type: !95)
!1892 = !DILocalVariable(name: "argv", arg: 2, scope: !1887, file: !384, line: 99, type: !1028)
!1893 = !DILocalVariable(name: "command_name", arg: 3, scope: !1887, file: !384, line: 100, type: !70)
!1894 = !DILocalVariable(name: "package", arg: 4, scope: !1887, file: !384, line: 101, type: !70)
!1895 = !DILocalVariable(name: "version", arg: 5, scope: !1887, file: !384, line: 102, type: !70)
!1896 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1887, file: !384, line: 103, type: !219)
!1897 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1887, file: !384, line: 104, type: !1834)
!1898 = !DILocalVariable(name: "saved_opterr", scope: !1887, file: !384, line: 107, type: !95)
!1899 = !DILocalVariable(name: "optstring", scope: !1887, file: !384, line: 112, type: !70)
!1900 = !DILocalVariable(name: "c", scope: !1887, file: !384, line: 114, type: !95)
!1901 = !DILocalVariable(name: "authors", scope: !1902, file: !384, line: 125, type: !1851)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !384, line: 124, column: 11)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !384, line: 118, column: 9)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !384, line: 116, column: 5)
!1905 = distinct !DILexicalBlock(scope: !1887, file: !384, line: 115, column: 7)
!1906 = !DILocation(line: 0, scope: !1887)
!1907 = !DILocation(line: 107, column: 22, scope: !1887)
!1908 = !DILocation(line: 110, column: 10, scope: !1887)
!1909 = !DILocation(line: 112, column: 27, scope: !1887)
!1910 = !DILocation(line: 114, column: 11, scope: !1887)
!1911 = !DILocation(line: 115, column: 7, scope: !1887)
!1912 = !DILocation(line: 125, column: 13, scope: !1902)
!1913 = !DILocation(line: 125, column: 21, scope: !1902)
!1914 = !DILocation(line: 126, column: 13, scope: !1902)
!1915 = !DILocation(line: 127, column: 29, scope: !1902)
!1916 = !DILocation(line: 127, column: 13, scope: !1902)
!1917 = !DILocation(line: 128, column: 13, scope: !1902)
!1918 = !DILocation(line: 132, column: 26, scope: !1903)
!1919 = !DILocation(line: 133, column: 11, scope: !1903)
!1920 = !DILocation(line: 0, scope: !1903)
!1921 = !DILocation(line: 138, column: 10, scope: !1887)
!1922 = !DILocation(line: 139, column: 1, scope: !1887)
!1923 = distinct !DISubprogram(name: "pipe2_safer", scope: !720, file: !720, line: 31, type: !687, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !1924)
!1924 = !{!1925, !1926, !1927, !1931}
!1925 = !DILocalVariable(name: "fd", arg: 1, scope: !1923, file: !720, line: 31, type: !403)
!1926 = !DILocalVariable(name: "flags", arg: 2, scope: !1923, file: !720, line: 31, type: !95)
!1927 = !DILocalVariable(name: "i", scope: !1928, file: !720, line: 36, type: !95)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !720, line: 36, column: 7)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !720, line: 35, column: 5)
!1930 = distinct !DILexicalBlock(scope: !1923, file: !720, line: 34, column: 7)
!1931 = !DILocalVariable(name: "saved_errno", scope: !1932, file: !720, line: 41, type: !95)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !720, line: 40, column: 13)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !720, line: 39, column: 15)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !720, line: 37, column: 9)
!1935 = distinct !DILexicalBlock(scope: !1928, file: !720, line: 36, column: 7)
!1936 = !DILocation(line: 0, scope: !1923)
!1937 = !DILocation(line: 34, column: 7, scope: !1930)
!1938 = !DILocation(line: 34, column: 25, scope: !1930)
!1939 = !DILocation(line: 34, column: 7, scope: !1923)
!1940 = !DILocation(line: 0, scope: !1928)
!1941 = !DILocation(line: 38, column: 34, scope: !1934)
!1942 = !DILocation(line: 38, column: 19, scope: !1934)
!1943 = !DILocation(line: 38, column: 17, scope: !1934)
!1944 = !DILocation(line: 39, column: 21, scope: !1933)
!1945 = !DILocation(line: 39, column: 15, scope: !1934)
!1946 = !DILocation(line: 41, column: 33, scope: !1932)
!1947 = !DILocation(line: 0, scope: !1932)
!1948 = !DILocation(line: 42, column: 22, scope: !1932)
!1949 = !DILocation(line: 42, column: 15, scope: !1932)
!1950 = !DILocation(line: 43, column: 21, scope: !1932)
!1951 = !DILocation(line: 51, column: 1, scope: !1923)
!1952 = distinct !DISubprogram(name: "set_program_name", scope: !408, file: !408, line: 37, type: !824, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DILocalVariable(name: "argv0", arg: 1, scope: !1952, file: !408, line: 37, type: !70)
!1955 = !DILocalVariable(name: "slash", scope: !1952, file: !408, line: 44, type: !70)
!1956 = !DILocalVariable(name: "base", scope: !1952, file: !408, line: 45, type: !70)
!1957 = !DILocation(line: 0, scope: !1952)
!1958 = !DILocation(line: 44, column: 23, scope: !1952)
!1959 = !DILocation(line: 45, column: 22, scope: !1952)
!1960 = !DILocation(line: 46, column: 17, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1952, file: !408, line: 46, column: 7)
!1962 = !DILocation(line: 46, column: 9, scope: !1961)
!1963 = !DILocation(line: 46, column: 25, scope: !1961)
!1964 = !DILocation(line: 46, column: 40, scope: !1961)
!1965 = !DILocalVariable(name: "__s1", arg: 1, scope: !1966, file: !887, line: 974, type: !1023)
!1966 = distinct !DISubprogram(name: "memeq", scope: !887, file: !887, line: 974, type: !1967, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!219, !1023, !1023, !97}
!1969 = !{!1965, !1970, !1971}
!1970 = !DILocalVariable(name: "__s2", arg: 2, scope: !1966, file: !887, line: 974, type: !1023)
!1971 = !DILocalVariable(name: "__n", arg: 3, scope: !1966, file: !887, line: 974, type: !97)
!1972 = !DILocation(line: 0, scope: !1966, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 46, column: 28, scope: !1961)
!1974 = !DILocation(line: 976, column: 11, scope: !1966, inlinedAt: !1973)
!1975 = !DILocation(line: 976, column: 10, scope: !1966, inlinedAt: !1973)
!1976 = !DILocation(line: 46, column: 7, scope: !1952)
!1977 = !DILocation(line: 49, column: 11, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !408, line: 49, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1961, file: !408, line: 47, column: 5)
!1980 = !DILocation(line: 49, column: 36, scope: !1978)
!1981 = !DILocation(line: 49, column: 11, scope: !1979)
!1982 = !DILocation(line: 65, column: 16, scope: !1952)
!1983 = !DILocation(line: 71, column: 27, scope: !1952)
!1984 = !DILocation(line: 74, column: 33, scope: !1952)
!1985 = !DILocation(line: 76, column: 1, scope: !1952)
!1986 = !DISubprogram(name: "strrchr", scope: !995, file: !995, line: 273, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!1987 = !DILocation(line: 0, scope: !417)
!1988 = !DILocation(line: 40, column: 29, scope: !417)
!1989 = !DILocation(line: 41, column: 19, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !417, file: !418, line: 41, column: 7)
!1991 = !DILocation(line: 41, column: 7, scope: !417)
!1992 = !DILocation(line: 47, column: 3, scope: !417)
!1993 = !DILocation(line: 48, column: 3, scope: !417)
!1994 = !DILocation(line: 48, column: 13, scope: !417)
!1995 = !DILocalVariable(name: "ps", arg: 1, scope: !1996, file: !1997, line: 1135, type: !2000)
!1996 = distinct !DISubprogram(name: "mbszero", scope: !1997, file: !1997, line: 1135, type: !1998, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !2001)
!1997 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2001 = !{!1995}
!2002 = !DILocation(line: 0, scope: !1996, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 48, column: 18, scope: !417)
!2004 = !DILocalVariable(name: "__dest", arg: 1, scope: !2005, file: !1094, line: 57, type: !94)
!2005 = distinct !DISubprogram(name: "memset", scope: !1094, file: !1094, line: 57, type: !2006, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!94, !94, !95, !97}
!2008 = !{!2004, !2009, !2010}
!2009 = !DILocalVariable(name: "__ch", arg: 2, scope: !2005, file: !1094, line: 57, type: !95)
!2010 = !DILocalVariable(name: "__len", arg: 3, scope: !2005, file: !1094, line: 57, type: !97)
!2011 = !DILocation(line: 0, scope: !2005, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 1137, column: 3, scope: !1996, inlinedAt: !2003)
!2013 = !DILocation(line: 59, column: 10, scope: !2005, inlinedAt: !2012)
!2014 = !DILocation(line: 49, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !417, file: !418, line: 49, column: 7)
!2016 = !DILocation(line: 49, column: 39, scope: !2015)
!2017 = !DILocation(line: 49, column: 44, scope: !2015)
!2018 = !DILocation(line: 54, column: 1, scope: !417)
!2019 = !DISubprogram(name: "mbrtoc32", scope: !429, file: !429, line: 57, type: !2020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!97, !2022, !864, !97, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2000)
!2025 = distinct !DISubprogram(name: "clone_quoting_options", scope: !448, file: !448, line: 113, type: !2026, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2029)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!2028, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!2029 = !{!2030, !2031, !2032}
!2030 = !DILocalVariable(name: "o", arg: 1, scope: !2025, file: !448, line: 113, type: !2028)
!2031 = !DILocalVariable(name: "saved_errno", scope: !2025, file: !448, line: 115, type: !95)
!2032 = !DILocalVariable(name: "p", scope: !2025, file: !448, line: 116, type: !2028)
!2033 = !DILocation(line: 0, scope: !2025)
!2034 = !DILocation(line: 115, column: 21, scope: !2025)
!2035 = !DILocation(line: 116, column: 40, scope: !2025)
!2036 = !DILocation(line: 116, column: 31, scope: !2025)
!2037 = !DILocation(line: 118, column: 9, scope: !2025)
!2038 = !DILocation(line: 119, column: 3, scope: !2025)
!2039 = distinct !DISubprogram(name: "get_quoting_style", scope: !448, file: !448, line: 124, type: !2040, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2044)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!474, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!2044 = !{!2045}
!2045 = !DILocalVariable(name: "o", arg: 1, scope: !2039, file: !448, line: 124, type: !2042)
!2046 = !DILocation(line: 0, scope: !2039)
!2047 = !DILocation(line: 126, column: 11, scope: !2039)
!2048 = !DILocation(line: 126, column: 46, scope: !2039)
!2049 = !{!2050, !815, i64 0}
!2050 = !{!"quoting_options", !815, i64 0, !875, i64 4, !815, i64 8, !814, i64 40, !814, i64 48}
!2051 = !DILocation(line: 126, column: 3, scope: !2039)
!2052 = distinct !DISubprogram(name: "set_quoting_style", scope: !448, file: !448, line: 132, type: !2053, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2028, !474}
!2055 = !{!2056, !2057}
!2056 = !DILocalVariable(name: "o", arg: 1, scope: !2052, file: !448, line: 132, type: !2028)
!2057 = !DILocalVariable(name: "s", arg: 2, scope: !2052, file: !448, line: 132, type: !474)
!2058 = !DILocation(line: 0, scope: !2052)
!2059 = !DILocation(line: 134, column: 4, scope: !2052)
!2060 = !DILocation(line: 134, column: 45, scope: !2052)
!2061 = !DILocation(line: 135, column: 1, scope: !2052)
!2062 = distinct !DISubprogram(name: "set_char_quoting", scope: !448, file: !448, line: 143, type: !2063, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!95, !2028, !4, !95}
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2072, !2073}
!2066 = !DILocalVariable(name: "o", arg: 1, scope: !2062, file: !448, line: 143, type: !2028)
!2067 = !DILocalVariable(name: "c", arg: 2, scope: !2062, file: !448, line: 143, type: !4)
!2068 = !DILocalVariable(name: "i", arg: 3, scope: !2062, file: !448, line: 143, type: !95)
!2069 = !DILocalVariable(name: "uc", scope: !2062, file: !448, line: 145, type: !100)
!2070 = !DILocalVariable(name: "p", scope: !2062, file: !448, line: 146, type: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2072 = !DILocalVariable(name: "shift", scope: !2062, file: !448, line: 148, type: !95)
!2073 = !DILocalVariable(name: "r", scope: !2062, file: !448, line: 149, type: !76)
!2074 = !DILocation(line: 0, scope: !2062)
!2075 = !DILocation(line: 147, column: 6, scope: !2062)
!2076 = !DILocation(line: 147, column: 41, scope: !2062)
!2077 = !DILocation(line: 147, column: 62, scope: !2062)
!2078 = !DILocation(line: 147, column: 57, scope: !2062)
!2079 = !DILocation(line: 148, column: 15, scope: !2062)
!2080 = !DILocation(line: 149, column: 21, scope: !2062)
!2081 = !DILocation(line: 149, column: 24, scope: !2062)
!2082 = !DILocation(line: 149, column: 34, scope: !2062)
!2083 = !DILocation(line: 150, column: 19, scope: !2062)
!2084 = !DILocation(line: 150, column: 24, scope: !2062)
!2085 = !DILocation(line: 150, column: 6, scope: !2062)
!2086 = !DILocation(line: 151, column: 3, scope: !2062)
!2087 = distinct !DISubprogram(name: "set_quoting_flags", scope: !448, file: !448, line: 159, type: !2088, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!95, !2028, !95}
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "o", arg: 1, scope: !2087, file: !448, line: 159, type: !2028)
!2092 = !DILocalVariable(name: "i", arg: 2, scope: !2087, file: !448, line: 159, type: !95)
!2093 = !DILocalVariable(name: "r", scope: !2087, file: !448, line: 163, type: !95)
!2094 = !DILocation(line: 0, scope: !2087)
!2095 = !DILocation(line: 161, column: 8, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2087, file: !448, line: 161, column: 7)
!2097 = !DILocation(line: 161, column: 7, scope: !2087)
!2098 = !DILocation(line: 163, column: 14, scope: !2087)
!2099 = !{!2050, !875, i64 4}
!2100 = !DILocation(line: 164, column: 12, scope: !2087)
!2101 = !DILocation(line: 165, column: 3, scope: !2087)
!2102 = distinct !DISubprogram(name: "set_custom_quoting", scope: !448, file: !448, line: 169, type: !2103, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !2028, !70, !70}
!2105 = !{!2106, !2107, !2108}
!2106 = !DILocalVariable(name: "o", arg: 1, scope: !2102, file: !448, line: 169, type: !2028)
!2107 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2102, file: !448, line: 170, type: !70)
!2108 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2102, file: !448, line: 170, type: !70)
!2109 = !DILocation(line: 0, scope: !2102)
!2110 = !DILocation(line: 172, column: 8, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2102, file: !448, line: 172, column: 7)
!2112 = !DILocation(line: 172, column: 7, scope: !2102)
!2113 = !DILocation(line: 174, column: 12, scope: !2102)
!2114 = !DILocation(line: 175, column: 8, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2102, file: !448, line: 175, column: 7)
!2116 = !DILocation(line: 175, column: 19, scope: !2115)
!2117 = !DILocation(line: 176, column: 5, scope: !2115)
!2118 = !DILocation(line: 177, column: 6, scope: !2102)
!2119 = !DILocation(line: 177, column: 17, scope: !2102)
!2120 = !{!2050, !814, i64 40}
!2121 = !DILocation(line: 178, column: 6, scope: !2102)
!2122 = !DILocation(line: 178, column: 18, scope: !2102)
!2123 = !{!2050, !814, i64 48}
!2124 = !DILocation(line: 179, column: 1, scope: !2102)
!2125 = !DISubprogram(name: "abort", scope: !999, file: !999, line: 598, type: !362, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !858)
!2126 = distinct !DISubprogram(name: "quotearg_buffer", scope: !448, file: !448, line: 774, type: !2127, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!97, !101, !97, !70, !97, !2042}
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137}
!2130 = !DILocalVariable(name: "buffer", arg: 1, scope: !2126, file: !448, line: 774, type: !101)
!2131 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2126, file: !448, line: 774, type: !97)
!2132 = !DILocalVariable(name: "arg", arg: 3, scope: !2126, file: !448, line: 775, type: !70)
!2133 = !DILocalVariable(name: "argsize", arg: 4, scope: !2126, file: !448, line: 775, type: !97)
!2134 = !DILocalVariable(name: "o", arg: 5, scope: !2126, file: !448, line: 776, type: !2042)
!2135 = !DILocalVariable(name: "p", scope: !2126, file: !448, line: 778, type: !2042)
!2136 = !DILocalVariable(name: "saved_errno", scope: !2126, file: !448, line: 779, type: !95)
!2137 = !DILocalVariable(name: "r", scope: !2126, file: !448, line: 780, type: !97)
!2138 = !DILocation(line: 0, scope: !2126)
!2139 = !DILocation(line: 778, column: 37, scope: !2126)
!2140 = !DILocation(line: 779, column: 21, scope: !2126)
!2141 = !DILocation(line: 781, column: 43, scope: !2126)
!2142 = !DILocation(line: 781, column: 53, scope: !2126)
!2143 = !DILocation(line: 781, column: 63, scope: !2126)
!2144 = !DILocation(line: 782, column: 43, scope: !2126)
!2145 = !DILocation(line: 782, column: 58, scope: !2126)
!2146 = !DILocation(line: 780, column: 14, scope: !2126)
!2147 = !DILocation(line: 783, column: 9, scope: !2126)
!2148 = !DILocation(line: 784, column: 3, scope: !2126)
!2149 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !448, file: !448, line: 251, type: !2150, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2154)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!97, !101, !97, !70, !97, !474, !95, !2152, !70, !70}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2154 = !{!2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2179, !2181, !2184, !2185, !2186, !2187, !2190, !2191, !2194, !2198, !2199, !2207, !2210, !2211, !2213, !2214, !2215, !2216}
!2155 = !DILocalVariable(name: "buffer", arg: 1, scope: !2149, file: !448, line: 251, type: !101)
!2156 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2149, file: !448, line: 251, type: !97)
!2157 = !DILocalVariable(name: "arg", arg: 3, scope: !2149, file: !448, line: 252, type: !70)
!2158 = !DILocalVariable(name: "argsize", arg: 4, scope: !2149, file: !448, line: 252, type: !97)
!2159 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2149, file: !448, line: 253, type: !474)
!2160 = !DILocalVariable(name: "flags", arg: 6, scope: !2149, file: !448, line: 253, type: !95)
!2161 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2149, file: !448, line: 254, type: !2152)
!2162 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2149, file: !448, line: 255, type: !70)
!2163 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2149, file: !448, line: 256, type: !70)
!2164 = !DILocalVariable(name: "unibyte_locale", scope: !2149, file: !448, line: 258, type: !219)
!2165 = !DILocalVariable(name: "len", scope: !2149, file: !448, line: 260, type: !97)
!2166 = !DILocalVariable(name: "orig_buffersize", scope: !2149, file: !448, line: 261, type: !97)
!2167 = !DILocalVariable(name: "quote_string", scope: !2149, file: !448, line: 262, type: !70)
!2168 = !DILocalVariable(name: "quote_string_len", scope: !2149, file: !448, line: 263, type: !97)
!2169 = !DILocalVariable(name: "backslash_escapes", scope: !2149, file: !448, line: 264, type: !219)
!2170 = !DILocalVariable(name: "elide_outer_quotes", scope: !2149, file: !448, line: 265, type: !219)
!2171 = !DILocalVariable(name: "encountered_single_quote", scope: !2149, file: !448, line: 266, type: !219)
!2172 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2149, file: !448, line: 267, type: !219)
!2173 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2149, file: !448, line: 309, type: !219)
!2174 = !DILocalVariable(name: "lq", scope: !2175, file: !448, line: 361, type: !70)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !448, line: 361, column: 11)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !448, line: 360, column: 13)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !448, line: 333, column: 7)
!2178 = distinct !DILexicalBlock(scope: !2149, file: !448, line: 312, column: 5)
!2179 = !DILocalVariable(name: "i", scope: !2180, file: !448, line: 395, type: !97)
!2180 = distinct !DILexicalBlock(scope: !2149, file: !448, line: 395, column: 3)
!2181 = !DILocalVariable(name: "is_right_quote", scope: !2182, file: !448, line: 397, type: !219)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !448, line: 396, column: 5)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !448, line: 395, column: 3)
!2184 = !DILocalVariable(name: "escaping", scope: !2182, file: !448, line: 398, type: !219)
!2185 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2182, file: !448, line: 399, type: !219)
!2186 = !DILocalVariable(name: "c", scope: !2182, file: !448, line: 417, type: !100)
!2187 = !DILocalVariable(name: "m", scope: !2188, file: !448, line: 598, type: !97)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !448, line: 596, column: 11)
!2189 = distinct !DILexicalBlock(scope: !2182, file: !448, line: 419, column: 9)
!2190 = !DILocalVariable(name: "printable", scope: !2188, file: !448, line: 600, type: !219)
!2191 = !DILocalVariable(name: "mbs", scope: !2192, file: !448, line: 609, type: !535)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !448, line: 608, column: 15)
!2193 = distinct !DILexicalBlock(scope: !2188, file: !448, line: 602, column: 17)
!2194 = !DILocalVariable(name: "w", scope: !2195, file: !448, line: 618, type: !428)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !448, line: 617, column: 19)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !448, line: 616, column: 17)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !448, line: 616, column: 17)
!2198 = !DILocalVariable(name: "bytes", scope: !2195, file: !448, line: 619, type: !97)
!2199 = !DILocalVariable(name: "j", scope: !2200, file: !448, line: 648, type: !97)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !448, line: 648, column: 29)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !448, line: 647, column: 27)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !448, line: 645, column: 29)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 636, column: 23)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !448, line: 628, column: 30)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !448, line: 623, column: 30)
!2206 = distinct !DILexicalBlock(scope: !2195, file: !448, line: 621, column: 25)
!2207 = !DILocalVariable(name: "ilim", scope: !2208, file: !448, line: 674, type: !97)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !448, line: 671, column: 15)
!2209 = distinct !DILexicalBlock(scope: !2188, file: !448, line: 670, column: 17)
!2210 = !DILabel(scope: !2149, name: "process_input", file: !448, line: 308)
!2211 = !DILabel(scope: !2212, name: "c_and_shell_escape", file: !448, line: 502)
!2212 = distinct !DILexicalBlock(scope: !2189, file: !448, line: 478, column: 9)
!2213 = !DILabel(scope: !2212, name: "c_escape", file: !448, line: 507)
!2214 = !DILabel(scope: !2182, name: "store_escape", file: !448, line: 709)
!2215 = !DILabel(scope: !2182, name: "store_c", file: !448, line: 712)
!2216 = !DILabel(scope: !2149, name: "force_outer_quoting_style", file: !448, line: 753)
!2217 = !DILocation(line: 0, scope: !2149)
!2218 = !DILocation(line: 258, column: 25, scope: !2149)
!2219 = !DILocation(line: 258, column: 36, scope: !2149)
!2220 = !DILocation(line: 265, column: 8, scope: !2149)
!2221 = !DILocation(line: 267, column: 3, scope: !2149)
!2222 = !DILocation(line: 261, column: 10, scope: !2149)
!2223 = !DILocation(line: 262, column: 15, scope: !2149)
!2224 = !DILocation(line: 263, column: 10, scope: !2149)
!2225 = !DILocation(line: 264, column: 8, scope: !2149)
!2226 = !DILocation(line: 266, column: 8, scope: !2149)
!2227 = !DILocation(line: 267, column: 8, scope: !2149)
!2228 = !DILocation(line: 308, column: 2, scope: !2149)
!2229 = !DILocation(line: 311, column: 3, scope: !2149)
!2230 = !DILocation(line: 318, column: 11, scope: !2178)
!2231 = !DILocation(line: 318, column: 12, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2178, file: !448, line: 318, column: 11)
!2233 = !DILocation(line: 319, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !448, line: 319, column: 9)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !448, line: 319, column: 9)
!2236 = !DILocation(line: 319, column: 9, scope: !2235)
!2237 = !DILocation(line: 0, scope: !526, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 357, column: 26, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !448, line: 335, column: 11)
!2240 = distinct !DILexicalBlock(scope: !2177, file: !448, line: 334, column: 13)
!2241 = !DILocation(line: 199, column: 29, scope: !526, inlinedAt: !2238)
!2242 = !DILocation(line: 201, column: 19, scope: !2243, inlinedAt: !2238)
!2243 = distinct !DILexicalBlock(scope: !526, file: !448, line: 201, column: 7)
!2244 = !DILocation(line: 201, column: 7, scope: !526, inlinedAt: !2238)
!2245 = !DILocation(line: 229, column: 3, scope: !526, inlinedAt: !2238)
!2246 = !DILocation(line: 230, column: 3, scope: !526, inlinedAt: !2238)
!2247 = !DILocation(line: 230, column: 13, scope: !526, inlinedAt: !2238)
!2248 = !DILocalVariable(name: "ps", arg: 1, scope: !2249, file: !1997, line: 1135, type: !2252)
!2249 = distinct !DISubprogram(name: "mbszero", scope: !1997, file: !1997, line: 1135, type: !2250, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2253)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!2253 = !{!2248}
!2254 = !DILocation(line: 0, scope: !2249, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 230, column: 18, scope: !526, inlinedAt: !2238)
!2256 = !DILocalVariable(name: "__dest", arg: 1, scope: !2257, file: !1094, line: 57, type: !94)
!2257 = distinct !DISubprogram(name: "memset", scope: !1094, file: !1094, line: 57, type: !2006, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2258)
!2258 = !{!2256, !2259, !2260}
!2259 = !DILocalVariable(name: "__ch", arg: 2, scope: !2257, file: !1094, line: 57, type: !95)
!2260 = !DILocalVariable(name: "__len", arg: 3, scope: !2257, file: !1094, line: 57, type: !97)
!2261 = !DILocation(line: 0, scope: !2257, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 1137, column: 3, scope: !2249, inlinedAt: !2255)
!2263 = !DILocation(line: 59, column: 10, scope: !2257, inlinedAt: !2262)
!2264 = !DILocation(line: 231, column: 7, scope: !2265, inlinedAt: !2238)
!2265 = distinct !DILexicalBlock(scope: !526, file: !448, line: 231, column: 7)
!2266 = !DILocation(line: 231, column: 40, scope: !2265, inlinedAt: !2238)
!2267 = !DILocation(line: 231, column: 45, scope: !2265, inlinedAt: !2238)
!2268 = !DILocation(line: 235, column: 1, scope: !526, inlinedAt: !2238)
!2269 = !DILocation(line: 0, scope: !526, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 358, column: 27, scope: !2239)
!2271 = !DILocation(line: 199, column: 29, scope: !526, inlinedAt: !2270)
!2272 = !DILocation(line: 201, column: 19, scope: !2243, inlinedAt: !2270)
!2273 = !DILocation(line: 201, column: 7, scope: !526, inlinedAt: !2270)
!2274 = !DILocation(line: 229, column: 3, scope: !526, inlinedAt: !2270)
!2275 = !DILocation(line: 230, column: 3, scope: !526, inlinedAt: !2270)
!2276 = !DILocation(line: 230, column: 13, scope: !526, inlinedAt: !2270)
!2277 = !DILocation(line: 0, scope: !2249, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 230, column: 18, scope: !526, inlinedAt: !2270)
!2279 = !DILocation(line: 0, scope: !2257, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 1137, column: 3, scope: !2249, inlinedAt: !2278)
!2281 = !DILocation(line: 59, column: 10, scope: !2257, inlinedAt: !2280)
!2282 = !DILocation(line: 231, column: 7, scope: !2265, inlinedAt: !2270)
!2283 = !DILocation(line: 231, column: 40, scope: !2265, inlinedAt: !2270)
!2284 = !DILocation(line: 231, column: 45, scope: !2265, inlinedAt: !2270)
!2285 = !DILocation(line: 235, column: 1, scope: !526, inlinedAt: !2270)
!2286 = !DILocation(line: 360, column: 14, scope: !2176)
!2287 = !DILocation(line: 360, column: 13, scope: !2177)
!2288 = !DILocation(line: 0, scope: !2175)
!2289 = !DILocation(line: 361, column: 45, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2175, file: !448, line: 361, column: 11)
!2291 = !DILocation(line: 361, column: 11, scope: !2175)
!2292 = !DILocation(line: 362, column: 13, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !448, line: 362, column: 13)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !448, line: 362, column: 13)
!2295 = !DILocation(line: 362, column: 13, scope: !2294)
!2296 = !DILocation(line: 361, column: 52, scope: !2290)
!2297 = distinct !{!2297, !2291, !2298, !921}
!2298 = !DILocation(line: 362, column: 13, scope: !2175)
!2299 = !DILocation(line: 260, column: 10, scope: !2149)
!2300 = !DILocation(line: 365, column: 28, scope: !2177)
!2301 = !DILocation(line: 367, column: 7, scope: !2178)
!2302 = !DILocation(line: 370, column: 7, scope: !2178)
!2303 = !DILocation(line: 373, column: 7, scope: !2178)
!2304 = !DILocation(line: 376, column: 12, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2178, file: !448, line: 376, column: 11)
!2306 = !DILocation(line: 376, column: 11, scope: !2178)
!2307 = !DILocation(line: 381, column: 12, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2178, file: !448, line: 381, column: 11)
!2309 = !DILocation(line: 381, column: 11, scope: !2178)
!2310 = !DILocation(line: 382, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !448, line: 382, column: 9)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !448, line: 382, column: 9)
!2313 = !DILocation(line: 382, column: 9, scope: !2312)
!2314 = !DILocation(line: 389, column: 7, scope: !2178)
!2315 = !DILocation(line: 392, column: 7, scope: !2178)
!2316 = !DILocation(line: 0, scope: !2180)
!2317 = !DILocation(line: 395, column: 8, scope: !2180)
!2318 = !DILocation(line: 309, column: 8, scope: !2149)
!2319 = !DILocation(line: 395, scope: !2180)
!2320 = !DILocation(line: 395, column: 34, scope: !2183)
!2321 = !DILocation(line: 395, column: 26, scope: !2183)
!2322 = !DILocation(line: 395, column: 48, scope: !2183)
!2323 = !DILocation(line: 395, column: 55, scope: !2183)
!2324 = !DILocation(line: 395, column: 3, scope: !2180)
!2325 = !DILocation(line: 395, column: 67, scope: !2183)
!2326 = !DILocation(line: 0, scope: !2182)
!2327 = !DILocation(line: 402, column: 11, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2182, file: !448, line: 401, column: 11)
!2329 = !DILocation(line: 404, column: 17, scope: !2328)
!2330 = !DILocation(line: 405, column: 39, scope: !2328)
!2331 = !DILocation(line: 409, column: 32, scope: !2328)
!2332 = !DILocation(line: 405, column: 19, scope: !2328)
!2333 = !DILocation(line: 405, column: 15, scope: !2328)
!2334 = !DILocation(line: 410, column: 11, scope: !2328)
!2335 = !DILocation(line: 410, column: 25, scope: !2328)
!2336 = !DILocalVariable(name: "__s1", arg: 1, scope: !2337, file: !887, line: 974, type: !1023)
!2337 = distinct !DISubprogram(name: "memeq", scope: !887, file: !887, line: 974, type: !1967, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2338)
!2338 = !{!2336, !2339, !2340}
!2339 = !DILocalVariable(name: "__s2", arg: 2, scope: !2337, file: !887, line: 974, type: !1023)
!2340 = !DILocalVariable(name: "__n", arg: 3, scope: !2337, file: !887, line: 974, type: !97)
!2341 = !DILocation(line: 0, scope: !2337, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 410, column: 14, scope: !2328)
!2343 = !DILocation(line: 976, column: 11, scope: !2337, inlinedAt: !2342)
!2344 = !DILocation(line: 976, column: 10, scope: !2337, inlinedAt: !2342)
!2345 = !DILocation(line: 401, column: 11, scope: !2182)
!2346 = !DILocation(line: 417, column: 25, scope: !2182)
!2347 = !DILocation(line: 418, column: 7, scope: !2182)
!2348 = !DILocation(line: 421, column: 15, scope: !2189)
!2349 = !DILocation(line: 423, column: 15, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !448, line: 423, column: 15)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !448, line: 422, column: 13)
!2352 = distinct !DILexicalBlock(scope: !2189, file: !448, line: 421, column: 15)
!2353 = !DILocation(line: 423, column: 15, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !448, line: 423, column: 15)
!2355 = !DILocation(line: 423, column: 15, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !448, line: 423, column: 15)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !448, line: 423, column: 15)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !448, line: 423, column: 15)
!2359 = !DILocation(line: 423, column: 15, scope: !2357)
!2360 = !DILocation(line: 423, column: 15, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !448, line: 423, column: 15)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !448, line: 423, column: 15)
!2363 = !DILocation(line: 423, column: 15, scope: !2362)
!2364 = !DILocation(line: 423, column: 15, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !448, line: 423, column: 15)
!2366 = distinct !DILexicalBlock(scope: !2358, file: !448, line: 423, column: 15)
!2367 = !DILocation(line: 423, column: 15, scope: !2366)
!2368 = !DILocation(line: 423, column: 15, scope: !2358)
!2369 = !DILocation(line: 423, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !448, line: 423, column: 15)
!2371 = distinct !DILexicalBlock(scope: !2350, file: !448, line: 423, column: 15)
!2372 = !DILocation(line: 423, column: 15, scope: !2371)
!2373 = !DILocation(line: 431, column: 19, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2351, file: !448, line: 430, column: 19)
!2375 = !DILocation(line: 431, column: 24, scope: !2374)
!2376 = !DILocation(line: 431, column: 28, scope: !2374)
!2377 = !DILocation(line: 431, column: 38, scope: !2374)
!2378 = !DILocation(line: 431, column: 48, scope: !2374)
!2379 = !DILocation(line: 431, column: 59, scope: !2374)
!2380 = !DILocation(line: 433, column: 19, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !448, line: 433, column: 19)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !448, line: 433, column: 19)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !448, line: 432, column: 17)
!2384 = !DILocation(line: 433, column: 19, scope: !2382)
!2385 = !DILocation(line: 434, column: 19, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !448, line: 434, column: 19)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !448, line: 434, column: 19)
!2388 = !DILocation(line: 434, column: 19, scope: !2387)
!2389 = !DILocation(line: 435, column: 17, scope: !2383)
!2390 = !DILocation(line: 442, column: 20, scope: !2352)
!2391 = !DILocation(line: 447, column: 11, scope: !2189)
!2392 = !DILocation(line: 450, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2189, file: !448, line: 448, column: 13)
!2394 = !DILocation(line: 456, column: 19, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2393, file: !448, line: 455, column: 19)
!2396 = !DILocation(line: 456, column: 24, scope: !2395)
!2397 = !DILocation(line: 456, column: 28, scope: !2395)
!2398 = !DILocation(line: 456, column: 38, scope: !2395)
!2399 = !DILocation(line: 456, column: 47, scope: !2395)
!2400 = !DILocation(line: 456, column: 41, scope: !2395)
!2401 = !DILocation(line: 456, column: 52, scope: !2395)
!2402 = !DILocation(line: 455, column: 19, scope: !2393)
!2403 = !DILocation(line: 457, column: 25, scope: !2395)
!2404 = !DILocation(line: 457, column: 17, scope: !2395)
!2405 = !DILocation(line: 464, column: 25, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2395, file: !448, line: 458, column: 19)
!2407 = !DILocation(line: 468, column: 21, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !448, line: 468, column: 21)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !448, line: 468, column: 21)
!2410 = !DILocation(line: 468, column: 21, scope: !2409)
!2411 = !DILocation(line: 469, column: 21, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !448, line: 469, column: 21)
!2413 = distinct !DILexicalBlock(scope: !2406, file: !448, line: 469, column: 21)
!2414 = !DILocation(line: 469, column: 21, scope: !2413)
!2415 = !DILocation(line: 470, column: 21, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !448, line: 470, column: 21)
!2417 = distinct !DILexicalBlock(scope: !2406, file: !448, line: 470, column: 21)
!2418 = !DILocation(line: 470, column: 21, scope: !2417)
!2419 = !DILocation(line: 471, column: 21, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !448, line: 471, column: 21)
!2421 = distinct !DILexicalBlock(scope: !2406, file: !448, line: 471, column: 21)
!2422 = !DILocation(line: 471, column: 21, scope: !2421)
!2423 = !DILocation(line: 472, column: 21, scope: !2406)
!2424 = !DILocation(line: 482, column: 33, scope: !2212)
!2425 = !DILocation(line: 483, column: 33, scope: !2212)
!2426 = !DILocation(line: 485, column: 33, scope: !2212)
!2427 = !DILocation(line: 486, column: 33, scope: !2212)
!2428 = !DILocation(line: 487, column: 33, scope: !2212)
!2429 = !DILocation(line: 490, column: 17, scope: !2212)
!2430 = !DILocation(line: 492, column: 21, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !448, line: 491, column: 15)
!2432 = distinct !DILexicalBlock(scope: !2212, file: !448, line: 490, column: 17)
!2433 = !DILocation(line: 499, column: 35, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2212, file: !448, line: 499, column: 17)
!2435 = !DILocation(line: 499, column: 57, scope: !2434)
!2436 = !DILocation(line: 0, scope: !2212)
!2437 = !DILocation(line: 502, column: 11, scope: !2212)
!2438 = !DILocation(line: 504, column: 17, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2212, file: !448, line: 503, column: 17)
!2440 = !DILocation(line: 507, column: 11, scope: !2212)
!2441 = !DILocation(line: 508, column: 17, scope: !2212)
!2442 = !DILocation(line: 517, column: 15, scope: !2189)
!2443 = !DILocation(line: 517, column: 40, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2189, file: !448, line: 517, column: 15)
!2445 = !DILocation(line: 517, column: 47, scope: !2444)
!2446 = !DILocation(line: 517, column: 18, scope: !2444)
!2447 = !DILocation(line: 521, column: 17, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2189, file: !448, line: 521, column: 15)
!2449 = !DILocation(line: 521, column: 15, scope: !2189)
!2450 = !DILocation(line: 525, column: 11, scope: !2189)
!2451 = !DILocation(line: 537, column: 15, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2189, file: !448, line: 536, column: 15)
!2453 = !DILocation(line: 544, column: 15, scope: !2189)
!2454 = !DILocation(line: 546, column: 19, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !448, line: 545, column: 13)
!2456 = distinct !DILexicalBlock(scope: !2189, file: !448, line: 544, column: 15)
!2457 = !DILocation(line: 549, column: 19, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2455, file: !448, line: 549, column: 19)
!2459 = !DILocation(line: 549, column: 30, scope: !2458)
!2460 = !DILocation(line: 558, column: 15, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !448, line: 558, column: 15)
!2462 = distinct !DILexicalBlock(scope: !2455, file: !448, line: 558, column: 15)
!2463 = !DILocation(line: 558, column: 15, scope: !2462)
!2464 = !DILocation(line: 559, column: 15, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !448, line: 559, column: 15)
!2466 = distinct !DILexicalBlock(scope: !2455, file: !448, line: 559, column: 15)
!2467 = !DILocation(line: 559, column: 15, scope: !2466)
!2468 = !DILocation(line: 560, column: 15, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !448, line: 560, column: 15)
!2470 = distinct !DILexicalBlock(scope: !2455, file: !448, line: 560, column: 15)
!2471 = !DILocation(line: 560, column: 15, scope: !2470)
!2472 = !DILocation(line: 562, column: 13, scope: !2455)
!2473 = !DILocation(line: 602, column: 17, scope: !2188)
!2474 = !DILocation(line: 0, scope: !2188)
!2475 = !DILocation(line: 605, column: 29, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2193, file: !448, line: 603, column: 15)
!2477 = !DILocation(line: 605, column: 27, scope: !2476)
!2478 = !DILocation(line: 668, column: 40, scope: !2188)
!2479 = !DILocation(line: 670, column: 23, scope: !2209)
!2480 = !DILocation(line: 609, column: 17, scope: !2192)
!2481 = !DILocation(line: 609, column: 27, scope: !2192)
!2482 = !DILocation(line: 0, scope: !2249, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 609, column: 32, scope: !2192)
!2484 = !DILocation(line: 0, scope: !2257, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 1137, column: 3, scope: !2249, inlinedAt: !2483)
!2486 = !DILocation(line: 59, column: 10, scope: !2257, inlinedAt: !2485)
!2487 = !DILocation(line: 613, column: 29, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2192, file: !448, line: 613, column: 21)
!2489 = !DILocation(line: 613, column: 21, scope: !2192)
!2490 = !DILocation(line: 614, column: 29, scope: !2488)
!2491 = !DILocation(line: 614, column: 19, scope: !2488)
!2492 = !DILocation(line: 618, column: 21, scope: !2195)
!2493 = !DILocation(line: 620, column: 54, scope: !2195)
!2494 = !DILocation(line: 0, scope: !2195)
!2495 = !DILocation(line: 619, column: 36, scope: !2195)
!2496 = !DILocation(line: 621, column: 25, scope: !2195)
!2497 = !DILocation(line: 631, column: 38, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2204, file: !448, line: 629, column: 23)
!2499 = !DILocation(line: 631, column: 48, scope: !2498)
!2500 = !DILocation(line: 665, column: 19, scope: !2196)
!2501 = !DILocation(line: 666, column: 15, scope: !2193)
!2502 = !DILocation(line: 626, column: 25, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2205, file: !448, line: 624, column: 23)
!2504 = !DILocation(line: 631, column: 51, scope: !2498)
!2505 = !DILocation(line: 631, column: 25, scope: !2498)
!2506 = !DILocation(line: 632, column: 28, scope: !2498)
!2507 = !DILocation(line: 631, column: 34, scope: !2498)
!2508 = distinct !{!2508, !2505, !2506, !921}
!2509 = !DILocation(line: 646, column: 29, scope: !2202)
!2510 = !DILocation(line: 0, scope: !2200)
!2511 = !DILocation(line: 649, column: 49, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2200, file: !448, line: 648, column: 29)
!2513 = !DILocation(line: 649, column: 39, scope: !2512)
!2514 = !DILocation(line: 649, column: 31, scope: !2512)
!2515 = !DILocation(line: 648, column: 60, scope: !2512)
!2516 = !DILocation(line: 648, column: 50, scope: !2512)
!2517 = !DILocation(line: 648, column: 29, scope: !2200)
!2518 = distinct !{!2518, !2517, !2519, !921}
!2519 = !DILocation(line: 654, column: 33, scope: !2200)
!2520 = !DILocation(line: 657, column: 43, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2203, file: !448, line: 657, column: 29)
!2522 = !DILocalVariable(name: "wc", arg: 1, scope: !2523, file: !2524, line: 865, type: !2527)
!2523 = distinct !DISubprogram(name: "c32isprint", scope: !2524, file: !2524, line: 865, type: !2525, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2529)
!2524 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!95, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2528, line: 20, baseType: !76)
!2528 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2529 = !{!2522}
!2530 = !DILocation(line: 0, scope: !2523, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 657, column: 31, scope: !2521)
!2532 = !DILocation(line: 871, column: 10, scope: !2523, inlinedAt: !2531)
!2533 = !DILocation(line: 657, column: 31, scope: !2521)
!2534 = !DILocation(line: 657, column: 29, scope: !2203)
!2535 = !DILocation(line: 664, column: 23, scope: !2195)
!2536 = !DILocation(line: 670, column: 19, scope: !2209)
!2537 = !DILocation(line: 670, column: 45, scope: !2209)
!2538 = !DILocation(line: 674, column: 33, scope: !2208)
!2539 = !DILocation(line: 0, scope: !2208)
!2540 = !DILocation(line: 676, column: 17, scope: !2208)
!2541 = !DILocation(line: 398, column: 12, scope: !2182)
!2542 = !DILocation(line: 678, column: 43, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !448, line: 678, column: 25)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !448, line: 677, column: 19)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !448, line: 676, column: 17)
!2546 = distinct !DILexicalBlock(scope: !2208, file: !448, line: 676, column: 17)
!2547 = !DILocation(line: 680, column: 25, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !448, line: 680, column: 25)
!2549 = distinct !DILexicalBlock(scope: !2543, file: !448, line: 679, column: 23)
!2550 = !DILocation(line: 680, column: 25, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !448, line: 680, column: 25)
!2552 = !DILocation(line: 680, column: 25, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !448, line: 680, column: 25)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !448, line: 680, column: 25)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !448, line: 680, column: 25)
!2556 = !DILocation(line: 680, column: 25, scope: !2554)
!2557 = !DILocation(line: 680, column: 25, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !448, line: 680, column: 25)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !448, line: 680, column: 25)
!2560 = !DILocation(line: 680, column: 25, scope: !2559)
!2561 = !DILocation(line: 680, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !448, line: 680, column: 25)
!2563 = distinct !DILexicalBlock(scope: !2555, file: !448, line: 680, column: 25)
!2564 = !DILocation(line: 680, column: 25, scope: !2563)
!2565 = !DILocation(line: 680, column: 25, scope: !2555)
!2566 = !DILocation(line: 680, column: 25, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !448, line: 680, column: 25)
!2568 = distinct !DILexicalBlock(scope: !2548, file: !448, line: 680, column: 25)
!2569 = !DILocation(line: 680, column: 25, scope: !2568)
!2570 = !DILocation(line: 681, column: 25, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !448, line: 681, column: 25)
!2572 = distinct !DILexicalBlock(scope: !2549, file: !448, line: 681, column: 25)
!2573 = !DILocation(line: 681, column: 25, scope: !2572)
!2574 = !DILocation(line: 682, column: 25, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !448, line: 682, column: 25)
!2576 = distinct !DILexicalBlock(scope: !2549, file: !448, line: 682, column: 25)
!2577 = !DILocation(line: 682, column: 25, scope: !2576)
!2578 = !DILocation(line: 683, column: 38, scope: !2549)
!2579 = !DILocation(line: 683, column: 33, scope: !2549)
!2580 = !DILocation(line: 684, column: 23, scope: !2549)
!2581 = !DILocation(line: 685, column: 30, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2543, file: !448, line: 685, column: 30)
!2583 = !DILocation(line: 685, column: 30, scope: !2543)
!2584 = !DILocation(line: 687, column: 25, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !448, line: 687, column: 25)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !448, line: 687, column: 25)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !448, line: 686, column: 23)
!2588 = !DILocation(line: 687, column: 25, scope: !2586)
!2589 = !DILocation(line: 689, column: 23, scope: !2587)
!2590 = !DILocation(line: 690, column: 35, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2544, file: !448, line: 690, column: 25)
!2592 = !DILocation(line: 690, column: 30, scope: !2591)
!2593 = !DILocation(line: 690, column: 25, scope: !2544)
!2594 = !DILocation(line: 692, column: 21, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !448, line: 692, column: 21)
!2596 = distinct !DILexicalBlock(scope: !2544, file: !448, line: 692, column: 21)
!2597 = !DILocation(line: 692, column: 21, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !448, line: 692, column: 21)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !448, line: 692, column: 21)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !448, line: 692, column: 21)
!2601 = !DILocation(line: 692, column: 21, scope: !2599)
!2602 = !DILocation(line: 692, column: 21, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !448, line: 692, column: 21)
!2604 = distinct !DILexicalBlock(scope: !2600, file: !448, line: 692, column: 21)
!2605 = !DILocation(line: 692, column: 21, scope: !2604)
!2606 = !DILocation(line: 692, column: 21, scope: !2600)
!2607 = !DILocation(line: 0, scope: !2544)
!2608 = !DILocation(line: 693, column: 21, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !448, line: 693, column: 21)
!2610 = distinct !DILexicalBlock(scope: !2544, file: !448, line: 693, column: 21)
!2611 = !DILocation(line: 693, column: 21, scope: !2610)
!2612 = !DILocation(line: 694, column: 25, scope: !2544)
!2613 = !DILocation(line: 676, column: 17, scope: !2545)
!2614 = distinct !{!2614, !2615, !2616}
!2615 = !DILocation(line: 676, column: 17, scope: !2546)
!2616 = !DILocation(line: 695, column: 19, scope: !2546)
!2617 = !DILocation(line: 409, column: 30, scope: !2328)
!2618 = !DILocation(line: 702, column: 34, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2182, file: !448, line: 702, column: 11)
!2620 = !DILocation(line: 704, column: 14, scope: !2619)
!2621 = !DILocation(line: 705, column: 14, scope: !2619)
!2622 = !DILocation(line: 705, column: 35, scope: !2619)
!2623 = !DILocation(line: 705, column: 17, scope: !2619)
!2624 = !DILocation(line: 705, column: 47, scope: !2619)
!2625 = !DILocation(line: 705, column: 65, scope: !2619)
!2626 = !DILocation(line: 706, column: 11, scope: !2619)
!2627 = !DILocation(line: 702, column: 11, scope: !2182)
!2628 = !DILocation(line: 395, column: 15, scope: !2180)
!2629 = !DILocation(line: 709, column: 5, scope: !2182)
!2630 = !DILocation(line: 710, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2182, file: !448, line: 710, column: 7)
!2632 = !DILocation(line: 710, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2631, file: !448, line: 710, column: 7)
!2634 = !DILocation(line: 710, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !448, line: 710, column: 7)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !448, line: 710, column: 7)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !448, line: 710, column: 7)
!2638 = !DILocation(line: 710, column: 7, scope: !2636)
!2639 = !DILocation(line: 710, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !448, line: 710, column: 7)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !448, line: 710, column: 7)
!2642 = !DILocation(line: 710, column: 7, scope: !2641)
!2643 = !DILocation(line: 710, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !448, line: 710, column: 7)
!2645 = distinct !DILexicalBlock(scope: !2637, file: !448, line: 710, column: 7)
!2646 = !DILocation(line: 710, column: 7, scope: !2645)
!2647 = !DILocation(line: 710, column: 7, scope: !2637)
!2648 = !DILocation(line: 710, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !448, line: 710, column: 7)
!2650 = distinct !DILexicalBlock(scope: !2631, file: !448, line: 710, column: 7)
!2651 = !DILocation(line: 710, column: 7, scope: !2650)
!2652 = !DILocation(line: 712, column: 5, scope: !2182)
!2653 = !DILocation(line: 713, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !448, line: 713, column: 7)
!2655 = distinct !DILexicalBlock(scope: !2182, file: !448, line: 713, column: 7)
!2656 = !DILocation(line: 417, column: 21, scope: !2182)
!2657 = !DILocation(line: 713, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !448, line: 713, column: 7)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !448, line: 713, column: 7)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !448, line: 713, column: 7)
!2661 = !DILocation(line: 713, column: 7, scope: !2659)
!2662 = !DILocation(line: 713, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !448, line: 713, column: 7)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !448, line: 713, column: 7)
!2665 = !DILocation(line: 713, column: 7, scope: !2664)
!2666 = !DILocation(line: 713, column: 7, scope: !2660)
!2667 = !DILocation(line: 714, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !448, line: 714, column: 7)
!2669 = distinct !DILexicalBlock(scope: !2182, file: !448, line: 714, column: 7)
!2670 = !DILocation(line: 714, column: 7, scope: !2669)
!2671 = !DILocation(line: 716, column: 13, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2182, file: !448, line: 716, column: 11)
!2673 = !DILocation(line: 716, column: 11, scope: !2182)
!2674 = !DILocation(line: 718, column: 5, scope: !2183)
!2675 = !DILocation(line: 395, column: 82, scope: !2183)
!2676 = !DILocation(line: 395, column: 3, scope: !2183)
!2677 = distinct !{!2677, !2324, !2678, !921}
!2678 = !DILocation(line: 718, column: 5, scope: !2180)
!2679 = !DILocation(line: 720, column: 11, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2149, file: !448, line: 720, column: 7)
!2681 = !DILocation(line: 720, column: 16, scope: !2680)
!2682 = !DILocation(line: 728, column: 51, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2149, file: !448, line: 728, column: 7)
!2684 = !DILocation(line: 731, column: 11, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !448, line: 731, column: 11)
!2686 = distinct !DILexicalBlock(scope: !2683, file: !448, line: 730, column: 5)
!2687 = !DILocation(line: 731, column: 11, scope: !2686)
!2688 = !DILocation(line: 732, column: 16, scope: !2685)
!2689 = !DILocation(line: 732, column: 9, scope: !2685)
!2690 = !DILocation(line: 736, column: 18, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2685, file: !448, line: 736, column: 16)
!2692 = !DILocation(line: 736, column: 29, scope: !2691)
!2693 = !DILocation(line: 745, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2149, file: !448, line: 745, column: 7)
!2695 = !DILocation(line: 745, column: 20, scope: !2694)
!2696 = !DILocation(line: 746, column: 12, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !448, line: 746, column: 5)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !448, line: 746, column: 5)
!2699 = !DILocation(line: 746, column: 5, scope: !2698)
!2700 = !DILocation(line: 747, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !448, line: 747, column: 7)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !448, line: 747, column: 7)
!2703 = !DILocation(line: 747, column: 7, scope: !2702)
!2704 = !DILocation(line: 746, column: 39, scope: !2697)
!2705 = distinct !{!2705, !2699, !2706, !921}
!2706 = !DILocation(line: 747, column: 7, scope: !2698)
!2707 = !DILocation(line: 749, column: 11, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2149, file: !448, line: 749, column: 7)
!2709 = !DILocation(line: 749, column: 7, scope: !2149)
!2710 = !DILocation(line: 750, column: 5, scope: !2708)
!2711 = !DILocation(line: 750, column: 17, scope: !2708)
!2712 = !DILocation(line: 753, column: 2, scope: !2149)
!2713 = !DILocation(line: 756, column: 51, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2149, file: !448, line: 756, column: 7)
!2715 = !DILocation(line: 756, column: 21, scope: !2714)
!2716 = !DILocation(line: 760, column: 42, scope: !2149)
!2717 = !DILocation(line: 758, column: 10, scope: !2149)
!2718 = !DILocation(line: 758, column: 3, scope: !2149)
!2719 = !DILocation(line: 762, column: 1, scope: !2149)
!2720 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !999, file: !999, line: 98, type: !2721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!2721 = !DISubroutineType(types: !728)
!2722 = !DISubprogram(name: "iswprint", scope: !2723, file: !2723, line: 120, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!2723 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2724 = distinct !DISubprogram(name: "quotearg_alloc", scope: !448, file: !448, line: 788, type: !2725, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!101, !70, !97, !2042}
!2727 = !{!2728, !2729, !2730}
!2728 = !DILocalVariable(name: "arg", arg: 1, scope: !2724, file: !448, line: 788, type: !70)
!2729 = !DILocalVariable(name: "argsize", arg: 2, scope: !2724, file: !448, line: 788, type: !97)
!2730 = !DILocalVariable(name: "o", arg: 3, scope: !2724, file: !448, line: 789, type: !2042)
!2731 = !DILocation(line: 0, scope: !2724)
!2732 = !DILocalVariable(name: "arg", arg: 1, scope: !2733, file: !448, line: 801, type: !70)
!2733 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !448, file: !448, line: 801, type: !2734, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!101, !70, !97, !743, !2042}
!2736 = !{!2732, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!2737 = !DILocalVariable(name: "argsize", arg: 2, scope: !2733, file: !448, line: 801, type: !97)
!2738 = !DILocalVariable(name: "size", arg: 3, scope: !2733, file: !448, line: 801, type: !743)
!2739 = !DILocalVariable(name: "o", arg: 4, scope: !2733, file: !448, line: 802, type: !2042)
!2740 = !DILocalVariable(name: "p", scope: !2733, file: !448, line: 804, type: !2042)
!2741 = !DILocalVariable(name: "saved_errno", scope: !2733, file: !448, line: 805, type: !95)
!2742 = !DILocalVariable(name: "flags", scope: !2733, file: !448, line: 807, type: !95)
!2743 = !DILocalVariable(name: "bufsize", scope: !2733, file: !448, line: 808, type: !97)
!2744 = !DILocalVariable(name: "buf", scope: !2733, file: !448, line: 812, type: !101)
!2745 = !DILocation(line: 0, scope: !2733, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 791, column: 10, scope: !2724)
!2747 = !DILocation(line: 804, column: 37, scope: !2733, inlinedAt: !2746)
!2748 = !DILocation(line: 805, column: 21, scope: !2733, inlinedAt: !2746)
!2749 = !DILocation(line: 807, column: 18, scope: !2733, inlinedAt: !2746)
!2750 = !DILocation(line: 807, column: 24, scope: !2733, inlinedAt: !2746)
!2751 = !DILocation(line: 808, column: 72, scope: !2733, inlinedAt: !2746)
!2752 = !DILocation(line: 809, column: 56, scope: !2733, inlinedAt: !2746)
!2753 = !DILocation(line: 810, column: 49, scope: !2733, inlinedAt: !2746)
!2754 = !DILocation(line: 811, column: 49, scope: !2733, inlinedAt: !2746)
!2755 = !DILocation(line: 808, column: 20, scope: !2733, inlinedAt: !2746)
!2756 = !DILocation(line: 811, column: 62, scope: !2733, inlinedAt: !2746)
!2757 = !DILocation(line: 812, column: 15, scope: !2733, inlinedAt: !2746)
!2758 = !DILocation(line: 813, column: 60, scope: !2733, inlinedAt: !2746)
!2759 = !DILocation(line: 815, column: 32, scope: !2733, inlinedAt: !2746)
!2760 = !DILocation(line: 815, column: 47, scope: !2733, inlinedAt: !2746)
!2761 = !DILocation(line: 813, column: 3, scope: !2733, inlinedAt: !2746)
!2762 = !DILocation(line: 816, column: 9, scope: !2733, inlinedAt: !2746)
!2763 = !DILocation(line: 791, column: 3, scope: !2724)
!2764 = !DILocation(line: 0, scope: !2733)
!2765 = !DILocation(line: 804, column: 37, scope: !2733)
!2766 = !DILocation(line: 805, column: 21, scope: !2733)
!2767 = !DILocation(line: 807, column: 18, scope: !2733)
!2768 = !DILocation(line: 807, column: 27, scope: !2733)
!2769 = !DILocation(line: 807, column: 24, scope: !2733)
!2770 = !DILocation(line: 808, column: 72, scope: !2733)
!2771 = !DILocation(line: 809, column: 56, scope: !2733)
!2772 = !DILocation(line: 810, column: 49, scope: !2733)
!2773 = !DILocation(line: 811, column: 49, scope: !2733)
!2774 = !DILocation(line: 808, column: 20, scope: !2733)
!2775 = !DILocation(line: 811, column: 62, scope: !2733)
!2776 = !DILocation(line: 812, column: 15, scope: !2733)
!2777 = !DILocation(line: 813, column: 60, scope: !2733)
!2778 = !DILocation(line: 815, column: 32, scope: !2733)
!2779 = !DILocation(line: 815, column: 47, scope: !2733)
!2780 = !DILocation(line: 813, column: 3, scope: !2733)
!2781 = !DILocation(line: 816, column: 9, scope: !2733)
!2782 = !DILocation(line: 817, column: 7, scope: !2733)
!2783 = !DILocation(line: 818, column: 11, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2733, file: !448, line: 817, column: 7)
!2785 = !{!1253, !1253, i64 0}
!2786 = !DILocation(line: 818, column: 5, scope: !2784)
!2787 = !DILocation(line: 819, column: 3, scope: !2733)
!2788 = distinct !DISubprogram(name: "quotearg_free", scope: !448, file: !448, line: 837, type: !362, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2789)
!2789 = !{!2790, !2791}
!2790 = !DILocalVariable(name: "sv", scope: !2788, file: !448, line: 839, type: !549)
!2791 = !DILocalVariable(name: "i", scope: !2792, file: !448, line: 840, type: !95)
!2792 = distinct !DILexicalBlock(scope: !2788, file: !448, line: 840, column: 3)
!2793 = !DILocation(line: 839, column: 24, scope: !2788)
!2794 = !DILocation(line: 0, scope: !2788)
!2795 = !DILocation(line: 0, scope: !2792)
!2796 = !DILocation(line: 840, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !448, line: 840, column: 3)
!2798 = !DILocation(line: 840, column: 3, scope: !2792)
!2799 = !DILocation(line: 842, column: 13, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2788, file: !448, line: 842, column: 7)
!2801 = !{!2802, !814, i64 8}
!2802 = !{!"slotvec", !1253, i64 0, !814, i64 8}
!2803 = !DILocation(line: 842, column: 17, scope: !2800)
!2804 = !DILocation(line: 842, column: 7, scope: !2788)
!2805 = !DILocation(line: 841, column: 17, scope: !2797)
!2806 = !DILocation(line: 841, column: 5, scope: !2797)
!2807 = !DILocation(line: 840, column: 32, scope: !2797)
!2808 = distinct !{!2808, !2798, !2809, !921}
!2809 = !DILocation(line: 841, column: 20, scope: !2792)
!2810 = !DILocation(line: 844, column: 7, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2800, file: !448, line: 843, column: 5)
!2812 = !DILocation(line: 845, column: 21, scope: !2811)
!2813 = !{!2802, !1253, i64 0}
!2814 = !DILocation(line: 846, column: 20, scope: !2811)
!2815 = !DILocation(line: 847, column: 5, scope: !2811)
!2816 = !DILocation(line: 848, column: 10, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2788, file: !448, line: 848, column: 7)
!2818 = !DILocation(line: 848, column: 7, scope: !2788)
!2819 = !DILocation(line: 850, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2817, file: !448, line: 849, column: 5)
!2821 = !DILocation(line: 851, column: 15, scope: !2820)
!2822 = !DILocation(line: 852, column: 5, scope: !2820)
!2823 = !DILocation(line: 853, column: 10, scope: !2788)
!2824 = !DILocation(line: 854, column: 1, scope: !2788)
!2825 = distinct !DISubprogram(name: "quotearg_n", scope: !448, file: !448, line: 919, type: !992, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2826)
!2826 = !{!2827, !2828}
!2827 = !DILocalVariable(name: "n", arg: 1, scope: !2825, file: !448, line: 919, type: !95)
!2828 = !DILocalVariable(name: "arg", arg: 2, scope: !2825, file: !448, line: 919, type: !70)
!2829 = !DILocation(line: 0, scope: !2825)
!2830 = !DILocation(line: 921, column: 10, scope: !2825)
!2831 = !DILocation(line: 921, column: 3, scope: !2825)
!2832 = distinct !DISubprogram(name: "quotearg_n_options", scope: !448, file: !448, line: 866, type: !2833, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!101, !95, !70, !97, !2042}
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2846, !2847, !2849, !2850, !2851}
!2836 = !DILocalVariable(name: "n", arg: 1, scope: !2832, file: !448, line: 866, type: !95)
!2837 = !DILocalVariable(name: "arg", arg: 2, scope: !2832, file: !448, line: 866, type: !70)
!2838 = !DILocalVariable(name: "argsize", arg: 3, scope: !2832, file: !448, line: 866, type: !97)
!2839 = !DILocalVariable(name: "options", arg: 4, scope: !2832, file: !448, line: 867, type: !2042)
!2840 = !DILocalVariable(name: "saved_errno", scope: !2832, file: !448, line: 869, type: !95)
!2841 = !DILocalVariable(name: "sv", scope: !2832, file: !448, line: 871, type: !549)
!2842 = !DILocalVariable(name: "nslots_max", scope: !2832, file: !448, line: 873, type: !95)
!2843 = !DILocalVariable(name: "preallocated", scope: !2844, file: !448, line: 879, type: !219)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !448, line: 878, column: 5)
!2845 = distinct !DILexicalBlock(scope: !2832, file: !448, line: 877, column: 7)
!2846 = !DILocalVariable(name: "new_nslots", scope: !2844, file: !448, line: 880, type: !756)
!2847 = !DILocalVariable(name: "size", scope: !2848, file: !448, line: 891, type: !97)
!2848 = distinct !DILexicalBlock(scope: !2832, file: !448, line: 890, column: 3)
!2849 = !DILocalVariable(name: "val", scope: !2848, file: !448, line: 892, type: !101)
!2850 = !DILocalVariable(name: "flags", scope: !2848, file: !448, line: 894, type: !95)
!2851 = !DILocalVariable(name: "qsize", scope: !2848, file: !448, line: 895, type: !97)
!2852 = !DILocation(line: 0, scope: !2832)
!2853 = !DILocation(line: 869, column: 21, scope: !2832)
!2854 = !DILocation(line: 871, column: 24, scope: !2832)
!2855 = !DILocation(line: 874, column: 17, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2832, file: !448, line: 874, column: 7)
!2857 = !DILocation(line: 875, column: 5, scope: !2856)
!2858 = !DILocation(line: 877, column: 7, scope: !2845)
!2859 = !DILocation(line: 877, column: 14, scope: !2845)
!2860 = !DILocation(line: 877, column: 7, scope: !2832)
!2861 = !DILocation(line: 879, column: 31, scope: !2844)
!2862 = !DILocation(line: 0, scope: !2844)
!2863 = !DILocation(line: 880, column: 7, scope: !2844)
!2864 = !DILocation(line: 880, column: 26, scope: !2844)
!2865 = !DILocation(line: 880, column: 13, scope: !2844)
!2866 = !DILocation(line: 882, column: 31, scope: !2844)
!2867 = !DILocation(line: 883, column: 33, scope: !2844)
!2868 = !DILocation(line: 883, column: 42, scope: !2844)
!2869 = !DILocation(line: 883, column: 31, scope: !2844)
!2870 = !DILocation(line: 882, column: 22, scope: !2844)
!2871 = !DILocation(line: 882, column: 15, scope: !2844)
!2872 = !DILocation(line: 884, column: 11, scope: !2844)
!2873 = !DILocation(line: 885, column: 15, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2844, file: !448, line: 884, column: 11)
!2875 = !{i64 0, i64 8, !2785, i64 8, i64 8, !813}
!2876 = !DILocation(line: 885, column: 9, scope: !2874)
!2877 = !DILocation(line: 886, column: 20, scope: !2844)
!2878 = !DILocation(line: 886, column: 18, scope: !2844)
!2879 = !DILocation(line: 886, column: 32, scope: !2844)
!2880 = !DILocation(line: 886, column: 43, scope: !2844)
!2881 = !DILocation(line: 886, column: 53, scope: !2844)
!2882 = !DILocation(line: 0, scope: !2257, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 886, column: 7, scope: !2844)
!2884 = !DILocation(line: 59, column: 10, scope: !2257, inlinedAt: !2883)
!2885 = !DILocation(line: 887, column: 16, scope: !2844)
!2886 = !DILocation(line: 887, column: 14, scope: !2844)
!2887 = !DILocation(line: 888, column: 5, scope: !2845)
!2888 = !DILocation(line: 888, column: 5, scope: !2844)
!2889 = !DILocation(line: 891, column: 19, scope: !2848)
!2890 = !DILocation(line: 891, column: 25, scope: !2848)
!2891 = !DILocation(line: 0, scope: !2848)
!2892 = !DILocation(line: 892, column: 23, scope: !2848)
!2893 = !DILocation(line: 894, column: 26, scope: !2848)
!2894 = !DILocation(line: 894, column: 32, scope: !2848)
!2895 = !DILocation(line: 896, column: 55, scope: !2848)
!2896 = !DILocation(line: 897, column: 55, scope: !2848)
!2897 = !DILocation(line: 898, column: 55, scope: !2848)
!2898 = !DILocation(line: 899, column: 55, scope: !2848)
!2899 = !DILocation(line: 895, column: 20, scope: !2848)
!2900 = !DILocation(line: 901, column: 14, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2848, file: !448, line: 901, column: 9)
!2902 = !DILocation(line: 901, column: 9, scope: !2848)
!2903 = !DILocation(line: 903, column: 35, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2901, file: !448, line: 902, column: 7)
!2905 = !DILocation(line: 903, column: 20, scope: !2904)
!2906 = !DILocation(line: 904, column: 17, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !448, line: 904, column: 13)
!2908 = !DILocation(line: 904, column: 13, scope: !2904)
!2909 = !DILocation(line: 905, column: 11, scope: !2907)
!2910 = !DILocation(line: 906, column: 27, scope: !2904)
!2911 = !DILocation(line: 906, column: 19, scope: !2904)
!2912 = !DILocation(line: 907, column: 69, scope: !2904)
!2913 = !DILocation(line: 909, column: 44, scope: !2904)
!2914 = !DILocation(line: 910, column: 44, scope: !2904)
!2915 = !DILocation(line: 907, column: 9, scope: !2904)
!2916 = !DILocation(line: 911, column: 7, scope: !2904)
!2917 = !DILocation(line: 913, column: 11, scope: !2848)
!2918 = !DILocation(line: 914, column: 5, scope: !2848)
!2919 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !448, file: !448, line: 925, type: !2920, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!101, !95, !70, !97}
!2922 = !{!2923, !2924, !2925}
!2923 = !DILocalVariable(name: "n", arg: 1, scope: !2919, file: !448, line: 925, type: !95)
!2924 = !DILocalVariable(name: "arg", arg: 2, scope: !2919, file: !448, line: 925, type: !70)
!2925 = !DILocalVariable(name: "argsize", arg: 3, scope: !2919, file: !448, line: 925, type: !97)
!2926 = !DILocation(line: 0, scope: !2919)
!2927 = !DILocation(line: 927, column: 10, scope: !2919)
!2928 = !DILocation(line: 927, column: 3, scope: !2919)
!2929 = distinct !DISubprogram(name: "quotearg", scope: !448, file: !448, line: 931, type: !1001, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2930)
!2930 = !{!2931}
!2931 = !DILocalVariable(name: "arg", arg: 1, scope: !2929, file: !448, line: 931, type: !70)
!2932 = !DILocation(line: 0, scope: !2929)
!2933 = !DILocation(line: 0, scope: !2825, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 933, column: 10, scope: !2929)
!2935 = !DILocation(line: 921, column: 10, scope: !2825, inlinedAt: !2934)
!2936 = !DILocation(line: 933, column: 3, scope: !2929)
!2937 = distinct !DISubprogram(name: "quotearg_mem", scope: !448, file: !448, line: 937, type: !2938, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!101, !70, !97}
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "arg", arg: 1, scope: !2937, file: !448, line: 937, type: !70)
!2942 = !DILocalVariable(name: "argsize", arg: 2, scope: !2937, file: !448, line: 937, type: !97)
!2943 = !DILocation(line: 0, scope: !2937)
!2944 = !DILocation(line: 0, scope: !2919, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 939, column: 10, scope: !2937)
!2946 = !DILocation(line: 927, column: 10, scope: !2919, inlinedAt: !2945)
!2947 = !DILocation(line: 939, column: 3, scope: !2937)
!2948 = distinct !DISubprogram(name: "quotearg_n_style", scope: !448, file: !448, line: 943, type: !2949, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!101, !95, !474, !70}
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DILocalVariable(name: "n", arg: 1, scope: !2948, file: !448, line: 943, type: !95)
!2953 = !DILocalVariable(name: "s", arg: 2, scope: !2948, file: !448, line: 943, type: !474)
!2954 = !DILocalVariable(name: "arg", arg: 3, scope: !2948, file: !448, line: 943, type: !70)
!2955 = !DILocalVariable(name: "o", scope: !2948, file: !448, line: 945, type: !2043)
!2956 = !DILocation(line: 0, scope: !2948)
!2957 = !DILocation(line: 945, column: 3, scope: !2948)
!2958 = !DILocation(line: 945, column: 32, scope: !2948)
!2959 = !{!2960}
!2960 = distinct !{!2960, !2961, !"quoting_options_from_style: argument 0"}
!2961 = distinct !{!2961, !"quoting_options_from_style"}
!2962 = !DILocation(line: 945, column: 36, scope: !2948)
!2963 = !DILocalVariable(name: "style", arg: 1, scope: !2964, file: !448, line: 183, type: !474)
!2964 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !448, file: !448, line: 183, type: !2965, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!501, !474}
!2967 = !{!2963, !2968}
!2968 = !DILocalVariable(name: "o", scope: !2964, file: !448, line: 185, type: !501)
!2969 = !DILocation(line: 0, scope: !2964, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 945, column: 36, scope: !2948)
!2971 = !DILocation(line: 185, column: 26, scope: !2964, inlinedAt: !2970)
!2972 = !DILocation(line: 186, column: 13, scope: !2973, inlinedAt: !2970)
!2973 = distinct !DILexicalBlock(scope: !2964, file: !448, line: 186, column: 7)
!2974 = !DILocation(line: 186, column: 7, scope: !2964, inlinedAt: !2970)
!2975 = !DILocation(line: 187, column: 5, scope: !2973, inlinedAt: !2970)
!2976 = !DILocation(line: 188, column: 11, scope: !2964, inlinedAt: !2970)
!2977 = !DILocation(line: 946, column: 10, scope: !2948)
!2978 = !DILocation(line: 947, column: 1, scope: !2948)
!2979 = !DILocation(line: 946, column: 3, scope: !2948)
!2980 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !448, file: !448, line: 950, type: !2981, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!101, !95, !474, !70, !97}
!2983 = !{!2984, !2985, !2986, !2987, !2988}
!2984 = !DILocalVariable(name: "n", arg: 1, scope: !2980, file: !448, line: 950, type: !95)
!2985 = !DILocalVariable(name: "s", arg: 2, scope: !2980, file: !448, line: 950, type: !474)
!2986 = !DILocalVariable(name: "arg", arg: 3, scope: !2980, file: !448, line: 951, type: !70)
!2987 = !DILocalVariable(name: "argsize", arg: 4, scope: !2980, file: !448, line: 951, type: !97)
!2988 = !DILocalVariable(name: "o", scope: !2980, file: !448, line: 953, type: !2043)
!2989 = !DILocation(line: 0, scope: !2980)
!2990 = !DILocation(line: 953, column: 3, scope: !2980)
!2991 = !DILocation(line: 953, column: 32, scope: !2980)
!2992 = !{!2993}
!2993 = distinct !{!2993, !2994, !"quoting_options_from_style: argument 0"}
!2994 = distinct !{!2994, !"quoting_options_from_style"}
!2995 = !DILocation(line: 953, column: 36, scope: !2980)
!2996 = !DILocation(line: 0, scope: !2964, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 953, column: 36, scope: !2980)
!2998 = !DILocation(line: 185, column: 26, scope: !2964, inlinedAt: !2997)
!2999 = !DILocation(line: 186, column: 13, scope: !2973, inlinedAt: !2997)
!3000 = !DILocation(line: 186, column: 7, scope: !2964, inlinedAt: !2997)
!3001 = !DILocation(line: 187, column: 5, scope: !2973, inlinedAt: !2997)
!3002 = !DILocation(line: 188, column: 11, scope: !2964, inlinedAt: !2997)
!3003 = !DILocation(line: 954, column: 10, scope: !2980)
!3004 = !DILocation(line: 955, column: 1, scope: !2980)
!3005 = !DILocation(line: 954, column: 3, scope: !2980)
!3006 = distinct !DISubprogram(name: "quotearg_style", scope: !448, file: !448, line: 958, type: !3007, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!101, !474, !70}
!3009 = !{!3010, !3011}
!3010 = !DILocalVariable(name: "s", arg: 1, scope: !3006, file: !448, line: 958, type: !474)
!3011 = !DILocalVariable(name: "arg", arg: 2, scope: !3006, file: !448, line: 958, type: !70)
!3012 = !DILocation(line: 0, scope: !3006)
!3013 = !DILocation(line: 0, scope: !2948, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 960, column: 10, scope: !3006)
!3015 = !DILocation(line: 945, column: 3, scope: !2948, inlinedAt: !3014)
!3016 = !DILocation(line: 945, column: 32, scope: !2948, inlinedAt: !3014)
!3017 = !{!3018}
!3018 = distinct !{!3018, !3019, !"quoting_options_from_style: argument 0"}
!3019 = distinct !{!3019, !"quoting_options_from_style"}
!3020 = !DILocation(line: 945, column: 36, scope: !2948, inlinedAt: !3014)
!3021 = !DILocation(line: 0, scope: !2964, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 945, column: 36, scope: !2948, inlinedAt: !3014)
!3023 = !DILocation(line: 185, column: 26, scope: !2964, inlinedAt: !3022)
!3024 = !DILocation(line: 186, column: 13, scope: !2973, inlinedAt: !3022)
!3025 = !DILocation(line: 186, column: 7, scope: !2964, inlinedAt: !3022)
!3026 = !DILocation(line: 187, column: 5, scope: !2973, inlinedAt: !3022)
!3027 = !DILocation(line: 188, column: 11, scope: !2964, inlinedAt: !3022)
!3028 = !DILocation(line: 946, column: 10, scope: !2948, inlinedAt: !3014)
!3029 = !DILocation(line: 947, column: 1, scope: !2948, inlinedAt: !3014)
!3030 = !DILocation(line: 960, column: 3, scope: !3006)
!3031 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !448, file: !448, line: 964, type: !3032, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!101, !474, !70, !97}
!3034 = !{!3035, !3036, !3037}
!3035 = !DILocalVariable(name: "s", arg: 1, scope: !3031, file: !448, line: 964, type: !474)
!3036 = !DILocalVariable(name: "arg", arg: 2, scope: !3031, file: !448, line: 964, type: !70)
!3037 = !DILocalVariable(name: "argsize", arg: 3, scope: !3031, file: !448, line: 964, type: !97)
!3038 = !DILocation(line: 0, scope: !3031)
!3039 = !DILocation(line: 0, scope: !2980, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 966, column: 10, scope: !3031)
!3041 = !DILocation(line: 953, column: 3, scope: !2980, inlinedAt: !3040)
!3042 = !DILocation(line: 953, column: 32, scope: !2980, inlinedAt: !3040)
!3043 = !{!3044}
!3044 = distinct !{!3044, !3045, !"quoting_options_from_style: argument 0"}
!3045 = distinct !{!3045, !"quoting_options_from_style"}
!3046 = !DILocation(line: 953, column: 36, scope: !2980, inlinedAt: !3040)
!3047 = !DILocation(line: 0, scope: !2964, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 953, column: 36, scope: !2980, inlinedAt: !3040)
!3049 = !DILocation(line: 185, column: 26, scope: !2964, inlinedAt: !3048)
!3050 = !DILocation(line: 186, column: 13, scope: !2973, inlinedAt: !3048)
!3051 = !DILocation(line: 186, column: 7, scope: !2964, inlinedAt: !3048)
!3052 = !DILocation(line: 187, column: 5, scope: !2973, inlinedAt: !3048)
!3053 = !DILocation(line: 188, column: 11, scope: !2964, inlinedAt: !3048)
!3054 = !DILocation(line: 954, column: 10, scope: !2980, inlinedAt: !3040)
!3055 = !DILocation(line: 955, column: 1, scope: !2980, inlinedAt: !3040)
!3056 = !DILocation(line: 966, column: 3, scope: !3031)
!3057 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !448, file: !448, line: 970, type: !3058, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!101, !70, !97, !4}
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DILocalVariable(name: "arg", arg: 1, scope: !3057, file: !448, line: 970, type: !70)
!3062 = !DILocalVariable(name: "argsize", arg: 2, scope: !3057, file: !448, line: 970, type: !97)
!3063 = !DILocalVariable(name: "ch", arg: 3, scope: !3057, file: !448, line: 970, type: !4)
!3064 = !DILocalVariable(name: "options", scope: !3057, file: !448, line: 972, type: !501)
!3065 = !DILocation(line: 0, scope: !3057)
!3066 = !DILocation(line: 972, column: 3, scope: !3057)
!3067 = !DILocation(line: 972, column: 26, scope: !3057)
!3068 = !DILocation(line: 973, column: 13, scope: !3057)
!3069 = !{i64 0, i64 4, !883, i64 4, i64 4, !874, i64 8, i64 32, !883, i64 40, i64 8, !813, i64 48, i64 8, !813}
!3070 = !DILocation(line: 0, scope: !2062, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 974, column: 3, scope: !3057)
!3072 = !DILocation(line: 147, column: 41, scope: !2062, inlinedAt: !3071)
!3073 = !DILocation(line: 147, column: 62, scope: !2062, inlinedAt: !3071)
!3074 = !DILocation(line: 147, column: 57, scope: !2062, inlinedAt: !3071)
!3075 = !DILocation(line: 148, column: 15, scope: !2062, inlinedAt: !3071)
!3076 = !DILocation(line: 149, column: 21, scope: !2062, inlinedAt: !3071)
!3077 = !DILocation(line: 149, column: 24, scope: !2062, inlinedAt: !3071)
!3078 = !DILocation(line: 150, column: 19, scope: !2062, inlinedAt: !3071)
!3079 = !DILocation(line: 150, column: 24, scope: !2062, inlinedAt: !3071)
!3080 = !DILocation(line: 150, column: 6, scope: !2062, inlinedAt: !3071)
!3081 = !DILocation(line: 975, column: 10, scope: !3057)
!3082 = !DILocation(line: 976, column: 1, scope: !3057)
!3083 = !DILocation(line: 975, column: 3, scope: !3057)
!3084 = distinct !DISubprogram(name: "quotearg_char", scope: !448, file: !448, line: 979, type: !3085, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!101, !70, !4}
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "arg", arg: 1, scope: !3084, file: !448, line: 979, type: !70)
!3089 = !DILocalVariable(name: "ch", arg: 2, scope: !3084, file: !448, line: 979, type: !4)
!3090 = !DILocation(line: 0, scope: !3084)
!3091 = !DILocation(line: 0, scope: !3057, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 981, column: 10, scope: !3084)
!3093 = !DILocation(line: 972, column: 3, scope: !3057, inlinedAt: !3092)
!3094 = !DILocation(line: 972, column: 26, scope: !3057, inlinedAt: !3092)
!3095 = !DILocation(line: 973, column: 13, scope: !3057, inlinedAt: !3092)
!3096 = !DILocation(line: 0, scope: !2062, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 974, column: 3, scope: !3057, inlinedAt: !3092)
!3098 = !DILocation(line: 147, column: 41, scope: !2062, inlinedAt: !3097)
!3099 = !DILocation(line: 147, column: 62, scope: !2062, inlinedAt: !3097)
!3100 = !DILocation(line: 147, column: 57, scope: !2062, inlinedAt: !3097)
!3101 = !DILocation(line: 148, column: 15, scope: !2062, inlinedAt: !3097)
!3102 = !DILocation(line: 149, column: 21, scope: !2062, inlinedAt: !3097)
!3103 = !DILocation(line: 149, column: 24, scope: !2062, inlinedAt: !3097)
!3104 = !DILocation(line: 150, column: 19, scope: !2062, inlinedAt: !3097)
!3105 = !DILocation(line: 150, column: 24, scope: !2062, inlinedAt: !3097)
!3106 = !DILocation(line: 150, column: 6, scope: !2062, inlinedAt: !3097)
!3107 = !DILocation(line: 975, column: 10, scope: !3057, inlinedAt: !3092)
!3108 = !DILocation(line: 976, column: 1, scope: !3057, inlinedAt: !3092)
!3109 = !DILocation(line: 981, column: 3, scope: !3084)
!3110 = distinct !DISubprogram(name: "quotearg_colon", scope: !448, file: !448, line: 985, type: !1001, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3111)
!3111 = !{!3112}
!3112 = !DILocalVariable(name: "arg", arg: 1, scope: !3110, file: !448, line: 985, type: !70)
!3113 = !DILocation(line: 0, scope: !3110)
!3114 = !DILocation(line: 0, scope: !3084, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 987, column: 10, scope: !3110)
!3116 = !DILocation(line: 0, scope: !3057, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 981, column: 10, scope: !3084, inlinedAt: !3115)
!3118 = !DILocation(line: 972, column: 3, scope: !3057, inlinedAt: !3117)
!3119 = !DILocation(line: 972, column: 26, scope: !3057, inlinedAt: !3117)
!3120 = !DILocation(line: 973, column: 13, scope: !3057, inlinedAt: !3117)
!3121 = !DILocation(line: 0, scope: !2062, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 974, column: 3, scope: !3057, inlinedAt: !3117)
!3123 = !DILocation(line: 147, column: 57, scope: !2062, inlinedAt: !3122)
!3124 = !DILocation(line: 149, column: 21, scope: !2062, inlinedAt: !3122)
!3125 = !DILocation(line: 150, column: 6, scope: !2062, inlinedAt: !3122)
!3126 = !DILocation(line: 975, column: 10, scope: !3057, inlinedAt: !3117)
!3127 = !DILocation(line: 976, column: 1, scope: !3057, inlinedAt: !3117)
!3128 = !DILocation(line: 987, column: 3, scope: !3110)
!3129 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !448, file: !448, line: 991, type: !2938, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3130)
!3130 = !{!3131, !3132}
!3131 = !DILocalVariable(name: "arg", arg: 1, scope: !3129, file: !448, line: 991, type: !70)
!3132 = !DILocalVariable(name: "argsize", arg: 2, scope: !3129, file: !448, line: 991, type: !97)
!3133 = !DILocation(line: 0, scope: !3129)
!3134 = !DILocation(line: 0, scope: !3057, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 993, column: 10, scope: !3129)
!3136 = !DILocation(line: 972, column: 3, scope: !3057, inlinedAt: !3135)
!3137 = !DILocation(line: 972, column: 26, scope: !3057, inlinedAt: !3135)
!3138 = !DILocation(line: 973, column: 13, scope: !3057, inlinedAt: !3135)
!3139 = !DILocation(line: 0, scope: !2062, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 974, column: 3, scope: !3057, inlinedAt: !3135)
!3141 = !DILocation(line: 147, column: 57, scope: !2062, inlinedAt: !3140)
!3142 = !DILocation(line: 149, column: 21, scope: !2062, inlinedAt: !3140)
!3143 = !DILocation(line: 150, column: 6, scope: !2062, inlinedAt: !3140)
!3144 = !DILocation(line: 975, column: 10, scope: !3057, inlinedAt: !3135)
!3145 = !DILocation(line: 976, column: 1, scope: !3057, inlinedAt: !3135)
!3146 = !DILocation(line: 993, column: 3, scope: !3129)
!3147 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !448, file: !448, line: 997, type: !2949, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3148)
!3148 = !{!3149, !3150, !3151, !3152}
!3149 = !DILocalVariable(name: "n", arg: 1, scope: !3147, file: !448, line: 997, type: !95)
!3150 = !DILocalVariable(name: "s", arg: 2, scope: !3147, file: !448, line: 997, type: !474)
!3151 = !DILocalVariable(name: "arg", arg: 3, scope: !3147, file: !448, line: 997, type: !70)
!3152 = !DILocalVariable(name: "options", scope: !3147, file: !448, line: 999, type: !501)
!3153 = !DILocation(line: 185, column: 26, scope: !2964, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1000, column: 13, scope: !3147)
!3155 = !DILocation(line: 0, scope: !3147)
!3156 = !DILocation(line: 999, column: 3, scope: !3147)
!3157 = !DILocation(line: 999, column: 26, scope: !3147)
!3158 = !DILocation(line: 0, scope: !2964, inlinedAt: !3154)
!3159 = !DILocation(line: 186, column: 13, scope: !2973, inlinedAt: !3154)
!3160 = !DILocation(line: 186, column: 7, scope: !2964, inlinedAt: !3154)
!3161 = !DILocation(line: 187, column: 5, scope: !2973, inlinedAt: !3154)
!3162 = !{!3163}
!3163 = distinct !{!3163, !3164, !"quoting_options_from_style: argument 0"}
!3164 = distinct !{!3164, !"quoting_options_from_style"}
!3165 = !DILocation(line: 1000, column: 13, scope: !3147)
!3166 = !DILocation(line: 0, scope: !2062, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 1001, column: 3, scope: !3147)
!3168 = !DILocation(line: 147, column: 57, scope: !2062, inlinedAt: !3167)
!3169 = !DILocation(line: 149, column: 21, scope: !2062, inlinedAt: !3167)
!3170 = !DILocation(line: 150, column: 6, scope: !2062, inlinedAt: !3167)
!3171 = !DILocation(line: 1002, column: 10, scope: !3147)
!3172 = !DILocation(line: 1003, column: 1, scope: !3147)
!3173 = !DILocation(line: 1002, column: 3, scope: !3147)
!3174 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !448, file: !448, line: 1006, type: !3175, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!101, !95, !70, !70, !70}
!3177 = !{!3178, !3179, !3180, !3181}
!3178 = !DILocalVariable(name: "n", arg: 1, scope: !3174, file: !448, line: 1006, type: !95)
!3179 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3174, file: !448, line: 1006, type: !70)
!3180 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3174, file: !448, line: 1007, type: !70)
!3181 = !DILocalVariable(name: "arg", arg: 4, scope: !3174, file: !448, line: 1007, type: !70)
!3182 = !DILocation(line: 0, scope: !3174)
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3184, file: !448, line: 1014, type: !95)
!3184 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !448, file: !448, line: 1014, type: !3185, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3187)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!101, !95, !70, !70, !70, !97}
!3187 = !{!3183, !3188, !3189, !3190, !3191, !3192}
!3188 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3184, file: !448, line: 1014, type: !70)
!3189 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3184, file: !448, line: 1015, type: !70)
!3190 = !DILocalVariable(name: "arg", arg: 4, scope: !3184, file: !448, line: 1016, type: !70)
!3191 = !DILocalVariable(name: "argsize", arg: 5, scope: !3184, file: !448, line: 1016, type: !97)
!3192 = !DILocalVariable(name: "o", scope: !3184, file: !448, line: 1018, type: !501)
!3193 = !DILocation(line: 0, scope: !3184, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 1009, column: 10, scope: !3174)
!3195 = !DILocation(line: 1018, column: 3, scope: !3184, inlinedAt: !3194)
!3196 = !DILocation(line: 1018, column: 26, scope: !3184, inlinedAt: !3194)
!3197 = !DILocation(line: 1018, column: 30, scope: !3184, inlinedAt: !3194)
!3198 = !DILocation(line: 0, scope: !2102, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 1019, column: 3, scope: !3184, inlinedAt: !3194)
!3200 = !DILocation(line: 174, column: 12, scope: !2102, inlinedAt: !3199)
!3201 = !DILocation(line: 175, column: 8, scope: !2115, inlinedAt: !3199)
!3202 = !DILocation(line: 175, column: 19, scope: !2115, inlinedAt: !3199)
!3203 = !DILocation(line: 176, column: 5, scope: !2115, inlinedAt: !3199)
!3204 = !DILocation(line: 177, column: 6, scope: !2102, inlinedAt: !3199)
!3205 = !DILocation(line: 177, column: 17, scope: !2102, inlinedAt: !3199)
!3206 = !DILocation(line: 178, column: 6, scope: !2102, inlinedAt: !3199)
!3207 = !DILocation(line: 178, column: 18, scope: !2102, inlinedAt: !3199)
!3208 = !DILocation(line: 1020, column: 10, scope: !3184, inlinedAt: !3194)
!3209 = !DILocation(line: 1021, column: 1, scope: !3184, inlinedAt: !3194)
!3210 = !DILocation(line: 1009, column: 3, scope: !3174)
!3211 = !DILocation(line: 0, scope: !3184)
!3212 = !DILocation(line: 1018, column: 3, scope: !3184)
!3213 = !DILocation(line: 1018, column: 26, scope: !3184)
!3214 = !DILocation(line: 1018, column: 30, scope: !3184)
!3215 = !DILocation(line: 0, scope: !2102, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 1019, column: 3, scope: !3184)
!3217 = !DILocation(line: 174, column: 12, scope: !2102, inlinedAt: !3216)
!3218 = !DILocation(line: 175, column: 8, scope: !2115, inlinedAt: !3216)
!3219 = !DILocation(line: 175, column: 19, scope: !2115, inlinedAt: !3216)
!3220 = !DILocation(line: 176, column: 5, scope: !2115, inlinedAt: !3216)
!3221 = !DILocation(line: 177, column: 6, scope: !2102, inlinedAt: !3216)
!3222 = !DILocation(line: 177, column: 17, scope: !2102, inlinedAt: !3216)
!3223 = !DILocation(line: 178, column: 6, scope: !2102, inlinedAt: !3216)
!3224 = !DILocation(line: 178, column: 18, scope: !2102, inlinedAt: !3216)
!3225 = !DILocation(line: 1020, column: 10, scope: !3184)
!3226 = !DILocation(line: 1021, column: 1, scope: !3184)
!3227 = !DILocation(line: 1020, column: 3, scope: !3184)
!3228 = distinct !DISubprogram(name: "quotearg_custom", scope: !448, file: !448, line: 1024, type: !3229, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!101, !70, !70, !70}
!3231 = !{!3232, !3233, !3234}
!3232 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3228, file: !448, line: 1024, type: !70)
!3233 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3228, file: !448, line: 1024, type: !70)
!3234 = !DILocalVariable(name: "arg", arg: 3, scope: !3228, file: !448, line: 1025, type: !70)
!3235 = !DILocation(line: 0, scope: !3228)
!3236 = !DILocation(line: 0, scope: !3174, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 1027, column: 10, scope: !3228)
!3238 = !DILocation(line: 0, scope: !3184, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 1009, column: 10, scope: !3174, inlinedAt: !3237)
!3240 = !DILocation(line: 1018, column: 3, scope: !3184, inlinedAt: !3239)
!3241 = !DILocation(line: 1018, column: 26, scope: !3184, inlinedAt: !3239)
!3242 = !DILocation(line: 1018, column: 30, scope: !3184, inlinedAt: !3239)
!3243 = !DILocation(line: 0, scope: !2102, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 1019, column: 3, scope: !3184, inlinedAt: !3239)
!3245 = !DILocation(line: 174, column: 12, scope: !2102, inlinedAt: !3244)
!3246 = !DILocation(line: 175, column: 8, scope: !2115, inlinedAt: !3244)
!3247 = !DILocation(line: 175, column: 19, scope: !2115, inlinedAt: !3244)
!3248 = !DILocation(line: 176, column: 5, scope: !2115, inlinedAt: !3244)
!3249 = !DILocation(line: 177, column: 6, scope: !2102, inlinedAt: !3244)
!3250 = !DILocation(line: 177, column: 17, scope: !2102, inlinedAt: !3244)
!3251 = !DILocation(line: 178, column: 6, scope: !2102, inlinedAt: !3244)
!3252 = !DILocation(line: 178, column: 18, scope: !2102, inlinedAt: !3244)
!3253 = !DILocation(line: 1020, column: 10, scope: !3184, inlinedAt: !3239)
!3254 = !DILocation(line: 1021, column: 1, scope: !3184, inlinedAt: !3239)
!3255 = !DILocation(line: 1027, column: 3, scope: !3228)
!3256 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !448, file: !448, line: 1031, type: !3257, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!101, !70, !70, !70, !97}
!3259 = !{!3260, !3261, !3262, !3263}
!3260 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3256, file: !448, line: 1031, type: !70)
!3261 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3256, file: !448, line: 1031, type: !70)
!3262 = !DILocalVariable(name: "arg", arg: 3, scope: !3256, file: !448, line: 1032, type: !70)
!3263 = !DILocalVariable(name: "argsize", arg: 4, scope: !3256, file: !448, line: 1032, type: !97)
!3264 = !DILocation(line: 0, scope: !3256)
!3265 = !DILocation(line: 0, scope: !3184, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 1034, column: 10, scope: !3256)
!3267 = !DILocation(line: 1018, column: 3, scope: !3184, inlinedAt: !3266)
!3268 = !DILocation(line: 1018, column: 26, scope: !3184, inlinedAt: !3266)
!3269 = !DILocation(line: 1018, column: 30, scope: !3184, inlinedAt: !3266)
!3270 = !DILocation(line: 0, scope: !2102, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 1019, column: 3, scope: !3184, inlinedAt: !3266)
!3272 = !DILocation(line: 174, column: 12, scope: !2102, inlinedAt: !3271)
!3273 = !DILocation(line: 175, column: 8, scope: !2115, inlinedAt: !3271)
!3274 = !DILocation(line: 175, column: 19, scope: !2115, inlinedAt: !3271)
!3275 = !DILocation(line: 176, column: 5, scope: !2115, inlinedAt: !3271)
!3276 = !DILocation(line: 177, column: 6, scope: !2102, inlinedAt: !3271)
!3277 = !DILocation(line: 177, column: 17, scope: !2102, inlinedAt: !3271)
!3278 = !DILocation(line: 178, column: 6, scope: !2102, inlinedAt: !3271)
!3279 = !DILocation(line: 178, column: 18, scope: !2102, inlinedAt: !3271)
!3280 = !DILocation(line: 1020, column: 10, scope: !3184, inlinedAt: !3266)
!3281 = !DILocation(line: 1021, column: 1, scope: !3184, inlinedAt: !3266)
!3282 = !DILocation(line: 1034, column: 3, scope: !3256)
!3283 = distinct !DISubprogram(name: "quote_n_mem", scope: !448, file: !448, line: 1049, type: !3284, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!70, !95, !70, !97}
!3286 = !{!3287, !3288, !3289}
!3287 = !DILocalVariable(name: "n", arg: 1, scope: !3283, file: !448, line: 1049, type: !95)
!3288 = !DILocalVariable(name: "arg", arg: 2, scope: !3283, file: !448, line: 1049, type: !70)
!3289 = !DILocalVariable(name: "argsize", arg: 3, scope: !3283, file: !448, line: 1049, type: !97)
!3290 = !DILocation(line: 0, scope: !3283)
!3291 = !DILocation(line: 1051, column: 10, scope: !3283)
!3292 = !DILocation(line: 1051, column: 3, scope: !3283)
!3293 = distinct !DISubprogram(name: "quote_mem", scope: !448, file: !448, line: 1055, type: !3294, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!70, !70, !97}
!3296 = !{!3297, !3298}
!3297 = !DILocalVariable(name: "arg", arg: 1, scope: !3293, file: !448, line: 1055, type: !70)
!3298 = !DILocalVariable(name: "argsize", arg: 2, scope: !3293, file: !448, line: 1055, type: !97)
!3299 = !DILocation(line: 0, scope: !3293)
!3300 = !DILocation(line: 0, scope: !3283, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 1057, column: 10, scope: !3293)
!3302 = !DILocation(line: 1051, column: 10, scope: !3283, inlinedAt: !3301)
!3303 = !DILocation(line: 1057, column: 3, scope: !3293)
!3304 = distinct !DISubprogram(name: "quote_n", scope: !448, file: !448, line: 1061, type: !3305, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!70, !95, !70}
!3307 = !{!3308, !3309}
!3308 = !DILocalVariable(name: "n", arg: 1, scope: !3304, file: !448, line: 1061, type: !95)
!3309 = !DILocalVariable(name: "arg", arg: 2, scope: !3304, file: !448, line: 1061, type: !70)
!3310 = !DILocation(line: 0, scope: !3304)
!3311 = !DILocation(line: 0, scope: !3283, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 1063, column: 10, scope: !3304)
!3313 = !DILocation(line: 1051, column: 10, scope: !3283, inlinedAt: !3312)
!3314 = !DILocation(line: 1063, column: 3, scope: !3304)
!3315 = distinct !DISubprogram(name: "quote", scope: !448, file: !448, line: 1067, type: !3316, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!70, !70}
!3318 = !{!3319}
!3319 = !DILocalVariable(name: "arg", arg: 1, scope: !3315, file: !448, line: 1067, type: !70)
!3320 = !DILocation(line: 0, scope: !3315)
!3321 = !DILocation(line: 0, scope: !3304, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 1069, column: 10, scope: !3315)
!3323 = !DILocation(line: 0, scope: !3283, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 1063, column: 10, scope: !3304, inlinedAt: !3322)
!3325 = !DILocation(line: 1051, column: 10, scope: !3283, inlinedAt: !3324)
!3326 = !DILocation(line: 1069, column: 3, scope: !3315)
!3327 = distinct !DISubprogram(name: "safe_write", scope: !3328, file: !3328, line: 56, type: !3329, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3332)
!3328 = !DIFile(filename: "./lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!758, !95, !3331, !756}
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3328, line: 45, baseType: !1023)
!3332 = !{!3333, !3334, !3335, !3336}
!3333 = !DILocalVariable(name: "fd", arg: 1, scope: !3327, file: !3328, line: 56, type: !95)
!3334 = !DILocalVariable(name: "buf", arg: 2, scope: !3327, file: !3328, line: 56, type: !3331)
!3335 = !DILocalVariable(name: "count", arg: 3, scope: !3327, file: !3328, line: 56, type: !756)
!3336 = !DILocalVariable(name: "result", scope: !3337, file: !3328, line: 60, type: !3340)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !3328, line: 59, column: 5)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3328, line: 58, column: 3)
!3339 = distinct !DILexicalBlock(scope: !3327, file: !3328, line: 58, column: 3)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1773, line: 108, baseType: !1144)
!3341 = !DILocation(line: 0, scope: !3327)
!3342 = !DILocation(line: 58, column: 3, scope: !3327)
!3343 = !DILocation(line: 62, column: 11, scope: !3337)
!3344 = !DILocation(line: 60, column: 24, scope: !3337)
!3345 = !DILocation(line: 0, scope: !3337)
!3346 = !DILocation(line: 62, column: 13, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3337, file: !3328, line: 62, column: 11)
!3348 = !DILocation(line: 64, column: 16, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3347, file: !3328, line: 64, column: 16)
!3350 = !DILocation(line: 64, column: 16, scope: !3347)
!3351 = distinct !{!3351, !3352, !3353}
!3352 = !DILocation(line: 58, column: 3, scope: !3339)
!3353 = !DILocation(line: 70, column: 5, scope: !3339)
!3354 = !DILocation(line: 66, column: 22, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3349, file: !3328, line: 66, column: 16)
!3356 = !DILocation(line: 0, scope: !3338)
!3357 = !DILocation(line: 71, column: 1, scope: !3327)
!3358 = !DISubprogram(name: "write", scope: !1343, file: !1343, line: 378, type: !3359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!3340, !95, !1023, !97}
!3361 = distinct !DISubprogram(name: "version_etc_arn", scope: !564, file: !564, line: 61, type: !3362, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3399)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{null, !3364, !70, !70, !70, !3398, !97}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !3367)
!3367 = !{!3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3366, file: !236, line: 51, baseType: !95, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3366, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3366, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3366, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3366, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3366, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3366, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3366, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3366, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3366, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3366, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3366, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3366, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3366, file: !236, line: 70, baseType: !3382, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3366, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3366, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3366, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3366, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3366, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3366, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3366, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3366, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3366, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3366, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3366, file: !236, line: 93, baseType: !3382, size: 64, offset: 1344)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3366, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3366, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3366, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3366, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!3399 = !{!3400, !3401, !3402, !3403, !3404, !3405}
!3400 = !DILocalVariable(name: "stream", arg: 1, scope: !3361, file: !564, line: 61, type: !3364)
!3401 = !DILocalVariable(name: "command_name", arg: 2, scope: !3361, file: !564, line: 62, type: !70)
!3402 = !DILocalVariable(name: "package", arg: 3, scope: !3361, file: !564, line: 62, type: !70)
!3403 = !DILocalVariable(name: "version", arg: 4, scope: !3361, file: !564, line: 63, type: !70)
!3404 = !DILocalVariable(name: "authors", arg: 5, scope: !3361, file: !564, line: 64, type: !3398)
!3405 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3361, file: !564, line: 64, type: !97)
!3406 = !DILocation(line: 0, scope: !3361)
!3407 = !DILocation(line: 66, column: 7, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3361, file: !564, line: 66, column: 7)
!3409 = !DILocation(line: 66, column: 7, scope: !3361)
!3410 = !DILocation(line: 67, column: 5, scope: !3408)
!3411 = !DILocation(line: 69, column: 5, scope: !3408)
!3412 = !DILocation(line: 83, column: 3, scope: !3361)
!3413 = !DILocation(line: 85, column: 3, scope: !3361)
!3414 = !DILocation(line: 88, column: 3, scope: !3361)
!3415 = !DILocation(line: 95, column: 3, scope: !3361)
!3416 = !DILocation(line: 97, column: 3, scope: !3361)
!3417 = !DILocation(line: 105, column: 7, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3361, file: !564, line: 98, column: 5)
!3419 = !DILocation(line: 106, column: 7, scope: !3418)
!3420 = !DILocation(line: 109, column: 7, scope: !3418)
!3421 = !DILocation(line: 110, column: 7, scope: !3418)
!3422 = !DILocation(line: 113, column: 7, scope: !3418)
!3423 = !DILocation(line: 115, column: 7, scope: !3418)
!3424 = !DILocation(line: 120, column: 7, scope: !3418)
!3425 = !DILocation(line: 122, column: 7, scope: !3418)
!3426 = !DILocation(line: 127, column: 7, scope: !3418)
!3427 = !DILocation(line: 129, column: 7, scope: !3418)
!3428 = !DILocation(line: 134, column: 7, scope: !3418)
!3429 = !DILocation(line: 137, column: 7, scope: !3418)
!3430 = !DILocation(line: 142, column: 7, scope: !3418)
!3431 = !DILocation(line: 145, column: 7, scope: !3418)
!3432 = !DILocation(line: 150, column: 7, scope: !3418)
!3433 = !DILocation(line: 154, column: 7, scope: !3418)
!3434 = !DILocation(line: 159, column: 7, scope: !3418)
!3435 = !DILocation(line: 163, column: 7, scope: !3418)
!3436 = !DILocation(line: 170, column: 7, scope: !3418)
!3437 = !DILocation(line: 174, column: 7, scope: !3418)
!3438 = !DILocation(line: 176, column: 1, scope: !3361)
!3439 = distinct !DISubprogram(name: "version_etc_ar", scope: !564, file: !564, line: 183, type: !3440, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3364, !70, !70, !70, !3398}
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448}
!3443 = !DILocalVariable(name: "stream", arg: 1, scope: !3439, file: !564, line: 183, type: !3364)
!3444 = !DILocalVariable(name: "command_name", arg: 2, scope: !3439, file: !564, line: 184, type: !70)
!3445 = !DILocalVariable(name: "package", arg: 3, scope: !3439, file: !564, line: 184, type: !70)
!3446 = !DILocalVariable(name: "version", arg: 4, scope: !3439, file: !564, line: 185, type: !70)
!3447 = !DILocalVariable(name: "authors", arg: 5, scope: !3439, file: !564, line: 185, type: !3398)
!3448 = !DILocalVariable(name: "n_authors", scope: !3439, file: !564, line: 187, type: !97)
!3449 = !DILocation(line: 0, scope: !3439)
!3450 = !DILocation(line: 189, column: 8, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3439, file: !564, line: 189, column: 3)
!3452 = !DILocation(line: 189, scope: !3451)
!3453 = !DILocation(line: 189, column: 23, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !564, line: 189, column: 3)
!3455 = !DILocation(line: 189, column: 3, scope: !3451)
!3456 = !DILocation(line: 189, column: 52, scope: !3454)
!3457 = distinct !{!3457, !3455, !3458, !921}
!3458 = !DILocation(line: 190, column: 5, scope: !3451)
!3459 = !DILocation(line: 191, column: 3, scope: !3439)
!3460 = !DILocation(line: 192, column: 1, scope: !3439)
!3461 = distinct !DISubprogram(name: "version_etc_va", scope: !564, file: !564, line: 199, type: !3462, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3472)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{null, !3364, !70, !70, !70, !3464}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3466)
!3466 = !{!3467, !3469, !3470, !3471}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3465, file: !3468, line: 192, baseType: !76, size: 32)
!3468 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3465, file: !3468, line: 192, baseType: !76, size: 32, offset: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3465, file: !3468, line: 192, baseType: !94, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3465, file: !3468, line: 192, baseType: !94, size: 64, offset: 128)
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479}
!3473 = !DILocalVariable(name: "stream", arg: 1, scope: !3461, file: !564, line: 199, type: !3364)
!3474 = !DILocalVariable(name: "command_name", arg: 2, scope: !3461, file: !564, line: 200, type: !70)
!3475 = !DILocalVariable(name: "package", arg: 3, scope: !3461, file: !564, line: 200, type: !70)
!3476 = !DILocalVariable(name: "version", arg: 4, scope: !3461, file: !564, line: 201, type: !70)
!3477 = !DILocalVariable(name: "authors", arg: 5, scope: !3461, file: !564, line: 201, type: !3464)
!3478 = !DILocalVariable(name: "n_authors", scope: !3461, file: !564, line: 203, type: !97)
!3479 = !DILocalVariable(name: "authtab", scope: !3461, file: !564, line: 204, type: !3480)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!3481 = !DILocation(line: 0, scope: !3461)
!3482 = !DILocation(line: 204, column: 3, scope: !3461)
!3483 = !DILocation(line: 204, column: 15, scope: !3461)
!3484 = !DILocation(line: 208, column: 35, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !564, line: 206, column: 3)
!3486 = distinct !DILexicalBlock(scope: !3461, file: !564, line: 206, column: 3)
!3487 = !DILocation(line: 208, column: 33, scope: !3485)
!3488 = !DILocation(line: 208, column: 67, scope: !3485)
!3489 = !DILocation(line: 206, column: 3, scope: !3486)
!3490 = !DILocation(line: 208, column: 14, scope: !3485)
!3491 = !DILocation(line: 0, scope: !3486)
!3492 = !DILocation(line: 211, column: 3, scope: !3461)
!3493 = !DILocation(line: 213, column: 1, scope: !3461)
!3494 = distinct !DISubprogram(name: "version_etc", scope: !564, file: !564, line: 230, type: !3495, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !3364, !70, !70, !70, null}
!3497 = !{!3498, !3499, !3500, !3501, !3502}
!3498 = !DILocalVariable(name: "stream", arg: 1, scope: !3494, file: !564, line: 230, type: !3364)
!3499 = !DILocalVariable(name: "command_name", arg: 2, scope: !3494, file: !564, line: 231, type: !70)
!3500 = !DILocalVariable(name: "package", arg: 3, scope: !3494, file: !564, line: 231, type: !70)
!3501 = !DILocalVariable(name: "version", arg: 4, scope: !3494, file: !564, line: 232, type: !70)
!3502 = !DILocalVariable(name: "authors", scope: !3494, file: !564, line: 234, type: !3503)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !869, line: 52, baseType: !3504)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1575, line: 14, baseType: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3468, baseType: !3506)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3465, size: 192, elements: !35)
!3507 = !DILocation(line: 0, scope: !3494)
!3508 = !DILocation(line: 234, column: 3, scope: !3494)
!3509 = !DILocation(line: 234, column: 11, scope: !3494)
!3510 = !DILocation(line: 235, column: 3, scope: !3494)
!3511 = !DILocation(line: 236, column: 3, scope: !3494)
!3512 = !DILocation(line: 237, column: 3, scope: !3494)
!3513 = !DILocation(line: 238, column: 1, scope: !3494)
!3514 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !564, file: !564, line: 241, type: !362, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !858)
!3515 = !DILocation(line: 243, column: 3, scope: !3514)
!3516 = !DILocation(line: 248, column: 3, scope: !3514)
!3517 = !DILocation(line: 254, column: 3, scope: !3514)
!3518 = !DILocation(line: 259, column: 3, scope: !3514)
!3519 = !DILocation(line: 261, column: 1, scope: !3514)
!3520 = distinct !DISubprogram(name: "xnrealloc", scope: !3521, file: !3521, line: 147, type: !3522, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3524)
!3521 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!94, !94, !97, !97}
!3524 = !{!3525, !3526, !3527}
!3525 = !DILocalVariable(name: "p", arg: 1, scope: !3520, file: !3521, line: 147, type: !94)
!3526 = !DILocalVariable(name: "n", arg: 2, scope: !3520, file: !3521, line: 147, type: !97)
!3527 = !DILocalVariable(name: "s", arg: 3, scope: !3520, file: !3521, line: 147, type: !97)
!3528 = !DILocation(line: 0, scope: !3520)
!3529 = !DILocalVariable(name: "p", arg: 1, scope: !3530, file: !737, line: 83, type: !94)
!3530 = distinct !DISubprogram(name: "xreallocarray", scope: !737, file: !737, line: 83, type: !3522, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3531)
!3531 = !{!3529, !3532, !3533}
!3532 = !DILocalVariable(name: "n", arg: 2, scope: !3530, file: !737, line: 83, type: !97)
!3533 = !DILocalVariable(name: "s", arg: 3, scope: !3530, file: !737, line: 83, type: !97)
!3534 = !DILocation(line: 0, scope: !3530, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 149, column: 10, scope: !3520)
!3536 = !DILocation(line: 85, column: 25, scope: !3530, inlinedAt: !3535)
!3537 = !DILocalVariable(name: "p", arg: 1, scope: !3538, file: !737, line: 37, type: !94)
!3538 = distinct !DISubprogram(name: "check_nonnull", scope: !737, file: !737, line: 37, type: !3539, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!94, !94}
!3541 = !{!3537}
!3542 = !DILocation(line: 0, scope: !3538, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 85, column: 10, scope: !3530, inlinedAt: !3535)
!3544 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3543)
!3545 = distinct !DILexicalBlock(scope: !3538, file: !737, line: 39, column: 7)
!3546 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3543)
!3547 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3543)
!3548 = !DILocation(line: 149, column: 3, scope: !3520)
!3549 = !DILocation(line: 0, scope: !3530)
!3550 = !DILocation(line: 85, column: 25, scope: !3530)
!3551 = !DILocation(line: 0, scope: !3538, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 85, column: 10, scope: !3530)
!3553 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3552)
!3554 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3552)
!3555 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3552)
!3556 = !DILocation(line: 85, column: 3, scope: !3530)
!3557 = distinct !DISubprogram(name: "xmalloc", scope: !737, file: !737, line: 47, type: !3558, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!94, !97}
!3560 = !{!3561}
!3561 = !DILocalVariable(name: "s", arg: 1, scope: !3557, file: !737, line: 47, type: !97)
!3562 = !DILocation(line: 0, scope: !3557)
!3563 = !DILocation(line: 49, column: 25, scope: !3557)
!3564 = !DILocation(line: 0, scope: !3538, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 49, column: 10, scope: !3557)
!3566 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3565)
!3567 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3565)
!3568 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3565)
!3569 = !DILocation(line: 49, column: 3, scope: !3557)
!3570 = !DISubprogram(name: "malloc", scope: !999, file: !999, line: 540, type: !3558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!3571 = distinct !DISubprogram(name: "ximalloc", scope: !737, file: !737, line: 53, type: !3572, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!94, !756}
!3574 = !{!3575}
!3575 = !DILocalVariable(name: "s", arg: 1, scope: !3571, file: !737, line: 53, type: !756)
!3576 = !DILocation(line: 0, scope: !3571)
!3577 = !DILocalVariable(name: "s", arg: 1, scope: !3578, file: !3579, line: 55, type: !756)
!3578 = distinct !DISubprogram(name: "imalloc", scope: !3579, file: !3579, line: 55, type: !3572, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3580)
!3579 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3580 = !{!3577}
!3581 = !DILocation(line: 0, scope: !3578, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 55, column: 25, scope: !3571)
!3583 = !DILocation(line: 57, column: 26, scope: !3578, inlinedAt: !3582)
!3584 = !DILocation(line: 0, scope: !3538, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 55, column: 10, scope: !3571)
!3586 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3585)
!3587 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3585)
!3588 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3585)
!3589 = !DILocation(line: 55, column: 3, scope: !3571)
!3590 = distinct !DISubprogram(name: "xcharalloc", scope: !737, file: !737, line: 59, type: !3591, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!101, !97}
!3593 = !{!3594}
!3594 = !DILocalVariable(name: "n", arg: 1, scope: !3590, file: !737, line: 59, type: !97)
!3595 = !DILocation(line: 0, scope: !3590)
!3596 = !DILocation(line: 0, scope: !3557, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 61, column: 10, scope: !3590)
!3598 = !DILocation(line: 49, column: 25, scope: !3557, inlinedAt: !3597)
!3599 = !DILocation(line: 0, scope: !3538, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 49, column: 10, scope: !3557, inlinedAt: !3597)
!3601 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3600)
!3602 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3600)
!3603 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3600)
!3604 = !DILocation(line: 61, column: 3, scope: !3590)
!3605 = distinct !DISubprogram(name: "xrealloc", scope: !737, file: !737, line: 68, type: !3606, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!94, !94, !97}
!3608 = !{!3609, !3610}
!3609 = !DILocalVariable(name: "p", arg: 1, scope: !3605, file: !737, line: 68, type: !94)
!3610 = !DILocalVariable(name: "s", arg: 2, scope: !3605, file: !737, line: 68, type: !97)
!3611 = !DILocation(line: 0, scope: !3605)
!3612 = !DILocalVariable(name: "ptr", arg: 1, scope: !3613, file: !3614, line: 2057, type: !94)
!3613 = distinct !DISubprogram(name: "rpl_realloc", scope: !3614, file: !3614, line: 2057, type: !3606, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3615)
!3614 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3615 = !{!3612, !3616}
!3616 = !DILocalVariable(name: "size", arg: 2, scope: !3613, file: !3614, line: 2057, type: !97)
!3617 = !DILocation(line: 0, scope: !3613, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 70, column: 25, scope: !3605)
!3619 = !DILocation(line: 2059, column: 24, scope: !3613, inlinedAt: !3618)
!3620 = !DILocation(line: 2059, column: 10, scope: !3613, inlinedAt: !3618)
!3621 = !DILocation(line: 0, scope: !3538, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 70, column: 10, scope: !3605)
!3623 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3622)
!3624 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3622)
!3625 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3622)
!3626 = !DILocation(line: 70, column: 3, scope: !3605)
!3627 = !DISubprogram(name: "realloc", scope: !999, file: !999, line: 551, type: !3606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!3628 = distinct !DISubprogram(name: "xirealloc", scope: !737, file: !737, line: 74, type: !3629, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!94, !94, !756}
!3631 = !{!3632, !3633}
!3632 = !DILocalVariable(name: "p", arg: 1, scope: !3628, file: !737, line: 74, type: !94)
!3633 = !DILocalVariable(name: "s", arg: 2, scope: !3628, file: !737, line: 74, type: !756)
!3634 = !DILocation(line: 0, scope: !3628)
!3635 = !DILocalVariable(name: "p", arg: 1, scope: !3636, file: !3579, line: 66, type: !94)
!3636 = distinct !DISubprogram(name: "irealloc", scope: !3579, file: !3579, line: 66, type: !3629, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3637)
!3637 = !{!3635, !3638}
!3638 = !DILocalVariable(name: "s", arg: 2, scope: !3636, file: !3579, line: 66, type: !756)
!3639 = !DILocation(line: 0, scope: !3636, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 76, column: 25, scope: !3628)
!3641 = !DILocation(line: 0, scope: !3613, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 68, column: 26, scope: !3636, inlinedAt: !3640)
!3643 = !DILocation(line: 2059, column: 24, scope: !3613, inlinedAt: !3642)
!3644 = !DILocation(line: 2059, column: 10, scope: !3613, inlinedAt: !3642)
!3645 = !DILocation(line: 0, scope: !3538, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 76, column: 10, scope: !3628)
!3647 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3646)
!3648 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3646)
!3649 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3646)
!3650 = !DILocation(line: 76, column: 3, scope: !3628)
!3651 = distinct !DISubprogram(name: "xireallocarray", scope: !737, file: !737, line: 89, type: !3652, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!94, !94, !756, !756}
!3654 = !{!3655, !3656, !3657}
!3655 = !DILocalVariable(name: "p", arg: 1, scope: !3651, file: !737, line: 89, type: !94)
!3656 = !DILocalVariable(name: "n", arg: 2, scope: !3651, file: !737, line: 89, type: !756)
!3657 = !DILocalVariable(name: "s", arg: 3, scope: !3651, file: !737, line: 89, type: !756)
!3658 = !DILocation(line: 0, scope: !3651)
!3659 = !DILocalVariable(name: "p", arg: 1, scope: !3660, file: !3579, line: 98, type: !94)
!3660 = distinct !DISubprogram(name: "ireallocarray", scope: !3579, file: !3579, line: 98, type: !3652, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3661)
!3661 = !{!3659, !3662, !3663}
!3662 = !DILocalVariable(name: "n", arg: 2, scope: !3660, file: !3579, line: 98, type: !756)
!3663 = !DILocalVariable(name: "s", arg: 3, scope: !3660, file: !3579, line: 98, type: !756)
!3664 = !DILocation(line: 0, scope: !3660, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 91, column: 25, scope: !3651)
!3666 = !DILocation(line: 101, column: 13, scope: !3660, inlinedAt: !3665)
!3667 = !DILocation(line: 0, scope: !3538, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 91, column: 10, scope: !3651)
!3669 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3668)
!3670 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3668)
!3671 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3668)
!3672 = !DILocation(line: 91, column: 3, scope: !3651)
!3673 = distinct !DISubprogram(name: "xnmalloc", scope: !737, file: !737, line: 98, type: !1347, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3674)
!3674 = !{!3675, !3676}
!3675 = !DILocalVariable(name: "n", arg: 1, scope: !3673, file: !737, line: 98, type: !97)
!3676 = !DILocalVariable(name: "s", arg: 2, scope: !3673, file: !737, line: 98, type: !97)
!3677 = !DILocation(line: 0, scope: !3673)
!3678 = !DILocation(line: 0, scope: !3530, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 100, column: 10, scope: !3673)
!3680 = !DILocation(line: 85, column: 25, scope: !3530, inlinedAt: !3679)
!3681 = !DILocation(line: 0, scope: !3538, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 85, column: 10, scope: !3530, inlinedAt: !3679)
!3683 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3682)
!3684 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3682)
!3685 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3682)
!3686 = !DILocation(line: 100, column: 3, scope: !3673)
!3687 = distinct !DISubprogram(name: "xinmalloc", scope: !737, file: !737, line: 104, type: !1201, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3688)
!3688 = !{!3689, !3690}
!3689 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !737, line: 104, type: !756)
!3690 = !DILocalVariable(name: "s", arg: 2, scope: !3687, file: !737, line: 104, type: !756)
!3691 = !DILocation(line: 0, scope: !3687)
!3692 = !DILocation(line: 0, scope: !3651, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 106, column: 10, scope: !3687)
!3694 = !DILocation(line: 0, scope: !3660, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 91, column: 25, scope: !3651, inlinedAt: !3693)
!3696 = !DILocation(line: 101, column: 13, scope: !3660, inlinedAt: !3695)
!3697 = !DILocation(line: 0, scope: !3538, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 91, column: 10, scope: !3651, inlinedAt: !3693)
!3699 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3698)
!3700 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3698)
!3701 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3698)
!3702 = !DILocation(line: 106, column: 3, scope: !3687)
!3703 = distinct !DISubprogram(name: "x2realloc", scope: !737, file: !737, line: 116, type: !3704, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!94, !94, !743}
!3706 = !{!3707, !3708}
!3707 = !DILocalVariable(name: "p", arg: 1, scope: !3703, file: !737, line: 116, type: !94)
!3708 = !DILocalVariable(name: "ps", arg: 2, scope: !3703, file: !737, line: 116, type: !743)
!3709 = !DILocation(line: 0, scope: !3703)
!3710 = !DILocation(line: 0, scope: !740, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 118, column: 10, scope: !3703)
!3712 = !DILocation(line: 178, column: 14, scope: !740, inlinedAt: !3711)
!3713 = !DILocation(line: 180, column: 9, scope: !3714, inlinedAt: !3711)
!3714 = distinct !DILexicalBlock(scope: !740, file: !737, line: 180, column: 7)
!3715 = !DILocation(line: 180, column: 7, scope: !740, inlinedAt: !3711)
!3716 = !DILocation(line: 182, column: 13, scope: !3717, inlinedAt: !3711)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !737, line: 182, column: 11)
!3718 = distinct !DILexicalBlock(scope: !3714, file: !737, line: 181, column: 5)
!3719 = !DILocation(line: 182, column: 11, scope: !3718, inlinedAt: !3711)
!3720 = !DILocation(line: 197, column: 11, scope: !3721, inlinedAt: !3711)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !737, line: 197, column: 11)
!3722 = distinct !DILexicalBlock(scope: !3714, file: !737, line: 195, column: 5)
!3723 = !DILocation(line: 197, column: 11, scope: !3722, inlinedAt: !3711)
!3724 = !DILocation(line: 198, column: 9, scope: !3721, inlinedAt: !3711)
!3725 = !DILocation(line: 0, scope: !3530, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 201, column: 7, scope: !740, inlinedAt: !3711)
!3727 = !DILocation(line: 85, column: 25, scope: !3530, inlinedAt: !3726)
!3728 = !DILocation(line: 0, scope: !3538, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 85, column: 10, scope: !3530, inlinedAt: !3726)
!3730 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3729)
!3731 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3729)
!3732 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3729)
!3733 = !DILocation(line: 202, column: 7, scope: !740, inlinedAt: !3711)
!3734 = !DILocation(line: 118, column: 3, scope: !3703)
!3735 = !DILocation(line: 0, scope: !740)
!3736 = !DILocation(line: 178, column: 14, scope: !740)
!3737 = !DILocation(line: 180, column: 9, scope: !3714)
!3738 = !DILocation(line: 180, column: 7, scope: !740)
!3739 = !DILocation(line: 182, column: 13, scope: !3717)
!3740 = !DILocation(line: 182, column: 11, scope: !3718)
!3741 = !DILocation(line: 190, column: 30, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3717, file: !737, line: 183, column: 9)
!3743 = !DILocation(line: 191, column: 16, scope: !3742)
!3744 = !DILocation(line: 191, column: 13, scope: !3742)
!3745 = !DILocation(line: 192, column: 9, scope: !3742)
!3746 = !DILocation(line: 197, column: 11, scope: !3721)
!3747 = !DILocation(line: 197, column: 11, scope: !3722)
!3748 = !DILocation(line: 198, column: 9, scope: !3721)
!3749 = !DILocation(line: 0, scope: !3530, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 201, column: 7, scope: !740)
!3751 = !DILocation(line: 85, column: 25, scope: !3530, inlinedAt: !3750)
!3752 = !DILocation(line: 0, scope: !3538, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 85, column: 10, scope: !3530, inlinedAt: !3750)
!3754 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3753)
!3755 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3753)
!3756 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3753)
!3757 = !DILocation(line: 202, column: 7, scope: !740)
!3758 = !DILocation(line: 203, column: 3, scope: !740)
!3759 = !DILocation(line: 0, scope: !752)
!3760 = !DILocation(line: 230, column: 14, scope: !752)
!3761 = !DILocation(line: 238, column: 7, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !752, file: !737, line: 238, column: 7)
!3763 = !DILocation(line: 238, column: 7, scope: !752)
!3764 = !DILocation(line: 240, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !752, file: !737, line: 240, column: 7)
!3766 = !DILocation(line: 240, column: 18, scope: !3765)
!3767 = !DILocation(line: 253, column: 8, scope: !752)
!3768 = !DILocation(line: 258, column: 27, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !737, line: 257, column: 5)
!3770 = distinct !DILexicalBlock(scope: !752, file: !737, line: 256, column: 7)
!3771 = !DILocation(line: 259, column: 50, scope: !3769)
!3772 = !DILocation(line: 259, column: 32, scope: !3769)
!3773 = !DILocation(line: 260, column: 5, scope: !3769)
!3774 = !DILocation(line: 262, column: 9, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !752, file: !737, line: 262, column: 7)
!3776 = !DILocation(line: 262, column: 7, scope: !752)
!3777 = !DILocation(line: 263, column: 9, scope: !3775)
!3778 = !DILocation(line: 263, column: 5, scope: !3775)
!3779 = !DILocation(line: 264, column: 9, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !752, file: !737, line: 264, column: 7)
!3781 = !DILocation(line: 264, column: 14, scope: !3780)
!3782 = !DILocation(line: 265, column: 7, scope: !3780)
!3783 = !DILocation(line: 265, column: 11, scope: !3780)
!3784 = !DILocation(line: 266, column: 11, scope: !3780)
!3785 = !DILocation(line: 267, column: 14, scope: !3780)
!3786 = !DILocation(line: 264, column: 7, scope: !752)
!3787 = !DILocation(line: 268, column: 5, scope: !3780)
!3788 = !DILocation(line: 0, scope: !3605, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 269, column: 8, scope: !752)
!3790 = !DILocation(line: 0, scope: !3613, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 70, column: 25, scope: !3605, inlinedAt: !3789)
!3792 = !DILocation(line: 2059, column: 24, scope: !3613, inlinedAt: !3791)
!3793 = !DILocation(line: 2059, column: 10, scope: !3613, inlinedAt: !3791)
!3794 = !DILocation(line: 0, scope: !3538, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 70, column: 10, scope: !3605, inlinedAt: !3789)
!3796 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3795)
!3797 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3795)
!3798 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3795)
!3799 = !DILocation(line: 270, column: 7, scope: !752)
!3800 = !DILocation(line: 271, column: 3, scope: !752)
!3801 = distinct !DISubprogram(name: "xzalloc", scope: !737, file: !737, line: 279, type: !3558, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3802)
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "s", arg: 1, scope: !3801, file: !737, line: 279, type: !97)
!3804 = !DILocation(line: 0, scope: !3801)
!3805 = !DILocalVariable(name: "n", arg: 1, scope: !3806, file: !737, line: 294, type: !97)
!3806 = distinct !DISubprogram(name: "xcalloc", scope: !737, file: !737, line: 294, type: !1347, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3807)
!3807 = !{!3805, !3808}
!3808 = !DILocalVariable(name: "s", arg: 2, scope: !3806, file: !737, line: 294, type: !97)
!3809 = !DILocation(line: 0, scope: !3806, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 281, column: 10, scope: !3801)
!3811 = !DILocation(line: 296, column: 25, scope: !3806, inlinedAt: !3810)
!3812 = !DILocation(line: 0, scope: !3538, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 296, column: 10, scope: !3806, inlinedAt: !3810)
!3814 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3813)
!3815 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3813)
!3816 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3813)
!3817 = !DILocation(line: 281, column: 3, scope: !3801)
!3818 = !DISubprogram(name: "calloc", scope: !999, file: !999, line: 543, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!3819 = !DILocation(line: 0, scope: !3806)
!3820 = !DILocation(line: 296, column: 25, scope: !3806)
!3821 = !DILocation(line: 0, scope: !3538, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 296, column: 10, scope: !3806)
!3823 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3822)
!3824 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3822)
!3825 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3822)
!3826 = !DILocation(line: 296, column: 3, scope: !3806)
!3827 = distinct !DISubprogram(name: "xizalloc", scope: !737, file: !737, line: 285, type: !3572, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3828)
!3828 = !{!3829}
!3829 = !DILocalVariable(name: "s", arg: 1, scope: !3827, file: !737, line: 285, type: !756)
!3830 = !DILocation(line: 0, scope: !3827)
!3831 = !DILocalVariable(name: "n", arg: 1, scope: !3832, file: !737, line: 300, type: !756)
!3832 = distinct !DISubprogram(name: "xicalloc", scope: !737, file: !737, line: 300, type: !1201, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3833)
!3833 = !{!3831, !3834}
!3834 = !DILocalVariable(name: "s", arg: 2, scope: !3832, file: !737, line: 300, type: !756)
!3835 = !DILocation(line: 0, scope: !3832, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 287, column: 10, scope: !3827)
!3837 = !DILocalVariable(name: "n", arg: 1, scope: !3838, file: !3579, line: 77, type: !756)
!3838 = distinct !DISubprogram(name: "icalloc", scope: !3579, file: !3579, line: 77, type: !1201, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3839)
!3839 = !{!3837, !3840}
!3840 = !DILocalVariable(name: "s", arg: 2, scope: !3838, file: !3579, line: 77, type: !756)
!3841 = !DILocation(line: 0, scope: !3838, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 302, column: 25, scope: !3832, inlinedAt: !3836)
!3843 = !DILocation(line: 91, column: 10, scope: !3838, inlinedAt: !3842)
!3844 = !DILocation(line: 0, scope: !3538, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 302, column: 10, scope: !3832, inlinedAt: !3836)
!3846 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3845)
!3847 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3845)
!3848 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3845)
!3849 = !DILocation(line: 287, column: 3, scope: !3827)
!3850 = !DILocation(line: 0, scope: !3832)
!3851 = !DILocation(line: 0, scope: !3838, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 302, column: 25, scope: !3832)
!3853 = !DILocation(line: 91, column: 10, scope: !3838, inlinedAt: !3852)
!3854 = !DILocation(line: 0, scope: !3538, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 302, column: 10, scope: !3832)
!3856 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3855)
!3857 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3855)
!3858 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3855)
!3859 = !DILocation(line: 302, column: 3, scope: !3832)
!3860 = distinct !DISubprogram(name: "xmemdup", scope: !737, file: !737, line: 310, type: !3861, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!94, !1023, !97}
!3863 = !{!3864, !3865}
!3864 = !DILocalVariable(name: "p", arg: 1, scope: !3860, file: !737, line: 310, type: !1023)
!3865 = !DILocalVariable(name: "s", arg: 2, scope: !3860, file: !737, line: 310, type: !97)
!3866 = !DILocation(line: 0, scope: !3860)
!3867 = !DILocation(line: 0, scope: !3557, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 312, column: 18, scope: !3860)
!3869 = !DILocation(line: 49, column: 25, scope: !3557, inlinedAt: !3868)
!3870 = !DILocation(line: 0, scope: !3538, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 49, column: 10, scope: !3557, inlinedAt: !3868)
!3872 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3871)
!3873 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3871)
!3874 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3871)
!3875 = !DILocalVariable(name: "__dest", arg: 1, scope: !3876, file: !1094, line: 26, type: !1097)
!3876 = distinct !DISubprogram(name: "memcpy", scope: !1094, file: !1094, line: 26, type: !1095, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3877)
!3877 = !{!3875, !3878, !3879}
!3878 = !DILocalVariable(name: "__src", arg: 2, scope: !3876, file: !1094, line: 26, type: !1022)
!3879 = !DILocalVariable(name: "__len", arg: 3, scope: !3876, file: !1094, line: 26, type: !97)
!3880 = !DILocation(line: 0, scope: !3876, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 312, column: 10, scope: !3860)
!3882 = !DILocation(line: 29, column: 10, scope: !3876, inlinedAt: !3881)
!3883 = !DILocation(line: 312, column: 3, scope: !3860)
!3884 = distinct !DISubprogram(name: "ximemdup", scope: !737, file: !737, line: 316, type: !3885, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!94, !1023, !756}
!3887 = !{!3888, !3889}
!3888 = !DILocalVariable(name: "p", arg: 1, scope: !3884, file: !737, line: 316, type: !1023)
!3889 = !DILocalVariable(name: "s", arg: 2, scope: !3884, file: !737, line: 316, type: !756)
!3890 = !DILocation(line: 0, scope: !3884)
!3891 = !DILocation(line: 0, scope: !3571, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 318, column: 18, scope: !3884)
!3893 = !DILocation(line: 0, scope: !3578, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 55, column: 25, scope: !3571, inlinedAt: !3892)
!3895 = !DILocation(line: 57, column: 26, scope: !3578, inlinedAt: !3894)
!3896 = !DILocation(line: 0, scope: !3538, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 55, column: 10, scope: !3571, inlinedAt: !3892)
!3898 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3897)
!3899 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3897)
!3900 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3897)
!3901 = !DILocation(line: 0, scope: !3876, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 318, column: 10, scope: !3884)
!3903 = !DILocation(line: 29, column: 10, scope: !3876, inlinedAt: !3902)
!3904 = !DILocation(line: 318, column: 3, scope: !3884)
!3905 = distinct !DISubprogram(name: "ximemdup0", scope: !737, file: !737, line: 325, type: !3906, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!101, !1023, !756}
!3908 = !{!3909, !3910, !3911}
!3909 = !DILocalVariable(name: "p", arg: 1, scope: !3905, file: !737, line: 325, type: !1023)
!3910 = !DILocalVariable(name: "s", arg: 2, scope: !3905, file: !737, line: 325, type: !756)
!3911 = !DILocalVariable(name: "result", scope: !3905, file: !737, line: 327, type: !101)
!3912 = !DILocation(line: 0, scope: !3905)
!3913 = !DILocation(line: 327, column: 30, scope: !3905)
!3914 = !DILocation(line: 0, scope: !3571, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 327, column: 18, scope: !3905)
!3916 = !DILocation(line: 0, scope: !3578, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 55, column: 25, scope: !3571, inlinedAt: !3915)
!3918 = !DILocation(line: 57, column: 26, scope: !3578, inlinedAt: !3917)
!3919 = !DILocation(line: 0, scope: !3538, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 55, column: 10, scope: !3571, inlinedAt: !3915)
!3921 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3920)
!3922 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3920)
!3923 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3920)
!3924 = !DILocation(line: 328, column: 3, scope: !3905)
!3925 = !DILocation(line: 328, column: 13, scope: !3905)
!3926 = !DILocation(line: 0, scope: !3876, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 329, column: 10, scope: !3905)
!3928 = !DILocation(line: 29, column: 10, scope: !3876, inlinedAt: !3927)
!3929 = !DILocation(line: 329, column: 3, scope: !3905)
!3930 = distinct !DISubprogram(name: "xstrdup", scope: !737, file: !737, line: 335, type: !1001, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3931)
!3931 = !{!3932}
!3932 = !DILocalVariable(name: "string", arg: 1, scope: !3930, file: !737, line: 335, type: !70)
!3933 = !DILocation(line: 0, scope: !3930)
!3934 = !DILocation(line: 337, column: 27, scope: !3930)
!3935 = !DILocation(line: 337, column: 43, scope: !3930)
!3936 = !DILocation(line: 0, scope: !3860, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 337, column: 10, scope: !3930)
!3938 = !DILocation(line: 0, scope: !3557, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 312, column: 18, scope: !3860, inlinedAt: !3937)
!3940 = !DILocation(line: 49, column: 25, scope: !3557, inlinedAt: !3939)
!3941 = !DILocation(line: 0, scope: !3538, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 49, column: 10, scope: !3557, inlinedAt: !3939)
!3943 = !DILocation(line: 39, column: 8, scope: !3545, inlinedAt: !3942)
!3944 = !DILocation(line: 39, column: 7, scope: !3538, inlinedAt: !3942)
!3945 = !DILocation(line: 40, column: 5, scope: !3545, inlinedAt: !3942)
!3946 = !DILocation(line: 0, scope: !3876, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 312, column: 10, scope: !3860, inlinedAt: !3937)
!3948 = !DILocation(line: 29, column: 10, scope: !3876, inlinedAt: !3947)
!3949 = !DILocation(line: 337, column: 3, scope: !3930)
!3950 = distinct !DISubprogram(name: "xalloc_die", scope: !660, file: !660, line: 32, type: !362, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3951)
!3951 = !{!3952}
!3952 = !DILocalVariable(name: "__errstatus", scope: !3953, file: !660, line: 34, type: !3954)
!3953 = distinct !DILexicalBlock(scope: !3950, file: !660, line: 34, column: 3)
!3954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!3955 = !DILocation(line: 34, column: 3, scope: !3953)
!3956 = !DILocation(line: 0, scope: !3953)
!3957 = !DILocation(line: 40, column: 3, scope: !3950)
!3958 = distinct !DISubprogram(name: "close_stream", scope: !773, file: !773, line: 55, type: !3959, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3995)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!95, !3961}
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !3963)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !3964)
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3963, file: !236, line: 51, baseType: !95, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3963, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3963, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3963, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3963, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3963, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3963, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3963, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3963, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3963, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3963, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3963, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3963, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3963, file: !236, line: 70, baseType: !3979, size: 64, offset: 832)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3963, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3963, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3963, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3963, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3963, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3963, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3963, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3963, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3963, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3963, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3963, file: !236, line: 93, baseType: !3979, size: 64, offset: 1344)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3963, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3963, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3963, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3963, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!3995 = !{!3996, !3997, !3999, !4000}
!3996 = !DILocalVariable(name: "stream", arg: 1, scope: !3958, file: !773, line: 55, type: !3961)
!3997 = !DILocalVariable(name: "some_pending", scope: !3958, file: !773, line: 57, type: !3998)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!3999 = !DILocalVariable(name: "prev_fail", scope: !3958, file: !773, line: 58, type: !3998)
!4000 = !DILocalVariable(name: "fclose_fail", scope: !3958, file: !773, line: 59, type: !3998)
!4001 = !DILocation(line: 0, scope: !3958)
!4002 = !DILocation(line: 57, column: 30, scope: !3958)
!4003 = !DILocalVariable(name: "__stream", arg: 1, scope: !4004, file: !1531, line: 135, type: !3961)
!4004 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1531, file: !1531, line: 135, type: !3959, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4005)
!4005 = !{!4003}
!4006 = !DILocation(line: 0, scope: !4004, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 58, column: 27, scope: !3958)
!4008 = !DILocation(line: 137, column: 10, scope: !4004, inlinedAt: !4007)
!4009 = !{!1540, !875, i64 0}
!4010 = !DILocation(line: 58, column: 43, scope: !3958)
!4011 = !DILocation(line: 59, column: 29, scope: !3958)
!4012 = !DILocation(line: 59, column: 45, scope: !3958)
!4013 = !DILocation(line: 69, column: 17, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3958, file: !773, line: 69, column: 7)
!4015 = !DILocation(line: 57, column: 50, scope: !3958)
!4016 = !DILocation(line: 69, column: 33, scope: !4014)
!4017 = !DILocation(line: 69, column: 53, scope: !4014)
!4018 = !DILocation(line: 69, column: 59, scope: !4014)
!4019 = !DILocation(line: 69, column: 7, scope: !3958)
!4020 = !DILocation(line: 71, column: 11, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4014, file: !773, line: 70, column: 5)
!4022 = !DILocation(line: 72, column: 9, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4021, file: !773, line: 71, column: 11)
!4024 = !DILocation(line: 72, column: 15, scope: !4023)
!4025 = !DILocation(line: 77, column: 1, scope: !3958)
!4026 = !DISubprogram(name: "__fpending", scope: !4027, file: !4027, line: 75, type: !4028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4027 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!97, !3961}
!4030 = distinct !DISubprogram(name: "rpl_fclose", scope: !775, file: !775, line: 58, type: !4031, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4067)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!95, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4035)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4035, file: !236, line: 51, baseType: !95, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4035, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4035, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4035, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4035, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4035, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4035, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4035, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4035, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4035, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4035, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4035, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4035, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4035, file: !236, line: 70, baseType: !4051, size: 64, offset: 832)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4035, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4035, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4035, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4035, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4035, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4035, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4035, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4035, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4035, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4035, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4035, file: !236, line: 93, baseType: !4051, size: 64, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4035, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4035, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4035, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4035, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4067 = !{!4068, !4069, !4070, !4071}
!4068 = !DILocalVariable(name: "fp", arg: 1, scope: !4030, file: !775, line: 58, type: !4033)
!4069 = !DILocalVariable(name: "saved_errno", scope: !4030, file: !775, line: 60, type: !95)
!4070 = !DILocalVariable(name: "fd", scope: !4030, file: !775, line: 63, type: !95)
!4071 = !DILocalVariable(name: "result", scope: !4030, file: !775, line: 74, type: !95)
!4072 = !DILocation(line: 0, scope: !4030)
!4073 = !DILocation(line: 63, column: 12, scope: !4030)
!4074 = !DILocation(line: 64, column: 10, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4030, file: !775, line: 64, column: 7)
!4076 = !DILocation(line: 64, column: 7, scope: !4030)
!4077 = !DILocation(line: 65, column: 12, scope: !4075)
!4078 = !DILocation(line: 65, column: 5, scope: !4075)
!4079 = !DILocation(line: 70, column: 9, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4030, file: !775, line: 70, column: 7)
!4081 = !DILocation(line: 70, column: 23, scope: !4080)
!4082 = !DILocation(line: 70, column: 33, scope: !4080)
!4083 = !DILocation(line: 70, column: 26, scope: !4080)
!4084 = !DILocation(line: 70, column: 59, scope: !4080)
!4085 = !DILocation(line: 71, column: 7, scope: !4080)
!4086 = !DILocation(line: 71, column: 10, scope: !4080)
!4087 = !DILocation(line: 70, column: 7, scope: !4030)
!4088 = !DILocation(line: 100, column: 12, scope: !4030)
!4089 = !DILocation(line: 105, column: 7, scope: !4030)
!4090 = !DILocation(line: 72, column: 19, scope: !4080)
!4091 = !DILocation(line: 105, column: 19, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4030, file: !775, line: 105, column: 7)
!4093 = !DILocation(line: 107, column: 13, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4092, file: !775, line: 106, column: 5)
!4095 = !DILocation(line: 109, column: 5, scope: !4094)
!4096 = !DILocation(line: 112, column: 1, scope: !4030)
!4097 = !DISubprogram(name: "fileno", scope: !869, file: !869, line: 809, type: !4031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4098 = !DISubprogram(name: "fclose", scope: !869, file: !869, line: 178, type: !4031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4099 = !DISubprogram(name: "__freading", scope: !4027, file: !4027, line: 51, type: !4031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4100 = !DISubprogram(name: "lseek", scope: !1343, file: !1343, line: 339, type: !4101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!258, !95, !258, !95}
!4103 = distinct !DISubprogram(name: "fd_safer_flag", scope: !777, file: !777, line: 40, type: !368, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4104)
!4104 = !{!4105, !4106, !4107, !4110}
!4105 = !DILocalVariable(name: "fd", arg: 1, scope: !4103, file: !777, line: 40, type: !95)
!4106 = !DILocalVariable(name: "flag", arg: 2, scope: !4103, file: !777, line: 40, type: !95)
!4107 = !DILocalVariable(name: "f", scope: !4108, file: !777, line: 44, type: !95)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !777, line: 43, column: 5)
!4109 = distinct !DILexicalBlock(scope: !4103, file: !777, line: 42, column: 7)
!4110 = !DILocalVariable(name: "saved_errno", scope: !4108, file: !777, line: 45, type: !95)
!4111 = !DILocation(line: 0, scope: !4103)
!4112 = !DILocation(line: 42, column: 26, scope: !4109)
!4113 = !DILocation(line: 44, column: 15, scope: !4108)
!4114 = !DILocation(line: 0, scope: !4108)
!4115 = !DILocation(line: 45, column: 25, scope: !4108)
!4116 = !DILocation(line: 46, column: 7, scope: !4108)
!4117 = !DILocation(line: 47, column: 13, scope: !4108)
!4118 = !DILocation(line: 49, column: 5, scope: !4108)
!4119 = !DILocation(line: 51, column: 3, scope: !4103)
!4120 = distinct !DISubprogram(name: "dup_safer_flag", scope: !779, file: !779, line: 34, type: !368, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4121)
!4121 = !{!4122, !4123}
!4122 = !DILocalVariable(name: "fd", arg: 1, scope: !4120, file: !779, line: 34, type: !95)
!4123 = !DILocalVariable(name: "flag", arg: 2, scope: !4120, file: !779, line: 34, type: !95)
!4124 = !DILocation(line: 0, scope: !4120)
!4125 = !DILocation(line: 36, column: 27, scope: !4120)
!4126 = !DILocation(line: 36, column: 21, scope: !4120)
!4127 = !DILocation(line: 36, column: 10, scope: !4120)
!4128 = !DILocation(line: 36, column: 3, scope: !4120)
!4129 = distinct !DISubprogram(name: "rpl_fflush", scope: !781, file: !781, line: 130, type: !4130, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4166)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!95, !4132}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4134)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4135)
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4134, file: !236, line: 51, baseType: !95, size: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4134, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4134, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4134, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4134, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4134, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4134, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4134, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4134, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4134, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4134, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4134, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4134, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4134, file: !236, line: 70, baseType: !4150, size: 64, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4134, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4134, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4134, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4134, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4134, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4134, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4134, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4134, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4134, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4134, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4134, file: !236, line: 93, baseType: !4150, size: 64, offset: 1344)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4134, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4134, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4134, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4134, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4166 = !{!4167}
!4167 = !DILocalVariable(name: "stream", arg: 1, scope: !4129, file: !781, line: 130, type: !4132)
!4168 = !DILocation(line: 0, scope: !4129)
!4169 = !DILocation(line: 151, column: 14, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4129, file: !781, line: 151, column: 7)
!4171 = !DILocation(line: 151, column: 22, scope: !4170)
!4172 = !DILocation(line: 151, column: 27, scope: !4170)
!4173 = !DILocation(line: 151, column: 7, scope: !4129)
!4174 = !DILocation(line: 152, column: 12, scope: !4170)
!4175 = !DILocation(line: 152, column: 5, scope: !4170)
!4176 = !DILocalVariable(name: "fp", arg: 1, scope: !4177, file: !781, line: 42, type: !4132)
!4177 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !781, file: !781, line: 42, type: !4178, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !4132}
!4180 = !{!4176}
!4181 = !DILocation(line: 0, scope: !4177, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 157, column: 3, scope: !4129)
!4183 = !DILocation(line: 44, column: 12, scope: !4184, inlinedAt: !4182)
!4184 = distinct !DILexicalBlock(scope: !4177, file: !781, line: 44, column: 7)
!4185 = !DILocation(line: 44, column: 19, scope: !4184, inlinedAt: !4182)
!4186 = !DILocation(line: 44, column: 7, scope: !4177, inlinedAt: !4182)
!4187 = !DILocation(line: 46, column: 5, scope: !4184, inlinedAt: !4182)
!4188 = !DILocation(line: 159, column: 10, scope: !4129)
!4189 = !DILocation(line: 159, column: 3, scope: !4129)
!4190 = !DILocation(line: 236, column: 1, scope: !4129)
!4191 = !DISubprogram(name: "fflush", scope: !869, file: !869, line: 230, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4192 = distinct !DISubprogram(name: "rpl_fseeko", scope: !783, file: !783, line: 28, type: !4193, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4230)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!95, !4195, !4229, !95}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4197)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4198)
!4198 = !{!4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4197, file: !236, line: 51, baseType: !95, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4197, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4197, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4197, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4197, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4197, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4197, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4197, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4197, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4197, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4197, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4197, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4197, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4197, file: !236, line: 70, baseType: !4213, size: 64, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4197, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4197, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4197, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4197, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4197, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4197, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4197, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4197, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4197, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4197, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4197, file: !236, line: 93, baseType: !4213, size: 64, offset: 1344)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4197, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4197, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4197, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4197, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !869, line: 63, baseType: !258)
!4230 = !{!4231, !4232, !4233, !4234}
!4231 = !DILocalVariable(name: "fp", arg: 1, scope: !4192, file: !783, line: 28, type: !4195)
!4232 = !DILocalVariable(name: "offset", arg: 2, scope: !4192, file: !783, line: 28, type: !4229)
!4233 = !DILocalVariable(name: "whence", arg: 3, scope: !4192, file: !783, line: 28, type: !95)
!4234 = !DILocalVariable(name: "pos", scope: !4235, file: !783, line: 123, type: !4229)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !783, line: 119, column: 5)
!4236 = distinct !DILexicalBlock(scope: !4192, file: !783, line: 55, column: 7)
!4237 = !DILocation(line: 0, scope: !4192)
!4238 = !DILocation(line: 55, column: 12, scope: !4236)
!4239 = !{!1540, !814, i64 16}
!4240 = !DILocation(line: 55, column: 33, scope: !4236)
!4241 = !{!1540, !814, i64 8}
!4242 = !DILocation(line: 55, column: 25, scope: !4236)
!4243 = !DILocation(line: 56, column: 7, scope: !4236)
!4244 = !DILocation(line: 56, column: 15, scope: !4236)
!4245 = !DILocation(line: 56, column: 37, scope: !4236)
!4246 = !{!1540, !814, i64 32}
!4247 = !DILocation(line: 56, column: 29, scope: !4236)
!4248 = !DILocation(line: 57, column: 7, scope: !4236)
!4249 = !DILocation(line: 57, column: 15, scope: !4236)
!4250 = !{!1540, !814, i64 72}
!4251 = !DILocation(line: 57, column: 29, scope: !4236)
!4252 = !DILocation(line: 55, column: 7, scope: !4192)
!4253 = !DILocation(line: 123, column: 26, scope: !4235)
!4254 = !DILocation(line: 123, column: 19, scope: !4235)
!4255 = !DILocation(line: 0, scope: !4235)
!4256 = !DILocation(line: 124, column: 15, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4235, file: !783, line: 124, column: 11)
!4258 = !DILocation(line: 124, column: 11, scope: !4235)
!4259 = !DILocation(line: 135, column: 19, scope: !4235)
!4260 = !DILocation(line: 136, column: 12, scope: !4235)
!4261 = !DILocation(line: 136, column: 20, scope: !4235)
!4262 = !{!1540, !1253, i64 144}
!4263 = !DILocation(line: 167, column: 7, scope: !4235)
!4264 = !DILocation(line: 169, column: 10, scope: !4192)
!4265 = !DILocation(line: 169, column: 3, scope: !4192)
!4266 = !DILocation(line: 170, column: 1, scope: !4192)
!4267 = !DISubprogram(name: "fseeko", scope: !869, file: !869, line: 736, type: !4268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!95, !4195, !258, !95}
!4270 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !667, file: !667, line: 100, type: !4271, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !4274)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!97, !2023, !70, !97, !4273}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!4274 = !{!4275, !4276, !4277, !4278, !4279}
!4275 = !DILocalVariable(name: "pwc", arg: 1, scope: !4270, file: !667, line: 100, type: !2023)
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4270, file: !667, line: 100, type: !70)
!4277 = !DILocalVariable(name: "n", arg: 3, scope: !4270, file: !667, line: 100, type: !97)
!4278 = !DILocalVariable(name: "ps", arg: 4, scope: !4270, file: !667, line: 100, type: !4273)
!4279 = !DILocalVariable(name: "ret", scope: !4270, file: !667, line: 130, type: !97)
!4280 = !DILocation(line: 0, scope: !4270)
!4281 = !DILocation(line: 105, column: 9, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4270, file: !667, line: 105, column: 7)
!4283 = !DILocation(line: 105, column: 7, scope: !4270)
!4284 = !DILocation(line: 117, column: 10, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4270, file: !667, line: 117, column: 7)
!4286 = !DILocation(line: 117, column: 7, scope: !4270)
!4287 = !DILocation(line: 130, column: 16, scope: !4270)
!4288 = !DILocation(line: 135, column: 11, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4270, file: !667, line: 135, column: 7)
!4290 = !DILocation(line: 135, column: 25, scope: !4289)
!4291 = !DILocation(line: 135, column: 30, scope: !4289)
!4292 = !DILocation(line: 135, column: 7, scope: !4270)
!4293 = !DILocalVariable(name: "ps", arg: 1, scope: !4294, file: !1997, line: 1135, type: !4273)
!4294 = distinct !DISubprogram(name: "mbszero", scope: !1997, file: !1997, line: 1135, type: !4295, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !4273}
!4297 = !{!4293}
!4298 = !DILocation(line: 0, scope: !4294, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 137, column: 5, scope: !4289)
!4300 = !DILocalVariable(name: "__dest", arg: 1, scope: !4301, file: !1094, line: 57, type: !94)
!4301 = distinct !DISubprogram(name: "memset", scope: !1094, file: !1094, line: 57, type: !2006, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !4302)
!4302 = !{!4300, !4303, !4304}
!4303 = !DILocalVariable(name: "__ch", arg: 2, scope: !4301, file: !1094, line: 57, type: !95)
!4304 = !DILocalVariable(name: "__len", arg: 3, scope: !4301, file: !1094, line: 57, type: !97)
!4305 = !DILocation(line: 0, scope: !4301, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 1137, column: 3, scope: !4294, inlinedAt: !4299)
!4307 = !DILocation(line: 59, column: 10, scope: !4301, inlinedAt: !4306)
!4308 = !DILocation(line: 137, column: 5, scope: !4289)
!4309 = !DILocation(line: 138, column: 11, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4270, file: !667, line: 138, column: 7)
!4311 = !DILocation(line: 138, column: 7, scope: !4270)
!4312 = !DILocation(line: 139, column: 5, scope: !4310)
!4313 = !DILocation(line: 143, column: 26, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4270, file: !667, line: 143, column: 7)
!4315 = !DILocation(line: 143, column: 41, scope: !4314)
!4316 = !DILocation(line: 143, column: 7, scope: !4270)
!4317 = !DILocation(line: 145, column: 15, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !667, line: 145, column: 11)
!4319 = distinct !DILexicalBlock(scope: !4314, file: !667, line: 144, column: 5)
!4320 = !DILocation(line: 145, column: 11, scope: !4319)
!4321 = !DILocation(line: 146, column: 32, scope: !4318)
!4322 = !DILocation(line: 146, column: 16, scope: !4318)
!4323 = !DILocation(line: 146, column: 14, scope: !4318)
!4324 = !DILocation(line: 146, column: 9, scope: !4318)
!4325 = !DILocation(line: 286, column: 1, scope: !4270)
!4326 = !DISubprogram(name: "mbsinit", scope: !4327, file: !4327, line: 293, type: !4328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4327 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!95, !4330}
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!4332 = !DILocation(line: 0, scope: !685)
!4333 = !DILocation(line: 46, column: 12, scope: !685)
!4334 = !DILocation(line: 45, column: 12, scope: !685)
!4335 = !DILocation(line: 55, column: 9, scope: !698)
!4336 = !DILocation(line: 55, column: 27, scope: !698)
!4337 = !DILocation(line: 55, column: 9, scope: !699)
!4338 = !DILocation(line: 57, column: 22, scope: !697)
!4339 = !DILocation(line: 0, scope: !697)
!4340 = !DILocation(line: 58, column: 22, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !697, file: !686, line: 58, column: 13)
!4342 = !DILocation(line: 58, column: 26, scope: !4341)
!4343 = !DILocation(line: 58, column: 29, scope: !4341)
!4344 = !DILocation(line: 58, column: 35, scope: !4341)
!4345 = !DILocation(line: 58, column: 13, scope: !697)
!4346 = !DILocation(line: 69, column: 14, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !685, file: !686, line: 69, column: 7)
!4348 = !DILocation(line: 69, column: 63, scope: !4347)
!4349 = !DILocation(line: 69, column: 7, scope: !685)
!4350 = !DILocation(line: 71, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4347, file: !686, line: 70, column: 5)
!4352 = !DILocation(line: 71, column: 13, scope: !4351)
!4353 = !DILocation(line: 72, column: 7, scope: !4351)
!4354 = !DILocation(line: 106, column: 7, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !685, file: !686, line: 106, column: 7)
!4356 = !DILocation(line: 106, column: 17, scope: !4355)
!4357 = !DILocation(line: 106, column: 7, scope: !685)
!4358 = !DILocation(line: 115, column: 13, scope: !702)
!4359 = !DILocation(line: 115, column: 7, scope: !685)
!4360 = !DILocation(line: 119, column: 33, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !701, file: !686, line: 119, column: 11)
!4362 = !DILocation(line: 119, column: 26, scope: !4361)
!4363 = !DILocation(line: 0, scope: !701)
!4364 = !DILocation(line: 119, column: 53, scope: !4361)
!4365 = !DILocation(line: 120, column: 11, scope: !4361)
!4366 = !DILocation(line: 120, column: 21, scope: !4361)
!4367 = !DILocation(line: 120, column: 49, scope: !4361)
!4368 = !DILocation(line: 120, column: 14, scope: !4361)
!4369 = !DILocation(line: 120, column: 63, scope: !4361)
!4370 = !DILocation(line: 121, column: 11, scope: !4361)
!4371 = !DILocation(line: 121, column: 36, scope: !4361)
!4372 = !DILocation(line: 121, column: 29, scope: !4361)
!4373 = !DILocation(line: 121, column: 56, scope: !4361)
!4374 = !DILocation(line: 122, column: 11, scope: !4361)
!4375 = !DILocation(line: 122, column: 21, scope: !4361)
!4376 = !DILocation(line: 122, column: 49, scope: !4361)
!4377 = !DILocation(line: 122, column: 14, scope: !4361)
!4378 = !DILocation(line: 122, column: 63, scope: !4361)
!4379 = !DILocation(line: 119, column: 11, scope: !701)
!4380 = !DILocation(line: 126, column: 13, scope: !705)
!4381 = !DILocation(line: 126, column: 7, scope: !685)
!4382 = !DILocation(line: 130, column: 33, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !704, file: !686, line: 130, column: 11)
!4384 = !DILocation(line: 130, column: 26, scope: !4383)
!4385 = !DILocation(line: 0, scope: !704)
!4386 = !DILocation(line: 130, column: 53, scope: !4383)
!4387 = !DILocation(line: 131, column: 11, scope: !4383)
!4388 = !DILocation(line: 131, column: 21, scope: !4383)
!4389 = !DILocation(line: 131, column: 49, scope: !4383)
!4390 = !DILocation(line: 131, column: 14, scope: !4383)
!4391 = !DILocation(line: 131, column: 63, scope: !4383)
!4392 = !DILocation(line: 132, column: 11, scope: !4383)
!4393 = !DILocation(line: 132, column: 36, scope: !4383)
!4394 = !DILocation(line: 132, column: 29, scope: !4383)
!4395 = !DILocation(line: 132, column: 56, scope: !4383)
!4396 = !DILocation(line: 133, column: 11, scope: !4383)
!4397 = !DILocation(line: 133, column: 21, scope: !4383)
!4398 = !DILocation(line: 133, column: 49, scope: !4383)
!4399 = !DILocation(line: 133, column: 14, scope: !4383)
!4400 = !DILocation(line: 133, column: 63, scope: !4383)
!4401 = !DILocation(line: 130, column: 11, scope: !704)
!4402 = !DILocation(line: 155, column: 2, scope: !685)
!4403 = !DILocation(line: 157, column: 23, scope: !707)
!4404 = !DILocation(line: 0, scope: !707)
!4405 = !DILocation(line: 158, column: 12, scope: !707)
!4406 = !DILocation(line: 158, column: 5, scope: !707)
!4407 = !DILocation(line: 159, column: 12, scope: !707)
!4408 = !DILocation(line: 159, column: 5, scope: !707)
!4409 = !DILocation(line: 160, column: 11, scope: !707)
!4410 = !DILocation(line: 162, column: 11, scope: !707)
!4411 = !DILocation(line: 166, column: 1, scope: !685)
!4412 = !DISubprogram(name: "pipe2", scope: !1343, file: !1343, line: 442, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4413 = !DISubprogram(name: "pipe", scope: !1343, file: !1343, line: 437, type: !4414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !858)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!95, !403}
!4416 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !785, file: !785, line: 27, type: !3522, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4417)
!4417 = !{!4418, !4419, !4420, !4421}
!4418 = !DILocalVariable(name: "ptr", arg: 1, scope: !4416, file: !785, line: 27, type: !94)
!4419 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4416, file: !785, line: 27, type: !97)
!4420 = !DILocalVariable(name: "size", arg: 3, scope: !4416, file: !785, line: 27, type: !97)
!4421 = !DILocalVariable(name: "nbytes", scope: !4416, file: !785, line: 29, type: !97)
!4422 = !DILocation(line: 0, scope: !4416)
!4423 = !DILocation(line: 30, column: 7, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4416, file: !785, line: 30, column: 7)
!4425 = !DILocalVariable(name: "ptr", arg: 1, scope: !4426, file: !3614, line: 2057, type: !94)
!4426 = distinct !DISubprogram(name: "rpl_realloc", scope: !3614, file: !3614, line: 2057, type: !3606, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4427)
!4427 = !{!4425, !4428}
!4428 = !DILocalVariable(name: "size", arg: 2, scope: !4426, file: !3614, line: 2057, type: !97)
!4429 = !DILocation(line: 0, scope: !4426, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 37, column: 10, scope: !4416)
!4431 = !DILocation(line: 2059, column: 24, scope: !4426, inlinedAt: !4430)
!4432 = !DILocation(line: 2059, column: 10, scope: !4426, inlinedAt: !4430)
!4433 = !DILocation(line: 37, column: 3, scope: !4416)
!4434 = !DILocation(line: 32, column: 7, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4424, file: !785, line: 31, column: 5)
!4436 = !DILocation(line: 32, column: 13, scope: !4435)
!4437 = !DILocation(line: 33, column: 7, scope: !4435)
!4438 = !DILocation(line: 38, column: 1, scope: !4416)
!4439 = distinct !DISubprogram(name: "hard_locale", scope: !711, file: !711, line: 28, type: !4440, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4442)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!219, !95}
!4442 = !{!4443, !4444}
!4443 = !DILocalVariable(name: "category", arg: 1, scope: !4439, file: !711, line: 28, type: !95)
!4444 = !DILocalVariable(name: "locale", scope: !4439, file: !711, line: 30, type: !4445)
!4445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4446)
!4446 = !{!4447}
!4447 = !DISubrange(count: 257)
!4448 = !DILocation(line: 0, scope: !4439)
!4449 = !DILocation(line: 30, column: 3, scope: !4439)
!4450 = !DILocation(line: 30, column: 8, scope: !4439)
!4451 = !DILocation(line: 32, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4439, file: !711, line: 32, column: 7)
!4453 = !DILocation(line: 32, column: 7, scope: !4439)
!4454 = !DILocalVariable(name: "__s1", arg: 1, scope: !4455, file: !887, line: 1359, type: !70)
!4455 = distinct !DISubprogram(name: "streq", scope: !887, file: !887, line: 1359, type: !888, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4456)
!4456 = !{!4454, !4457}
!4457 = !DILocalVariable(name: "__s2", arg: 2, scope: !4455, file: !887, line: 1359, type: !70)
!4458 = !DILocation(line: 0, scope: !4455, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 35, column: 9, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4439, file: !711, line: 35, column: 7)
!4461 = !DILocation(line: 1361, column: 11, scope: !4455, inlinedAt: !4459)
!4462 = !DILocation(line: 35, column: 29, scope: !4460)
!4463 = !DILocation(line: 0, scope: !4455, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 35, column: 32, scope: !4460)
!4465 = !DILocation(line: 1361, column: 11, scope: !4455, inlinedAt: !4464)
!4466 = !DILocation(line: 1361, column: 10, scope: !4455, inlinedAt: !4464)
!4467 = !DILocation(line: 35, column: 7, scope: !4439)
!4468 = !DILocation(line: 46, column: 3, scope: !4439)
!4469 = !DILocation(line: 47, column: 1, scope: !4439)
!4470 = distinct !DISubprogram(name: "setlocale_null_r", scope: !792, file: !792, line: 154, type: !4471, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4473)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!95, !95, !101, !97}
!4473 = !{!4474, !4475, !4476}
!4474 = !DILocalVariable(name: "category", arg: 1, scope: !4470, file: !792, line: 154, type: !95)
!4475 = !DILocalVariable(name: "buf", arg: 2, scope: !4470, file: !792, line: 154, type: !101)
!4476 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4470, file: !792, line: 154, type: !97)
!4477 = !DILocation(line: 0, scope: !4470)
!4478 = !DILocation(line: 159, column: 10, scope: !4470)
!4479 = !DILocation(line: 159, column: 3, scope: !4470)
!4480 = distinct !DISubprogram(name: "setlocale_null", scope: !792, file: !792, line: 186, type: !4481, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4483)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!70, !95}
!4483 = !{!4484}
!4484 = !DILocalVariable(name: "category", arg: 1, scope: !4480, file: !792, line: 186, type: !95)
!4485 = !DILocation(line: 0, scope: !4480)
!4486 = !DILocation(line: 189, column: 10, scope: !4480)
!4487 = !DILocation(line: 189, column: 3, scope: !4480)
!4488 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !794, file: !794, line: 35, type: !4481, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4489)
!4489 = !{!4490, !4491}
!4490 = !DILocalVariable(name: "category", arg: 1, scope: !4488, file: !794, line: 35, type: !95)
!4491 = !DILocalVariable(name: "result", scope: !4488, file: !794, line: 37, type: !70)
!4492 = !DILocation(line: 0, scope: !4488)
!4493 = !DILocation(line: 37, column: 24, scope: !4488)
!4494 = !DILocation(line: 62, column: 3, scope: !4488)
!4495 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !794, file: !794, line: 66, type: !4471, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4496)
!4496 = !{!4497, !4498, !4499, !4500, !4501}
!4497 = !DILocalVariable(name: "category", arg: 1, scope: !4495, file: !794, line: 66, type: !95)
!4498 = !DILocalVariable(name: "buf", arg: 2, scope: !4495, file: !794, line: 66, type: !101)
!4499 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4495, file: !794, line: 66, type: !97)
!4500 = !DILocalVariable(name: "result", scope: !4495, file: !794, line: 111, type: !70)
!4501 = !DILocalVariable(name: "length", scope: !4502, file: !794, line: 125, type: !97)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !794, line: 124, column: 5)
!4503 = distinct !DILexicalBlock(scope: !4495, file: !794, line: 113, column: 7)
!4504 = !DILocation(line: 0, scope: !4495)
!4505 = !DILocation(line: 0, scope: !4488, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 111, column: 24, scope: !4495)
!4507 = !DILocation(line: 37, column: 24, scope: !4488, inlinedAt: !4506)
!4508 = !DILocation(line: 113, column: 14, scope: !4503)
!4509 = !DILocation(line: 113, column: 7, scope: !4495)
!4510 = !DILocation(line: 116, column: 19, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !794, line: 116, column: 11)
!4512 = distinct !DILexicalBlock(scope: !4503, file: !794, line: 114, column: 5)
!4513 = !DILocation(line: 116, column: 11, scope: !4512)
!4514 = !DILocation(line: 120, column: 16, scope: !4511)
!4515 = !DILocation(line: 120, column: 9, scope: !4511)
!4516 = !DILocation(line: 125, column: 23, scope: !4502)
!4517 = !DILocation(line: 0, scope: !4502)
!4518 = !DILocation(line: 126, column: 18, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4502, file: !794, line: 126, column: 11)
!4520 = !DILocation(line: 126, column: 11, scope: !4502)
!4521 = !DILocation(line: 128, column: 39, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4519, file: !794, line: 127, column: 9)
!4523 = !DILocalVariable(name: "__dest", arg: 1, scope: !4524, file: !1094, line: 26, type: !1097)
!4524 = distinct !DISubprogram(name: "memcpy", scope: !1094, file: !1094, line: 26, type: !1095, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4525)
!4525 = !{!4523, !4526, !4527}
!4526 = !DILocalVariable(name: "__src", arg: 2, scope: !4524, file: !1094, line: 26, type: !1022)
!4527 = !DILocalVariable(name: "__len", arg: 3, scope: !4524, file: !1094, line: 26, type: !97)
!4528 = !DILocation(line: 0, scope: !4524, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 128, column: 11, scope: !4522)
!4530 = !DILocation(line: 29, column: 10, scope: !4524, inlinedAt: !4529)
!4531 = !DILocation(line: 129, column: 11, scope: !4522)
!4532 = !DILocation(line: 133, column: 23, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !794, line: 133, column: 15)
!4534 = distinct !DILexicalBlock(scope: !4519, file: !794, line: 132, column: 9)
!4535 = !DILocation(line: 133, column: 15, scope: !4534)
!4536 = !DILocation(line: 138, column: 44, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4533, file: !794, line: 134, column: 13)
!4538 = !DILocation(line: 0, scope: !4524, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 138, column: 15, scope: !4537)
!4540 = !DILocation(line: 29, column: 10, scope: !4524, inlinedAt: !4539)
!4541 = !DILocation(line: 139, column: 15, scope: !4537)
!4542 = !DILocation(line: 139, column: 32, scope: !4537)
!4543 = !DILocation(line: 140, column: 13, scope: !4537)
!4544 = !DILocation(line: 0, scope: !4503)
!4545 = !DILocation(line: 145, column: 1, scope: !4495)
