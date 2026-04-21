; ModuleID = 'src/nice.bc'
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
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION] [COMMAND [ARG]...]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [222 x i8] c"Run COMMAND with an adjusted niceness, which affects process scheduling.\0AWith no COMMAND, print the current niceness.  Niceness values range from\0A%d (most favorable to the process) to %d (least favorable to the process).\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [5 x i8] c"nice\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [74 x i8] c"  -n, --adjustment=N\0A         add integer N to the niceness (default 10)\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !39
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !49
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"+n:\00", align 1, !dbg !54
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.57, i32 1, ptr null, i32 110 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !59
@optarg = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !152
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !157
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid adjustment %s\00", align 1, !dbg !162
@.str.15 = private unnamed_addr constant [43 x i8] c"a command must be given with an adjustment\00", align 1, !dbg !167
@.str.16 = private unnamed_addr constant [20 x i8] c"cannot get niceness\00", align 1, !dbg !172
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !177
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot set niceness\00", align 1, !dbg !179
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !181
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !186
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !191
@.str.21 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !269
@.str.22 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !271
@.str.23 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !273
@.str.24 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !275
@.str.38 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !315
@.str.39 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !317
@.str.40 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !319
@.str.41 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !324
@.str.42 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !329
@.str.43 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !334
@.str.44 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !339
@.str.45 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !341
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !343
@.str.47 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !345
@.str.48 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1, !dbg !347
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !358
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !360
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !365
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !370
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !375
@.str.57 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1, !dbg !380
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !385
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !387
@.str.25 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !399
@Version = dso_local local_unnamed_addr global ptr @.str.25, align 8, !dbg !402
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !406
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !419
@.str.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !411
@.str.1.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !413
@.str.2.30 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !415
@.str.3.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !417
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !421
@stderr = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !427
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !463
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !429
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !453
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !455
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !457
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !459
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !461
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !465
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !467
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !472
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !477
@.str.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !483
@.str.1.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !485
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !487
@.str.60 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !518
@.str.1.61 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !521
@.str.2.62 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !523
@.str.3.63 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !528
@.str.4.64 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !530
@.str.5.65 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !532
@.str.6.66 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !534
@.str.7.67 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !536
@.str.8.68 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !538
@.str.9.69 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !540
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.60, ptr @.str.1.61, ptr @.str.2.62, ptr @.str.3.63, ptr @.str.4.64, ptr @.str.5.65, ptr @.str.6.66, ptr @.str.7.67, ptr @.str.8.68, ptr @.str.9.69, ptr null], align 8, !dbg !542
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !567
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !581
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !619
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !626
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !583
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !628
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !571
@.str.10.72 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !588
@.str.11.70 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !590
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !592
@.str.13.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !594
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !596
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !632
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !635
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !637
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !639
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !641
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !643
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !648
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !653
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !655
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !660
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !665
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !670
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !675
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !677
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !682
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !687
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !692
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !697
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !699
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !701
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !703
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !705
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !707
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !709
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !714
@exit_failure = dso_local global i32 1, align 4, !dbg !722
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !728
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !731
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !733
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !735
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !738
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !753
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !756

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !835 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !839, metadata !DIExpression()), !dbg !840
  %2 = icmp eq i32 %0, 0, !dbg !841
  br i1 %2, label %8, label %3, !dbg !843

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !844, !tbaa !846
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !844
  %6 = load ptr, ptr @program_name, align 8, !dbg !844, !tbaa !846
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !844
  br label %38, !dbg !844

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !850
  %10 = load ptr, ptr @program_name, align 8, !dbg !850, !tbaa !846
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !850
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !852
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef -20, i32 noundef 19) #39, !dbg !852
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !853
  %15 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !846
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !853
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !856
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !856
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !857
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !857
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !858
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !858
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !859
  %21 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %20, ptr noundef nonnull @.str.3) #39, !dbg !859
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !865
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !867
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #39, !dbg !867
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata !885, metadata !879, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata ptr poison, metadata !878, metadata !DIExpression()), !dbg !883
  tail call void @emit_bug_reporting_address() #39, !dbg !886
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !887
  call void @llvm.dbg.value(metadata ptr %24, metadata !881, metadata !DIExpression()), !dbg !883
  %25 = icmp eq ptr %24, null, !dbg !888
  br i1 %25, label %33, label %26, !dbg !890

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #40, !dbg !891
  %28 = icmp eq i32 %27, 0, !dbg !891
  br i1 %28, label %33, label %29, !dbg !892

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #39, !dbg !893
  %31 = load ptr, ptr @stdout, align 8, !dbg !893, !tbaa !846
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !893
  br label %33, !dbg !895

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !878, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !883
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !896
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3) #39, !dbg !896
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #39, !dbg !897
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #39, !dbg !897
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !898
  unreachable, !dbg !898
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !899 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !903 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !909 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !912 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !193 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !197, metadata !DIExpression()), !dbg !915
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !198, metadata !DIExpression()), !dbg !915
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !916, !tbaa !917
  %3 = icmp eq i32 %2, -1, !dbg !919
  br i1 %3, label %4, label %16, !dbg !920

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.21) #39, !dbg !921
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !199, metadata !DIExpression()), !dbg !922
  %6 = icmp eq ptr %5, null, !dbg !923
  br i1 %6, label %14, label %7, !dbg !924

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !925, !tbaa !926
  %9 = icmp eq i8 %8, 0, !dbg !925
  br i1 %9, label %14, label %10, !dbg !927

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.22, metadata !934, metadata !DIExpression()), !dbg !935
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.22) #40, !dbg !937
  %12 = icmp eq i32 %11, 0, !dbg !938
  %13 = zext i1 %12 to i32, !dbg !927
  br label %14, !dbg !927

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !939, !tbaa !917
  br label %16, !dbg !940

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !941
  %18 = icmp eq i32 %17, 0, !dbg !941
  br i1 %18, label %22, label %19, !dbg !943

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !944, !tbaa !846
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !944
  br label %121, !dbg !946

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !202, metadata !DIExpression()), !dbg !915
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.23) #40, !dbg !947
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !948
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !203, metadata !DIExpression()), !dbg !915
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !949
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !204, metadata !DIExpression()), !dbg !915
  %26 = icmp eq ptr %25, null, !dbg !950
  br i1 %26, label %53, label %27, !dbg !951

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !952
  br i1 %28, label %53, label %29, !dbg !953

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !205, metadata !DIExpression()), !dbg !954
  tail call void @llvm.dbg.value(metadata i64 0, metadata !209, metadata !DIExpression()), !dbg !954
  %30 = icmp ult ptr %24, %25, !dbg !955
  br i1 %30, label %31, label %53, !dbg !956

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !915
  %33 = load ptr, ptr %32, align 8, !tbaa !846
  br label %34, !dbg !956

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !205, metadata !DIExpression()), !dbg !954
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !209, metadata !DIExpression()), !dbg !954
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !957
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !205, metadata !DIExpression()), !dbg !954
  %38 = load i8, ptr %35, align 1, !dbg !957, !tbaa !926
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !957
  %41 = load i16, ptr %40, align 2, !dbg !957, !tbaa !958
  %42 = freeze i16 %41, !dbg !960
  %43 = lshr i16 %42, 13, !dbg !960
  %44 = and i16 %43, 1, !dbg !960
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !961
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !209, metadata !DIExpression()), !dbg !954
  %47 = icmp ult ptr %37, %25, !dbg !955
  %48 = icmp ult i64 %46, 2, !dbg !962
  %49 = select i1 %47, i1 %48, i1 false, !dbg !962
  br i1 %49, label %34, label %50, !dbg !956, !llvm.loop !963

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !961
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !965
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !967
  br label %53, !dbg !967

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !915
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !202, metadata !DIExpression()), !dbg !915
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !204, metadata !DIExpression()), !dbg !915
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.24) #40, !dbg !968
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !210, metadata !DIExpression()), !dbg !915
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !969
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !211, metadata !DIExpression()), !dbg !915
  br label %58, !dbg !970

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !915
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !202, metadata !DIExpression()), !dbg !915
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !211, metadata !DIExpression()), !dbg !915
  %61 = load i8, ptr %59, align 1, !dbg !971, !tbaa !926
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !972

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !973
  %64 = load i8, ptr %63, align 1, !dbg !976, !tbaa !926
  %65 = icmp ne i8 %64, 45, !dbg !977
  %66 = select i1 %65, i1 %60, i1 false, !dbg !978
  br label %67, !dbg !978

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !202, metadata !DIExpression()), !dbg !915
  %69 = tail call ptr @__ctype_b_loc() #42, !dbg !979
  %70 = load ptr, ptr %69, align 8, !dbg !979, !tbaa !846
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !979
  %73 = load i16, ptr %72, align 2, !dbg !979, !tbaa !958
  %74 = and i16 %73, 8192, !dbg !979
  %75 = icmp eq i16 %74, 0, !dbg !979
  br i1 %75, label %89, label %76, !dbg !981

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !982
  br i1 %77, label %91, label %78, !dbg !985

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !986
  %80 = load i8, ptr %79, align 1, !dbg !986, !tbaa !926
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !986
  %83 = load i16, ptr %82, align 2, !dbg !986, !tbaa !958
  %84 = and i16 %83, 8192, !dbg !986
  %85 = icmp eq i16 %84, 0, !dbg !986
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !987
  br i1 %88, label %89, label %91, !dbg !987

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !988
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !211, metadata !DIExpression()), !dbg !915
  br label %58, !dbg !970, !llvm.loop !989

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !915
  %92 = ptrtoint ptr %24 to i64, !dbg !991
  %93 = load ptr, ptr @stdout, align 8, !dbg !991, !tbaa !846
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !928, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata !885, metadata !934, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !264, metadata !DIExpression()), !dbg !915
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.38, i64 noundef 6) #40, !dbg !1012
  %96 = icmp eq i32 %95, 0, !dbg !1012
  br i1 %96, label %100, label %97, !dbg !1014

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.39, i64 noundef 9) #40, !dbg !1015
  %99 = icmp eq i32 %98, 0, !dbg !1015
  br i1 %99, label %100, label %103, !dbg !1016

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1017
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #39, !dbg !1017
  br label %106, !dbg !1019

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1020
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #39, !dbg !1020
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !846
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %107), !dbg !1022
  %109 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !846
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %109), !dbg !1023
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1024
  %112 = sub i64 %111, %92, !dbg !1024
  %113 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !846
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1024
  %115 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !846
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %115), !dbg !1025
  %117 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !846
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %117), !dbg !1026
  %119 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !846
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1027
  br label %121, !dbg !1028

121:                                              ; preds = %106, %19
  ret void, !dbg !1028
}

; Function Attrs: nounwind
declare !dbg !1029 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1033 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1037 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1039 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1042 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1045 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1048 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1051 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1057 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1058 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !85 {
  %3 = alloca i64, align 8, !DIAssignID !1064
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !1064, metadata ptr %3, metadata !DIExpression()), !dbg !1065
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !91, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !92, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata i32 10, metadata !94, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr null, metadata !95, metadata !DIExpression()), !dbg !1066
  %4 = load ptr, ptr %1, align 8, !dbg !1067, !tbaa !846
  tail call void @set_program_name(ptr noundef %4) #39, !dbg !1068
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1069
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1070
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1071
  tail call void @llvm.dbg.value(metadata i32 125, metadata !1072, metadata !DIExpression()), !dbg !1075
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1077, !tbaa !917
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1079
  tail call void @llvm.dbg.value(metadata i32 1, metadata !100, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr null, metadata !95, metadata !DIExpression()), !dbg !1066
  %9 = icmp sgt i32 %0, 1, !dbg !1080
  br i1 %9, label %.preheader, label %63, !dbg !1081

.preheader:                                       ; preds = %2
  br label %10, !dbg !1082

10:                                               ; preds = %.preheader, %49
  %11 = phi ptr [ %51, %49 ], [ null, %.preheader ]
  %12 = phi i32 [ %50, %49 ], [ 1, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !95, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !100, metadata !DIExpression()), !dbg !1066
  %13 = sext i32 %12 to i64, !dbg !1083
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !1083
  %15 = load ptr, ptr %14, align 8, !dbg !1083, !tbaa !846
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !101, metadata !DIExpression()), !dbg !1084
  %16 = load i8, ptr %15, align 1, !dbg !1085, !tbaa !926
  %17 = icmp eq i8 %16, 45, !dbg !1086
  br i1 %17, label %18, label %32, !dbg !1082

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1087
  %20 = load i8, ptr %19, align 1, !dbg !1087, !tbaa !926
  %21 = icmp eq i8 %20, 45, !dbg !1088
  %22 = icmp eq i8 %20, 43
  %23 = or i1 %21, %22, !dbg !1089
  %24 = select i1 %23, i64 2, i64 1, !dbg !1090
  %25 = getelementptr inbounds i8, ptr %15, i64 %24, !dbg !1091
  %26 = load i8, ptr %25, align 1, !dbg !1091, !tbaa !926
  %27 = zext i8 %26 to i32, !dbg !1091
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1092, metadata !DIExpression()), !dbg !1098
  %28 = add nsw i32 %27, -48, !dbg !1100
  %29 = icmp ult i32 %28, 10, !dbg !1100
  br i1 %29, label %30, label %32, !dbg !1101

30:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !95, metadata !DIExpression()), !dbg !1066
  %31 = add nsw i32 %12, 1, !dbg !1102
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !100, metadata !DIExpression()), !dbg !1066
  br label %49, !dbg !1104

32:                                               ; preds = %18, %10
  %33 = add i32 %12, -1, !dbg !1105
  %34 = sub nsw i32 %0, %33, !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !108, metadata !DIExpression()), !dbg !1107
  %35 = sext i32 %33 to i64, !dbg !1108
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35, !dbg !1108
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !109, metadata !DIExpression()), !dbg !1107
  %37 = load ptr, ptr %1, align 8, !dbg !1109, !tbaa !846
  store ptr %37, ptr %36, align 8, !dbg !1110, !tbaa !846
  store i32 0, ptr @optind, align 4, !dbg !1111, !tbaa !917
  %38 = tail call i32 @getopt_long(i32 noundef %34, ptr noundef nonnull %36, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1112
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !105, metadata !DIExpression()), !dbg !1107
  %39 = load i32, ptr @optind, align 4, !dbg !1113, !tbaa !917
  %40 = add i32 %33, %39, !dbg !1114
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !100, metadata !DIExpression()), !dbg !1066
  switch i32 %38, label %46 [
    i32 110, label %47
    i32 -1, label %53
    i32 -2, label %41
    i32 -3, label %42
  ], !dbg !1115

41:                                               ; preds = %32
  tail call void @usage(i32 noundef 0) #43, !dbg !1116
  unreachable, !dbg !1116

42:                                               ; preds = %32
  %43 = load ptr, ptr @stdout, align 8, !dbg !1118, !tbaa !846
  %44 = load ptr, ptr @Version, align 8, !dbg !1118, !tbaa !846
  %45 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1118
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %44, ptr noundef %45, ptr noundef null) #39, !dbg !1118
  tail call void @exit(i32 noundef 0) #41, !dbg !1118
  unreachable, !dbg !1118

46:                                               ; preds = %32
  tail call void @usage(i32 noundef 125) #43, !dbg !1119
  unreachable, !dbg !1119

47:                                               ; preds = %32
  %48 = load ptr, ptr @optarg, align 8, !dbg !1120, !tbaa !846
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !95, metadata !DIExpression()), !dbg !1066
  br label %49

49:                                               ; preds = %47, %30
  %50 = phi i32 [ %31, %30 ], [ %40, %47 ], !dbg !1121
  %51 = phi ptr [ %19, %30 ], [ %48, %47 ], !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !95, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !100, metadata !DIExpression()), !dbg !1066
  %52 = icmp slt i32 %50, %0, !dbg !1080
  br i1 %52, label %10, label %53, !dbg !1081

53:                                               ; preds = %49, %32
  %54 = phi ptr [ %51, %49 ], [ %11, %32 ], !dbg !1066
  %55 = phi i32 [ %50, %49 ], [ %40, %32 ], !dbg !1122
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !95, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !100, metadata !DIExpression()), !dbg !1066
  %56 = icmp eq ptr %54, null, !dbg !1123
  br i1 %56, label %63, label %57, !dbg !1124

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1125
  %58 = call i32 @xstrtol(ptr noundef nonnull %54, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #39, !dbg !1126
  %59 = icmp ugt i32 %58, 1, !dbg !1128
  br i1 %59, label %60, label %66, !dbg !1129

60:                                               ; preds = %57
  %61 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1130
  %62 = call ptr @quote(ptr noundef nonnull %54) #39, !dbg !1130
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %61, ptr noundef %62) #39, !dbg !1130
  unreachable, !dbg !1130

63:                                               ; preds = %2, %53
  %64 = phi i32 [ %55, %53 ], [ 1, %2 ]
  tail call void @llvm.dbg.value(metadata i32 10, metadata !94, metadata !DIExpression()), !dbg !1066
  %65 = icmp eq i32 %64, %0, !dbg !1131
  br i1 %65, label %74, label %85, !dbg !1133

66:                                               ; preds = %57
  %67 = load i64, ptr %3, align 8, !dbg !1134
  %68 = call i64 @llvm.smin.i64(i64 %67, i64 39), !dbg !1134
  %69 = call i64 @llvm.smax.i64(i64 %68, i64 -39), !dbg !1134
  %70 = trunc i64 %69 to i32, !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !94, metadata !DIExpression()), !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1135
  %71 = icmp eq i32 %55, %0, !dbg !1131
  br i1 %71, label %72, label %85, !dbg !1133

72:                                               ; preds = %66
  %73 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1136
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %73) #39, !dbg !1136
  call void @usage(i32 noundef 125) #43, !dbg !1140
  unreachable, !dbg !1140

74:                                               ; preds = %63
  %75 = tail call ptr @__errno_location() #42, !dbg !1141
  store i32 0, ptr %75, align 4, !dbg !1142, !tbaa !917
  %76 = tail call i32 @getpriority(i32 noundef 0, i32 noundef 0) #39, !dbg !1143
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !93, metadata !DIExpression()), !dbg !1066
  %77 = icmp eq i32 %76, -1, !dbg !1144
  br i1 %77, label %78, label %83, !dbg !1146

78:                                               ; preds = %74
  %79 = load i32, ptr %75, align 4, !dbg !1147, !tbaa !917
  %80 = icmp eq i32 %79, 0, !dbg !1148
  br i1 %80, label %83, label %81, !dbg !1149

81:                                               ; preds = %78
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1150
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %79, ptr noundef %82) #39, !dbg !1150
  unreachable, !dbg !1150

83:                                               ; preds = %78, %74
  %84 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %76) #39, !dbg !1151
  br label %121, !dbg !1152

85:                                               ; preds = %66, %63
  %86 = phi i32 [ %55, %66 ], [ %64, %63 ]
  %87 = phi i32 [ %70, %66 ], [ 10, %63 ]
  %88 = tail call ptr @__errno_location() #42, !dbg !1153
  store i32 0, ptr %88, align 4, !dbg !1154, !tbaa !917
  %89 = call i32 @getpriority(i32 noundef 0, i32 noundef 0) #39, !dbg !1155
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !93, metadata !DIExpression()), !dbg !1066
  %90 = icmp eq i32 %89, -1, !dbg !1156
  br i1 %90, label %91, label %96, !dbg !1158

91:                                               ; preds = %85
  %92 = load i32, ptr %88, align 4, !dbg !1159, !tbaa !917
  %93 = icmp eq i32 %92, 0, !dbg !1160
  br i1 %93, label %96, label %94, !dbg !1161

94:                                               ; preds = %91
  %95 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1162
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %92, ptr noundef %95) #39, !dbg !1162
  unreachable, !dbg !1162

96:                                               ; preds = %91, %85
  %97 = add nsw i32 %89, %87, !dbg !1163
  %98 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %97) #39, !dbg !1164
  %99 = icmp eq i32 %98, 0, !dbg !1165
  tail call void @llvm.dbg.value(metadata i1 %99, metadata !98, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1066
  br i1 %99, label %111, label %100, !dbg !1166

100:                                              ; preds = %96
  %101 = load i32, ptr %88, align 4, !dbg !1167, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !1168, metadata !DIExpression()), !dbg !1171
  %102 = icmp eq i32 %101, 13, !dbg !1173
  %103 = icmp eq i32 %101, 1, !dbg !1174
  %104 = or i1 %102, %103, !dbg !1174
  %105 = select i1 %104, i32 0, i32 125, !dbg !1167
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !114, metadata !DIExpression()), !dbg !1175
  %106 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1167
  call void (i32, i32, ptr, ...) @error(i32 noundef %105, i32 noundef %101, ptr noundef %106) #39, !dbg !1167
  call void @llvm.assume(i1 %104), !dbg !1167
  %107 = load ptr, ptr @stderr, align 8, !dbg !1176, !tbaa !846
  tail call void @llvm.dbg.value(metadata ptr %107, metadata !1178, metadata !DIExpression()), !dbg !1184
  %108 = load i32, ptr %107, align 8, !dbg !1186, !tbaa !1187
  %109 = and i32 %108, 32, !dbg !1176
  %110 = icmp eq i32 %109, 0, !dbg !1176
  br i1 %110, label %111, label %121, !dbg !1190

111:                                              ; preds = %100, %96
  %112 = sext i32 %86 to i64, !dbg !1191
  %113 = getelementptr inbounds ptr, ptr %1, i64 %112, !dbg !1191
  %114 = load ptr, ptr %113, align 8, !dbg !1191, !tbaa !846
  %115 = call i32 @execvp(ptr noundef %114, ptr noundef nonnull %113) #39, !dbg !1192
  %116 = load i32, ptr %88, align 4, !dbg !1193, !tbaa !917
  %117 = icmp eq i32 %116, 2, !dbg !1194
  %118 = select i1 %117, i32 127, i32 126, !dbg !1193
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !119, metadata !DIExpression()), !dbg !1066
  %119 = load ptr, ptr %113, align 8, !dbg !1195, !tbaa !846
  %120 = call ptr @quote(ptr noundef %119) #39, !dbg !1195
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %116, ptr noundef nonnull @.str.19, ptr noundef %120) #39, !dbg !1195
  br label %121

121:                                              ; preds = %100, %111, %83
  %122 = phi i32 [ 0, %83 ], [ %118, %111 ], [ 125, %100 ], !dbg !1066
  ret i32 %122, !dbg !1196
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1197 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1200 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1201 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1204 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1210 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1214 i32 @getpriority(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1222 i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind
declare !dbg !1225 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1229 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1231, metadata !DIExpression()), !dbg !1232
  store ptr %0, ptr @file_name, align 8, !dbg !1233, !tbaa !846
  ret void, !dbg !1234
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1235 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1239, metadata !DIExpression()), !dbg !1240
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1241, !tbaa !1242
  ret void, !dbg !1244
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1245 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1250, !tbaa !846
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1251
  %3 = icmp eq i32 %2, 0, !dbg !1252
  br i1 %3, label %22, label %4, !dbg !1253

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1254, !tbaa !1242, !range !1255, !noundef !885
  %6 = icmp eq i8 %5, 0, !dbg !1254
  br i1 %6, label %11, label %7, !dbg !1256

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1257
  %9 = load i32, ptr %8, align 4, !dbg !1257, !tbaa !917
  %10 = icmp eq i32 %9, 32, !dbg !1258
  br i1 %10, label %22, label %11, !dbg !1259

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1.29, i32 noundef 5) #39, !dbg !1260
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1247, metadata !DIExpression()), !dbg !1261
  %13 = load ptr, ptr @file_name, align 8, !dbg !1262, !tbaa !846
  %14 = icmp eq ptr %13, null, !dbg !1262
  %15 = tail call ptr @__errno_location() #42, !dbg !1264
  %16 = load i32, ptr %15, align 4, !dbg !1264, !tbaa !917
  br i1 %14, label %19, label %17, !dbg !1265

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1266
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.30, ptr noundef %18, ptr noundef %12) #39, !dbg !1266
  br label %20, !dbg !1266

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.31, ptr noundef %12) #39, !dbg !1267
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1268, !tbaa !917
  tail call void @_exit(i32 noundef %21) #41, !dbg !1269
  unreachable, !dbg !1269

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1270, !tbaa !846
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1272
  %25 = icmp eq i32 %24, 0, !dbg !1273
  br i1 %25, label %28, label %26, !dbg !1274

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1275, !tbaa !917
  tail call void @_exit(i32 noundef %27) #41, !dbg !1276
  unreachable, !dbg !1276

28:                                               ; preds = %22
  ret void, !dbg !1277
}

; Function Attrs: noreturn
declare !dbg !1278 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1279 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1283, metadata !DIExpression()), !dbg !1287
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1284, metadata !DIExpression()), !dbg !1287
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1285, metadata !DIExpression()), !dbg !1287
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1286, metadata !DIExpression(DW_OP_deref)), !dbg !1287
  tail call fastcc void @flush_stdout(), !dbg !1288
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1289, !tbaa !846
  %7 = icmp eq ptr %6, null, !dbg !1289
  br i1 %7, label %9, label %8, !dbg !1291

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1292
  br label %13, !dbg !1292

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1293, !tbaa !846
  %11 = tail call ptr @getprogname() #40, !dbg !1293
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %11) #39, !dbg !1293
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1295, !tbaa.struct !1296
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1295
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1295
  ret void, !dbg !1297
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1298 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i32 1, metadata !1302, metadata !DIExpression()), !dbg !1307
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1310
  %2 = icmp slt i32 %1, 0, !dbg !1311
  br i1 %2, label %6, label %3, !dbg !1312

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1313, !tbaa !846
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1313
  br label %6, !dbg !1313

6:                                                ; preds = %3, %0
  ret void, !dbg !1314
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1315 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1321
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1317, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1318, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1319, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1320, metadata !DIExpression(DW_OP_deref)), !dbg !1322
  %7 = load ptr, ptr @stderr, align 8, !dbg !1323, !tbaa !846
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1324, !noalias !1368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1372
  call void @llvm.dbg.value(metadata ptr %7, metadata !1364, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %2, metadata !1365, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr poison, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1324, !noalias !1368
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1374, !tbaa !917
  %10 = add i32 %9, 1, !dbg !1374
  store i32 %10, ptr @error_message_count, align 4, !dbg !1374, !tbaa !917
  %11 = icmp eq i32 %1, 0, !dbg !1375
  br i1 %11, label %21, label %12, !dbg !1377

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1378, metadata !DIExpression(), metadata !1321, metadata ptr %5, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %1, metadata !1381, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1388
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1389
  call void @llvm.dbg.value(metadata ptr %13, metadata !1382, metadata !DIExpression()), !dbg !1386
  %14 = icmp eq ptr %13, null, !dbg !1390
  br i1 %14, label %15, label %17, !dbg !1392

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.33, ptr noundef nonnull @.str.5.34, i32 noundef 5) #39, !dbg !1393
  call void @llvm.dbg.value(metadata ptr %16, metadata !1382, metadata !DIExpression()), !dbg !1386
  br label %17, !dbg !1394

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1386
  call void @llvm.dbg.value(metadata ptr %18, metadata !1382, metadata !DIExpression()), !dbg !1386
  %19 = load ptr, ptr @stderr, align 8, !dbg !1395, !tbaa !846
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.35, ptr noundef %18) #39, !dbg !1395
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1396
  br label %21, !dbg !1397

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1398, !tbaa !846
  call void @llvm.dbg.value(metadata i32 10, metadata !1399, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %22, metadata !1404, metadata !DIExpression()), !dbg !1405
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1407
  %24 = load ptr, ptr %23, align 8, !dbg !1407, !tbaa !1408
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1407
  %26 = load ptr, ptr %25, align 8, !dbg !1407, !tbaa !1409
  %27 = icmp ult ptr %24, %26, !dbg !1407
  br i1 %27, label %30, label %28, !dbg !1407, !prof !1410

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1407
  br label %32, !dbg !1407

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1407
  store ptr %31, ptr %23, align 8, !dbg !1407, !tbaa !1408
  store i8 10, ptr %24, align 1, !dbg !1407, !tbaa !926
  br label %32, !dbg !1407

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1411, !tbaa !846
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1411
  %35 = icmp eq i32 %0, 0, !dbg !1412
  br i1 %35, label %37, label %36, !dbg !1414

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1415
  unreachable, !dbg !1415

37:                                               ; preds = %32
  ret void, !dbg !1416
}

declare !dbg !1417 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1420 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1423 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1426 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1429 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1433 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1441
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1440, metadata !DIExpression(), metadata !1441, metadata ptr %4, metadata !DIExpression()), !dbg !1442
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1437, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1438, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1439, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1443
  call void @llvm.va_start(ptr nonnull %4), !dbg !1444
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1445, !tbaa.struct !1296
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1445
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1445
  call void @llvm.va_end(ptr nonnull %4), !dbg !1446
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1447
  ret void, !dbg !1447
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !431 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !447, metadata !DIExpression()), !dbg !1448
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !448, metadata !DIExpression()), !dbg !1448
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !449, metadata !DIExpression()), !dbg !1448
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !450, metadata !DIExpression()), !dbg !1448
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !451, metadata !DIExpression()), !dbg !1448
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !452, metadata !DIExpression(DW_OP_deref)), !dbg !1448
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1449, !tbaa !917
  %9 = icmp eq i32 %8, 0, !dbg !1449
  br i1 %9, label %24, label %10, !dbg !1451

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1452, !tbaa !917
  %12 = icmp eq i32 %11, %3, !dbg !1455
  br i1 %12, label %13, label %23, !dbg !1456

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1457, !tbaa !846
  %15 = icmp eq ptr %14, %2, !dbg !1458
  br i1 %15, label %37, label %16, !dbg !1459

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1460
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1461
  br i1 %19, label %20, label %23, !dbg !1461

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1462
  %22 = icmp eq i32 %21, 0, !dbg !1463
  br i1 %22, label %37, label %23, !dbg !1464

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1465, !tbaa !846
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1466, !tbaa !917
  br label %24, !dbg !1467

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1468
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1469, !tbaa !846
  %26 = icmp eq ptr %25, null, !dbg !1469
  br i1 %26, label %28, label %27, !dbg !1471

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1472
  br label %32, !dbg !1472

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1473, !tbaa !846
  %30 = tail call ptr @getprogname() #40, !dbg !1473
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.38, ptr noundef %30) #39, !dbg !1473
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1475, !tbaa !846
  %34 = icmp eq ptr %2, null, !dbg !1475
  %35 = select i1 %34, ptr @.str.3.39, ptr @.str.2.40, !dbg !1475
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1475
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1476, !tbaa.struct !1296
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1476
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1476
  br label %37, !dbg !1477

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1477
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1478 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1488
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1487, metadata !DIExpression(), metadata !1488, metadata ptr %6, metadata !DIExpression()), !dbg !1489
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1482, metadata !DIExpression()), !dbg !1489
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1483, metadata !DIExpression()), !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1484, metadata !DIExpression()), !dbg !1489
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1485, metadata !DIExpression()), !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1486, metadata !DIExpression()), !dbg !1489
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1490
  call void @llvm.va_start(ptr nonnull %6), !dbg !1491
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1492, !tbaa.struct !1296
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1492
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1492
  call void @llvm.va_end(ptr nonnull %6), !dbg !1493
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1494
  ret void, !dbg !1494
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1495 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1498, !tbaa !846
  ret ptr %1, !dbg !1499
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1500 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1502, metadata !DIExpression()), !dbg !1505
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1506
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1503, metadata !DIExpression()), !dbg !1505
  %3 = icmp eq ptr %2, null, !dbg !1507
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1507
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1507
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1504, metadata !DIExpression()), !dbg !1505
  %6 = ptrtoint ptr %5 to i64, !dbg !1508
  %7 = ptrtoint ptr %0 to i64, !dbg !1508
  %8 = sub i64 %6, %7, !dbg !1508
  %9 = icmp sgt i64 %8, 6, !dbg !1510
  br i1 %9, label %10, label %19, !dbg !1511

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1512
  call void @llvm.dbg.value(metadata ptr %11, metadata !1513, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr @.str.49, metadata !1518, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 7, metadata !1519, metadata !DIExpression()), !dbg !1520
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.49, i64 7), !dbg !1522
  %13 = icmp eq i32 %12, 0, !dbg !1523
  br i1 %13, label %14, label %19, !dbg !1524

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1502, metadata !DIExpression()), !dbg !1505
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.50, i64 noundef 3) #40, !dbg !1525
  %16 = icmp eq i32 %15, 0, !dbg !1528
  %17 = select i1 %16, i64 3, i64 0, !dbg !1529
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1529
  br label %19, !dbg !1529

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1505
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1504, metadata !DIExpression()), !dbg !1505
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1502, metadata !DIExpression()), !dbg !1505
  store ptr %20, ptr @program_name, align 8, !dbg !1530, !tbaa !846
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1531, !tbaa !846
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1532, !tbaa !846
  ret void, !dbg !1533
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1534 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !489 {
  %3 = alloca i32, align 4, !DIAssignID !1535
  call void @llvm.dbg.assign(metadata i1 undef, metadata !499, metadata !DIExpression(), metadata !1535, metadata ptr %3, metadata !DIExpression()), !dbg !1536
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1537
  call void @llvm.dbg.assign(metadata i1 undef, metadata !504, metadata !DIExpression(), metadata !1537, metadata ptr %4, metadata !DIExpression()), !dbg !1536
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !496, metadata !DIExpression()), !dbg !1536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !497, metadata !DIExpression()), !dbg !1536
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1538
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !498, metadata !DIExpression()), !dbg !1536
  %6 = icmp eq ptr %5, %0, !dbg !1539
  br i1 %6, label %7, label %14, !dbg !1541

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1542
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %4, metadata !1544, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata ptr %4, metadata !1553, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i32 0, metadata !1559, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i64 8, metadata !1560, metadata !DIExpression()), !dbg !1561
  store i64 0, ptr %4, align 8, !dbg !1563
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1564
  %9 = icmp eq i64 %8, 2, !dbg !1566
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1567
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1568
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1568
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1536
  ret ptr %15, !dbg !1568
}

; Function Attrs: nounwind
declare !dbg !1569 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1575 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1580, metadata !DIExpression()), !dbg !1583
  %2 = tail call ptr @__errno_location() #42, !dbg !1584
  %3 = load i32, ptr %2, align 4, !dbg !1584, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1581, metadata !DIExpression()), !dbg !1583
  %4 = icmp eq ptr %0, null, !dbg !1585
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1585
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1582, metadata !DIExpression()), !dbg !1583
  store i32 %3, ptr %2, align 4, !dbg !1587, !tbaa !917
  ret ptr %6, !dbg !1588
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1589 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1595, metadata !DIExpression()), !dbg !1596
  %2 = icmp eq ptr %0, null, !dbg !1597
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1597
  %4 = load i32, ptr %3, align 8, !dbg !1598, !tbaa !1599
  ret i32 %4, !dbg !1601
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1602 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1606, metadata !DIExpression()), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1607, metadata !DIExpression()), !dbg !1608
  %3 = icmp eq ptr %0, null, !dbg !1609
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1609
  store i32 %1, ptr %4, align 8, !dbg !1610, !tbaa !1599
  ret void, !dbg !1611
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1612 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1616, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1617, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1618, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1619, metadata !DIExpression()), !dbg !1624
  %4 = icmp eq ptr %0, null, !dbg !1625
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1625
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1626
  %7 = lshr i8 %1, 5, !dbg !1627
  %8 = zext nneg i8 %7 to i64, !dbg !1627
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1628
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1620, metadata !DIExpression()), !dbg !1624
  %10 = and i8 %1, 31, !dbg !1629
  %11 = zext nneg i8 %10 to i32, !dbg !1629
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1622, metadata !DIExpression()), !dbg !1624
  %12 = load i32, ptr %9, align 4, !dbg !1630, !tbaa !917
  %13 = lshr i32 %12, %11, !dbg !1631
  %14 = and i32 %13, 1, !dbg !1632
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1623, metadata !DIExpression()), !dbg !1624
  %15 = xor i32 %13, %2, !dbg !1633
  %16 = and i32 %15, 1, !dbg !1633
  %17 = shl nuw i32 %16, %11, !dbg !1634
  %18 = xor i32 %17, %12, !dbg !1635
  store i32 %18, ptr %9, align 4, !dbg !1635, !tbaa !917
  ret i32 %14, !dbg !1636
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1637 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1641, metadata !DIExpression()), !dbg !1644
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1642, metadata !DIExpression()), !dbg !1644
  %3 = icmp eq ptr %0, null, !dbg !1645
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1647
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1641, metadata !DIExpression()), !dbg !1644
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1648
  %6 = load i32, ptr %5, align 4, !dbg !1648, !tbaa !1649
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1643, metadata !DIExpression()), !dbg !1644
  store i32 %1, ptr %5, align 4, !dbg !1650, !tbaa !1649
  ret i32 %6, !dbg !1651
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1652 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1656, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1657, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !1659
  %4 = icmp eq ptr %0, null, !dbg !1660
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1656, metadata !DIExpression()), !dbg !1659
  store i32 10, ptr %5, align 8, !dbg !1663, !tbaa !1599
  %6 = icmp ne ptr %1, null, !dbg !1664
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1666
  br i1 %8, label %10, label %9, !dbg !1666

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1667
  unreachable, !dbg !1667

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1668
  store ptr %1, ptr %11, align 8, !dbg !1669, !tbaa !1670
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1671
  store ptr %2, ptr %12, align 8, !dbg !1672, !tbaa !1673
  ret void, !dbg !1674
}

; Function Attrs: noreturn nounwind
declare !dbg !1675 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1676 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1680, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1681, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1682, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1683, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1684, metadata !DIExpression()), !dbg !1688
  %6 = icmp eq ptr %4, null, !dbg !1689
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1689
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1685, metadata !DIExpression()), !dbg !1688
  %8 = tail call ptr @__errno_location() #42, !dbg !1690
  %9 = load i32, ptr %8, align 4, !dbg !1690, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1686, metadata !DIExpression()), !dbg !1688
  %10 = load i32, ptr %7, align 8, !dbg !1691, !tbaa !1599
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1692
  %12 = load i32, ptr %11, align 4, !dbg !1692, !tbaa !1649
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1693
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1694
  %15 = load ptr, ptr %14, align 8, !dbg !1694, !tbaa !1670
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1695
  %17 = load ptr, ptr %16, align 8, !dbg !1695, !tbaa !1673
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1696
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1687, metadata !DIExpression()), !dbg !1688
  store i32 %9, ptr %8, align 4, !dbg !1697, !tbaa !917
  ret i64 %18, !dbg !1698
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1699 {
  %10 = alloca i32, align 4, !DIAssignID !1767
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1768
  %12 = alloca i32, align 4, !DIAssignID !1769
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1770
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1745, metadata !DIExpression(), metadata !1771, metadata ptr %14, metadata !DIExpression()), !dbg !1772
  %15 = alloca i32, align 4, !DIAssignID !1773
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1748, metadata !DIExpression(), metadata !1773, metadata ptr %15, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1705, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1707, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1708, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1709, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1710, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1711, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1712, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1713, metadata !DIExpression()), !dbg !1775
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1776
  %17 = icmp eq i64 %16, 1, !dbg !1777
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1714, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1717, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1718, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1719, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1720, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1722, metadata !DIExpression()), !dbg !1775
  %18 = and i32 %5, 2, !dbg !1778
  %19 = icmp ne i32 %18, 0, !dbg !1778
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1778

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1779
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1780
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1781
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1719, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1718, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1717, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1708, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1713, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1712, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1709, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.label(metadata !1723), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1775
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
  ], !dbg !1783

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1709, metadata !DIExpression()), !dbg !1775
  br label %101, !dbg !1784

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1709, metadata !DIExpression()), !dbg !1775
  br i1 %36, label %101, label %42, !dbg !1784

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1785
  br i1 %43, label %101, label %44, !dbg !1789

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1785, !tbaa !926
  br label %101, !dbg !1785

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !605, metadata !DIExpression(), metadata !1769, metadata ptr %12, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !606, metadata !DIExpression(), metadata !1770, metadata ptr %13, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata ptr @.str.11.70, metadata !602, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %28, metadata !603, metadata !DIExpression()), !dbg !1790
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.71, ptr noundef nonnull @.str.11.70, i32 noundef 5) #39, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %46, metadata !604, metadata !DIExpression()), !dbg !1790
  %47 = icmp eq ptr %46, @.str.11.70, !dbg !1795
  br i1 %47, label %48, label %57, !dbg !1797

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1798
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %13, metadata !1800, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %13, metadata !1808, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i64 8, metadata !1812, metadata !DIExpression()), !dbg !1813
  store i64 0, ptr %13, align 8, !dbg !1815
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1816
  %50 = icmp eq i64 %49, 3, !dbg !1818
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1819
  %54 = icmp eq i32 %28, 9, !dbg !1819
  %55 = select i1 %54, ptr @.str.10.72, ptr @.str.12.73, !dbg !1819
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1819
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1820
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1820
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1790
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1712, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.assign(metadata i1 undef, metadata !605, metadata !DIExpression(), metadata !1767, metadata ptr %10, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !606, metadata !DIExpression(), metadata !1768, metadata ptr %11, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr @.str.12.73, metadata !602, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i32 %28, metadata !603, metadata !DIExpression()), !dbg !1821
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.71, ptr noundef nonnull @.str.12.73, i32 noundef 5) #39, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %59, metadata !604, metadata !DIExpression()), !dbg !1821
  %60 = icmp eq ptr %59, @.str.12.73, !dbg !1824
  br i1 %60, label %61, label %70, !dbg !1825

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1826
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1827
  call void @llvm.dbg.value(metadata ptr %11, metadata !1800, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata ptr %11, metadata !1808, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 8, metadata !1812, metadata !DIExpression()), !dbg !1830
  store i64 0, ptr %11, align 8, !dbg !1832
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1833
  %63 = icmp eq i64 %62, 3, !dbg !1834
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1835
  %67 = icmp eq i32 %28, 9, !dbg !1835
  %68 = select i1 %67, ptr @.str.10.72, ptr @.str.12.73, !dbg !1835
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1835
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1836
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1836
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1713, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1712, metadata !DIExpression()), !dbg !1775
  br i1 %36, label %88, label %73, !dbg !1837

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1725, metadata !DIExpression()), !dbg !1838
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1715, metadata !DIExpression()), !dbg !1775
  %74 = load i8, ptr %71, align 1, !dbg !1839, !tbaa !926
  %75 = icmp eq i8 %74, 0, !dbg !1841
  br i1 %75, label %88, label %.preheader11, !dbg !1841

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1841

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1725, metadata !DIExpression()), !dbg !1838
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1715, metadata !DIExpression()), !dbg !1775
  %80 = icmp ult i64 %79, %39, !dbg !1842
  br i1 %80, label %81, label %83, !dbg !1845

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1842
  store i8 %77, ptr %82, align 1, !dbg !1842, !tbaa !926
  br label %83, !dbg !1842

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1845
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1715, metadata !DIExpression()), !dbg !1775
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1846
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1725, metadata !DIExpression()), !dbg !1838
  %86 = load i8, ptr %85, align 1, !dbg !1839, !tbaa !926
  %87 = icmp eq i8 %86, 0, !dbg !1841
  br i1 %87, label %.loopexit12, label %76, !dbg !1841, !llvm.loop !1847

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1845
  br label %88, !dbg !1849

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1850
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1719, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1717, metadata !DIExpression()), !dbg !1775
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1718, metadata !DIExpression()), !dbg !1775
  br label %101, !dbg !1851

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1719, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1720, metadata !DIExpression()), !dbg !1775
  br label %101, !dbg !1852

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1719, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1709, metadata !DIExpression()), !dbg !1775
  br label %101, !dbg !1853

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1719, metadata !DIExpression()), !dbg !1775
  br i1 %36, label %101, label %95, !dbg !1854

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1719, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1709, metadata !DIExpression()), !dbg !1775
  br i1 %36, label %101, label %95, !dbg !1853

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1855
  br i1 %97, label %101, label %98, !dbg !1859

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1855, !tbaa !926
  br label %101, !dbg !1855

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1775
  br label %101, !dbg !1860

100:                                              ; preds = %27
  call void @abort() #41, !dbg !1861
  unreachable, !dbg !1861

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1850
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.72, %42 ], [ @.str.10.72, %44 ], [ @.str.10.72, %41 ], [ %33, %27 ], [ @.str.12.73, %95 ], [ @.str.12.73, %98 ], [ @.str.12.73, %94 ], [ @.str.10.72, %40 ], [ @.str.12.73, %91 ], [ @.str.12.73, %92 ], [ @.str.12.73, %93 ], !dbg !1775
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1775
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1719, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1718, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1717, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1713, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1712, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1709, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1730, metadata !DIExpression()), !dbg !1862
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
  br label %121, !dbg !1863

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1850
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1779
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1864
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1730, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1708, metadata !DIExpression()), !dbg !1775
  %130 = icmp eq i64 %122, -1, !dbg !1865
  br i1 %130, label %131, label %135, !dbg !1866

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1867
  %133 = load i8, ptr %132, align 1, !dbg !1867, !tbaa !926
  %134 = icmp eq i8 %133, 0, !dbg !1868
  br i1 %134, label %573, label %137, !dbg !1869

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1870
  br i1 %136, label %573, label %137, !dbg !1869

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1736, metadata !DIExpression()), !dbg !1871
  br i1 %113, label %138, label %151, !dbg !1872

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1874
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1875
  br i1 %140, label %141, label %143, !dbg !1875

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1876
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1708, metadata !DIExpression()), !dbg !1775
  br label %143, !dbg !1877

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1708, metadata !DIExpression()), !dbg !1775
  %145 = icmp ugt i64 %139, %144, !dbg !1878
  br i1 %145, label %151, label %146, !dbg !1879

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1880
  call void @llvm.dbg.value(metadata ptr %147, metadata !1881, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata ptr %106, metadata !1884, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %107, metadata !1885, metadata !DIExpression()), !dbg !1886
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1888
  %149 = icmp eq i32 %148, 0, !dbg !1889
  %150 = and i1 %149, %109, !dbg !1890
  br i1 %150, label %.loopexit7, label %151, !dbg !1890

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1708, metadata !DIExpression()), !dbg !1775
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1891
  %155 = load i8, ptr %154, align 1, !dbg !1891, !tbaa !926
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1737, metadata !DIExpression()), !dbg !1871
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
  ], !dbg !1892

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1893

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1894

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1871
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1898
  br i1 %159, label %176, label %160, !dbg !1898

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1900
  br i1 %161, label %162, label %164, !dbg !1904

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1900
  store i8 39, ptr %163, align 1, !dbg !1900, !tbaa !926
  br label %164, !dbg !1900

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1904
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1715, metadata !DIExpression()), !dbg !1775
  %166 = icmp ult i64 %165, %129, !dbg !1905
  br i1 %166, label %167, label %169, !dbg !1908

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1905
  store i8 36, ptr %168, align 1, !dbg !1905, !tbaa !926
  br label %169, !dbg !1905

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1715, metadata !DIExpression()), !dbg !1775
  %171 = icmp ult i64 %170, %129, !dbg !1909
  br i1 %171, label %172, label %174, !dbg !1912

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1909
  store i8 39, ptr %173, align 1, !dbg !1909, !tbaa !926
  br label %174, !dbg !1909

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1775
  br label %176, !dbg !1913

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1775
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1715, metadata !DIExpression()), !dbg !1775
  %179 = icmp ult i64 %177, %129, !dbg !1914
  br i1 %179, label %180, label %182, !dbg !1917

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1914
  store i8 92, ptr %181, align 1, !dbg !1914, !tbaa !926
  br label %182, !dbg !1914

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1917
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1715, metadata !DIExpression()), !dbg !1775
  br i1 %110, label %184, label %476, !dbg !1918

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1920
  %186 = icmp ult i64 %185, %152, !dbg !1921
  br i1 %186, label %187, label %433, !dbg !1922

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1923
  %189 = load i8, ptr %188, align 1, !dbg !1923, !tbaa !926
  %190 = add i8 %189, -48, !dbg !1924
  %191 = icmp ult i8 %190, 10, !dbg !1924
  br i1 %191, label %192, label %433, !dbg !1924

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1925
  br i1 %193, label %194, label %196, !dbg !1929

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1925
  store i8 48, ptr %195, align 1, !dbg !1925, !tbaa !926
  br label %196, !dbg !1925

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1929
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1715, metadata !DIExpression()), !dbg !1775
  %198 = icmp ult i64 %197, %129, !dbg !1930
  br i1 %198, label %199, label %201, !dbg !1933

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1930
  store i8 48, ptr %200, align 1, !dbg !1930, !tbaa !926
  br label %201, !dbg !1930

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1933
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1715, metadata !DIExpression()), !dbg !1775
  br label %433, !dbg !1934

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1935

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1936

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1937

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1939

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1941
  %209 = icmp ult i64 %208, %152, !dbg !1942
  br i1 %209, label %210, label %433, !dbg !1943

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1944
  %212 = load i8, ptr %211, align 1, !dbg !1944, !tbaa !926
  %213 = icmp eq i8 %212, 63, !dbg !1945
  br i1 %213, label %214, label %433, !dbg !1946

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1947
  %216 = load i8, ptr %215, align 1, !dbg !1947, !tbaa !926
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
  ], !dbg !1948

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1949

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1737, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1730, metadata !DIExpression()), !dbg !1862
  %219 = icmp ult i64 %123, %129, !dbg !1951
  br i1 %219, label %220, label %222, !dbg !1954

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1951
  store i8 63, ptr %221, align 1, !dbg !1951, !tbaa !926
  br label %222, !dbg !1951

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1954
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1715, metadata !DIExpression()), !dbg !1775
  %224 = icmp ult i64 %223, %129, !dbg !1955
  br i1 %224, label %225, label %227, !dbg !1958

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1955
  store i8 34, ptr %226, align 1, !dbg !1955, !tbaa !926
  br label %227, !dbg !1955

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1715, metadata !DIExpression()), !dbg !1775
  %229 = icmp ult i64 %228, %129, !dbg !1959
  br i1 %229, label %230, label %232, !dbg !1962

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1959
  store i8 34, ptr %231, align 1, !dbg !1959, !tbaa !926
  br label %232, !dbg !1959

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1715, metadata !DIExpression()), !dbg !1775
  %234 = icmp ult i64 %233, %129, !dbg !1963
  br i1 %234, label %235, label %237, !dbg !1966

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1963
  store i8 63, ptr %236, align 1, !dbg !1963, !tbaa !926
  br label %237, !dbg !1963

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1966
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1715, metadata !DIExpression()), !dbg !1775
  br label %433, !dbg !1967

239:                                              ; preds = %151
  br label %249, !dbg !1968

240:                                              ; preds = %151
  br label %249, !dbg !1969

241:                                              ; preds = %151
  br label %247, !dbg !1970

242:                                              ; preds = %151
  br label %247, !dbg !1971

243:                                              ; preds = %151
  br label %249, !dbg !1972

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1973

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1974

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1977

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1979
  call void @llvm.dbg.label(metadata !1738), !dbg !1980
  br i1 %118, label %.loopexit8, label %249, !dbg !1981

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1979
  call void @llvm.dbg.label(metadata !1741), !dbg !1983
  br i1 %108, label %487, label %444, !dbg !1984

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1985

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1986, !tbaa !926
  %254 = icmp eq i8 %253, 0, !dbg !1988
  br i1 %254, label %255, label %433, !dbg !1989

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1990
  br i1 %256, label %257, label %433, !dbg !1992

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1736, metadata !DIExpression()), !dbg !1871
  br label %258, !dbg !1993

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1871
  br i1 %115, label %260, label %433, !dbg !1994

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1996

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1736, metadata !DIExpression()), !dbg !1871
  br i1 %115, label %262, label %433, !dbg !1997

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1998

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2001
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2003
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2003
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1716, metadata !DIExpression()), !dbg !1775
  %269 = icmp ult i64 %123, %268, !dbg !2004
  br i1 %269, label %270, label %272, !dbg !2007

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2004
  store i8 39, ptr %271, align 1, !dbg !2004, !tbaa !926
  br label %272, !dbg !2004

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2007
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1715, metadata !DIExpression()), !dbg !1775
  %274 = icmp ult i64 %273, %268, !dbg !2008
  br i1 %274, label %275, label %277, !dbg !2011

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2008
  store i8 92, ptr %276, align 1, !dbg !2008, !tbaa !926
  br label %277, !dbg !2008

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2011
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1715, metadata !DIExpression()), !dbg !1775
  %279 = icmp ult i64 %278, %268, !dbg !2012
  br i1 %279, label %280, label %282, !dbg !2015

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2012
  store i8 39, ptr %281, align 1, !dbg !2012, !tbaa !926
  br label %282, !dbg !2012

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2015
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1775
  br label %433, !dbg !2016

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2017

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1742, metadata !DIExpression()), !dbg !2018
  %286 = tail call ptr @__ctype_b_loc() #42, !dbg !2019
  %287 = load ptr, ptr %286, align 8, !dbg !2019, !tbaa !846
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2019
  %290 = load i16, ptr %289, align 2, !dbg !2019, !tbaa !958
  %291 = and i16 %290, 16384, !dbg !2019
  %292 = icmp ne i16 %291, 0, !dbg !2021
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1744, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2018
  br label %334, !dbg !2022

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %14, metadata !1800, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %14, metadata !1808, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 8, metadata !1812, metadata !DIExpression()), !dbg !2026
  store i64 0, ptr %14, align 8, !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1742, metadata !DIExpression()), !dbg !2018
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1744, metadata !DIExpression()), !dbg !2018
  %294 = icmp eq i64 %152, -1, !dbg !2029
  br i1 %294, label %295, label %297, !dbg !2031

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1708, metadata !DIExpression()), !dbg !1775
  br label %297, !dbg !2033

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1708, metadata !DIExpression()), !dbg !1775
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2034
  %299 = sub i64 %298, %128, !dbg !2035
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #39, !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1752, metadata !DIExpression()), !dbg !1774
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2037

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1742, metadata !DIExpression()), !dbg !2018
  %302 = icmp ult i64 %128, %298, !dbg !2038
  br i1 %302, label %.preheader5, label %329, !dbg !2040

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2041

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !2018
  br label %329, !dbg !2042

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1742, metadata !DIExpression()), !dbg !2018
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2044
  %308 = load i8, ptr %307, align 1, !dbg !2044, !tbaa !926
  %309 = icmp eq i8 %308, 0, !dbg !2040
  br i1 %309, label %.loopexit6, label %310, !dbg !2041

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2045
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1742, metadata !DIExpression()), !dbg !2018
  %312 = add i64 %311, %128, !dbg !2046
  %313 = icmp eq i64 %311, %299, !dbg !2038
  br i1 %313, label %.loopexit6, label %304, !dbg !2040, !llvm.loop !2047

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1753, metadata !DIExpression()), !dbg !2048
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2049
  %317 = and i1 %316, %109, !dbg !2049
  br i1 %317, label %.preheader3, label %325, !dbg !2049

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2050

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1753, metadata !DIExpression()), !dbg !2048
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2051
  %321 = load i8, ptr %320, align 1, !dbg !2051, !tbaa !926
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2053

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1753, metadata !DIExpression()), !dbg !2048
  %324 = icmp eq i64 %323, %300, !dbg !2055
  br i1 %324, label %.loopexit4, label %318, !dbg !2050, !llvm.loop !2056

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2058

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2058, !tbaa !917
  call void @llvm.dbg.value(metadata i32 %326, metadata !2060, metadata !DIExpression()), !dbg !2068
  %327 = call i32 @iswprint(i32 noundef %326) #39, !dbg !2070
  %328 = icmp ne i32 %327, 0, !dbg !2071
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1744, metadata !DIExpression()), !dbg !2018
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1742, metadata !DIExpression()), !dbg !2018
  br label %329, !dbg !2072

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2073

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1744, metadata !DIExpression()), !dbg !2018
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1742, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2073
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2074
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1744, metadata !DIExpression()), !dbg !2018
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1742, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2073
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2074
  call void @llvm.dbg.label(metadata !1766), !dbg !2075
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2076
  br label %624, !dbg !2076

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1871
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2078
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1744, metadata !DIExpression()), !dbg !2018
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1742, metadata !DIExpression()), !dbg !2018
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1708, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1736, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1871
  %338 = icmp ult i64 %336, 2, !dbg !2079
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2080
  br i1 %340, label %433, label %341, !dbg !2080

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1761, metadata !DIExpression()), !dbg !2082
  br label %343, !dbg !2083

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1775
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1862
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1737, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1730, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1715, metadata !DIExpression()), !dbg !1775
  br i1 %339, label %394, label %350, !dbg !2084

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2089

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1871
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2092
  br i1 %352, label %369, label %353, !dbg !2092

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2094
  br i1 %354, label %355, label %357, !dbg !2098

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2094
  store i8 39, ptr %356, align 1, !dbg !2094, !tbaa !926
  br label %357, !dbg !2094

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2098
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1715, metadata !DIExpression()), !dbg !1775
  %359 = icmp ult i64 %358, %129, !dbg !2099
  br i1 %359, label %360, label %362, !dbg !2102

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2099
  store i8 36, ptr %361, align 1, !dbg !2099, !tbaa !926
  br label %362, !dbg !2099

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1715, metadata !DIExpression()), !dbg !1775
  %364 = icmp ult i64 %363, %129, !dbg !2103
  br i1 %364, label %365, label %367, !dbg !2106

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2103
  store i8 39, ptr %366, align 1, !dbg !2103, !tbaa !926
  br label %367, !dbg !2103

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1775
  br label %369, !dbg !2107

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1775
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1715, metadata !DIExpression()), !dbg !1775
  %372 = icmp ult i64 %370, %129, !dbg !2108
  br i1 %372, label %373, label %375, !dbg !2111

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2108
  store i8 92, ptr %374, align 1, !dbg !2108, !tbaa !926
  br label %375, !dbg !2108

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2111
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1715, metadata !DIExpression()), !dbg !1775
  %377 = icmp ult i64 %376, %129, !dbg !2112
  br i1 %377, label %378, label %382, !dbg !2115

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2112
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2112
  store i8 %380, ptr %381, align 1, !dbg !2112, !tbaa !926
  br label %382, !dbg !2112

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1715, metadata !DIExpression()), !dbg !1775
  %384 = icmp ult i64 %383, %129, !dbg !2116
  br i1 %384, label %385, label %390, !dbg !2119

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2116
  %388 = or disjoint i8 %387, 48, !dbg !2116
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2116
  store i8 %388, ptr %389, align 1, !dbg !2116, !tbaa !926
  br label %390, !dbg !2116

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1715, metadata !DIExpression()), !dbg !1775
  %392 = and i8 %349, 7, !dbg !2120
  %393 = or disjoint i8 %392, 48, !dbg !2121
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1737, metadata !DIExpression()), !dbg !1871
  br label %401, !dbg !2122

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2123

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2124
  br i1 %396, label %397, label %399, !dbg !2129

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2124
  store i8 92, ptr %398, align 1, !dbg !2124, !tbaa !926
  br label %399, !dbg !2124

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1871
  br label %401, !dbg !2130

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1775
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1737, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1715, metadata !DIExpression()), !dbg !1775
  %407 = add i64 %346, 1, !dbg !2131
  %408 = icmp ugt i64 %342, %407, !dbg !2133
  br i1 %408, label %409, label %.loopexit2, !dbg !2134

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2135
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2135
  br i1 %411, label %423, label %412, !dbg !2135

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2138
  br i1 %413, label %414, label %416, !dbg !2142

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2138
  store i8 39, ptr %415, align 1, !dbg !2138, !tbaa !926
  br label %416, !dbg !2138

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2142
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1715, metadata !DIExpression()), !dbg !1775
  %418 = icmp ult i64 %417, %129, !dbg !2143
  br i1 %418, label %419, label %421, !dbg !2146

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2143
  store i8 39, ptr %420, align 1, !dbg !2143, !tbaa !926
  br label %421, !dbg !2143

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1775
  br label %423, !dbg !2147

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2148
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1715, metadata !DIExpression()), !dbg !1775
  %426 = icmp ult i64 %424, %129, !dbg !2149
  br i1 %426, label %427, label %429, !dbg !2152

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2149
  store i8 %406, ptr %428, align 1, !dbg !2149, !tbaa !926
  br label %429, !dbg !2149

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2152
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1730, metadata !DIExpression()), !dbg !1862
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2153
  %432 = load i8, ptr %431, align 1, !dbg !2153, !tbaa !926
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1737, metadata !DIExpression()), !dbg !1871
  br label %343, !dbg !2154, !llvm.loop !2155

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2158
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1775
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1779
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1862
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1871
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1737, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1730, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1708, metadata !DIExpression()), !dbg !1775
  br i1 %111, label %455, label %444, !dbg !2159

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
  br i1 %120, label %456, label %476, !dbg !2161

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2162

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
  %467 = lshr i8 %458, 5, !dbg !2163
  %468 = zext nneg i8 %467 to i64, !dbg !2163
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2164
  %470 = load i32, ptr %469, align 4, !dbg !2164, !tbaa !917
  %471 = and i8 %458, 31, !dbg !2165
  %472 = zext nneg i8 %471 to i32, !dbg !2165
  %473 = shl nuw i32 1, %472, !dbg !2166
  %474 = and i32 %470, %473, !dbg !2166
  %475 = icmp eq i32 %474, 0, !dbg !2166
  br i1 %475, label %476, label %487, !dbg !2167

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
  br i1 %153, label %487, label %523, !dbg !2168

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2158
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1775
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1779
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2169
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1871
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1737, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1730, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1708, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.label(metadata !1764), !dbg !2170
  br i1 %109, label %.loopexit8, label %497, !dbg !2171

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1871
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2173
  br i1 %498, label %515, label %499, !dbg !2173

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2175
  br i1 %500, label %501, label %503, !dbg !2179

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2175
  store i8 39, ptr %502, align 1, !dbg !2175, !tbaa !926
  br label %503, !dbg !2175

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1715, metadata !DIExpression()), !dbg !1775
  %505 = icmp ult i64 %504, %496, !dbg !2180
  br i1 %505, label %506, label %508, !dbg !2183

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2180
  store i8 36, ptr %507, align 1, !dbg !2180, !tbaa !926
  br label %508, !dbg !2180

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1715, metadata !DIExpression()), !dbg !1775
  %510 = icmp ult i64 %509, %496, !dbg !2184
  br i1 %510, label %511, label %513, !dbg !2187

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2184
  store i8 39, ptr %512, align 1, !dbg !2184, !tbaa !926
  br label %513, !dbg !2184

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1775
  br label %515, !dbg !2188

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1871
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1715, metadata !DIExpression()), !dbg !1775
  %518 = icmp ult i64 %516, %496, !dbg !2189
  br i1 %518, label %519, label %521, !dbg !2192

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2189
  store i8 92, ptr %520, align 1, !dbg !2189, !tbaa !926
  br label %521, !dbg !2189

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1737, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1730, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1708, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.label(metadata !1765), !dbg !2193
  br label %547, !dbg !2194

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1775
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1871
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1862
  br label %523, !dbg !2194

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2158
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1775
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1779
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2169
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2197
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1737, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1730, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1708, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.label(metadata !1765), !dbg !2193
  %534 = xor i1 %528, true, !dbg !2194
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2194
  br i1 %535, label %547, label %536, !dbg !2194

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2198
  br i1 %537, label %538, label %540, !dbg !2202

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2198
  store i8 39, ptr %539, align 1, !dbg !2198, !tbaa !926
  br label %540, !dbg !2198

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1715, metadata !DIExpression()), !dbg !1775
  %542 = icmp ult i64 %541, %533, !dbg !2203
  br i1 %542, label %543, label %545, !dbg !2206

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2203
  store i8 39, ptr %544, align 1, !dbg !2203, !tbaa !926
  br label %545, !dbg !2203

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1775
  br label %547, !dbg !2207

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1871
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1715, metadata !DIExpression()), !dbg !1775
  %557 = icmp ult i64 %555, %548, !dbg !2208
  br i1 %557, label %558, label %560, !dbg !2211

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2208
  store i8 %549, ptr %559, align 1, !dbg !2208, !tbaa !926
  br label %560, !dbg !2208

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2211
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1715, metadata !DIExpression()), !dbg !1775
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2212
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1775
  br label %563, !dbg !2213

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2158
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1775
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1779
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2169
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1730, metadata !DIExpression()), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1708, metadata !DIExpression()), !dbg !1775
  %572 = add i64 %570, 1, !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1730, metadata !DIExpression()), !dbg !1862
  br label %121, !dbg !2215, !llvm.loop !2216

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1850
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1779
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1706, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1716, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1715, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1708, metadata !DIExpression()), !dbg !1775
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2218
  %575 = xor i1 %109, true, !dbg !2220
  %576 = or i1 %574, %575, !dbg !2220
  %577 = or i1 %576, %110, !dbg !2220
  br i1 %577, label %578, label %.loopexit13, !dbg !2220

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2221
  %580 = xor i1 %.lcssa38, true, !dbg !2221
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2221
  br i1 %581, label %589, label %582, !dbg !2221

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2223

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1779
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2225
  br label %638, !dbg !2227

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2228
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2230
  br i1 %588, label %27, label %589, !dbg !2230

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1775
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1850
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2231
  %592 = or i1 %591, %590, !dbg !2233
  br i1 %592, label %608, label %593, !dbg !2233

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1717, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1715, metadata !DIExpression()), !dbg !1775
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2234, !tbaa !926
  %595 = icmp eq i8 %594, 0, !dbg !2237
  br i1 %595, label %608, label %.preheader, !dbg !2237

.preheader:                                       ; preds = %593
  br label %596, !dbg !2237

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1717, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1715, metadata !DIExpression()), !dbg !1775
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2238
  br i1 %600, label %601, label %603, !dbg !2241

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2238
  store i8 %597, ptr %602, align 1, !dbg !2238, !tbaa !926
  br label %603, !dbg !2238

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1715, metadata !DIExpression()), !dbg !1775
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2242
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1717, metadata !DIExpression()), !dbg !1775
  %606 = load i8, ptr %605, align 1, !dbg !2234, !tbaa !926
  %607 = icmp eq i8 %606, 0, !dbg !2237
  br i1 %607, label %.loopexit, label %596, !dbg !2237, !llvm.loop !2243

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2241
  br label %608, !dbg !2245

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1850
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1715, metadata !DIExpression()), !dbg !1775
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2245
  br i1 %610, label %611, label %638, !dbg !2247

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2248
  store i8 0, ptr %612, align 1, !dbg !2249, !tbaa !926
  br label %638, !dbg !2248

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1766), !dbg !2075
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2250
  br i1 %614, label %624, label %630, !dbg !2076

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1871
  br label %615, !dbg !2250

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2250

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2250

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1766), !dbg !2075
  %622 = icmp eq i32 %616, 2, !dbg !2250
  %623 = select i1 %619, i32 4, i32 2, !dbg !2076
  br i1 %622, label %624, label %630, !dbg !2076

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2076

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1877
  br label %630, !dbg !2251

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1709, metadata !DIExpression()), !dbg !1775
  %636 = and i32 %5, -3, !dbg !2251
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2252
  br label %638, !dbg !2253

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2254
}

; Function Attrs: nounwind
declare !dbg !2255 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2258 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2261 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2263 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2267, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2269, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata ptr %0, metadata !2271, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %1, metadata !2276, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr null, metadata !2277, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %2, metadata !2278, metadata !DIExpression()), !dbg !2284
  %4 = icmp eq ptr %2, null, !dbg !2286
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2286
  call void @llvm.dbg.value(metadata ptr %5, metadata !2279, metadata !DIExpression()), !dbg !2284
  %6 = tail call ptr @__errno_location() #42, !dbg !2287
  %7 = load i32, ptr %6, align 4, !dbg !2287, !tbaa !917
  call void @llvm.dbg.value(metadata i32 %7, metadata !2280, metadata !DIExpression()), !dbg !2284
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2288
  %9 = load i32, ptr %8, align 4, !dbg !2288, !tbaa !1649
  %10 = or i32 %9, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %10, metadata !2281, metadata !DIExpression()), !dbg !2284
  %11 = load i32, ptr %5, align 8, !dbg !2290, !tbaa !1599
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2291
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2292
  %14 = load ptr, ptr %13, align 8, !dbg !2292, !tbaa !1670
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2293
  %16 = load ptr, ptr %15, align 8, !dbg !2293, !tbaa !1673
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2294
  %18 = add i64 %17, 1, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %18, metadata !2282, metadata !DIExpression()), !dbg !2284
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %19, metadata !2283, metadata !DIExpression()), !dbg !2284
  %20 = load i32, ptr %5, align 8, !dbg !2297, !tbaa !1599
  %21 = load ptr, ptr %13, align 8, !dbg !2298, !tbaa !1670
  %22 = load ptr, ptr %15, align 8, !dbg !2299, !tbaa !1673
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2300
  store i32 %7, ptr %6, align 4, !dbg !2301, !tbaa !917
  ret ptr %19, !dbg !2302
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2272 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2271, metadata !DIExpression()), !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2276, metadata !DIExpression()), !dbg !2303
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2277, metadata !DIExpression()), !dbg !2303
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2278, metadata !DIExpression()), !dbg !2303
  %5 = icmp eq ptr %3, null, !dbg !2304
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2304
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2279, metadata !DIExpression()), !dbg !2303
  %7 = tail call ptr @__errno_location() #42, !dbg !2305
  %8 = load i32, ptr %7, align 4, !dbg !2305, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2280, metadata !DIExpression()), !dbg !2303
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2306
  %10 = load i32, ptr %9, align 4, !dbg !2306, !tbaa !1649
  %11 = icmp eq ptr %2, null, !dbg !2307
  %12 = zext i1 %11 to i32, !dbg !2307
  %13 = or i32 %10, %12, !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2281, metadata !DIExpression()), !dbg !2303
  %14 = load i32, ptr %6, align 8, !dbg !2309, !tbaa !1599
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2310
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2311
  %17 = load ptr, ptr %16, align 8, !dbg !2311, !tbaa !1670
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2312
  %19 = load ptr, ptr %18, align 8, !dbg !2312, !tbaa !1673
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2313
  %21 = add i64 %20, 1, !dbg !2314
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2282, metadata !DIExpression()), !dbg !2303
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2315
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2283, metadata !DIExpression()), !dbg !2303
  %23 = load i32, ptr %6, align 8, !dbg !2316, !tbaa !1599
  %24 = load ptr, ptr %16, align 8, !dbg !2317, !tbaa !1670
  %25 = load ptr, ptr %18, align 8, !dbg !2318, !tbaa !1673
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2319
  store i32 %8, ptr %7, align 4, !dbg !2320, !tbaa !917
  br i1 %11, label %28, label %27, !dbg !2321

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2322, !tbaa !2324
  br label %28, !dbg !2325

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2326
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2327 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2332, !tbaa !846
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2329, metadata !DIExpression()), !dbg !2333
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2330, metadata !DIExpression()), !dbg !2334
  %2 = load i32, ptr @nslots, align 4, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2330, metadata !DIExpression()), !dbg !2334
  %3 = icmp sgt i32 %2, 1, !dbg !2335
  br i1 %3, label %4, label %6, !dbg !2337

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2335
  br label %10, !dbg !2337

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2338

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2338
  %8 = load ptr, ptr %7, align 8, !dbg !2338, !tbaa !2340
  %9 = icmp eq ptr %8, @slot0, !dbg !2342
  br i1 %9, label %17, label %16, !dbg !2343

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2330, metadata !DIExpression()), !dbg !2334
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2344
  %13 = load ptr, ptr %12, align 8, !dbg !2344, !tbaa !2340
  tail call void @free(ptr noundef %13) #39, !dbg !2345
  %14 = add nuw nsw i64 %11, 1, !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2330, metadata !DIExpression()), !dbg !2334
  %15 = icmp eq i64 %14, %5, !dbg !2335
  br i1 %15, label %.loopexit, label %10, !dbg !2337, !llvm.loop !2347

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2349
  store i64 256, ptr @slotvec0, align 8, !dbg !2351, !tbaa !2352
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2353, !tbaa !2340
  br label %17, !dbg !2354

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2355
  br i1 %18, label %20, label %19, !dbg !2357

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2358
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2360, !tbaa !846
  br label %20, !dbg !2361

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2362, !tbaa !917
  ret void, !dbg !2363
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2364 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2367 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2370, metadata !DIExpression()), !dbg !2371
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2372
  ret ptr %3, !dbg !2373
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2374 {
  %5 = alloca i64, align 8, !DIAssignID !2394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2388, metadata !DIExpression(), metadata !2394, metadata ptr %5, metadata !DIExpression()), !dbg !2395
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2378, metadata !DIExpression()), !dbg !2396
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2379, metadata !DIExpression()), !dbg !2396
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2380, metadata !DIExpression()), !dbg !2396
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2381, metadata !DIExpression()), !dbg !2396
  %6 = tail call ptr @__errno_location() #42, !dbg !2397
  %7 = load i32, ptr %6, align 4, !dbg !2397, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2382, metadata !DIExpression()), !dbg !2396
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2398, !tbaa !846
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2383, metadata !DIExpression()), !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2384, metadata !DIExpression()), !dbg !2396
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2399
  br i1 %9, label %10, label %11, !dbg !2399

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2401
  unreachable, !dbg !2401

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2402, !tbaa !917
  %13 = icmp sgt i32 %12, %0, !dbg !2403
  br i1 %13, label %32, label %14, !dbg !2404

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2405
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2385, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2395
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2406
  %16 = sext i32 %12 to i64, !dbg !2407
  store i64 %16, ptr %5, align 8, !dbg !2408, !tbaa !2324, !DIAssignID !2409
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2388, metadata !DIExpression(), metadata !2409, metadata ptr %5, metadata !DIExpression()), !dbg !2395
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2410
  %18 = add nuw nsw i32 %0, 1, !dbg !2411
  %19 = sub i32 %18, %12, !dbg !2412
  %20 = sext i32 %19 to i64, !dbg !2413
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2414
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2383, metadata !DIExpression()), !dbg !2396
  store ptr %21, ptr @slotvec, align 8, !dbg !2415, !tbaa !846
  br i1 %15, label %22, label %23, !dbg !2416

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2417, !tbaa.struct !2419
  br label %23, !dbg !2420

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2421, !tbaa !917
  %25 = sext i32 %24 to i64, !dbg !2422
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2422
  %27 = load i64, ptr %5, align 8, !dbg !2423, !tbaa !2324
  %28 = sub nsw i64 %27, %25, !dbg !2424
  %29 = shl i64 %28, 4, !dbg !2425
  call void @llvm.dbg.value(metadata ptr %26, metadata !1808, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i64 %29, metadata !1812, metadata !DIExpression()), !dbg !2426
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2428
  %30 = load i64, ptr %5, align 8, !dbg !2429, !tbaa !2324
  %31 = trunc i64 %30 to i32, !dbg !2429
  store i32 %31, ptr @nslots, align 4, !dbg !2430, !tbaa !917
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2431
  br label %32, !dbg !2432

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2396
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2383, metadata !DIExpression()), !dbg !2396
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2433
  %36 = load i64, ptr %35, align 8, !dbg !2434, !tbaa !2352
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2389, metadata !DIExpression()), !dbg !2435
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2436
  %38 = load ptr, ptr %37, align 8, !dbg !2436, !tbaa !2340
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2391, metadata !DIExpression()), !dbg !2435
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2437
  %40 = load i32, ptr %39, align 4, !dbg !2437, !tbaa !1649
  %41 = or i32 %40, 1, !dbg !2438
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2392, metadata !DIExpression()), !dbg !2435
  %42 = load i32, ptr %3, align 8, !dbg !2439, !tbaa !1599
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2440
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2441
  %45 = load ptr, ptr %44, align 8, !dbg !2441, !tbaa !1670
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2442
  %47 = load ptr, ptr %46, align 8, !dbg !2442, !tbaa !1673
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2443
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2393, metadata !DIExpression()), !dbg !2435
  %49 = icmp ugt i64 %36, %48, !dbg !2444
  br i1 %49, label %60, label %50, !dbg !2446

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2447
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2389, metadata !DIExpression()), !dbg !2435
  store i64 %51, ptr %35, align 8, !dbg !2449, !tbaa !2352
  %52 = icmp eq ptr %38, @slot0, !dbg !2450
  br i1 %52, label %54, label %53, !dbg !2452

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2453
  br label %54, !dbg !2453

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2454
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2391, metadata !DIExpression()), !dbg !2435
  store ptr %55, ptr %37, align 8, !dbg !2455, !tbaa !2340
  %56 = load i32, ptr %3, align 8, !dbg !2456, !tbaa !1599
  %57 = load ptr, ptr %44, align 8, !dbg !2457, !tbaa !1670
  %58 = load ptr, ptr %46, align 8, !dbg !2458, !tbaa !1673
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2459
  br label %60, !dbg !2460

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2435
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2391, metadata !DIExpression()), !dbg !2435
  store i32 %7, ptr %6, align 4, !dbg !2461, !tbaa !917
  ret ptr %61, !dbg !2462
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2463 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2467, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2468, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2469, metadata !DIExpression()), !dbg !2470
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2471
  ret ptr %4, !dbg !2472
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 0, metadata !2369, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata ptr %0, metadata !2370, metadata !DIExpression()), !dbg !2477
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2479
  ret ptr %2, !dbg !2480
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2481 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2485, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 0, metadata !2467, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata ptr %0, metadata !2468, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 %1, metadata !2469, metadata !DIExpression()), !dbg !2488
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2490
  ret ptr %3, !dbg !2491
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2492 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2500
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2500, metadata ptr %4, metadata !DIExpression()), !dbg !2501
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2496, metadata !DIExpression()), !dbg !2501
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2497, metadata !DIExpression()), !dbg !2501
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2502
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %1, metadata !2507, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2512, metadata !DIExpression()), !dbg !2515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2515, !alias.scope !2503, !DIAssignID !2516
  call void @llvm.dbg.assign(metadata i8 0, metadata !2499, metadata !DIExpression(), metadata !2516, metadata ptr %4, metadata !DIExpression()), !dbg !2501
  %5 = icmp eq i32 %1, 10, !dbg !2517
  br i1 %5, label %6, label %7, !dbg !2519

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2520, !noalias !2503
  unreachable, !dbg !2520

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2521, !tbaa !1599, !alias.scope !2503, !DIAssignID !2522
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2522, metadata ptr %4, metadata !DIExpression()), !dbg !2501
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2523
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2524
  ret ptr %8, !dbg !2525
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2526 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2535
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2534, metadata !DIExpression(), metadata !2535, metadata ptr %5, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2530, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2531, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2532, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2533, metadata !DIExpression()), !dbg !2536
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2538), !dbg !2541
  call void @llvm.dbg.value(metadata i32 %1, metadata !2507, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2512, metadata !DIExpression()), !dbg !2544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2544, !alias.scope !2538, !DIAssignID !2545
  call void @llvm.dbg.assign(metadata i8 0, metadata !2534, metadata !DIExpression(), metadata !2545, metadata ptr %5, metadata !DIExpression()), !dbg !2536
  %6 = icmp eq i32 %1, 10, !dbg !2546
  br i1 %6, label %7, label %8, !dbg !2547

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2548, !noalias !2538
  unreachable, !dbg !2548

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2549, !tbaa !1599, !alias.scope !2538, !DIAssignID !2550
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2534, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2550, metadata ptr %5, metadata !DIExpression()), !dbg !2536
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2551
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2552
  ret ptr %9, !dbg !2553
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2554 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2560
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2558, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2560, metadata ptr %3, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2496, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %0, metadata !2497, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %1, metadata !2498, metadata !DIExpression()), !dbg !2562
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2571, !alias.scope !2565, !DIAssignID !2572
  call void @llvm.dbg.assign(metadata i8 0, metadata !2499, metadata !DIExpression(), metadata !2572, metadata ptr %3, metadata !DIExpression()), !dbg !2562
  %4 = icmp eq i32 %0, 10, !dbg !2573
  br i1 %4, label %5, label %6, !dbg !2574

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2575, !noalias !2565
  unreachable, !dbg !2575

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2576, !tbaa !1599, !alias.scope !2565, !DIAssignID !2577
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2577, metadata ptr %3, metadata !DIExpression()), !dbg !2562
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2578
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2579
  ret ptr %7, !dbg !2580
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2581 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2588
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2585, metadata !DIExpression()), !dbg !2589
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2586, metadata !DIExpression()), !dbg !2589
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2534, metadata !DIExpression(), metadata !2588, metadata ptr %4, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 0, metadata !2530, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata ptr %1, metadata !2532, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i64 %2, metadata !2533, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2512, metadata !DIExpression()), !dbg !2599
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2599, !alias.scope !2593, !DIAssignID !2600
  call void @llvm.dbg.assign(metadata i8 0, metadata !2534, metadata !DIExpression(), metadata !2600, metadata ptr %4, metadata !DIExpression()), !dbg !2590
  %5 = icmp eq i32 %0, 10, !dbg !2601
  br i1 %5, label %6, label %7, !dbg !2602

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2603, !noalias !2593
  unreachable, !dbg !2603

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2604, !tbaa !1599, !alias.scope !2593, !DIAssignID !2605
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2534, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2605, metadata ptr %4, metadata !DIExpression()), !dbg !2590
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2606
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2607
  ret ptr %8, !dbg !2608
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2609 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2617
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2616, metadata !DIExpression(), metadata !2617, metadata ptr %4, metadata !DIExpression()), !dbg !2618
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2613, metadata !DIExpression()), !dbg !2618
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2614, metadata !DIExpression()), !dbg !2618
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2615, metadata !DIExpression()), !dbg !2618
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2620, !tbaa.struct !2621, !DIAssignID !2622
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2616, metadata !DIExpression(), metadata !2622, metadata ptr %4, metadata !DIExpression()), !dbg !2618
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1617, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1618, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1619, metadata !DIExpression()), !dbg !2623
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2625
  %6 = lshr i8 %2, 5, !dbg !2626
  %7 = zext nneg i8 %6 to i64, !dbg !2626
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2627
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1620, metadata !DIExpression()), !dbg !2623
  %9 = and i8 %2, 31, !dbg !2628
  %10 = zext nneg i8 %9 to i32, !dbg !2628
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1622, metadata !DIExpression()), !dbg !2623
  %11 = load i32, ptr %8, align 4, !dbg !2629, !tbaa !917
  %12 = lshr i32 %11, %10, !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1623, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2623
  %13 = and i32 %12, 1, !dbg !2631
  %14 = xor i32 %13, 1, !dbg !2631
  %15 = shl nuw i32 %14, %10, !dbg !2632
  %16 = xor i32 %15, %11, !dbg !2633
  store i32 %16, ptr %8, align 4, !dbg !2633, !tbaa !917
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2634
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2635
  ret ptr %17, !dbg !2636
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2637 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2643
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2641, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2616, metadata !DIExpression(), metadata !2643, metadata ptr %3, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %0, metadata !2613, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 -1, metadata !2614, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 %1, metadata !2615, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2648, !tbaa.struct !2621, !DIAssignID !2649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2616, metadata !DIExpression(), metadata !2649, metadata ptr %3, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %3, metadata !1616, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 %1, metadata !1617, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 1, metadata !1618, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 %1, metadata !1619, metadata !DIExpression()), !dbg !2650
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2652
  %5 = lshr i8 %1, 5, !dbg !2653
  %6 = zext nneg i8 %5 to i64, !dbg !2653
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2654
  call void @llvm.dbg.value(metadata ptr %7, metadata !1620, metadata !DIExpression()), !dbg !2650
  %8 = and i8 %1, 31, !dbg !2655
  %9 = zext nneg i8 %8 to i32, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %9, metadata !1622, metadata !DIExpression()), !dbg !2650
  %10 = load i32, ptr %7, align 4, !dbg !2656, !tbaa !917
  %11 = lshr i32 %10, %9, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %11, metadata !1623, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2650
  %12 = and i32 %11, 1, !dbg !2658
  %13 = xor i32 %12, 1, !dbg !2658
  %14 = shl nuw i32 %13, %9, !dbg !2659
  %15 = xor i32 %14, %10, !dbg !2660
  store i32 %15, ptr %7, align 4, !dbg !2660, !tbaa !917
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2661
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2662
  ret ptr %16, !dbg !2663
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2664 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2667
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2666, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %0, metadata !2641, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 58, metadata !2642, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2616, metadata !DIExpression(), metadata !2667, metadata ptr %2, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %0, metadata !2613, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 -1, metadata !2614, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 58, metadata !2615, metadata !DIExpression()), !dbg !2671
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2674, !tbaa.struct !2621, !DIAssignID !2675
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2616, metadata !DIExpression(), metadata !2675, metadata ptr %2, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %2, metadata !1616, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 58, metadata !1617, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 1, metadata !1618, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 58, metadata !1619, metadata !DIExpression()), !dbg !2676
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2678
  call void @llvm.dbg.value(metadata ptr %3, metadata !1620, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 26, metadata !1622, metadata !DIExpression()), !dbg !2676
  %4 = load i32, ptr %3, align 4, !dbg !2679, !tbaa !917
  call void @llvm.dbg.value(metadata i32 %4, metadata !1623, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2676
  %5 = or i32 %4, 67108864, !dbg !2680
  store i32 %5, ptr %3, align 4, !dbg !2680, !tbaa !917
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2681
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2682
  ret ptr %6, !dbg !2683
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2684 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2688
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2687, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2616, metadata !DIExpression(), metadata !2688, metadata ptr %3, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %0, metadata !2613, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %1, metadata !2614, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 58, metadata !2615, metadata !DIExpression()), !dbg !2690
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2693, !tbaa.struct !2621, !DIAssignID !2694
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2616, metadata !DIExpression(), metadata !2694, metadata ptr %3, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %3, metadata !1616, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !1617, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 1, metadata !1618, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !1619, metadata !DIExpression()), !dbg !2695
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2697
  call void @llvm.dbg.value(metadata ptr %4, metadata !1620, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 26, metadata !1622, metadata !DIExpression()), !dbg !2695
  %5 = load i32, ptr %4, align 4, !dbg !2698, !tbaa !917
  call void @llvm.dbg.value(metadata i32 %5, metadata !1623, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2695
  %6 = or i32 %5, 67108864, !dbg !2699
  store i32 %6, ptr %4, align 4, !dbg !2699, !tbaa !917
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2700
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2701
  ret ptr %7, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2703 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2709
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2708, metadata !DIExpression(), metadata !2709, metadata ptr %4, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2711
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2706, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2707, metadata !DIExpression()), !dbg !2710
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2713
  call void @llvm.dbg.value(metadata i32 %1, metadata !2507, metadata !DIExpression()), !dbg !2714
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2714
  %5 = icmp eq i32 %1, 10, !dbg !2715
  br i1 %5, label %6, label %7, !dbg !2716

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2717, !noalias !2718
  unreachable, !dbg !2717

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2714
  store i32 %1, ptr %4, align 8, !dbg !2721, !tbaa.struct !2621, !DIAssignID !2722
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2721
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2721
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2708, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2722, metadata ptr %4, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2708, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2723, metadata ptr %8, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1617, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1618, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1619, metadata !DIExpression()), !dbg !2724
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2726
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1620, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1622, metadata !DIExpression()), !dbg !2724
  %10 = load i32, ptr %9, align 4, !dbg !2727, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1623, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2724
  %11 = or i32 %10, 67108864, !dbg !2728
  store i32 %11, ptr %9, align 4, !dbg !2728, !tbaa !917, !DIAssignID !2729
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2708, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2729, metadata ptr %9, metadata !DIExpression()), !dbg !2710
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2730
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2731
  ret ptr %12, !dbg !2732
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2733 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2741
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2737, metadata !DIExpression()), !dbg !2742
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2738, metadata !DIExpression()), !dbg !2742
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2739, metadata !DIExpression()), !dbg !2742
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2740, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(), metadata !2741, metadata ptr %5, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 %0, metadata !2748, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %1, metadata !2749, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %2, metadata !2750, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %3, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 -1, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2756, !tbaa.struct !2621, !DIAssignID !2757
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(), metadata !2757, metadata ptr %5, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2758, metadata ptr undef, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %5, metadata !1656, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %1, metadata !1657, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %5, metadata !1656, metadata !DIExpression()), !dbg !2759
  store i32 10, ptr %5, align 8, !dbg !2761, !tbaa !1599, !DIAssignID !2762
  call void @llvm.dbg.assign(metadata i32 10, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2762, metadata ptr %5, metadata !DIExpression()), !dbg !2753
  %6 = icmp ne ptr %1, null, !dbg !2763
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2764
  br i1 %8, label %10, label %9, !dbg !2764

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2765
  unreachable, !dbg !2765

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2766
  store ptr %1, ptr %11, align 8, !dbg !2767, !tbaa !1670, !DIAssignID !2768
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2768, metadata ptr %11, metadata !DIExpression()), !dbg !2753
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2769
  store ptr %2, ptr %12, align 8, !dbg !2770, !tbaa !1673, !DIAssignID !2771
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2771, metadata ptr %12, metadata !DIExpression()), !dbg !2753
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2772
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2773
  ret ptr %13, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2744 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2775
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(), metadata !2775, metadata ptr %6, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2748, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2749, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2750, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2751, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2752, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2778, !tbaa.struct !2621, !DIAssignID !2779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(), metadata !2779, metadata ptr %6, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2780, metadata ptr undef, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %6, metadata !1656, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %1, metadata !1657, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %6, metadata !1656, metadata !DIExpression()), !dbg !2781
  store i32 10, ptr %6, align 8, !dbg !2783, !tbaa !1599, !DIAssignID !2784
  call void @llvm.dbg.assign(metadata i32 10, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2784, metadata ptr %6, metadata !DIExpression()), !dbg !2776
  %7 = icmp ne ptr %1, null, !dbg !2785
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2786
  br i1 %9, label %11, label %10, !dbg !2786

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2787
  unreachable, !dbg !2787

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2788
  store ptr %1, ptr %12, align 8, !dbg !2789, !tbaa !1670, !DIAssignID !2790
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2790, metadata ptr %12, metadata !DIExpression()), !dbg !2776
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2791
  store ptr %2, ptr %13, align 8, !dbg !2792, !tbaa !1673, !DIAssignID !2793
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2793, metadata ptr %13, metadata !DIExpression()), !dbg !2776
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2794
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2795
  ret ptr %14, !dbg !2796
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2797 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2804
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2805
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2802, metadata !DIExpression()), !dbg !2805
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %0, metadata !2738, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %1, metadata !2739, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %2, metadata !2740, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(), metadata !2804, metadata ptr %4, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i32 0, metadata !2748, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %0, metadata !2749, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %1, metadata !2750, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %2, metadata !2751, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 -1, metadata !2752, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2811, !tbaa.struct !2621, !DIAssignID !2812
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(), metadata !2812, metadata ptr %4, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2813, metadata ptr undef, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %0, metadata !1657, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %1, metadata !1658, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !2814
  store i32 10, ptr %4, align 8, !dbg !2816, !tbaa !1599, !DIAssignID !2817
  call void @llvm.dbg.assign(metadata i32 10, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2817, metadata ptr %4, metadata !DIExpression()), !dbg !2808
  %5 = icmp ne ptr %0, null, !dbg !2818
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2819
  br i1 %7, label %9, label %8, !dbg !2819

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2820
  unreachable, !dbg !2820

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2821
  store ptr %0, ptr %10, align 8, !dbg !2822, !tbaa !1670, !DIAssignID !2823
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2823, metadata ptr %10, metadata !DIExpression()), !dbg !2808
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2824
  store ptr %1, ptr %11, align 8, !dbg !2825, !tbaa !1673, !DIAssignID !2826
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2826, metadata ptr %11, metadata !DIExpression()), !dbg !2808
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2827
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2828
  ret ptr %12, !dbg !2829
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2830 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2838
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2834, metadata !DIExpression()), !dbg !2839
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2835, metadata !DIExpression()), !dbg !2839
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2836, metadata !DIExpression()), !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2837, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(), metadata !2838, metadata ptr %5, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, metadata !2748, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %0, metadata !2749, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %1, metadata !2750, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %2, metadata !2751, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %3, metadata !2752, metadata !DIExpression()), !dbg !2840
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2843, !tbaa.struct !2621, !DIAssignID !2844
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(), metadata !2844, metadata ptr %5, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2845, metadata ptr undef, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %5, metadata !1656, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %0, metadata !1657, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %1, metadata !1658, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %5, metadata !1656, metadata !DIExpression()), !dbg !2846
  store i32 10, ptr %5, align 8, !dbg !2848, !tbaa !1599, !DIAssignID !2849
  call void @llvm.dbg.assign(metadata i32 10, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2849, metadata ptr %5, metadata !DIExpression()), !dbg !2840
  %6 = icmp ne ptr %0, null, !dbg !2850
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2851
  br i1 %8, label %10, label %9, !dbg !2851

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2852
  unreachable, !dbg !2852

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2853
  store ptr %0, ptr %11, align 8, !dbg !2854, !tbaa !1670, !DIAssignID !2855
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2855, metadata ptr %11, metadata !DIExpression()), !dbg !2840
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2856
  store ptr %1, ptr %12, align 8, !dbg !2857, !tbaa !1673, !DIAssignID !2858
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2743, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2858, metadata ptr %12, metadata !DIExpression()), !dbg !2840
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2859
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2860
  ret ptr %13, !dbg !2861
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2862 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2866, metadata !DIExpression()), !dbg !2869
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2867, metadata !DIExpression()), !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2868, metadata !DIExpression()), !dbg !2869
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2870
  ret ptr %4, !dbg !2871
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2872 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2878
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 0, metadata !2866, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %0, metadata !2867, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %1, metadata !2868, metadata !DIExpression()), !dbg !2879
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2881
  ret ptr %3, !dbg !2882
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2883 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2887, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 %0, metadata !2866, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %1, metadata !2867, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 -1, metadata !2868, metadata !DIExpression()), !dbg !2890
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2892
  ret ptr %3, !dbg !2893
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2894 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i32 0, metadata !2887, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 0, metadata !2866, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %0, metadata !2867, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 -1, metadata !2868, metadata !DIExpression()), !dbg !2902
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2904
  ret ptr %2, !dbg !2905
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2906 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2945, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2946, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2948, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2949, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2950, metadata !DIExpression()), !dbg !2951
  %7 = icmp eq ptr %1, null, !dbg !2952
  br i1 %7, label %10, label %8, !dbg !2954

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !2955
  br label %12, !dbg !2955

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %2, ptr noundef %3) #39, !dbg !2956
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.3.81, i32 noundef 5) #39, !dbg !2957
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !2957
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2958
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.5.83, i32 noundef 5) #39, !dbg !2959
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.84) #39, !dbg !2959
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2960
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
  ], !dbg !2961

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.7.85, i32 noundef 5) #39, !dbg !2962
  %21 = load ptr, ptr %4, align 8, !dbg !2962, !tbaa !846
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !2962
  br label %147, !dbg !2964

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.8.86, i32 noundef 5) #39, !dbg !2965
  %25 = load ptr, ptr %4, align 8, !dbg !2965, !tbaa !846
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2965
  %27 = load ptr, ptr %26, align 8, !dbg !2965, !tbaa !846
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !2965
  br label %147, !dbg !2966

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.9.87, i32 noundef 5) #39, !dbg !2967
  %31 = load ptr, ptr %4, align 8, !dbg !2967, !tbaa !846
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2967
  %33 = load ptr, ptr %32, align 8, !dbg !2967, !tbaa !846
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2967
  %35 = load ptr, ptr %34, align 8, !dbg !2967, !tbaa !846
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !2967
  br label %147, !dbg !2968

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.10.88, i32 noundef 5) #39, !dbg !2969
  %39 = load ptr, ptr %4, align 8, !dbg !2969, !tbaa !846
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2969
  %41 = load ptr, ptr %40, align 8, !dbg !2969, !tbaa !846
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2969
  %43 = load ptr, ptr %42, align 8, !dbg !2969, !tbaa !846
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2969
  %45 = load ptr, ptr %44, align 8, !dbg !2969, !tbaa !846
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !2969
  br label %147, !dbg !2970

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.11.89, i32 noundef 5) #39, !dbg !2971
  %49 = load ptr, ptr %4, align 8, !dbg !2971, !tbaa !846
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2971
  %51 = load ptr, ptr %50, align 8, !dbg !2971, !tbaa !846
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2971
  %53 = load ptr, ptr %52, align 8, !dbg !2971, !tbaa !846
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2971
  %55 = load ptr, ptr %54, align 8, !dbg !2971, !tbaa !846
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2971
  %57 = load ptr, ptr %56, align 8, !dbg !2971, !tbaa !846
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !2971
  br label %147, !dbg !2972

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.12.90, i32 noundef 5) #39, !dbg !2973
  %61 = load ptr, ptr %4, align 8, !dbg !2973, !tbaa !846
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2973
  %63 = load ptr, ptr %62, align 8, !dbg !2973, !tbaa !846
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2973
  %65 = load ptr, ptr %64, align 8, !dbg !2973, !tbaa !846
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2973
  %67 = load ptr, ptr %66, align 8, !dbg !2973, !tbaa !846
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2973
  %69 = load ptr, ptr %68, align 8, !dbg !2973, !tbaa !846
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2973
  %71 = load ptr, ptr %70, align 8, !dbg !2973, !tbaa !846
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !2973
  br label %147, !dbg !2974

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.13.91, i32 noundef 5) #39, !dbg !2975
  %75 = load ptr, ptr %4, align 8, !dbg !2975, !tbaa !846
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2975
  %77 = load ptr, ptr %76, align 8, !dbg !2975, !tbaa !846
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2975
  %79 = load ptr, ptr %78, align 8, !dbg !2975, !tbaa !846
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2975
  %81 = load ptr, ptr %80, align 8, !dbg !2975, !tbaa !846
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2975
  %83 = load ptr, ptr %82, align 8, !dbg !2975, !tbaa !846
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2975
  %85 = load ptr, ptr %84, align 8, !dbg !2975, !tbaa !846
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2975
  %87 = load ptr, ptr %86, align 8, !dbg !2975, !tbaa !846
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !2975
  br label %147, !dbg !2976

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.14.92, i32 noundef 5) #39, !dbg !2977
  %91 = load ptr, ptr %4, align 8, !dbg !2977, !tbaa !846
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2977
  %93 = load ptr, ptr %92, align 8, !dbg !2977, !tbaa !846
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2977
  %95 = load ptr, ptr %94, align 8, !dbg !2977, !tbaa !846
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2977
  %97 = load ptr, ptr %96, align 8, !dbg !2977, !tbaa !846
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2977
  %99 = load ptr, ptr %98, align 8, !dbg !2977, !tbaa !846
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2977
  %101 = load ptr, ptr %100, align 8, !dbg !2977, !tbaa !846
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2977
  %103 = load ptr, ptr %102, align 8, !dbg !2977, !tbaa !846
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2977
  %105 = load ptr, ptr %104, align 8, !dbg !2977, !tbaa !846
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !2977
  br label %147, !dbg !2978

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.15.93, i32 noundef 5) #39, !dbg !2979
  %109 = load ptr, ptr %4, align 8, !dbg !2979, !tbaa !846
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2979
  %111 = load ptr, ptr %110, align 8, !dbg !2979, !tbaa !846
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2979
  %113 = load ptr, ptr %112, align 8, !dbg !2979, !tbaa !846
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2979
  %115 = load ptr, ptr %114, align 8, !dbg !2979, !tbaa !846
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2979
  %117 = load ptr, ptr %116, align 8, !dbg !2979, !tbaa !846
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2979
  %119 = load ptr, ptr %118, align 8, !dbg !2979, !tbaa !846
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2979
  %121 = load ptr, ptr %120, align 8, !dbg !2979, !tbaa !846
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2979
  %123 = load ptr, ptr %122, align 8, !dbg !2979, !tbaa !846
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2979
  %125 = load ptr, ptr %124, align 8, !dbg !2979, !tbaa !846
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !2979
  br label %147, !dbg !2980

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.16.94, i32 noundef 5) #39, !dbg !2981
  %129 = load ptr, ptr %4, align 8, !dbg !2981, !tbaa !846
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2981
  %131 = load ptr, ptr %130, align 8, !dbg !2981, !tbaa !846
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2981
  %133 = load ptr, ptr %132, align 8, !dbg !2981, !tbaa !846
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2981
  %135 = load ptr, ptr %134, align 8, !dbg !2981, !tbaa !846
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2981
  %137 = load ptr, ptr %136, align 8, !dbg !2981, !tbaa !846
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2981
  %139 = load ptr, ptr %138, align 8, !dbg !2981, !tbaa !846
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2981
  %141 = load ptr, ptr %140, align 8, !dbg !2981, !tbaa !846
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2981
  %143 = load ptr, ptr %142, align 8, !dbg !2981, !tbaa !846
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2981
  %145 = load ptr, ptr %144, align 8, !dbg !2981, !tbaa !846
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !2981
  br label %147, !dbg !2982

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2983
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2984 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !2994
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2989, metadata !DIExpression()), !dbg !2994
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !2994
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2991, metadata !DIExpression()), !dbg !2994
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2992, metadata !DIExpression()), !dbg !2994
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2993, metadata !DIExpression()), !dbg !2994
  br label %6, !dbg !2995

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2997
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2993, metadata !DIExpression()), !dbg !2994
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2998
  %9 = load ptr, ptr %8, align 8, !dbg !2998, !tbaa !846
  %10 = icmp eq ptr %9, null, !dbg !3000
  %11 = add i64 %7, 1, !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2993, metadata !DIExpression()), !dbg !2994
  br i1 %10, label %12, label %6, !dbg !3000, !llvm.loop !3002

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2997
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3004
  ret void, !dbg !3005
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3006 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3026, metadata !DIExpression(), metadata !3028, metadata ptr %6, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3021, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3022, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3023, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3024, metadata !DIExpression(DW_OP_deref)), !dbg !3029
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression()), !dbg !3029
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression()), !dbg !3029
  %10 = icmp sgt i32 %9, -1, !dbg !3031
  br i1 %10, label %18, label %11, !dbg !3031

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3031
  store i32 %12, ptr %7, align 8, !dbg !3031
  %13 = icmp ult i32 %9, -7, !dbg !3031
  br i1 %13, label %14, label %18, !dbg !3031

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3031
  %16 = sext i32 %9 to i64, !dbg !3031
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3031
  br label %22, !dbg !3031

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3031
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3031
  store ptr %21, ptr %4, align 8, !dbg !3031
  br label %22, !dbg !3031

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3031
  %25 = load ptr, ptr %24, align 8, !dbg !3031
  store ptr %25, ptr %6, align 8, !dbg !3034, !tbaa !846
  %26 = icmp eq ptr %25, null, !dbg !3035
  br i1 %26, label %197, label %27, !dbg !3036

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3025, metadata !DIExpression()), !dbg !3029
  %28 = icmp sgt i32 %23, -1, !dbg !3031
  br i1 %28, label %36, label %29, !dbg !3031

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3031
  store i32 %30, ptr %7, align 8, !dbg !3031
  %31 = icmp ult i32 %23, -7, !dbg !3031
  br i1 %31, label %32, label %36, !dbg !3031

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3031
  %34 = sext i32 %23 to i64, !dbg !3031
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3031
  br label %40, !dbg !3031

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3031
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3031
  store ptr %39, ptr %4, align 8, !dbg !3031
  br label %40, !dbg !3031

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3031
  %43 = load ptr, ptr %42, align 8, !dbg !3031
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3037
  store ptr %43, ptr %44, align 8, !dbg !3034, !tbaa !846
  %45 = icmp eq ptr %43, null, !dbg !3035
  br i1 %45, label %197, label %46, !dbg !3036

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3025, metadata !DIExpression()), !dbg !3029
  %47 = icmp sgt i32 %41, -1, !dbg !3031
  br i1 %47, label %55, label %48, !dbg !3031

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3031
  store i32 %49, ptr %7, align 8, !dbg !3031
  %50 = icmp ult i32 %41, -7, !dbg !3031
  br i1 %50, label %51, label %55, !dbg !3031

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3031
  %53 = sext i32 %41 to i64, !dbg !3031
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3031
  br label %59, !dbg !3031

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3031
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3031
  store ptr %58, ptr %4, align 8, !dbg !3031
  br label %59, !dbg !3031

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3031
  %62 = load ptr, ptr %61, align 8, !dbg !3031
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3037
  store ptr %62, ptr %63, align 8, !dbg !3034, !tbaa !846
  %64 = icmp eq ptr %62, null, !dbg !3035
  br i1 %64, label %197, label %65, !dbg !3036

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3025, metadata !DIExpression()), !dbg !3029
  %66 = icmp sgt i32 %60, -1, !dbg !3031
  br i1 %66, label %74, label %67, !dbg !3031

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3031
  store i32 %68, ptr %7, align 8, !dbg !3031
  %69 = icmp ult i32 %60, -7, !dbg !3031
  br i1 %69, label %70, label %74, !dbg !3031

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3031
  %72 = sext i32 %60 to i64, !dbg !3031
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3031
  br label %78, !dbg !3031

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3031
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3031
  store ptr %77, ptr %4, align 8, !dbg !3031
  br label %78, !dbg !3031

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3031
  %81 = load ptr, ptr %80, align 8, !dbg !3031
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3037
  store ptr %81, ptr %82, align 8, !dbg !3034, !tbaa !846
  %83 = icmp eq ptr %81, null, !dbg !3035
  br i1 %83, label %197, label %84, !dbg !3036

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3025, metadata !DIExpression()), !dbg !3029
  %85 = icmp sgt i32 %79, -1, !dbg !3031
  br i1 %85, label %93, label %86, !dbg !3031

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3031
  store i32 %87, ptr %7, align 8, !dbg !3031
  %88 = icmp ult i32 %79, -7, !dbg !3031
  br i1 %88, label %89, label %93, !dbg !3031

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3031
  %91 = sext i32 %79 to i64, !dbg !3031
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3031
  br label %97, !dbg !3031

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3031
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3031
  store ptr %96, ptr %4, align 8, !dbg !3031
  br label %97, !dbg !3031

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3031
  %100 = load ptr, ptr %99, align 8, !dbg !3031
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3037
  store ptr %100, ptr %101, align 8, !dbg !3034, !tbaa !846
  %102 = icmp eq ptr %100, null, !dbg !3035
  br i1 %102, label %197, label %103, !dbg !3036

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3025, metadata !DIExpression()), !dbg !3029
  %104 = icmp sgt i32 %98, -1, !dbg !3031
  br i1 %104, label %112, label %105, !dbg !3031

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3031
  store i32 %106, ptr %7, align 8, !dbg !3031
  %107 = icmp ult i32 %98, -7, !dbg !3031
  br i1 %107, label %108, label %112, !dbg !3031

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3031
  %110 = sext i32 %98 to i64, !dbg !3031
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3031
  br label %116, !dbg !3031

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3031
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3031
  store ptr %115, ptr %4, align 8, !dbg !3031
  br label %116, !dbg !3031

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3031
  %119 = load ptr, ptr %118, align 8, !dbg !3031
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3037
  store ptr %119, ptr %120, align 8, !dbg !3034, !tbaa !846
  %121 = icmp eq ptr %119, null, !dbg !3035
  br i1 %121, label %197, label %122, !dbg !3036

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3025, metadata !DIExpression()), !dbg !3029
  %123 = icmp sgt i32 %117, -1, !dbg !3031
  br i1 %123, label %131, label %124, !dbg !3031

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3031
  store i32 %125, ptr %7, align 8, !dbg !3031
  %126 = icmp ult i32 %117, -7, !dbg !3031
  br i1 %126, label %127, label %131, !dbg !3031

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3031
  %129 = sext i32 %117 to i64, !dbg !3031
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3031
  br label %135, !dbg !3031

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3031
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3031
  store ptr %134, ptr %4, align 8, !dbg !3031
  br label %135, !dbg !3031

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3031
  %138 = load ptr, ptr %137, align 8, !dbg !3031
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3037
  store ptr %138, ptr %139, align 8, !dbg !3034, !tbaa !846
  %140 = icmp eq ptr %138, null, !dbg !3035
  br i1 %140, label %197, label %141, !dbg !3036

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3025, metadata !DIExpression()), !dbg !3029
  %142 = icmp sgt i32 %136, -1, !dbg !3031
  br i1 %142, label %150, label %143, !dbg !3031

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3031
  store i32 %144, ptr %7, align 8, !dbg !3031
  %145 = icmp ult i32 %136, -7, !dbg !3031
  br i1 %145, label %146, label %150, !dbg !3031

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3031
  %148 = sext i32 %136 to i64, !dbg !3031
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3031
  br label %154, !dbg !3031

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3031
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3031
  store ptr %153, ptr %4, align 8, !dbg !3031
  br label %154, !dbg !3031

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3031
  %157 = load ptr, ptr %156, align 8, !dbg !3031
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3037
  store ptr %157, ptr %158, align 8, !dbg !3034, !tbaa !846
  %159 = icmp eq ptr %157, null, !dbg !3035
  br i1 %159, label %197, label %160, !dbg !3036

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3025, metadata !DIExpression()), !dbg !3029
  %161 = icmp sgt i32 %155, -1, !dbg !3031
  br i1 %161, label %169, label %162, !dbg !3031

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3031
  store i32 %163, ptr %7, align 8, !dbg !3031
  %164 = icmp ult i32 %155, -7, !dbg !3031
  br i1 %164, label %165, label %169, !dbg !3031

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3031
  %167 = sext i32 %155 to i64, !dbg !3031
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3031
  br label %173, !dbg !3031

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3031
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3031
  store ptr %172, ptr %4, align 8, !dbg !3031
  br label %173, !dbg !3031

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3031
  %176 = load ptr, ptr %175, align 8, !dbg !3031
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3037
  store ptr %176, ptr %177, align 8, !dbg !3034, !tbaa !846
  %178 = icmp eq ptr %176, null, !dbg !3035
  br i1 %178, label %197, label %179, !dbg !3036

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3025, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3025, metadata !DIExpression()), !dbg !3029
  %180 = icmp sgt i32 %174, -1, !dbg !3031
  br i1 %180, label %188, label %181, !dbg !3031

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3031
  store i32 %182, ptr %7, align 8, !dbg !3031
  %183 = icmp ult i32 %174, -7, !dbg !3031
  br i1 %183, label %184, label %188, !dbg !3031

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3031
  %186 = sext i32 %174 to i64, !dbg !3031
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3031
  br label %191, !dbg !3031

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3031
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3031
  store ptr %190, ptr %4, align 8, !dbg !3031
  br label %191, !dbg !3031

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3031
  %193 = load ptr, ptr %192, align 8, !dbg !3031
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3037
  store ptr %193, ptr %194, align 8, !dbg !3034, !tbaa !846
  %195 = icmp eq ptr %193, null, !dbg !3035
  %196 = select i1 %195, i64 9, i64 10, !dbg !3036
  br label %197, !dbg !3036

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3038
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3039
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3040
  ret void, !dbg !3040
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3041 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3050
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3049, metadata !DIExpression(), metadata !3050, metadata ptr %5, metadata !DIExpression()), !dbg !3051
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3045, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3046, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3047, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3052
  call void @llvm.va_start(ptr nonnull %5), !dbg !3053
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3054, !tbaa.struct !1296
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3054
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3054
  call void @llvm.va_end(ptr nonnull %5), !dbg !3055
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3056
  ret void, !dbg !3056
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3057 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3058, !tbaa !846
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %1), !dbg !3058
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.17.99, i32 noundef 5) #39, !dbg !3059
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.100) #39, !dbg !3059
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.19.101, i32 noundef 5) #39, !dbg !3060
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.102, ptr noundef nonnull @.str.21.103) #39, !dbg !3060
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.22.104, i32 noundef 5) #39, !dbg !3061
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.105) #39, !dbg !3061
  ret void, !dbg !3062
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3063 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3068, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3069, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %2, metadata !3076, metadata !DIExpression()), !dbg !3077
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %4, metadata !3080, metadata !DIExpression()), !dbg !3085
  %5 = icmp eq ptr %4, null, !dbg !3087
  br i1 %5, label %6, label %7, !dbg !3089

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3090
  unreachable, !dbg !3090

7:                                                ; preds = %3
  ret ptr %4, !dbg !3091
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3073 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3076, metadata !DIExpression()), !dbg !3092
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3093
  call void @llvm.dbg.value(metadata ptr %4, metadata !3080, metadata !DIExpression()), !dbg !3094
  %5 = icmp eq ptr %4, null, !dbg !3096
  br i1 %5, label %6, label %7, !dbg !3097

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3098
  unreachable, !dbg !3098

7:                                                ; preds = %3
  ret ptr %4, !dbg !3099
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3100 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3104, metadata !DIExpression()), !dbg !3105
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3106
  call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3107
  %3 = icmp eq ptr %2, null, !dbg !3109
  br i1 %3, label %4, label %5, !dbg !3110

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3111
  unreachable, !dbg !3111

5:                                                ; preds = %1
  ret ptr %2, !dbg !3112
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3113 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3114 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %0, metadata !3120, metadata !DIExpression()), !dbg !3124
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3126
  call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3127
  %3 = icmp eq ptr %2, null, !dbg !3129
  br i1 %3, label %4, label %5, !dbg !3130

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3131
  unreachable, !dbg !3131

5:                                                ; preds = %1
  ret ptr %2, !dbg !3132
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3137, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %0, metadata !3104, metadata !DIExpression()), !dbg !3139
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3142
  %3 = icmp eq ptr %2, null, !dbg !3144
  br i1 %3, label %4, label %5, !dbg !3145

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3146
  unreachable, !dbg !3146

5:                                                ; preds = %1
  ret ptr %2, !dbg !3147
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3148 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3152, metadata !DIExpression()), !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata ptr %0, metadata !3155, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3160
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3162
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3163
  call void @llvm.dbg.value(metadata ptr %4, metadata !3080, metadata !DIExpression()), !dbg !3164
  %5 = icmp eq ptr %4, null, !dbg !3166
  br i1 %5, label %6, label %7, !dbg !3167

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3168
  unreachable, !dbg !3168

7:                                                ; preds = %2
  ret ptr %4, !dbg !3169
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3170 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3171 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3175, metadata !DIExpression()), !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata ptr %0, metadata !3178, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %1, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %0, metadata !3155, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3184
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3186
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3187
  call void @llvm.dbg.value(metadata ptr %4, metadata !3080, metadata !DIExpression()), !dbg !3188
  %5 = icmp eq ptr %4, null, !dbg !3190
  br i1 %5, label %6, label %7, !dbg !3191

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3192
  unreachable, !dbg !3192

7:                                                ; preds = %2
  ret ptr %4, !dbg !3193
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3194 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3198, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3199, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %0, metadata !3202, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %1, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %2, metadata !3206, metadata !DIExpression()), !dbg !3207
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3209
  call void @llvm.dbg.value(metadata ptr %4, metadata !3080, metadata !DIExpression()), !dbg !3210
  %5 = icmp eq ptr %4, null, !dbg !3212
  br i1 %5, label %6, label %7, !dbg !3213

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3214
  unreachable, !dbg !3214

7:                                                ; preds = %3
  ret ptr %4, !dbg !3215
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3220, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata ptr null, metadata !3072, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %0, metadata !3075, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()), !dbg !3223
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %3, metadata !3080, metadata !DIExpression()), !dbg !3226
  %4 = icmp eq ptr %3, null, !dbg !3228
  br i1 %4, label %5, label %6, !dbg !3229

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3230
  unreachable, !dbg !3230

6:                                                ; preds = %2
  ret ptr %3, !dbg !3231
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3232 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr null, metadata !3198, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %0, metadata !3199, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3200, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr null, metadata !3202, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %0, metadata !3205, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3241
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3243
  call void @llvm.dbg.value(metadata ptr %3, metadata !3080, metadata !DIExpression()), !dbg !3244
  %4 = icmp eq ptr %3, null, !dbg !3246
  br i1 %4, label %5, label %6, !dbg !3247

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3248
  unreachable, !dbg !3248

6:                                                ; preds = %2
  ret ptr %3, !dbg !3249
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3250 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3254, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %0, metadata !776, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %1, metadata !777, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 1, metadata !778, metadata !DIExpression()), !dbg !3257
  %3 = load i64, ptr %1, align 8, !dbg !3259, !tbaa !2324
  call void @llvm.dbg.value(metadata i64 %3, metadata !779, metadata !DIExpression()), !dbg !3257
  %4 = icmp eq ptr %0, null, !dbg !3260
  br i1 %4, label %5, label %8, !dbg !3262

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3263
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3266
  br label %15, !dbg !3266

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3267
  %10 = add nuw i64 %9, 1, !dbg !3267
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3267
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3267
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %13, metadata !779, metadata !DIExpression()), !dbg !3257
  br i1 %12, label %14, label %15, !dbg !3270

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3271
  unreachable, !dbg !3271

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3257
  call void @llvm.dbg.value(metadata i64 %16, metadata !779, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 %16, metadata !3075, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 1, metadata !3076, metadata !DIExpression()), !dbg !3272
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %17, metadata !3080, metadata !DIExpression()), !dbg !3275
  %18 = icmp eq ptr %17, null, !dbg !3277
  br i1 %18, label %19, label %20, !dbg !3278

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3279
  unreachable, !dbg !3279

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !776, metadata !DIExpression()), !dbg !3257
  store i64 %16, ptr %1, align 8, !dbg !3280, !tbaa !2324
  ret ptr %17, !dbg !3281
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !771 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !776, metadata !DIExpression()), !dbg !3282
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !777, metadata !DIExpression()), !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !778, metadata !DIExpression()), !dbg !3282
  %4 = load i64, ptr %1, align 8, !dbg !3283, !tbaa !2324
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !779, metadata !DIExpression()), !dbg !3282
  %5 = icmp eq ptr %0, null, !dbg !3284
  br i1 %5, label %6, label %13, !dbg !3285

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3286
  br i1 %7, label %8, label %20, !dbg !3287

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !779, metadata !DIExpression()), !dbg !3282
  %10 = icmp ugt i64 %2, 128, !dbg !3290
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3291
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !779, metadata !DIExpression()), !dbg !3282
  br label %20, !dbg !3292

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3293
  %15 = add nuw i64 %14, 1, !dbg !3293
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3293
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3293
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !779, metadata !DIExpression()), !dbg !3282
  br i1 %17, label %19, label %20, !dbg !3294

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3295
  unreachable, !dbg !3295

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !779, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %21, metadata !3075, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %2, metadata !3076, metadata !DIExpression()), !dbg !3296
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3298
  call void @llvm.dbg.value(metadata ptr %22, metadata !3080, metadata !DIExpression()), !dbg !3299
  %23 = icmp eq ptr %22, null, !dbg !3301
  br i1 %23, label %24, label %25, !dbg !3302

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3303
  unreachable, !dbg !3303

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !776, metadata !DIExpression()), !dbg !3282
  store i64 %21, ptr %1, align 8, !dbg !3304, !tbaa !2324
  ret ptr %22, !dbg !3305
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !783 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !792, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !793, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !794, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !795, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !796, metadata !DIExpression()), !dbg !3306
  %6 = load i64, ptr %1, align 8, !dbg !3307, !tbaa !2324
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !797, metadata !DIExpression()), !dbg !3306
  %7 = ashr i64 %6, 1, !dbg !3308
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3308
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3308
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !798, metadata !DIExpression()), !dbg !3306
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !798, metadata !DIExpression()), !dbg !3306
  %12 = icmp sgt i64 %3, -1, !dbg !3311
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3313
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !798, metadata !DIExpression()), !dbg !3306
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3314
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3314
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !799, metadata !DIExpression()), !dbg !3306
  %18 = icmp slt i64 %17, 128, !dbg !3314
  %19 = select i1 %18, i64 128, i64 0, !dbg !3314
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !800, metadata !DIExpression()), !dbg !3306
  %21 = icmp eq i64 %20, 0, !dbg !3315
  br i1 %21, label %28, label %22, !dbg !3317

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !798, metadata !DIExpression()), !dbg !3306
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !799, metadata !DIExpression()), !dbg !3306
  br label %28, !dbg !3321

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3306
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !799, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !798, metadata !DIExpression()), !dbg !3306
  %31 = icmp eq ptr %0, null, !dbg !3322
  br i1 %31, label %32, label %33, !dbg !3324

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3325, !tbaa !2324
  br label %33, !dbg !3326

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3327
  %35 = icmp slt i64 %34, %2, !dbg !3329
  br i1 %35, label %36, label %48, !dbg !3330

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3331
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3331
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !798, metadata !DIExpression()), !dbg !3306
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3332
  br i1 %42, label %47, label %43, !dbg !3332

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3333
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3333
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !799, metadata !DIExpression()), !dbg !3306
  br i1 %45, label %47, label %48, !dbg !3334

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #41, !dbg !3335
  unreachable, !dbg !3335

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3306
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !799, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !798, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr %0, metadata !3152, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %50, metadata !3153, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata ptr %0, metadata !3155, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %50, metadata !3159, metadata !DIExpression()), !dbg !3338
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3340
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !3341
  call void @llvm.dbg.value(metadata ptr %52, metadata !3080, metadata !DIExpression()), !dbg !3342
  %53 = icmp eq ptr %52, null, !dbg !3344
  br i1 %53, label %54, label %55, !dbg !3345

54:                                               ; preds = %48
  tail call void @xalloc_die() #41, !dbg !3346
  unreachable, !dbg !3346

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !792, metadata !DIExpression()), !dbg !3306
  store i64 %49, ptr %1, align 8, !dbg !3347, !tbaa !2324
  ret ptr %52, !dbg !3348
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3349 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %0, metadata !3353, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 1, metadata !3356, metadata !DIExpression()), !dbg !3357
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3360
  %3 = icmp eq ptr %2, null, !dbg !3362
  br i1 %3, label %4, label %5, !dbg !3363

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3364
  unreachable, !dbg !3364

5:                                                ; preds = %1
  ret ptr %2, !dbg !3365
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3366 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3354 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3353, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3356, metadata !DIExpression()), !dbg !3367
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3368
  call void @llvm.dbg.value(metadata ptr %3, metadata !3080, metadata !DIExpression()), !dbg !3369
  %4 = icmp eq ptr %3, null, !dbg !3371
  br i1 %4, label %5, label %6, !dbg !3372

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3373
  unreachable, !dbg !3373

6:                                                ; preds = %2
  ret ptr %3, !dbg !3374
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3375 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %0, metadata !3379, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 1, metadata !3382, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %0, metadata !3385, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 1, metadata !3388, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %0, metadata !3385, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 1, metadata !3388, metadata !DIExpression()), !dbg !3389
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3391
  call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3392
  %3 = icmp eq ptr %2, null, !dbg !3394
  br i1 %3, label %4, label %5, !dbg !3395

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3396
  unreachable, !dbg !3396

5:                                                ; preds = %1
  ret ptr %2, !dbg !3397
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3380 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3379, metadata !DIExpression()), !dbg !3398
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3382, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %0, metadata !3385, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3388, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %0, metadata !3385, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3388, metadata !DIExpression()), !dbg !3399
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3401
  call void @llvm.dbg.value(metadata ptr %3, metadata !3080, metadata !DIExpression()), !dbg !3402
  %4 = icmp eq ptr %3, null, !dbg !3404
  br i1 %4, label %5, label %6, !dbg !3405

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3406
  unreachable, !dbg !3406

6:                                                ; preds = %2
  ret ptr %3, !dbg !3407
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3408 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3412, metadata !DIExpression()), !dbg !3414
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3415
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3417
  call void @llvm.dbg.value(metadata ptr %3, metadata !3080, metadata !DIExpression()), !dbg !3418
  %4 = icmp eq ptr %3, null, !dbg !3420
  br i1 %4, label %5, label %6, !dbg !3421

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3422
  unreachable, !dbg !3422

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3423, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata ptr %0, metadata !3429, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3433
  ret ptr %3, !dbg !3434
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3435 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3439, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3440, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()), !dbg !3444
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3446
  call void @llvm.dbg.value(metadata ptr %3, metadata !3080, metadata !DIExpression()), !dbg !3447
  %4 = icmp eq ptr %3, null, !dbg !3449
  br i1 %4, label %5, label %6, !dbg !3450

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3451
  unreachable, !dbg !3451

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3423, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %0, metadata !3429, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3452
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3454
  ret ptr %3, !dbg !3455
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3456 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3463
  %3 = add nsw i64 %1, 1, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %3, metadata !3118, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %3, metadata !3120, metadata !DIExpression()), !dbg !3467
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3469
  call void @llvm.dbg.value(metadata ptr %4, metadata !3080, metadata !DIExpression()), !dbg !3470
  %5 = icmp eq ptr %4, null, !dbg !3472
  br i1 %5, label %6, label %7, !dbg !3473

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3474
  unreachable, !dbg !3474

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3462, metadata !DIExpression()), !dbg !3463
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3475
  store i8 0, ptr %8, align 1, !dbg !3476, !tbaa !926
  call void @llvm.dbg.value(metadata ptr %4, metadata !3423, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %0, metadata !3429, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3479
  ret ptr %4, !dbg !3480
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3481 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3483, metadata !DIExpression()), !dbg !3484
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3485
  %3 = add i64 %2, 1, !dbg !3486
  call void @llvm.dbg.value(metadata ptr %0, metadata !3412, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %3, metadata !3413, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %3, metadata !3104, metadata !DIExpression()), !dbg !3489
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3491
  call void @llvm.dbg.value(metadata ptr %4, metadata !3080, metadata !DIExpression()), !dbg !3492
  %5 = icmp eq ptr %4, null, !dbg !3494
  br i1 %5, label %6, label %7, !dbg !3495

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3496
  unreachable, !dbg !3496

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3423, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata ptr %0, metadata !3429, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %3, metadata !3430, metadata !DIExpression()), !dbg !3497
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3499
  ret ptr %4, !dbg !3500
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3501 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3505, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3503, metadata !DIExpression()), !dbg !3506
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.116, ptr noundef nonnull @.str.2.117, i32 noundef 5) #39, !dbg !3505
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef %2) #39, !dbg !3505
  %3 = icmp eq i32 %1, 0, !dbg !3505
  tail call void @llvm.assume(i1 %3), !dbg !3505
  tail call void @abort() #41, !dbg !3507
  unreachable, !dbg !3507
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @xstrtol(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #35 !dbg !3508 {
  %6 = alloca ptr, align 8, !DIAssignID !3528
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3519, metadata !DIExpression(), metadata !3528, metadata ptr %6, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3515, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3516, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3517, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3518, metadata !DIExpression()), !dbg !3529
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !3530
  %7 = icmp eq ptr %1, null, !dbg !3531
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !3531
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3520, metadata !DIExpression()), !dbg !3529
  %9 = tail call ptr @__errno_location() #42, !dbg !3532
  store i32 0, ptr %9, align 4, !dbg !3533, !tbaa !917
  %10 = call i64 @strtol(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #39, !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3521, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3529
  %11 = load ptr, ptr %8, align 8, !dbg !3535, !tbaa !846
  %12 = icmp eq ptr %11, %0, !dbg !3537
  br i1 %12, label %13, label %22, !dbg !3538

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !3539
  br i1 %14, label %490, label %15, !dbg !3542

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !3543, !tbaa !926
  %17 = icmp eq i8 %16, 0, !dbg !3543
  br i1 %17, label %490, label %18, !dbg !3544

18:                                               ; preds = %15
  %19 = zext i8 %16 to i32, !dbg !3543
  %20 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #40, !dbg !3545
  %21 = icmp eq ptr %20, null, !dbg !3545
  br i1 %21, label %490, label %29, !dbg !3546

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !3547, !tbaa !917
  switch i32 %23, label %490 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !3549

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3522, metadata !DIExpression()), !dbg !3529
  br label %25, !dbg !3550

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3521, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3522, metadata !DIExpression()), !dbg !3529
  %27 = icmp eq ptr %4, null, !dbg !3552
  br i1 %27, label %28, label %29, !dbg !3554

28:                                               ; preds = %25
  store i64 %10, ptr %3, align 8, !dbg !3555, !tbaa !2324
  br label %490, !dbg !3557

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !3558, !tbaa !926
  %33 = icmp eq i8 %32, 0, !dbg !3559
  br i1 %33, label %487, label %34, !dbg !3560

34:                                               ; preds = %29
  %35 = zext i8 %32 to i32, !dbg !3558
  %36 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #40, !dbg !3561
  %37 = icmp eq ptr %36, null, !dbg !3561
  br i1 %37, label %38, label %40, !dbg !3563

38:                                               ; preds = %34
  store i64 %31, ptr %3, align 8, !dbg !3564, !tbaa !2324
  %39 = or disjoint i32 %30, 2, !dbg !3566
  br label %490, !dbg !3567

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !3523, metadata !DIExpression()), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3526, metadata !DIExpression()), !dbg !3568
  switch i8 %32, label %53 [
    i8 69, label %41
    i8 71, label %41
    i8 103, label %41
    i8 107, label %41
    i8 75, label %41
    i8 77, label %41
    i8 109, label %41
    i8 80, label %41
    i8 81, label %41
    i8 82, label %41
    i8 84, label %41
    i8 116, label %41
    i8 89, label %41
    i8 90, label %41
  ], !dbg !3569

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #40, !dbg !3570
  %43 = icmp eq ptr %42, null, !dbg !3570
  br i1 %43, label %53, label %44, !dbg !3573

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3574
  %46 = load i8, ptr %45, align 1, !dbg !3574, !tbaa !926
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !3575

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !3576
  %49 = load i8, ptr %48, align 1, !dbg !3576, !tbaa !926
  %50 = icmp eq i8 %49, 66, !dbg !3579
  %51 = select i1 %50, i64 3, i64 1, !dbg !3580
  br label %53, !dbg !3580

52:                                               ; preds = %44, %44
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !3523, metadata !DIExpression()), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3526, metadata !DIExpression()), !dbg !3568
  br label %53, !dbg !3581

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ], !dbg !3568
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ], !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !3526, metadata !DIExpression()), !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !3523, metadata !DIExpression()), !dbg !3568
  switch i8 %32, label %485 [
    i8 98, label %377
    i8 66, label %385
    i8 99, label %476
    i8 69, label %334
    i8 71, label %393
    i8 103, label %393
    i8 107, label %415
    i8 75, label %415
    i8 77, label %423
    i8 109, label %423
    i8 80, label %298
    i8 81, label %227
    i8 82, label %163
    i8 84, label %438
    i8 116, label %438
    i8 119, label %467
    i8 89, label %106
    i8 90, label %56
  ], !dbg !3582

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3601
  %57 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3603
  %58 = extractvalue { i64, i1 } %57, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3601
  %59 = extractvalue { i64, i1 } %57, 0, !dbg !3605
  %60 = icmp slt i64 %31, 0, !dbg !3605
  %61 = select i1 %60, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3605
  %62 = select i1 %58, i64 %61, i64 %59, !dbg !3605
  call void @llvm.dbg.value(metadata i1 %58, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i1 %58, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3601
  %63 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 %54), !dbg !3603
  %64 = extractvalue { i64, i1 } %63, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3601
  %65 = extractvalue { i64, i1 } %63, 0, !dbg !3605
  %66 = icmp slt i64 %62, 0, !dbg !3605
  %67 = select i1 %66, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3605
  %68 = select i1 %64, i64 %67, i64 %65, !dbg !3605
  %69 = or i1 %58, %64, !dbg !3606
  call void @llvm.dbg.value(metadata i1 %69, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i1 %69, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3601
  %70 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %68, i64 %54), !dbg !3603
  %71 = extractvalue { i64, i1 } %70, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3601
  %72 = extractvalue { i64, i1 } %70, 0, !dbg !3605
  %73 = icmp slt i64 %68, 0, !dbg !3605
  %74 = select i1 %73, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3605
  %75 = select i1 %71, i64 %74, i64 %72, !dbg !3605
  %76 = or i1 %69, %71, !dbg !3606
  call void @llvm.dbg.value(metadata i1 %76, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i1 %76, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3601
  %77 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %75, i64 %54), !dbg !3603
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3601
  %79 = extractvalue { i64, i1 } %77, 0, !dbg !3605
  %80 = icmp slt i64 %75, 0, !dbg !3605
  %81 = select i1 %80, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3605
  %82 = select i1 %78, i64 %81, i64 %79, !dbg !3605
  %83 = or i1 %76, %78, !dbg !3606
  call void @llvm.dbg.value(metadata i1 %83, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i1 %83, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3601
  %84 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 %54), !dbg !3603
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3601
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !3605
  %87 = icmp slt i64 %82, 0, !dbg !3605
  %88 = select i1 %87, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3605
  %89 = select i1 %85, i64 %88, i64 %86, !dbg !3605
  %90 = or i1 %83, %85, !dbg !3606
  call void @llvm.dbg.value(metadata i1 %90, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i1 %90, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3601
  %91 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %89, i64 %54), !dbg !3603
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3601
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !3605
  %94 = icmp slt i64 %89, 0, !dbg !3605
  %95 = select i1 %94, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3605
  %96 = select i1 %92, i64 %95, i64 %93, !dbg !3605
  %97 = or i1 %90, %92, !dbg !3606
  call void @llvm.dbg.value(metadata i1 %97, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i1 %97, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3591
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3601
  %98 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 %54), !dbg !3603
  %99 = extractvalue { i64, i1 } %98, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3601
  %100 = extractvalue { i64, i1 } %98, 0, !dbg !3605
  %101 = icmp slt i64 %96, 0, !dbg !3605
  %102 = select i1 %101, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3605
  %103 = select i1 %99, i64 %102, i64 %100, !dbg !3605
  %104 = or i1 %97, %99, !dbg !3606
  %105 = zext i1 %104 to i32, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %105, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3591
  br label %476, !dbg !3607

106:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 8, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3610
  %107 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3612
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3610
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !3613
  %110 = icmp slt i64 %31, 0, !dbg !3613
  %111 = select i1 %110, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3613
  %112 = select i1 %108, i64 %111, i64 %109, !dbg !3613
  call void @llvm.dbg.value(metadata i1 %108, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i1 %108, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3610
  %113 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %112, i64 %54), !dbg !3612
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3610
  %115 = extractvalue { i64, i1 } %113, 0, !dbg !3613
  %116 = icmp slt i64 %112, 0, !dbg !3613
  %117 = select i1 %116, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3613
  %118 = select i1 %114, i64 %117, i64 %115, !dbg !3613
  %119 = or i1 %108, %114, !dbg !3614
  call void @llvm.dbg.value(metadata i1 %119, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i1 %119, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3610
  %120 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %118, i64 %54), !dbg !3612
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3610
  %122 = extractvalue { i64, i1 } %120, 0, !dbg !3613
  %123 = icmp slt i64 %118, 0, !dbg !3613
  %124 = select i1 %123, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3613
  %125 = select i1 %121, i64 %124, i64 %122, !dbg !3613
  %126 = or i1 %119, %121, !dbg !3614
  call void @llvm.dbg.value(metadata i1 %126, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i1 %126, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3610
  %127 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %125, i64 %54), !dbg !3612
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3610
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !3613
  %130 = icmp slt i64 %125, 0, !dbg !3613
  %131 = select i1 %130, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3613
  %132 = select i1 %128, i64 %131, i64 %129, !dbg !3613
  %133 = or i1 %126, %128, !dbg !3614
  call void @llvm.dbg.value(metadata i1 %133, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i1 %133, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3610
  %134 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %132, i64 %54), !dbg !3612
  %135 = extractvalue { i64, i1 } %134, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3610
  %136 = extractvalue { i64, i1 } %134, 0, !dbg !3613
  %137 = icmp slt i64 %132, 0, !dbg !3613
  %138 = select i1 %137, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3613
  %139 = select i1 %135, i64 %138, i64 %136, !dbg !3613
  %140 = or i1 %133, %135, !dbg !3614
  call void @llvm.dbg.value(metadata i1 %140, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i1 %140, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3610
  %141 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %139, i64 %54), !dbg !3612
  %142 = extractvalue { i64, i1 } %141, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3610
  %143 = extractvalue { i64, i1 } %141, 0, !dbg !3613
  %144 = icmp slt i64 %139, 0, !dbg !3613
  %145 = select i1 %144, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3613
  %146 = select i1 %142, i64 %145, i64 %143, !dbg !3613
  %147 = or i1 %140, %142, !dbg !3614
  call void @llvm.dbg.value(metadata i1 %147, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i1 %147, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3610
  %148 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %146, i64 %54), !dbg !3612
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3610
  %150 = extractvalue { i64, i1 } %148, 0, !dbg !3613
  %151 = icmp slt i64 %146, 0, !dbg !3613
  %152 = select i1 %151, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3613
  %153 = select i1 %149, i64 %152, i64 %150, !dbg !3613
  %154 = or i1 %147, %149, !dbg !3614
  call void @llvm.dbg.value(metadata i1 %154, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i1 %154, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3608
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3610
  %155 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %153, i64 %54), !dbg !3612
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3610
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !3613
  %158 = icmp slt i64 %153, 0, !dbg !3613
  %159 = select i1 %158, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3613
  %160 = select i1 %156, i64 %159, i64 %157, !dbg !3613
  %161 = or i1 %154, %156, !dbg !3614
  %162 = zext i1 %161 to i32, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %162, metadata !3583, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  br label %476, !dbg !3607

163:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 9, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 8, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %164 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3619
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %166 = extractvalue { i64, i1 } %164, 0, !dbg !3620
  %167 = icmp slt i64 %31, 0, !dbg !3620
  %168 = select i1 %167, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %169 = select i1 %165, i64 %168, i64 %166, !dbg !3620
  call void @llvm.dbg.value(metadata i1 %165, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 8, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i1 %165, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 8, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %170 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %54), !dbg !3619
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %172 = extractvalue { i64, i1 } %170, 0, !dbg !3620
  %173 = icmp slt i64 %169, 0, !dbg !3620
  %174 = select i1 %173, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %175 = select i1 %171, i64 %174, i64 %172, !dbg !3620
  %176 = or i1 %165, %171, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %176, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i1 %176, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %177 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %175, i64 %54), !dbg !3619
  %178 = extractvalue { i64, i1 } %177, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %179 = extractvalue { i64, i1 } %177, 0, !dbg !3620
  %180 = icmp slt i64 %175, 0, !dbg !3620
  %181 = select i1 %180, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %182 = select i1 %178, i64 %181, i64 %179, !dbg !3620
  %183 = or i1 %176, %178, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %183, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i1 %183, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %184 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %182, i64 %54), !dbg !3619
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %186 = extractvalue { i64, i1 } %184, 0, !dbg !3620
  %187 = icmp slt i64 %182, 0, !dbg !3620
  %188 = select i1 %187, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %189 = select i1 %185, i64 %188, i64 %186, !dbg !3620
  %190 = or i1 %183, %185, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %190, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i1 %190, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %191 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %189, i64 %54), !dbg !3619
  %192 = extractvalue { i64, i1 } %191, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %193 = extractvalue { i64, i1 } %191, 0, !dbg !3620
  %194 = icmp slt i64 %189, 0, !dbg !3620
  %195 = select i1 %194, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %196 = select i1 %192, i64 %195, i64 %193, !dbg !3620
  %197 = or i1 %190, %192, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %197, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i1 %197, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %198 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %196, i64 %54), !dbg !3619
  %199 = extractvalue { i64, i1 } %198, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %200 = extractvalue { i64, i1 } %198, 0, !dbg !3620
  %201 = icmp slt i64 %196, 0, !dbg !3620
  %202 = select i1 %201, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %203 = select i1 %199, i64 %202, i64 %200, !dbg !3620
  %204 = or i1 %197, %199, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %204, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i1 %204, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %205 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %203, i64 %54), !dbg !3619
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %207 = extractvalue { i64, i1 } %205, 0, !dbg !3620
  %208 = icmp slt i64 %203, 0, !dbg !3620
  %209 = select i1 %208, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %210 = select i1 %206, i64 %209, i64 %207, !dbg !3620
  %211 = or i1 %204, %206, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %211, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i1 %211, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %212 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %210, i64 %54), !dbg !3619
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !3620
  %215 = icmp slt i64 %210, 0, !dbg !3620
  %216 = select i1 %215, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %217 = select i1 %213, i64 %216, i64 %214, !dbg !3620
  %218 = or i1 %211, %213, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %218, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i1 %218, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3617
  %219 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %217, i64 %54), !dbg !3619
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3617
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !3620
  %222 = icmp slt i64 %217, 0, !dbg !3620
  %223 = select i1 %222, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %224 = select i1 %220, i64 %223, i64 %221, !dbg !3620
  %225 = or i1 %218, %220, !dbg !3621
  %226 = zext i1 %225 to i32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 %226, metadata !3583, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  br label %476, !dbg !3607

227:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 10, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 9, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %228 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3626
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %230 = extractvalue { i64, i1 } %228, 0, !dbg !3627
  %231 = icmp slt i64 %31, 0, !dbg !3627
  %232 = select i1 %231, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %233 = select i1 %229, i64 %232, i64 %230, !dbg !3627
  call void @llvm.dbg.value(metadata i1 %229, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 9, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %229, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 9, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 8, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %234 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %54), !dbg !3626
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !3627
  %237 = icmp slt i64 %233, 0, !dbg !3627
  %238 = select i1 %237, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %239 = select i1 %235, i64 %238, i64 %236, !dbg !3627
  %240 = or i1 %229, %235, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %240, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 8, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %240, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 8, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %241 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %239, i64 %54), !dbg !3626
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %243 = extractvalue { i64, i1 } %241, 0, !dbg !3627
  %244 = icmp slt i64 %239, 0, !dbg !3627
  %245 = select i1 %244, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %246 = select i1 %242, i64 %245, i64 %243, !dbg !3627
  %247 = or i1 %240, %242, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %247, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %247, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 7, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %248 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %54), !dbg !3626
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %250 = extractvalue { i64, i1 } %248, 0, !dbg !3627
  %251 = icmp slt i64 %246, 0, !dbg !3627
  %252 = select i1 %251, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %253 = select i1 %249, i64 %252, i64 %250, !dbg !3627
  %254 = or i1 %247, %249, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %254, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %254, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %255 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %253, i64 %54), !dbg !3626
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !3627
  %258 = icmp slt i64 %253, 0, !dbg !3627
  %259 = select i1 %258, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %260 = select i1 %256, i64 %259, i64 %257, !dbg !3627
  %261 = or i1 %254, %256, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %261, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %261, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %262 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %260, i64 %54), !dbg !3626
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %264 = extractvalue { i64, i1 } %262, 0, !dbg !3627
  %265 = icmp slt i64 %260, 0, !dbg !3627
  %266 = select i1 %265, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %267 = select i1 %263, i64 %266, i64 %264, !dbg !3627
  %268 = or i1 %261, %263, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %268, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %268, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %269 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %267, i64 %54), !dbg !3626
  %270 = extractvalue { i64, i1 } %269, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %271 = extractvalue { i64, i1 } %269, 0, !dbg !3627
  %272 = icmp slt i64 %267, 0, !dbg !3627
  %273 = select i1 %272, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %274 = select i1 %270, i64 %273, i64 %271, !dbg !3627
  %275 = or i1 %268, %270, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %275, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %275, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %276 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %274, i64 %54), !dbg !3626
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !3627
  %279 = icmp slt i64 %274, 0, !dbg !3627
  %280 = select i1 %279, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %281 = select i1 %277, i64 %280, i64 %278, !dbg !3627
  %282 = or i1 %275, %277, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %282, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %282, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %283 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %54), !dbg !3626
  %284 = extractvalue { i64, i1 } %283, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %285 = extractvalue { i64, i1 } %283, 0, !dbg !3627
  %286 = icmp slt i64 %281, 0, !dbg !3627
  %287 = select i1 %286, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %288 = select i1 %284, i64 %287, i64 %285, !dbg !3627
  %289 = or i1 %282, %284, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %289, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i1 %289, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3622
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3624
  %290 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %288, i64 %54), !dbg !3626
  %291 = extractvalue { i64, i1 } %290, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3624
  %292 = extractvalue { i64, i1 } %290, 0, !dbg !3627
  %293 = icmp slt i64 %288, 0, !dbg !3627
  %294 = select i1 %293, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3627
  %295 = select i1 %291, i64 %294, i64 %292, !dbg !3627
  %296 = or i1 %289, %291, !dbg !3628
  %297 = zext i1 %296 to i32, !dbg !3628
  call void @llvm.dbg.value(metadata i32 %297, metadata !3583, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3622
  br label %476, !dbg !3607

298:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3631
  %299 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3633
  %300 = extractvalue { i64, i1 } %299, 1, !dbg !3633
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3631
  %301 = extractvalue { i64, i1 } %299, 0, !dbg !3634
  %302 = icmp slt i64 %31, 0, !dbg !3634
  %303 = select i1 %302, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3634
  %304 = select i1 %300, i64 %303, i64 %301, !dbg !3634
  call void @llvm.dbg.value(metadata i1 %300, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i1 %300, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3631
  %305 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %304, i64 %54), !dbg !3633
  %306 = extractvalue { i64, i1 } %305, 1, !dbg !3633
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3631
  %307 = extractvalue { i64, i1 } %305, 0, !dbg !3634
  %308 = icmp slt i64 %304, 0, !dbg !3634
  %309 = select i1 %308, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3634
  %310 = select i1 %306, i64 %309, i64 %307, !dbg !3634
  %311 = or i1 %300, %306, !dbg !3635
  call void @llvm.dbg.value(metadata i1 %311, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i1 %311, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3631
  %312 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %54), !dbg !3633
  %313 = extractvalue { i64, i1 } %312, 1, !dbg !3633
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3631
  %314 = extractvalue { i64, i1 } %312, 0, !dbg !3634
  %315 = icmp slt i64 %310, 0, !dbg !3634
  %316 = select i1 %315, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3634
  %317 = select i1 %313, i64 %316, i64 %314, !dbg !3634
  %318 = or i1 %311, %313, !dbg !3635
  call void @llvm.dbg.value(metadata i1 %318, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i1 %318, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3631
  %319 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %317, i64 %54), !dbg !3633
  %320 = extractvalue { i64, i1 } %319, 1, !dbg !3633
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3631
  %321 = extractvalue { i64, i1 } %319, 0, !dbg !3634
  %322 = icmp slt i64 %317, 0, !dbg !3634
  %323 = select i1 %322, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3634
  %324 = select i1 %320, i64 %323, i64 %321, !dbg !3634
  %325 = or i1 %318, %320, !dbg !3635
  call void @llvm.dbg.value(metadata i1 %325, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i1 %325, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3629
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3631
  %326 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %324, i64 %54), !dbg !3633
  %327 = extractvalue { i64, i1 } %326, 1, !dbg !3633
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3631
  %328 = extractvalue { i64, i1 } %326, 0, !dbg !3634
  %329 = icmp slt i64 %324, 0, !dbg !3634
  %330 = select i1 %329, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3634
  %331 = select i1 %327, i64 %330, i64 %328, !dbg !3634
  %332 = or i1 %325, %327, !dbg !3635
  %333 = zext i1 %332 to i32, !dbg !3635
  call void @llvm.dbg.value(metadata i32 %333, metadata !3583, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3629
  br label %476, !dbg !3607

334:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 6, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3638
  %335 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3640
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3638
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !3641
  %338 = icmp slt i64 %31, 0, !dbg !3641
  %339 = select i1 %338, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3641
  %340 = select i1 %336, i64 %339, i64 %337, !dbg !3641
  call void @llvm.dbg.value(metadata i1 %336, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i1 %336, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 5, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3638
  %341 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %340, i64 %54), !dbg !3640
  %342 = extractvalue { i64, i1 } %341, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3638
  %343 = extractvalue { i64, i1 } %341, 0, !dbg !3641
  %344 = icmp slt i64 %340, 0, !dbg !3641
  %345 = select i1 %344, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3641
  %346 = select i1 %342, i64 %345, i64 %343, !dbg !3641
  %347 = or i1 %336, %342, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %347, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i1 %347, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3638
  %348 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %346, i64 %54), !dbg !3640
  %349 = extractvalue { i64, i1 } %348, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3638
  %350 = extractvalue { i64, i1 } %348, 0, !dbg !3641
  %351 = icmp slt i64 %346, 0, !dbg !3641
  %352 = select i1 %351, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3641
  %353 = select i1 %349, i64 %352, i64 %350, !dbg !3641
  %354 = or i1 %347, %349, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %354, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i1 %354, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3638
  %355 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %353, i64 %54), !dbg !3640
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3638
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !3641
  %358 = icmp slt i64 %353, 0, !dbg !3641
  %359 = select i1 %358, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3641
  %360 = select i1 %356, i64 %359, i64 %357, !dbg !3641
  %361 = or i1 %354, %356, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %361, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i1 %361, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3638
  %362 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %360, i64 %54), !dbg !3640
  %363 = extractvalue { i64, i1 } %362, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3638
  %364 = extractvalue { i64, i1 } %362, 0, !dbg !3641
  %365 = icmp slt i64 %360, 0, !dbg !3641
  %366 = select i1 %365, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3641
  %367 = select i1 %363, i64 %366, i64 %364, !dbg !3641
  %368 = or i1 %361, %363, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %368, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i1 %368, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3638
  %369 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %367, i64 %54), !dbg !3640
  %370 = extractvalue { i64, i1 } %369, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3638
  %371 = extractvalue { i64, i1 } %369, 0, !dbg !3641
  %372 = icmp slt i64 %367, 0, !dbg !3641
  %373 = select i1 %372, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3641
  %374 = select i1 %370, i64 %373, i64 %371, !dbg !3641
  %375 = or i1 %368, %370, !dbg !3642
  %376 = zext i1 %375 to i32, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %376, metadata !3583, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  br label %476, !dbg !3607

377:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 512, metadata !3599, metadata !DIExpression()), !dbg !3643
  %378 = add i64 %31, -18014398509481984, !dbg !3645
  %379 = icmp ult i64 %378, -36028797018963968, !dbg !3645
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3643
  %380 = shl i64 %31, 9, !dbg !3646
  %381 = icmp slt i64 %31, 0, !dbg !3646
  %382 = select i1 %381, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3646
  %383 = select i1 %379, i64 %382, i64 %380, !dbg !3646
  %384 = zext i1 %379 to i32, !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !3521, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !3527, metadata !DIExpression()), !dbg !3568
  br label %476, !dbg !3647

385:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 1024, metadata !3599, metadata !DIExpression()), !dbg !3648
  %386 = add i64 %31, -9007199254740992, !dbg !3650
  %387 = icmp ult i64 %386, -18014398509481984, !dbg !3650
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3648
  %388 = shl i64 %31, 10, !dbg !3651
  %389 = icmp slt i64 %31, 0, !dbg !3651
  %390 = select i1 %389, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3651
  %391 = select i1 %387, i64 %390, i64 %388, !dbg !3651
  %392 = zext i1 %387 to i32, !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3521, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %392, metadata !3527, metadata !DIExpression()), !dbg !3568
  br label %476, !dbg !3652

393:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3588, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %54, metadata !3589, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3655
  %394 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3657
  %395 = extractvalue { i64, i1 } %394, 1, !dbg !3657
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3655
  %396 = extractvalue { i64, i1 } %394, 0, !dbg !3658
  %397 = icmp slt i64 %31, 0, !dbg !3658
  %398 = select i1 %397, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3658
  %399 = select i1 %395, i64 %398, i64 %396, !dbg !3658
  call void @llvm.dbg.value(metadata i1 %395, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3653
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3653
  call void @llvm.dbg.value(metadata i1 %395, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3653
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3655
  %400 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %399, i64 %54), !dbg !3657
  %401 = extractvalue { i64, i1 } %400, 1, !dbg !3657
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3655
  %402 = extractvalue { i64, i1 } %400, 0, !dbg !3658
  %403 = icmp slt i64 %399, 0, !dbg !3658
  %404 = select i1 %403, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3658
  %405 = select i1 %401, i64 %404, i64 %402, !dbg !3658
  %406 = or i1 %395, %401, !dbg !3659
  call void @llvm.dbg.value(metadata i1 %406, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3653
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3653
  call void @llvm.dbg.value(metadata i1 %406, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3653
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3655
  %407 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %405, i64 %54), !dbg !3657
  %408 = extractvalue { i64, i1 } %407, 1, !dbg !3657
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3655
  %409 = extractvalue { i64, i1 } %407, 0, !dbg !3658
  %410 = icmp slt i64 %405, 0, !dbg !3658
  %411 = select i1 %410, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3658
  %412 = select i1 %408, i64 %411, i64 %409, !dbg !3658
  %413 = or i1 %406, %408, !dbg !3659
  %414 = zext i1 %413 to i32, !dbg !3659
  call void @llvm.dbg.value(metadata i32 %414, metadata !3583, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3653
  br label %476, !dbg !3607

415:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3588, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %54, metadata !3589, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3660
  %416 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3662
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !3662
  %418 = icmp slt i64 %31, 0, !dbg !3664
  %419 = select i1 %418, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3664
  %420 = extractvalue { i64, i1 } %416, 0, !dbg !3664
  %421 = select i1 %417, i64 %419, i64 %420, !dbg !3664
  %422 = zext i1 %417 to i32, !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3665
  br label %476, !dbg !3607

423:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3588, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %54, metadata !3589, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3666
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3668
  %424 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3670
  %425 = extractvalue { i64, i1 } %424, 1, !dbg !3670
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3668
  %426 = extractvalue { i64, i1 } %424, 0, !dbg !3671
  %427 = icmp slt i64 %31, 0, !dbg !3671
  %428 = select i1 %427, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3671
  %429 = select i1 %425, i64 %428, i64 %426, !dbg !3671
  call void @llvm.dbg.value(metadata i1 %425, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3666
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3666
  call void @llvm.dbg.value(metadata i1 %425, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3666
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3668
  %430 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %429, i64 %54), !dbg !3670
  %431 = extractvalue { i64, i1 } %430, 1, !dbg !3670
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3668
  %432 = extractvalue { i64, i1 } %430, 0, !dbg !3671
  %433 = icmp slt i64 %429, 0, !dbg !3671
  %434 = select i1 %433, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3671
  %435 = select i1 %431, i64 %434, i64 %432, !dbg !3671
  %436 = or i1 %425, %431, !dbg !3672
  %437 = zext i1 %436 to i32, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %437, metadata !3583, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3666
  br label %476, !dbg !3607

438:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3588, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %54, metadata !3589, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 4, metadata !3590, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3675
  %439 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3677
  %440 = extractvalue { i64, i1 } %439, 1, !dbg !3677
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3675
  %441 = extractvalue { i64, i1 } %439, 0, !dbg !3678
  %442 = icmp slt i64 %31, 0, !dbg !3678
  %443 = select i1 %442, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3678
  %444 = select i1 %440, i64 %443, i64 %441, !dbg !3678
  call void @llvm.dbg.value(metadata i1 %440, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i1 %440, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i32 3, metadata !3590, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3675
  %445 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %444, i64 %54), !dbg !3677
  %446 = extractvalue { i64, i1 } %445, 1, !dbg !3677
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3675
  %447 = extractvalue { i64, i1 } %445, 0, !dbg !3678
  %448 = icmp slt i64 %444, 0, !dbg !3678
  %449 = select i1 %448, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3678
  %450 = select i1 %446, i64 %449, i64 %447, !dbg !3678
  %451 = or i1 %440, %446, !dbg !3679
  call void @llvm.dbg.value(metadata i1 %451, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i1 %451, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i32 2, metadata !3590, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3675
  %452 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %450, i64 %54), !dbg !3677
  %453 = extractvalue { i64, i1 } %452, 1, !dbg !3677
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3675
  %454 = extractvalue { i64, i1 } %452, 0, !dbg !3678
  %455 = icmp slt i64 %450, 0, !dbg !3678
  %456 = select i1 %455, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3678
  %457 = select i1 %453, i64 %456, i64 %454, !dbg !3678
  %458 = or i1 %451, %453, !dbg !3679
  call void @llvm.dbg.value(metadata i1 %458, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i1 %458, metadata !3583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3673
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %54, metadata !3599, metadata !DIExpression()), !dbg !3675
  %459 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %457, i64 %54), !dbg !3677
  %460 = extractvalue { i64, i1 } %459, 1, !dbg !3677
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3675
  %461 = extractvalue { i64, i1 } %459, 0, !dbg !3678
  %462 = icmp slt i64 %457, 0, !dbg !3678
  %463 = select i1 %462, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3678
  %464 = select i1 %460, i64 %463, i64 %461, !dbg !3678
  %465 = or i1 %458, %460, !dbg !3679
  %466 = zext i1 %465 to i32, !dbg !3679
  call void @llvm.dbg.value(metadata i32 %466, metadata !3583, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3673
  br label %476, !dbg !3607

467:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3594, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 2, metadata !3599, metadata !DIExpression()), !dbg !3680
  %468 = add i64 %31, 4611686018427387904, !dbg !3682
  %469 = icmp slt i64 %468, 0, !dbg !3682
  call void @llvm.dbg.value(metadata i64 poison, metadata !3600, metadata !DIExpression()), !dbg !3680
  %470 = shl i64 %31, 1, !dbg !3683
  %471 = icmp slt i64 %31, 0, !dbg !3683
  %472 = select i1 %471, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3683
  %473 = select i1 %469, i64 %472, i64 %470, !dbg !3683
  %474 = lshr i64 %468, 63, !dbg !3683
  %475 = trunc i64 %474 to i32, !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !3521, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %475, metadata !3527, metadata !DIExpression()), !dbg !3568
  br label %476, !dbg !3684

476:                                              ; preds = %56, %106, %438, %163, %227, %298, %423, %415, %393, %334, %377, %385, %467, %53
  %477 = phi i64 [ %473, %467 ], [ %31, %53 ], [ %391, %385 ], [ %383, %377 ], [ %374, %334 ], [ %412, %393 ], [ %421, %415 ], [ %435, %423 ], [ %331, %298 ], [ %295, %227 ], [ %224, %163 ], [ %464, %438 ], [ %160, %106 ], [ %103, %56 ], !dbg !3529
  %478 = phi i32 [ %475, %467 ], [ 0, %53 ], [ %392, %385 ], [ %384, %377 ], [ %376, %334 ], [ %414, %393 ], [ %422, %415 ], [ %437, %423 ], [ %333, %298 ], [ %297, %227 ], [ %226, %163 ], [ %466, %438 ], [ %162, %106 ], [ %105, %56 ], !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !3521, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !3527, metadata !DIExpression()), !dbg !3568
  %479 = or i32 %478, %30, !dbg !3607
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !3522, metadata !DIExpression()), !dbg !3529
  %480 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !3686
  store ptr %480, ptr %8, align 8, !dbg !3686, !tbaa !846
  %481 = load i8, ptr %480, align 1, !dbg !3687, !tbaa !926
  %482 = icmp eq i8 %481, 0, !dbg !3687
  %483 = or disjoint i32 %479, 2
  %484 = select i1 %482, i32 %479, i32 %483, !dbg !3689
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !3522, metadata !DIExpression()), !dbg !3529
  br label %487

485:                                              ; preds = %53
  store i64 %31, ptr %3, align 8, !dbg !3690, !tbaa !2324
  %486 = or disjoint i32 %30, 2, !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3521, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !3522, metadata !DIExpression()), !dbg !3529
  br label %490

487:                                              ; preds = %476, %29
  %488 = phi i64 [ %31, %29 ], [ %477, %476 ], !dbg !3692
  %489 = phi i32 [ %30, %29 ], [ %484, %476 ], !dbg !3693
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3521, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !3522, metadata !DIExpression()), !dbg !3529
  store i64 %488, ptr %3, align 8, !dbg !3694, !tbaa !2324
  br label %490, !dbg !3695

490:                                              ; preds = %485, %22, %13, %15, %18, %487, %38, %28
  %491 = phi i32 [ %489, %487 ], [ %486, %485 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !3529
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !3696
  ret i32 %491, !dbg !3696
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !3697 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3701 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3739, metadata !DIExpression()), !dbg !3744
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3745
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3740, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3746, metadata !DIExpression()), !dbg !3749
  %3 = load i32, ptr %0, align 8, !dbg !3751, !tbaa !1187
  %4 = and i32 %3, 32, !dbg !3752
  %5 = icmp eq i32 %4, 0, !dbg !3752
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3742, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3753
  %7 = icmp eq i32 %6, 0, !dbg !3754
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  br i1 %5, label %8, label %18, !dbg !3755

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3757
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3740, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3758
  %11 = xor i1 %7, true, !dbg !3758
  %12 = sext i1 %11 to i32, !dbg !3758
  br i1 %10, label %21, label %13, !dbg !3758

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3759
  %15 = load i32, ptr %14, align 4, !dbg !3759, !tbaa !917
  %16 = icmp ne i32 %15, 9, !dbg !3760
  %17 = sext i1 %16 to i32, !dbg !3761
  br label %21, !dbg !3761

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3762

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3764
  store i32 0, ptr %20, align 4, !dbg !3766, !tbaa !917
  br label %21, !dbg !3764

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3744
  ret i32 %22, !dbg !3767
}

; Function Attrs: nounwind
declare !dbg !3768 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3772 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3814
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3811, metadata !DIExpression()), !dbg !3814
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3815
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3812, metadata !DIExpression()), !dbg !3814
  %3 = icmp slt i32 %2, 0, !dbg !3816
  br i1 %3, label %4, label %6, !dbg !3818

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3819
  br label %24, !dbg !3820

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3821
  %8 = icmp eq i32 %7, 0, !dbg !3821
  br i1 %8, label %13, label %9, !dbg !3823

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3824
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3825
  %12 = icmp eq i64 %11, -1, !dbg !3826
  br i1 %12, label %16, label %13, !dbg !3827

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3828
  %15 = icmp eq i32 %14, 0, !dbg !3828
  br i1 %15, label %16, label %18, !dbg !3829

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3811, metadata !DIExpression()), !dbg !3814
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3814
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3813, metadata !DIExpression()), !dbg !3814
  br label %24, !dbg !3831

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3832
  %20 = load i32, ptr %19, align 4, !dbg !3832, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3811, metadata !DIExpression()), !dbg !3814
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3814
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3813, metadata !DIExpression()), !dbg !3814
  %22 = icmp eq i32 %20, 0, !dbg !3833
  br i1 %22, label %24, label %23, !dbg !3831

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3835, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3813, metadata !DIExpression()), !dbg !3814
  br label %24, !dbg !3837

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3814
  ret i32 %25, !dbg !3838
}

; Function Attrs: nofree nounwind
declare !dbg !3839 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3840 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3841 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3842 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3845 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3883, metadata !DIExpression()), !dbg !3884
  %2 = icmp eq ptr %0, null, !dbg !3885
  br i1 %2, label %6, label %3, !dbg !3887

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3888
  %5 = icmp eq i32 %4, 0, !dbg !3888
  br i1 %5, label %6, label %8, !dbg !3889

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3890
  br label %16, !dbg !3891

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3892, metadata !DIExpression()), !dbg !3897
  %9 = load i32, ptr %0, align 8, !dbg !3899, !tbaa !1187
  %10 = and i32 %9, 256, !dbg !3901
  %11 = icmp eq i32 %10, 0, !dbg !3901
  br i1 %11, label %14, label %12, !dbg !3902

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !3903
  br label %14, !dbg !3903

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3904
  br label %16, !dbg !3905

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3884
  ret i32 %17, !dbg !3906
}

; Function Attrs: nofree nounwind
declare !dbg !3907 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3908 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3947, metadata !DIExpression()), !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3948, metadata !DIExpression()), !dbg !3953
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3949, metadata !DIExpression()), !dbg !3953
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3954
  %5 = load ptr, ptr %4, align 8, !dbg !3954, !tbaa !3955
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3956
  %7 = load ptr, ptr %6, align 8, !dbg !3956, !tbaa !3957
  %8 = icmp eq ptr %5, %7, !dbg !3958
  br i1 %8, label %9, label %27, !dbg !3959

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3960
  %11 = load ptr, ptr %10, align 8, !dbg !3960, !tbaa !1408
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3961
  %13 = load ptr, ptr %12, align 8, !dbg !3961, !tbaa !3962
  %14 = icmp eq ptr %11, %13, !dbg !3963
  br i1 %14, label %15, label %27, !dbg !3964

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3965
  %17 = load ptr, ptr %16, align 8, !dbg !3965, !tbaa !3966
  %18 = icmp eq ptr %17, null, !dbg !3967
  br i1 %18, label %19, label %27, !dbg !3968

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3969
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !3970
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3950, metadata !DIExpression()), !dbg !3971
  %22 = icmp eq i64 %21, -1, !dbg !3972
  br i1 %22, label %29, label %23, !dbg !3974

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3975, !tbaa !1187
  %25 = and i32 %24, -17, !dbg !3975
  store i32 %25, ptr %0, align 8, !dbg !3975, !tbaa !1187
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3976
  store i64 %21, ptr %26, align 8, !dbg !3977, !tbaa !3978
  br label %29, !dbg !3979

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3980
  br label %29, !dbg !3981

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3953
  ret i32 %30, !dbg !3982
}

; Function Attrs: nofree nounwind
declare !dbg !3983 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3986 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3991, metadata !DIExpression()), !dbg !3996
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3992, metadata !DIExpression()), !dbg !3996
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3993, metadata !DIExpression()), !dbg !3996
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !3996
  %5 = icmp eq ptr %1, null, !dbg !3997
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3999
  %7 = select i1 %5, ptr @.str.131, ptr %1, !dbg !3999
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3999
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3993, metadata !DIExpression()), !dbg !3996
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3992, metadata !DIExpression()), !dbg !3996
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3991, metadata !DIExpression()), !dbg !3996
  %9 = icmp eq ptr %3, null, !dbg !4000
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4002
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3994, metadata !DIExpression()), !dbg !3996
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4003
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3995, metadata !DIExpression()), !dbg !3996
  %12 = icmp ult i64 %11, -3, !dbg !4004
  br i1 %12, label %13, label %17, !dbg !4006

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4007
  %15 = icmp eq i32 %14, 0, !dbg !4007
  br i1 %15, label %16, label %29, !dbg !4008

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4009, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %10, metadata !4016, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 0, metadata !4019, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 8, metadata !4020, metadata !DIExpression()), !dbg !4021
  store i64 0, ptr %10, align 1, !dbg !4023
  br label %29, !dbg !4024

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4025
  br i1 %18, label %19, label %20, !dbg !4027

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4028
  unreachable, !dbg !4028

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4029

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4031
  br i1 %23, label %29, label %24, !dbg !4032

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4033
  br i1 %25, label %29, label %26, !dbg !4036

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4037, !tbaa !926
  %28 = zext i8 %27 to i32, !dbg !4038
  store i32 %28, ptr %6, align 4, !dbg !4039, !tbaa !917
  br label %29, !dbg !4040

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3996
  ret i64 %30, !dbg !4041
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4042 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4048 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4050, metadata !DIExpression()), !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4051, metadata !DIExpression()), !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4052, metadata !DIExpression()), !dbg !4054
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4055
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4055
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4053, metadata !DIExpression()), !dbg !4054
  br i1 %5, label %6, label %8, !dbg !4057

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4058
  store i32 12, ptr %7, align 4, !dbg !4060, !tbaa !917
  br label %12, !dbg !4061

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4055
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %0, metadata !4062, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %9, metadata !4065, metadata !DIExpression()), !dbg !4066
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4068
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4069
  br label %12, !dbg !4070

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4054
  ret ptr %13, !dbg !4071
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4072 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4079
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4075, metadata !DIExpression(), metadata !4079, metadata ptr %2, metadata !DIExpression()), !dbg !4080
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4074, metadata !DIExpression()), !dbg !4080
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4081
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4082
  %4 = icmp eq i32 %3, 0, !dbg !4082
  br i1 %4, label %5, label %12, !dbg !4084

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4085, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr @.str.136, metadata !4088, metadata !DIExpression()), !dbg !4089
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.136, i64 2), !dbg !4092
  %7 = icmp eq i32 %6, 0, !dbg !4093
  br i1 %7, label %11, label %8, !dbg !4094

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4085, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr @.str.1.137, metadata !4088, metadata !DIExpression()), !dbg !4095
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.137, i64 6), !dbg !4097
  %10 = icmp eq i32 %9, 0, !dbg !4098
  br i1 %10, label %11, label %12, !dbg !4099

11:                                               ; preds = %8, %5
  br label %12, !dbg !4100

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4080
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4101
  ret i1 %13, !dbg !4101
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4102 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4106, metadata !DIExpression()), !dbg !4109
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4107, metadata !DIExpression()), !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4108, metadata !DIExpression()), !dbg !4109
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4110
  ret i32 %4, !dbg !4111
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4112 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4116, metadata !DIExpression()), !dbg !4117
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4118
  ret ptr %2, !dbg !4119
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4120 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4122, metadata !DIExpression()), !dbg !4124
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4125
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4123, metadata !DIExpression()), !dbg !4124
  ret ptr %2, !dbg !4126
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4127 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4129, metadata !DIExpression()), !dbg !4136
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4130, metadata !DIExpression()), !dbg !4136
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4131, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i32 %0, metadata !4122, metadata !DIExpression()), !dbg !4137
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4139
  call void @llvm.dbg.value(metadata ptr %4, metadata !4123, metadata !DIExpression()), !dbg !4137
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4132, metadata !DIExpression()), !dbg !4136
  %5 = icmp eq ptr %4, null, !dbg !4140
  br i1 %5, label %6, label %9, !dbg !4141

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4142
  br i1 %7, label %19, label %8, !dbg !4145

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4146, !tbaa !926
  br label %19, !dbg !4147

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4133, metadata !DIExpression()), !dbg !4149
  %11 = icmp ult i64 %10, %2, !dbg !4150
  br i1 %11, label %12, label %14, !dbg !4152

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4153
  call void @llvm.dbg.value(metadata ptr %1, metadata !4155, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata ptr %4, metadata !4158, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i64 %13, metadata !4159, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !4162
  br label %19, !dbg !4163

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4164
  br i1 %15, label %19, label %16, !dbg !4167

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %1, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %4, metadata !4158, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %17, metadata !4159, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4172
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4173
  store i8 0, ptr %18, align 1, !dbg !4174, !tbaa !926
  br label %19, !dbg !4175

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4176
  ret i32 %20, !dbg !4177
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!61, !404, !408, !423, !724, !758, !479, !493, !544, !760, !716, !767, !802, !804, !810, !812, !814, !816, !740, !818, !820, !822, !824}
!llvm.ident = !{!826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826}
!llvm.module.flags = !{!827, !828, !829, !830, !831, !832, !833, !834}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nice.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bb63d6c4d157649b1559df44069c2e07")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1776, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 222)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 5)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 74)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 50)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 62)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 185)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 1)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 10)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 24)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 4)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "longopts", scope: !61, file: !2, line: 57, type: !389, isLocal: true, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/nice.o -MD -MP -MF src/.deps/nice.Tpo -c src/nice.c -o src/.nice.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !144, globals: !151, splitDebugInlining: false, nameTableKind: None)
!62 = !{!63, !71, !76, !84, !123, !129}
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 90, baseType: !65, size: 32, elements: !66)
!64 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!68 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!69 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!70 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 337, baseType: !72, size: 32, elements: !73)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !{!74, !75}
!74 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!75 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !77, line: 30, baseType: !65, size: 32, elements: !78)
!77 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!80 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!81 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!82 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!83 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !85, file: !2, line: 177, baseType: !72, size: 32, elements: !120)
!85 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 102, type: !86, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !90)
!86 = !DISubroutineType(types: !87)
!87 = !{!72, !72, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!90 = !{!91, !92, !93, !94, !95, !98, !100, !101, !105, !108, !109, !110, !114, !119}
!91 = !DILocalVariable(name: "argc", arg: 1, scope: !85, file: !2, line: 102, type: !72)
!92 = !DILocalVariable(name: "argv", arg: 2, scope: !85, file: !2, line: 102, type: !88)
!93 = !DILocalVariable(name: "current_niceness", scope: !85, file: !2, line: 104, type: !72)
!94 = !DILocalVariable(name: "adjustment", scope: !85, file: !2, line: 105, type: !72)
!95 = !DILocalVariable(name: "adjustment_given", scope: !85, file: !2, line: 106, type: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!98 = !DILocalVariable(name: "ok", scope: !85, file: !2, line: 107, type: !99)
!99 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!100 = !DILocalVariable(name: "i", scope: !85, file: !2, line: 108, type: !72)
!101 = !DILocalVariable(name: "s", scope: !102, file: !2, line: 121, type: !96)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 120, column: 5)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 119, column: 3)
!104 = distinct !DILexicalBlock(scope: !85, file: !2, line: 119, column: 3)
!105 = !DILocalVariable(name: "c", scope: !106, file: !2, line: 130, type: !72)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 129, column: 9)
!107 = distinct !DILexicalBlock(scope: !102, file: !2, line: 123, column: 11)
!108 = !DILocalVariable(name: "fake_argc", scope: !106, file: !2, line: 131, type: !72)
!109 = !DILocalVariable(name: "fake_argv", scope: !106, file: !2, line: 132, type: !88)
!110 = !DILocalVariable(name: "tmp", scope: !111, file: !2, line: 179, type: !113)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 167, column: 5)
!112 = distinct !DILexicalBlock(scope: !85, file: !2, line: 166, column: 7)
!113 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!114 = !DILocalVariable(name: "__errstatus", scope: !115, file: !2, line: 240, type: !118)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 240, column: 7)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 239, column: 5)
!117 = distinct !DILexicalBlock(scope: !85, file: !2, line: 238, column: 7)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!119 = !DILocalVariable(name: "exit_status", scope: !85, file: !2, line: 253, type: !72)
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "MIN_ADJUSTMENT", value: -39)
!122 = !DIEnumerator(name: "MAX_ADJUSTMENT", value: 39)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !124, line: 187, baseType: !65, size: 32, elements: !125)
!124 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "bb0bdc9e7ae341ef435e98e05276a863")
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "PRIO_PROCESS", value: 0)
!127 = !DIEnumerator(name: "PRIO_PGRP", value: 1)
!128 = !DIEnumerator(name: "PRIO_USER", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 46, baseType: !65, size: 32, elements: !131)
!130 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!132 = !DIEnumerator(name: "_ISupper", value: 256)
!133 = !DIEnumerator(name: "_ISlower", value: 512)
!134 = !DIEnumerator(name: "_ISalpha", value: 1024)
!135 = !DIEnumerator(name: "_ISdigit", value: 2048)
!136 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!137 = !DIEnumerator(name: "_ISspace", value: 8192)
!138 = !DIEnumerator(name: "_ISprint", value: 16384)
!139 = !DIEnumerator(name: "_ISgraph", value: 32768)
!140 = !DIEnumerator(name: "_ISblank", value: 1)
!141 = !DIEnumerator(name: "_IScntrl", value: 2)
!142 = !DIEnumerator(name: "_ISpunct", value: 4)
!143 = !DIEnumerator(name: "_ISalnum", value: 8)
!144 = !{!89, !145, !72, !146, !147, !96, !150}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 18, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!149 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!150 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !{!0, !7, !9, !14, !19, !24, !29, !34, !39, !44, !49, !54, !152, !157, !162, !167, !172, !177, !179, !181, !186, !191, !269, !271, !273, !275, !280, !285, !287, !289, !291, !293, !295, !297, !302, !307, !309, !311, !313, !315, !317, !319, !324, !329, !334, !339, !341, !343, !345, !347, !352, !354, !356, !358, !360, !365, !370, !375, !380, !385, !387, !59}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 14)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 16)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 22)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 43)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 20)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !56, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !174, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 3)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !64, line: 736, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 75)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !193, file: !64, line: 575, type: !72, isLocal: true, isDefinition: true)
!193 = distinct !DISubprogram(name: "oputs_", scope: !64, file: !64, line: 573, type: !194, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !196)
!194 = !DISubroutineType(cc: DW_CC_nocall, types: !195)
!195 = !{null, !96, !96}
!196 = !{!197, !198, !199, !202, !203, !204, !205, !209, !210, !211, !212, !214, !263, !264, !265, !267, !268}
!197 = !DILocalVariable(name: "program", arg: 1, scope: !193, file: !64, line: 573, type: !96)
!198 = !DILocalVariable(name: "option", arg: 2, scope: !193, file: !64, line: 573, type: !96)
!199 = !DILocalVariable(name: "term", scope: !200, file: !64, line: 585, type: !96)
!200 = distinct !DILexicalBlock(scope: !201, file: !64, line: 582, column: 5)
!201 = distinct !DILexicalBlock(scope: !193, file: !64, line: 581, column: 7)
!202 = !DILocalVariable(name: "double_space", scope: !193, file: !64, line: 594, type: !99)
!203 = !DILocalVariable(name: "first_word", scope: !193, file: !64, line: 595, type: !96)
!204 = !DILocalVariable(name: "option_text", scope: !193, file: !64, line: 596, type: !96)
!205 = !DILocalVariable(name: "s", scope: !206, file: !64, line: 608, type: !96)
!206 = distinct !DILexicalBlock(scope: !207, file: !64, line: 605, column: 5)
!207 = distinct !DILexicalBlock(scope: !208, file: !64, line: 604, column: 12)
!208 = distinct !DILexicalBlock(scope: !193, file: !64, line: 597, column: 7)
!209 = !DILocalVariable(name: "spaces", scope: !206, file: !64, line: 609, type: !147)
!210 = !DILocalVariable(name: "anchor_len", scope: !193, file: !64, line: 620, type: !147)
!211 = !DILocalVariable(name: "desc_text", scope: !193, file: !64, line: 625, type: !96)
!212 = !DILocalVariable(name: "__ptr", scope: !213, file: !64, line: 644, type: !96)
!213 = distinct !DILexicalBlock(scope: !193, file: !64, line: 644, column: 3)
!214 = !DILocalVariable(name: "__stream", scope: !213, file: !64, line: 644, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !218)
!217 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !220)
!219 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !236, !238, !239, !240, !243, !244, !246, !247, !250, !252, !255, !258, !259, !260, !261, !262}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !218, file: !219, line: 51, baseType: !72, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !218, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !218, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !218, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !218, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !218, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !218, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !218, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !218, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !218, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !218, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !218, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !218, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !219, line: 36, flags: DIFlagFwdDecl)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !218, file: !219, line: 70, baseType: !237, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !218, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !218, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !218, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !242, line: 152, baseType: !113)
!242 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !218, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !218, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!245 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !218, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !218, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !219, line: 43, baseType: null)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !218, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !242, line: 153, baseType: !113)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !218, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !219, line: 37, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !218, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !219, line: 38, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !218, file: !219, line: 93, baseType: !237, size: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !218, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !218, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !218, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !218, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!263 = !DILocalVariable(name: "__cnt", scope: !213, file: !64, line: 644, type: !147)
!264 = !DILocalVariable(name: "url_program", scope: !193, file: !64, line: 648, type: !96)
!265 = !DILocalVariable(name: "__ptr", scope: !266, file: !64, line: 686, type: !96)
!266 = distinct !DILexicalBlock(scope: !193, file: !64, line: 686, column: 3)
!267 = !DILocalVariable(name: "__stream", scope: !266, file: !64, line: 686, type: !215)
!268 = !DILocalVariable(name: "__cnt", scope: !266, file: !64, line: 686, type: !147)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !64, line: 585, type: !16, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !64, line: 586, type: !16, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !64, line: 595, type: !56, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !64, line: 620, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 6)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !64, line: 648, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 2)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !64, line: 648, type: !16, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !64, line: 649, type: !56, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !64, line: 649, type: !183, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !64, line: 650, type: !16, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !64, line: 651, type: !277, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !64, line: 651, type: !277, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !64, line: 652, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 7)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !64, line: 653, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 8)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !64, line: 654, type: !46, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !64, line: 655, type: !46, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !64, line: 656, type: !46, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !64, line: 657, type: !46, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !64, line: 663, type: !299, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !64, line: 664, type: !46, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !64, line: 669, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 17)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !64, line: 669, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 40)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !64, line: 676, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 15)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !64, line: 676, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 61)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !64, line: 679, type: !183, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !64, line: 683, type: !16, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !64, line: 688, type: !16, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !64, line: 691, type: !304, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !64, line: 826, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1440, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 180)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !64, line: 839, type: !159, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !64, line: 840, type: !164, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !64, line: 841, type: !331, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !64, line: 862, type: !56, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !64, line: 868, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 71)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !64, line: 875, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 27)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !64, line: 877, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 51)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !64, line: 877, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 12)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 11)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !16, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !304, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 1024, elements: !57)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !392, line: 50, size: 256, elements: !393)
!392 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!393 = !{!394, !395, !396, !398}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !392, line: 52, baseType: !96, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !391, file: !392, line: 55, baseType: !72, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !391, file: !392, line: 56, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !391, file: !392, line: 57, baseType: !72, size: 32, offset: 192)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !401, line: 3, type: !331, isLocal: true, isDefinition: true)
!401 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "Version", scope: !404, file: !401, line: 3, type: !96, isLocal: false, isDefinition: true)
!404 = distinct !DICompileUnit(language: DW_LANG_C11, file: !401, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !405, splitDebugInlining: false, nameTableKind: None)
!405 = !{!399, !402}
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "file_name", scope: !408, file: !409, line: 45, type: !96, isLocal: true, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !410, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!410 = !{!411, !413, !415, !417, !406, !419}
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !409, line: 121, type: !299, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !409, line: 121, type: !377, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !409, line: 123, type: !299, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !409, line: 126, type: !183, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !408, file: !409, line: 55, type: !99, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !423, file: !424, line: 66, type: !474, isLocal: false, isDefinition: true)
!423 = distinct !DICompileUnit(language: DW_LANG_C11, file: !424, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !425, globals: !426, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!425 = !{!145, !150}
!426 = !{!427, !429, !453, !455, !457, !459, !421, !461, !463, !465, !467, !472}
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !424, line: 272, type: !16, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "old_file_name", scope: !431, file: !424, line: 304, type: !96, isLocal: true, isDefinition: true)
!431 = distinct !DISubprogram(name: "verror_at_line", scope: !424, file: !424, line: 298, type: !432, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !446)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !72, !72, !96, !65, !96, !434}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !435, line: 52, baseType: !436)
!435 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !437, line: 12, baseType: !438)
!437 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !424, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !440)
!440 = !{!441, !442, !443, !444, !445}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !439, file: !424, baseType: !145, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !439, file: !424, baseType: !145, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !439, file: !424, baseType: !145, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !439, file: !424, baseType: !72, size: 32, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !439, file: !424, baseType: !72, size: 32, offset: 224)
!446 = !{!447, !448, !449, !450, !451, !452}
!447 = !DILocalVariable(name: "status", arg: 1, scope: !431, file: !424, line: 298, type: !72)
!448 = !DILocalVariable(name: "errnum", arg: 2, scope: !431, file: !424, line: 298, type: !72)
!449 = !DILocalVariable(name: "file_name", arg: 3, scope: !431, file: !424, line: 298, type: !96)
!450 = !DILocalVariable(name: "line_number", arg: 4, scope: !431, file: !424, line: 298, type: !65)
!451 = !DILocalVariable(name: "message", arg: 5, scope: !431, file: !424, line: 298, type: !96)
!452 = !DILocalVariable(name: "args", arg: 6, scope: !431, file: !424, line: 298, type: !434)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "old_line_number", scope: !431, file: !424, line: 305, type: !65, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !424, line: 338, type: !56, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !424, line: 346, type: !304, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !424, line: 346, type: !282, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "error_message_count", scope: !423, file: !424, line: 69, type: !65, isLocal: false, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !423, file: !424, line: 295, type: !72, isLocal: false, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !424, line: 208, type: !299, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !424, line: 208, type: !469, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 21)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !424, line: 214, type: !16, isLocal: true, isDefinition: true)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null}
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "program_name", scope: !479, file: !480, line: 31, type: !96, isLocal: false, isDefinition: true)
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !480, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !481, globals: !482, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!481 = !{!145, !89}
!482 = !{!477, !483, !485}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !480, line: 46, type: !304, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !480, line: 49, type: !56, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "utf07FF", scope: !489, file: !490, line: 46, type: !517, isLocal: true, isDefinition: true)
!489 = distinct !DISubprogram(name: "proper_name_lite", scope: !490, file: !490, line: 38, type: !491, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !495)
!490 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!491 = !DISubroutineType(types: !492)
!492 = !{!96, !96, !96}
!493 = distinct !DICompileUnit(language: DW_LANG_C11, file: !490, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !494, splitDebugInlining: false, nameTableKind: None)
!494 = !{!487}
!495 = !{!496, !497, !498, !499, !504}
!496 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !489, file: !490, line: 38, type: !96)
!497 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !489, file: !490, line: 38, type: !96)
!498 = !DILocalVariable(name: "translation", scope: !489, file: !490, line: 40, type: !96)
!499 = !DILocalVariable(name: "w", scope: !489, file: !490, line: 47, type: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !501, line: 37, baseType: !502)
!501 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !242, line: 57, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !242, line: 42, baseType: !65)
!504 = !DILocalVariable(name: "mbs", scope: !489, file: !490, line: 48, type: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !506, line: 6, baseType: !507)
!506 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !508, line: 21, baseType: !509)
!508 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 13, size: 64, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !509, file: !508, line: 15, baseType: !72, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !509, file: !508, line: 20, baseType: !513, size: 32, offset: 32)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !508, line: 16, size: 32, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !513, file: !508, line: 18, baseType: !65, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !513, file: !508, line: 19, baseType: !56, size: 32)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !283)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !520, line: 78, type: !304, isLocal: true, isDefinition: true)
!520 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !520, line: 79, type: !277, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !520, line: 80, type: !525, isLocal: true, isDefinition: true)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 13)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !520, line: 81, type: !525, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !520, line: 82, type: !174, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !520, line: 83, type: !282, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !520, line: 84, type: !304, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !520, line: 85, type: !299, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !520, line: 86, type: !299, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !520, line: 87, type: !304, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !544, file: !520, line: 76, type: !630, isLocal: false, isDefinition: true)
!544 = distinct !DICompileUnit(language: DW_LANG_C11, file: !520, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !545, retainedTypes: !565, globals: !566, splitDebugInlining: false, nameTableKind: None)
!545 = !{!546, !560, !129}
!546 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !547, line: 42, baseType: !65, size: 32, elements: !548)
!547 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!549 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!550 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!551 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!552 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!553 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!554 = !DIEnumerator(name: "c_quoting_style", value: 5)
!555 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!556 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!557 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!558 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!559 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !547, line: 254, baseType: !65, size: 32, elements: !561)
!561 = !{!562, !563, !564}
!562 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!563 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!564 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!565 = !{!145, !72, !146, !147}
!566 = !{!518, !521, !523, !528, !530, !532, !534, !536, !538, !540, !542, !567, !571, !581, !583, !588, !590, !592, !594, !596, !619, !626, !628}
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !544, file: !520, line: 92, type: !569, isLocal: false, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 320, elements: !47)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !544, file: !520, line: 1040, type: !573, isLocal: false, isDefinition: true)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !520, line: 56, size: 448, elements: !574)
!574 = !{!575, !576, !577, !579, !580}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !573, file: !520, line: 59, baseType: !546, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !520, line: 62, baseType: !72, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !573, file: !520, line: 66, baseType: !578, size: 256, offset: 64)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !305)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !573, file: !520, line: 69, baseType: !96, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !573, file: !520, line: 72, baseType: !96, size: 64, offset: 384)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !544, file: !520, line: 107, type: !573, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "slot0", scope: !544, file: !520, line: 831, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 256)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !520, line: 321, type: !282, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !520, line: 357, type: !282, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !520, line: 358, type: !282, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !520, line: 199, type: !299, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "quote", scope: !598, file: !520, line: 228, type: !617, isLocal: true, isDefinition: true)
!598 = distinct !DISubprogram(name: "gettext_quote", scope: !520, file: !520, line: 197, type: !599, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{!96, !96, !546}
!601 = !{!602, !603, !604, !605, !606}
!602 = !DILocalVariable(name: "msgid", arg: 1, scope: !598, file: !520, line: 197, type: !96)
!603 = !DILocalVariable(name: "s", arg: 2, scope: !598, file: !520, line: 197, type: !546)
!604 = !DILocalVariable(name: "translation", scope: !598, file: !520, line: 199, type: !96)
!605 = !DILocalVariable(name: "w", scope: !598, file: !520, line: 229, type: !500)
!606 = !DILocalVariable(name: "mbs", scope: !598, file: !520, line: 230, type: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !506, line: 6, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !508, line: 21, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 13, size: 64, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !609, file: !508, line: 15, baseType: !72, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !609, file: !508, line: 20, baseType: !613, size: 32, offset: 32)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !609, file: !508, line: 16, size: 32, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !613, file: !508, line: 18, baseType: !65, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !613, file: !508, line: 19, baseType: !56, size: 32)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !618)
!618 = !{!284, !58}
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "slotvec", scope: !544, file: !520, line: 834, type: !621, isLocal: true, isDefinition: true)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !520, line: 823, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !622, file: !520, line: 825, baseType: !147, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !622, file: !520, line: 826, baseType: !89, size: 64, offset: 64)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "nslots", scope: !544, file: !520, line: 832, type: !72, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "slotvec0", scope: !544, file: !520, line: 833, type: !622, isLocal: true, isDefinition: true)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 704, elements: !383)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !634, line: 67, type: !377, isLocal: true, isDefinition: true)
!634 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !634, line: 69, type: !299, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !634, line: 83, type: !299, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !634, line: 83, type: !56, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !634, line: 85, type: !282, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !634, line: 88, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 171)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !634, line: 88, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 34)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !634, line: 105, type: !159, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !634, line: 109, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 23)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !634, line: 113, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 28)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !634, line: 120, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 32)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !634, line: 127, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 36)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !634, line: 134, type: !326, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !634, line: 142, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 44)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !634, line: 150, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 48)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !634, line: 159, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 52)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !634, line: 170, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 60)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !634, line: 248, type: !174, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !634, line: 248, type: !164, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !634, line: 254, type: !174, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !634, line: 254, type: !154, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !634, line: 254, type: !326, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !634, line: 259, type: !3, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !634, line: 259, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 29)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !716, file: !717, line: 26, type: !719, isLocal: false, isDefinition: true)
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!718 = !{!714}
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 376, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 47)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "exit_failure", scope: !724, file: !725, line: 24, type: !727, isLocal: false, isDefinition: true)
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !726, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!726 = !{!722}
!727 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !183, isLocal: true, isDefinition: true)
!730 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !299, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !321, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !737, line: 108, type: !41, isLocal: true, isDefinition: true)
!737 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "internal_state", scope: !740, file: !737, line: 97, type: !743, isLocal: true, isDefinition: true)
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !741, globals: !742, splitDebugInlining: false, nameTableKind: None)
!741 = !{!145, !147, !150}
!742 = !{!735, !738}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !506, line: 6, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !508, line: 21, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 13, size: 64, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !745, file: !508, line: 15, baseType: !72, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !745, file: !508, line: 20, baseType: !749, size: 32, offset: 32)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !508, line: 16, size: 32, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !749, file: !508, line: 18, baseType: !65, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !749, file: !508, line: 19, baseType: !56, size: 32)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !755, line: 35, type: !282, isLocal: true, isDefinition: true)
!755 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !755, line: 35, type: !277, isLocal: true, isDefinition: true)
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !634, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !761, retainedTypes: !765, globals: !766, splitDebugInlining: false, nameTableKind: None)
!761 = !{!762}
!762 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !634, line: 40, baseType: !65, size: 32, elements: !763)
!763 = !{!764}
!764 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!765 = !{!145}
!766 = !{!632, !635, !637, !639, !641, !643, !648, !653, !655, !660, !665, !670, !675, !677, !682, !687, !692, !697, !699, !701, !703, !705, !707, !709}
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !769, retainedTypes: !801, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!769 = !{!770, !782}
!770 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !771, file: !768, line: 188, baseType: !65, size: 32, elements: !780)
!771 = distinct !DISubprogram(name: "x2nrealloc", scope: !768, file: !768, line: 176, type: !772, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !775)
!772 = !DISubroutineType(types: !773)
!773 = !{!145, !145, !774, !147}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!775 = !{!776, !777, !778, !779}
!776 = !DILocalVariable(name: "p", arg: 1, scope: !771, file: !768, line: 176, type: !145)
!777 = !DILocalVariable(name: "pn", arg: 2, scope: !771, file: !768, line: 176, type: !774)
!778 = !DILocalVariable(name: "s", arg: 3, scope: !771, file: !768, line: 176, type: !147)
!779 = !DILocalVariable(name: "n", scope: !771, file: !768, line: 178, type: !147)
!780 = !{!781}
!781 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!782 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !783, file: !768, line: 228, baseType: !65, size: 32, elements: !780)
!783 = distinct !DISubprogram(name: "xpalloc", scope: !768, file: !768, line: 223, type: !784, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !791)
!784 = !DISubroutineType(types: !785)
!785 = !{!145, !145, !786, !787, !789, !787}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !788, line: 130, baseType: !789)
!788 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !790, line: 18, baseType: !113)
!790 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800}
!792 = !DILocalVariable(name: "pa", arg: 1, scope: !783, file: !768, line: 223, type: !145)
!793 = !DILocalVariable(name: "pn", arg: 2, scope: !783, file: !768, line: 223, type: !786)
!794 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !783, file: !768, line: 223, type: !787)
!795 = !DILocalVariable(name: "n_max", arg: 4, scope: !783, file: !768, line: 223, type: !789)
!796 = !DILocalVariable(name: "s", arg: 5, scope: !783, file: !768, line: 223, type: !787)
!797 = !DILocalVariable(name: "n0", scope: !783, file: !768, line: 230, type: !787)
!798 = !DILocalVariable(name: "n", scope: !783, file: !768, line: 237, type: !787)
!799 = !DILocalVariable(name: "nbytes", scope: !783, file: !768, line: 248, type: !787)
!800 = !DILocalVariable(name: "adjusted_nbytes", scope: !783, file: !768, line: 252, type: !787)
!801 = !{!89, !145}
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !803, splitDebugInlining: false, nameTableKind: None)
!803 = !{!728, !731, !733}
!804 = distinct !DICompileUnit(language: DW_LANG_C11, file: !805, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtol.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtol.Tpo -c lib/xstrtol.c -o lib/.libcoreutils_a-xstrtol.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !806, retainedTypes: !809, splitDebugInlining: false, nameTableKind: None)
!805 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!806 = !{!807}
!807 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !808, line: 30, baseType: !65, size: 32, elements: !78)
!808 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!809 = !{!113}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !813, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!813 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !821, splitDebugInlining: false, nameTableKind: None)
!821 = !{!753, !756}
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !825, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!825 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!826 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!827 = !{i32 7, !"Dwarf Version", i32 5}
!828 = !{i32 2, !"Debug Info Version", i32 3}
!829 = !{i32 1, !"wchar_size", i32 4}
!830 = !{i32 8, !"PIC Level", i32 2}
!831 = !{i32 7, !"PIE Level", i32 2}
!832 = !{i32 7, !"uwtable", i32 2}
!833 = !{i32 7, !"frame-pointer", i32 1}
!834 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!835 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 66, type: !836, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !72}
!838 = !{!839}
!839 = !DILocalVariable(name: "status", arg: 1, scope: !835, file: !2, line: 66, type: !72)
!840 = !DILocation(line: 0, scope: !835)
!841 = !DILocation(line: 68, column: 14, scope: !842)
!842 = distinct !DILexicalBlock(scope: !835, file: !2, line: 68, column: 7)
!843 = !DILocation(line: 68, column: 7, scope: !835)
!844 = !DILocation(line: 69, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !2, line: 69, column: 5)
!846 = !{!847, !847, i64 0}
!847 = !{!"any pointer", !848, i64 0}
!848 = !{!"omnipotent char", !849, i64 0}
!849 = !{!"Simple C/C++ TBAA"}
!850 = !DILocation(line: 72, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !842, file: !2, line: 71, column: 5)
!852 = !DILocation(line: 73, column: 7, scope: !851)
!853 = !DILocation(line: 736, column: 3, scope: !854, inlinedAt: !855)
!854 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !64, file: !64, line: 734, type: !475, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61)
!855 = distinct !DILocation(line: 80, column: 7, scope: !851)
!856 = !DILocation(line: 82, column: 7, scope: !851)
!857 = !DILocation(line: 86, column: 7, scope: !851)
!858 = !DILocation(line: 87, column: 7, scope: !851)
!859 = !DILocation(line: 88, column: 7, scope: !851)
!860 = !DILocalVariable(name: "program", arg: 1, scope: !861, file: !64, line: 824, type: !96)
!861 = distinct !DISubprogram(name: "emit_exec_status", scope: !64, file: !64, line: 824, type: !862, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !96}
!864 = !{!860}
!865 = !DILocation(line: 0, scope: !861, inlinedAt: !866)
!866 = distinct !DILocation(line: 89, column: 7, scope: !851)
!867 = !DILocation(line: 826, column: 7, scope: !861, inlinedAt: !866)
!868 = !DILocalVariable(name: "program", arg: 1, scope: !869, file: !64, line: 836, type: !96)
!869 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !64, file: !64, line: 836, type: !862, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !870)
!870 = !{!868, !871, !878, !879, !881, !882}
!871 = !DILocalVariable(name: "infomap", scope: !869, file: !64, line: 838, type: !872)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 896, elements: !300)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !869, file: !64, line: 838, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !874, file: !64, line: 838, baseType: !96, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !874, file: !64, line: 838, baseType: !96, size: 64, offset: 64)
!878 = !DILocalVariable(name: "node", scope: !869, file: !64, line: 848, type: !96)
!879 = !DILocalVariable(name: "map_prog", scope: !869, file: !64, line: 849, type: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!881 = !DILocalVariable(name: "lc_messages", scope: !869, file: !64, line: 861, type: !96)
!882 = !DILocalVariable(name: "url_program", scope: !869, file: !64, line: 874, type: !96)
!883 = !DILocation(line: 0, scope: !869, inlinedAt: !884)
!884 = distinct !DILocation(line: 90, column: 7, scope: !851)
!885 = !{}
!886 = !DILocation(line: 857, column: 3, scope: !869, inlinedAt: !884)
!887 = !DILocation(line: 861, column: 29, scope: !869, inlinedAt: !884)
!888 = !DILocation(line: 862, column: 7, scope: !889, inlinedAt: !884)
!889 = distinct !DILexicalBlock(scope: !869, file: !64, line: 862, column: 7)
!890 = !DILocation(line: 862, column: 19, scope: !889, inlinedAt: !884)
!891 = !DILocation(line: 862, column: 22, scope: !889, inlinedAt: !884)
!892 = !DILocation(line: 862, column: 7, scope: !869, inlinedAt: !884)
!893 = !DILocation(line: 868, column: 7, scope: !894, inlinedAt: !884)
!894 = distinct !DILexicalBlock(scope: !889, file: !64, line: 863, column: 5)
!895 = !DILocation(line: 870, column: 5, scope: !894, inlinedAt: !884)
!896 = !DILocation(line: 875, column: 3, scope: !869, inlinedAt: !884)
!897 = !DILocation(line: 877, column: 3, scope: !869, inlinedAt: !884)
!898 = !DILocation(line: 92, column: 3, scope: !835)
!899 = !DISubprogram(name: "dcgettext", scope: !900, file: !900, line: 51, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!901 = !DISubroutineType(types: !902)
!902 = !{!89, !96, !96, !72}
!903 = !DISubprogram(name: "__fprintf_chk", scope: !904, file: !904, line: 93, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!905 = !DISubroutineType(types: !906)
!906 = !{!72, !907, !72, !908, null}
!907 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!908 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!909 = !DISubprogram(name: "__printf_chk", scope: !904, file: !904, line: 95, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = !DISubroutineType(types: !911)
!911 = !{!72, !72, !908, null}
!912 = !DISubprogram(name: "fputs_unlocked", scope: !435, file: !435, line: 691, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DISubroutineType(types: !914)
!914 = !{!72, !908, !907}
!915 = !DILocation(line: 0, scope: !193)
!916 = !DILocation(line: 581, column: 7, scope: !201)
!917 = !{!918, !918, i64 0}
!918 = !{!"int", !848, i64 0}
!919 = !DILocation(line: 581, column: 19, scope: !201)
!920 = !DILocation(line: 581, column: 7, scope: !193)
!921 = !DILocation(line: 585, column: 26, scope: !200)
!922 = !DILocation(line: 0, scope: !200)
!923 = !DILocation(line: 586, column: 23, scope: !200)
!924 = !DILocation(line: 586, column: 28, scope: !200)
!925 = !DILocation(line: 586, column: 32, scope: !200)
!926 = !{!848, !848, i64 0}
!927 = !DILocation(line: 586, column: 38, scope: !200)
!928 = !DILocalVariable(name: "__s1", arg: 1, scope: !929, file: !930, line: 1359, type: !96)
!929 = distinct !DISubprogram(name: "streq", scope: !930, file: !930, line: 1359, type: !931, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !933)
!930 = !DIFile(filename: "./lib/string.h", directory: "/src")
!931 = !DISubroutineType(types: !932)
!932 = !{!99, !96, !96}
!933 = !{!928, !934}
!934 = !DILocalVariable(name: "__s2", arg: 2, scope: !929, file: !930, line: 1359, type: !96)
!935 = !DILocation(line: 0, scope: !929, inlinedAt: !936)
!936 = distinct !DILocation(line: 586, column: 41, scope: !200)
!937 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !936)
!938 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !936)
!939 = !DILocation(line: 586, column: 19, scope: !200)
!940 = !DILocation(line: 587, column: 5, scope: !200)
!941 = !DILocation(line: 588, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !193, file: !64, line: 588, column: 7)
!943 = !DILocation(line: 588, column: 7, scope: !193)
!944 = !DILocation(line: 590, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !64, line: 589, column: 5)
!946 = !DILocation(line: 591, column: 7, scope: !945)
!947 = !DILocation(line: 595, column: 37, scope: !193)
!948 = !DILocation(line: 595, column: 35, scope: !193)
!949 = !DILocation(line: 596, column: 29, scope: !193)
!950 = !DILocation(line: 597, column: 8, scope: !208)
!951 = !DILocation(line: 597, column: 7, scope: !193)
!952 = !DILocation(line: 604, column: 24, scope: !207)
!953 = !DILocation(line: 604, column: 12, scope: !208)
!954 = !DILocation(line: 0, scope: !206)
!955 = !DILocation(line: 610, column: 16, scope: !206)
!956 = !DILocation(line: 610, column: 7, scope: !206)
!957 = !DILocation(line: 611, column: 21, scope: !206)
!958 = !{!959, !959, i64 0}
!959 = !{!"short", !848, i64 0}
!960 = !DILocation(line: 611, column: 19, scope: !206)
!961 = !DILocation(line: 611, column: 16, scope: !206)
!962 = !DILocation(line: 610, column: 30, scope: !206)
!963 = distinct !{!963, !956, !957, !964}
!964 = !{!"llvm.loop.mustprogress"}
!965 = !DILocation(line: 612, column: 18, scope: !966)
!966 = distinct !DILexicalBlock(scope: !206, file: !64, line: 612, column: 11)
!967 = !DILocation(line: 612, column: 11, scope: !206)
!968 = !DILocation(line: 620, column: 23, scope: !193)
!969 = !DILocation(line: 625, column: 39, scope: !193)
!970 = !DILocation(line: 626, column: 3, scope: !193)
!971 = !DILocation(line: 626, column: 10, scope: !193)
!972 = !DILocation(line: 626, column: 21, scope: !193)
!973 = !DILocation(line: 628, column: 44, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !64, line: 628, column: 11)
!975 = distinct !DILexicalBlock(scope: !193, file: !64, line: 627, column: 5)
!976 = !DILocation(line: 628, column: 32, scope: !974)
!977 = !DILocation(line: 628, column: 49, scope: !974)
!978 = !DILocation(line: 628, column: 11, scope: !975)
!979 = !DILocation(line: 630, column: 11, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !64, line: 630, column: 11)
!981 = !DILocation(line: 630, column: 11, scope: !975)
!982 = !DILocation(line: 632, column: 26, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !64, line: 632, column: 15)
!984 = distinct !DILexicalBlock(scope: !980, file: !64, line: 631, column: 9)
!985 = !DILocation(line: 632, column: 34, scope: !983)
!986 = !DILocation(line: 632, column: 37, scope: !983)
!987 = !DILocation(line: 632, column: 15, scope: !984)
!988 = !DILocation(line: 640, column: 16, scope: !975)
!989 = distinct !{!989, !970, !990, !964}
!990 = !DILocation(line: 641, column: 5, scope: !193)
!991 = !DILocation(line: 644, column: 3, scope: !193)
!992 = !DILocation(line: 0, scope: !929, inlinedAt: !993)
!993 = distinct !DILocation(line: 648, column: 31, scope: !193)
!994 = !DILocation(line: 0, scope: !929, inlinedAt: !995)
!995 = distinct !DILocation(line: 649, column: 31, scope: !193)
!996 = !DILocation(line: 0, scope: !929, inlinedAt: !997)
!997 = distinct !DILocation(line: 650, column: 31, scope: !193)
!998 = !DILocation(line: 0, scope: !929, inlinedAt: !999)
!999 = distinct !DILocation(line: 651, column: 31, scope: !193)
!1000 = !DILocation(line: 0, scope: !929, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 652, column: 31, scope: !193)
!1002 = !DILocation(line: 0, scope: !929, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 653, column: 31, scope: !193)
!1004 = !DILocation(line: 0, scope: !929, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 654, column: 31, scope: !193)
!1006 = !DILocation(line: 0, scope: !929, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 655, column: 31, scope: !193)
!1008 = !DILocation(line: 0, scope: !929, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 656, column: 31, scope: !193)
!1010 = !DILocation(line: 0, scope: !929, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 657, column: 31, scope: !193)
!1012 = !DILocation(line: 663, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !193, file: !64, line: 663, column: 7)
!1014 = !DILocation(line: 664, column: 7, scope: !1013)
!1015 = !DILocation(line: 664, column: 10, scope: !1013)
!1016 = !DILocation(line: 663, column: 7, scope: !193)
!1017 = !DILocation(line: 669, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !64, line: 665, column: 5)
!1019 = !DILocation(line: 671, column: 5, scope: !1018)
!1020 = !DILocation(line: 676, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1013, file: !64, line: 673, column: 5)
!1022 = !DILocation(line: 679, column: 3, scope: !193)
!1023 = !DILocation(line: 683, column: 3, scope: !193)
!1024 = !DILocation(line: 686, column: 3, scope: !193)
!1025 = !DILocation(line: 688, column: 3, scope: !193)
!1026 = !DILocation(line: 691, column: 3, scope: !193)
!1027 = !DILocation(line: 695, column: 3, scope: !193)
!1028 = !DILocation(line: 696, column: 1, scope: !193)
!1029 = !DISubprogram(name: "setlocale", scope: !1030, file: !1030, line: 122, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!89, !72, !96}
!1033 = !DISubprogram(name: "strncmp", scope: !1034, file: !1034, line: 159, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!72, !96, !96, !147}
!1037 = !DISubprogram(name: "exit", scope: !1038, file: !1038, line: 624, type: !836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1038 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1039 = !DISubprogram(name: "getenv", scope: !1038, file: !1038, line: 641, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!89, !96}
!1042 = !DISubprogram(name: "strcmp", scope: !1034, file: !1034, line: 156, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!72, !96, !96}
!1045 = !DISubprogram(name: "strspn", scope: !1034, file: !1034, line: 297, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!149, !96, !96}
!1048 = !DISubprogram(name: "strchr", scope: !1034, file: !1034, line: 246, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!89, !96, !72}
!1051 = !DISubprogram(name: "__ctype_b_loc", scope: !130, file: !130, line: 79, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1057 = !DISubprogram(name: "strcspn", scope: !1034, file: !1034, line: 293, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubprogram(name: "fwrite_unlocked", scope: !435, file: !435, line: 704, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!147, !1061, !147, !147, !907}
!1061 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1064 = distinct !DIAssignID()
!1065 = !DILocation(line: 0, scope: !111)
!1066 = !DILocation(line: 0, scope: !85)
!1067 = !DILocation(line: 111, column: 21, scope: !85)
!1068 = !DILocation(line: 111, column: 3, scope: !85)
!1069 = !DILocation(line: 112, column: 3, scope: !85)
!1070 = !DILocation(line: 113, column: 3, scope: !85)
!1071 = !DILocation(line: 114, column: 3, scope: !85)
!1072 = !DILocalVariable(name: "status", arg: 1, scope: !1073, file: !64, line: 102, type: !72)
!1073 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !64, file: !64, line: 102, type: !836, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1074)
!1074 = !{!1072}
!1075 = !DILocation(line: 0, scope: !1073, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 116, column: 3, scope: !85)
!1077 = !DILocation(line: 105, column: 18, scope: !1078, inlinedAt: !1076)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !64, line: 104, column: 7)
!1079 = !DILocation(line: 117, column: 3, scope: !85)
!1080 = !DILocation(line: 119, column: 17, scope: !103)
!1081 = !DILocation(line: 119, column: 3, scope: !104)
!1082 = !DILocation(line: 123, column: 23, scope: !107)
!1083 = !DILocation(line: 121, column: 23, scope: !102)
!1084 = !DILocation(line: 0, scope: !102)
!1085 = !DILocation(line: 123, column: 11, scope: !107)
!1086 = !DILocation(line: 123, column: 16, scope: !107)
!1087 = !DILocation(line: 123, column: 44, scope: !107)
!1088 = !DILocation(line: 123, column: 49, scope: !107)
!1089 = !DILocation(line: 123, column: 56, scope: !107)
!1090 = !DILocation(line: 123, column: 41, scope: !107)
!1091 = !DILocation(line: 123, column: 37, scope: !107)
!1092 = !DILocalVariable(name: "c", arg: 1, scope: !1093, file: !1094, line: 233, type: !72)
!1093 = distinct !DISubprogram(name: "c_isdigit", scope: !1094, file: !1094, line: 233, type: !1095, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1097)
!1094 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!99, !72}
!1097 = !{!1092}
!1098 = !DILocation(line: 0, scope: !1093, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 123, column: 26, scope: !107)
!1100 = !DILocation(line: 235, column: 3, scope: !1093, inlinedAt: !1099)
!1101 = !DILocation(line: 123, column: 11, scope: !102)
!1102 = !DILocation(line: 126, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !107, file: !2, line: 124, column: 9)
!1104 = !DILocation(line: 127, column: 9, scope: !1103)
!1105 = !DILocation(line: 131, column: 37, scope: !106)
!1106 = !DILocation(line: 131, column: 32, scope: !106)
!1107 = !DILocation(line: 0, scope: !106)
!1108 = !DILocation(line: 132, column: 35, scope: !106)
!1109 = !DILocation(line: 135, column: 26, scope: !106)
!1110 = !DILocation(line: 135, column: 24, scope: !106)
!1111 = !DILocation(line: 138, column: 18, scope: !106)
!1112 = !DILocation(line: 140, column: 15, scope: !106)
!1113 = !DILocation(line: 141, column: 16, scope: !106)
!1114 = !DILocation(line: 141, column: 13, scope: !106)
!1115 = !DILocation(line: 143, column: 11, scope: !106)
!1116 = !DILocation(line: 152, column: 13, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !106, file: !2, line: 144, column: 13)
!1118 = !DILocation(line: 154, column: 13, scope: !1117)
!1119 = !DILocation(line: 157, column: 15, scope: !1117)
!1120 = !DILocation(line: 146, column: 34, scope: !1117)
!1121 = !DILocation(line: 0, scope: !107)
!1122 = !DILocation(line: 0, scope: !104)
!1123 = !DILocation(line: 166, column: 7, scope: !112)
!1124 = !DILocation(line: 166, column: 7, scope: !85)
!1125 = !DILocation(line: 179, column: 7, scope: !111)
!1126 = !DILocation(line: 180, column: 30, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !111, file: !2, line: 180, column: 11)
!1128 = !DILocation(line: 180, column: 28, scope: !1127)
!1129 = !DILocation(line: 180, column: 11, scope: !111)
!1130 = !DILocation(line: 181, column: 9, scope: !1127)
!1131 = !DILocation(line: 213, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !85, file: !2, line: 213, column: 7)
!1133 = !DILocation(line: 213, column: 7, scope: !85)
!1134 = !DILocation(line: 209, column: 20, scope: !111)
!1135 = !DILocation(line: 211, column: 5, scope: !112)
!1136 = !DILocation(line: 217, column: 11, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 216, column: 9)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 215, column: 11)
!1139 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 214, column: 5)
!1140 = !DILocation(line: 218, column: 11, scope: !1137)
!1141 = !DILocation(line: 221, column: 7, scope: !1139)
!1142 = !DILocation(line: 221, column: 13, scope: !1139)
!1143 = !DILocation(line: 222, column: 26, scope: !1139)
!1144 = !DILocation(line: 223, column: 28, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 223, column: 11)
!1146 = !DILocation(line: 223, column: 34, scope: !1145)
!1147 = !DILocation(line: 223, column: 37, scope: !1145)
!1148 = !DILocation(line: 223, column: 43, scope: !1145)
!1149 = !DILocation(line: 223, column: 11, scope: !1139)
!1150 = !DILocation(line: 224, column: 9, scope: !1145)
!1151 = !DILocation(line: 225, column: 7, scope: !1139)
!1152 = !DILocation(line: 226, column: 7, scope: !1139)
!1153 = !DILocation(line: 229, column: 3, scope: !85)
!1154 = !DILocation(line: 229, column: 9, scope: !85)
!1155 = !DILocation(line: 233, column: 22, scope: !85)
!1156 = !DILocation(line: 234, column: 24, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !85, file: !2, line: 234, column: 7)
!1158 = !DILocation(line: 234, column: 30, scope: !1157)
!1159 = !DILocation(line: 234, column: 33, scope: !1157)
!1160 = !DILocation(line: 234, column: 39, scope: !1157)
!1161 = !DILocation(line: 234, column: 7, scope: !85)
!1162 = !DILocation(line: 235, column: 5, scope: !1157)
!1163 = !DILocation(line: 236, column: 56, scope: !85)
!1164 = !DILocation(line: 236, column: 9, scope: !85)
!1165 = !DILocation(line: 236, column: 70, scope: !85)
!1166 = !DILocation(line: 238, column: 7, scope: !85)
!1167 = !DILocation(line: 240, column: 7, scope: !115)
!1168 = !DILocalVariable(name: "err", arg: 1, scope: !1169, file: !2, line: 96, type: !72)
!1169 = distinct !DISubprogram(name: "perm_related_errno", scope: !2, file: !2, line: 96, type: !1095, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1170)
!1170 = !{!1168}
!1171 = !DILocation(line: 0, scope: !1169, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 240, column: 7, scope: !115)
!1173 = !DILocation(line: 98, column: 14, scope: !1169, inlinedAt: !1172)
!1174 = !DILocation(line: 98, column: 24, scope: !1169, inlinedAt: !1172)
!1175 = !DILocation(line: 0, scope: !115)
!1176 = !DILocation(line: 247, column: 11, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !116, file: !2, line: 247, column: 11)
!1178 = !DILocalVariable(name: "__stream", arg: 1, scope: !1179, file: !1180, line: 135, type: !215)
!1179 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1180, file: !1180, line: 135, type: !1181, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1183)
!1180 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!72, !215}
!1183 = !{!1178}
!1184 = !DILocation(line: 0, scope: !1179, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 247, column: 11, scope: !1177)
!1186 = !DILocation(line: 137, column: 10, scope: !1179, inlinedAt: !1185)
!1187 = !{!1188, !918, i64 0}
!1188 = !{!"_IO_FILE", !918, i64 0, !847, i64 8, !847, i64 16, !847, i64 24, !847, i64 32, !847, i64 40, !847, i64 48, !847, i64 56, !847, i64 64, !847, i64 72, !847, i64 80, !847, i64 88, !847, i64 96, !847, i64 104, !918, i64 112, !918, i64 116, !1189, i64 120, !959, i64 128, !848, i64 130, !848, i64 131, !847, i64 136, !1189, i64 144, !847, i64 152, !847, i64 160, !847, i64 168, !847, i64 176, !1189, i64 184, !918, i64 192, !848, i64 196}
!1189 = !{!"long", !848, i64 0}
!1190 = !DILocation(line: 247, column: 11, scope: !116)
!1191 = !DILocation(line: 251, column: 11, scope: !85)
!1192 = !DILocation(line: 251, column: 3, scope: !85)
!1193 = !DILocation(line: 253, column: 21, scope: !85)
!1194 = !DILocation(line: 253, column: 27, scope: !85)
!1195 = !DILocation(line: 254, column: 3, scope: !85)
!1196 = !DILocation(line: 256, column: 1, scope: !85)
!1197 = !DISubprogram(name: "bindtextdomain", scope: !900, file: !900, line: 86, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!89, !96, !96}
!1200 = !DISubprogram(name: "textdomain", scope: !900, file: !900, line: 82, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubprogram(name: "atexit", scope: !1038, file: !1038, line: 602, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!72, !474}
!1204 = !DISubprogram(name: "getopt_long", scope: !392, file: !392, line: 66, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!72, !72, !1207, !96, !1209, !397}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1210 = !DISubprogram(name: "__errno_location", scope: !1211, file: !1211, line: 37, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1211 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!397}
!1214 = !DISubprogram(name: "getpriority", scope: !1215, file: !1215, line: 105, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "e55940cb1bf33174af2c45f02cd69e8a")
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!72, !1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__priority_which_t", file: !1215, line: 40, baseType: !123)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "id_t", file: !1220, line: 103, baseType: !1221)
!1220 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__id_t", file: !242, line: 159, baseType: !65)
!1222 = !DISubprogram(name: "setpriority", scope: !1215, file: !1215, line: 109, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!72, !1218, !1219, !72}
!1225 = !DISubprogram(name: "execvp", scope: !1226, file: !1226, line: 599, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!72, !96, !1207}
!1229 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !409, file: !409, line: 50, type: !862, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1230)
!1230 = !{!1231}
!1231 = !DILocalVariable(name: "file", arg: 1, scope: !1229, file: !409, line: 50, type: !96)
!1232 = !DILocation(line: 0, scope: !1229)
!1233 = !DILocation(line: 52, column: 13, scope: !1229)
!1234 = !DILocation(line: 53, column: 1, scope: !1229)
!1235 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !409, file: !409, line: 87, type: !1236, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !99}
!1238 = !{!1239}
!1239 = !DILocalVariable(name: "ignore", arg: 1, scope: !1235, file: !409, line: 87, type: !99)
!1240 = !DILocation(line: 0, scope: !1235)
!1241 = !DILocation(line: 89, column: 16, scope: !1235)
!1242 = !{!1243, !1243, i64 0}
!1243 = !{!"_Bool", !848, i64 0}
!1244 = !DILocation(line: 90, column: 1, scope: !1235)
!1245 = distinct !DISubprogram(name: "close_stdout", scope: !409, file: !409, line: 116, type: !475, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1246)
!1246 = !{!1247}
!1247 = !DILocalVariable(name: "write_error", scope: !1248, file: !409, line: 121, type: !96)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !409, line: 120, column: 5)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !409, line: 118, column: 7)
!1250 = !DILocation(line: 118, column: 21, scope: !1249)
!1251 = !DILocation(line: 118, column: 7, scope: !1249)
!1252 = !DILocation(line: 118, column: 29, scope: !1249)
!1253 = !DILocation(line: 119, column: 7, scope: !1249)
!1254 = !DILocation(line: 119, column: 12, scope: !1249)
!1255 = !{i8 0, i8 2}
!1256 = !DILocation(line: 119, column: 25, scope: !1249)
!1257 = !DILocation(line: 119, column: 28, scope: !1249)
!1258 = !DILocation(line: 119, column: 34, scope: !1249)
!1259 = !DILocation(line: 118, column: 7, scope: !1245)
!1260 = !DILocation(line: 121, column: 33, scope: !1248)
!1261 = !DILocation(line: 0, scope: !1248)
!1262 = !DILocation(line: 122, column: 11, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1248, file: !409, line: 122, column: 11)
!1264 = !DILocation(line: 0, scope: !1263)
!1265 = !DILocation(line: 122, column: 11, scope: !1248)
!1266 = !DILocation(line: 123, column: 9, scope: !1263)
!1267 = !DILocation(line: 126, column: 9, scope: !1263)
!1268 = !DILocation(line: 128, column: 14, scope: !1248)
!1269 = !DILocation(line: 128, column: 7, scope: !1248)
!1270 = !DILocation(line: 133, column: 42, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1245, file: !409, line: 133, column: 7)
!1272 = !DILocation(line: 133, column: 28, scope: !1271)
!1273 = !DILocation(line: 133, column: 50, scope: !1271)
!1274 = !DILocation(line: 133, column: 7, scope: !1245)
!1275 = !DILocation(line: 134, column: 12, scope: !1271)
!1276 = !DILocation(line: 134, column: 5, scope: !1271)
!1277 = !DILocation(line: 135, column: 1, scope: !1245)
!1278 = !DISubprogram(name: "_exit", scope: !1226, file: !1226, line: 624, type: !836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1279 = distinct !DISubprogram(name: "verror", scope: !424, file: !424, line: 251, type: !1280, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !72, !72, !96, !434}
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DILocalVariable(name: "status", arg: 1, scope: !1279, file: !424, line: 251, type: !72)
!1284 = !DILocalVariable(name: "errnum", arg: 2, scope: !1279, file: !424, line: 251, type: !72)
!1285 = !DILocalVariable(name: "message", arg: 3, scope: !1279, file: !424, line: 251, type: !96)
!1286 = !DILocalVariable(name: "args", arg: 4, scope: !1279, file: !424, line: 251, type: !434)
!1287 = !DILocation(line: 0, scope: !1279)
!1288 = !DILocation(line: 261, column: 3, scope: !1279)
!1289 = !DILocation(line: 265, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1279, file: !424, line: 265, column: 7)
!1291 = !DILocation(line: 265, column: 7, scope: !1279)
!1292 = !DILocation(line: 266, column: 5, scope: !1290)
!1293 = !DILocation(line: 272, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !424, line: 268, column: 5)
!1295 = !DILocation(line: 276, column: 3, scope: !1279)
!1296 = !{i64 0, i64 8, !846, i64 8, i64 8, !846, i64 16, i64 8, !846, i64 24, i64 4, !917, i64 28, i64 4, !917}
!1297 = !DILocation(line: 282, column: 1, scope: !1279)
!1298 = distinct !DISubprogram(name: "flush_stdout", scope: !424, file: !424, line: 163, type: !475, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1299)
!1299 = !{!1300}
!1300 = !DILocalVariable(name: "stdout_fd", scope: !1298, file: !424, line: 166, type: !72)
!1301 = !DILocation(line: 0, scope: !1298)
!1302 = !DILocalVariable(name: "fd", arg: 1, scope: !1303, file: !424, line: 145, type: !72)
!1303 = distinct !DISubprogram(name: "is_open", scope: !424, file: !424, line: 145, type: !1304, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!72, !72}
!1306 = !{!1302}
!1307 = !DILocation(line: 0, scope: !1303, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 182, column: 25, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1298, file: !424, line: 182, column: 7)
!1310 = !DILocation(line: 157, column: 15, scope: !1303, inlinedAt: !1308)
!1311 = !DILocation(line: 157, column: 12, scope: !1303, inlinedAt: !1308)
!1312 = !DILocation(line: 182, column: 7, scope: !1298)
!1313 = !DILocation(line: 184, column: 5, scope: !1309)
!1314 = !DILocation(line: 185, column: 1, scope: !1298)
!1315 = distinct !DISubprogram(name: "error_tail", scope: !424, file: !424, line: 219, type: !1280, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1316)
!1316 = !{!1317, !1318, !1319, !1320}
!1317 = !DILocalVariable(name: "status", arg: 1, scope: !1315, file: !424, line: 219, type: !72)
!1318 = !DILocalVariable(name: "errnum", arg: 2, scope: !1315, file: !424, line: 219, type: !72)
!1319 = !DILocalVariable(name: "message", arg: 3, scope: !1315, file: !424, line: 219, type: !96)
!1320 = !DILocalVariable(name: "args", arg: 4, scope: !1315, file: !424, line: 219, type: !434)
!1321 = distinct !DIAssignID()
!1322 = !DILocation(line: 0, scope: !1315)
!1323 = !DILocation(line: 229, column: 13, scope: !1315)
!1324 = !DILocation(line: 135, column: 10, scope: !1325, inlinedAt: !1367)
!1325 = distinct !DISubprogram(name: "vfprintf", scope: !904, file: !904, line: 132, type: !1326, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1363)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!72, !1328, !908, !436}
!1328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1331, file: !219, line: 51, baseType: !72, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1331, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1331, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1331, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1331, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1331, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1331, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1331, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1331, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1331, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1331, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1331, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1331, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1331, file: !219, line: 70, baseType: !1347, size: 64, offset: 832)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1331, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1331, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1331, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1331, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1331, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1331, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1331, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1331, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1331, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1331, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1331, file: !219, line: 93, baseType: !1347, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1331, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1331, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1331, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1331, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!1363 = !{!1364, !1365, !1366}
!1364 = !DILocalVariable(name: "__stream", arg: 1, scope: !1325, file: !904, line: 132, type: !1328)
!1365 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1325, file: !904, line: 133, type: !908)
!1366 = !DILocalVariable(name: "__ap", arg: 3, scope: !1325, file: !904, line: 133, type: !436)
!1367 = distinct !DILocation(line: 229, column: 3, scope: !1315)
!1368 = !{!1369, !1371}
!1369 = distinct !{!1369, !1370, !"vfprintf.inline: argument 0"}
!1370 = distinct !{!1370, !"vfprintf.inline"}
!1371 = distinct !{!1371, !1370, !"vfprintf.inline: argument 1"}
!1372 = !DILocation(line: 229, column: 3, scope: !1315)
!1373 = !DILocation(line: 0, scope: !1325, inlinedAt: !1367)
!1374 = !DILocation(line: 232, column: 3, scope: !1315)
!1375 = !DILocation(line: 233, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1315, file: !424, line: 233, column: 7)
!1377 = !DILocation(line: 233, column: 7, scope: !1315)
!1378 = !DILocalVariable(name: "errbuf", scope: !1379, file: !424, line: 193, type: !1383)
!1379 = distinct !DISubprogram(name: "print_errno_message", scope: !424, file: !424, line: 188, type: !836, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1380)
!1380 = !{!1381, !1382, !1378}
!1381 = !DILocalVariable(name: "errnum", arg: 1, scope: !1379, file: !424, line: 188, type: !72)
!1382 = !DILocalVariable(name: "s", scope: !1379, file: !424, line: 190, type: !96)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 1024)
!1386 = !DILocation(line: 0, scope: !1379, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 234, column: 5, scope: !1376)
!1388 = !DILocation(line: 193, column: 3, scope: !1379, inlinedAt: !1387)
!1389 = !DILocation(line: 195, column: 7, scope: !1379, inlinedAt: !1387)
!1390 = !DILocation(line: 207, column: 9, scope: !1391, inlinedAt: !1387)
!1391 = distinct !DILexicalBlock(scope: !1379, file: !424, line: 207, column: 7)
!1392 = !DILocation(line: 207, column: 7, scope: !1379, inlinedAt: !1387)
!1393 = !DILocation(line: 208, column: 9, scope: !1391, inlinedAt: !1387)
!1394 = !DILocation(line: 208, column: 5, scope: !1391, inlinedAt: !1387)
!1395 = !DILocation(line: 214, column: 3, scope: !1379, inlinedAt: !1387)
!1396 = !DILocation(line: 216, column: 1, scope: !1379, inlinedAt: !1387)
!1397 = !DILocation(line: 234, column: 5, scope: !1376)
!1398 = !DILocation(line: 238, column: 3, scope: !1315)
!1399 = !DILocalVariable(name: "__c", arg: 1, scope: !1400, file: !1180, line: 101, type: !72)
!1400 = distinct !DISubprogram(name: "putc_unlocked", scope: !1180, file: !1180, line: 101, type: !1401, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!72, !72, !1329}
!1403 = !{!1399, !1404}
!1404 = !DILocalVariable(name: "__stream", arg: 2, scope: !1400, file: !1180, line: 101, type: !1329)
!1405 = !DILocation(line: 0, scope: !1400, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 238, column: 3, scope: !1315)
!1407 = !DILocation(line: 103, column: 10, scope: !1400, inlinedAt: !1406)
!1408 = !{!1188, !847, i64 40}
!1409 = !{!1188, !847, i64 48}
!1410 = !{!"branch_weights", i32 2000, i32 1}
!1411 = !DILocation(line: 240, column: 3, scope: !1315)
!1412 = !DILocation(line: 241, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1315, file: !424, line: 241, column: 7)
!1414 = !DILocation(line: 241, column: 7, scope: !1315)
!1415 = !DILocation(line: 242, column: 5, scope: !1413)
!1416 = !DILocation(line: 243, column: 1, scope: !1315)
!1417 = !DISubprogram(name: "__vfprintf_chk", scope: !904, file: !904, line: 96, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!72, !1328, !72, !908, !436}
!1420 = !DISubprogram(name: "strerror_r", scope: !1034, file: !1034, line: 444, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!89, !72, !89, !147}
!1423 = !DISubprogram(name: "__overflow", scope: !435, file: !435, line: 886, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!72, !1329, !72}
!1426 = !DISubprogram(name: "fflush_unlocked", scope: !435, file: !435, line: 239, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!72, !1329}
!1429 = !DISubprogram(name: "fcntl", scope: !1430, file: !1430, line: 149, type: !1431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1430 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!72, !72, !72, null}
!1433 = distinct !DISubprogram(name: "error", scope: !424, file: !424, line: 285, type: !1434, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !72, !72, !96, null}
!1436 = !{!1437, !1438, !1439, !1440}
!1437 = !DILocalVariable(name: "status", arg: 1, scope: !1433, file: !424, line: 285, type: !72)
!1438 = !DILocalVariable(name: "errnum", arg: 2, scope: !1433, file: !424, line: 285, type: !72)
!1439 = !DILocalVariable(name: "message", arg: 3, scope: !1433, file: !424, line: 285, type: !96)
!1440 = !DILocalVariable(name: "ap", scope: !1433, file: !424, line: 287, type: !434)
!1441 = distinct !DIAssignID()
!1442 = !DILocation(line: 0, scope: !1433)
!1443 = !DILocation(line: 287, column: 3, scope: !1433)
!1444 = !DILocation(line: 288, column: 3, scope: !1433)
!1445 = !DILocation(line: 289, column: 3, scope: !1433)
!1446 = !DILocation(line: 290, column: 3, scope: !1433)
!1447 = !DILocation(line: 291, column: 1, scope: !1433)
!1448 = !DILocation(line: 0, scope: !431)
!1449 = !DILocation(line: 302, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !431, file: !424, line: 302, column: 7)
!1451 = !DILocation(line: 302, column: 7, scope: !431)
!1452 = !DILocation(line: 307, column: 11, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !424, line: 307, column: 11)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !424, line: 303, column: 5)
!1455 = !DILocation(line: 307, column: 27, scope: !1453)
!1456 = !DILocation(line: 308, column: 11, scope: !1453)
!1457 = !DILocation(line: 308, column: 28, scope: !1453)
!1458 = !DILocation(line: 308, column: 25, scope: !1453)
!1459 = !DILocation(line: 309, column: 15, scope: !1453)
!1460 = !DILocation(line: 309, column: 33, scope: !1453)
!1461 = !DILocation(line: 310, column: 19, scope: !1453)
!1462 = !DILocation(line: 311, column: 22, scope: !1453)
!1463 = !DILocation(line: 311, column: 56, scope: !1453)
!1464 = !DILocation(line: 307, column: 11, scope: !1454)
!1465 = !DILocation(line: 316, column: 21, scope: !1454)
!1466 = !DILocation(line: 317, column: 23, scope: !1454)
!1467 = !DILocation(line: 318, column: 5, scope: !1454)
!1468 = !DILocation(line: 327, column: 3, scope: !431)
!1469 = !DILocation(line: 331, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !431, file: !424, line: 331, column: 7)
!1471 = !DILocation(line: 331, column: 7, scope: !431)
!1472 = !DILocation(line: 332, column: 5, scope: !1470)
!1473 = !DILocation(line: 338, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !424, line: 334, column: 5)
!1475 = !DILocation(line: 346, column: 3, scope: !431)
!1476 = !DILocation(line: 350, column: 3, scope: !431)
!1477 = !DILocation(line: 356, column: 1, scope: !431)
!1478 = distinct !DISubprogram(name: "error_at_line", scope: !424, file: !424, line: 359, type: !1479, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !72, !72, !96, !65, !96, null}
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487}
!1482 = !DILocalVariable(name: "status", arg: 1, scope: !1478, file: !424, line: 359, type: !72)
!1483 = !DILocalVariable(name: "errnum", arg: 2, scope: !1478, file: !424, line: 359, type: !72)
!1484 = !DILocalVariable(name: "file_name", arg: 3, scope: !1478, file: !424, line: 359, type: !96)
!1485 = !DILocalVariable(name: "line_number", arg: 4, scope: !1478, file: !424, line: 360, type: !65)
!1486 = !DILocalVariable(name: "message", arg: 5, scope: !1478, file: !424, line: 360, type: !96)
!1487 = !DILocalVariable(name: "ap", scope: !1478, file: !424, line: 362, type: !434)
!1488 = distinct !DIAssignID()
!1489 = !DILocation(line: 0, scope: !1478)
!1490 = !DILocation(line: 362, column: 3, scope: !1478)
!1491 = !DILocation(line: 363, column: 3, scope: !1478)
!1492 = !DILocation(line: 364, column: 3, scope: !1478)
!1493 = !DILocation(line: 366, column: 3, scope: !1478)
!1494 = !DILocation(line: 367, column: 1, scope: !1478)
!1495 = distinct !DISubprogram(name: "getprogname", scope: !759, file: !759, line: 54, type: !1496, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!96}
!1498 = !DILocation(line: 58, column: 10, scope: !1495)
!1499 = !DILocation(line: 58, column: 3, scope: !1495)
!1500 = distinct !DISubprogram(name: "set_program_name", scope: !480, file: !480, line: 37, type: !862, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DILocalVariable(name: "argv0", arg: 1, scope: !1500, file: !480, line: 37, type: !96)
!1503 = !DILocalVariable(name: "slash", scope: !1500, file: !480, line: 44, type: !96)
!1504 = !DILocalVariable(name: "base", scope: !1500, file: !480, line: 45, type: !96)
!1505 = !DILocation(line: 0, scope: !1500)
!1506 = !DILocation(line: 44, column: 23, scope: !1500)
!1507 = !DILocation(line: 45, column: 22, scope: !1500)
!1508 = !DILocation(line: 46, column: 17, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1500, file: !480, line: 46, column: 7)
!1510 = !DILocation(line: 46, column: 9, scope: !1509)
!1511 = !DILocation(line: 46, column: 25, scope: !1509)
!1512 = !DILocation(line: 46, column: 40, scope: !1509)
!1513 = !DILocalVariable(name: "__s1", arg: 1, scope: !1514, file: !930, line: 974, type: !1062)
!1514 = distinct !DISubprogram(name: "memeq", scope: !930, file: !930, line: 974, type: !1515, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!99, !1062, !1062, !147}
!1517 = !{!1513, !1518, !1519}
!1518 = !DILocalVariable(name: "__s2", arg: 2, scope: !1514, file: !930, line: 974, type: !1062)
!1519 = !DILocalVariable(name: "__n", arg: 3, scope: !1514, file: !930, line: 974, type: !147)
!1520 = !DILocation(line: 0, scope: !1514, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 46, column: 28, scope: !1509)
!1522 = !DILocation(line: 976, column: 11, scope: !1514, inlinedAt: !1521)
!1523 = !DILocation(line: 976, column: 10, scope: !1514, inlinedAt: !1521)
!1524 = !DILocation(line: 46, column: 7, scope: !1500)
!1525 = !DILocation(line: 49, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !480, line: 49, column: 11)
!1527 = distinct !DILexicalBlock(scope: !1509, file: !480, line: 47, column: 5)
!1528 = !DILocation(line: 49, column: 36, scope: !1526)
!1529 = !DILocation(line: 49, column: 11, scope: !1527)
!1530 = !DILocation(line: 65, column: 16, scope: !1500)
!1531 = !DILocation(line: 71, column: 27, scope: !1500)
!1532 = !DILocation(line: 74, column: 33, scope: !1500)
!1533 = !DILocation(line: 76, column: 1, scope: !1500)
!1534 = !DISubprogram(name: "strrchr", scope: !1034, file: !1034, line: 273, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1535 = distinct !DIAssignID()
!1536 = !DILocation(line: 0, scope: !489)
!1537 = distinct !DIAssignID()
!1538 = !DILocation(line: 40, column: 29, scope: !489)
!1539 = !DILocation(line: 41, column: 19, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !489, file: !490, line: 41, column: 7)
!1541 = !DILocation(line: 41, column: 7, scope: !489)
!1542 = !DILocation(line: 47, column: 3, scope: !489)
!1543 = !DILocation(line: 48, column: 3, scope: !489)
!1544 = !DILocalVariable(name: "ps", arg: 1, scope: !1545, file: !1546, line: 1135, type: !1549)
!1545 = distinct !DISubprogram(name: "mbszero", scope: !1546, file: !1546, line: 1135, type: !1547, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !1550)
!1546 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!1550 = !{!1544}
!1551 = !DILocation(line: 0, scope: !1545, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 48, column: 18, scope: !489)
!1553 = !DILocalVariable(name: "__dest", arg: 1, scope: !1554, file: !1555, line: 57, type: !145)
!1554 = distinct !DISubprogram(name: "memset", scope: !1555, file: !1555, line: 57, type: !1556, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !1558)
!1555 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!145, !145, !72, !147}
!1558 = !{!1553, !1559, !1560}
!1559 = !DILocalVariable(name: "__ch", arg: 2, scope: !1554, file: !1555, line: 57, type: !72)
!1560 = !DILocalVariable(name: "__len", arg: 3, scope: !1554, file: !1555, line: 57, type: !147)
!1561 = !DILocation(line: 0, scope: !1554, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 1137, column: 3, scope: !1545, inlinedAt: !1552)
!1563 = !DILocation(line: 59, column: 10, scope: !1554, inlinedAt: !1562)
!1564 = !DILocation(line: 49, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !489, file: !490, line: 49, column: 7)
!1566 = !DILocation(line: 49, column: 39, scope: !1565)
!1567 = !DILocation(line: 49, column: 44, scope: !1565)
!1568 = !DILocation(line: 54, column: 1, scope: !489)
!1569 = !DISubprogram(name: "mbrtoc32", scope: !501, file: !501, line: 57, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!147, !1572, !908, !147, !1574}
!1572 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1573)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1549)
!1575 = distinct !DISubprogram(name: "clone_quoting_options", scope: !520, file: !520, line: 113, type: !1576, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1579)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1578, !1578}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!1579 = !{!1580, !1581, !1582}
!1580 = !DILocalVariable(name: "o", arg: 1, scope: !1575, file: !520, line: 113, type: !1578)
!1581 = !DILocalVariable(name: "saved_errno", scope: !1575, file: !520, line: 115, type: !72)
!1582 = !DILocalVariable(name: "p", scope: !1575, file: !520, line: 116, type: !1578)
!1583 = !DILocation(line: 0, scope: !1575)
!1584 = !DILocation(line: 115, column: 21, scope: !1575)
!1585 = !DILocation(line: 116, column: 40, scope: !1575)
!1586 = !DILocation(line: 116, column: 31, scope: !1575)
!1587 = !DILocation(line: 118, column: 9, scope: !1575)
!1588 = !DILocation(line: 119, column: 3, scope: !1575)
!1589 = distinct !DISubprogram(name: "get_quoting_style", scope: !520, file: !520, line: 124, type: !1590, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1594)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!546, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!1594 = !{!1595}
!1595 = !DILocalVariable(name: "o", arg: 1, scope: !1589, file: !520, line: 124, type: !1592)
!1596 = !DILocation(line: 0, scope: !1589)
!1597 = !DILocation(line: 126, column: 11, scope: !1589)
!1598 = !DILocation(line: 126, column: 46, scope: !1589)
!1599 = !{!1600, !918, i64 0}
!1600 = !{!"quoting_options", !918, i64 0, !918, i64 4, !848, i64 8, !847, i64 40, !847, i64 48}
!1601 = !DILocation(line: 126, column: 3, scope: !1589)
!1602 = distinct !DISubprogram(name: "set_quoting_style", scope: !520, file: !520, line: 132, type: !1603, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !1578, !546}
!1605 = !{!1606, !1607}
!1606 = !DILocalVariable(name: "o", arg: 1, scope: !1602, file: !520, line: 132, type: !1578)
!1607 = !DILocalVariable(name: "s", arg: 2, scope: !1602, file: !520, line: 132, type: !546)
!1608 = !DILocation(line: 0, scope: !1602)
!1609 = !DILocation(line: 134, column: 4, scope: !1602)
!1610 = !DILocation(line: 134, column: 45, scope: !1602)
!1611 = !DILocation(line: 135, column: 1, scope: !1602)
!1612 = distinct !DISubprogram(name: "set_char_quoting", scope: !520, file: !520, line: 143, type: !1613, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!72, !1578, !4, !72}
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1622, !1623}
!1616 = !DILocalVariable(name: "o", arg: 1, scope: !1612, file: !520, line: 143, type: !1578)
!1617 = !DILocalVariable(name: "c", arg: 2, scope: !1612, file: !520, line: 143, type: !4)
!1618 = !DILocalVariable(name: "i", arg: 3, scope: !1612, file: !520, line: 143, type: !72)
!1619 = !DILocalVariable(name: "uc", scope: !1612, file: !520, line: 145, type: !150)
!1620 = !DILocalVariable(name: "p", scope: !1612, file: !520, line: 146, type: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1622 = !DILocalVariable(name: "shift", scope: !1612, file: !520, line: 148, type: !72)
!1623 = !DILocalVariable(name: "r", scope: !1612, file: !520, line: 149, type: !65)
!1624 = !DILocation(line: 0, scope: !1612)
!1625 = !DILocation(line: 147, column: 6, scope: !1612)
!1626 = !DILocation(line: 147, column: 41, scope: !1612)
!1627 = !DILocation(line: 147, column: 62, scope: !1612)
!1628 = !DILocation(line: 147, column: 57, scope: !1612)
!1629 = !DILocation(line: 148, column: 15, scope: !1612)
!1630 = !DILocation(line: 149, column: 21, scope: !1612)
!1631 = !DILocation(line: 149, column: 24, scope: !1612)
!1632 = !DILocation(line: 149, column: 34, scope: !1612)
!1633 = !DILocation(line: 150, column: 19, scope: !1612)
!1634 = !DILocation(line: 150, column: 24, scope: !1612)
!1635 = !DILocation(line: 150, column: 6, scope: !1612)
!1636 = !DILocation(line: 151, column: 3, scope: !1612)
!1637 = distinct !DISubprogram(name: "set_quoting_flags", scope: !520, file: !520, line: 159, type: !1638, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!72, !1578, !72}
!1640 = !{!1641, !1642, !1643}
!1641 = !DILocalVariable(name: "o", arg: 1, scope: !1637, file: !520, line: 159, type: !1578)
!1642 = !DILocalVariable(name: "i", arg: 2, scope: !1637, file: !520, line: 159, type: !72)
!1643 = !DILocalVariable(name: "r", scope: !1637, file: !520, line: 163, type: !72)
!1644 = !DILocation(line: 0, scope: !1637)
!1645 = !DILocation(line: 161, column: 8, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1637, file: !520, line: 161, column: 7)
!1647 = !DILocation(line: 161, column: 7, scope: !1637)
!1648 = !DILocation(line: 163, column: 14, scope: !1637)
!1649 = !{!1600, !918, i64 4}
!1650 = !DILocation(line: 164, column: 12, scope: !1637)
!1651 = !DILocation(line: 165, column: 3, scope: !1637)
!1652 = distinct !DISubprogram(name: "set_custom_quoting", scope: !520, file: !520, line: 169, type: !1653, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1578, !96, !96}
!1655 = !{!1656, !1657, !1658}
!1656 = !DILocalVariable(name: "o", arg: 1, scope: !1652, file: !520, line: 169, type: !1578)
!1657 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1652, file: !520, line: 170, type: !96)
!1658 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1652, file: !520, line: 170, type: !96)
!1659 = !DILocation(line: 0, scope: !1652)
!1660 = !DILocation(line: 172, column: 8, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1652, file: !520, line: 172, column: 7)
!1662 = !DILocation(line: 172, column: 7, scope: !1652)
!1663 = !DILocation(line: 174, column: 12, scope: !1652)
!1664 = !DILocation(line: 175, column: 8, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1652, file: !520, line: 175, column: 7)
!1666 = !DILocation(line: 175, column: 19, scope: !1665)
!1667 = !DILocation(line: 176, column: 5, scope: !1665)
!1668 = !DILocation(line: 177, column: 6, scope: !1652)
!1669 = !DILocation(line: 177, column: 17, scope: !1652)
!1670 = !{!1600, !847, i64 40}
!1671 = !DILocation(line: 178, column: 6, scope: !1652)
!1672 = !DILocation(line: 178, column: 18, scope: !1652)
!1673 = !{!1600, !847, i64 48}
!1674 = !DILocation(line: 179, column: 1, scope: !1652)
!1675 = !DISubprogram(name: "abort", scope: !1038, file: !1038, line: 598, type: !475, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1676 = distinct !DISubprogram(name: "quotearg_buffer", scope: !520, file: !520, line: 774, type: !1677, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!147, !89, !147, !96, !147, !1592}
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1680 = !DILocalVariable(name: "buffer", arg: 1, scope: !1676, file: !520, line: 774, type: !89)
!1681 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1676, file: !520, line: 774, type: !147)
!1682 = !DILocalVariable(name: "arg", arg: 3, scope: !1676, file: !520, line: 775, type: !96)
!1683 = !DILocalVariable(name: "argsize", arg: 4, scope: !1676, file: !520, line: 775, type: !147)
!1684 = !DILocalVariable(name: "o", arg: 5, scope: !1676, file: !520, line: 776, type: !1592)
!1685 = !DILocalVariable(name: "p", scope: !1676, file: !520, line: 778, type: !1592)
!1686 = !DILocalVariable(name: "saved_errno", scope: !1676, file: !520, line: 779, type: !72)
!1687 = !DILocalVariable(name: "r", scope: !1676, file: !520, line: 780, type: !147)
!1688 = !DILocation(line: 0, scope: !1676)
!1689 = !DILocation(line: 778, column: 37, scope: !1676)
!1690 = !DILocation(line: 779, column: 21, scope: !1676)
!1691 = !DILocation(line: 781, column: 43, scope: !1676)
!1692 = !DILocation(line: 781, column: 53, scope: !1676)
!1693 = !DILocation(line: 781, column: 63, scope: !1676)
!1694 = !DILocation(line: 782, column: 43, scope: !1676)
!1695 = !DILocation(line: 782, column: 58, scope: !1676)
!1696 = !DILocation(line: 780, column: 14, scope: !1676)
!1697 = !DILocation(line: 783, column: 9, scope: !1676)
!1698 = !DILocation(line: 784, column: 3, scope: !1676)
!1699 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !520, file: !520, line: 251, type: !1700, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1704)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!147, !89, !147, !96, !147, !546, !72, !1702, !96, !96}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1730, !1732, !1735, !1736, !1737, !1738, !1741, !1742, !1744, !1745, !1748, !1752, !1753, !1761, !1764, !1765, !1766}
!1705 = !DILocalVariable(name: "buffer", arg: 1, scope: !1699, file: !520, line: 251, type: !89)
!1706 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1699, file: !520, line: 251, type: !147)
!1707 = !DILocalVariable(name: "arg", arg: 3, scope: !1699, file: !520, line: 252, type: !96)
!1708 = !DILocalVariable(name: "argsize", arg: 4, scope: !1699, file: !520, line: 252, type: !147)
!1709 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1699, file: !520, line: 253, type: !546)
!1710 = !DILocalVariable(name: "flags", arg: 6, scope: !1699, file: !520, line: 253, type: !72)
!1711 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1699, file: !520, line: 254, type: !1702)
!1712 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1699, file: !520, line: 255, type: !96)
!1713 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1699, file: !520, line: 256, type: !96)
!1714 = !DILocalVariable(name: "unibyte_locale", scope: !1699, file: !520, line: 258, type: !99)
!1715 = !DILocalVariable(name: "len", scope: !1699, file: !520, line: 260, type: !147)
!1716 = !DILocalVariable(name: "orig_buffersize", scope: !1699, file: !520, line: 261, type: !147)
!1717 = !DILocalVariable(name: "quote_string", scope: !1699, file: !520, line: 262, type: !96)
!1718 = !DILocalVariable(name: "quote_string_len", scope: !1699, file: !520, line: 263, type: !147)
!1719 = !DILocalVariable(name: "backslash_escapes", scope: !1699, file: !520, line: 264, type: !99)
!1720 = !DILocalVariable(name: "elide_outer_quotes", scope: !1699, file: !520, line: 265, type: !99)
!1721 = !DILocalVariable(name: "encountered_single_quote", scope: !1699, file: !520, line: 266, type: !99)
!1722 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1699, file: !520, line: 267, type: !99)
!1723 = !DILabel(scope: !1699, name: "process_input", file: !520, line: 308)
!1724 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1699, file: !520, line: 309, type: !99)
!1725 = !DILocalVariable(name: "lq", scope: !1726, file: !520, line: 361, type: !96)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !520, line: 361, column: 11)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !520, line: 360, column: 13)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !520, line: 333, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1699, file: !520, line: 312, column: 5)
!1730 = !DILocalVariable(name: "i", scope: !1731, file: !520, line: 395, type: !147)
!1731 = distinct !DILexicalBlock(scope: !1699, file: !520, line: 395, column: 3)
!1732 = !DILocalVariable(name: "is_right_quote", scope: !1733, file: !520, line: 397, type: !99)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !520, line: 396, column: 5)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !520, line: 395, column: 3)
!1735 = !DILocalVariable(name: "escaping", scope: !1733, file: !520, line: 398, type: !99)
!1736 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1733, file: !520, line: 399, type: !99)
!1737 = !DILocalVariable(name: "c", scope: !1733, file: !520, line: 417, type: !150)
!1738 = !DILabel(scope: !1739, name: "c_and_shell_escape", file: !520, line: 502)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !520, line: 478, column: 9)
!1740 = distinct !DILexicalBlock(scope: !1733, file: !520, line: 419, column: 9)
!1741 = !DILabel(scope: !1739, name: "c_escape", file: !520, line: 507)
!1742 = !DILocalVariable(name: "m", scope: !1743, file: !520, line: 598, type: !147)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !520, line: 596, column: 11)
!1744 = !DILocalVariable(name: "printable", scope: !1743, file: !520, line: 600, type: !99)
!1745 = !DILocalVariable(name: "mbs", scope: !1746, file: !520, line: 609, type: !607)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !520, line: 608, column: 15)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !520, line: 602, column: 17)
!1748 = !DILocalVariable(name: "w", scope: !1749, file: !520, line: 618, type: !500)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !520, line: 617, column: 19)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !520, line: 616, column: 17)
!1751 = distinct !DILexicalBlock(scope: !1746, file: !520, line: 616, column: 17)
!1752 = !DILocalVariable(name: "bytes", scope: !1749, file: !520, line: 619, type: !147)
!1753 = !DILocalVariable(name: "j", scope: !1754, file: !520, line: 648, type: !147)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !520, line: 648, column: 29)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !520, line: 647, column: 27)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !520, line: 645, column: 29)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !520, line: 636, column: 23)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !520, line: 628, column: 30)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !520, line: 623, column: 30)
!1760 = distinct !DILexicalBlock(scope: !1749, file: !520, line: 621, column: 25)
!1761 = !DILocalVariable(name: "ilim", scope: !1762, file: !520, line: 674, type: !147)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !520, line: 671, column: 15)
!1763 = distinct !DILexicalBlock(scope: !1743, file: !520, line: 670, column: 17)
!1764 = !DILabel(scope: !1733, name: "store_escape", file: !520, line: 709)
!1765 = !DILabel(scope: !1733, name: "store_c", file: !520, line: 712)
!1766 = !DILabel(scope: !1699, name: "force_outer_quoting_style", file: !520, line: 753)
!1767 = distinct !DIAssignID()
!1768 = distinct !DIAssignID()
!1769 = distinct !DIAssignID()
!1770 = distinct !DIAssignID()
!1771 = distinct !DIAssignID()
!1772 = !DILocation(line: 0, scope: !1746)
!1773 = distinct !DIAssignID()
!1774 = !DILocation(line: 0, scope: !1749)
!1775 = !DILocation(line: 0, scope: !1699)
!1776 = !DILocation(line: 258, column: 25, scope: !1699)
!1777 = !DILocation(line: 258, column: 36, scope: !1699)
!1778 = !DILocation(line: 267, column: 3, scope: !1699)
!1779 = !DILocation(line: 261, column: 10, scope: !1699)
!1780 = !DILocation(line: 262, column: 15, scope: !1699)
!1781 = !DILocation(line: 263, column: 10, scope: !1699)
!1782 = !DILocation(line: 308, column: 2, scope: !1699)
!1783 = !DILocation(line: 311, column: 3, scope: !1699)
!1784 = !DILocation(line: 318, column: 11, scope: !1729)
!1785 = !DILocation(line: 319, column: 9, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !520, line: 319, column: 9)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !520, line: 319, column: 9)
!1788 = distinct !DILexicalBlock(scope: !1729, file: !520, line: 318, column: 11)
!1789 = !DILocation(line: 319, column: 9, scope: !1787)
!1790 = !DILocation(line: 0, scope: !598, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 357, column: 26, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !520, line: 335, column: 11)
!1793 = distinct !DILexicalBlock(scope: !1728, file: !520, line: 334, column: 13)
!1794 = !DILocation(line: 199, column: 29, scope: !598, inlinedAt: !1791)
!1795 = !DILocation(line: 201, column: 19, scope: !1796, inlinedAt: !1791)
!1796 = distinct !DILexicalBlock(scope: !598, file: !520, line: 201, column: 7)
!1797 = !DILocation(line: 201, column: 7, scope: !598, inlinedAt: !1791)
!1798 = !DILocation(line: 229, column: 3, scope: !598, inlinedAt: !1791)
!1799 = !DILocation(line: 230, column: 3, scope: !598, inlinedAt: !1791)
!1800 = !DILocalVariable(name: "ps", arg: 1, scope: !1801, file: !1546, line: 1135, type: !1804)
!1801 = distinct !DISubprogram(name: "mbszero", scope: !1546, file: !1546, line: 1135, type: !1802, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1805)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!1805 = !{!1800}
!1806 = !DILocation(line: 0, scope: !1801, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 230, column: 18, scope: !598, inlinedAt: !1791)
!1808 = !DILocalVariable(name: "__dest", arg: 1, scope: !1809, file: !1555, line: 57, type: !145)
!1809 = distinct !DISubprogram(name: "memset", scope: !1555, file: !1555, line: 57, type: !1556, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1810)
!1810 = !{!1808, !1811, !1812}
!1811 = !DILocalVariable(name: "__ch", arg: 2, scope: !1809, file: !1555, line: 57, type: !72)
!1812 = !DILocalVariable(name: "__len", arg: 3, scope: !1809, file: !1555, line: 57, type: !147)
!1813 = !DILocation(line: 0, scope: !1809, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 1137, column: 3, scope: !1801, inlinedAt: !1807)
!1815 = !DILocation(line: 59, column: 10, scope: !1809, inlinedAt: !1814)
!1816 = !DILocation(line: 231, column: 7, scope: !1817, inlinedAt: !1791)
!1817 = distinct !DILexicalBlock(scope: !598, file: !520, line: 231, column: 7)
!1818 = !DILocation(line: 231, column: 40, scope: !1817, inlinedAt: !1791)
!1819 = !DILocation(line: 231, column: 45, scope: !1817, inlinedAt: !1791)
!1820 = !DILocation(line: 235, column: 1, scope: !598, inlinedAt: !1791)
!1821 = !DILocation(line: 0, scope: !598, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 358, column: 27, scope: !1792)
!1823 = !DILocation(line: 199, column: 29, scope: !598, inlinedAt: !1822)
!1824 = !DILocation(line: 201, column: 19, scope: !1796, inlinedAt: !1822)
!1825 = !DILocation(line: 201, column: 7, scope: !598, inlinedAt: !1822)
!1826 = !DILocation(line: 229, column: 3, scope: !598, inlinedAt: !1822)
!1827 = !DILocation(line: 230, column: 3, scope: !598, inlinedAt: !1822)
!1828 = !DILocation(line: 0, scope: !1801, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 230, column: 18, scope: !598, inlinedAt: !1822)
!1830 = !DILocation(line: 0, scope: !1809, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 1137, column: 3, scope: !1801, inlinedAt: !1829)
!1832 = !DILocation(line: 59, column: 10, scope: !1809, inlinedAt: !1831)
!1833 = !DILocation(line: 231, column: 7, scope: !1817, inlinedAt: !1822)
!1834 = !DILocation(line: 231, column: 40, scope: !1817, inlinedAt: !1822)
!1835 = !DILocation(line: 231, column: 45, scope: !1817, inlinedAt: !1822)
!1836 = !DILocation(line: 235, column: 1, scope: !598, inlinedAt: !1822)
!1837 = !DILocation(line: 360, column: 13, scope: !1728)
!1838 = !DILocation(line: 0, scope: !1726)
!1839 = !DILocation(line: 361, column: 45, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1726, file: !520, line: 361, column: 11)
!1841 = !DILocation(line: 361, column: 11, scope: !1726)
!1842 = !DILocation(line: 362, column: 13, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !520, line: 362, column: 13)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !520, line: 362, column: 13)
!1845 = !DILocation(line: 362, column: 13, scope: !1844)
!1846 = !DILocation(line: 361, column: 52, scope: !1840)
!1847 = distinct !{!1847, !1841, !1848, !964}
!1848 = !DILocation(line: 362, column: 13, scope: !1726)
!1849 = !DILocation(line: 365, column: 28, scope: !1728)
!1850 = !DILocation(line: 260, column: 10, scope: !1699)
!1851 = !DILocation(line: 367, column: 7, scope: !1729)
!1852 = !DILocation(line: 373, column: 7, scope: !1729)
!1853 = !DILocation(line: 381, column: 11, scope: !1729)
!1854 = !DILocation(line: 376, column: 11, scope: !1729)
!1855 = !DILocation(line: 382, column: 9, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !520, line: 382, column: 9)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !520, line: 382, column: 9)
!1858 = distinct !DILexicalBlock(scope: !1729, file: !520, line: 381, column: 11)
!1859 = !DILocation(line: 382, column: 9, scope: !1857)
!1860 = !DILocation(line: 389, column: 7, scope: !1729)
!1861 = !DILocation(line: 392, column: 7, scope: !1729)
!1862 = !DILocation(line: 0, scope: !1731)
!1863 = !DILocation(line: 395, column: 8, scope: !1731)
!1864 = !DILocation(line: 395, scope: !1731)
!1865 = !DILocation(line: 395, column: 34, scope: !1734)
!1866 = !DILocation(line: 395, column: 26, scope: !1734)
!1867 = !DILocation(line: 395, column: 48, scope: !1734)
!1868 = !DILocation(line: 395, column: 55, scope: !1734)
!1869 = !DILocation(line: 395, column: 3, scope: !1731)
!1870 = !DILocation(line: 395, column: 67, scope: !1734)
!1871 = !DILocation(line: 0, scope: !1733)
!1872 = !DILocation(line: 402, column: 11, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1733, file: !520, line: 401, column: 11)
!1874 = !DILocation(line: 404, column: 17, scope: !1873)
!1875 = !DILocation(line: 405, column: 39, scope: !1873)
!1876 = !DILocation(line: 409, column: 32, scope: !1873)
!1877 = !DILocation(line: 405, column: 19, scope: !1873)
!1878 = !DILocation(line: 405, column: 15, scope: !1873)
!1879 = !DILocation(line: 410, column: 11, scope: !1873)
!1880 = !DILocation(line: 410, column: 25, scope: !1873)
!1881 = !DILocalVariable(name: "__s1", arg: 1, scope: !1882, file: !930, line: 974, type: !1062)
!1882 = distinct !DISubprogram(name: "memeq", scope: !930, file: !930, line: 974, type: !1515, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !1883)
!1883 = !{!1881, !1884, !1885}
!1884 = !DILocalVariable(name: "__s2", arg: 2, scope: !1882, file: !930, line: 974, type: !1062)
!1885 = !DILocalVariable(name: "__n", arg: 3, scope: !1882, file: !930, line: 974, type: !147)
!1886 = !DILocation(line: 0, scope: !1882, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 410, column: 14, scope: !1873)
!1888 = !DILocation(line: 976, column: 11, scope: !1882, inlinedAt: !1887)
!1889 = !DILocation(line: 976, column: 10, scope: !1882, inlinedAt: !1887)
!1890 = !DILocation(line: 401, column: 11, scope: !1733)
!1891 = !DILocation(line: 417, column: 25, scope: !1733)
!1892 = !DILocation(line: 418, column: 7, scope: !1733)
!1893 = !DILocation(line: 421, column: 15, scope: !1740)
!1894 = !DILocation(line: 423, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !520, line: 423, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !520, line: 422, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1740, file: !520, line: 421, column: 15)
!1898 = !DILocation(line: 423, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !520, line: 423, column: 15)
!1900 = !DILocation(line: 423, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !520, line: 423, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !520, line: 423, column: 15)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !520, line: 423, column: 15)
!1904 = !DILocation(line: 423, column: 15, scope: !1902)
!1905 = !DILocation(line: 423, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !520, line: 423, column: 15)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !520, line: 423, column: 15)
!1908 = !DILocation(line: 423, column: 15, scope: !1907)
!1909 = !DILocation(line: 423, column: 15, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !520, line: 423, column: 15)
!1911 = distinct !DILexicalBlock(scope: !1903, file: !520, line: 423, column: 15)
!1912 = !DILocation(line: 423, column: 15, scope: !1911)
!1913 = !DILocation(line: 423, column: 15, scope: !1903)
!1914 = !DILocation(line: 423, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !520, line: 423, column: 15)
!1916 = distinct !DILexicalBlock(scope: !1895, file: !520, line: 423, column: 15)
!1917 = !DILocation(line: 423, column: 15, scope: !1916)
!1918 = !DILocation(line: 431, column: 19, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1896, file: !520, line: 430, column: 19)
!1920 = !DILocation(line: 431, column: 24, scope: !1919)
!1921 = !DILocation(line: 431, column: 28, scope: !1919)
!1922 = !DILocation(line: 431, column: 38, scope: !1919)
!1923 = !DILocation(line: 431, column: 48, scope: !1919)
!1924 = !DILocation(line: 431, column: 59, scope: !1919)
!1925 = !DILocation(line: 433, column: 19, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !520, line: 433, column: 19)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !520, line: 433, column: 19)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !520, line: 432, column: 17)
!1929 = !DILocation(line: 433, column: 19, scope: !1927)
!1930 = !DILocation(line: 434, column: 19, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !520, line: 434, column: 19)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !520, line: 434, column: 19)
!1933 = !DILocation(line: 434, column: 19, scope: !1932)
!1934 = !DILocation(line: 435, column: 17, scope: !1928)
!1935 = !DILocation(line: 442, column: 20, scope: !1897)
!1936 = !DILocation(line: 447, column: 11, scope: !1740)
!1937 = !DILocation(line: 450, column: 19, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1740, file: !520, line: 448, column: 13)
!1939 = !DILocation(line: 456, column: 19, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1938, file: !520, line: 455, column: 19)
!1941 = !DILocation(line: 456, column: 24, scope: !1940)
!1942 = !DILocation(line: 456, column: 28, scope: !1940)
!1943 = !DILocation(line: 456, column: 38, scope: !1940)
!1944 = !DILocation(line: 456, column: 41, scope: !1940)
!1945 = !DILocation(line: 456, column: 52, scope: !1940)
!1946 = !DILocation(line: 455, column: 19, scope: !1938)
!1947 = !DILocation(line: 457, column: 25, scope: !1940)
!1948 = !DILocation(line: 457, column: 17, scope: !1940)
!1949 = !DILocation(line: 464, column: 25, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1940, file: !520, line: 458, column: 19)
!1951 = !DILocation(line: 468, column: 21, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !520, line: 468, column: 21)
!1953 = distinct !DILexicalBlock(scope: !1950, file: !520, line: 468, column: 21)
!1954 = !DILocation(line: 468, column: 21, scope: !1953)
!1955 = !DILocation(line: 469, column: 21, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !520, line: 469, column: 21)
!1957 = distinct !DILexicalBlock(scope: !1950, file: !520, line: 469, column: 21)
!1958 = !DILocation(line: 469, column: 21, scope: !1957)
!1959 = !DILocation(line: 470, column: 21, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !520, line: 470, column: 21)
!1961 = distinct !DILexicalBlock(scope: !1950, file: !520, line: 470, column: 21)
!1962 = !DILocation(line: 470, column: 21, scope: !1961)
!1963 = !DILocation(line: 471, column: 21, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !520, line: 471, column: 21)
!1965 = distinct !DILexicalBlock(scope: !1950, file: !520, line: 471, column: 21)
!1966 = !DILocation(line: 471, column: 21, scope: !1965)
!1967 = !DILocation(line: 472, column: 21, scope: !1950)
!1968 = !DILocation(line: 482, column: 33, scope: !1739)
!1969 = !DILocation(line: 483, column: 33, scope: !1739)
!1970 = !DILocation(line: 485, column: 33, scope: !1739)
!1971 = !DILocation(line: 486, column: 33, scope: !1739)
!1972 = !DILocation(line: 487, column: 33, scope: !1739)
!1973 = !DILocation(line: 490, column: 17, scope: !1739)
!1974 = !DILocation(line: 492, column: 21, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !520, line: 491, column: 15)
!1976 = distinct !DILexicalBlock(scope: !1739, file: !520, line: 490, column: 17)
!1977 = !DILocation(line: 499, column: 35, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1739, file: !520, line: 499, column: 17)
!1979 = !DILocation(line: 0, scope: !1739)
!1980 = !DILocation(line: 502, column: 11, scope: !1739)
!1981 = !DILocation(line: 504, column: 17, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1739, file: !520, line: 503, column: 17)
!1983 = !DILocation(line: 507, column: 11, scope: !1739)
!1984 = !DILocation(line: 508, column: 17, scope: !1739)
!1985 = !DILocation(line: 517, column: 15, scope: !1740)
!1986 = !DILocation(line: 517, column: 40, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1740, file: !520, line: 517, column: 15)
!1988 = !DILocation(line: 517, column: 47, scope: !1987)
!1989 = !DILocation(line: 517, column: 18, scope: !1987)
!1990 = !DILocation(line: 521, column: 17, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1740, file: !520, line: 521, column: 15)
!1992 = !DILocation(line: 521, column: 15, scope: !1740)
!1993 = !DILocation(line: 525, column: 11, scope: !1740)
!1994 = !DILocation(line: 537, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1740, file: !520, line: 536, column: 15)
!1996 = !DILocation(line: 536, column: 15, scope: !1740)
!1997 = !DILocation(line: 544, column: 15, scope: !1740)
!1998 = !DILocation(line: 546, column: 19, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !520, line: 545, column: 13)
!2000 = distinct !DILexicalBlock(scope: !1740, file: !520, line: 544, column: 15)
!2001 = !DILocation(line: 549, column: 19, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1999, file: !520, line: 549, column: 19)
!2003 = !DILocation(line: 549, column: 30, scope: !2002)
!2004 = !DILocation(line: 558, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !520, line: 558, column: 15)
!2006 = distinct !DILexicalBlock(scope: !1999, file: !520, line: 558, column: 15)
!2007 = !DILocation(line: 558, column: 15, scope: !2006)
!2008 = !DILocation(line: 559, column: 15, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !520, line: 559, column: 15)
!2010 = distinct !DILexicalBlock(scope: !1999, file: !520, line: 559, column: 15)
!2011 = !DILocation(line: 559, column: 15, scope: !2010)
!2012 = !DILocation(line: 560, column: 15, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !520, line: 560, column: 15)
!2014 = distinct !DILexicalBlock(scope: !1999, file: !520, line: 560, column: 15)
!2015 = !DILocation(line: 560, column: 15, scope: !2014)
!2016 = !DILocation(line: 562, column: 13, scope: !1999)
!2017 = !DILocation(line: 602, column: 17, scope: !1743)
!2018 = !DILocation(line: 0, scope: !1743)
!2019 = !DILocation(line: 605, column: 29, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1747, file: !520, line: 603, column: 15)
!2021 = !DILocation(line: 605, column: 41, scope: !2020)
!2022 = !DILocation(line: 606, column: 15, scope: !2020)
!2023 = !DILocation(line: 609, column: 17, scope: !1746)
!2024 = !DILocation(line: 0, scope: !1801, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 609, column: 32, scope: !1746)
!2026 = !DILocation(line: 0, scope: !1809, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 1137, column: 3, scope: !1801, inlinedAt: !2025)
!2028 = !DILocation(line: 59, column: 10, scope: !1809, inlinedAt: !2027)
!2029 = !DILocation(line: 613, column: 29, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1746, file: !520, line: 613, column: 21)
!2031 = !DILocation(line: 613, column: 21, scope: !1746)
!2032 = !DILocation(line: 614, column: 29, scope: !2030)
!2033 = !DILocation(line: 614, column: 19, scope: !2030)
!2034 = !DILocation(line: 618, column: 21, scope: !1749)
!2035 = !DILocation(line: 620, column: 54, scope: !1749)
!2036 = !DILocation(line: 619, column: 36, scope: !1749)
!2037 = !DILocation(line: 621, column: 25, scope: !1749)
!2038 = !DILocation(line: 631, column: 38, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1758, file: !520, line: 629, column: 23)
!2040 = !DILocation(line: 631, column: 48, scope: !2039)
!2041 = !DILocation(line: 631, column: 25, scope: !2039)
!2042 = !DILocation(line: 626, column: 25, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1759, file: !520, line: 624, column: 23)
!2044 = !DILocation(line: 631, column: 51, scope: !2039)
!2045 = !DILocation(line: 632, column: 28, scope: !2039)
!2046 = !DILocation(line: 631, column: 34, scope: !2039)
!2047 = distinct !{!2047, !2041, !2045, !964}
!2048 = !DILocation(line: 0, scope: !1754)
!2049 = !DILocation(line: 646, column: 29, scope: !1756)
!2050 = !DILocation(line: 648, column: 29, scope: !1754)
!2051 = !DILocation(line: 649, column: 39, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1754, file: !520, line: 648, column: 29)
!2053 = !DILocation(line: 649, column: 31, scope: !2052)
!2054 = !DILocation(line: 648, column: 60, scope: !2052)
!2055 = !DILocation(line: 648, column: 50, scope: !2052)
!2056 = distinct !{!2056, !2050, !2057, !964}
!2057 = !DILocation(line: 654, column: 33, scope: !1754)
!2058 = !DILocation(line: 657, column: 43, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1757, file: !520, line: 657, column: 29)
!2060 = !DILocalVariable(name: "wc", arg: 1, scope: !2061, file: !2062, line: 865, type: !2065)
!2061 = distinct !DISubprogram(name: "c32isprint", scope: !2062, file: !2062, line: 865, type: !2063, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2067)
!2062 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!72, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2066, line: 20, baseType: !65)
!2066 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2067 = !{!2060}
!2068 = !DILocation(line: 0, scope: !2061, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 657, column: 31, scope: !2059)
!2070 = !DILocation(line: 871, column: 10, scope: !2061, inlinedAt: !2069)
!2071 = !DILocation(line: 657, column: 31, scope: !2059)
!2072 = !DILocation(line: 664, column: 23, scope: !1749)
!2073 = !DILocation(line: 665, column: 19, scope: !1750)
!2074 = !DILocation(line: 666, column: 15, scope: !1747)
!2075 = !DILocation(line: 753, column: 2, scope: !1699)
!2076 = !DILocation(line: 756, column: 51, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1699, file: !520, line: 756, column: 7)
!2078 = !DILocation(line: 0, scope: !1747)
!2079 = !DILocation(line: 670, column: 19, scope: !1763)
!2080 = !DILocation(line: 670, column: 23, scope: !1763)
!2081 = !DILocation(line: 674, column: 33, scope: !1762)
!2082 = !DILocation(line: 0, scope: !1762)
!2083 = !DILocation(line: 676, column: 17, scope: !1762)
!2084 = !DILocation(line: 678, column: 43, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !520, line: 678, column: 25)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !520, line: 677, column: 19)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !520, line: 676, column: 17)
!2088 = distinct !DILexicalBlock(scope: !1762, file: !520, line: 676, column: 17)
!2089 = !DILocation(line: 680, column: 25, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !520, line: 680, column: 25)
!2091 = distinct !DILexicalBlock(scope: !2085, file: !520, line: 679, column: 23)
!2092 = !DILocation(line: 680, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !520, line: 680, column: 25)
!2094 = !DILocation(line: 680, column: 25, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !520, line: 680, column: 25)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !520, line: 680, column: 25)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !520, line: 680, column: 25)
!2098 = !DILocation(line: 680, column: 25, scope: !2096)
!2099 = !DILocation(line: 680, column: 25, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !520, line: 680, column: 25)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !520, line: 680, column: 25)
!2102 = !DILocation(line: 680, column: 25, scope: !2101)
!2103 = !DILocation(line: 680, column: 25, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !520, line: 680, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2097, file: !520, line: 680, column: 25)
!2106 = !DILocation(line: 680, column: 25, scope: !2105)
!2107 = !DILocation(line: 680, column: 25, scope: !2097)
!2108 = !DILocation(line: 680, column: 25, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !520, line: 680, column: 25)
!2110 = distinct !DILexicalBlock(scope: !2090, file: !520, line: 680, column: 25)
!2111 = !DILocation(line: 680, column: 25, scope: !2110)
!2112 = !DILocation(line: 681, column: 25, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !520, line: 681, column: 25)
!2114 = distinct !DILexicalBlock(scope: !2091, file: !520, line: 681, column: 25)
!2115 = !DILocation(line: 681, column: 25, scope: !2114)
!2116 = !DILocation(line: 682, column: 25, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !520, line: 682, column: 25)
!2118 = distinct !DILexicalBlock(scope: !2091, file: !520, line: 682, column: 25)
!2119 = !DILocation(line: 682, column: 25, scope: !2118)
!2120 = !DILocation(line: 683, column: 38, scope: !2091)
!2121 = !DILocation(line: 683, column: 33, scope: !2091)
!2122 = !DILocation(line: 684, column: 23, scope: !2091)
!2123 = !DILocation(line: 685, column: 30, scope: !2085)
!2124 = !DILocation(line: 687, column: 25, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !520, line: 687, column: 25)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !520, line: 687, column: 25)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !520, line: 686, column: 23)
!2128 = distinct !DILexicalBlock(scope: !2085, file: !520, line: 685, column: 30)
!2129 = !DILocation(line: 687, column: 25, scope: !2126)
!2130 = !DILocation(line: 689, column: 23, scope: !2127)
!2131 = !DILocation(line: 690, column: 35, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2086, file: !520, line: 690, column: 25)
!2133 = !DILocation(line: 690, column: 30, scope: !2132)
!2134 = !DILocation(line: 690, column: 25, scope: !2086)
!2135 = !DILocation(line: 692, column: 21, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !520, line: 692, column: 21)
!2137 = distinct !DILexicalBlock(scope: !2086, file: !520, line: 692, column: 21)
!2138 = !DILocation(line: 692, column: 21, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !520, line: 692, column: 21)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !520, line: 692, column: 21)
!2141 = distinct !DILexicalBlock(scope: !2136, file: !520, line: 692, column: 21)
!2142 = !DILocation(line: 692, column: 21, scope: !2140)
!2143 = !DILocation(line: 692, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !520, line: 692, column: 21)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !520, line: 692, column: 21)
!2146 = !DILocation(line: 692, column: 21, scope: !2145)
!2147 = !DILocation(line: 692, column: 21, scope: !2141)
!2148 = !DILocation(line: 0, scope: !2086)
!2149 = !DILocation(line: 693, column: 21, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !520, line: 693, column: 21)
!2151 = distinct !DILexicalBlock(scope: !2086, file: !520, line: 693, column: 21)
!2152 = !DILocation(line: 693, column: 21, scope: !2151)
!2153 = !DILocation(line: 694, column: 25, scope: !2086)
!2154 = !DILocation(line: 676, column: 17, scope: !2087)
!2155 = distinct !{!2155, !2156, !2157}
!2156 = !DILocation(line: 676, column: 17, scope: !2088)
!2157 = !DILocation(line: 695, column: 19, scope: !2088)
!2158 = !DILocation(line: 409, column: 30, scope: !1873)
!2159 = !DILocation(line: 702, column: 34, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1733, file: !520, line: 702, column: 11)
!2161 = !DILocation(line: 704, column: 14, scope: !2160)
!2162 = !DILocation(line: 705, column: 14, scope: !2160)
!2163 = !DILocation(line: 705, column: 35, scope: !2160)
!2164 = !DILocation(line: 705, column: 17, scope: !2160)
!2165 = !DILocation(line: 705, column: 47, scope: !2160)
!2166 = !DILocation(line: 705, column: 65, scope: !2160)
!2167 = !DILocation(line: 706, column: 11, scope: !2160)
!2168 = !DILocation(line: 702, column: 11, scope: !1733)
!2169 = !DILocation(line: 395, column: 15, scope: !1731)
!2170 = !DILocation(line: 709, column: 5, scope: !1733)
!2171 = !DILocation(line: 710, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !1733, file: !520, line: 710, column: 7)
!2173 = !DILocation(line: 710, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2172, file: !520, line: 710, column: 7)
!2175 = !DILocation(line: 710, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !520, line: 710, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !520, line: 710, column: 7)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !520, line: 710, column: 7)
!2179 = !DILocation(line: 710, column: 7, scope: !2177)
!2180 = !DILocation(line: 710, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !520, line: 710, column: 7)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !520, line: 710, column: 7)
!2183 = !DILocation(line: 710, column: 7, scope: !2182)
!2184 = !DILocation(line: 710, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !520, line: 710, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2178, file: !520, line: 710, column: 7)
!2187 = !DILocation(line: 710, column: 7, scope: !2186)
!2188 = !DILocation(line: 710, column: 7, scope: !2178)
!2189 = !DILocation(line: 710, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !520, line: 710, column: 7)
!2191 = distinct !DILexicalBlock(scope: !2172, file: !520, line: 710, column: 7)
!2192 = !DILocation(line: 710, column: 7, scope: !2191)
!2193 = !DILocation(line: 712, column: 5, scope: !1733)
!2194 = !DILocation(line: 713, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !520, line: 713, column: 7)
!2196 = distinct !DILexicalBlock(scope: !1733, file: !520, line: 713, column: 7)
!2197 = !DILocation(line: 417, column: 21, scope: !1733)
!2198 = !DILocation(line: 713, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !520, line: 713, column: 7)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !520, line: 713, column: 7)
!2201 = distinct !DILexicalBlock(scope: !2195, file: !520, line: 713, column: 7)
!2202 = !DILocation(line: 713, column: 7, scope: !2200)
!2203 = !DILocation(line: 713, column: 7, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !520, line: 713, column: 7)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !520, line: 713, column: 7)
!2206 = !DILocation(line: 713, column: 7, scope: !2205)
!2207 = !DILocation(line: 713, column: 7, scope: !2201)
!2208 = !DILocation(line: 714, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !520, line: 714, column: 7)
!2210 = distinct !DILexicalBlock(scope: !1733, file: !520, line: 714, column: 7)
!2211 = !DILocation(line: 714, column: 7, scope: !2210)
!2212 = !DILocation(line: 716, column: 11, scope: !1733)
!2213 = !DILocation(line: 718, column: 5, scope: !1734)
!2214 = !DILocation(line: 395, column: 82, scope: !1734)
!2215 = !DILocation(line: 395, column: 3, scope: !1734)
!2216 = distinct !{!2216, !1869, !2217, !964}
!2217 = !DILocation(line: 718, column: 5, scope: !1731)
!2218 = !DILocation(line: 720, column: 11, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1699, file: !520, line: 720, column: 7)
!2220 = !DILocation(line: 720, column: 16, scope: !2219)
!2221 = !DILocation(line: 728, column: 51, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1699, file: !520, line: 728, column: 7)
!2223 = !DILocation(line: 731, column: 11, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2222, file: !520, line: 730, column: 5)
!2225 = !DILocation(line: 732, column: 16, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2224, file: !520, line: 731, column: 11)
!2227 = !DILocation(line: 732, column: 9, scope: !2226)
!2228 = !DILocation(line: 736, column: 18, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !520, line: 736, column: 16)
!2230 = !DILocation(line: 736, column: 29, scope: !2229)
!2231 = !DILocation(line: 745, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1699, file: !520, line: 745, column: 7)
!2233 = !DILocation(line: 745, column: 20, scope: !2232)
!2234 = !DILocation(line: 746, column: 12, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !520, line: 746, column: 5)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !520, line: 746, column: 5)
!2237 = !DILocation(line: 746, column: 5, scope: !2236)
!2238 = !DILocation(line: 747, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !520, line: 747, column: 7)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !520, line: 747, column: 7)
!2241 = !DILocation(line: 747, column: 7, scope: !2240)
!2242 = !DILocation(line: 746, column: 39, scope: !2235)
!2243 = distinct !{!2243, !2237, !2244, !964}
!2244 = !DILocation(line: 747, column: 7, scope: !2236)
!2245 = !DILocation(line: 749, column: 11, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !1699, file: !520, line: 749, column: 7)
!2247 = !DILocation(line: 749, column: 7, scope: !1699)
!2248 = !DILocation(line: 750, column: 5, scope: !2246)
!2249 = !DILocation(line: 750, column: 17, scope: !2246)
!2250 = !DILocation(line: 756, column: 21, scope: !2077)
!2251 = !DILocation(line: 760, column: 42, scope: !1699)
!2252 = !DILocation(line: 758, column: 10, scope: !1699)
!2253 = !DILocation(line: 758, column: 3, scope: !1699)
!2254 = !DILocation(line: 762, column: 1, scope: !1699)
!2255 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1038, file: !1038, line: 98, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!147}
!2258 = !DISubprogram(name: "strlen", scope: !1034, file: !1034, line: 407, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!149, !96}
!2261 = !DISubprogram(name: "iswprint", scope: !2262, file: !2262, line: 120, type: !2063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2262 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2263 = distinct !DISubprogram(name: "quotearg_alloc", scope: !520, file: !520, line: 788, type: !2264, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!89, !96, !147, !1592}
!2266 = !{!2267, !2268, !2269}
!2267 = !DILocalVariable(name: "arg", arg: 1, scope: !2263, file: !520, line: 788, type: !96)
!2268 = !DILocalVariable(name: "argsize", arg: 2, scope: !2263, file: !520, line: 788, type: !147)
!2269 = !DILocalVariable(name: "o", arg: 3, scope: !2263, file: !520, line: 789, type: !1592)
!2270 = !DILocation(line: 0, scope: !2263)
!2271 = !DILocalVariable(name: "arg", arg: 1, scope: !2272, file: !520, line: 801, type: !96)
!2272 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !520, file: !520, line: 801, type: !2273, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!89, !96, !147, !774, !1592}
!2275 = !{!2271, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2276 = !DILocalVariable(name: "argsize", arg: 2, scope: !2272, file: !520, line: 801, type: !147)
!2277 = !DILocalVariable(name: "size", arg: 3, scope: !2272, file: !520, line: 801, type: !774)
!2278 = !DILocalVariable(name: "o", arg: 4, scope: !2272, file: !520, line: 802, type: !1592)
!2279 = !DILocalVariable(name: "p", scope: !2272, file: !520, line: 804, type: !1592)
!2280 = !DILocalVariable(name: "saved_errno", scope: !2272, file: !520, line: 805, type: !72)
!2281 = !DILocalVariable(name: "flags", scope: !2272, file: !520, line: 807, type: !72)
!2282 = !DILocalVariable(name: "bufsize", scope: !2272, file: !520, line: 808, type: !147)
!2283 = !DILocalVariable(name: "buf", scope: !2272, file: !520, line: 812, type: !89)
!2284 = !DILocation(line: 0, scope: !2272, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 791, column: 10, scope: !2263)
!2286 = !DILocation(line: 804, column: 37, scope: !2272, inlinedAt: !2285)
!2287 = !DILocation(line: 805, column: 21, scope: !2272, inlinedAt: !2285)
!2288 = !DILocation(line: 807, column: 18, scope: !2272, inlinedAt: !2285)
!2289 = !DILocation(line: 807, column: 24, scope: !2272, inlinedAt: !2285)
!2290 = !DILocation(line: 808, column: 72, scope: !2272, inlinedAt: !2285)
!2291 = !DILocation(line: 809, column: 56, scope: !2272, inlinedAt: !2285)
!2292 = !DILocation(line: 810, column: 49, scope: !2272, inlinedAt: !2285)
!2293 = !DILocation(line: 811, column: 49, scope: !2272, inlinedAt: !2285)
!2294 = !DILocation(line: 808, column: 20, scope: !2272, inlinedAt: !2285)
!2295 = !DILocation(line: 811, column: 62, scope: !2272, inlinedAt: !2285)
!2296 = !DILocation(line: 812, column: 15, scope: !2272, inlinedAt: !2285)
!2297 = !DILocation(line: 813, column: 60, scope: !2272, inlinedAt: !2285)
!2298 = !DILocation(line: 815, column: 32, scope: !2272, inlinedAt: !2285)
!2299 = !DILocation(line: 815, column: 47, scope: !2272, inlinedAt: !2285)
!2300 = !DILocation(line: 813, column: 3, scope: !2272, inlinedAt: !2285)
!2301 = !DILocation(line: 816, column: 9, scope: !2272, inlinedAt: !2285)
!2302 = !DILocation(line: 791, column: 3, scope: !2263)
!2303 = !DILocation(line: 0, scope: !2272)
!2304 = !DILocation(line: 804, column: 37, scope: !2272)
!2305 = !DILocation(line: 805, column: 21, scope: !2272)
!2306 = !DILocation(line: 807, column: 18, scope: !2272)
!2307 = !DILocation(line: 807, column: 27, scope: !2272)
!2308 = !DILocation(line: 807, column: 24, scope: !2272)
!2309 = !DILocation(line: 808, column: 72, scope: !2272)
!2310 = !DILocation(line: 809, column: 56, scope: !2272)
!2311 = !DILocation(line: 810, column: 49, scope: !2272)
!2312 = !DILocation(line: 811, column: 49, scope: !2272)
!2313 = !DILocation(line: 808, column: 20, scope: !2272)
!2314 = !DILocation(line: 811, column: 62, scope: !2272)
!2315 = !DILocation(line: 812, column: 15, scope: !2272)
!2316 = !DILocation(line: 813, column: 60, scope: !2272)
!2317 = !DILocation(line: 815, column: 32, scope: !2272)
!2318 = !DILocation(line: 815, column: 47, scope: !2272)
!2319 = !DILocation(line: 813, column: 3, scope: !2272)
!2320 = !DILocation(line: 816, column: 9, scope: !2272)
!2321 = !DILocation(line: 817, column: 7, scope: !2272)
!2322 = !DILocation(line: 818, column: 11, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2272, file: !520, line: 817, column: 7)
!2324 = !{!1189, !1189, i64 0}
!2325 = !DILocation(line: 818, column: 5, scope: !2323)
!2326 = !DILocation(line: 819, column: 3, scope: !2272)
!2327 = distinct !DISubprogram(name: "quotearg_free", scope: !520, file: !520, line: 837, type: !475, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2328)
!2328 = !{!2329, !2330}
!2329 = !DILocalVariable(name: "sv", scope: !2327, file: !520, line: 839, type: !621)
!2330 = !DILocalVariable(name: "i", scope: !2331, file: !520, line: 840, type: !72)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !520, line: 840, column: 3)
!2332 = !DILocation(line: 839, column: 24, scope: !2327)
!2333 = !DILocation(line: 0, scope: !2327)
!2334 = !DILocation(line: 0, scope: !2331)
!2335 = !DILocation(line: 840, column: 21, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2331, file: !520, line: 840, column: 3)
!2337 = !DILocation(line: 840, column: 3, scope: !2331)
!2338 = !DILocation(line: 842, column: 13, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2327, file: !520, line: 842, column: 7)
!2340 = !{!2341, !847, i64 8}
!2341 = !{!"slotvec", !1189, i64 0, !847, i64 8}
!2342 = !DILocation(line: 842, column: 17, scope: !2339)
!2343 = !DILocation(line: 842, column: 7, scope: !2327)
!2344 = !DILocation(line: 841, column: 17, scope: !2336)
!2345 = !DILocation(line: 841, column: 5, scope: !2336)
!2346 = !DILocation(line: 840, column: 32, scope: !2336)
!2347 = distinct !{!2347, !2337, !2348, !964}
!2348 = !DILocation(line: 841, column: 20, scope: !2331)
!2349 = !DILocation(line: 844, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2339, file: !520, line: 843, column: 5)
!2351 = !DILocation(line: 845, column: 21, scope: !2350)
!2352 = !{!2341, !1189, i64 0}
!2353 = !DILocation(line: 846, column: 20, scope: !2350)
!2354 = !DILocation(line: 847, column: 5, scope: !2350)
!2355 = !DILocation(line: 848, column: 10, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2327, file: !520, line: 848, column: 7)
!2357 = !DILocation(line: 848, column: 7, scope: !2327)
!2358 = !DILocation(line: 850, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2356, file: !520, line: 849, column: 5)
!2360 = !DILocation(line: 851, column: 15, scope: !2359)
!2361 = !DILocation(line: 852, column: 5, scope: !2359)
!2362 = !DILocation(line: 853, column: 10, scope: !2327)
!2363 = !DILocation(line: 854, column: 1, scope: !2327)
!2364 = !DISubprogram(name: "free", scope: !1546, file: !1546, line: 786, type: !2365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !145}
!2367 = distinct !DISubprogram(name: "quotearg_n", scope: !520, file: !520, line: 919, type: !1031, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2368)
!2368 = !{!2369, !2370}
!2369 = !DILocalVariable(name: "n", arg: 1, scope: !2367, file: !520, line: 919, type: !72)
!2370 = !DILocalVariable(name: "arg", arg: 2, scope: !2367, file: !520, line: 919, type: !96)
!2371 = !DILocation(line: 0, scope: !2367)
!2372 = !DILocation(line: 921, column: 10, scope: !2367)
!2373 = !DILocation(line: 921, column: 3, scope: !2367)
!2374 = distinct !DISubprogram(name: "quotearg_n_options", scope: !520, file: !520, line: 866, type: !2375, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!89, !72, !96, !147, !1592}
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2388, !2389, !2391, !2392, !2393}
!2378 = !DILocalVariable(name: "n", arg: 1, scope: !2374, file: !520, line: 866, type: !72)
!2379 = !DILocalVariable(name: "arg", arg: 2, scope: !2374, file: !520, line: 866, type: !96)
!2380 = !DILocalVariable(name: "argsize", arg: 3, scope: !2374, file: !520, line: 866, type: !147)
!2381 = !DILocalVariable(name: "options", arg: 4, scope: !2374, file: !520, line: 867, type: !1592)
!2382 = !DILocalVariable(name: "saved_errno", scope: !2374, file: !520, line: 869, type: !72)
!2383 = !DILocalVariable(name: "sv", scope: !2374, file: !520, line: 871, type: !621)
!2384 = !DILocalVariable(name: "nslots_max", scope: !2374, file: !520, line: 873, type: !72)
!2385 = !DILocalVariable(name: "preallocated", scope: !2386, file: !520, line: 879, type: !99)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !520, line: 878, column: 5)
!2387 = distinct !DILexicalBlock(scope: !2374, file: !520, line: 877, column: 7)
!2388 = !DILocalVariable(name: "new_nslots", scope: !2386, file: !520, line: 880, type: !787)
!2389 = !DILocalVariable(name: "size", scope: !2390, file: !520, line: 891, type: !147)
!2390 = distinct !DILexicalBlock(scope: !2374, file: !520, line: 890, column: 3)
!2391 = !DILocalVariable(name: "val", scope: !2390, file: !520, line: 892, type: !89)
!2392 = !DILocalVariable(name: "flags", scope: !2390, file: !520, line: 894, type: !72)
!2393 = !DILocalVariable(name: "qsize", scope: !2390, file: !520, line: 895, type: !147)
!2394 = distinct !DIAssignID()
!2395 = !DILocation(line: 0, scope: !2386)
!2396 = !DILocation(line: 0, scope: !2374)
!2397 = !DILocation(line: 869, column: 21, scope: !2374)
!2398 = !DILocation(line: 871, column: 24, scope: !2374)
!2399 = !DILocation(line: 874, column: 17, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2374, file: !520, line: 874, column: 7)
!2401 = !DILocation(line: 875, column: 5, scope: !2400)
!2402 = !DILocation(line: 877, column: 7, scope: !2387)
!2403 = !DILocation(line: 877, column: 14, scope: !2387)
!2404 = !DILocation(line: 877, column: 7, scope: !2374)
!2405 = !DILocation(line: 879, column: 31, scope: !2386)
!2406 = !DILocation(line: 880, column: 7, scope: !2386)
!2407 = !DILocation(line: 880, column: 26, scope: !2386)
!2408 = !DILocation(line: 880, column: 13, scope: !2386)
!2409 = distinct !DIAssignID()
!2410 = !DILocation(line: 882, column: 31, scope: !2386)
!2411 = !DILocation(line: 883, column: 33, scope: !2386)
!2412 = !DILocation(line: 883, column: 42, scope: !2386)
!2413 = !DILocation(line: 883, column: 31, scope: !2386)
!2414 = !DILocation(line: 882, column: 22, scope: !2386)
!2415 = !DILocation(line: 882, column: 15, scope: !2386)
!2416 = !DILocation(line: 884, column: 11, scope: !2386)
!2417 = !DILocation(line: 885, column: 15, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2386, file: !520, line: 884, column: 11)
!2419 = !{i64 0, i64 8, !2324, i64 8, i64 8, !846}
!2420 = !DILocation(line: 885, column: 9, scope: !2418)
!2421 = !DILocation(line: 886, column: 20, scope: !2386)
!2422 = !DILocation(line: 886, column: 18, scope: !2386)
!2423 = !DILocation(line: 886, column: 32, scope: !2386)
!2424 = !DILocation(line: 886, column: 43, scope: !2386)
!2425 = !DILocation(line: 886, column: 53, scope: !2386)
!2426 = !DILocation(line: 0, scope: !1809, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 886, column: 7, scope: !2386)
!2428 = !DILocation(line: 59, column: 10, scope: !1809, inlinedAt: !2427)
!2429 = !DILocation(line: 887, column: 16, scope: !2386)
!2430 = !DILocation(line: 887, column: 14, scope: !2386)
!2431 = !DILocation(line: 888, column: 5, scope: !2387)
!2432 = !DILocation(line: 888, column: 5, scope: !2386)
!2433 = !DILocation(line: 891, column: 19, scope: !2390)
!2434 = !DILocation(line: 891, column: 25, scope: !2390)
!2435 = !DILocation(line: 0, scope: !2390)
!2436 = !DILocation(line: 892, column: 23, scope: !2390)
!2437 = !DILocation(line: 894, column: 26, scope: !2390)
!2438 = !DILocation(line: 894, column: 32, scope: !2390)
!2439 = !DILocation(line: 896, column: 55, scope: !2390)
!2440 = !DILocation(line: 897, column: 55, scope: !2390)
!2441 = !DILocation(line: 898, column: 55, scope: !2390)
!2442 = !DILocation(line: 899, column: 55, scope: !2390)
!2443 = !DILocation(line: 895, column: 20, scope: !2390)
!2444 = !DILocation(line: 901, column: 14, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2390, file: !520, line: 901, column: 9)
!2446 = !DILocation(line: 901, column: 9, scope: !2390)
!2447 = !DILocation(line: 903, column: 35, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !520, line: 902, column: 7)
!2449 = !DILocation(line: 903, column: 20, scope: !2448)
!2450 = !DILocation(line: 904, column: 17, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !520, line: 904, column: 13)
!2452 = !DILocation(line: 904, column: 13, scope: !2448)
!2453 = !DILocation(line: 905, column: 11, scope: !2451)
!2454 = !DILocation(line: 906, column: 27, scope: !2448)
!2455 = !DILocation(line: 906, column: 19, scope: !2448)
!2456 = !DILocation(line: 907, column: 69, scope: !2448)
!2457 = !DILocation(line: 909, column: 44, scope: !2448)
!2458 = !DILocation(line: 910, column: 44, scope: !2448)
!2459 = !DILocation(line: 907, column: 9, scope: !2448)
!2460 = !DILocation(line: 911, column: 7, scope: !2448)
!2461 = !DILocation(line: 913, column: 11, scope: !2390)
!2462 = !DILocation(line: 914, column: 5, scope: !2390)
!2463 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !520, file: !520, line: 925, type: !2464, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!89, !72, !96, !147}
!2466 = !{!2467, !2468, !2469}
!2467 = !DILocalVariable(name: "n", arg: 1, scope: !2463, file: !520, line: 925, type: !72)
!2468 = !DILocalVariable(name: "arg", arg: 2, scope: !2463, file: !520, line: 925, type: !96)
!2469 = !DILocalVariable(name: "argsize", arg: 3, scope: !2463, file: !520, line: 925, type: !147)
!2470 = !DILocation(line: 0, scope: !2463)
!2471 = !DILocation(line: 927, column: 10, scope: !2463)
!2472 = !DILocation(line: 927, column: 3, scope: !2463)
!2473 = distinct !DISubprogram(name: "quotearg", scope: !520, file: !520, line: 931, type: !1040, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2474)
!2474 = !{!2475}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2473, file: !520, line: 931, type: !96)
!2476 = !DILocation(line: 0, scope: !2473)
!2477 = !DILocation(line: 0, scope: !2367, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 933, column: 10, scope: !2473)
!2479 = !DILocation(line: 921, column: 10, scope: !2367, inlinedAt: !2478)
!2480 = !DILocation(line: 933, column: 3, scope: !2473)
!2481 = distinct !DISubprogram(name: "quotearg_mem", scope: !520, file: !520, line: 937, type: !2482, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2484)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!89, !96, !147}
!2484 = !{!2485, !2486}
!2485 = !DILocalVariable(name: "arg", arg: 1, scope: !2481, file: !520, line: 937, type: !96)
!2486 = !DILocalVariable(name: "argsize", arg: 2, scope: !2481, file: !520, line: 937, type: !147)
!2487 = !DILocation(line: 0, scope: !2481)
!2488 = !DILocation(line: 0, scope: !2463, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 939, column: 10, scope: !2481)
!2490 = !DILocation(line: 927, column: 10, scope: !2463, inlinedAt: !2489)
!2491 = !DILocation(line: 939, column: 3, scope: !2481)
!2492 = distinct !DISubprogram(name: "quotearg_n_style", scope: !520, file: !520, line: 943, type: !2493, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!89, !72, !546, !96}
!2495 = !{!2496, !2497, !2498, !2499}
!2496 = !DILocalVariable(name: "n", arg: 1, scope: !2492, file: !520, line: 943, type: !72)
!2497 = !DILocalVariable(name: "s", arg: 2, scope: !2492, file: !520, line: 943, type: !546)
!2498 = !DILocalVariable(name: "arg", arg: 3, scope: !2492, file: !520, line: 943, type: !96)
!2499 = !DILocalVariable(name: "o", scope: !2492, file: !520, line: 945, type: !1593)
!2500 = distinct !DIAssignID()
!2501 = !DILocation(line: 0, scope: !2492)
!2502 = !DILocation(line: 945, column: 3, scope: !2492)
!2503 = !{!2504}
!2504 = distinct !{!2504, !2505, !"quoting_options_from_style: argument 0"}
!2505 = distinct !{!2505, !"quoting_options_from_style"}
!2506 = !DILocation(line: 945, column: 36, scope: !2492)
!2507 = !DILocalVariable(name: "style", arg: 1, scope: !2508, file: !520, line: 183, type: !546)
!2508 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !520, file: !520, line: 183, type: !2509, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!573, !546}
!2511 = !{!2507, !2512}
!2512 = !DILocalVariable(name: "o", scope: !2508, file: !520, line: 185, type: !573)
!2513 = !DILocation(line: 0, scope: !2508, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 945, column: 36, scope: !2492)
!2515 = !DILocation(line: 185, column: 26, scope: !2508, inlinedAt: !2514)
!2516 = distinct !DIAssignID()
!2517 = !DILocation(line: 186, column: 13, scope: !2518, inlinedAt: !2514)
!2518 = distinct !DILexicalBlock(scope: !2508, file: !520, line: 186, column: 7)
!2519 = !DILocation(line: 186, column: 7, scope: !2508, inlinedAt: !2514)
!2520 = !DILocation(line: 187, column: 5, scope: !2518, inlinedAt: !2514)
!2521 = !DILocation(line: 188, column: 11, scope: !2508, inlinedAt: !2514)
!2522 = distinct !DIAssignID()
!2523 = !DILocation(line: 946, column: 10, scope: !2492)
!2524 = !DILocation(line: 947, column: 1, scope: !2492)
!2525 = !DILocation(line: 946, column: 3, scope: !2492)
!2526 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !520, file: !520, line: 950, type: !2527, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!89, !72, !546, !96, !147}
!2529 = !{!2530, !2531, !2532, !2533, !2534}
!2530 = !DILocalVariable(name: "n", arg: 1, scope: !2526, file: !520, line: 950, type: !72)
!2531 = !DILocalVariable(name: "s", arg: 2, scope: !2526, file: !520, line: 950, type: !546)
!2532 = !DILocalVariable(name: "arg", arg: 3, scope: !2526, file: !520, line: 951, type: !96)
!2533 = !DILocalVariable(name: "argsize", arg: 4, scope: !2526, file: !520, line: 951, type: !147)
!2534 = !DILocalVariable(name: "o", scope: !2526, file: !520, line: 953, type: !1593)
!2535 = distinct !DIAssignID()
!2536 = !DILocation(line: 0, scope: !2526)
!2537 = !DILocation(line: 953, column: 3, scope: !2526)
!2538 = !{!2539}
!2539 = distinct !{!2539, !2540, !"quoting_options_from_style: argument 0"}
!2540 = distinct !{!2540, !"quoting_options_from_style"}
!2541 = !DILocation(line: 953, column: 36, scope: !2526)
!2542 = !DILocation(line: 0, scope: !2508, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 953, column: 36, scope: !2526)
!2544 = !DILocation(line: 185, column: 26, scope: !2508, inlinedAt: !2543)
!2545 = distinct !DIAssignID()
!2546 = !DILocation(line: 186, column: 13, scope: !2518, inlinedAt: !2543)
!2547 = !DILocation(line: 186, column: 7, scope: !2508, inlinedAt: !2543)
!2548 = !DILocation(line: 187, column: 5, scope: !2518, inlinedAt: !2543)
!2549 = !DILocation(line: 188, column: 11, scope: !2508, inlinedAt: !2543)
!2550 = distinct !DIAssignID()
!2551 = !DILocation(line: 954, column: 10, scope: !2526)
!2552 = !DILocation(line: 955, column: 1, scope: !2526)
!2553 = !DILocation(line: 954, column: 3, scope: !2526)
!2554 = distinct !DISubprogram(name: "quotearg_style", scope: !520, file: !520, line: 958, type: !2555, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!89, !546, !96}
!2557 = !{!2558, !2559}
!2558 = !DILocalVariable(name: "s", arg: 1, scope: !2554, file: !520, line: 958, type: !546)
!2559 = !DILocalVariable(name: "arg", arg: 2, scope: !2554, file: !520, line: 958, type: !96)
!2560 = distinct !DIAssignID()
!2561 = !DILocation(line: 0, scope: !2554)
!2562 = !DILocation(line: 0, scope: !2492, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 960, column: 10, scope: !2554)
!2564 = !DILocation(line: 945, column: 3, scope: !2492, inlinedAt: !2563)
!2565 = !{!2566}
!2566 = distinct !{!2566, !2567, !"quoting_options_from_style: argument 0"}
!2567 = distinct !{!2567, !"quoting_options_from_style"}
!2568 = !DILocation(line: 945, column: 36, scope: !2492, inlinedAt: !2563)
!2569 = !DILocation(line: 0, scope: !2508, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 945, column: 36, scope: !2492, inlinedAt: !2563)
!2571 = !DILocation(line: 185, column: 26, scope: !2508, inlinedAt: !2570)
!2572 = distinct !DIAssignID()
!2573 = !DILocation(line: 186, column: 13, scope: !2518, inlinedAt: !2570)
!2574 = !DILocation(line: 186, column: 7, scope: !2508, inlinedAt: !2570)
!2575 = !DILocation(line: 187, column: 5, scope: !2518, inlinedAt: !2570)
!2576 = !DILocation(line: 188, column: 11, scope: !2508, inlinedAt: !2570)
!2577 = distinct !DIAssignID()
!2578 = !DILocation(line: 946, column: 10, scope: !2492, inlinedAt: !2563)
!2579 = !DILocation(line: 947, column: 1, scope: !2492, inlinedAt: !2563)
!2580 = !DILocation(line: 960, column: 3, scope: !2554)
!2581 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !520, file: !520, line: 964, type: !2582, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!89, !546, !96, !147}
!2584 = !{!2585, !2586, !2587}
!2585 = !DILocalVariable(name: "s", arg: 1, scope: !2581, file: !520, line: 964, type: !546)
!2586 = !DILocalVariable(name: "arg", arg: 2, scope: !2581, file: !520, line: 964, type: !96)
!2587 = !DILocalVariable(name: "argsize", arg: 3, scope: !2581, file: !520, line: 964, type: !147)
!2588 = distinct !DIAssignID()
!2589 = !DILocation(line: 0, scope: !2581)
!2590 = !DILocation(line: 0, scope: !2526, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 966, column: 10, scope: !2581)
!2592 = !DILocation(line: 953, column: 3, scope: !2526, inlinedAt: !2591)
!2593 = !{!2594}
!2594 = distinct !{!2594, !2595, !"quoting_options_from_style: argument 0"}
!2595 = distinct !{!2595, !"quoting_options_from_style"}
!2596 = !DILocation(line: 953, column: 36, scope: !2526, inlinedAt: !2591)
!2597 = !DILocation(line: 0, scope: !2508, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 953, column: 36, scope: !2526, inlinedAt: !2591)
!2599 = !DILocation(line: 185, column: 26, scope: !2508, inlinedAt: !2598)
!2600 = distinct !DIAssignID()
!2601 = !DILocation(line: 186, column: 13, scope: !2518, inlinedAt: !2598)
!2602 = !DILocation(line: 186, column: 7, scope: !2508, inlinedAt: !2598)
!2603 = !DILocation(line: 187, column: 5, scope: !2518, inlinedAt: !2598)
!2604 = !DILocation(line: 188, column: 11, scope: !2508, inlinedAt: !2598)
!2605 = distinct !DIAssignID()
!2606 = !DILocation(line: 954, column: 10, scope: !2526, inlinedAt: !2591)
!2607 = !DILocation(line: 955, column: 1, scope: !2526, inlinedAt: !2591)
!2608 = !DILocation(line: 966, column: 3, scope: !2581)
!2609 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !520, file: !520, line: 970, type: !2610, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!89, !96, !147, !4}
!2612 = !{!2613, !2614, !2615, !2616}
!2613 = !DILocalVariable(name: "arg", arg: 1, scope: !2609, file: !520, line: 970, type: !96)
!2614 = !DILocalVariable(name: "argsize", arg: 2, scope: !2609, file: !520, line: 970, type: !147)
!2615 = !DILocalVariable(name: "ch", arg: 3, scope: !2609, file: !520, line: 970, type: !4)
!2616 = !DILocalVariable(name: "options", scope: !2609, file: !520, line: 972, type: !573)
!2617 = distinct !DIAssignID()
!2618 = !DILocation(line: 0, scope: !2609)
!2619 = !DILocation(line: 972, column: 3, scope: !2609)
!2620 = !DILocation(line: 973, column: 13, scope: !2609)
!2621 = !{i64 0, i64 4, !917, i64 4, i64 4, !917, i64 8, i64 32, !926, i64 40, i64 8, !846, i64 48, i64 8, !846}
!2622 = distinct !DIAssignID()
!2623 = !DILocation(line: 0, scope: !1612, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 974, column: 3, scope: !2609)
!2625 = !DILocation(line: 147, column: 41, scope: !1612, inlinedAt: !2624)
!2626 = !DILocation(line: 147, column: 62, scope: !1612, inlinedAt: !2624)
!2627 = !DILocation(line: 147, column: 57, scope: !1612, inlinedAt: !2624)
!2628 = !DILocation(line: 148, column: 15, scope: !1612, inlinedAt: !2624)
!2629 = !DILocation(line: 149, column: 21, scope: !1612, inlinedAt: !2624)
!2630 = !DILocation(line: 149, column: 24, scope: !1612, inlinedAt: !2624)
!2631 = !DILocation(line: 150, column: 19, scope: !1612, inlinedAt: !2624)
!2632 = !DILocation(line: 150, column: 24, scope: !1612, inlinedAt: !2624)
!2633 = !DILocation(line: 150, column: 6, scope: !1612, inlinedAt: !2624)
!2634 = !DILocation(line: 975, column: 10, scope: !2609)
!2635 = !DILocation(line: 976, column: 1, scope: !2609)
!2636 = !DILocation(line: 975, column: 3, scope: !2609)
!2637 = distinct !DISubprogram(name: "quotearg_char", scope: !520, file: !520, line: 979, type: !2638, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!89, !96, !4}
!2640 = !{!2641, !2642}
!2641 = !DILocalVariable(name: "arg", arg: 1, scope: !2637, file: !520, line: 979, type: !96)
!2642 = !DILocalVariable(name: "ch", arg: 2, scope: !2637, file: !520, line: 979, type: !4)
!2643 = distinct !DIAssignID()
!2644 = !DILocation(line: 0, scope: !2637)
!2645 = !DILocation(line: 0, scope: !2609, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 981, column: 10, scope: !2637)
!2647 = !DILocation(line: 972, column: 3, scope: !2609, inlinedAt: !2646)
!2648 = !DILocation(line: 973, column: 13, scope: !2609, inlinedAt: !2646)
!2649 = distinct !DIAssignID()
!2650 = !DILocation(line: 0, scope: !1612, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 974, column: 3, scope: !2609, inlinedAt: !2646)
!2652 = !DILocation(line: 147, column: 41, scope: !1612, inlinedAt: !2651)
!2653 = !DILocation(line: 147, column: 62, scope: !1612, inlinedAt: !2651)
!2654 = !DILocation(line: 147, column: 57, scope: !1612, inlinedAt: !2651)
!2655 = !DILocation(line: 148, column: 15, scope: !1612, inlinedAt: !2651)
!2656 = !DILocation(line: 149, column: 21, scope: !1612, inlinedAt: !2651)
!2657 = !DILocation(line: 149, column: 24, scope: !1612, inlinedAt: !2651)
!2658 = !DILocation(line: 150, column: 19, scope: !1612, inlinedAt: !2651)
!2659 = !DILocation(line: 150, column: 24, scope: !1612, inlinedAt: !2651)
!2660 = !DILocation(line: 150, column: 6, scope: !1612, inlinedAt: !2651)
!2661 = !DILocation(line: 975, column: 10, scope: !2609, inlinedAt: !2646)
!2662 = !DILocation(line: 976, column: 1, scope: !2609, inlinedAt: !2646)
!2663 = !DILocation(line: 981, column: 3, scope: !2637)
!2664 = distinct !DISubprogram(name: "quotearg_colon", scope: !520, file: !520, line: 985, type: !1040, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2665)
!2665 = !{!2666}
!2666 = !DILocalVariable(name: "arg", arg: 1, scope: !2664, file: !520, line: 985, type: !96)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 0, scope: !2664)
!2669 = !DILocation(line: 0, scope: !2637, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 987, column: 10, scope: !2664)
!2671 = !DILocation(line: 0, scope: !2609, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 981, column: 10, scope: !2637, inlinedAt: !2670)
!2673 = !DILocation(line: 972, column: 3, scope: !2609, inlinedAt: !2672)
!2674 = !DILocation(line: 973, column: 13, scope: !2609, inlinedAt: !2672)
!2675 = distinct !DIAssignID()
!2676 = !DILocation(line: 0, scope: !1612, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 974, column: 3, scope: !2609, inlinedAt: !2672)
!2678 = !DILocation(line: 147, column: 57, scope: !1612, inlinedAt: !2677)
!2679 = !DILocation(line: 149, column: 21, scope: !1612, inlinedAt: !2677)
!2680 = !DILocation(line: 150, column: 6, scope: !1612, inlinedAt: !2677)
!2681 = !DILocation(line: 975, column: 10, scope: !2609, inlinedAt: !2672)
!2682 = !DILocation(line: 976, column: 1, scope: !2609, inlinedAt: !2672)
!2683 = !DILocation(line: 987, column: 3, scope: !2664)
!2684 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !520, file: !520, line: 991, type: !2482, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2685)
!2685 = !{!2686, !2687}
!2686 = !DILocalVariable(name: "arg", arg: 1, scope: !2684, file: !520, line: 991, type: !96)
!2687 = !DILocalVariable(name: "argsize", arg: 2, scope: !2684, file: !520, line: 991, type: !147)
!2688 = distinct !DIAssignID()
!2689 = !DILocation(line: 0, scope: !2684)
!2690 = !DILocation(line: 0, scope: !2609, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 993, column: 10, scope: !2684)
!2692 = !DILocation(line: 972, column: 3, scope: !2609, inlinedAt: !2691)
!2693 = !DILocation(line: 973, column: 13, scope: !2609, inlinedAt: !2691)
!2694 = distinct !DIAssignID()
!2695 = !DILocation(line: 0, scope: !1612, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 974, column: 3, scope: !2609, inlinedAt: !2691)
!2697 = !DILocation(line: 147, column: 57, scope: !1612, inlinedAt: !2696)
!2698 = !DILocation(line: 149, column: 21, scope: !1612, inlinedAt: !2696)
!2699 = !DILocation(line: 150, column: 6, scope: !1612, inlinedAt: !2696)
!2700 = !DILocation(line: 975, column: 10, scope: !2609, inlinedAt: !2691)
!2701 = !DILocation(line: 976, column: 1, scope: !2609, inlinedAt: !2691)
!2702 = !DILocation(line: 993, column: 3, scope: !2684)
!2703 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !520, file: !520, line: 997, type: !2493, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2704)
!2704 = !{!2705, !2706, !2707, !2708}
!2705 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !520, line: 997, type: !72)
!2706 = !DILocalVariable(name: "s", arg: 2, scope: !2703, file: !520, line: 997, type: !546)
!2707 = !DILocalVariable(name: "arg", arg: 3, scope: !2703, file: !520, line: 997, type: !96)
!2708 = !DILocalVariable(name: "options", scope: !2703, file: !520, line: 999, type: !573)
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 0, scope: !2703)
!2711 = !DILocation(line: 185, column: 26, scope: !2508, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1000, column: 13, scope: !2703)
!2713 = !DILocation(line: 999, column: 3, scope: !2703)
!2714 = !DILocation(line: 0, scope: !2508, inlinedAt: !2712)
!2715 = !DILocation(line: 186, column: 13, scope: !2518, inlinedAt: !2712)
!2716 = !DILocation(line: 186, column: 7, scope: !2508, inlinedAt: !2712)
!2717 = !DILocation(line: 187, column: 5, scope: !2518, inlinedAt: !2712)
!2718 = !{!2719}
!2719 = distinct !{!2719, !2720, !"quoting_options_from_style: argument 0"}
!2720 = distinct !{!2720, !"quoting_options_from_style"}
!2721 = !DILocation(line: 1000, column: 13, scope: !2703)
!2722 = distinct !DIAssignID()
!2723 = distinct !DIAssignID()
!2724 = !DILocation(line: 0, scope: !1612, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1001, column: 3, scope: !2703)
!2726 = !DILocation(line: 147, column: 57, scope: !1612, inlinedAt: !2725)
!2727 = !DILocation(line: 149, column: 21, scope: !1612, inlinedAt: !2725)
!2728 = !DILocation(line: 150, column: 6, scope: !1612, inlinedAt: !2725)
!2729 = distinct !DIAssignID()
!2730 = !DILocation(line: 1002, column: 10, scope: !2703)
!2731 = !DILocation(line: 1003, column: 1, scope: !2703)
!2732 = !DILocation(line: 1002, column: 3, scope: !2703)
!2733 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !520, file: !520, line: 1006, type: !2734, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!89, !72, !96, !96, !96}
!2736 = !{!2737, !2738, !2739, !2740}
!2737 = !DILocalVariable(name: "n", arg: 1, scope: !2733, file: !520, line: 1006, type: !72)
!2738 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2733, file: !520, line: 1006, type: !96)
!2739 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2733, file: !520, line: 1007, type: !96)
!2740 = !DILocalVariable(name: "arg", arg: 4, scope: !2733, file: !520, line: 1007, type: !96)
!2741 = distinct !DIAssignID()
!2742 = !DILocation(line: 0, scope: !2733)
!2743 = !DILocalVariable(name: "o", scope: !2744, file: !520, line: 1018, type: !573)
!2744 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !520, file: !520, line: 1014, type: !2745, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!89, !72, !96, !96, !96, !147}
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2743}
!2748 = !DILocalVariable(name: "n", arg: 1, scope: !2744, file: !520, line: 1014, type: !72)
!2749 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2744, file: !520, line: 1014, type: !96)
!2750 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2744, file: !520, line: 1015, type: !96)
!2751 = !DILocalVariable(name: "arg", arg: 4, scope: !2744, file: !520, line: 1016, type: !96)
!2752 = !DILocalVariable(name: "argsize", arg: 5, scope: !2744, file: !520, line: 1016, type: !147)
!2753 = !DILocation(line: 0, scope: !2744, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 1009, column: 10, scope: !2733)
!2755 = !DILocation(line: 1018, column: 3, scope: !2744, inlinedAt: !2754)
!2756 = !DILocation(line: 1018, column: 30, scope: !2744, inlinedAt: !2754)
!2757 = distinct !DIAssignID()
!2758 = distinct !DIAssignID()
!2759 = !DILocation(line: 0, scope: !1652, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1019, column: 3, scope: !2744, inlinedAt: !2754)
!2761 = !DILocation(line: 174, column: 12, scope: !1652, inlinedAt: !2760)
!2762 = distinct !DIAssignID()
!2763 = !DILocation(line: 175, column: 8, scope: !1665, inlinedAt: !2760)
!2764 = !DILocation(line: 175, column: 19, scope: !1665, inlinedAt: !2760)
!2765 = !DILocation(line: 176, column: 5, scope: !1665, inlinedAt: !2760)
!2766 = !DILocation(line: 177, column: 6, scope: !1652, inlinedAt: !2760)
!2767 = !DILocation(line: 177, column: 17, scope: !1652, inlinedAt: !2760)
!2768 = distinct !DIAssignID()
!2769 = !DILocation(line: 178, column: 6, scope: !1652, inlinedAt: !2760)
!2770 = !DILocation(line: 178, column: 18, scope: !1652, inlinedAt: !2760)
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 1020, column: 10, scope: !2744, inlinedAt: !2754)
!2773 = !DILocation(line: 1021, column: 1, scope: !2744, inlinedAt: !2754)
!2774 = !DILocation(line: 1009, column: 3, scope: !2733)
!2775 = distinct !DIAssignID()
!2776 = !DILocation(line: 0, scope: !2744)
!2777 = !DILocation(line: 1018, column: 3, scope: !2744)
!2778 = !DILocation(line: 1018, column: 30, scope: !2744)
!2779 = distinct !DIAssignID()
!2780 = distinct !DIAssignID()
!2781 = !DILocation(line: 0, scope: !1652, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1019, column: 3, scope: !2744)
!2783 = !DILocation(line: 174, column: 12, scope: !1652, inlinedAt: !2782)
!2784 = distinct !DIAssignID()
!2785 = !DILocation(line: 175, column: 8, scope: !1665, inlinedAt: !2782)
!2786 = !DILocation(line: 175, column: 19, scope: !1665, inlinedAt: !2782)
!2787 = !DILocation(line: 176, column: 5, scope: !1665, inlinedAt: !2782)
!2788 = !DILocation(line: 177, column: 6, scope: !1652, inlinedAt: !2782)
!2789 = !DILocation(line: 177, column: 17, scope: !1652, inlinedAt: !2782)
!2790 = distinct !DIAssignID()
!2791 = !DILocation(line: 178, column: 6, scope: !1652, inlinedAt: !2782)
!2792 = !DILocation(line: 178, column: 18, scope: !1652, inlinedAt: !2782)
!2793 = distinct !DIAssignID()
!2794 = !DILocation(line: 1020, column: 10, scope: !2744)
!2795 = !DILocation(line: 1021, column: 1, scope: !2744)
!2796 = !DILocation(line: 1020, column: 3, scope: !2744)
!2797 = distinct !DISubprogram(name: "quotearg_custom", scope: !520, file: !520, line: 1024, type: !2798, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!89, !96, !96, !96}
!2800 = !{!2801, !2802, !2803}
!2801 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2797, file: !520, line: 1024, type: !96)
!2802 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2797, file: !520, line: 1024, type: !96)
!2803 = !DILocalVariable(name: "arg", arg: 3, scope: !2797, file: !520, line: 1025, type: !96)
!2804 = distinct !DIAssignID()
!2805 = !DILocation(line: 0, scope: !2797)
!2806 = !DILocation(line: 0, scope: !2733, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1027, column: 10, scope: !2797)
!2808 = !DILocation(line: 0, scope: !2744, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 1009, column: 10, scope: !2733, inlinedAt: !2807)
!2810 = !DILocation(line: 1018, column: 3, scope: !2744, inlinedAt: !2809)
!2811 = !DILocation(line: 1018, column: 30, scope: !2744, inlinedAt: !2809)
!2812 = distinct !DIAssignID()
!2813 = distinct !DIAssignID()
!2814 = !DILocation(line: 0, scope: !1652, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 1019, column: 3, scope: !2744, inlinedAt: !2809)
!2816 = !DILocation(line: 174, column: 12, scope: !1652, inlinedAt: !2815)
!2817 = distinct !DIAssignID()
!2818 = !DILocation(line: 175, column: 8, scope: !1665, inlinedAt: !2815)
!2819 = !DILocation(line: 175, column: 19, scope: !1665, inlinedAt: !2815)
!2820 = !DILocation(line: 176, column: 5, scope: !1665, inlinedAt: !2815)
!2821 = !DILocation(line: 177, column: 6, scope: !1652, inlinedAt: !2815)
!2822 = !DILocation(line: 177, column: 17, scope: !1652, inlinedAt: !2815)
!2823 = distinct !DIAssignID()
!2824 = !DILocation(line: 178, column: 6, scope: !1652, inlinedAt: !2815)
!2825 = !DILocation(line: 178, column: 18, scope: !1652, inlinedAt: !2815)
!2826 = distinct !DIAssignID()
!2827 = !DILocation(line: 1020, column: 10, scope: !2744, inlinedAt: !2809)
!2828 = !DILocation(line: 1021, column: 1, scope: !2744, inlinedAt: !2809)
!2829 = !DILocation(line: 1027, column: 3, scope: !2797)
!2830 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !520, file: !520, line: 1031, type: !2831, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!89, !96, !96, !96, !147}
!2833 = !{!2834, !2835, !2836, !2837}
!2834 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2830, file: !520, line: 1031, type: !96)
!2835 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2830, file: !520, line: 1031, type: !96)
!2836 = !DILocalVariable(name: "arg", arg: 3, scope: !2830, file: !520, line: 1032, type: !96)
!2837 = !DILocalVariable(name: "argsize", arg: 4, scope: !2830, file: !520, line: 1032, type: !147)
!2838 = distinct !DIAssignID()
!2839 = !DILocation(line: 0, scope: !2830)
!2840 = !DILocation(line: 0, scope: !2744, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1034, column: 10, scope: !2830)
!2842 = !DILocation(line: 1018, column: 3, scope: !2744, inlinedAt: !2841)
!2843 = !DILocation(line: 1018, column: 30, scope: !2744, inlinedAt: !2841)
!2844 = distinct !DIAssignID()
!2845 = distinct !DIAssignID()
!2846 = !DILocation(line: 0, scope: !1652, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 1019, column: 3, scope: !2744, inlinedAt: !2841)
!2848 = !DILocation(line: 174, column: 12, scope: !1652, inlinedAt: !2847)
!2849 = distinct !DIAssignID()
!2850 = !DILocation(line: 175, column: 8, scope: !1665, inlinedAt: !2847)
!2851 = !DILocation(line: 175, column: 19, scope: !1665, inlinedAt: !2847)
!2852 = !DILocation(line: 176, column: 5, scope: !1665, inlinedAt: !2847)
!2853 = !DILocation(line: 177, column: 6, scope: !1652, inlinedAt: !2847)
!2854 = !DILocation(line: 177, column: 17, scope: !1652, inlinedAt: !2847)
!2855 = distinct !DIAssignID()
!2856 = !DILocation(line: 178, column: 6, scope: !1652, inlinedAt: !2847)
!2857 = !DILocation(line: 178, column: 18, scope: !1652, inlinedAt: !2847)
!2858 = distinct !DIAssignID()
!2859 = !DILocation(line: 1020, column: 10, scope: !2744, inlinedAt: !2841)
!2860 = !DILocation(line: 1021, column: 1, scope: !2744, inlinedAt: !2841)
!2861 = !DILocation(line: 1034, column: 3, scope: !2830)
!2862 = distinct !DISubprogram(name: "quote_n_mem", scope: !520, file: !520, line: 1049, type: !2863, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!96, !72, !96, !147}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "n", arg: 1, scope: !2862, file: !520, line: 1049, type: !72)
!2867 = !DILocalVariable(name: "arg", arg: 2, scope: !2862, file: !520, line: 1049, type: !96)
!2868 = !DILocalVariable(name: "argsize", arg: 3, scope: !2862, file: !520, line: 1049, type: !147)
!2869 = !DILocation(line: 0, scope: !2862)
!2870 = !DILocation(line: 1051, column: 10, scope: !2862)
!2871 = !DILocation(line: 1051, column: 3, scope: !2862)
!2872 = distinct !DISubprogram(name: "quote_mem", scope: !520, file: !520, line: 1055, type: !2873, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!96, !96, !147}
!2875 = !{!2876, !2877}
!2876 = !DILocalVariable(name: "arg", arg: 1, scope: !2872, file: !520, line: 1055, type: !96)
!2877 = !DILocalVariable(name: "argsize", arg: 2, scope: !2872, file: !520, line: 1055, type: !147)
!2878 = !DILocation(line: 0, scope: !2872)
!2879 = !DILocation(line: 0, scope: !2862, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 1057, column: 10, scope: !2872)
!2881 = !DILocation(line: 1051, column: 10, scope: !2862, inlinedAt: !2880)
!2882 = !DILocation(line: 1057, column: 3, scope: !2872)
!2883 = distinct !DISubprogram(name: "quote_n", scope: !520, file: !520, line: 1061, type: !2884, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!96, !72, !96}
!2886 = !{!2887, !2888}
!2887 = !DILocalVariable(name: "n", arg: 1, scope: !2883, file: !520, line: 1061, type: !72)
!2888 = !DILocalVariable(name: "arg", arg: 2, scope: !2883, file: !520, line: 1061, type: !96)
!2889 = !DILocation(line: 0, scope: !2883)
!2890 = !DILocation(line: 0, scope: !2862, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 1063, column: 10, scope: !2883)
!2892 = !DILocation(line: 1051, column: 10, scope: !2862, inlinedAt: !2891)
!2893 = !DILocation(line: 1063, column: 3, scope: !2883)
!2894 = distinct !DISubprogram(name: "quote", scope: !520, file: !520, line: 1067, type: !2895, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!96, !96}
!2897 = !{!2898}
!2898 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !520, line: 1067, type: !96)
!2899 = !DILocation(line: 0, scope: !2894)
!2900 = !DILocation(line: 0, scope: !2883, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 1069, column: 10, scope: !2894)
!2902 = !DILocation(line: 0, scope: !2862, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1063, column: 10, scope: !2883, inlinedAt: !2901)
!2904 = !DILocation(line: 1051, column: 10, scope: !2862, inlinedAt: !2903)
!2905 = !DILocation(line: 1069, column: 3, scope: !2894)
!2906 = distinct !DISubprogram(name: "version_etc_arn", scope: !634, file: !634, line: 61, type: !2907, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2944)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{null, !2909, !96, !96, !96, !2943, !147}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !2911)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2911, file: !219, line: 51, baseType: !72, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2911, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2911, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2911, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2911, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2911, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2911, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2911, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2911, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2911, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2911, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2911, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2911, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2911, file: !219, line: 70, baseType: !2927, size: 64, offset: 832)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2911, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2911, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2911, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2911, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2911, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2911, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2911, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2911, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2911, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2911, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2911, file: !219, line: 93, baseType: !2927, size: 64, offset: 1344)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2911, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2911, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2911, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2911, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950}
!2945 = !DILocalVariable(name: "stream", arg: 1, scope: !2906, file: !634, line: 61, type: !2909)
!2946 = !DILocalVariable(name: "command_name", arg: 2, scope: !2906, file: !634, line: 62, type: !96)
!2947 = !DILocalVariable(name: "package", arg: 3, scope: !2906, file: !634, line: 62, type: !96)
!2948 = !DILocalVariable(name: "version", arg: 4, scope: !2906, file: !634, line: 63, type: !96)
!2949 = !DILocalVariable(name: "authors", arg: 5, scope: !2906, file: !634, line: 64, type: !2943)
!2950 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2906, file: !634, line: 64, type: !147)
!2951 = !DILocation(line: 0, scope: !2906)
!2952 = !DILocation(line: 66, column: 7, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2906, file: !634, line: 66, column: 7)
!2954 = !DILocation(line: 66, column: 7, scope: !2906)
!2955 = !DILocation(line: 67, column: 5, scope: !2953)
!2956 = !DILocation(line: 69, column: 5, scope: !2953)
!2957 = !DILocation(line: 83, column: 3, scope: !2906)
!2958 = !DILocation(line: 85, column: 3, scope: !2906)
!2959 = !DILocation(line: 88, column: 3, scope: !2906)
!2960 = !DILocation(line: 95, column: 3, scope: !2906)
!2961 = !DILocation(line: 97, column: 3, scope: !2906)
!2962 = !DILocation(line: 105, column: 7, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2906, file: !634, line: 98, column: 5)
!2964 = !DILocation(line: 106, column: 7, scope: !2963)
!2965 = !DILocation(line: 109, column: 7, scope: !2963)
!2966 = !DILocation(line: 110, column: 7, scope: !2963)
!2967 = !DILocation(line: 113, column: 7, scope: !2963)
!2968 = !DILocation(line: 115, column: 7, scope: !2963)
!2969 = !DILocation(line: 120, column: 7, scope: !2963)
!2970 = !DILocation(line: 122, column: 7, scope: !2963)
!2971 = !DILocation(line: 127, column: 7, scope: !2963)
!2972 = !DILocation(line: 129, column: 7, scope: !2963)
!2973 = !DILocation(line: 134, column: 7, scope: !2963)
!2974 = !DILocation(line: 137, column: 7, scope: !2963)
!2975 = !DILocation(line: 142, column: 7, scope: !2963)
!2976 = !DILocation(line: 145, column: 7, scope: !2963)
!2977 = !DILocation(line: 150, column: 7, scope: !2963)
!2978 = !DILocation(line: 154, column: 7, scope: !2963)
!2979 = !DILocation(line: 159, column: 7, scope: !2963)
!2980 = !DILocation(line: 163, column: 7, scope: !2963)
!2981 = !DILocation(line: 170, column: 7, scope: !2963)
!2982 = !DILocation(line: 174, column: 7, scope: !2963)
!2983 = !DILocation(line: 176, column: 1, scope: !2906)
!2984 = distinct !DISubprogram(name: "version_etc_ar", scope: !634, file: !634, line: 183, type: !2985, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !2909, !96, !96, !96, !2943}
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993}
!2988 = !DILocalVariable(name: "stream", arg: 1, scope: !2984, file: !634, line: 183, type: !2909)
!2989 = !DILocalVariable(name: "command_name", arg: 2, scope: !2984, file: !634, line: 184, type: !96)
!2990 = !DILocalVariable(name: "package", arg: 3, scope: !2984, file: !634, line: 184, type: !96)
!2991 = !DILocalVariable(name: "version", arg: 4, scope: !2984, file: !634, line: 185, type: !96)
!2992 = !DILocalVariable(name: "authors", arg: 5, scope: !2984, file: !634, line: 185, type: !2943)
!2993 = !DILocalVariable(name: "n_authors", scope: !2984, file: !634, line: 187, type: !147)
!2994 = !DILocation(line: 0, scope: !2984)
!2995 = !DILocation(line: 189, column: 8, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2984, file: !634, line: 189, column: 3)
!2997 = !DILocation(line: 189, scope: !2996)
!2998 = !DILocation(line: 189, column: 23, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !634, line: 189, column: 3)
!3000 = !DILocation(line: 189, column: 3, scope: !2996)
!3001 = !DILocation(line: 189, column: 52, scope: !2999)
!3002 = distinct !{!3002, !3000, !3003, !964}
!3003 = !DILocation(line: 190, column: 5, scope: !2996)
!3004 = !DILocation(line: 191, column: 3, scope: !2984)
!3005 = !DILocation(line: 192, column: 1, scope: !2984)
!3006 = distinct !DISubprogram(name: "version_etc_va", scope: !634, file: !634, line: 199, type: !3007, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3019)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !2909, !96, !96, !96, !3009}
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !435, line: 52, baseType: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !437, line: 12, baseType: !3011)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !634, baseType: !3012)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017, !3018}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3012, file: !634, line: 192, baseType: !145, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3012, file: !634, line: 192, baseType: !145, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3012, file: !634, line: 192, baseType: !145, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3012, file: !634, line: 192, baseType: !72, size: 32, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3012, file: !634, line: 192, baseType: !72, size: 32, offset: 224)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026}
!3020 = !DILocalVariable(name: "stream", arg: 1, scope: !3006, file: !634, line: 199, type: !2909)
!3021 = !DILocalVariable(name: "command_name", arg: 2, scope: !3006, file: !634, line: 200, type: !96)
!3022 = !DILocalVariable(name: "package", arg: 3, scope: !3006, file: !634, line: 200, type: !96)
!3023 = !DILocalVariable(name: "version", arg: 4, scope: !3006, file: !634, line: 201, type: !96)
!3024 = !DILocalVariable(name: "authors", arg: 5, scope: !3006, file: !634, line: 201, type: !3009)
!3025 = !DILocalVariable(name: "n_authors", scope: !3006, file: !634, line: 203, type: !147)
!3026 = !DILocalVariable(name: "authtab", scope: !3006, file: !634, line: 204, type: !3027)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !47)
!3028 = distinct !DIAssignID()
!3029 = !DILocation(line: 0, scope: !3006)
!3030 = !DILocation(line: 204, column: 3, scope: !3006)
!3031 = !DILocation(line: 208, column: 35, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !634, line: 206, column: 3)
!3033 = distinct !DILexicalBlock(scope: !3006, file: !634, line: 206, column: 3)
!3034 = !DILocation(line: 208, column: 33, scope: !3032)
!3035 = !DILocation(line: 208, column: 67, scope: !3032)
!3036 = !DILocation(line: 206, column: 3, scope: !3033)
!3037 = !DILocation(line: 208, column: 14, scope: !3032)
!3038 = !DILocation(line: 0, scope: !3033)
!3039 = !DILocation(line: 211, column: 3, scope: !3006)
!3040 = !DILocation(line: 213, column: 1, scope: !3006)
!3041 = distinct !DISubprogram(name: "version_etc", scope: !634, file: !634, line: 230, type: !3042, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !2909, !96, !96, !96, null}
!3044 = !{!3045, !3046, !3047, !3048, !3049}
!3045 = !DILocalVariable(name: "stream", arg: 1, scope: !3041, file: !634, line: 230, type: !2909)
!3046 = !DILocalVariable(name: "command_name", arg: 2, scope: !3041, file: !634, line: 231, type: !96)
!3047 = !DILocalVariable(name: "package", arg: 3, scope: !3041, file: !634, line: 231, type: !96)
!3048 = !DILocalVariable(name: "version", arg: 4, scope: !3041, file: !634, line: 232, type: !96)
!3049 = !DILocalVariable(name: "authors", scope: !3041, file: !634, line: 234, type: !3009)
!3050 = distinct !DIAssignID()
!3051 = !DILocation(line: 0, scope: !3041)
!3052 = !DILocation(line: 234, column: 3, scope: !3041)
!3053 = !DILocation(line: 235, column: 3, scope: !3041)
!3054 = !DILocation(line: 236, column: 3, scope: !3041)
!3055 = !DILocation(line: 237, column: 3, scope: !3041)
!3056 = !DILocation(line: 238, column: 1, scope: !3041)
!3057 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !634, file: !634, line: 241, type: !475, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760)
!3058 = !DILocation(line: 243, column: 3, scope: !3057)
!3059 = !DILocation(line: 248, column: 3, scope: !3057)
!3060 = !DILocation(line: 254, column: 3, scope: !3057)
!3061 = !DILocation(line: 259, column: 3, scope: !3057)
!3062 = !DILocation(line: 261, column: 1, scope: !3057)
!3063 = distinct !DISubprogram(name: "xnrealloc", scope: !3064, file: !3064, line: 147, type: !3065, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3067)
!3064 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!145, !145, !147, !147}
!3067 = !{!3068, !3069, !3070}
!3068 = !DILocalVariable(name: "p", arg: 1, scope: !3063, file: !3064, line: 147, type: !145)
!3069 = !DILocalVariable(name: "n", arg: 2, scope: !3063, file: !3064, line: 147, type: !147)
!3070 = !DILocalVariable(name: "s", arg: 3, scope: !3063, file: !3064, line: 147, type: !147)
!3071 = !DILocation(line: 0, scope: !3063)
!3072 = !DILocalVariable(name: "p", arg: 1, scope: !3073, file: !768, line: 83, type: !145)
!3073 = distinct !DISubprogram(name: "xreallocarray", scope: !768, file: !768, line: 83, type: !3065, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3074)
!3074 = !{!3072, !3075, !3076}
!3075 = !DILocalVariable(name: "n", arg: 2, scope: !3073, file: !768, line: 83, type: !147)
!3076 = !DILocalVariable(name: "s", arg: 3, scope: !3073, file: !768, line: 83, type: !147)
!3077 = !DILocation(line: 0, scope: !3073, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 149, column: 10, scope: !3063)
!3079 = !DILocation(line: 85, column: 25, scope: !3073, inlinedAt: !3078)
!3080 = !DILocalVariable(name: "p", arg: 1, scope: !3081, file: !768, line: 37, type: !145)
!3081 = distinct !DISubprogram(name: "check_nonnull", scope: !768, file: !768, line: 37, type: !3082, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!145, !145}
!3084 = !{!3080}
!3085 = !DILocation(line: 0, scope: !3081, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 85, column: 10, scope: !3073, inlinedAt: !3078)
!3087 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3086)
!3088 = distinct !DILexicalBlock(scope: !3081, file: !768, line: 39, column: 7)
!3089 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3086)
!3090 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3086)
!3091 = !DILocation(line: 149, column: 3, scope: !3063)
!3092 = !DILocation(line: 0, scope: !3073)
!3093 = !DILocation(line: 85, column: 25, scope: !3073)
!3094 = !DILocation(line: 0, scope: !3081, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 85, column: 10, scope: !3073)
!3096 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3095)
!3097 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3095)
!3098 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3095)
!3099 = !DILocation(line: 85, column: 3, scope: !3073)
!3100 = distinct !DISubprogram(name: "xmalloc", scope: !768, file: !768, line: 47, type: !3101, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!145, !147}
!3103 = !{!3104}
!3104 = !DILocalVariable(name: "s", arg: 1, scope: !3100, file: !768, line: 47, type: !147)
!3105 = !DILocation(line: 0, scope: !3100)
!3106 = !DILocation(line: 49, column: 25, scope: !3100)
!3107 = !DILocation(line: 0, scope: !3081, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 49, column: 10, scope: !3100)
!3109 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3108)
!3110 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3108)
!3111 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3108)
!3112 = !DILocation(line: 49, column: 3, scope: !3100)
!3113 = !DISubprogram(name: "malloc", scope: !1038, file: !1038, line: 540, type: !3101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3114 = distinct !DISubprogram(name: "ximalloc", scope: !768, file: !768, line: 53, type: !3115, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!145, !787}
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "s", arg: 1, scope: !3114, file: !768, line: 53, type: !787)
!3119 = !DILocation(line: 0, scope: !3114)
!3120 = !DILocalVariable(name: "s", arg: 1, scope: !3121, file: !3122, line: 55, type: !787)
!3121 = distinct !DISubprogram(name: "imalloc", scope: !3122, file: !3122, line: 55, type: !3115, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3123)
!3122 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3123 = !{!3120}
!3124 = !DILocation(line: 0, scope: !3121, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 55, column: 25, scope: !3114)
!3126 = !DILocation(line: 57, column: 26, scope: !3121, inlinedAt: !3125)
!3127 = !DILocation(line: 0, scope: !3081, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 55, column: 10, scope: !3114)
!3129 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3128)
!3130 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3128)
!3131 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3128)
!3132 = !DILocation(line: 55, column: 3, scope: !3114)
!3133 = distinct !DISubprogram(name: "xcharalloc", scope: !768, file: !768, line: 59, type: !3134, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!89, !147}
!3136 = !{!3137}
!3137 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !768, line: 59, type: !147)
!3138 = !DILocation(line: 0, scope: !3133)
!3139 = !DILocation(line: 0, scope: !3100, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 61, column: 10, scope: !3133)
!3141 = !DILocation(line: 49, column: 25, scope: !3100, inlinedAt: !3140)
!3142 = !DILocation(line: 0, scope: !3081, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 49, column: 10, scope: !3100, inlinedAt: !3140)
!3144 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3143)
!3145 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3143)
!3146 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3143)
!3147 = !DILocation(line: 61, column: 3, scope: !3133)
!3148 = distinct !DISubprogram(name: "xrealloc", scope: !768, file: !768, line: 68, type: !3149, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!145, !145, !147}
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "p", arg: 1, scope: !3148, file: !768, line: 68, type: !145)
!3153 = !DILocalVariable(name: "s", arg: 2, scope: !3148, file: !768, line: 68, type: !147)
!3154 = !DILocation(line: 0, scope: !3148)
!3155 = !DILocalVariable(name: "ptr", arg: 1, scope: !3156, file: !3157, line: 2057, type: !145)
!3156 = distinct !DISubprogram(name: "rpl_realloc", scope: !3157, file: !3157, line: 2057, type: !3149, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3158)
!3157 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3158 = !{!3155, !3159}
!3159 = !DILocalVariable(name: "size", arg: 2, scope: !3156, file: !3157, line: 2057, type: !147)
!3160 = !DILocation(line: 0, scope: !3156, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 70, column: 25, scope: !3148)
!3162 = !DILocation(line: 2059, column: 24, scope: !3156, inlinedAt: !3161)
!3163 = !DILocation(line: 2059, column: 10, scope: !3156, inlinedAt: !3161)
!3164 = !DILocation(line: 0, scope: !3081, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 70, column: 10, scope: !3148)
!3166 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3165)
!3167 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3165)
!3168 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3165)
!3169 = !DILocation(line: 70, column: 3, scope: !3148)
!3170 = !DISubprogram(name: "realloc", scope: !1038, file: !1038, line: 551, type: !3149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3171 = distinct !DISubprogram(name: "xirealloc", scope: !768, file: !768, line: 74, type: !3172, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!145, !145, !787}
!3174 = !{!3175, !3176}
!3175 = !DILocalVariable(name: "p", arg: 1, scope: !3171, file: !768, line: 74, type: !145)
!3176 = !DILocalVariable(name: "s", arg: 2, scope: !3171, file: !768, line: 74, type: !787)
!3177 = !DILocation(line: 0, scope: !3171)
!3178 = !DILocalVariable(name: "p", arg: 1, scope: !3179, file: !3122, line: 66, type: !145)
!3179 = distinct !DISubprogram(name: "irealloc", scope: !3122, file: !3122, line: 66, type: !3172, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3180)
!3180 = !{!3178, !3181}
!3181 = !DILocalVariable(name: "s", arg: 2, scope: !3179, file: !3122, line: 66, type: !787)
!3182 = !DILocation(line: 0, scope: !3179, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 76, column: 25, scope: !3171)
!3184 = !DILocation(line: 0, scope: !3156, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 68, column: 26, scope: !3179, inlinedAt: !3183)
!3186 = !DILocation(line: 2059, column: 24, scope: !3156, inlinedAt: !3185)
!3187 = !DILocation(line: 2059, column: 10, scope: !3156, inlinedAt: !3185)
!3188 = !DILocation(line: 0, scope: !3081, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 76, column: 10, scope: !3171)
!3190 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3189)
!3191 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3189)
!3192 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3189)
!3193 = !DILocation(line: 76, column: 3, scope: !3171)
!3194 = distinct !DISubprogram(name: "xireallocarray", scope: !768, file: !768, line: 89, type: !3195, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!145, !145, !787, !787}
!3197 = !{!3198, !3199, !3200}
!3198 = !DILocalVariable(name: "p", arg: 1, scope: !3194, file: !768, line: 89, type: !145)
!3199 = !DILocalVariable(name: "n", arg: 2, scope: !3194, file: !768, line: 89, type: !787)
!3200 = !DILocalVariable(name: "s", arg: 3, scope: !3194, file: !768, line: 89, type: !787)
!3201 = !DILocation(line: 0, scope: !3194)
!3202 = !DILocalVariable(name: "p", arg: 1, scope: !3203, file: !3122, line: 98, type: !145)
!3203 = distinct !DISubprogram(name: "ireallocarray", scope: !3122, file: !3122, line: 98, type: !3195, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3204)
!3204 = !{!3202, !3205, !3206}
!3205 = !DILocalVariable(name: "n", arg: 2, scope: !3203, file: !3122, line: 98, type: !787)
!3206 = !DILocalVariable(name: "s", arg: 3, scope: !3203, file: !3122, line: 98, type: !787)
!3207 = !DILocation(line: 0, scope: !3203, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 91, column: 25, scope: !3194)
!3209 = !DILocation(line: 101, column: 13, scope: !3203, inlinedAt: !3208)
!3210 = !DILocation(line: 0, scope: !3081, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 91, column: 10, scope: !3194)
!3212 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3211)
!3213 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3211)
!3214 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3211)
!3215 = !DILocation(line: 91, column: 3, scope: !3194)
!3216 = distinct !DISubprogram(name: "xnmalloc", scope: !768, file: !768, line: 98, type: !3217, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!145, !147, !147}
!3219 = !{!3220, !3221}
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !768, line: 98, type: !147)
!3221 = !DILocalVariable(name: "s", arg: 2, scope: !3216, file: !768, line: 98, type: !147)
!3222 = !DILocation(line: 0, scope: !3216)
!3223 = !DILocation(line: 0, scope: !3073, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 100, column: 10, scope: !3216)
!3225 = !DILocation(line: 85, column: 25, scope: !3073, inlinedAt: !3224)
!3226 = !DILocation(line: 0, scope: !3081, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 85, column: 10, scope: !3073, inlinedAt: !3224)
!3228 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3227)
!3229 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3227)
!3230 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3227)
!3231 = !DILocation(line: 100, column: 3, scope: !3216)
!3232 = distinct !DISubprogram(name: "xinmalloc", scope: !768, file: !768, line: 104, type: !3233, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!145, !787, !787}
!3235 = !{!3236, !3237}
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3232, file: !768, line: 104, type: !787)
!3237 = !DILocalVariable(name: "s", arg: 2, scope: !3232, file: !768, line: 104, type: !787)
!3238 = !DILocation(line: 0, scope: !3232)
!3239 = !DILocation(line: 0, scope: !3194, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 106, column: 10, scope: !3232)
!3241 = !DILocation(line: 0, scope: !3203, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 91, column: 25, scope: !3194, inlinedAt: !3240)
!3243 = !DILocation(line: 101, column: 13, scope: !3203, inlinedAt: !3242)
!3244 = !DILocation(line: 0, scope: !3081, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 91, column: 10, scope: !3194, inlinedAt: !3240)
!3246 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3245)
!3247 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3245)
!3248 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3245)
!3249 = !DILocation(line: 106, column: 3, scope: !3232)
!3250 = distinct !DISubprogram(name: "x2realloc", scope: !768, file: !768, line: 116, type: !3251, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!145, !145, !774}
!3253 = !{!3254, !3255}
!3254 = !DILocalVariable(name: "p", arg: 1, scope: !3250, file: !768, line: 116, type: !145)
!3255 = !DILocalVariable(name: "ps", arg: 2, scope: !3250, file: !768, line: 116, type: !774)
!3256 = !DILocation(line: 0, scope: !3250)
!3257 = !DILocation(line: 0, scope: !771, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 118, column: 10, scope: !3250)
!3259 = !DILocation(line: 178, column: 14, scope: !771, inlinedAt: !3258)
!3260 = !DILocation(line: 180, column: 9, scope: !3261, inlinedAt: !3258)
!3261 = distinct !DILexicalBlock(scope: !771, file: !768, line: 180, column: 7)
!3262 = !DILocation(line: 180, column: 7, scope: !771, inlinedAt: !3258)
!3263 = !DILocation(line: 182, column: 13, scope: !3264, inlinedAt: !3258)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !768, line: 182, column: 11)
!3265 = distinct !DILexicalBlock(scope: !3261, file: !768, line: 181, column: 5)
!3266 = !DILocation(line: 182, column: 11, scope: !3265, inlinedAt: !3258)
!3267 = !DILocation(line: 197, column: 11, scope: !3268, inlinedAt: !3258)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !768, line: 197, column: 11)
!3269 = distinct !DILexicalBlock(scope: !3261, file: !768, line: 195, column: 5)
!3270 = !DILocation(line: 197, column: 11, scope: !3269, inlinedAt: !3258)
!3271 = !DILocation(line: 198, column: 9, scope: !3268, inlinedAt: !3258)
!3272 = !DILocation(line: 0, scope: !3073, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 201, column: 7, scope: !771, inlinedAt: !3258)
!3274 = !DILocation(line: 85, column: 25, scope: !3073, inlinedAt: !3273)
!3275 = !DILocation(line: 0, scope: !3081, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 85, column: 10, scope: !3073, inlinedAt: !3273)
!3277 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3276)
!3278 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3276)
!3279 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3276)
!3280 = !DILocation(line: 202, column: 7, scope: !771, inlinedAt: !3258)
!3281 = !DILocation(line: 118, column: 3, scope: !3250)
!3282 = !DILocation(line: 0, scope: !771)
!3283 = !DILocation(line: 178, column: 14, scope: !771)
!3284 = !DILocation(line: 180, column: 9, scope: !3261)
!3285 = !DILocation(line: 180, column: 7, scope: !771)
!3286 = !DILocation(line: 182, column: 13, scope: !3264)
!3287 = !DILocation(line: 182, column: 11, scope: !3265)
!3288 = !DILocation(line: 190, column: 30, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3264, file: !768, line: 183, column: 9)
!3290 = !DILocation(line: 191, column: 16, scope: !3289)
!3291 = !DILocation(line: 191, column: 13, scope: !3289)
!3292 = !DILocation(line: 192, column: 9, scope: !3289)
!3293 = !DILocation(line: 197, column: 11, scope: !3268)
!3294 = !DILocation(line: 197, column: 11, scope: !3269)
!3295 = !DILocation(line: 198, column: 9, scope: !3268)
!3296 = !DILocation(line: 0, scope: !3073, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 201, column: 7, scope: !771)
!3298 = !DILocation(line: 85, column: 25, scope: !3073, inlinedAt: !3297)
!3299 = !DILocation(line: 0, scope: !3081, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 85, column: 10, scope: !3073, inlinedAt: !3297)
!3301 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3300)
!3302 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3300)
!3303 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3300)
!3304 = !DILocation(line: 202, column: 7, scope: !771)
!3305 = !DILocation(line: 203, column: 3, scope: !771)
!3306 = !DILocation(line: 0, scope: !783)
!3307 = !DILocation(line: 230, column: 14, scope: !783)
!3308 = !DILocation(line: 238, column: 7, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !783, file: !768, line: 238, column: 7)
!3310 = !DILocation(line: 238, column: 7, scope: !783)
!3311 = !DILocation(line: 240, column: 9, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !783, file: !768, line: 240, column: 7)
!3313 = !DILocation(line: 240, column: 18, scope: !3312)
!3314 = !DILocation(line: 253, column: 8, scope: !783)
!3315 = !DILocation(line: 256, column: 7, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !783, file: !768, line: 256, column: 7)
!3317 = !DILocation(line: 256, column: 7, scope: !783)
!3318 = !DILocation(line: 258, column: 27, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3316, file: !768, line: 257, column: 5)
!3320 = !DILocation(line: 259, column: 32, scope: !3319)
!3321 = !DILocation(line: 260, column: 5, scope: !3319)
!3322 = !DILocation(line: 262, column: 9, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !783, file: !768, line: 262, column: 7)
!3324 = !DILocation(line: 262, column: 7, scope: !783)
!3325 = !DILocation(line: 263, column: 9, scope: !3323)
!3326 = !DILocation(line: 263, column: 5, scope: !3323)
!3327 = !DILocation(line: 264, column: 9, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !783, file: !768, line: 264, column: 7)
!3329 = !DILocation(line: 264, column: 14, scope: !3328)
!3330 = !DILocation(line: 265, column: 7, scope: !3328)
!3331 = !DILocation(line: 265, column: 11, scope: !3328)
!3332 = !DILocation(line: 266, column: 11, scope: !3328)
!3333 = !DILocation(line: 267, column: 14, scope: !3328)
!3334 = !DILocation(line: 264, column: 7, scope: !783)
!3335 = !DILocation(line: 268, column: 5, scope: !3328)
!3336 = !DILocation(line: 0, scope: !3148, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 269, column: 8, scope: !783)
!3338 = !DILocation(line: 0, scope: !3156, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 70, column: 25, scope: !3148, inlinedAt: !3337)
!3340 = !DILocation(line: 2059, column: 24, scope: !3156, inlinedAt: !3339)
!3341 = !DILocation(line: 2059, column: 10, scope: !3156, inlinedAt: !3339)
!3342 = !DILocation(line: 0, scope: !3081, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 70, column: 10, scope: !3148, inlinedAt: !3337)
!3344 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3343)
!3345 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3343)
!3346 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3343)
!3347 = !DILocation(line: 270, column: 7, scope: !783)
!3348 = !DILocation(line: 271, column: 3, scope: !783)
!3349 = distinct !DISubprogram(name: "xzalloc", scope: !768, file: !768, line: 279, type: !3101, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3350)
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "s", arg: 1, scope: !3349, file: !768, line: 279, type: !147)
!3352 = !DILocation(line: 0, scope: !3349)
!3353 = !DILocalVariable(name: "n", arg: 1, scope: !3354, file: !768, line: 294, type: !147)
!3354 = distinct !DISubprogram(name: "xcalloc", scope: !768, file: !768, line: 294, type: !3217, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3355)
!3355 = !{!3353, !3356}
!3356 = !DILocalVariable(name: "s", arg: 2, scope: !3354, file: !768, line: 294, type: !147)
!3357 = !DILocation(line: 0, scope: !3354, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 281, column: 10, scope: !3349)
!3359 = !DILocation(line: 296, column: 25, scope: !3354, inlinedAt: !3358)
!3360 = !DILocation(line: 0, scope: !3081, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 296, column: 10, scope: !3354, inlinedAt: !3358)
!3362 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3361)
!3363 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3361)
!3364 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3361)
!3365 = !DILocation(line: 281, column: 3, scope: !3349)
!3366 = !DISubprogram(name: "calloc", scope: !1038, file: !1038, line: 543, type: !3217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3367 = !DILocation(line: 0, scope: !3354)
!3368 = !DILocation(line: 296, column: 25, scope: !3354)
!3369 = !DILocation(line: 0, scope: !3081, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 296, column: 10, scope: !3354)
!3371 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3370)
!3372 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3370)
!3373 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3370)
!3374 = !DILocation(line: 296, column: 3, scope: !3354)
!3375 = distinct !DISubprogram(name: "xizalloc", scope: !768, file: !768, line: 285, type: !3115, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3376)
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "s", arg: 1, scope: !3375, file: !768, line: 285, type: !787)
!3378 = !DILocation(line: 0, scope: !3375)
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3380, file: !768, line: 300, type: !787)
!3380 = distinct !DISubprogram(name: "xicalloc", scope: !768, file: !768, line: 300, type: !3233, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3381)
!3381 = !{!3379, !3382}
!3382 = !DILocalVariable(name: "s", arg: 2, scope: !3380, file: !768, line: 300, type: !787)
!3383 = !DILocation(line: 0, scope: !3380, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 287, column: 10, scope: !3375)
!3385 = !DILocalVariable(name: "n", arg: 1, scope: !3386, file: !3122, line: 77, type: !787)
!3386 = distinct !DISubprogram(name: "icalloc", scope: !3122, file: !3122, line: 77, type: !3233, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3387)
!3387 = !{!3385, !3388}
!3388 = !DILocalVariable(name: "s", arg: 2, scope: !3386, file: !3122, line: 77, type: !787)
!3389 = !DILocation(line: 0, scope: !3386, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 302, column: 25, scope: !3380, inlinedAt: !3384)
!3391 = !DILocation(line: 91, column: 10, scope: !3386, inlinedAt: !3390)
!3392 = !DILocation(line: 0, scope: !3081, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 302, column: 10, scope: !3380, inlinedAt: !3384)
!3394 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3393)
!3395 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3393)
!3396 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3393)
!3397 = !DILocation(line: 287, column: 3, scope: !3375)
!3398 = !DILocation(line: 0, scope: !3380)
!3399 = !DILocation(line: 0, scope: !3386, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 302, column: 25, scope: !3380)
!3401 = !DILocation(line: 91, column: 10, scope: !3386, inlinedAt: !3400)
!3402 = !DILocation(line: 0, scope: !3081, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 302, column: 10, scope: !3380)
!3404 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3403)
!3405 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3403)
!3406 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3403)
!3407 = !DILocation(line: 302, column: 3, scope: !3380)
!3408 = distinct !DISubprogram(name: "xmemdup", scope: !768, file: !768, line: 310, type: !3409, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!145, !1062, !147}
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "p", arg: 1, scope: !3408, file: !768, line: 310, type: !1062)
!3413 = !DILocalVariable(name: "s", arg: 2, scope: !3408, file: !768, line: 310, type: !147)
!3414 = !DILocation(line: 0, scope: !3408)
!3415 = !DILocation(line: 0, scope: !3100, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 312, column: 18, scope: !3408)
!3417 = !DILocation(line: 49, column: 25, scope: !3100, inlinedAt: !3416)
!3418 = !DILocation(line: 0, scope: !3081, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 49, column: 10, scope: !3100, inlinedAt: !3416)
!3420 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3419)
!3421 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3419)
!3422 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3419)
!3423 = !DILocalVariable(name: "__dest", arg: 1, scope: !3424, file: !1555, line: 26, type: !3427)
!3424 = distinct !DISubprogram(name: "memcpy", scope: !1555, file: !1555, line: 26, type: !3425, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3428)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!145, !3427, !1061, !147}
!3427 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!3428 = !{!3423, !3429, !3430}
!3429 = !DILocalVariable(name: "__src", arg: 2, scope: !3424, file: !1555, line: 26, type: !1061)
!3430 = !DILocalVariable(name: "__len", arg: 3, scope: !3424, file: !1555, line: 26, type: !147)
!3431 = !DILocation(line: 0, scope: !3424, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 312, column: 10, scope: !3408)
!3433 = !DILocation(line: 29, column: 10, scope: !3424, inlinedAt: !3432)
!3434 = !DILocation(line: 312, column: 3, scope: !3408)
!3435 = distinct !DISubprogram(name: "ximemdup", scope: !768, file: !768, line: 316, type: !3436, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!145, !1062, !787}
!3438 = !{!3439, !3440}
!3439 = !DILocalVariable(name: "p", arg: 1, scope: !3435, file: !768, line: 316, type: !1062)
!3440 = !DILocalVariable(name: "s", arg: 2, scope: !3435, file: !768, line: 316, type: !787)
!3441 = !DILocation(line: 0, scope: !3435)
!3442 = !DILocation(line: 0, scope: !3114, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 318, column: 18, scope: !3435)
!3444 = !DILocation(line: 0, scope: !3121, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 55, column: 25, scope: !3114, inlinedAt: !3443)
!3446 = !DILocation(line: 57, column: 26, scope: !3121, inlinedAt: !3445)
!3447 = !DILocation(line: 0, scope: !3081, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 55, column: 10, scope: !3114, inlinedAt: !3443)
!3449 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3448)
!3450 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3448)
!3451 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3448)
!3452 = !DILocation(line: 0, scope: !3424, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 318, column: 10, scope: !3435)
!3454 = !DILocation(line: 29, column: 10, scope: !3424, inlinedAt: !3453)
!3455 = !DILocation(line: 318, column: 3, scope: !3435)
!3456 = distinct !DISubprogram(name: "ximemdup0", scope: !768, file: !768, line: 325, type: !3457, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!89, !1062, !787}
!3459 = !{!3460, !3461, !3462}
!3460 = !DILocalVariable(name: "p", arg: 1, scope: !3456, file: !768, line: 325, type: !1062)
!3461 = !DILocalVariable(name: "s", arg: 2, scope: !3456, file: !768, line: 325, type: !787)
!3462 = !DILocalVariable(name: "result", scope: !3456, file: !768, line: 327, type: !89)
!3463 = !DILocation(line: 0, scope: !3456)
!3464 = !DILocation(line: 327, column: 30, scope: !3456)
!3465 = !DILocation(line: 0, scope: !3114, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 327, column: 18, scope: !3456)
!3467 = !DILocation(line: 0, scope: !3121, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 55, column: 25, scope: !3114, inlinedAt: !3466)
!3469 = !DILocation(line: 57, column: 26, scope: !3121, inlinedAt: !3468)
!3470 = !DILocation(line: 0, scope: !3081, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 55, column: 10, scope: !3114, inlinedAt: !3466)
!3472 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3471)
!3473 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3471)
!3474 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3471)
!3475 = !DILocation(line: 328, column: 3, scope: !3456)
!3476 = !DILocation(line: 328, column: 13, scope: !3456)
!3477 = !DILocation(line: 0, scope: !3424, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 329, column: 10, scope: !3456)
!3479 = !DILocation(line: 29, column: 10, scope: !3424, inlinedAt: !3478)
!3480 = !DILocation(line: 329, column: 3, scope: !3456)
!3481 = distinct !DISubprogram(name: "xstrdup", scope: !768, file: !768, line: 335, type: !1040, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3482)
!3482 = !{!3483}
!3483 = !DILocalVariable(name: "string", arg: 1, scope: !3481, file: !768, line: 335, type: !96)
!3484 = !DILocation(line: 0, scope: !3481)
!3485 = !DILocation(line: 337, column: 27, scope: !3481)
!3486 = !DILocation(line: 337, column: 43, scope: !3481)
!3487 = !DILocation(line: 0, scope: !3408, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 337, column: 10, scope: !3481)
!3489 = !DILocation(line: 0, scope: !3100, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 312, column: 18, scope: !3408, inlinedAt: !3488)
!3491 = !DILocation(line: 49, column: 25, scope: !3100, inlinedAt: !3490)
!3492 = !DILocation(line: 0, scope: !3081, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 49, column: 10, scope: !3100, inlinedAt: !3490)
!3494 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3493)
!3495 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3493)
!3496 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3493)
!3497 = !DILocation(line: 0, scope: !3424, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 312, column: 10, scope: !3408, inlinedAt: !3488)
!3499 = !DILocation(line: 29, column: 10, scope: !3424, inlinedAt: !3498)
!3500 = !DILocation(line: 337, column: 3, scope: !3481)
!3501 = distinct !DISubprogram(name: "xalloc_die", scope: !730, file: !730, line: 32, type: !475, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3502)
!3502 = !{!3503}
!3503 = !DILocalVariable(name: "__errstatus", scope: !3504, file: !730, line: 34, type: !118)
!3504 = distinct !DILexicalBlock(scope: !3501, file: !730, line: 34, column: 3)
!3505 = !DILocation(line: 34, column: 3, scope: !3504)
!3506 = !DILocation(line: 0, scope: !3504)
!3507 = !DILocation(line: 40, column: 3, scope: !3501)
!3508 = distinct !DISubprogram(name: "xstrtol", scope: !805, file: !805, line: 71, type: !3509, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3513)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!3511, !96, !88, !72, !3512, !96}
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !808, line: 43, baseType: !807)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3526, !3527}
!3514 = !DILocalVariable(name: "nptr", arg: 1, scope: !3508, file: !805, line: 71, type: !96)
!3515 = !DILocalVariable(name: "endptr", arg: 2, scope: !3508, file: !805, line: 71, type: !88)
!3516 = !DILocalVariable(name: "base", arg: 3, scope: !3508, file: !805, line: 71, type: !72)
!3517 = !DILocalVariable(name: "val", arg: 4, scope: !3508, file: !805, line: 72, type: !3512)
!3518 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3508, file: !805, line: 72, type: !96)
!3519 = !DILocalVariable(name: "t_ptr", scope: !3508, file: !805, line: 74, type: !89)
!3520 = !DILocalVariable(name: "p", scope: !3508, file: !805, line: 75, type: !88)
!3521 = !DILocalVariable(name: "tmp", scope: !3508, file: !805, line: 91, type: !113)
!3522 = !DILocalVariable(name: "err", scope: !3508, file: !805, line: 92, type: !3511)
!3523 = !DILocalVariable(name: "xbase", scope: !3524, file: !805, line: 126, type: !72)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !805, line: 119, column: 5)
!3525 = distinct !DILexicalBlock(scope: !3508, file: !805, line: 118, column: 7)
!3526 = !DILocalVariable(name: "suffixes", scope: !3524, file: !805, line: 127, type: !72)
!3527 = !DILocalVariable(name: "overflow", scope: !3524, file: !805, line: 156, type: !3511)
!3528 = distinct !DIAssignID()
!3529 = !DILocation(line: 0, scope: !3508)
!3530 = !DILocation(line: 74, column: 3, scope: !3508)
!3531 = !DILocation(line: 75, column: 14, scope: !3508)
!3532 = !DILocation(line: 90, column: 3, scope: !3508)
!3533 = !DILocation(line: 90, column: 9, scope: !3508)
!3534 = !DILocation(line: 91, column: 20, scope: !3508)
!3535 = !DILocation(line: 94, column: 7, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3508, file: !805, line: 94, column: 7)
!3537 = !DILocation(line: 94, column: 10, scope: !3536)
!3538 = !DILocation(line: 94, column: 7, scope: !3508)
!3539 = !DILocation(line: 98, column: 14, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !805, line: 98, column: 11)
!3541 = distinct !DILexicalBlock(scope: !3536, file: !805, line: 95, column: 5)
!3542 = !DILocation(line: 98, column: 29, scope: !3540)
!3543 = !DILocation(line: 98, column: 32, scope: !3540)
!3544 = !DILocation(line: 98, column: 38, scope: !3540)
!3545 = !DILocation(line: 98, column: 41, scope: !3540)
!3546 = !DILocation(line: 98, column: 11, scope: !3541)
!3547 = !DILocation(line: 102, column: 12, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3536, file: !805, line: 102, column: 12)
!3549 = !DILocation(line: 102, column: 12, scope: !3536)
!3550 = !DILocation(line: 107, column: 5, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3548, file: !805, line: 103, column: 5)
!3552 = !DILocation(line: 112, column: 8, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3508, file: !805, line: 112, column: 7)
!3554 = !DILocation(line: 112, column: 7, scope: !3508)
!3555 = !DILocation(line: 114, column: 12, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3553, file: !805, line: 113, column: 5)
!3557 = !DILocation(line: 115, column: 7, scope: !3556)
!3558 = !DILocation(line: 118, column: 7, scope: !3525)
!3559 = !DILocation(line: 118, column: 11, scope: !3525)
!3560 = !DILocation(line: 118, column: 7, scope: !3508)
!3561 = !DILocation(line: 120, column: 12, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3524, file: !805, line: 120, column: 11)
!3563 = !DILocation(line: 120, column: 11, scope: !3524)
!3564 = !DILocation(line: 122, column: 16, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !805, line: 121, column: 9)
!3566 = !DILocation(line: 123, column: 22, scope: !3565)
!3567 = !DILocation(line: 123, column: 11, scope: !3565)
!3568 = !DILocation(line: 0, scope: !3524)
!3569 = !DILocation(line: 128, column: 7, scope: !3524)
!3570 = !DILocation(line: 140, column: 15, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !805, line: 140, column: 15)
!3572 = distinct !DILexicalBlock(scope: !3524, file: !805, line: 129, column: 9)
!3573 = !DILocation(line: 140, column: 15, scope: !3572)
!3574 = !DILocation(line: 141, column: 21, scope: !3571)
!3575 = !DILocation(line: 141, column: 13, scope: !3571)
!3576 = !DILocation(line: 144, column: 21, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !805, line: 144, column: 21)
!3578 = distinct !DILexicalBlock(scope: !3571, file: !805, line: 142, column: 15)
!3579 = !DILocation(line: 144, column: 29, scope: !3577)
!3580 = !DILocation(line: 144, column: 21, scope: !3578)
!3581 = !DILocation(line: 152, column: 17, scope: !3578)
!3582 = !DILocation(line: 157, column: 7, scope: !3524)
!3583 = !DILocalVariable(name: "err", scope: !3584, file: !805, line: 64, type: !3511)
!3584 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !805, file: !805, line: 62, type: !3585, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!3511, !3512, !72, !72}
!3587 = !{!3588, !3589, !3590, !3583}
!3588 = !DILocalVariable(name: "x", arg: 1, scope: !3584, file: !805, line: 62, type: !3512)
!3589 = !DILocalVariable(name: "base", arg: 2, scope: !3584, file: !805, line: 62, type: !72)
!3590 = !DILocalVariable(name: "power", arg: 3, scope: !3584, file: !805, line: 62, type: !72)
!3591 = !DILocation(line: 0, scope: !3584, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 219, column: 22, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3524, file: !805, line: 158, column: 9)
!3594 = !DILocalVariable(name: "x", arg: 1, scope: !3595, file: !805, line: 47, type: !3512)
!3595 = distinct !DISubprogram(name: "bkm_scale", scope: !805, file: !805, line: 47, type: !3596, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!3511, !3512, !72}
!3598 = !{!3594, !3599, !3600}
!3599 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3595, file: !805, line: 47, type: !72)
!3600 = !DILocalVariable(name: "scaled", scope: !3595, file: !805, line: 49, type: !113)
!3601 = !DILocation(line: 0, scope: !3595, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3592)
!3603 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3602)
!3604 = distinct !DILexicalBlock(scope: !3595, file: !805, line: 50, column: 7)
!3605 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3602)
!3606 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3592)
!3607 = !DILocation(line: 227, column: 11, scope: !3524)
!3608 = !DILocation(line: 0, scope: !3584, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 215, column: 22, scope: !3593)
!3610 = !DILocation(line: 0, scope: !3595, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3609)
!3612 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3611)
!3613 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3611)
!3614 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3609)
!3615 = !DILocation(line: 0, scope: !3584, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 202, column: 22, scope: !3593)
!3617 = !DILocation(line: 0, scope: !3595, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3616)
!3619 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3618)
!3620 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3618)
!3621 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3616)
!3622 = !DILocation(line: 0, scope: !3584, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 198, column: 22, scope: !3593)
!3624 = !DILocation(line: 0, scope: !3595, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3623)
!3626 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3625)
!3627 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3625)
!3628 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3623)
!3629 = !DILocation(line: 0, scope: !3584, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 194, column: 22, scope: !3593)
!3631 = !DILocation(line: 0, scope: !3595, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3630)
!3633 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3632)
!3634 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3632)
!3635 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3630)
!3636 = !DILocation(line: 0, scope: !3584, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 175, column: 22, scope: !3593)
!3638 = !DILocation(line: 0, scope: !3595, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3637)
!3640 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3639)
!3641 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3639)
!3642 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3637)
!3643 = !DILocation(line: 0, scope: !3595, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 160, column: 22, scope: !3593)
!3645 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3644)
!3646 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3644)
!3647 = !DILocation(line: 161, column: 11, scope: !3593)
!3648 = !DILocation(line: 0, scope: !3595, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 167, column: 22, scope: !3593)
!3650 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3649)
!3651 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3649)
!3652 = !DILocation(line: 168, column: 11, scope: !3593)
!3653 = !DILocation(line: 0, scope: !3584, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 180, column: 22, scope: !3593)
!3655 = !DILocation(line: 0, scope: !3595, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3654)
!3657 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3656)
!3658 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3656)
!3659 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3654)
!3660 = !DILocation(line: 0, scope: !3584, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 185, column: 22, scope: !3593)
!3662 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3661)
!3664 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3663)
!3665 = !DILocation(line: 0, scope: !3595, inlinedAt: !3663)
!3666 = !DILocation(line: 0, scope: !3584, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 190, column: 22, scope: !3593)
!3668 = !DILocation(line: 0, scope: !3595, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3667)
!3670 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3669)
!3671 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3669)
!3672 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3667)
!3673 = !DILocation(line: 0, scope: !3584, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 207, column: 22, scope: !3593)
!3675 = !DILocation(line: 0, scope: !3595, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 66, column: 12, scope: !3584, inlinedAt: !3674)
!3677 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3676)
!3678 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3676)
!3679 = !DILocation(line: 66, column: 9, scope: !3584, inlinedAt: !3674)
!3680 = !DILocation(line: 0, scope: !3595, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 211, column: 22, scope: !3593)
!3682 = !DILocation(line: 50, column: 7, scope: !3604, inlinedAt: !3681)
!3683 = !DILocation(line: 50, column: 7, scope: !3595, inlinedAt: !3681)
!3684 = !DILocation(line: 212, column: 11, scope: !3593)
!3685 = !DILocation(line: 0, scope: !3593)
!3686 = !DILocation(line: 228, column: 10, scope: !3524)
!3687 = !DILocation(line: 229, column: 11, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3524, file: !805, line: 229, column: 11)
!3689 = !DILocation(line: 229, column: 11, scope: !3524)
!3690 = !DILocation(line: 223, column: 16, scope: !3593)
!3691 = !DILocation(line: 224, column: 22, scope: !3593)
!3692 = !DILocation(line: 100, column: 11, scope: !3541)
!3693 = !DILocation(line: 92, column: 16, scope: !3508)
!3694 = !DILocation(line: 233, column: 8, scope: !3508)
!3695 = !DILocation(line: 234, column: 3, scope: !3508)
!3696 = !DILocation(line: 235, column: 1, scope: !3508)
!3697 = !DISubprogram(name: "strtol", scope: !1038, file: !1038, line: 177, type: !3698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!113, !908, !3700, !72}
!3700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3701 = distinct !DISubprogram(name: "close_stream", scope: !811, file: !811, line: 55, type: !3702, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3738)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!72, !3704}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3706, file: !219, line: 51, baseType: !72, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3706, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3706, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3706, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3706, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3706, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3706, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3706, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3706, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3706, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3706, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3706, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3706, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3706, file: !219, line: 70, baseType: !3722, size: 64, offset: 832)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3706, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3706, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3706, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3706, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3706, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3706, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3706, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3706, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3706, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3706, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3706, file: !219, line: 93, baseType: !3722, size: 64, offset: 1344)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3706, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3706, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3706, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3706, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3738 = !{!3739, !3740, !3742, !3743}
!3739 = !DILocalVariable(name: "stream", arg: 1, scope: !3701, file: !811, line: 55, type: !3704)
!3740 = !DILocalVariable(name: "some_pending", scope: !3701, file: !811, line: 57, type: !3741)
!3741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3742 = !DILocalVariable(name: "prev_fail", scope: !3701, file: !811, line: 58, type: !3741)
!3743 = !DILocalVariable(name: "fclose_fail", scope: !3701, file: !811, line: 59, type: !3741)
!3744 = !DILocation(line: 0, scope: !3701)
!3745 = !DILocation(line: 57, column: 30, scope: !3701)
!3746 = !DILocalVariable(name: "__stream", arg: 1, scope: !3747, file: !1180, line: 135, type: !3704)
!3747 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1180, file: !1180, line: 135, type: !3702, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3748)
!3748 = !{!3746}
!3749 = !DILocation(line: 0, scope: !3747, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 58, column: 27, scope: !3701)
!3751 = !DILocation(line: 137, column: 10, scope: !3747, inlinedAt: !3750)
!3752 = !DILocation(line: 58, column: 43, scope: !3701)
!3753 = !DILocation(line: 59, column: 29, scope: !3701)
!3754 = !DILocation(line: 59, column: 45, scope: !3701)
!3755 = !DILocation(line: 69, column: 17, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3701, file: !811, line: 69, column: 7)
!3757 = !DILocation(line: 57, column: 50, scope: !3701)
!3758 = !DILocation(line: 69, column: 33, scope: !3756)
!3759 = !DILocation(line: 69, column: 53, scope: !3756)
!3760 = !DILocation(line: 69, column: 59, scope: !3756)
!3761 = !DILocation(line: 69, column: 7, scope: !3701)
!3762 = !DILocation(line: 71, column: 11, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3756, file: !811, line: 70, column: 5)
!3764 = !DILocation(line: 72, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3763, file: !811, line: 71, column: 11)
!3766 = !DILocation(line: 72, column: 15, scope: !3765)
!3767 = !DILocation(line: 77, column: 1, scope: !3701)
!3768 = !DISubprogram(name: "__fpending", scope: !3769, file: !3769, line: 75, type: !3770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3769 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!147, !3704}
!3772 = distinct !DISubprogram(name: "rpl_fclose", scope: !813, file: !813, line: 58, type: !3773, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3809)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!72, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3777, file: !219, line: 51, baseType: !72, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3777, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3777, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3777, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3777, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3777, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3777, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3777, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3777, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3777, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3777, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3777, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3777, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3777, file: !219, line: 70, baseType: !3793, size: 64, offset: 832)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3777, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3777, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3777, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3777, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3777, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3777, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3777, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3777, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3777, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3777, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3777, file: !219, line: 93, baseType: !3793, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3777, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3777, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3777, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3777, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3809 = !{!3810, !3811, !3812, !3813}
!3810 = !DILocalVariable(name: "fp", arg: 1, scope: !3772, file: !813, line: 58, type: !3775)
!3811 = !DILocalVariable(name: "saved_errno", scope: !3772, file: !813, line: 60, type: !72)
!3812 = !DILocalVariable(name: "fd", scope: !3772, file: !813, line: 63, type: !72)
!3813 = !DILocalVariable(name: "result", scope: !3772, file: !813, line: 74, type: !72)
!3814 = !DILocation(line: 0, scope: !3772)
!3815 = !DILocation(line: 63, column: 12, scope: !3772)
!3816 = !DILocation(line: 64, column: 10, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3772, file: !813, line: 64, column: 7)
!3818 = !DILocation(line: 64, column: 7, scope: !3772)
!3819 = !DILocation(line: 65, column: 12, scope: !3817)
!3820 = !DILocation(line: 65, column: 5, scope: !3817)
!3821 = !DILocation(line: 70, column: 9, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3772, file: !813, line: 70, column: 7)
!3823 = !DILocation(line: 70, column: 23, scope: !3822)
!3824 = !DILocation(line: 70, column: 33, scope: !3822)
!3825 = !DILocation(line: 70, column: 26, scope: !3822)
!3826 = !DILocation(line: 70, column: 59, scope: !3822)
!3827 = !DILocation(line: 71, column: 7, scope: !3822)
!3828 = !DILocation(line: 71, column: 10, scope: !3822)
!3829 = !DILocation(line: 70, column: 7, scope: !3772)
!3830 = !DILocation(line: 100, column: 12, scope: !3772)
!3831 = !DILocation(line: 105, column: 7, scope: !3772)
!3832 = !DILocation(line: 72, column: 19, scope: !3822)
!3833 = !DILocation(line: 105, column: 19, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3772, file: !813, line: 105, column: 7)
!3835 = !DILocation(line: 107, column: 13, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3834, file: !813, line: 106, column: 5)
!3837 = !DILocation(line: 109, column: 5, scope: !3836)
!3838 = !DILocation(line: 112, column: 1, scope: !3772)
!3839 = !DISubprogram(name: "fileno", scope: !435, file: !435, line: 809, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3840 = !DISubprogram(name: "fclose", scope: !435, file: !435, line: 178, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3841 = !DISubprogram(name: "__freading", scope: !3769, file: !3769, line: 51, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3842 = !DISubprogram(name: "lseek", scope: !1226, file: !1226, line: 339, type: !3843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!241, !72, !241, !72}
!3845 = distinct !DISubprogram(name: "rpl_fflush", scope: !815, file: !815, line: 130, type: !3846, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3882)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!72, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3850)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3850, file: !219, line: 51, baseType: !72, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3850, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3850, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3850, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3850, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3850, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3850, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3850, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3850, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3850, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3850, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3850, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3850, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3850, file: !219, line: 70, baseType: !3866, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3850, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3850, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3850, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3850, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3850, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3850, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3850, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3850, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3850, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3850, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3850, file: !219, line: 93, baseType: !3866, size: 64, offset: 1344)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3850, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3850, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3850, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3850, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3882 = !{!3883}
!3883 = !DILocalVariable(name: "stream", arg: 1, scope: !3845, file: !815, line: 130, type: !3848)
!3884 = !DILocation(line: 0, scope: !3845)
!3885 = !DILocation(line: 151, column: 14, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3845, file: !815, line: 151, column: 7)
!3887 = !DILocation(line: 151, column: 22, scope: !3886)
!3888 = !DILocation(line: 151, column: 27, scope: !3886)
!3889 = !DILocation(line: 151, column: 7, scope: !3845)
!3890 = !DILocation(line: 152, column: 12, scope: !3886)
!3891 = !DILocation(line: 152, column: 5, scope: !3886)
!3892 = !DILocalVariable(name: "fp", arg: 1, scope: !3893, file: !815, line: 42, type: !3848)
!3893 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !815, file: !815, line: 42, type: !3894, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3848}
!3896 = !{!3892}
!3897 = !DILocation(line: 0, scope: !3893, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 157, column: 3, scope: !3845)
!3899 = !DILocation(line: 44, column: 12, scope: !3900, inlinedAt: !3898)
!3900 = distinct !DILexicalBlock(scope: !3893, file: !815, line: 44, column: 7)
!3901 = !DILocation(line: 44, column: 19, scope: !3900, inlinedAt: !3898)
!3902 = !DILocation(line: 44, column: 7, scope: !3893, inlinedAt: !3898)
!3903 = !DILocation(line: 46, column: 5, scope: !3900, inlinedAt: !3898)
!3904 = !DILocation(line: 159, column: 10, scope: !3845)
!3905 = !DILocation(line: 159, column: 3, scope: !3845)
!3906 = !DILocation(line: 236, column: 1, scope: !3845)
!3907 = !DISubprogram(name: "fflush", scope: !435, file: !435, line: 230, type: !3846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3908 = distinct !DISubprogram(name: "rpl_fseeko", scope: !817, file: !817, line: 28, type: !3909, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !3946)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!72, !3911, !3945, !72}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3913)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3913, file: !219, line: 51, baseType: !72, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3913, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3913, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3913, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3913, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3913, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3913, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3913, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3913, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3913, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3913, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3913, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3913, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3913, file: !219, line: 70, baseType: !3929, size: 64, offset: 832)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3913, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3913, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3913, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3913, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3913, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3913, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3913, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3913, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3913, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3913, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3913, file: !219, line: 93, baseType: !3929, size: 64, offset: 1344)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3913, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3913, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3913, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3913, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !435, line: 63, baseType: !241)
!3946 = !{!3947, !3948, !3949, !3950}
!3947 = !DILocalVariable(name: "fp", arg: 1, scope: !3908, file: !817, line: 28, type: !3911)
!3948 = !DILocalVariable(name: "offset", arg: 2, scope: !3908, file: !817, line: 28, type: !3945)
!3949 = !DILocalVariable(name: "whence", arg: 3, scope: !3908, file: !817, line: 28, type: !72)
!3950 = !DILocalVariable(name: "pos", scope: !3951, file: !817, line: 123, type: !3945)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !817, line: 119, column: 5)
!3952 = distinct !DILexicalBlock(scope: !3908, file: !817, line: 55, column: 7)
!3953 = !DILocation(line: 0, scope: !3908)
!3954 = !DILocation(line: 55, column: 12, scope: !3952)
!3955 = !{!1188, !847, i64 16}
!3956 = !DILocation(line: 55, column: 33, scope: !3952)
!3957 = !{!1188, !847, i64 8}
!3958 = !DILocation(line: 55, column: 25, scope: !3952)
!3959 = !DILocation(line: 56, column: 7, scope: !3952)
!3960 = !DILocation(line: 56, column: 15, scope: !3952)
!3961 = !DILocation(line: 56, column: 37, scope: !3952)
!3962 = !{!1188, !847, i64 32}
!3963 = !DILocation(line: 56, column: 29, scope: !3952)
!3964 = !DILocation(line: 57, column: 7, scope: !3952)
!3965 = !DILocation(line: 57, column: 15, scope: !3952)
!3966 = !{!1188, !847, i64 72}
!3967 = !DILocation(line: 57, column: 29, scope: !3952)
!3968 = !DILocation(line: 55, column: 7, scope: !3908)
!3969 = !DILocation(line: 123, column: 26, scope: !3951)
!3970 = !DILocation(line: 123, column: 19, scope: !3951)
!3971 = !DILocation(line: 0, scope: !3951)
!3972 = !DILocation(line: 124, column: 15, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3951, file: !817, line: 124, column: 11)
!3974 = !DILocation(line: 124, column: 11, scope: !3951)
!3975 = !DILocation(line: 135, column: 19, scope: !3951)
!3976 = !DILocation(line: 136, column: 12, scope: !3951)
!3977 = !DILocation(line: 136, column: 20, scope: !3951)
!3978 = !{!1188, !1189, i64 144}
!3979 = !DILocation(line: 167, column: 7, scope: !3951)
!3980 = !DILocation(line: 169, column: 10, scope: !3908)
!3981 = !DILocation(line: 169, column: 3, scope: !3908)
!3982 = !DILocation(line: 170, column: 1, scope: !3908)
!3983 = !DISubprogram(name: "fseeko", scope: !435, file: !435, line: 736, type: !3984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!72, !3911, !241, !72}
!3986 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !737, file: !737, line: 100, type: !3987, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3990)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!147, !1573, !96, !147, !3989}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!3990 = !{!3991, !3992, !3993, !3994, !3995}
!3991 = !DILocalVariable(name: "pwc", arg: 1, scope: !3986, file: !737, line: 100, type: !1573)
!3992 = !DILocalVariable(name: "s", arg: 2, scope: !3986, file: !737, line: 100, type: !96)
!3993 = !DILocalVariable(name: "n", arg: 3, scope: !3986, file: !737, line: 100, type: !147)
!3994 = !DILocalVariable(name: "ps", arg: 4, scope: !3986, file: !737, line: 100, type: !3989)
!3995 = !DILocalVariable(name: "ret", scope: !3986, file: !737, line: 130, type: !147)
!3996 = !DILocation(line: 0, scope: !3986)
!3997 = !DILocation(line: 105, column: 9, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3986, file: !737, line: 105, column: 7)
!3999 = !DILocation(line: 105, column: 7, scope: !3986)
!4000 = !DILocation(line: 117, column: 10, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3986, file: !737, line: 117, column: 7)
!4002 = !DILocation(line: 117, column: 7, scope: !3986)
!4003 = !DILocation(line: 130, column: 16, scope: !3986)
!4004 = !DILocation(line: 135, column: 11, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3986, file: !737, line: 135, column: 7)
!4006 = !DILocation(line: 135, column: 25, scope: !4005)
!4007 = !DILocation(line: 135, column: 30, scope: !4005)
!4008 = !DILocation(line: 135, column: 7, scope: !3986)
!4009 = !DILocalVariable(name: "ps", arg: 1, scope: !4010, file: !1546, line: 1135, type: !3989)
!4010 = distinct !DISubprogram(name: "mbszero", scope: !1546, file: !1546, line: 1135, type: !4011, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3989}
!4013 = !{!4009}
!4014 = !DILocation(line: 0, scope: !4010, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 137, column: 5, scope: !4005)
!4016 = !DILocalVariable(name: "__dest", arg: 1, scope: !4017, file: !1555, line: 57, type: !145)
!4017 = distinct !DISubprogram(name: "memset", scope: !1555, file: !1555, line: 57, type: !1556, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !4018)
!4018 = !{!4016, !4019, !4020}
!4019 = !DILocalVariable(name: "__ch", arg: 2, scope: !4017, file: !1555, line: 57, type: !72)
!4020 = !DILocalVariable(name: "__len", arg: 3, scope: !4017, file: !1555, line: 57, type: !147)
!4021 = !DILocation(line: 0, scope: !4017, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 1137, column: 3, scope: !4010, inlinedAt: !4015)
!4023 = !DILocation(line: 59, column: 10, scope: !4017, inlinedAt: !4022)
!4024 = !DILocation(line: 137, column: 5, scope: !4005)
!4025 = !DILocation(line: 138, column: 11, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !3986, file: !737, line: 138, column: 7)
!4027 = !DILocation(line: 138, column: 7, scope: !3986)
!4028 = !DILocation(line: 139, column: 5, scope: !4026)
!4029 = !DILocation(line: 143, column: 26, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3986, file: !737, line: 143, column: 7)
!4031 = !DILocation(line: 143, column: 41, scope: !4030)
!4032 = !DILocation(line: 143, column: 7, scope: !3986)
!4033 = !DILocation(line: 145, column: 15, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !737, line: 145, column: 11)
!4035 = distinct !DILexicalBlock(scope: !4030, file: !737, line: 144, column: 5)
!4036 = !DILocation(line: 145, column: 11, scope: !4035)
!4037 = !DILocation(line: 146, column: 32, scope: !4034)
!4038 = !DILocation(line: 146, column: 16, scope: !4034)
!4039 = !DILocation(line: 146, column: 14, scope: !4034)
!4040 = !DILocation(line: 146, column: 9, scope: !4034)
!4041 = !DILocation(line: 286, column: 1, scope: !3986)
!4042 = !DISubprogram(name: "mbsinit", scope: !4043, file: !4043, line: 293, type: !4044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4043 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!72, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!4048 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !819, file: !819, line: 27, type: !3065, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4049)
!4049 = !{!4050, !4051, !4052, !4053}
!4050 = !DILocalVariable(name: "ptr", arg: 1, scope: !4048, file: !819, line: 27, type: !145)
!4051 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4048, file: !819, line: 27, type: !147)
!4052 = !DILocalVariable(name: "size", arg: 3, scope: !4048, file: !819, line: 27, type: !147)
!4053 = !DILocalVariable(name: "nbytes", scope: !4048, file: !819, line: 29, type: !147)
!4054 = !DILocation(line: 0, scope: !4048)
!4055 = !DILocation(line: 30, column: 7, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4048, file: !819, line: 30, column: 7)
!4057 = !DILocation(line: 30, column: 7, scope: !4048)
!4058 = !DILocation(line: 32, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4056, file: !819, line: 31, column: 5)
!4060 = !DILocation(line: 32, column: 13, scope: !4059)
!4061 = !DILocation(line: 33, column: 7, scope: !4059)
!4062 = !DILocalVariable(name: "ptr", arg: 1, scope: !4063, file: !3157, line: 2057, type: !145)
!4063 = distinct !DISubprogram(name: "rpl_realloc", scope: !3157, file: !3157, line: 2057, type: !3149, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4064)
!4064 = !{!4062, !4065}
!4065 = !DILocalVariable(name: "size", arg: 2, scope: !4063, file: !3157, line: 2057, type: !147)
!4066 = !DILocation(line: 0, scope: !4063, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 37, column: 10, scope: !4048)
!4068 = !DILocation(line: 2059, column: 24, scope: !4063, inlinedAt: !4067)
!4069 = !DILocation(line: 2059, column: 10, scope: !4063, inlinedAt: !4067)
!4070 = !DILocation(line: 37, column: 3, scope: !4048)
!4071 = !DILocation(line: 38, column: 1, scope: !4048)
!4072 = distinct !DISubprogram(name: "hard_locale", scope: !755, file: !755, line: 28, type: !1095, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4073)
!4073 = !{!4074, !4075}
!4074 = !DILocalVariable(name: "category", arg: 1, scope: !4072, file: !755, line: 28, type: !72)
!4075 = !DILocalVariable(name: "locale", scope: !4072, file: !755, line: 30, type: !4076)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4077)
!4077 = !{!4078}
!4078 = !DISubrange(count: 257)
!4079 = distinct !DIAssignID()
!4080 = !DILocation(line: 0, scope: !4072)
!4081 = !DILocation(line: 30, column: 3, scope: !4072)
!4082 = !DILocation(line: 32, column: 7, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4072, file: !755, line: 32, column: 7)
!4084 = !DILocation(line: 32, column: 7, scope: !4072)
!4085 = !DILocalVariable(name: "__s1", arg: 1, scope: !4086, file: !930, line: 1359, type: !96)
!4086 = distinct !DISubprogram(name: "streq", scope: !930, file: !930, line: 1359, type: !931, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4087)
!4087 = !{!4085, !4088}
!4088 = !DILocalVariable(name: "__s2", arg: 2, scope: !4086, file: !930, line: 1359, type: !96)
!4089 = !DILocation(line: 0, scope: !4086, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 35, column: 9, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4072, file: !755, line: 35, column: 7)
!4092 = !DILocation(line: 1361, column: 11, scope: !4086, inlinedAt: !4090)
!4093 = !DILocation(line: 1361, column: 10, scope: !4086, inlinedAt: !4090)
!4094 = !DILocation(line: 35, column: 29, scope: !4091)
!4095 = !DILocation(line: 0, scope: !4086, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 35, column: 32, scope: !4091)
!4097 = !DILocation(line: 1361, column: 11, scope: !4086, inlinedAt: !4096)
!4098 = !DILocation(line: 1361, column: 10, scope: !4086, inlinedAt: !4096)
!4099 = !DILocation(line: 35, column: 7, scope: !4072)
!4100 = !DILocation(line: 46, column: 3, scope: !4072)
!4101 = !DILocation(line: 47, column: 1, scope: !4072)
!4102 = distinct !DISubprogram(name: "setlocale_null_r", scope: !823, file: !823, line: 154, type: !4103, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!72, !72, !89, !147}
!4105 = !{!4106, !4107, !4108}
!4106 = !DILocalVariable(name: "category", arg: 1, scope: !4102, file: !823, line: 154, type: !72)
!4107 = !DILocalVariable(name: "buf", arg: 2, scope: !4102, file: !823, line: 154, type: !89)
!4108 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4102, file: !823, line: 154, type: !147)
!4109 = !DILocation(line: 0, scope: !4102)
!4110 = !DILocation(line: 159, column: 10, scope: !4102)
!4111 = !DILocation(line: 159, column: 3, scope: !4102)
!4112 = distinct !DISubprogram(name: "setlocale_null", scope: !823, file: !823, line: 186, type: !4113, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!96, !72}
!4115 = !{!4116}
!4116 = !DILocalVariable(name: "category", arg: 1, scope: !4112, file: !823, line: 186, type: !72)
!4117 = !DILocation(line: 0, scope: !4112)
!4118 = !DILocation(line: 189, column: 10, scope: !4112)
!4119 = !DILocation(line: 189, column: 3, scope: !4112)
!4120 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !825, file: !825, line: 35, type: !4113, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4121)
!4121 = !{!4122, !4123}
!4122 = !DILocalVariable(name: "category", arg: 1, scope: !4120, file: !825, line: 35, type: !72)
!4123 = !DILocalVariable(name: "result", scope: !4120, file: !825, line: 37, type: !96)
!4124 = !DILocation(line: 0, scope: !4120)
!4125 = !DILocation(line: 37, column: 24, scope: !4120)
!4126 = !DILocation(line: 62, column: 3, scope: !4120)
!4127 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !825, file: !825, line: 66, type: !4103, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4128)
!4128 = !{!4129, !4130, !4131, !4132, !4133}
!4129 = !DILocalVariable(name: "category", arg: 1, scope: !4127, file: !825, line: 66, type: !72)
!4130 = !DILocalVariable(name: "buf", arg: 2, scope: !4127, file: !825, line: 66, type: !89)
!4131 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4127, file: !825, line: 66, type: !147)
!4132 = !DILocalVariable(name: "result", scope: !4127, file: !825, line: 111, type: !96)
!4133 = !DILocalVariable(name: "length", scope: !4134, file: !825, line: 125, type: !147)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !825, line: 124, column: 5)
!4135 = distinct !DILexicalBlock(scope: !4127, file: !825, line: 113, column: 7)
!4136 = !DILocation(line: 0, scope: !4127)
!4137 = !DILocation(line: 0, scope: !4120, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 111, column: 24, scope: !4127)
!4139 = !DILocation(line: 37, column: 24, scope: !4120, inlinedAt: !4138)
!4140 = !DILocation(line: 113, column: 14, scope: !4135)
!4141 = !DILocation(line: 113, column: 7, scope: !4127)
!4142 = !DILocation(line: 116, column: 19, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !825, line: 116, column: 11)
!4144 = distinct !DILexicalBlock(scope: !4135, file: !825, line: 114, column: 5)
!4145 = !DILocation(line: 116, column: 11, scope: !4144)
!4146 = !DILocation(line: 120, column: 16, scope: !4143)
!4147 = !DILocation(line: 120, column: 9, scope: !4143)
!4148 = !DILocation(line: 125, column: 23, scope: !4134)
!4149 = !DILocation(line: 0, scope: !4134)
!4150 = !DILocation(line: 126, column: 18, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4134, file: !825, line: 126, column: 11)
!4152 = !DILocation(line: 126, column: 11, scope: !4134)
!4153 = !DILocation(line: 128, column: 39, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4151, file: !825, line: 127, column: 9)
!4155 = !DILocalVariable(name: "__dest", arg: 1, scope: !4156, file: !1555, line: 26, type: !3427)
!4156 = distinct !DISubprogram(name: "memcpy", scope: !1555, file: !1555, line: 26, type: !3425, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4157)
!4157 = !{!4155, !4158, !4159}
!4158 = !DILocalVariable(name: "__src", arg: 2, scope: !4156, file: !1555, line: 26, type: !1061)
!4159 = !DILocalVariable(name: "__len", arg: 3, scope: !4156, file: !1555, line: 26, type: !147)
!4160 = !DILocation(line: 0, scope: !4156, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 128, column: 11, scope: !4154)
!4162 = !DILocation(line: 29, column: 10, scope: !4156, inlinedAt: !4161)
!4163 = !DILocation(line: 129, column: 11, scope: !4154)
!4164 = !DILocation(line: 133, column: 23, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !825, line: 133, column: 15)
!4166 = distinct !DILexicalBlock(scope: !4151, file: !825, line: 132, column: 9)
!4167 = !DILocation(line: 133, column: 15, scope: !4166)
!4168 = !DILocation(line: 138, column: 44, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4165, file: !825, line: 134, column: 13)
!4170 = !DILocation(line: 0, scope: !4156, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 138, column: 15, scope: !4169)
!4172 = !DILocation(line: 29, column: 10, scope: !4156, inlinedAt: !4171)
!4173 = !DILocation(line: 139, column: 15, scope: !4169)
!4174 = !DILocation(line: 139, column: 32, scope: !4169)
!4175 = !DILocation(line: 140, column: 13, scope: !4169)
!4176 = !DILocation(line: 0, scope: !4135)
!4177 = !DILocation(line: 145, column: 1, scope: !4127)
