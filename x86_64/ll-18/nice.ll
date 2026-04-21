; ModuleID = 'src/nice.bc'
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
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.57, i32 1, ptr null, i32 110 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !59
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !419
@.str.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !411
@.str.1.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !413
@.str.2.30 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !415
@.str.3.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !417
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !421
@stderr = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !427
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !458
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !429
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !448
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !450
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !452
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !454
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !456
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !460
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !462
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !467
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !472
@.str.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !478
@.str.1.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !480
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !482
@.str.60 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !513
@.str.1.61 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !516
@.str.2.62 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !518
@.str.3.63 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !523
@.str.4.64 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !525
@.str.5.65 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !527
@.str.6.66 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !529
@.str.7.67 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !531
@.str.8.68 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !533
@.str.9.69 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !535
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.60, ptr @.str.1.61, ptr @.str.2.62, ptr @.str.3.63, ptr @.str.4.64, ptr @.str.5.65, ptr @.str.6.66, ptr @.str.7.67, ptr @.str.8.68, ptr @.str.9.69, ptr null], align 16, !dbg !537
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !562
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !576
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !614
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !621
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !578
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !623
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !566
@.str.10.72 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !583
@.str.11.70 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !585
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !587
@.str.13.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !589
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !591
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !627
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !630
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !632
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !634
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !636
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !638
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !643
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !648
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !650
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !655
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !660
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !665
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !670
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !672
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !677
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !682
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !687
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !692
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !694
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !696
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !698
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !700
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !702
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !704
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !709
@exit_failure = dso_local global i32 1, align 4, !dbg !717
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !723
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !726
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !728
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !730
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !733
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !748

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !829 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !833, metadata !DIExpression()), !dbg !834
  %2 = icmp eq i32 %0, 0, !dbg !835
  br i1 %2, label %8, label %3, !dbg !837

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !838, !tbaa !840
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !838
  %6 = load ptr, ptr @program_name, align 8, !dbg !838, !tbaa !840
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !838
  br label %38, !dbg !838

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !844
  %10 = load ptr, ptr @program_name, align 8, !dbg !844, !tbaa !840
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !844
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !846
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef -20, i32 noundef 19) #39, !dbg !846
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !847
  %15 = load ptr, ptr @stdout, align 8, !dbg !847, !tbaa !840
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !847
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !850
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !850
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !851
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !851
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !852
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !852
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !853
  %21 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %20, ptr noundef nonnull @.str.3) #39, !dbg !853
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !854, metadata !DIExpression()), !dbg !859
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !861
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #39, !dbg !861
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata !879, metadata !873, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr poison, metadata !872, metadata !DIExpression()), !dbg !877
  tail call void @emit_bug_reporting_address() #39, !dbg !880
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !881
  call void @llvm.dbg.value(metadata ptr %24, metadata !875, metadata !DIExpression()), !dbg !877
  %25 = icmp eq ptr %24, null, !dbg !882
  br i1 %25, label %33, label %26, !dbg !884

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #40, !dbg !885
  %28 = icmp eq i32 %27, 0, !dbg !885
  br i1 %28, label %33, label %29, !dbg !886

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #39, !dbg !887
  %31 = load ptr, ptr @stdout, align 8, !dbg !887, !tbaa !840
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !887
  br label %33, !dbg !889

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !876, metadata !DIExpression()), !dbg !877
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !890
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3) #39, !dbg !890
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #39, !dbg !891
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #39, !dbg !891
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !892
  unreachable, !dbg !892
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !893 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !897 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !903 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !906 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !193 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !197, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !198, metadata !DIExpression()), !dbg !910
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !911, !tbaa !912
  %3 = icmp eq i32 %2, -1, !dbg !914
  br i1 %3, label %4, label %16, !dbg !915

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.21) #39, !dbg !916
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !199, metadata !DIExpression()), !dbg !917
  %6 = icmp eq ptr %5, null, !dbg !918
  br i1 %6, label %14, label %7, !dbg !919

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !920, !tbaa !921
  %9 = icmp eq i8 %8, 0, !dbg !920
  br i1 %9, label %14, label %10, !dbg !922

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !923, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata ptr @.str.22, metadata !929, metadata !DIExpression()), !dbg !930
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.22) #40, !dbg !932
  %12 = icmp eq i32 %11, 0, !dbg !933
  %13 = zext i1 %12 to i32, !dbg !922
  br label %14, !dbg !922

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !934, !tbaa !912
  br label %16, !dbg !935

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !936
  %18 = icmp eq i32 %17, 0, !dbg !936
  br i1 %18, label %22, label %19, !dbg !938

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !939, !tbaa !840
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !939
  br label %124, !dbg !941

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !202, metadata !DIExpression()), !dbg !910
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.23) #40, !dbg !942
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !943
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !203, metadata !DIExpression()), !dbg !910
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !944
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !204, metadata !DIExpression()), !dbg !910
  %26 = icmp eq ptr %25, null, !dbg !945
  br i1 %26, label %54, label %27, !dbg !946

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !947
  br i1 %28, label %54, label %29, !dbg !948

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !205, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i64 0, metadata !209, metadata !DIExpression()), !dbg !949
  %30 = icmp ult ptr %24, %25, !dbg !950
  br i1 %30, label %31, label %54, !dbg !951

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !910
  %33 = load ptr, ptr %32, align 8, !tbaa !840
  br label %34, !dbg !951

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !205, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !209, metadata !DIExpression()), !dbg !949
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !952
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !205, metadata !DIExpression()), !dbg !949
  %38 = load i8, ptr %35, align 1, !dbg !952, !tbaa !921
  %39 = sext i8 %38 to i64, !dbg !952
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !952
  %41 = load i16, ptr %40, align 2, !dbg !952, !tbaa !953
  %42 = freeze i16 %41, !dbg !955
  %43 = lshr i16 %42, 13, !dbg !955
  %44 = and i16 %43, 1, !dbg !955
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !956
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !209, metadata !DIExpression()), !dbg !949
  %47 = icmp ult ptr %37, %25, !dbg !950
  %48 = icmp ult i64 %46, 2, !dbg !957
  %49 = select i1 %47, i1 %48, i1 false, !dbg !957
  br i1 %49, label %34, label %50, !dbg !951, !llvm.loop !958

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !960
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !962
  %53 = zext i1 %51 to i8, !dbg !962
  br label %54, !dbg !962

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !910
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !910
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !202, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !204, metadata !DIExpression()), !dbg !910
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.24) #40, !dbg !963
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !210, metadata !DIExpression()), !dbg !910
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !964
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !211, metadata !DIExpression()), !dbg !910
  br label %59, !dbg !965

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !910
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !910
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !202, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !211, metadata !DIExpression()), !dbg !910
  %62 = load i8, ptr %60, align 1, !dbg !966, !tbaa !921
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !967

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !968
  %65 = load i8, ptr %64, align 1, !dbg !971, !tbaa !921
  %66 = icmp eq i8 %65, 45, !dbg !972
  %67 = select i1 %66, i8 0, i8 %61, !dbg !973
  br label %68, !dbg !973

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !910
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !202, metadata !DIExpression()), !dbg !910
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !974
  %71 = load ptr, ptr %70, align 8, !dbg !974, !tbaa !840
  %72 = sext i8 %62 to i64, !dbg !974
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !974
  %74 = load i16, ptr %73, align 2, !dbg !974, !tbaa !953
  %75 = and i16 %74, 8192, !dbg !974
  %76 = icmp eq i16 %75, 0, !dbg !974
  br i1 %76, label %92, label %77, !dbg !976

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !977
  br i1 %78, label %94, label %79, !dbg !980

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !981
  %81 = load i8, ptr %80, align 1, !dbg !981, !tbaa !921
  %82 = sext i8 %81 to i64, !dbg !981
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !981
  %84 = load i16, ptr %83, align 2, !dbg !981, !tbaa !953
  %85 = and i16 %84, 8192, !dbg !981
  %86 = icmp eq i16 %85, 0, !dbg !981
  br i1 %86, label %87, label %94, !dbg !982

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !983
  %89 = icmp ne i8 %88, 0, !dbg !983
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !985
  br i1 %91, label %92, label %94, !dbg !985

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !986
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !211, metadata !DIExpression()), !dbg !910
  br label %59, !dbg !965, !llvm.loop !987

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !989
  %96 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !840
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata !879, metadata !929, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !264, metadata !DIExpression()), !dbg !910
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.38, i64 noundef 6) #40, !dbg !1010
  %99 = icmp eq i32 %98, 0, !dbg !1010
  br i1 %99, label %103, label %100, !dbg !1012

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.39, i64 noundef 9) #40, !dbg !1013
  %102 = icmp eq i32 %101, 0, !dbg !1013
  br i1 %102, label %103, label %106, !dbg !1014

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1015
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #39, !dbg !1015
  br label %109, !dbg !1017

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1018
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #39, !dbg !1018
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !840
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %110), !dbg !1020
  %112 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !840
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %112), !dbg !1021
  %114 = ptrtoint ptr %60 to i64, !dbg !1022
  %115 = sub i64 %114, %95, !dbg !1022
  %116 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !840
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1022
  %118 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !840
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %118), !dbg !1023
  %120 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !840
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %120), !dbg !1024
  %122 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !840
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1025
  br label %124, !dbg !1026

124:                                              ; preds = %109, %19
  ret void, !dbg !1026
}

; Function Attrs: nounwind
declare !dbg !1027 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1031 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1035 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1037 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1040 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1043 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1046 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1049 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1055 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1056 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !85 {
  %3 = alloca i64, align 8, !DIAssignID !1062
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !1062, metadata ptr %3, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !91, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !92, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata i32 10, metadata !94, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata ptr null, metadata !95, metadata !DIExpression()), !dbg !1064
  %4 = load ptr, ptr %1, align 8, !dbg !1065, !tbaa !840
  tail call void @set_program_name(ptr noundef %4) #39, !dbg !1066
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1067
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1068
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1069
  tail call void @llvm.dbg.value(metadata i32 125, metadata !1070, metadata !DIExpression()), !dbg !1073
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1075, !tbaa !912
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 1, metadata !100, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata ptr null, metadata !95, metadata !DIExpression()), !dbg !1064
  %9 = icmp sgt i32 %0, 1, !dbg !1078
  br i1 %9, label %10, label %63, !dbg !1079

10:                                               ; preds = %2, %49
  %11 = phi ptr [ %51, %49 ], [ null, %2 ]
  %12 = phi i32 [ %50, %49 ], [ 1, %2 ]
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !95, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !100, metadata !DIExpression()), !dbg !1064
  %13 = sext i32 %12 to i64, !dbg !1080
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !1080
  %15 = load ptr, ptr %14, align 8, !dbg !1080, !tbaa !840
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !101, metadata !DIExpression()), !dbg !1081
  %16 = load i8, ptr %15, align 1, !dbg !1082, !tbaa !921
  %17 = icmp eq i8 %16, 45, !dbg !1083
  br i1 %17, label %18, label %32, !dbg !1084

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1085
  %20 = load i8, ptr %19, align 1, !dbg !1085, !tbaa !921
  %21 = icmp eq i8 %20, 45, !dbg !1086
  %22 = icmp eq i8 %20, 43
  %23 = or i1 %21, %22, !dbg !1087
  %24 = select i1 %23, i64 2, i64 1, !dbg !1088
  %25 = getelementptr inbounds i8, ptr %15, i64 %24, !dbg !1089
  %26 = load i8, ptr %25, align 1, !dbg !1089, !tbaa !921
  %27 = sext i8 %26 to i32, !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1090, metadata !DIExpression()), !dbg !1096
  %28 = add nsw i32 %27, -48, !dbg !1098
  %29 = icmp ult i32 %28, 10, !dbg !1098
  br i1 %29, label %30, label %32, !dbg !1099

30:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !95, metadata !DIExpression()), !dbg !1064
  %31 = add nsw i32 %12, 1, !dbg !1100
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !100, metadata !DIExpression()), !dbg !1064
  br label %49, !dbg !1102

32:                                               ; preds = %18, %10
  %33 = add i32 %12, -1, !dbg !1103
  %34 = sub nsw i32 %0, %33, !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !108, metadata !DIExpression()), !dbg !1105
  %35 = sext i32 %33 to i64, !dbg !1106
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35, !dbg !1106
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !109, metadata !DIExpression()), !dbg !1105
  %37 = load ptr, ptr %1, align 8, !dbg !1107, !tbaa !840
  store ptr %37, ptr %36, align 8, !dbg !1108, !tbaa !840
  store i32 0, ptr @optind, align 4, !dbg !1109, !tbaa !912
  %38 = tail call i32 @getopt_long(i32 noundef %34, ptr noundef nonnull %36, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1110
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !105, metadata !DIExpression()), !dbg !1105
  %39 = load i32, ptr @optind, align 4, !dbg !1111, !tbaa !912
  %40 = add i32 %33, %39, !dbg !1112
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !100, metadata !DIExpression()), !dbg !1064
  switch i32 %38, label %46 [
    i32 110, label %47
    i32 -1, label %53
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !1113

41:                                               ; preds = %32
  tail call void @usage(i32 noundef 0) #43, !dbg !1114
  unreachable, !dbg !1114

42:                                               ; preds = %32
  %43 = load ptr, ptr @stdout, align 8, !dbg !1116, !tbaa !840
  %44 = load ptr, ptr @Version, align 8, !dbg !1116, !tbaa !840
  %45 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1116
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %44, ptr noundef %45, ptr noundef null) #39, !dbg !1116
  tail call void @exit(i32 noundef 0) #41, !dbg !1116
  unreachable, !dbg !1116

46:                                               ; preds = %32
  tail call void @usage(i32 noundef 125) #43, !dbg !1117
  unreachable, !dbg !1117

47:                                               ; preds = %32
  %48 = load ptr, ptr @optarg, align 8, !dbg !1118, !tbaa !840
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !95, metadata !DIExpression()), !dbg !1064
  br label %49

49:                                               ; preds = %47, %30
  %50 = phi i32 [ %31, %30 ], [ %40, %47 ], !dbg !1119
  %51 = phi ptr [ %19, %30 ], [ %48, %47 ], !dbg !1064
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !95, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !100, metadata !DIExpression()), !dbg !1064
  %52 = icmp slt i32 %50, %0, !dbg !1078
  br i1 %52, label %10, label %53, !dbg !1079

53:                                               ; preds = %49, %32
  %54 = phi ptr [ %51, %49 ], [ %11, %32 ], !dbg !1064
  %55 = phi i32 [ %50, %49 ], [ %40, %32 ], !dbg !1120
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !95, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !100, metadata !DIExpression()), !dbg !1064
  %56 = icmp eq ptr %54, null, !dbg !1121
  br i1 %56, label %63, label %57, !dbg !1122

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1123
  %58 = call i32 @xstrtol(ptr noundef nonnull %54, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #39, !dbg !1124
  %59 = icmp ugt i32 %58, 1, !dbg !1126
  br i1 %59, label %60, label %66, !dbg !1127

60:                                               ; preds = %57
  %61 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1128
  %62 = call ptr @quote(ptr noundef nonnull %54) #39, !dbg !1128
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %61, ptr noundef %62) #39, !dbg !1128
  unreachable, !dbg !1128

63:                                               ; preds = %2, %53
  %64 = phi i32 [ %55, %53 ], [ 1, %2 ]
  tail call void @llvm.dbg.value(metadata i32 10, metadata !94, metadata !DIExpression()), !dbg !1064
  %65 = icmp eq i32 %64, %0, !dbg !1129
  br i1 %65, label %74, label %85, !dbg !1131

66:                                               ; preds = %57
  %67 = load i64, ptr %3, align 8, !dbg !1132
  %68 = call i64 @llvm.smin.i64(i64 %67, i64 39), !dbg !1132
  %69 = call i64 @llvm.smax.i64(i64 %68, i64 -39), !dbg !1132
  %70 = trunc i64 %69 to i32, !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !94, metadata !DIExpression()), !dbg !1064
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1133
  %71 = icmp eq i32 %55, %0, !dbg !1129
  br i1 %71, label %72, label %85, !dbg !1131

72:                                               ; preds = %66
  %73 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1134
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %73) #39, !dbg !1134
  call void @usage(i32 noundef 125) #43, !dbg !1138
  unreachable, !dbg !1138

74:                                               ; preds = %63
  %75 = tail call ptr @__errno_location() #42, !dbg !1139
  store i32 0, ptr %75, align 4, !dbg !1140, !tbaa !912
  %76 = tail call i32 @getpriority(i32 noundef 0, i32 noundef 0) #39, !dbg !1141
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !93, metadata !DIExpression()), !dbg !1064
  %77 = icmp eq i32 %76, -1, !dbg !1142
  br i1 %77, label %78, label %83, !dbg !1144

78:                                               ; preds = %74
  %79 = load i32, ptr %75, align 4, !dbg !1145, !tbaa !912
  %80 = icmp eq i32 %79, 0, !dbg !1146
  br i1 %80, label %83, label %81, !dbg !1147

81:                                               ; preds = %78
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1148
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %79, ptr noundef %82) #39, !dbg !1148
  unreachable, !dbg !1148

83:                                               ; preds = %78, %74
  %84 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %76) #39, !dbg !1149
  br label %121, !dbg !1150

85:                                               ; preds = %66, %63
  %86 = phi i32 [ %55, %66 ], [ %64, %63 ]
  %87 = phi i32 [ %70, %66 ], [ 10, %63 ]
  %88 = tail call ptr @__errno_location() #42, !dbg !1151
  store i32 0, ptr %88, align 4, !dbg !1152, !tbaa !912
  %89 = call i32 @getpriority(i32 noundef 0, i32 noundef 0) #39, !dbg !1153
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !93, metadata !DIExpression()), !dbg !1064
  %90 = icmp eq i32 %89, -1, !dbg !1154
  br i1 %90, label %91, label %96, !dbg !1156

91:                                               ; preds = %85
  %92 = load i32, ptr %88, align 4, !dbg !1157, !tbaa !912
  %93 = icmp eq i32 %92, 0, !dbg !1158
  br i1 %93, label %96, label %94, !dbg !1159

94:                                               ; preds = %91
  %95 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1160
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %92, ptr noundef %95) #39, !dbg !1160
  unreachable, !dbg !1160

96:                                               ; preds = %91, %85
  %97 = add nsw i32 %89, %87, !dbg !1161
  %98 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %97) #39, !dbg !1162
  %99 = icmp eq i32 %98, 0, !dbg !1163
  tail call void @llvm.dbg.value(metadata i1 %99, metadata !98, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1064
  br i1 %99, label %111, label %100, !dbg !1164

100:                                              ; preds = %96
  %101 = load i32, ptr %88, align 4, !dbg !1165, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !1166, metadata !DIExpression()), !dbg !1169
  %102 = icmp eq i32 %101, 13, !dbg !1171
  %103 = icmp eq i32 %101, 1, !dbg !1172
  %104 = or i1 %102, %103, !dbg !1172
  %105 = select i1 %104, i32 0, i32 125, !dbg !1165
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !114, metadata !DIExpression()), !dbg !1173
  %106 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1165
  call void (i32, i32, ptr, ...) @error(i32 noundef %105, i32 noundef %101, ptr noundef %106) #39, !dbg !1165
  call void @llvm.assume(i1 %104), !dbg !1165
  %107 = load ptr, ptr @stderr, align 8, !dbg !1174, !tbaa !840
  tail call void @llvm.dbg.value(metadata ptr %107, metadata !1176, metadata !DIExpression()), !dbg !1182
  %108 = load i32, ptr %107, align 8, !dbg !1184, !tbaa !1185
  %109 = and i32 %108, 32, !dbg !1174
  %110 = icmp eq i32 %109, 0, !dbg !1174
  br i1 %110, label %111, label %121, !dbg !1188

111:                                              ; preds = %100, %96
  %112 = sext i32 %86 to i64, !dbg !1189
  %113 = getelementptr inbounds ptr, ptr %1, i64 %112, !dbg !1189
  %114 = load ptr, ptr %113, align 8, !dbg !1189, !tbaa !840
  %115 = call i32 @execvp(ptr noundef %114, ptr noundef nonnull %113) #39, !dbg !1190
  %116 = load i32, ptr %88, align 4, !dbg !1191, !tbaa !912
  %117 = icmp eq i32 %116, 2, !dbg !1192
  %118 = select i1 %117, i32 127, i32 126, !dbg !1191
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !119, metadata !DIExpression()), !dbg !1064
  %119 = load ptr, ptr %113, align 8, !dbg !1193, !tbaa !840
  %120 = call ptr @quote(ptr noundef %119) #39, !dbg !1193
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %116, ptr noundef nonnull @.str.19, ptr noundef %120) #39, !dbg !1193
  br label %121

121:                                              ; preds = %100, %111, %83
  %122 = phi i32 [ 0, %83 ], [ %118, %111 ], [ 125, %100 ], !dbg !1064
  ret i32 %122, !dbg !1194
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1195 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1198 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1199 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1202 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1208 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1212 i32 @getpriority(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1220 i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind
declare !dbg !1223 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1227 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1229, metadata !DIExpression()), !dbg !1230
  store ptr %0, ptr @file_name, align 8, !dbg !1231, !tbaa !840
  ret void, !dbg !1232
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1233 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1237, metadata !DIExpression()), !dbg !1238
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1239, !tbaa !1240
  ret void, !dbg !1242
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1243 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1248, !tbaa !840
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1249
  %3 = icmp eq i32 %2, 0, !dbg !1250
  br i1 %3, label %22, label %4, !dbg !1251

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1252, !tbaa !1240, !range !1253, !noundef !879
  %6 = icmp eq i8 %5, 0, !dbg !1252
  br i1 %6, label %11, label %7, !dbg !1254

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1255
  %9 = load i32, ptr %8, align 4, !dbg !1255, !tbaa !912
  %10 = icmp eq i32 %9, 32, !dbg !1256
  br i1 %10, label %22, label %11, !dbg !1257

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1.29, i32 noundef 5) #39, !dbg !1258
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1245, metadata !DIExpression()), !dbg !1259
  %13 = load ptr, ptr @file_name, align 8, !dbg !1260, !tbaa !840
  %14 = icmp eq ptr %13, null, !dbg !1260
  %15 = tail call ptr @__errno_location() #42, !dbg !1262
  %16 = load i32, ptr %15, align 4, !dbg !1262, !tbaa !912
  br i1 %14, label %19, label %17, !dbg !1263

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1264
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.30, ptr noundef %18, ptr noundef %12) #39, !dbg !1264
  br label %20, !dbg !1264

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.31, ptr noundef %12) #39, !dbg !1265
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1266, !tbaa !912
  tail call void @_exit(i32 noundef %21) #41, !dbg !1267
  unreachable, !dbg !1267

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1268, !tbaa !840
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1270
  %25 = icmp eq i32 %24, 0, !dbg !1271
  br i1 %25, label %28, label %26, !dbg !1272

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1273, !tbaa !912
  tail call void @_exit(i32 noundef %27) #41, !dbg !1274
  unreachable, !dbg !1274

28:                                               ; preds = %22
  ret void, !dbg !1275
}

; Function Attrs: noreturn
declare !dbg !1276 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1277 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1282, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1283, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1284, metadata !DIExpression()), !dbg !1285
  tail call fastcc void @flush_stdout(), !dbg !1286
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1287, !tbaa !840
  %6 = icmp eq ptr %5, null, !dbg !1287
  br i1 %6, label %8, label %7, !dbg !1289

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1290
  br label %12, !dbg !1290

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1291, !tbaa !840
  %10 = tail call ptr @getprogname() #40, !dbg !1291
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %10) #39, !dbg !1291
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1295 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1297, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 1, metadata !1299, metadata !DIExpression()), !dbg !1304
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1307
  %2 = icmp slt i32 %1, 0, !dbg !1308
  br i1 %2, label %6, label %3, !dbg !1309

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1310, !tbaa !840
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1310
  br label %6, !dbg !1310

6:                                                ; preds = %3, %0
  ret void, !dbg !1311
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1312 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1318
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1314, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1315, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1316, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1317, metadata !DIExpression()), !dbg !1319
  %6 = load ptr, ptr @stderr, align 8, !dbg !1320, !tbaa !840
  call void @llvm.dbg.value(metadata ptr %6, metadata !1321, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %2, metadata !1361, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %3, metadata !1362, metadata !DIExpression()), !dbg !1363
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1365
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1366, !tbaa !912
  %9 = add i32 %8, 1, !dbg !1366
  store i32 %9, ptr @error_message_count, align 4, !dbg !1366, !tbaa !912
  %10 = icmp eq i32 %1, 0, !dbg !1367
  br i1 %10, label %20, label %11, !dbg !1369

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1370, metadata !DIExpression(), metadata !1318, metadata ptr %5, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %1, metadata !1373, metadata !DIExpression()), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1380
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %12, metadata !1374, metadata !DIExpression()), !dbg !1378
  %13 = icmp eq ptr %12, null, !dbg !1382
  br i1 %13, label %14, label %16, !dbg !1384

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.33, ptr noundef nonnull @.str.5.34, i32 noundef 5) #39, !dbg !1385
  call void @llvm.dbg.value(metadata ptr %15, metadata !1374, metadata !DIExpression()), !dbg !1378
  br label %16, !dbg !1386

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1378
  call void @llvm.dbg.value(metadata ptr %17, metadata !1374, metadata !DIExpression()), !dbg !1378
  %18 = load ptr, ptr @stderr, align 8, !dbg !1387, !tbaa !840
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.35, ptr noundef %17) #39, !dbg !1387
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1388
  br label %20, !dbg !1389

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1390, !tbaa !840
  call void @llvm.dbg.value(metadata i32 10, metadata !1391, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata ptr %21, metadata !1396, metadata !DIExpression()), !dbg !1397
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1399
  %23 = load ptr, ptr %22, align 8, !dbg !1399, !tbaa !1400
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1399
  %25 = load ptr, ptr %24, align 8, !dbg !1399, !tbaa !1401
  %26 = icmp ult ptr %23, %25, !dbg !1399
  br i1 %26, label %29, label %27, !dbg !1399, !prof !1402

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1399
  br label %31, !dbg !1399

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1399
  store ptr %30, ptr %22, align 8, !dbg !1399, !tbaa !1400
  store i8 10, ptr %23, align 1, !dbg !1399, !tbaa !921
  br label %31, !dbg !1399

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1403, !tbaa !840
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1403
  %34 = icmp eq i32 %0, 0, !dbg !1404
  br i1 %34, label %36, label %35, !dbg !1406

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1407
  unreachable, !dbg !1407

36:                                               ; preds = %31
  ret void, !dbg !1408
}

declare !dbg !1409 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1412 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1415 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1418 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1421 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1425 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1438
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1432, metadata !DIExpression(), metadata !1438, metadata ptr %4, metadata !DIExpression()), !dbg !1439
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1429, metadata !DIExpression()), !dbg !1439
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1430, metadata !DIExpression()), !dbg !1439
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1431, metadata !DIExpression()), !dbg !1439
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1440
  call void @llvm.va_start(ptr nonnull %4), !dbg !1441
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1442
  call void @llvm.va_end(ptr nonnull %4), !dbg !1443
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1444
  ret void, !dbg !1444
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !431 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !442, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !443, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !444, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !445, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !446, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !447, metadata !DIExpression()), !dbg !1445
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1446, !tbaa !912
  %8 = icmp eq i32 %7, 0, !dbg !1446
  br i1 %8, label %23, label %9, !dbg !1448

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1449, !tbaa !912
  %11 = icmp eq i32 %10, %3, !dbg !1452
  br i1 %11, label %12, label %22, !dbg !1453

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1454, !tbaa !840
  %14 = icmp eq ptr %13, %2, !dbg !1455
  br i1 %14, label %36, label %15, !dbg !1456

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1457
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1458
  br i1 %18, label %19, label %22, !dbg !1458

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1459
  %21 = icmp eq i32 %20, 0, !dbg !1460
  br i1 %21, label %36, label %22, !dbg !1461

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1462, !tbaa !840
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1463, !tbaa !912
  br label %23, !dbg !1464

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1465
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1466, !tbaa !840
  %25 = icmp eq ptr %24, null, !dbg !1466
  br i1 %25, label %27, label %26, !dbg !1468

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1469
  br label %31, !dbg !1469

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1470, !tbaa !840
  %29 = tail call ptr @getprogname() #40, !dbg !1470
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.38, ptr noundef %29) #39, !dbg !1470
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1472, !tbaa !840
  %33 = icmp eq ptr %2, null, !dbg !1472
  %34 = select i1 %33, ptr @.str.3.39, ptr @.str.2.40, !dbg !1472
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1472
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1473
  br label %36, !dbg !1474

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1474
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1475 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1485
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1484, metadata !DIExpression(), metadata !1485, metadata ptr %6, metadata !DIExpression()), !dbg !1486
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1479, metadata !DIExpression()), !dbg !1486
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1480, metadata !DIExpression()), !dbg !1486
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1481, metadata !DIExpression()), !dbg !1486
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1482, metadata !DIExpression()), !dbg !1486
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1483, metadata !DIExpression()), !dbg !1486
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1487
  call void @llvm.va_start(ptr nonnull %6), !dbg !1488
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1489
  call void @llvm.va_end(ptr nonnull %6), !dbg !1490
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1491
  ret void, !dbg !1491
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1492 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1495, !tbaa !840
  ret ptr %1, !dbg !1496
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1497 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1499, metadata !DIExpression()), !dbg !1502
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1503
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1500, metadata !DIExpression()), !dbg !1502
  %3 = icmp eq ptr %2, null, !dbg !1504
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1504
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1504
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1501, metadata !DIExpression()), !dbg !1502
  %6 = ptrtoint ptr %5 to i64, !dbg !1505
  %7 = ptrtoint ptr %0 to i64, !dbg !1505
  %8 = sub i64 %6, %7, !dbg !1505
  %9 = icmp sgt i64 %8, 6, !dbg !1507
  br i1 %9, label %10, label %19, !dbg !1508

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1509
  call void @llvm.dbg.value(metadata ptr %11, metadata !1510, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata ptr @.str.49, metadata !1515, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i64 7, metadata !1516, metadata !DIExpression()), !dbg !1517
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.49, i64 7), !dbg !1519
  %13 = icmp eq i32 %12, 0, !dbg !1520
  br i1 %13, label %14, label %19, !dbg !1521

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1499, metadata !DIExpression()), !dbg !1502
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.50, i64 noundef 3) #40, !dbg !1522
  %16 = icmp eq i32 %15, 0, !dbg !1525
  %17 = select i1 %16, i64 3, i64 0, !dbg !1526
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1526
  br label %19, !dbg !1526

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1502
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1501, metadata !DIExpression()), !dbg !1502
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1499, metadata !DIExpression()), !dbg !1502
  store ptr %20, ptr @program_name, align 8, !dbg !1527, !tbaa !840
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1528, !tbaa !840
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1529, !tbaa !840
  ret void, !dbg !1530
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1531 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !484 {
  %3 = alloca i32, align 4, !DIAssignID !1532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !494, metadata !DIExpression(), metadata !1532, metadata ptr %3, metadata !DIExpression()), !dbg !1533
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1534
  call void @llvm.dbg.assign(metadata i1 undef, metadata !499, metadata !DIExpression(), metadata !1534, metadata ptr %4, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !491, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !492, metadata !DIExpression()), !dbg !1533
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1535
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !493, metadata !DIExpression()), !dbg !1533
  %6 = icmp eq ptr %5, %0, !dbg !1536
  br i1 %6, label %7, label %14, !dbg !1538

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1539
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %4, metadata !1541, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata ptr %4, metadata !1550, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i32 0, metadata !1556, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 8, metadata !1557, metadata !DIExpression()), !dbg !1558
  store i64 0, ptr %4, align 8, !dbg !1560
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1561
  %9 = icmp eq i64 %8, 2, !dbg !1563
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1564
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1533
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1565
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1565
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1533
  ret ptr %15, !dbg !1565
}

; Function Attrs: nounwind
declare !dbg !1566 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1572 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1577, metadata !DIExpression()), !dbg !1580
  %2 = tail call ptr @__errno_location() #42, !dbg !1581
  %3 = load i32, ptr %2, align 4, !dbg !1581, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1578, metadata !DIExpression()), !dbg !1580
  %4 = icmp eq ptr %0, null, !dbg !1582
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1582
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !1583
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1579, metadata !DIExpression()), !dbg !1580
  store i32 %3, ptr %2, align 4, !dbg !1584, !tbaa !912
  ret ptr %6, !dbg !1585
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1586 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1592, metadata !DIExpression()), !dbg !1593
  %2 = icmp eq ptr %0, null, !dbg !1594
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1594
  %4 = load i32, ptr %3, align 8, !dbg !1595, !tbaa !1596
  ret i32 %4, !dbg !1598
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1599 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1603, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1604, metadata !DIExpression()), !dbg !1605
  %3 = icmp eq ptr %0, null, !dbg !1606
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1606
  store i32 %1, ptr %4, align 8, !dbg !1607, !tbaa !1596
  ret void, !dbg !1608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1609 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1613, metadata !DIExpression()), !dbg !1621
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1614, metadata !DIExpression()), !dbg !1621
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1615, metadata !DIExpression()), !dbg !1621
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1616, metadata !DIExpression()), !dbg !1621
  %4 = icmp eq ptr %0, null, !dbg !1622
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1622
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1623
  %7 = lshr i8 %1, 5, !dbg !1624
  %8 = zext nneg i8 %7 to i64, !dbg !1624
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1625
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1617, metadata !DIExpression()), !dbg !1621
  %10 = and i8 %1, 31, !dbg !1626
  %11 = zext nneg i8 %10 to i32, !dbg !1626
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1619, metadata !DIExpression()), !dbg !1621
  %12 = load i32, ptr %9, align 4, !dbg !1627, !tbaa !912
  %13 = lshr i32 %12, %11, !dbg !1628
  %14 = and i32 %13, 1, !dbg !1629
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1620, metadata !DIExpression()), !dbg !1621
  %15 = xor i32 %13, %2, !dbg !1630
  %16 = and i32 %15, 1, !dbg !1630
  %17 = shl nuw i32 %16, %11, !dbg !1631
  %18 = xor i32 %17, %12, !dbg !1632
  store i32 %18, ptr %9, align 4, !dbg !1632, !tbaa !912
  ret i32 %14, !dbg !1633
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1634 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1638, metadata !DIExpression()), !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1639, metadata !DIExpression()), !dbg !1641
  %3 = icmp eq ptr %0, null, !dbg !1642
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1644
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1638, metadata !DIExpression()), !dbg !1641
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1645
  %6 = load i32, ptr %5, align 4, !dbg !1645, !tbaa !1646
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1640, metadata !DIExpression()), !dbg !1641
  store i32 %1, ptr %5, align 4, !dbg !1647, !tbaa !1646
  ret i32 %6, !dbg !1648
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1649 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1653, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1654, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1655, metadata !DIExpression()), !dbg !1656
  %4 = icmp eq ptr %0, null, !dbg !1657
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1653, metadata !DIExpression()), !dbg !1656
  store i32 10, ptr %5, align 8, !dbg !1660, !tbaa !1596
  %6 = icmp ne ptr %1, null, !dbg !1661
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1663
  br i1 %8, label %10, label %9, !dbg !1663

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1664
  unreachable, !dbg !1664

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1665
  store ptr %1, ptr %11, align 8, !dbg !1666, !tbaa !1667
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1668
  store ptr %2, ptr %12, align 8, !dbg !1669, !tbaa !1670
  ret void, !dbg !1671
}

; Function Attrs: noreturn nounwind
declare !dbg !1672 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1673 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1677, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1678, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1679, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1680, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1681, metadata !DIExpression()), !dbg !1685
  %6 = icmp eq ptr %4, null, !dbg !1686
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1686
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1682, metadata !DIExpression()), !dbg !1685
  %8 = tail call ptr @__errno_location() #42, !dbg !1687
  %9 = load i32, ptr %8, align 4, !dbg !1687, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1683, metadata !DIExpression()), !dbg !1685
  %10 = load i32, ptr %7, align 8, !dbg !1688, !tbaa !1596
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1689
  %12 = load i32, ptr %11, align 4, !dbg !1689, !tbaa !1646
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1690
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1691
  %15 = load ptr, ptr %14, align 8, !dbg !1691, !tbaa !1667
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1692
  %17 = load ptr, ptr %16, align 8, !dbg !1692, !tbaa !1670
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1693
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1684, metadata !DIExpression()), !dbg !1685
  store i32 %9, ptr %8, align 4, !dbg !1694, !tbaa !912
  ret i64 %18, !dbg !1695
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1696 {
  %10 = alloca i32, align 4, !DIAssignID !1764
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1765
  %12 = alloca i32, align 4, !DIAssignID !1766
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1767
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1768
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1742, metadata !DIExpression(), metadata !1768, metadata ptr %14, metadata !DIExpression()), !dbg !1769
  %15 = alloca i32, align 4, !DIAssignID !1770
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1745, metadata !DIExpression(), metadata !1770, metadata ptr %15, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1702, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1704, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1705, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1706, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1707, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1708, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1709, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1710, metadata !DIExpression()), !dbg !1772
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1773
  %17 = icmp eq i64 %16, 1, !dbg !1774
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1711, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1714, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1715, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1772
  %18 = trunc i32 %5 to i8, !dbg !1775
  %19 = lshr i8 %18, 1, !dbg !1775
  %20 = and i8 %19, 1, !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1717, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1719, metadata !DIExpression()), !dbg !1772
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1776

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1777
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1778
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1779
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1780
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1772
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1781
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1782
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1719, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1717, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1716, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1715, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1714, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1705, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1710, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1709, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1706, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.label(metadata !1720), !dbg !1783
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1721, metadata !DIExpression()), !dbg !1772
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
  ], !dbg !1784

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1706, metadata !DIExpression()), !dbg !1772
  br label %114, !dbg !1785

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1717, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1706, metadata !DIExpression()), !dbg !1772
  %43 = and i8 %37, 1, !dbg !1786
  %44 = icmp eq i8 %43, 0, !dbg !1786
  br i1 %44, label %45, label %114, !dbg !1785

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1788
  br i1 %46, label %114, label %47, !dbg !1791

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1788, !tbaa !921
  br label %114, !dbg !1788

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !600, metadata !DIExpression(), metadata !1766, metadata ptr %12, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.assign(metadata i1 undef, metadata !601, metadata !DIExpression(), metadata !1767, metadata ptr %13, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata ptr @.str.11.70, metadata !597, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i32 %29, metadata !598, metadata !DIExpression()), !dbg !1792
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.71, ptr noundef nonnull @.str.11.70, i32 noundef 5) #39, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %49, metadata !599, metadata !DIExpression()), !dbg !1792
  %50 = icmp eq ptr %49, @.str.11.70, !dbg !1797
  br i1 %50, label %51, label %60, !dbg !1799

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1800
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1801
  call void @llvm.dbg.value(metadata ptr %13, metadata !1802, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %13, metadata !1810, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i64 8, metadata !1814, metadata !DIExpression()), !dbg !1815
  store i64 0, ptr %13, align 8, !dbg !1817
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1818
  %53 = icmp eq i64 %52, 3, !dbg !1820
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1821
  %57 = icmp eq i32 %29, 9, !dbg !1821
  %58 = select i1 %57, ptr @.str.10.72, ptr @.str.12.73, !dbg !1821
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1822
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1822
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1792
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1709, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.assign(metadata i1 undef, metadata !600, metadata !DIExpression(), metadata !1764, metadata ptr %10, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.assign(metadata i1 undef, metadata !601, metadata !DIExpression(), metadata !1765, metadata ptr %11, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr @.str.12.73, metadata !597, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 %29, metadata !598, metadata !DIExpression()), !dbg !1823
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.71, ptr noundef nonnull @.str.12.73, i32 noundef 5) #39, !dbg !1825
  call void @llvm.dbg.value(metadata ptr %62, metadata !599, metadata !DIExpression()), !dbg !1823
  %63 = icmp eq ptr %62, @.str.12.73, !dbg !1826
  br i1 %63, label %64, label %73, !dbg !1827

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1828
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %11, metadata !1802, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %11, metadata !1810, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 8, metadata !1814, metadata !DIExpression()), !dbg !1832
  store i64 0, ptr %11, align 8, !dbg !1834
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1835
  %66 = icmp eq i64 %65, 3, !dbg !1836
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1837
  %70 = icmp eq i32 %29, 9, !dbg !1837
  %71 = select i1 %70, ptr @.str.10.72, ptr @.str.12.73, !dbg !1837
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1837
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1838
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1838
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1710, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1709, metadata !DIExpression()), !dbg !1772
  %76 = and i8 %37, 1, !dbg !1839
  %77 = icmp eq i8 %76, 0, !dbg !1839
  br i1 %77, label %78, label %93, !dbg !1840

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1722, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1712, metadata !DIExpression()), !dbg !1772
  %79 = load i8, ptr %74, align 1, !dbg !1842, !tbaa !921
  %80 = icmp eq i8 %79, 0, !dbg !1844
  br i1 %80, label %93, label %81, !dbg !1844

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1722, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1712, metadata !DIExpression()), !dbg !1772
  %85 = icmp ult i64 %84, %40, !dbg !1845
  br i1 %85, label %86, label %88, !dbg !1848

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1845
  store i8 %82, ptr %87, align 1, !dbg !1845, !tbaa !921
  br label %88, !dbg !1845

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1712, metadata !DIExpression()), !dbg !1772
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1849
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1722, metadata !DIExpression()), !dbg !1841
  %91 = load i8, ptr %90, align 1, !dbg !1842, !tbaa !921
  %92 = icmp eq i8 %91, 0, !dbg !1844
  br i1 %92, label %93, label %81, !dbg !1844, !llvm.loop !1850

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1714, metadata !DIExpression()), !dbg !1772
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1715, metadata !DIExpression()), !dbg !1772
  br label %114, !dbg !1854

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1772
  br label %98, !dbg !1855

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1716, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1772
  br label %98, !dbg !1856

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1780
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1717, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1716, metadata !DIExpression()), !dbg !1772
  %101 = and i8 %100, 1, !dbg !1857
  %102 = icmp eq i8 %101, 0, !dbg !1857
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1859
  br label %104, !dbg !1859

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1772
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1717, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1716, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1706, metadata !DIExpression()), !dbg !1772
  %107 = and i8 %106, 1, !dbg !1860
  %108 = icmp eq i8 %107, 0, !dbg !1860
  br i1 %108, label %109, label %114, !dbg !1862

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1863
  br i1 %110, label %114, label %111, !dbg !1866

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1863, !tbaa !921
  br label %114, !dbg !1863

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1772
  br label %114, !dbg !1867

113:                                              ; preds = %28
  call void @abort() #41, !dbg !1868
  unreachable, !dbg !1868

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1852
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.72, %45 ], [ @.str.10.72, %47 ], [ @.str.10.72, %42 ], [ %34, %28 ], [ @.str.12.73, %109 ], [ @.str.12.73, %111 ], [ @.str.12.73, %104 ], [ @.str.10.72, %41 ], !dbg !1772
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1772
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1772
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1717, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1716, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1715, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1714, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1710, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1709, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1706, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1727, metadata !DIExpression()), !dbg !1869
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
  br label %138, !dbg !1870

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1852
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1777
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1781
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1782
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1871
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1872
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1719, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1705, metadata !DIExpression()), !dbg !1772
  %147 = icmp eq i64 %139, -1, !dbg !1873
  br i1 %147, label %148, label %152, !dbg !1874

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1875
  %150 = load i8, ptr %149, align 1, !dbg !1875, !tbaa !921
  %151 = icmp eq i8 %150, 0, !dbg !1876
  br i1 %151, label %612, label %154, !dbg !1877

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1878
  br i1 %153, label %612, label %154, !dbg !1877

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1879
  br i1 %128, label %155, label %170, !dbg !1880

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1882
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1883
  br i1 %157, label %158, label %160, !dbg !1883

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1884
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1705, metadata !DIExpression()), !dbg !1772
  br label %160, !dbg !1885

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1705, metadata !DIExpression()), !dbg !1772
  %162 = icmp ugt i64 %156, %161, !dbg !1886
  br i1 %162, label %170, label %163, !dbg !1887

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %164, metadata !1889, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr %119, metadata !1892, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %120, metadata !1893, metadata !DIExpression()), !dbg !1894
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1896
  %166 = icmp ne i32 %165, 0, !dbg !1897
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1898
  %168 = xor i1 %166, true, !dbg !1898
  %169 = zext i1 %168 to i8, !dbg !1898
  br i1 %167, label %170, label %666, !dbg !1898

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1879
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1729, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1705, metadata !DIExpression()), !dbg !1772
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1899
  %175 = load i8, ptr %174, align 1, !dbg !1899, !tbaa !921
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1734, metadata !DIExpression()), !dbg !1879
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
  ], !dbg !1900

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1901

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1902

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1732, metadata !DIExpression()), !dbg !1879
  %179 = and i8 %144, 1, !dbg !1906
  %180 = icmp eq i8 %179, 0, !dbg !1906
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1906
  br i1 %181, label %182, label %198, !dbg !1906

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1908
  br i1 %183, label %184, label %186, !dbg !1912

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1908
  store i8 39, ptr %185, align 1, !dbg !1908, !tbaa !921
  br label %186, !dbg !1908

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1712, metadata !DIExpression()), !dbg !1772
  %188 = icmp ult i64 %187, %146, !dbg !1913
  br i1 %188, label %189, label %191, !dbg !1916

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1913
  store i8 36, ptr %190, align 1, !dbg !1913, !tbaa !921
  br label %191, !dbg !1913

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1916
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1712, metadata !DIExpression()), !dbg !1772
  %193 = icmp ult i64 %192, %146, !dbg !1917
  br i1 %193, label %194, label %196, !dbg !1920

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1917
  store i8 39, ptr %195, align 1, !dbg !1917, !tbaa !921
  br label %196, !dbg !1917

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1721, metadata !DIExpression()), !dbg !1772
  br label %198, !dbg !1921

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1772
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1712, metadata !DIExpression()), !dbg !1772
  %201 = icmp ult i64 %199, %146, !dbg !1922
  br i1 %201, label %202, label %204, !dbg !1925

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1922
  store i8 92, ptr %203, align 1, !dbg !1922, !tbaa !921
  br label %204, !dbg !1922

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1712, metadata !DIExpression()), !dbg !1772
  br i1 %125, label %206, label %476, !dbg !1926

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1928
  %208 = icmp ult i64 %207, %171, !dbg !1929
  br i1 %208, label %209, label %465, !dbg !1930

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1931
  %211 = load i8, ptr %210, align 1, !dbg !1931, !tbaa !921
  %212 = add i8 %211, -48, !dbg !1932
  %213 = icmp ult i8 %212, 10, !dbg !1932
  br i1 %213, label %214, label %465, !dbg !1932

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1933
  br i1 %215, label %216, label %218, !dbg !1937

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1933
  store i8 48, ptr %217, align 1, !dbg !1933, !tbaa !921
  br label %218, !dbg !1933

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1712, metadata !DIExpression()), !dbg !1772
  %220 = icmp ult i64 %219, %146, !dbg !1938
  br i1 %220, label %221, label %223, !dbg !1941

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1938
  store i8 48, ptr %222, align 1, !dbg !1938, !tbaa !921
  br label %223, !dbg !1938

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1941
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1712, metadata !DIExpression()), !dbg !1772
  br label %465, !dbg !1942

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1943

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1944

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1945

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1947

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1949
  %231 = icmp ult i64 %230, %171, !dbg !1950
  br i1 %231, label %232, label %465, !dbg !1951

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1952
  %234 = load i8, ptr %233, align 1, !dbg !1952, !tbaa !921
  %235 = icmp eq i8 %234, 63, !dbg !1953
  br i1 %235, label %236, label %465, !dbg !1954

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1955
  %238 = load i8, ptr %237, align 1, !dbg !1955, !tbaa !921
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
  ], !dbg !1956

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1957

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1727, metadata !DIExpression()), !dbg !1869
  %241 = icmp ult i64 %140, %146, !dbg !1959
  br i1 %241, label %242, label %244, !dbg !1962

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1959
  store i8 63, ptr %243, align 1, !dbg !1959, !tbaa !921
  br label %244, !dbg !1959

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1712, metadata !DIExpression()), !dbg !1772
  %246 = icmp ult i64 %245, %146, !dbg !1963
  br i1 %246, label %247, label %249, !dbg !1966

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1963
  store i8 34, ptr %248, align 1, !dbg !1963, !tbaa !921
  br label %249, !dbg !1963

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1966
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1712, metadata !DIExpression()), !dbg !1772
  %251 = icmp ult i64 %250, %146, !dbg !1967
  br i1 %251, label %252, label %254, !dbg !1970

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1967
  store i8 34, ptr %253, align 1, !dbg !1967, !tbaa !921
  br label %254, !dbg !1967

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1712, metadata !DIExpression()), !dbg !1772
  %256 = icmp ult i64 %255, %146, !dbg !1971
  br i1 %256, label %257, label %259, !dbg !1974

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1971
  store i8 63, ptr %258, align 1, !dbg !1971, !tbaa !921
  br label %259, !dbg !1971

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1974
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1712, metadata !DIExpression()), !dbg !1772
  br label %465, !dbg !1975

261:                                              ; preds = %170
  br label %272, !dbg !1976

262:                                              ; preds = %170
  br label %272, !dbg !1977

263:                                              ; preds = %170
  br label %270, !dbg !1978

264:                                              ; preds = %170
  br label %270, !dbg !1979

265:                                              ; preds = %170
  br label %272, !dbg !1980

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1981

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1982

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1985

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1987

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1988
  call void @llvm.dbg.label(metadata !1735), !dbg !1989
  br i1 %133, label %272, label %655, !dbg !1990

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1988
  call void @llvm.dbg.label(metadata !1738), !dbg !1992
  br i1 %124, label %520, label %476, !dbg !1993

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1994

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1995, !tbaa !921
  %277 = icmp eq i8 %276, 0, !dbg !1997
  br i1 %277, label %278, label %465, !dbg !1998

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1999
  br i1 %279, label %280, label %465, !dbg !2001

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1879
  br label %281, !dbg !2002

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1733, metadata !DIExpression()), !dbg !1879
  br i1 %133, label %465, label %655, !dbg !2003

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1879
  br i1 %132, label %284, label %465, !dbg !2005

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2006

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2009
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2011
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2011
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2011
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1713, metadata !DIExpression()), !dbg !1772
  %291 = icmp ult i64 %140, %290, !dbg !2012
  br i1 %291, label %292, label %294, !dbg !2015

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2012
  store i8 39, ptr %293, align 1, !dbg !2012, !tbaa !921
  br label %294, !dbg !2012

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2015
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1712, metadata !DIExpression()), !dbg !1772
  %296 = icmp ult i64 %295, %290, !dbg !2016
  br i1 %296, label %297, label %299, !dbg !2019

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2016
  store i8 92, ptr %298, align 1, !dbg !2016, !tbaa !921
  br label %299, !dbg !2016

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1712, metadata !DIExpression()), !dbg !1772
  %301 = icmp ult i64 %300, %290, !dbg !2020
  br i1 %301, label %302, label %304, !dbg !2023

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2020
  store i8 39, ptr %303, align 1, !dbg !2020, !tbaa !921
  br label %304, !dbg !2020

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1721, metadata !DIExpression()), !dbg !1772
  br label %465, !dbg !2024

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2025

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1739, metadata !DIExpression()), !dbg !2026
  %308 = tail call ptr @__ctype_b_loc() #42, !dbg !2027
  %309 = load ptr, ptr %308, align 8, !dbg !2027, !tbaa !840
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2027
  %312 = load i16, ptr %311, align 2, !dbg !2027, !tbaa !953
  %313 = and i16 %312, 16384, !dbg !2029
  %314 = icmp ne i16 %313, 0, !dbg !2029
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1741, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2026
  br label %355, !dbg !2030

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2031
  call void @llvm.dbg.value(metadata ptr %14, metadata !1802, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %14, metadata !1810, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i64 8, metadata !1814, metadata !DIExpression()), !dbg !2034
  store i64 0, ptr %14, align 8, !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1739, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1741, metadata !DIExpression()), !dbg !2026
  %316 = icmp eq i64 %171, -1, !dbg !2037
  br i1 %316, label %317, label %319, !dbg !2039

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2040
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1705, metadata !DIExpression()), !dbg !1772
  br label %319, !dbg !2041

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1705, metadata !DIExpression()), !dbg !1772
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2042
  %321 = sub i64 %320, %145, !dbg !2043
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #39, !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1749, metadata !DIExpression()), !dbg !1771
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2045

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1739, metadata !DIExpression()), !dbg !2026
  %324 = icmp ult i64 %145, %320, !dbg !2046
  br i1 %324, label %326, label %351, !dbg !2048

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !2026
  br label %351, !dbg !2049

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1739, metadata !DIExpression()), !dbg !2026
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2051
  %330 = load i8, ptr %329, align 1, !dbg !2051, !tbaa !921
  %331 = icmp eq i8 %330, 0, !dbg !2048
  br i1 %331, label %351, label %332, !dbg !2052

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1739, metadata !DIExpression()), !dbg !2026
  %334 = add i64 %333, %145, !dbg !2054
  %335 = icmp eq i64 %333, %321, !dbg !2046
  br i1 %335, label %351, label %326, !dbg !2048, !llvm.loop !2055

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1750, metadata !DIExpression()), !dbg !2056
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2057
  %339 = and i1 %338, %132, !dbg !2057
  br i1 %339, label %340, label %347, !dbg !2057

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1750, metadata !DIExpression()), !dbg !2056
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2058
  %343 = load i8, ptr %342, align 1, !dbg !2058, !tbaa !921
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2060

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1750, metadata !DIExpression()), !dbg !2056
  %346 = icmp eq i64 %345, %322, !dbg !2062
  br i1 %346, label %347, label %340, !dbg !2063, !llvm.loop !2064

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2066, !tbaa !912
  call void @llvm.dbg.value(metadata i32 %348, metadata !2068, metadata !DIExpression()), !dbg !2076
  %349 = call i32 @iswprint(i32 noundef %348) #39, !dbg !2078
  %350 = icmp ne i32 %349, 0, !dbg !2079
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1741, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1739, metadata !DIExpression()), !dbg !2026
  br label %351, !dbg !2080

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1741, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1739, metadata !DIExpression()), !dbg !2026
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2081
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2082
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1741, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1739, metadata !DIExpression()), !dbg !2026
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2081
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2082
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1879
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2083
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2083
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1741, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1739, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1705, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1733, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1879
  %359 = icmp ult i64 %357, 2, !dbg !2084
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2085
  br i1 %361, label %461, label %362, !dbg !2085

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1758, metadata !DIExpression()), !dbg !2087
  br label %364, !dbg !2088

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1772
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1871
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1869
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1879
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2089
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1732, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1729, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1712, metadata !DIExpression()), !dbg !1772
  br i1 %360, label %417, label %371, !dbg !2090

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2095

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1732, metadata !DIExpression()), !dbg !1879
  %373 = and i8 %366, 1, !dbg !2098
  %374 = icmp eq i8 %373, 0, !dbg !2098
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2098
  br i1 %375, label %376, label %392, !dbg !2098

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2100
  br i1 %377, label %378, label %380, !dbg !2104

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2100
  store i8 39, ptr %379, align 1, !dbg !2100, !tbaa !921
  br label %380, !dbg !2100

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2104
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1712, metadata !DIExpression()), !dbg !1772
  %382 = icmp ult i64 %381, %146, !dbg !2105
  br i1 %382, label %383, label %385, !dbg !2108

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2105
  store i8 36, ptr %384, align 1, !dbg !2105, !tbaa !921
  br label %385, !dbg !2105

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1712, metadata !DIExpression()), !dbg !1772
  %387 = icmp ult i64 %386, %146, !dbg !2109
  br i1 %387, label %388, label %390, !dbg !2112

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2109
  store i8 39, ptr %389, align 1, !dbg !2109, !tbaa !921
  br label %390, !dbg !2109

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1721, metadata !DIExpression()), !dbg !1772
  br label %392, !dbg !2113

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1772
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1712, metadata !DIExpression()), !dbg !1772
  %395 = icmp ult i64 %393, %146, !dbg !2114
  br i1 %395, label %396, label %398, !dbg !2117

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2114
  store i8 92, ptr %397, align 1, !dbg !2114, !tbaa !921
  br label %398, !dbg !2114

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2117
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1712, metadata !DIExpression()), !dbg !1772
  %400 = icmp ult i64 %399, %146, !dbg !2118
  br i1 %400, label %401, label %405, !dbg !2121

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2118
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2118
  store i8 %403, ptr %404, align 1, !dbg !2118, !tbaa !921
  br label %405, !dbg !2118

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2121
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1712, metadata !DIExpression()), !dbg !1772
  %407 = icmp ult i64 %406, %146, !dbg !2122
  br i1 %407, label %408, label %413, !dbg !2125

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2122
  %411 = or disjoint i8 %410, 48, !dbg !2122
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2122
  store i8 %411, ptr %412, align 1, !dbg !2122, !tbaa !921
  br label %413, !dbg !2122

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2125
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1712, metadata !DIExpression()), !dbg !1772
  %415 = and i8 %370, 7, !dbg !2126
  %416 = or disjoint i8 %415, 48, !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1734, metadata !DIExpression()), !dbg !1879
  br label %426, !dbg !2128

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2129
  %419 = icmp eq i8 %418, 0, !dbg !2129
  br i1 %419, label %426, label %420, !dbg !2131

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2132
  br i1 %421, label %422, label %424, !dbg !2136

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2132
  store i8 92, ptr %423, align 1, !dbg !2132, !tbaa !921
  br label %424, !dbg !2132

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1879
  br label %426, !dbg !2137

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1772
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1871
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1879
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1879
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1732, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1729, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1712, metadata !DIExpression()), !dbg !1772
  %432 = add i64 %367, 1, !dbg !2138
  %433 = icmp ugt i64 %363, %432, !dbg !2140
  br i1 %433, label %434, label %463, !dbg !2141

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2142
  %436 = icmp ne i8 %435, 0, !dbg !2142
  %437 = and i8 %430, 1, !dbg !2142
  %438 = icmp eq i8 %437, 0, !dbg !2142
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2142
  br i1 %439, label %440, label %451, !dbg !2142

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2145
  br i1 %441, label %442, label %444, !dbg !2149

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2145
  store i8 39, ptr %443, align 1, !dbg !2145, !tbaa !921
  br label %444, !dbg !2145

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2149
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1712, metadata !DIExpression()), !dbg !1772
  %446 = icmp ult i64 %445, %146, !dbg !2150
  br i1 %446, label %447, label %449, !dbg !2153

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2150
  store i8 39, ptr %448, align 1, !dbg !2150, !tbaa !921
  br label %449, !dbg !2150

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1721, metadata !DIExpression()), !dbg !1772
  br label %451, !dbg !2154

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2155
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1712, metadata !DIExpression()), !dbg !1772
  %454 = icmp ult i64 %452, %146, !dbg !2156
  br i1 %454, label %455, label %457, !dbg !2159

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2156
  store i8 %431, ptr %456, align 1, !dbg !2156, !tbaa !921
  br label %457, !dbg !2156

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1727, metadata !DIExpression()), !dbg !1869
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2160
  %460 = load i8, ptr %459, align 1, !dbg !2160, !tbaa !921
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1734, metadata !DIExpression()), !dbg !1879
  br label %364, !dbg !2161, !llvm.loop !2162

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1733, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1729, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1705, metadata !DIExpression()), !dbg !1772
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1733, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1732, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1729, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1705, metadata !DIExpression()), !dbg !1772
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2165
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1772
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1777
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1772
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1772
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1869
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1879
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1879
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1879
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1733, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1732, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1729, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1705, metadata !DIExpression()), !dbg !1772
  br i1 %126, label %487, label %476, !dbg !2166

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
  br i1 %137, label %488, label %509, !dbg !2168

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2169

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
  %499 = lshr i8 %490, 5, !dbg !2170
  %500 = zext nneg i8 %499 to i64, !dbg !2170
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2171
  %502 = load i32, ptr %501, align 4, !dbg !2171, !tbaa !912
  %503 = and i8 %490, 31, !dbg !2172
  %504 = zext nneg i8 %503 to i32, !dbg !2172
  %505 = shl nuw i32 1, %504, !dbg !2173
  %506 = and i32 %502, %505, !dbg !2173
  %507 = icmp eq i32 %506, 0, !dbg !2173
  %508 = and i1 %172, %507, !dbg !2174
  br i1 %508, label %558, label %520, !dbg !2174

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
  br i1 %172, label %558, label %520, !dbg !2175

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2165
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1772
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1777
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1781
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1871
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2176
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1879
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1879
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1733, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1705, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.label(metadata !1761), !dbg !2177
  br i1 %131, label %530, label %659, !dbg !2178

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1732, metadata !DIExpression()), !dbg !1879
  %531 = and i8 %525, 1, !dbg !2180
  %532 = icmp eq i8 %531, 0, !dbg !2180
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2180
  br i1 %533, label %534, label %550, !dbg !2180

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2182
  br i1 %535, label %536, label %538, !dbg !2186

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2182
  store i8 39, ptr %537, align 1, !dbg !2182, !tbaa !921
  br label %538, !dbg !2182

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1712, metadata !DIExpression()), !dbg !1772
  %540 = icmp ult i64 %539, %529, !dbg !2187
  br i1 %540, label %541, label %543, !dbg !2190

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2187
  store i8 36, ptr %542, align 1, !dbg !2187, !tbaa !921
  br label %543, !dbg !2187

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1712, metadata !DIExpression()), !dbg !1772
  %545 = icmp ult i64 %544, %529, !dbg !2191
  br i1 %545, label %546, label %548, !dbg !2194

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2191
  store i8 39, ptr %547, align 1, !dbg !2191, !tbaa !921
  br label %548, !dbg !2191

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2194
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1721, metadata !DIExpression()), !dbg !1772
  br label %550, !dbg !2195

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1879
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1712, metadata !DIExpression()), !dbg !1772
  %553 = icmp ult i64 %551, %529, !dbg !2196
  br i1 %553, label %554, label %556, !dbg !2199

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2196
  store i8 92, ptr %555, align 1, !dbg !2196, !tbaa !921
  br label %556, !dbg !2196

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2199
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1733, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1732, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1705, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.label(metadata !1762), !dbg !2200
  br label %585, !dbg !2201

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2165
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1772
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1777
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1781
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1871
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2176
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1879
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1879
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2204
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1734, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1733, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1732, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1705, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.label(metadata !1762), !dbg !2200
  %569 = and i8 %563, 1, !dbg !2201
  %570 = icmp ne i8 %569, 0, !dbg !2201
  %571 = and i8 %565, 1, !dbg !2201
  %572 = icmp eq i8 %571, 0, !dbg !2201
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2201
  br i1 %573, label %574, label %585, !dbg !2201

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2205
  br i1 %575, label %576, label %578, !dbg !2209

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2205
  store i8 39, ptr %577, align 1, !dbg !2205, !tbaa !921
  br label %578, !dbg !2205

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2209
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1712, metadata !DIExpression()), !dbg !1772
  %580 = icmp ult i64 %579, %568, !dbg !2210
  br i1 %580, label %581, label %583, !dbg !2213

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2210
  store i8 39, ptr %582, align 1, !dbg !2210, !tbaa !921
  br label %583, !dbg !2210

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1721, metadata !DIExpression()), !dbg !1772
  br label %585, !dbg !2214

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1879
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1712, metadata !DIExpression()), !dbg !1772
  %595 = icmp ult i64 %593, %586, !dbg !2215
  br i1 %595, label %596, label %598, !dbg !2218

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2215
  store i8 %587, ptr %597, align 1, !dbg !2215, !tbaa !921
  br label %598, !dbg !2215

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1712, metadata !DIExpression()), !dbg !1772
  %600 = icmp eq i8 %588, 0, !dbg !2219
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2221
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1719, metadata !DIExpression()), !dbg !1772
  br label %602, !dbg !2222

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2165
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1772
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1777
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1781
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1782
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1871
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2176
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1727, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1721, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1719, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1705, metadata !DIExpression()), !dbg !1772
  %611 = add i64 %609, 1, !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1727, metadata !DIExpression()), !dbg !1869
  br label %138, !dbg !2224, !llvm.loop !2225

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1703, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1719, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1718, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1713, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1712, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1705, metadata !DIExpression()), !dbg !1772
  %613 = icmp eq i64 %140, 0, !dbg !2227
  %614 = and i1 %132, %613, !dbg !2229
  %615 = xor i1 %614, true, !dbg !2229
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2229
  br i1 %616, label %617, label %655, !dbg !2229

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2230
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2230
  br i1 %621, label %622, label %631, !dbg !2230

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2232
  %624 = icmp eq i8 %623, 0, !dbg !2232
  br i1 %624, label %627, label %625, !dbg !2235

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2236
  br label %672, !dbg !2237

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2238
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2240
  br i1 %630, label %28, label %631, !dbg !2240

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2241
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2243
  br i1 %634, label %635, label %650, !dbg !2243

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1714, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1712, metadata !DIExpression()), !dbg !1772
  %636 = load i8, ptr %119, align 1, !dbg !2244, !tbaa !921
  %637 = icmp eq i8 %636, 0, !dbg !2247
  br i1 %637, label %650, label %638, !dbg !2247

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1714, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1712, metadata !DIExpression()), !dbg !1772
  %642 = icmp ult i64 %641, %146, !dbg !2248
  br i1 %642, label %643, label %645, !dbg !2251

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2248
  store i8 %639, ptr %644, align 1, !dbg !2248, !tbaa !921
  br label %645, !dbg !2248

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2251
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1712, metadata !DIExpression()), !dbg !1772
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2252
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1714, metadata !DIExpression()), !dbg !1772
  %648 = load i8, ptr %647, align 1, !dbg !2244, !tbaa !921
  %649 = icmp eq i8 %648, 0, !dbg !2247
  br i1 %649, label %650, label %638, !dbg !2247, !llvm.loop !2253

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1712, metadata !DIExpression()), !dbg !1772
  %652 = icmp ult i64 %651, %146, !dbg !2255
  br i1 %652, label %653, label %672, !dbg !2257

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2258
  store i8 0, ptr %654, align 1, !dbg !2259, !tbaa !921
  br label %672, !dbg !2258

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1763), !dbg !2260
  %657 = icmp eq i8 %123, 0, !dbg !2261
  %658 = select i1 %657, i32 2, i32 4, !dbg !2261
  br label %666, !dbg !2261

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1763), !dbg !2260
  %662 = icmp eq i32 %115, 2, !dbg !2263
  %663 = icmp eq i8 %123, 0, !dbg !2261
  %664 = select i1 %663, i32 2, i32 4, !dbg !2261
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2261
  br label %666, !dbg !2261

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1706, metadata !DIExpression()), !dbg !1772
  %670 = and i32 %5, -3, !dbg !2264
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2265
  br label %672, !dbg !2266

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2267
}

; Function Attrs: nounwind
declare !dbg !2268 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2271 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2274 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2276 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2280, metadata !DIExpression()), !dbg !2283
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2281, metadata !DIExpression()), !dbg !2283
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2282, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata ptr %0, metadata !2284, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %1, metadata !2289, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr null, metadata !2290, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr %2, metadata !2291, metadata !DIExpression()), !dbg !2297
  %4 = icmp eq ptr %2, null, !dbg !2299
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2299
  call void @llvm.dbg.value(metadata ptr %5, metadata !2292, metadata !DIExpression()), !dbg !2297
  %6 = tail call ptr @__errno_location() #42, !dbg !2300
  %7 = load i32, ptr %6, align 4, !dbg !2300, !tbaa !912
  call void @llvm.dbg.value(metadata i32 %7, metadata !2293, metadata !DIExpression()), !dbg !2297
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2301
  %9 = load i32, ptr %8, align 4, !dbg !2301, !tbaa !1646
  %10 = or i32 %9, 1, !dbg !2302
  call void @llvm.dbg.value(metadata i32 %10, metadata !2294, metadata !DIExpression()), !dbg !2297
  %11 = load i32, ptr %5, align 8, !dbg !2303, !tbaa !1596
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2304
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2305
  %14 = load ptr, ptr %13, align 8, !dbg !2305, !tbaa !1667
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2306
  %16 = load ptr, ptr %15, align 8, !dbg !2306, !tbaa !1670
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2307
  %18 = add i64 %17, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %18, metadata !2295, metadata !DIExpression()), !dbg !2297
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2309
  call void @llvm.dbg.value(metadata ptr %19, metadata !2296, metadata !DIExpression()), !dbg !2297
  %20 = load i32, ptr %5, align 8, !dbg !2310, !tbaa !1596
  %21 = load ptr, ptr %13, align 8, !dbg !2311, !tbaa !1667
  %22 = load ptr, ptr %15, align 8, !dbg !2312, !tbaa !1670
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2313
  store i32 %7, ptr %6, align 4, !dbg !2314, !tbaa !912
  ret ptr %19, !dbg !2315
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2285 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2284, metadata !DIExpression()), !dbg !2316
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2289, metadata !DIExpression()), !dbg !2316
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2290, metadata !DIExpression()), !dbg !2316
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2291, metadata !DIExpression()), !dbg !2316
  %5 = icmp eq ptr %3, null, !dbg !2317
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2317
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2292, metadata !DIExpression()), !dbg !2316
  %7 = tail call ptr @__errno_location() #42, !dbg !2318
  %8 = load i32, ptr %7, align 4, !dbg !2318, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2293, metadata !DIExpression()), !dbg !2316
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2319
  %10 = load i32, ptr %9, align 4, !dbg !2319, !tbaa !1646
  %11 = icmp eq ptr %2, null, !dbg !2320
  %12 = zext i1 %11 to i32, !dbg !2320
  %13 = or i32 %10, %12, !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2294, metadata !DIExpression()), !dbg !2316
  %14 = load i32, ptr %6, align 8, !dbg !2322, !tbaa !1596
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2323
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2324
  %17 = load ptr, ptr %16, align 8, !dbg !2324, !tbaa !1667
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2325
  %19 = load ptr, ptr %18, align 8, !dbg !2325, !tbaa !1670
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2326
  %21 = add i64 %20, 1, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2295, metadata !DIExpression()), !dbg !2316
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2328
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2296, metadata !DIExpression()), !dbg !2316
  %23 = load i32, ptr %6, align 8, !dbg !2329, !tbaa !1596
  %24 = load ptr, ptr %16, align 8, !dbg !2330, !tbaa !1667
  %25 = load ptr, ptr %18, align 8, !dbg !2331, !tbaa !1670
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2332
  store i32 %8, ptr %7, align 4, !dbg !2333, !tbaa !912
  br i1 %11, label %28, label %27, !dbg !2334

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2335, !tbaa !2337
  br label %28, !dbg !2338

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2339
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2340 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2345, !tbaa !840
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2342, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2343, metadata !DIExpression()), !dbg !2347
  %2 = load i32, ptr @nslots, align 4, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2343, metadata !DIExpression()), !dbg !2347
  %3 = icmp sgt i32 %2, 1, !dbg !2348
  br i1 %3, label %4, label %6, !dbg !2350

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2348
  br label %10, !dbg !2350

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2351
  %8 = load ptr, ptr %7, align 8, !dbg !2351, !tbaa !2353
  %9 = icmp eq ptr %8, @slot0, !dbg !2355
  br i1 %9, label %17, label %16, !dbg !2356

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2343, metadata !DIExpression()), !dbg !2347
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2357
  %13 = load ptr, ptr %12, align 8, !dbg !2357, !tbaa !2353
  tail call void @free(ptr noundef %13) #39, !dbg !2358
  %14 = add nuw nsw i64 %11, 1, !dbg !2359
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2343, metadata !DIExpression()), !dbg !2347
  %15 = icmp eq i64 %14, %5, !dbg !2348
  br i1 %15, label %6, label %10, !dbg !2350, !llvm.loop !2360

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2362
  store i64 256, ptr @slotvec0, align 8, !dbg !2364, !tbaa !2365
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2366, !tbaa !2353
  br label %17, !dbg !2367

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2368
  br i1 %18, label %20, label %19, !dbg !2370

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2371
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2373, !tbaa !840
  br label %20, !dbg !2374

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2375, !tbaa !912
  ret void, !dbg !2376
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2377 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2380 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2382, metadata !DIExpression()), !dbg !2384
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2383, metadata !DIExpression()), !dbg !2384
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2385
  ret ptr %3, !dbg !2386
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2387 {
  %5 = alloca i64, align 8, !DIAssignID !2407
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2401, metadata !DIExpression(), metadata !2407, metadata ptr %5, metadata !DIExpression()), !dbg !2408
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2391, metadata !DIExpression()), !dbg !2409
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2392, metadata !DIExpression()), !dbg !2409
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2393, metadata !DIExpression()), !dbg !2409
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2394, metadata !DIExpression()), !dbg !2409
  %6 = tail call ptr @__errno_location() #42, !dbg !2410
  %7 = load i32, ptr %6, align 4, !dbg !2410, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2395, metadata !DIExpression()), !dbg !2409
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2411, !tbaa !840
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2396, metadata !DIExpression()), !dbg !2409
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2397, metadata !DIExpression()), !dbg !2409
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2412
  br i1 %9, label %10, label %11, !dbg !2412

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2414
  unreachable, !dbg !2414

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2415, !tbaa !912
  %13 = icmp sgt i32 %12, %0, !dbg !2416
  br i1 %13, label %32, label %14, !dbg !2417

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2418
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2398, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2408
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2419
  %16 = sext i32 %12 to i64, !dbg !2420
  store i64 %16, ptr %5, align 8, !dbg !2421, !tbaa !2337, !DIAssignID !2422
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2401, metadata !DIExpression(), metadata !2422, metadata ptr %5, metadata !DIExpression()), !dbg !2408
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2423
  %18 = add nuw nsw i32 %0, 1, !dbg !2424
  %19 = sub i32 %18, %12, !dbg !2425
  %20 = sext i32 %19 to i64, !dbg !2426
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2427
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2396, metadata !DIExpression()), !dbg !2409
  store ptr %21, ptr @slotvec, align 8, !dbg !2428, !tbaa !840
  br i1 %15, label %22, label %23, !dbg !2429

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2430, !tbaa.struct !2432
  br label %23, !dbg !2433

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2434, !tbaa !912
  %25 = sext i32 %24 to i64, !dbg !2435
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2435
  %27 = load i64, ptr %5, align 8, !dbg !2436, !tbaa !2337
  %28 = sub nsw i64 %27, %25, !dbg !2437
  %29 = shl i64 %28, 4, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %26, metadata !1810, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %29, metadata !1814, metadata !DIExpression()), !dbg !2439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2441
  %30 = load i64, ptr %5, align 8, !dbg !2442, !tbaa !2337
  %31 = trunc i64 %30 to i32, !dbg !2442
  store i32 %31, ptr @nslots, align 4, !dbg !2443, !tbaa !912
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2444
  br label %32, !dbg !2445

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2409
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2396, metadata !DIExpression()), !dbg !2409
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2446
  %36 = load i64, ptr %35, align 8, !dbg !2447, !tbaa !2365
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2402, metadata !DIExpression()), !dbg !2448
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2449
  %38 = load ptr, ptr %37, align 8, !dbg !2449, !tbaa !2353
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2404, metadata !DIExpression()), !dbg !2448
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2450
  %40 = load i32, ptr %39, align 4, !dbg !2450, !tbaa !1646
  %41 = or i32 %40, 1, !dbg !2451
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2405, metadata !DIExpression()), !dbg !2448
  %42 = load i32, ptr %3, align 8, !dbg !2452, !tbaa !1596
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2453
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2454
  %45 = load ptr, ptr %44, align 8, !dbg !2454, !tbaa !1667
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2455
  %47 = load ptr, ptr %46, align 8, !dbg !2455, !tbaa !1670
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2456
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2406, metadata !DIExpression()), !dbg !2448
  %49 = icmp ugt i64 %36, %48, !dbg !2457
  br i1 %49, label %60, label %50, !dbg !2459

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2460
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2402, metadata !DIExpression()), !dbg !2448
  store i64 %51, ptr %35, align 8, !dbg !2462, !tbaa !2365
  %52 = icmp eq ptr %38, @slot0, !dbg !2463
  br i1 %52, label %54, label %53, !dbg !2465

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2466
  br label %54, !dbg !2466

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2467
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2404, metadata !DIExpression()), !dbg !2448
  store ptr %55, ptr %37, align 8, !dbg !2468, !tbaa !2353
  %56 = load i32, ptr %3, align 8, !dbg !2469, !tbaa !1596
  %57 = load ptr, ptr %44, align 8, !dbg !2470, !tbaa !1667
  %58 = load ptr, ptr %46, align 8, !dbg !2471, !tbaa !1670
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2472
  br label %60, !dbg !2473

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2448
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2404, metadata !DIExpression()), !dbg !2448
  store i32 %7, ptr %6, align 4, !dbg !2474, !tbaa !912
  ret ptr %61, !dbg !2475
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2476 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2480, metadata !DIExpression()), !dbg !2483
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2481, metadata !DIExpression()), !dbg !2483
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2482, metadata !DIExpression()), !dbg !2483
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2484
  ret ptr %4, !dbg !2485
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2486 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2488, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 0, metadata !2382, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata ptr %0, metadata !2383, metadata !DIExpression()), !dbg !2490
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2492
  ret ptr %2, !dbg !2493
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2494 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2499, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !2480, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %1, metadata !2482, metadata !DIExpression()), !dbg !2501
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2503
  ret ptr %3, !dbg !2504
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2505 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2513, metadata ptr %4, metadata !DIExpression()), !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2509, metadata !DIExpression()), !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2510, metadata !DIExpression()), !dbg !2514
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2515
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2525, metadata !DIExpression()), !dbg !2528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2528, !alias.scope !2516, !DIAssignID !2529
  call void @llvm.dbg.assign(metadata i8 0, metadata !2512, metadata !DIExpression(), metadata !2529, metadata ptr %4, metadata !DIExpression()), !dbg !2514
  %5 = icmp eq i32 %1, 10, !dbg !2530
  br i1 %5, label %6, label %7, !dbg !2532

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2533, !noalias !2516
  unreachable, !dbg !2533

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2534, !tbaa !1596, !alias.scope !2516, !DIAssignID !2535
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2535, metadata ptr %4, metadata !DIExpression()), !dbg !2514
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2536
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2537
  ret ptr %8, !dbg !2538
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2539 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2547, metadata !DIExpression(), metadata !2548, metadata ptr %5, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2543, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2544, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2545, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2525, metadata !DIExpression()), !dbg !2557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2557, !alias.scope !2551, !DIAssignID !2558
  call void @llvm.dbg.assign(metadata i8 0, metadata !2547, metadata !DIExpression(), metadata !2558, metadata ptr %5, metadata !DIExpression()), !dbg !2549
  %6 = icmp eq i32 %1, 10, !dbg !2559
  br i1 %6, label %7, label %8, !dbg !2560

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2561, !noalias !2551
  unreachable, !dbg !2561

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2562, !tbaa !1596, !alias.scope !2551, !DIAssignID !2563
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2563, metadata ptr %5, metadata !DIExpression()), !dbg !2549
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2564
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2565
  ret ptr %9, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2567 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2573
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()), !dbg !2574
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2573, metadata ptr %3, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 0, metadata !2509, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %0, metadata !2510, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %1, metadata !2511, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2578), !dbg !2581
  call void @llvm.dbg.value(metadata i32 %0, metadata !2520, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2525, metadata !DIExpression()), !dbg !2584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2584, !alias.scope !2578, !DIAssignID !2585
  call void @llvm.dbg.assign(metadata i8 0, metadata !2512, metadata !DIExpression(), metadata !2585, metadata ptr %3, metadata !DIExpression()), !dbg !2575
  %4 = icmp eq i32 %0, 10, !dbg !2586
  br i1 %4, label %5, label %6, !dbg !2587

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2588, !noalias !2578
  unreachable, !dbg !2588

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2589, !tbaa !1596, !alias.scope !2578, !DIAssignID !2590
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2590, metadata ptr %3, metadata !DIExpression()), !dbg !2575
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2591
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2592
  ret ptr %7, !dbg !2593
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2594 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2601
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2599, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2547, metadata !DIExpression(), metadata !2601, metadata ptr %4, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2543, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %1, metadata !2545, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %2, metadata !2546, metadata !DIExpression()), !dbg !2603
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %0, metadata !2520, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2525, metadata !DIExpression()), !dbg !2612
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2612, !alias.scope !2606, !DIAssignID !2613
  call void @llvm.dbg.assign(metadata i8 0, metadata !2547, metadata !DIExpression(), metadata !2613, metadata ptr %4, metadata !DIExpression()), !dbg !2603
  %5 = icmp eq i32 %0, 10, !dbg !2614
  br i1 %5, label %6, label %7, !dbg !2615

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2616, !noalias !2606
  unreachable, !dbg !2616

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2617, !tbaa !1596, !alias.scope !2606, !DIAssignID !2618
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2618, metadata ptr %4, metadata !DIExpression()), !dbg !2603
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2619
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2620
  ret ptr %8, !dbg !2621
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2622 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2630
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2629, metadata !DIExpression(), metadata !2630, metadata ptr %4, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2627, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2633, !tbaa.struct !2634, !DIAssignID !2635
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2629, metadata !DIExpression(), metadata !2635, metadata ptr %4, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1613, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1614, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1615, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1616, metadata !DIExpression()), !dbg !2636
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2638
  %6 = lshr i8 %2, 5, !dbg !2639
  %7 = zext nneg i8 %6 to i64, !dbg !2639
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2640
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1617, metadata !DIExpression()), !dbg !2636
  %9 = and i8 %2, 31, !dbg !2641
  %10 = zext nneg i8 %9 to i32, !dbg !2641
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1619, metadata !DIExpression()), !dbg !2636
  %11 = load i32, ptr %8, align 4, !dbg !2642, !tbaa !912
  %12 = lshr i32 %11, %10, !dbg !2643
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1620, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2636
  %13 = and i32 %12, 1, !dbg !2644
  %14 = xor i32 %13, 1, !dbg !2644
  %15 = shl nuw i32 %14, %10, !dbg !2645
  %16 = xor i32 %15, %11, !dbg !2646
  store i32 %16, ptr %8, align 4, !dbg !2646, !tbaa !912
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2647
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2648
  ret ptr %17, !dbg !2649
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2650 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2656
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2657
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2655, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2629, metadata !DIExpression(), metadata !2656, metadata ptr %3, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 -1, metadata !2627, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 %1, metadata !2628, metadata !DIExpression()), !dbg !2658
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2661, !tbaa.struct !2634, !DIAssignID !2662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2629, metadata !DIExpression(), metadata !2662, metadata ptr %3, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %3, metadata !1613, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %1, metadata !1614, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 1, metadata !1615, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %1, metadata !1616, metadata !DIExpression()), !dbg !2663
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2665
  %5 = lshr i8 %1, 5, !dbg !2666
  %6 = zext nneg i8 %5 to i64, !dbg !2666
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2667
  call void @llvm.dbg.value(metadata ptr %7, metadata !1617, metadata !DIExpression()), !dbg !2663
  %8 = and i8 %1, 31, !dbg !2668
  %9 = zext nneg i8 %8 to i32, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %9, metadata !1619, metadata !DIExpression()), !dbg !2663
  %10 = load i32, ptr %7, align 4, !dbg !2669, !tbaa !912
  %11 = lshr i32 %10, %9, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %11, metadata !1620, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2663
  %12 = and i32 %11, 1, !dbg !2671
  %13 = xor i32 %12, 1, !dbg !2671
  %14 = shl nuw i32 %13, %9, !dbg !2672
  %15 = xor i32 %14, %10, !dbg !2673
  store i32 %15, ptr %7, align 4, !dbg !2673, !tbaa !912
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2674
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2675
  ret ptr %16, !dbg !2676
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2677 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2680
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2679, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i8 58, metadata !2655, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2629, metadata !DIExpression(), metadata !2680, metadata ptr %2, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 -1, metadata !2627, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 58, metadata !2628, metadata !DIExpression()), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2687, !tbaa.struct !2634, !DIAssignID !2688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2629, metadata !DIExpression(), metadata !2688, metadata ptr %2, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %2, metadata !1613, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 58, metadata !1614, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 1, metadata !1615, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 58, metadata !1616, metadata !DIExpression()), !dbg !2689
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2691
  call void @llvm.dbg.value(metadata ptr %3, metadata !1617, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 26, metadata !1619, metadata !DIExpression()), !dbg !2689
  %4 = load i32, ptr %3, align 4, !dbg !2692, !tbaa !912
  call void @llvm.dbg.value(metadata i32 %4, metadata !1620, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2689
  %5 = or i32 %4, 67108864, !dbg !2693
  store i32 %5, ptr %3, align 4, !dbg !2693, !tbaa !912
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2694
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2695
  ret ptr %6, !dbg !2696
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2697 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2701
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2699, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2629, metadata !DIExpression(), metadata !2701, metadata ptr %3, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %1, metadata !2627, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 58, metadata !2628, metadata !DIExpression()), !dbg !2703
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2706, !tbaa.struct !2634, !DIAssignID !2707
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2629, metadata !DIExpression(), metadata !2707, metadata ptr %3, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %3, metadata !1613, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 58, metadata !1614, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 1, metadata !1615, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 58, metadata !1616, metadata !DIExpression()), !dbg !2708
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2710
  call void @llvm.dbg.value(metadata ptr %4, metadata !1617, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 26, metadata !1619, metadata !DIExpression()), !dbg !2708
  %5 = load i32, ptr %4, align 4, !dbg !2711, !tbaa !912
  call void @llvm.dbg.value(metadata i32 %5, metadata !1620, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2708
  %6 = or i32 %5, 67108864, !dbg !2712
  store i32 %6, ptr %4, align 4, !dbg !2712, !tbaa !912
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2713
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2714
  ret ptr %7, !dbg !2715
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2716 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2721, metadata !DIExpression(), metadata !2722, metadata ptr %4, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2525, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2724
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2719, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2720, metadata !DIExpression()), !dbg !2723
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression()), !dbg !2727
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2727
  %5 = icmp eq i32 %1, 10, !dbg !2728
  br i1 %5, label %6, label %7, !dbg !2729

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2730, !noalias !2731
  unreachable, !dbg !2730

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2727
  store i32 %1, ptr %4, align 8, !dbg !2734, !tbaa.struct !2634, !DIAssignID !2735
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2734
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2734
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2721, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2735, metadata ptr %4, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2721, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2736, metadata ptr %8, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1613, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1614, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1615, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1616, metadata !DIExpression()), !dbg !2737
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2739
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1617, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1619, metadata !DIExpression()), !dbg !2737
  %10 = load i32, ptr %9, align 4, !dbg !2740, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1620, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2737
  %11 = or i32 %10, 67108864, !dbg !2741
  store i32 %11, ptr %9, align 4, !dbg !2741, !tbaa !912, !DIAssignID !2742
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2721, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2742, metadata ptr %9, metadata !DIExpression()), !dbg !2723
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2743
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2744
  ret ptr %12, !dbg !2745
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2746 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2754
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2750, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2751, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2752, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2754, metadata ptr %5, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %0, metadata !2761, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %1, metadata !2762, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %2, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %3, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 -1, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2769, !tbaa.struct !2634, !DIAssignID !2770
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2770, metadata ptr %5, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2771, metadata ptr undef, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %5, metadata !1653, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %1, metadata !1654, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %2, metadata !1655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %5, metadata !1653, metadata !DIExpression()), !dbg !2772
  store i32 10, ptr %5, align 8, !dbg !2774, !tbaa !1596, !DIAssignID !2775
  call void @llvm.dbg.assign(metadata i32 10, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2775, metadata ptr %5, metadata !DIExpression()), !dbg !2766
  %6 = icmp ne ptr %1, null, !dbg !2776
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2777
  br i1 %8, label %10, label %9, !dbg !2777

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2778
  unreachable, !dbg !2778

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2779
  store ptr %1, ptr %11, align 8, !dbg !2780, !tbaa !1667, !DIAssignID !2781
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2781, metadata ptr %11, metadata !DIExpression()), !dbg !2766
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2782
  store ptr %2, ptr %12, align 8, !dbg !2783, !tbaa !1670, !DIAssignID !2784
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2784, metadata ptr %12, metadata !DIExpression()), !dbg !2766
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2785
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2786
  ret ptr %13, !dbg !2787
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2757 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2788
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2788, metadata ptr %6, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2761, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2762, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2763, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2764, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2765, metadata !DIExpression()), !dbg !2789
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2791, !tbaa.struct !2634, !DIAssignID !2792
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2792, metadata ptr %6, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2793, metadata ptr undef, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %6, metadata !1653, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %1, metadata !1654, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %2, metadata !1655, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %6, metadata !1653, metadata !DIExpression()), !dbg !2794
  store i32 10, ptr %6, align 8, !dbg !2796, !tbaa !1596, !DIAssignID !2797
  call void @llvm.dbg.assign(metadata i32 10, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2797, metadata ptr %6, metadata !DIExpression()), !dbg !2789
  %7 = icmp ne ptr %1, null, !dbg !2798
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2799
  br i1 %9, label %11, label %10, !dbg !2799

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2800
  unreachable, !dbg !2800

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2801
  store ptr %1, ptr %12, align 8, !dbg !2802, !tbaa !1667, !DIAssignID !2803
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2803, metadata ptr %12, metadata !DIExpression()), !dbg !2789
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2804
  store ptr %2, ptr %13, align 8, !dbg !2805, !tbaa !1670, !DIAssignID !2806
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2806, metadata ptr %13, metadata !DIExpression()), !dbg !2789
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2807
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2808
  ret ptr %14, !dbg !2809
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2810 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2817
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2814, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2815, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2816, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 0, metadata !2750, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %0, metadata !2751, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %1, metadata !2752, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %2, metadata !2753, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2817, metadata ptr %4, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %0, metadata !2762, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %1, metadata !2763, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %2, metadata !2764, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 -1, metadata !2765, metadata !DIExpression()), !dbg !2821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2824, !tbaa.struct !2634, !DIAssignID !2825
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2825, metadata ptr %4, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2826, metadata ptr undef, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %4, metadata !1653, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata ptr %0, metadata !1654, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata ptr %1, metadata !1655, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata ptr %4, metadata !1653, metadata !DIExpression()), !dbg !2827
  store i32 10, ptr %4, align 8, !dbg !2829, !tbaa !1596, !DIAssignID !2830
  call void @llvm.dbg.assign(metadata i32 10, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2830, metadata ptr %4, metadata !DIExpression()), !dbg !2821
  %5 = icmp ne ptr %0, null, !dbg !2831
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2832
  br i1 %7, label %9, label %8, !dbg !2832

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2833
  unreachable, !dbg !2833

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2834
  store ptr %0, ptr %10, align 8, !dbg !2835, !tbaa !1667, !DIAssignID !2836
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2836, metadata ptr %10, metadata !DIExpression()), !dbg !2821
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2837
  store ptr %1, ptr %11, align 8, !dbg !2838, !tbaa !1670, !DIAssignID !2839
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2839, metadata ptr %11, metadata !DIExpression()), !dbg !2821
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2840
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2841
  ret ptr %12, !dbg !2842
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2843 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2851
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2847, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2848, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2849, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2850, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2851, metadata ptr %5, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %0, metadata !2762, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %1, metadata !2763, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %2, metadata !2764, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %3, metadata !2765, metadata !DIExpression()), !dbg !2853
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2856, !tbaa.struct !2634, !DIAssignID !2857
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2857, metadata ptr %5, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2858, metadata ptr undef, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %5, metadata !1653, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %0, metadata !1654, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %1, metadata !1655, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %5, metadata !1653, metadata !DIExpression()), !dbg !2859
  store i32 10, ptr %5, align 8, !dbg !2861, !tbaa !1596, !DIAssignID !2862
  call void @llvm.dbg.assign(metadata i32 10, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2862, metadata ptr %5, metadata !DIExpression()), !dbg !2853
  %6 = icmp ne ptr %0, null, !dbg !2863
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2864
  br i1 %8, label %10, label %9, !dbg !2864

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2865
  unreachable, !dbg !2865

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2866
  store ptr %0, ptr %11, align 8, !dbg !2867, !tbaa !1667, !DIAssignID !2868
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2868, metadata ptr %11, metadata !DIExpression()), !dbg !2853
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2869
  store ptr %1, ptr %12, align 8, !dbg !2870, !tbaa !1670, !DIAssignID !2871
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2871, metadata ptr %12, metadata !DIExpression()), !dbg !2853
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2872
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2873
  ret ptr %13, !dbg !2874
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2875 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2879, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2880, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2881, metadata !DIExpression()), !dbg !2882
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2883
  ret ptr %4, !dbg !2884
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2885 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 0, metadata !2879, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %0, metadata !2880, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %1, metadata !2881, metadata !DIExpression()), !dbg !2892
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2894
  ret ptr %3, !dbg !2895
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2896 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2900, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %0, metadata !2879, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %1, metadata !2880, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 -1, metadata !2881, metadata !DIExpression()), !dbg !2903
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2905
  ret ptr %3, !dbg !2906
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2907 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2911, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32 0, metadata !2900, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 0, metadata !2879, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %0, metadata !2880, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 -1, metadata !2881, metadata !DIExpression()), !dbg !2915
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2917
  ret ptr %2, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2919 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2958, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2959, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2960, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2961, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2962, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2963, metadata !DIExpression()), !dbg !2964
  %7 = icmp eq ptr %1, null, !dbg !2965
  br i1 %7, label %10, label %8, !dbg !2967

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !2968
  br label %12, !dbg !2968

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %2, ptr noundef %3) #39, !dbg !2969
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.3.81, i32 noundef 5) #39, !dbg !2970
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !2970
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2971
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.5.83, i32 noundef 5) #39, !dbg !2972
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.84) #39, !dbg !2972
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2973
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
  ], !dbg !2974

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.7.85, i32 noundef 5) #39, !dbg !2975
  %21 = load ptr, ptr %4, align 8, !dbg !2975, !tbaa !840
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !2975
  br label %147, !dbg !2977

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.8.86, i32 noundef 5) #39, !dbg !2978
  %25 = load ptr, ptr %4, align 8, !dbg !2978, !tbaa !840
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2978
  %27 = load ptr, ptr %26, align 8, !dbg !2978, !tbaa !840
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !2978
  br label %147, !dbg !2979

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.9.87, i32 noundef 5) #39, !dbg !2980
  %31 = load ptr, ptr %4, align 8, !dbg !2980, !tbaa !840
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2980
  %33 = load ptr, ptr %32, align 8, !dbg !2980, !tbaa !840
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2980
  %35 = load ptr, ptr %34, align 8, !dbg !2980, !tbaa !840
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !2980
  br label %147, !dbg !2981

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.10.88, i32 noundef 5) #39, !dbg !2982
  %39 = load ptr, ptr %4, align 8, !dbg !2982, !tbaa !840
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2982
  %41 = load ptr, ptr %40, align 8, !dbg !2982, !tbaa !840
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2982
  %43 = load ptr, ptr %42, align 8, !dbg !2982, !tbaa !840
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2982
  %45 = load ptr, ptr %44, align 8, !dbg !2982, !tbaa !840
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !2982
  br label %147, !dbg !2983

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.11.89, i32 noundef 5) #39, !dbg !2984
  %49 = load ptr, ptr %4, align 8, !dbg !2984, !tbaa !840
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2984
  %51 = load ptr, ptr %50, align 8, !dbg !2984, !tbaa !840
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2984
  %53 = load ptr, ptr %52, align 8, !dbg !2984, !tbaa !840
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2984
  %55 = load ptr, ptr %54, align 8, !dbg !2984, !tbaa !840
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2984
  %57 = load ptr, ptr %56, align 8, !dbg !2984, !tbaa !840
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !2984
  br label %147, !dbg !2985

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.12.90, i32 noundef 5) #39, !dbg !2986
  %61 = load ptr, ptr %4, align 8, !dbg !2986, !tbaa !840
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2986
  %63 = load ptr, ptr %62, align 8, !dbg !2986, !tbaa !840
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2986
  %65 = load ptr, ptr %64, align 8, !dbg !2986, !tbaa !840
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2986
  %67 = load ptr, ptr %66, align 8, !dbg !2986, !tbaa !840
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2986
  %69 = load ptr, ptr %68, align 8, !dbg !2986, !tbaa !840
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2986
  %71 = load ptr, ptr %70, align 8, !dbg !2986, !tbaa !840
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !2986
  br label %147, !dbg !2987

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.13.91, i32 noundef 5) #39, !dbg !2988
  %75 = load ptr, ptr %4, align 8, !dbg !2988, !tbaa !840
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2988
  %77 = load ptr, ptr %76, align 8, !dbg !2988, !tbaa !840
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2988
  %79 = load ptr, ptr %78, align 8, !dbg !2988, !tbaa !840
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2988
  %81 = load ptr, ptr %80, align 8, !dbg !2988, !tbaa !840
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2988
  %83 = load ptr, ptr %82, align 8, !dbg !2988, !tbaa !840
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2988
  %85 = load ptr, ptr %84, align 8, !dbg !2988, !tbaa !840
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2988
  %87 = load ptr, ptr %86, align 8, !dbg !2988, !tbaa !840
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !2988
  br label %147, !dbg !2989

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.14.92, i32 noundef 5) #39, !dbg !2990
  %91 = load ptr, ptr %4, align 8, !dbg !2990, !tbaa !840
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2990
  %93 = load ptr, ptr %92, align 8, !dbg !2990, !tbaa !840
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2990
  %95 = load ptr, ptr %94, align 8, !dbg !2990, !tbaa !840
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2990
  %97 = load ptr, ptr %96, align 8, !dbg !2990, !tbaa !840
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2990
  %99 = load ptr, ptr %98, align 8, !dbg !2990, !tbaa !840
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2990
  %101 = load ptr, ptr %100, align 8, !dbg !2990, !tbaa !840
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2990
  %103 = load ptr, ptr %102, align 8, !dbg !2990, !tbaa !840
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2990
  %105 = load ptr, ptr %104, align 8, !dbg !2990, !tbaa !840
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !2990
  br label %147, !dbg !2991

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.15.93, i32 noundef 5) #39, !dbg !2992
  %109 = load ptr, ptr %4, align 8, !dbg !2992, !tbaa !840
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2992
  %111 = load ptr, ptr %110, align 8, !dbg !2992, !tbaa !840
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2992
  %113 = load ptr, ptr %112, align 8, !dbg !2992, !tbaa !840
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2992
  %115 = load ptr, ptr %114, align 8, !dbg !2992, !tbaa !840
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2992
  %117 = load ptr, ptr %116, align 8, !dbg !2992, !tbaa !840
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2992
  %119 = load ptr, ptr %118, align 8, !dbg !2992, !tbaa !840
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2992
  %121 = load ptr, ptr %120, align 8, !dbg !2992, !tbaa !840
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2992
  %123 = load ptr, ptr %122, align 8, !dbg !2992, !tbaa !840
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2992
  %125 = load ptr, ptr %124, align 8, !dbg !2992, !tbaa !840
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !2992
  br label %147, !dbg !2993

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.16.94, i32 noundef 5) #39, !dbg !2994
  %129 = load ptr, ptr %4, align 8, !dbg !2994, !tbaa !840
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2994
  %131 = load ptr, ptr %130, align 8, !dbg !2994, !tbaa !840
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2994
  %133 = load ptr, ptr %132, align 8, !dbg !2994, !tbaa !840
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2994
  %135 = load ptr, ptr %134, align 8, !dbg !2994, !tbaa !840
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2994
  %137 = load ptr, ptr %136, align 8, !dbg !2994, !tbaa !840
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2994
  %139 = load ptr, ptr %138, align 8, !dbg !2994, !tbaa !840
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2994
  %141 = load ptr, ptr %140, align 8, !dbg !2994, !tbaa !840
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2994
  %143 = load ptr, ptr %142, align 8, !dbg !2994, !tbaa !840
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2994
  %145 = load ptr, ptr %144, align 8, !dbg !2994, !tbaa !840
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !2994
  br label %147, !dbg !2995

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2996
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2997 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3001, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3002, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3003, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3004, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3006, metadata !DIExpression()), !dbg !3007
  br label %6, !dbg !3008

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3010
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3006, metadata !DIExpression()), !dbg !3007
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3011
  %9 = load ptr, ptr %8, align 8, !dbg !3011, !tbaa !840
  %10 = icmp eq ptr %9, null, !dbg !3013
  %11 = add i64 %7, 1, !dbg !3014
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3006, metadata !DIExpression()), !dbg !3007
  br i1 %10, label %12, label %6, !dbg !3013, !llvm.loop !3015

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3017
  ret void, !dbg !3018
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3019 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3038
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3036, metadata !DIExpression(), metadata !3038, metadata ptr %6, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3030, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3031, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3032, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3033, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3034, metadata !DIExpression()), !dbg !3039
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3040
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3035, metadata !DIExpression()), !dbg !3039
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3035, metadata !DIExpression()), !dbg !3039
  %10 = icmp ult i32 %9, 41, !dbg !3041
  br i1 %10, label %11, label %16, !dbg !3041

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3041
  %13 = zext nneg i32 %9 to i64, !dbg !3041
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3041
  %15 = add nuw nsw i32 %9, 8, !dbg !3041
  store i32 %15, ptr %4, align 8, !dbg !3041
  br label %19, !dbg !3041

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3041
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3041
  store ptr %18, ptr %7, align 8, !dbg !3041
  br label %19, !dbg !3041

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3041
  %22 = load ptr, ptr %21, align 8, !dbg !3041
  store ptr %22, ptr %6, align 16, !dbg !3044, !tbaa !840
  %23 = icmp eq ptr %22, null, !dbg !3045
  br i1 %23, label %128, label %24, !dbg !3046

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3035, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3035, metadata !DIExpression()), !dbg !3039
  %25 = icmp ult i32 %20, 41, !dbg !3041
  br i1 %25, label %29, label %26, !dbg !3041

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3041
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3041
  store ptr %28, ptr %7, align 8, !dbg !3041
  br label %34, !dbg !3041

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3041
  %31 = zext nneg i32 %20 to i64, !dbg !3041
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3041
  %33 = add nuw nsw i32 %20, 8, !dbg !3041
  store i32 %33, ptr %4, align 8, !dbg !3041
  br label %34, !dbg !3041

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3041
  %37 = load ptr, ptr %36, align 8, !dbg !3041
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3047
  store ptr %37, ptr %38, align 8, !dbg !3044, !tbaa !840
  %39 = icmp eq ptr %37, null, !dbg !3045
  br i1 %39, label %128, label %40, !dbg !3046

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3035, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3035, metadata !DIExpression()), !dbg !3039
  %41 = icmp ult i32 %35, 41, !dbg !3041
  br i1 %41, label %45, label %42, !dbg !3041

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3041
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3041
  store ptr %44, ptr %7, align 8, !dbg !3041
  br label %50, !dbg !3041

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3041
  %47 = zext nneg i32 %35 to i64, !dbg !3041
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3041
  %49 = add nuw nsw i32 %35, 8, !dbg !3041
  store i32 %49, ptr %4, align 8, !dbg !3041
  br label %50, !dbg !3041

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3041
  %53 = load ptr, ptr %52, align 8, !dbg !3041
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3047
  store ptr %53, ptr %54, align 16, !dbg !3044, !tbaa !840
  %55 = icmp eq ptr %53, null, !dbg !3045
  br i1 %55, label %128, label %56, !dbg !3046

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3035, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3035, metadata !DIExpression()), !dbg !3039
  %57 = icmp ult i32 %51, 41, !dbg !3041
  br i1 %57, label %61, label %58, !dbg !3041

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3041
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3041
  store ptr %60, ptr %7, align 8, !dbg !3041
  br label %66, !dbg !3041

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3041
  %63 = zext nneg i32 %51 to i64, !dbg !3041
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3041
  %65 = add nuw nsw i32 %51, 8, !dbg !3041
  store i32 %65, ptr %4, align 8, !dbg !3041
  br label %66, !dbg !3041

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3041
  %69 = load ptr, ptr %68, align 8, !dbg !3041
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3047
  store ptr %69, ptr %70, align 8, !dbg !3044, !tbaa !840
  %71 = icmp eq ptr %69, null, !dbg !3045
  br i1 %71, label %128, label %72, !dbg !3046

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3035, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3035, metadata !DIExpression()), !dbg !3039
  %73 = icmp ult i32 %67, 41, !dbg !3041
  br i1 %73, label %77, label %74, !dbg !3041

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3041
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3041
  store ptr %76, ptr %7, align 8, !dbg !3041
  br label %82, !dbg !3041

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3041
  %79 = zext nneg i32 %67 to i64, !dbg !3041
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3041
  %81 = add nuw nsw i32 %67, 8, !dbg !3041
  store i32 %81, ptr %4, align 8, !dbg !3041
  br label %82, !dbg !3041

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3041
  %85 = load ptr, ptr %84, align 8, !dbg !3041
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3047
  store ptr %85, ptr %86, align 16, !dbg !3044, !tbaa !840
  %87 = icmp eq ptr %85, null, !dbg !3045
  br i1 %87, label %128, label %88, !dbg !3046

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3035, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3035, metadata !DIExpression()), !dbg !3039
  %89 = icmp ult i32 %83, 41, !dbg !3041
  br i1 %89, label %93, label %90, !dbg !3041

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3041
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3041
  store ptr %92, ptr %7, align 8, !dbg !3041
  br label %98, !dbg !3041

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3041
  %95 = zext nneg i32 %83 to i64, !dbg !3041
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3041
  %97 = add nuw nsw i32 %83, 8, !dbg !3041
  store i32 %97, ptr %4, align 8, !dbg !3041
  br label %98, !dbg !3041

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3041
  %100 = load ptr, ptr %99, align 8, !dbg !3041
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3047
  store ptr %100, ptr %101, align 8, !dbg !3044, !tbaa !840
  %102 = icmp eq ptr %100, null, !dbg !3045
  br i1 %102, label %128, label %103, !dbg !3046

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3035, metadata !DIExpression()), !dbg !3039
  %104 = load ptr, ptr %7, align 8, !dbg !3041
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3041
  store ptr %105, ptr %7, align 8, !dbg !3041
  %106 = load ptr, ptr %104, align 8, !dbg !3041
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3047
  store ptr %106, ptr %107, align 16, !dbg !3044, !tbaa !840
  %108 = icmp eq ptr %106, null, !dbg !3045
  br i1 %108, label %128, label %109, !dbg !3046

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3035, metadata !DIExpression()), !dbg !3039
  %110 = load ptr, ptr %7, align 8, !dbg !3041
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3041
  store ptr %111, ptr %7, align 8, !dbg !3041
  %112 = load ptr, ptr %110, align 8, !dbg !3041
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3047
  store ptr %112, ptr %113, align 8, !dbg !3044, !tbaa !840
  %114 = icmp eq ptr %112, null, !dbg !3045
  br i1 %114, label %128, label %115, !dbg !3046

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3035, metadata !DIExpression()), !dbg !3039
  %116 = load ptr, ptr %7, align 8, !dbg !3041
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3041
  store ptr %117, ptr %7, align 8, !dbg !3041
  %118 = load ptr, ptr %116, align 8, !dbg !3041
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3047
  store ptr %118, ptr %119, align 16, !dbg !3044, !tbaa !840
  %120 = icmp eq ptr %118, null, !dbg !3045
  br i1 %120, label %128, label %121, !dbg !3046

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3035, metadata !DIExpression()), !dbg !3039
  %122 = load ptr, ptr %7, align 8, !dbg !3041
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3041
  store ptr %123, ptr %7, align 8, !dbg !3041
  %124 = load ptr, ptr %122, align 8, !dbg !3041
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3047
  store ptr %124, ptr %125, align 8, !dbg !3044, !tbaa !840
  %126 = icmp eq ptr %124, null, !dbg !3045
  %127 = select i1 %126, i64 9, i64 10, !dbg !3046
  br label %128, !dbg !3046

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3048
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3049
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3050
  ret void, !dbg !3050
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3051 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3064
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3059, metadata !DIExpression(), metadata !3064, metadata ptr %5, metadata !DIExpression()), !dbg !3065
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3055, metadata !DIExpression()), !dbg !3065
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3056, metadata !DIExpression()), !dbg !3065
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3057, metadata !DIExpression()), !dbg !3065
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3058, metadata !DIExpression()), !dbg !3065
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3066
  call void @llvm.va_start(ptr nonnull %5), !dbg !3067
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3068
  call void @llvm.va_end(ptr nonnull %5), !dbg !3069
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3070
  ret void, !dbg !3070
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3071 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3072, !tbaa !840
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %1), !dbg !3072
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.17.99, i32 noundef 5) #39, !dbg !3073
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.100) #39, !dbg !3073
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.19.101, i32 noundef 5) #39, !dbg !3074
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.102, ptr noundef nonnull @.str.21.103) #39, !dbg !3074
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.22.104, i32 noundef 5) #39, !dbg !3075
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.105) #39, !dbg !3075
  ret void, !dbg !3076
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3077 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3082, metadata !DIExpression()), !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3083, metadata !DIExpression()), !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3084, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %0, metadata !3086, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %2, metadata !3090, metadata !DIExpression()), !dbg !3091
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3093
  call void @llvm.dbg.value(metadata ptr %4, metadata !3094, metadata !DIExpression()), !dbg !3099
  %5 = icmp eq ptr %4, null, !dbg !3101
  br i1 %5, label %6, label %7, !dbg !3103

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3104
  unreachable, !dbg !3104

7:                                                ; preds = %3
  ret ptr %4, !dbg !3105
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3087 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3086, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3089, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3090, metadata !DIExpression()), !dbg !3106
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3107
  call void @llvm.dbg.value(metadata ptr %4, metadata !3094, metadata !DIExpression()), !dbg !3108
  %5 = icmp eq ptr %4, null, !dbg !3110
  br i1 %5, label %6, label %7, !dbg !3111

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3112
  unreachable, !dbg !3112

7:                                                ; preds = %3
  ret ptr %4, !dbg !3113
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3114 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3119
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3120
  call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3121
  %3 = icmp eq ptr %2, null, !dbg !3123
  br i1 %3, label %4, label %5, !dbg !3124

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3125
  unreachable, !dbg !3125

5:                                                ; preds = %1
  ret ptr %2, !dbg !3126
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3127 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3128 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3132, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %0, metadata !3134, metadata !DIExpression()), !dbg !3138
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3140
  call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3141
  %3 = icmp eq ptr %2, null, !dbg !3143
  br i1 %3, label %4, label %5, !dbg !3144

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3145
  unreachable, !dbg !3145

5:                                                ; preds = %1
  ret ptr %2, !dbg !3146
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3147 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3151, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3153
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3155
  call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3156
  %3 = icmp eq ptr %2, null, !dbg !3158
  br i1 %3, label %4, label %5, !dbg !3159

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3160
  unreachable, !dbg !3160

5:                                                ; preds = %1
  ret ptr %2, !dbg !3161
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3162 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3166, metadata !DIExpression()), !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %1, metadata !3173, metadata !DIExpression()), !dbg !3174
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3176
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3177
  call void @llvm.dbg.value(metadata ptr %4, metadata !3094, metadata !DIExpression()), !dbg !3178
  %5 = icmp eq ptr %4, null, !dbg !3180
  br i1 %5, label %6, label %7, !dbg !3181

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3182
  unreachable, !dbg !3182

7:                                                ; preds = %2
  ret ptr %4, !dbg !3183
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3184 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3185 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3189, metadata !DIExpression()), !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3190, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata ptr %0, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3173, metadata !DIExpression()), !dbg !3198
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3200
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3201
  call void @llvm.dbg.value(metadata ptr %4, metadata !3094, metadata !DIExpression()), !dbg !3202
  %5 = icmp eq ptr %4, null, !dbg !3204
  br i1 %5, label %6, label %7, !dbg !3205

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3206
  unreachable, !dbg !3206

7:                                                ; preds = %2
  ret ptr %4, !dbg !3207
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3208 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3212, metadata !DIExpression()), !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3213, metadata !DIExpression()), !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3214, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata ptr %0, metadata !3216, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %2, metadata !3220, metadata !DIExpression()), !dbg !3221
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3223
  call void @llvm.dbg.value(metadata ptr %4, metadata !3094, metadata !DIExpression()), !dbg !3224
  %5 = icmp eq ptr %4, null, !dbg !3226
  br i1 %5, label %6, label %7, !dbg !3227

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3228
  unreachable, !dbg !3228

7:                                                ; preds = %3
  ret ptr %4, !dbg !3229
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3230 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr null, metadata !3086, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %0, metadata !3089, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3237
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3239
  call void @llvm.dbg.value(metadata ptr %3, metadata !3094, metadata !DIExpression()), !dbg !3240
  %4 = icmp eq ptr %3, null, !dbg !3242
  br i1 %4, label %5, label %6, !dbg !3243

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3244
  unreachable, !dbg !3244

6:                                                ; preds = %2
  ret ptr %3, !dbg !3245
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3246 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3250, metadata !DIExpression()), !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3251, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata ptr null, metadata !3212, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %0, metadata !3213, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %1, metadata !3214, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata ptr null, metadata !3216, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3220, metadata !DIExpression()), !dbg !3255
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %3, metadata !3094, metadata !DIExpression()), !dbg !3258
  %4 = icmp eq ptr %3, null, !dbg !3260
  br i1 %4, label %5, label %6, !dbg !3261

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3262
  unreachable, !dbg !3262

6:                                                ; preds = %2
  ret ptr %3, !dbg !3263
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3264 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3268, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %0, metadata !769, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %1, metadata !770, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 1, metadata !771, metadata !DIExpression()), !dbg !3271
  %3 = load i64, ptr %1, align 8, !dbg !3273, !tbaa !2337
  call void @llvm.dbg.value(metadata i64 %3, metadata !772, metadata !DIExpression()), !dbg !3271
  %4 = icmp eq ptr %0, null, !dbg !3274
  br i1 %4, label %5, label %8, !dbg !3276

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3277
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3280
  br label %15, !dbg !3280

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3281
  %10 = add nuw i64 %9, 1, !dbg !3281
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3281
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3281
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %13, metadata !772, metadata !DIExpression()), !dbg !3271
  br i1 %12, label %14, label %15, !dbg !3284

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3285
  unreachable, !dbg !3285

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3271
  call void @llvm.dbg.value(metadata i64 %16, metadata !772, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %0, metadata !3086, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %16, metadata !3089, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 1, metadata !3090, metadata !DIExpression()), !dbg !3286
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3288
  call void @llvm.dbg.value(metadata ptr %17, metadata !3094, metadata !DIExpression()), !dbg !3289
  %18 = icmp eq ptr %17, null, !dbg !3291
  br i1 %18, label %19, label %20, !dbg !3292

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3293
  unreachable, !dbg !3293

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !769, metadata !DIExpression()), !dbg !3271
  store i64 %16, ptr %1, align 8, !dbg !3294, !tbaa !2337
  ret ptr %17, !dbg !3295
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !764 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !769, metadata !DIExpression()), !dbg !3296
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !770, metadata !DIExpression()), !dbg !3296
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !771, metadata !DIExpression()), !dbg !3296
  %4 = load i64, ptr %1, align 8, !dbg !3297, !tbaa !2337
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !772, metadata !DIExpression()), !dbg !3296
  %5 = icmp eq ptr %0, null, !dbg !3298
  br i1 %5, label %6, label %13, !dbg !3299

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3300
  br i1 %7, label %8, label %20, !dbg !3301

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !772, metadata !DIExpression()), !dbg !3296
  %10 = icmp ugt i64 %2, 128, !dbg !3304
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !772, metadata !DIExpression()), !dbg !3296
  br label %20, !dbg !3306

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3307
  %15 = add nuw i64 %14, 1, !dbg !3307
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3307
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3307
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !772, metadata !DIExpression()), !dbg !3296
  br i1 %17, label %19, label %20, !dbg !3308

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3309
  unreachable, !dbg !3309

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3296
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !772, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata ptr %0, metadata !3086, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %21, metadata !3089, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3090, metadata !DIExpression()), !dbg !3310
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3312
  call void @llvm.dbg.value(metadata ptr %22, metadata !3094, metadata !DIExpression()), !dbg !3313
  %23 = icmp eq ptr %22, null, !dbg !3315
  br i1 %23, label %24, label %25, !dbg !3316

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3317
  unreachable, !dbg !3317

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !769, metadata !DIExpression()), !dbg !3296
  store i64 %21, ptr %1, align 8, !dbg !3318, !tbaa !2337
  ret ptr %22, !dbg !3319
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !776 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !785, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !786, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !787, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !788, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !789, metadata !DIExpression()), !dbg !3320
  %6 = load i64, ptr %1, align 8, !dbg !3321, !tbaa !2337
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !790, metadata !DIExpression()), !dbg !3320
  %7 = ashr i64 %6, 1, !dbg !3322
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3322
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3322
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !791, metadata !DIExpression()), !dbg !3320
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !791, metadata !DIExpression()), !dbg !3320
  %12 = icmp sgt i64 %3, -1, !dbg !3325
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3327
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !791, metadata !DIExpression()), !dbg !3320
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3328
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3328
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !792, metadata !DIExpression()), !dbg !3320
  %18 = icmp slt i64 %17, 128, !dbg !3328
  %19 = select i1 %18, i64 128, i64 0, !dbg !3328
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !793, metadata !DIExpression()), !dbg !3320
  %21 = icmp eq i64 %20, 0, !dbg !3329
  br i1 %21, label %26, label %22, !dbg !3331

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !791, metadata !DIExpression()), !dbg !3320
  %24 = srem i64 %20, %4, !dbg !3334
  %25 = sub nsw i64 %20, %24, !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !792, metadata !DIExpression()), !dbg !3320
  br label %26, !dbg !3336

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3320
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !792, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !791, metadata !DIExpression()), !dbg !3320
  %29 = icmp eq ptr %0, null, !dbg !3337
  br i1 %29, label %30, label %31, !dbg !3339

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3340, !tbaa !2337
  br label %31, !dbg !3341

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3342
  %33 = icmp slt i64 %32, %2, !dbg !3344
  br i1 %33, label %34, label %46, !dbg !3345

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3346
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3346
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !791, metadata !DIExpression()), !dbg !3320
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3347
  br i1 %40, label %45, label %41, !dbg !3347

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3348
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3348
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !792, metadata !DIExpression()), !dbg !3320
  br i1 %43, label %45, label %46, !dbg !3349

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #41, !dbg !3350
  unreachable, !dbg !3350

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3320
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !792, metadata !DIExpression()), !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !791, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %0, metadata !3166, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %48, metadata !3167, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %48, metadata !3173, metadata !DIExpression()), !dbg !3353
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3355
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !3356
  call void @llvm.dbg.value(metadata ptr %50, metadata !3094, metadata !DIExpression()), !dbg !3357
  %51 = icmp eq ptr %50, null, !dbg !3359
  br i1 %51, label %52, label %53, !dbg !3360

52:                                               ; preds = %46
  tail call void @xalloc_die() #41, !dbg !3361
  unreachable, !dbg !3361

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !785, metadata !DIExpression()), !dbg !3320
  store i64 %47, ptr %1, align 8, !dbg !3362, !tbaa !2337
  ret ptr %50, !dbg !3363
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3364 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %0, metadata !3368, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 1, metadata !3371, metadata !DIExpression()), !dbg !3372
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3375
  %3 = icmp eq ptr %2, null, !dbg !3377
  br i1 %3, label %4, label %5, !dbg !3378

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3379
  unreachable, !dbg !3379

5:                                                ; preds = %1
  ret ptr %2, !dbg !3380
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3381 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3369 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3368, metadata !DIExpression()), !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3371, metadata !DIExpression()), !dbg !3382
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3383
  call void @llvm.dbg.value(metadata ptr %3, metadata !3094, metadata !DIExpression()), !dbg !3384
  %4 = icmp eq ptr %3, null, !dbg !3386
  br i1 %4, label %5, label %6, !dbg !3387

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3388
  unreachable, !dbg !3388

6:                                                ; preds = %2
  ret ptr %3, !dbg !3389
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3390 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %0, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 1, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 1, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 1, metadata !3403, metadata !DIExpression()), !dbg !3404
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3406
  call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3407
  %3 = icmp eq ptr %2, null, !dbg !3409
  br i1 %3, label %4, label %5, !dbg !3410

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3411
  unreachable, !dbg !3411

5:                                                ; preds = %1
  ret ptr %2, !dbg !3412
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3395 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3394, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3414
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3416
  call void @llvm.dbg.value(metadata ptr %3, metadata !3094, metadata !DIExpression()), !dbg !3417
  %4 = icmp eq ptr %3, null, !dbg !3419
  br i1 %4, label %5, label %6, !dbg !3420

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3421
  unreachable, !dbg !3421

6:                                                ; preds = %2
  ret ptr %3, !dbg !3422
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3423 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3429
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3428, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3430
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3432
  call void @llvm.dbg.value(metadata ptr %3, metadata !3094, metadata !DIExpression()), !dbg !3433
  %4 = icmp eq ptr %3, null, !dbg !3435
  br i1 %4, label %5, label %6, !dbg !3436

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3437
  unreachable, !dbg !3437

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3438, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3448
  ret ptr %3, !dbg !3449
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3132, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3459
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3461
  call void @llvm.dbg.value(metadata ptr %3, metadata !3094, metadata !DIExpression()), !dbg !3462
  %4 = icmp eq ptr %3, null, !dbg !3464
  br i1 %4, label %5, label %6, !dbg !3465

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3466
  unreachable, !dbg !3466

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3438, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3467
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3469
  ret ptr %3, !dbg !3470
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3471 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3476, metadata !DIExpression()), !dbg !3478
  %3 = add nsw i64 %1, 1, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %3, metadata !3132, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 %3, metadata !3134, metadata !DIExpression()), !dbg !3482
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3484
  call void @llvm.dbg.value(metadata ptr %4, metadata !3094, metadata !DIExpression()), !dbg !3485
  %5 = icmp eq ptr %4, null, !dbg !3487
  br i1 %5, label %6, label %7, !dbg !3488

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3489
  unreachable, !dbg !3489

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3477, metadata !DIExpression()), !dbg !3478
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3490
  store i8 0, ptr %8, align 1, !dbg !3491, !tbaa !921
  call void @llvm.dbg.value(metadata ptr %4, metadata !3438, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3492
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3494
  ret ptr %4, !dbg !3495
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3496 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3498, metadata !DIExpression()), !dbg !3499
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3500
  %3 = add i64 %2, 1, !dbg !3501
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3428, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3118, metadata !DIExpression()), !dbg !3504
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3506
  call void @llvm.dbg.value(metadata ptr %4, metadata !3094, metadata !DIExpression()), !dbg !3507
  %5 = icmp eq ptr %4, null, !dbg !3509
  br i1 %5, label %6, label %7, !dbg !3510

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3511
  unreachable, !dbg !3511

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3438, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %3, metadata !3445, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3514
  ret ptr %4, !dbg !3515
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3516 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3520, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3518, metadata !DIExpression()), !dbg !3521
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.116, ptr noundef nonnull @.str.2.117, i32 noundef 5) #39, !dbg !3520
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef %2) #39, !dbg !3520
  %3 = icmp eq i32 %1, 0, !dbg !3520
  tail call void @llvm.assume(i1 %3), !dbg !3520
  tail call void @abort() #41, !dbg !3522
  unreachable, !dbg !3522
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @xstrtol(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #35 !dbg !3523 {
  %6 = alloca ptr, align 8, !DIAssignID !3543
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3534, metadata !DIExpression(), metadata !3543, metadata ptr %6, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3530, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3531, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3532, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3533, metadata !DIExpression()), !dbg !3544
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !3545
  %7 = icmp eq ptr %1, null, !dbg !3546
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !3546
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3535, metadata !DIExpression()), !dbg !3544
  %9 = tail call ptr @__errno_location() #42, !dbg !3547
  store i32 0, ptr %9, align 4, !dbg !3548, !tbaa !912
  %10 = call i64 @strtol(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #39, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3536, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3537, metadata !DIExpression()), !dbg !3544
  %11 = load ptr, ptr %8, align 8, !dbg !3550, !tbaa !840
  %12 = icmp eq ptr %11, %0, !dbg !3552
  br i1 %12, label %13, label %22, !dbg !3553

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !3554
  br i1 %14, label %490, label %15, !dbg !3557

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !3558, !tbaa !921
  %17 = icmp eq i8 %16, 0, !dbg !3558
  br i1 %17, label %490, label %18, !dbg !3559

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !3558
  %20 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #40, !dbg !3560
  %21 = icmp eq ptr %20, null, !dbg !3560
  br i1 %21, label %490, label %29, !dbg !3561

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !3562, !tbaa !912
  switch i32 %23, label %490 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !3564

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3537, metadata !DIExpression()), !dbg !3544
  br label %25, !dbg !3565

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3536, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3537, metadata !DIExpression()), !dbg !3544
  %27 = icmp eq ptr %4, null, !dbg !3567
  br i1 %27, label %28, label %29, !dbg !3569

28:                                               ; preds = %25
  store i64 %10, ptr %3, align 8, !dbg !3570, !tbaa !2337
  br label %490, !dbg !3572

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !3573, !tbaa !921
  %33 = icmp eq i8 %32, 0, !dbg !3574
  br i1 %33, label %487, label %34, !dbg !3575

34:                                               ; preds = %29
  %35 = sext i8 %32 to i32, !dbg !3573
  %36 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #40, !dbg !3576
  %37 = icmp eq ptr %36, null, !dbg !3576
  br i1 %37, label %38, label %40, !dbg !3578

38:                                               ; preds = %34
  store i64 %31, ptr %3, align 8, !dbg !3579, !tbaa !2337
  %39 = or disjoint i32 %30, 2, !dbg !3581
  br label %490, !dbg !3582

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !3538, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3541, metadata !DIExpression()), !dbg !3583
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
  ], !dbg !3584

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #40, !dbg !3585
  %43 = icmp eq ptr %42, null, !dbg !3585
  br i1 %43, label %53, label %44, !dbg !3588

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3589
  %46 = load i8, ptr %45, align 1, !dbg !3589, !tbaa !921
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !3590

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !3591
  %49 = load i8, ptr %48, align 1, !dbg !3591, !tbaa !921
  %50 = icmp eq i8 %49, 66, !dbg !3594
  %51 = select i1 %50, i64 3, i64 1, !dbg !3595
  br label %53, !dbg !3595

52:                                               ; preds = %44, %44
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !3538, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3541, metadata !DIExpression()), !dbg !3583
  br label %53, !dbg !3596

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ], !dbg !3583
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ], !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !3541, metadata !DIExpression()), !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !3538, metadata !DIExpression()), !dbg !3583
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
  ], !dbg !3597

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3616
  %57 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3618
  %58 = extractvalue { i64, i1 } %57, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3616
  %59 = extractvalue { i64, i1 } %57, 0, !dbg !3620
  %60 = icmp slt i64 %31, 0, !dbg !3620
  %61 = select i1 %60, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %62 = select i1 %58, i64 %61, i64 %59, !dbg !3620
  call void @llvm.dbg.value(metadata i1 %58, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i1 %58, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3616
  %63 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 %54), !dbg !3618
  %64 = extractvalue { i64, i1 } %63, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3616
  %65 = extractvalue { i64, i1 } %63, 0, !dbg !3620
  %66 = icmp slt i64 %62, 0, !dbg !3620
  %67 = select i1 %66, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %68 = select i1 %64, i64 %67, i64 %65, !dbg !3620
  %69 = or i1 %58, %64, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %69, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i1 %69, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3616
  %70 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %68, i64 %54), !dbg !3618
  %71 = extractvalue { i64, i1 } %70, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3616
  %72 = extractvalue { i64, i1 } %70, 0, !dbg !3620
  %73 = icmp slt i64 %68, 0, !dbg !3620
  %74 = select i1 %73, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %75 = select i1 %71, i64 %74, i64 %72, !dbg !3620
  %76 = or i1 %69, %71, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %76, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i1 %76, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3616
  %77 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %75, i64 %54), !dbg !3618
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3616
  %79 = extractvalue { i64, i1 } %77, 0, !dbg !3620
  %80 = icmp slt i64 %75, 0, !dbg !3620
  %81 = select i1 %80, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %82 = select i1 %78, i64 %81, i64 %79, !dbg !3620
  %83 = or i1 %76, %78, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %83, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i1 %83, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3616
  %84 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 %54), !dbg !3618
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3616
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !3620
  %87 = icmp slt i64 %82, 0, !dbg !3620
  %88 = select i1 %87, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %89 = select i1 %85, i64 %88, i64 %86, !dbg !3620
  %90 = or i1 %83, %85, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %90, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i1 %90, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3616
  %91 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %89, i64 %54), !dbg !3618
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3616
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !3620
  %94 = icmp slt i64 %89, 0, !dbg !3620
  %95 = select i1 %94, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %96 = select i1 %92, i64 %95, i64 %93, !dbg !3620
  %97 = or i1 %90, %92, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %97, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i1 %97, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3616
  %98 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 %54), !dbg !3618
  %99 = extractvalue { i64, i1 } %98, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3616
  %100 = extractvalue { i64, i1 } %98, 0, !dbg !3620
  %101 = icmp slt i64 %96, 0, !dbg !3620
  %102 = select i1 %101, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3620
  %103 = select i1 %99, i64 %102, i64 %100, !dbg !3620
  %104 = or i1 %97, %99, !dbg !3621
  %105 = zext i1 %104 to i32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 %105, metadata !3598, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3606
  br label %476, !dbg !3622

106:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 8, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3625
  %107 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3627
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3625
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !3628
  %110 = icmp slt i64 %31, 0, !dbg !3628
  %111 = select i1 %110, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3628
  %112 = select i1 %108, i64 %111, i64 %109, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %108, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i1 %108, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3625
  %113 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %112, i64 %54), !dbg !3627
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3625
  %115 = extractvalue { i64, i1 } %113, 0, !dbg !3628
  %116 = icmp slt i64 %112, 0, !dbg !3628
  %117 = select i1 %116, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3628
  %118 = select i1 %114, i64 %117, i64 %115, !dbg !3628
  %119 = or i1 %108, %114, !dbg !3629
  call void @llvm.dbg.value(metadata i1 %119, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i1 %119, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3625
  %120 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %118, i64 %54), !dbg !3627
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3625
  %122 = extractvalue { i64, i1 } %120, 0, !dbg !3628
  %123 = icmp slt i64 %118, 0, !dbg !3628
  %124 = select i1 %123, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3628
  %125 = select i1 %121, i64 %124, i64 %122, !dbg !3628
  %126 = or i1 %119, %121, !dbg !3629
  call void @llvm.dbg.value(metadata i1 %126, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i1 %126, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3625
  %127 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %125, i64 %54), !dbg !3627
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3625
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !3628
  %130 = icmp slt i64 %125, 0, !dbg !3628
  %131 = select i1 %130, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3628
  %132 = select i1 %128, i64 %131, i64 %129, !dbg !3628
  %133 = or i1 %126, %128, !dbg !3629
  call void @llvm.dbg.value(metadata i1 %133, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i1 %133, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3625
  %134 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %132, i64 %54), !dbg !3627
  %135 = extractvalue { i64, i1 } %134, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3625
  %136 = extractvalue { i64, i1 } %134, 0, !dbg !3628
  %137 = icmp slt i64 %132, 0, !dbg !3628
  %138 = select i1 %137, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3628
  %139 = select i1 %135, i64 %138, i64 %136, !dbg !3628
  %140 = or i1 %133, %135, !dbg !3629
  call void @llvm.dbg.value(metadata i1 %140, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i1 %140, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3625
  %141 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %139, i64 %54), !dbg !3627
  %142 = extractvalue { i64, i1 } %141, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3625
  %143 = extractvalue { i64, i1 } %141, 0, !dbg !3628
  %144 = icmp slt i64 %139, 0, !dbg !3628
  %145 = select i1 %144, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3628
  %146 = select i1 %142, i64 %145, i64 %143, !dbg !3628
  %147 = or i1 %140, %142, !dbg !3629
  call void @llvm.dbg.value(metadata i1 %147, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i1 %147, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3625
  %148 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %146, i64 %54), !dbg !3627
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3625
  %150 = extractvalue { i64, i1 } %148, 0, !dbg !3628
  %151 = icmp slt i64 %146, 0, !dbg !3628
  %152 = select i1 %151, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3628
  %153 = select i1 %149, i64 %152, i64 %150, !dbg !3628
  %154 = or i1 %147, %149, !dbg !3629
  call void @llvm.dbg.value(metadata i1 %154, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i1 %154, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3625
  %155 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %153, i64 %54), !dbg !3627
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3625
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !3628
  %158 = icmp slt i64 %153, 0, !dbg !3628
  %159 = select i1 %158, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3628
  %160 = select i1 %156, i64 %159, i64 %157, !dbg !3628
  %161 = or i1 %154, %156, !dbg !3629
  %162 = zext i1 %161 to i32, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %162, metadata !3598, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3623
  br label %476, !dbg !3622

163:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 9, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 8, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %164 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3634
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %166 = extractvalue { i64, i1 } %164, 0, !dbg !3635
  %167 = icmp slt i64 %31, 0, !dbg !3635
  %168 = select i1 %167, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %169 = select i1 %165, i64 %168, i64 %166, !dbg !3635
  call void @llvm.dbg.value(metadata i1 %165, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 8, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i1 %165, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 8, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %170 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %54), !dbg !3634
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %172 = extractvalue { i64, i1 } %170, 0, !dbg !3635
  %173 = icmp slt i64 %169, 0, !dbg !3635
  %174 = select i1 %173, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %175 = select i1 %171, i64 %174, i64 %172, !dbg !3635
  %176 = or i1 %165, %171, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %176, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i1 %176, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %177 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %175, i64 %54), !dbg !3634
  %178 = extractvalue { i64, i1 } %177, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %179 = extractvalue { i64, i1 } %177, 0, !dbg !3635
  %180 = icmp slt i64 %175, 0, !dbg !3635
  %181 = select i1 %180, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %182 = select i1 %178, i64 %181, i64 %179, !dbg !3635
  %183 = or i1 %176, %178, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %183, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i1 %183, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %184 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %182, i64 %54), !dbg !3634
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %186 = extractvalue { i64, i1 } %184, 0, !dbg !3635
  %187 = icmp slt i64 %182, 0, !dbg !3635
  %188 = select i1 %187, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %189 = select i1 %185, i64 %188, i64 %186, !dbg !3635
  %190 = or i1 %183, %185, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %190, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i1 %190, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %191 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %189, i64 %54), !dbg !3634
  %192 = extractvalue { i64, i1 } %191, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %193 = extractvalue { i64, i1 } %191, 0, !dbg !3635
  %194 = icmp slt i64 %189, 0, !dbg !3635
  %195 = select i1 %194, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %196 = select i1 %192, i64 %195, i64 %193, !dbg !3635
  %197 = or i1 %190, %192, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %197, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i1 %197, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %198 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %196, i64 %54), !dbg !3634
  %199 = extractvalue { i64, i1 } %198, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %200 = extractvalue { i64, i1 } %198, 0, !dbg !3635
  %201 = icmp slt i64 %196, 0, !dbg !3635
  %202 = select i1 %201, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %203 = select i1 %199, i64 %202, i64 %200, !dbg !3635
  %204 = or i1 %197, %199, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %204, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i1 %204, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %205 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %203, i64 %54), !dbg !3634
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %207 = extractvalue { i64, i1 } %205, 0, !dbg !3635
  %208 = icmp slt i64 %203, 0, !dbg !3635
  %209 = select i1 %208, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %210 = select i1 %206, i64 %209, i64 %207, !dbg !3635
  %211 = or i1 %204, %206, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %211, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i1 %211, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %212 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %210, i64 %54), !dbg !3634
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !3635
  %215 = icmp slt i64 %210, 0, !dbg !3635
  %216 = select i1 %215, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %217 = select i1 %213, i64 %216, i64 %214, !dbg !3635
  %218 = or i1 %211, %213, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %218, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i1 %218, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3632
  %219 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %217, i64 %54), !dbg !3634
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3632
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !3635
  %222 = icmp slt i64 %217, 0, !dbg !3635
  %223 = select i1 %222, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3635
  %224 = select i1 %220, i64 %223, i64 %221, !dbg !3635
  %225 = or i1 %218, %220, !dbg !3636
  %226 = zext i1 %225 to i32, !dbg !3636
  call void @llvm.dbg.value(metadata i32 %226, metadata !3598, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3630
  br label %476, !dbg !3622

227:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 10, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 9, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %228 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3641
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %230 = extractvalue { i64, i1 } %228, 0, !dbg !3642
  %231 = icmp slt i64 %31, 0, !dbg !3642
  %232 = select i1 %231, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %233 = select i1 %229, i64 %232, i64 %230, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %229, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 9, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %229, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 9, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 8, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %234 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %54), !dbg !3641
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !3642
  %237 = icmp slt i64 %233, 0, !dbg !3642
  %238 = select i1 %237, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %239 = select i1 %235, i64 %238, i64 %236, !dbg !3642
  %240 = or i1 %229, %235, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %240, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 8, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %240, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 8, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %241 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %239, i64 %54), !dbg !3641
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %243 = extractvalue { i64, i1 } %241, 0, !dbg !3642
  %244 = icmp slt i64 %239, 0, !dbg !3642
  %245 = select i1 %244, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %246 = select i1 %242, i64 %245, i64 %243, !dbg !3642
  %247 = or i1 %240, %242, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %247, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %247, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 7, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %248 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %54), !dbg !3641
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %250 = extractvalue { i64, i1 } %248, 0, !dbg !3642
  %251 = icmp slt i64 %246, 0, !dbg !3642
  %252 = select i1 %251, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %253 = select i1 %249, i64 %252, i64 %250, !dbg !3642
  %254 = or i1 %247, %249, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %254, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %254, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %255 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %253, i64 %54), !dbg !3641
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !3642
  %258 = icmp slt i64 %253, 0, !dbg !3642
  %259 = select i1 %258, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %260 = select i1 %256, i64 %259, i64 %257, !dbg !3642
  %261 = or i1 %254, %256, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %261, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %261, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %262 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %260, i64 %54), !dbg !3641
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %264 = extractvalue { i64, i1 } %262, 0, !dbg !3642
  %265 = icmp slt i64 %260, 0, !dbg !3642
  %266 = select i1 %265, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %267 = select i1 %263, i64 %266, i64 %264, !dbg !3642
  %268 = or i1 %261, %263, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %268, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %268, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %269 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %267, i64 %54), !dbg !3641
  %270 = extractvalue { i64, i1 } %269, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %271 = extractvalue { i64, i1 } %269, 0, !dbg !3642
  %272 = icmp slt i64 %267, 0, !dbg !3642
  %273 = select i1 %272, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %274 = select i1 %270, i64 %273, i64 %271, !dbg !3642
  %275 = or i1 %268, %270, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %275, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %275, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %276 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %274, i64 %54), !dbg !3641
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !3642
  %279 = icmp slt i64 %274, 0, !dbg !3642
  %280 = select i1 %279, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %281 = select i1 %277, i64 %280, i64 %278, !dbg !3642
  %282 = or i1 %275, %277, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %282, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %282, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %283 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %54), !dbg !3641
  %284 = extractvalue { i64, i1 } %283, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %285 = extractvalue { i64, i1 } %283, 0, !dbg !3642
  %286 = icmp slt i64 %281, 0, !dbg !3642
  %287 = select i1 %286, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %288 = select i1 %284, i64 %287, i64 %285, !dbg !3642
  %289 = or i1 %282, %284, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %289, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i1 %289, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3637
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3639
  %290 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %288, i64 %54), !dbg !3641
  %291 = extractvalue { i64, i1 } %290, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3639
  %292 = extractvalue { i64, i1 } %290, 0, !dbg !3642
  %293 = icmp slt i64 %288, 0, !dbg !3642
  %294 = select i1 %293, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3642
  %295 = select i1 %291, i64 %294, i64 %292, !dbg !3642
  %296 = or i1 %289, %291, !dbg !3643
  %297 = zext i1 %296 to i32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 %297, metadata !3598, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3637
  br label %476, !dbg !3622

298:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3646
  %299 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3648
  %300 = extractvalue { i64, i1 } %299, 1, !dbg !3648
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3646
  %301 = extractvalue { i64, i1 } %299, 0, !dbg !3649
  %302 = icmp slt i64 %31, 0, !dbg !3649
  %303 = select i1 %302, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3649
  %304 = select i1 %300, i64 %303, i64 %301, !dbg !3649
  call void @llvm.dbg.value(metadata i1 %300, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i1 %300, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3646
  %305 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %304, i64 %54), !dbg !3648
  %306 = extractvalue { i64, i1 } %305, 1, !dbg !3648
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3646
  %307 = extractvalue { i64, i1 } %305, 0, !dbg !3649
  %308 = icmp slt i64 %304, 0, !dbg !3649
  %309 = select i1 %308, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3649
  %310 = select i1 %306, i64 %309, i64 %307, !dbg !3649
  %311 = or i1 %300, %306, !dbg !3650
  call void @llvm.dbg.value(metadata i1 %311, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i1 %311, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3646
  %312 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %54), !dbg !3648
  %313 = extractvalue { i64, i1 } %312, 1, !dbg !3648
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3646
  %314 = extractvalue { i64, i1 } %312, 0, !dbg !3649
  %315 = icmp slt i64 %310, 0, !dbg !3649
  %316 = select i1 %315, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3649
  %317 = select i1 %313, i64 %316, i64 %314, !dbg !3649
  %318 = or i1 %311, %313, !dbg !3650
  call void @llvm.dbg.value(metadata i1 %318, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i1 %318, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3646
  %319 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %317, i64 %54), !dbg !3648
  %320 = extractvalue { i64, i1 } %319, 1, !dbg !3648
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3646
  %321 = extractvalue { i64, i1 } %319, 0, !dbg !3649
  %322 = icmp slt i64 %317, 0, !dbg !3649
  %323 = select i1 %322, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3649
  %324 = select i1 %320, i64 %323, i64 %321, !dbg !3649
  %325 = or i1 %318, %320, !dbg !3650
  call void @llvm.dbg.value(metadata i1 %325, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i1 %325, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3644
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3646
  %326 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %324, i64 %54), !dbg !3648
  %327 = extractvalue { i64, i1 } %326, 1, !dbg !3648
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3646
  %328 = extractvalue { i64, i1 } %326, 0, !dbg !3649
  %329 = icmp slt i64 %324, 0, !dbg !3649
  %330 = select i1 %329, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3649
  %331 = select i1 %327, i64 %330, i64 %328, !dbg !3649
  %332 = or i1 %325, %327, !dbg !3650
  %333 = zext i1 %332 to i32, !dbg !3650
  call void @llvm.dbg.value(metadata i32 %333, metadata !3598, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3644
  br label %476, !dbg !3622

334:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 6, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3653
  %335 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3655
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3653
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !3656
  %338 = icmp slt i64 %31, 0, !dbg !3656
  %339 = select i1 %338, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3656
  %340 = select i1 %336, i64 %339, i64 %337, !dbg !3656
  call void @llvm.dbg.value(metadata i1 %336, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i1 %336, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 5, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3653
  %341 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %340, i64 %54), !dbg !3655
  %342 = extractvalue { i64, i1 } %341, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3653
  %343 = extractvalue { i64, i1 } %341, 0, !dbg !3656
  %344 = icmp slt i64 %340, 0, !dbg !3656
  %345 = select i1 %344, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3656
  %346 = select i1 %342, i64 %345, i64 %343, !dbg !3656
  %347 = or i1 %336, %342, !dbg !3657
  call void @llvm.dbg.value(metadata i1 %347, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i1 %347, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3653
  %348 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %346, i64 %54), !dbg !3655
  %349 = extractvalue { i64, i1 } %348, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3653
  %350 = extractvalue { i64, i1 } %348, 0, !dbg !3656
  %351 = icmp slt i64 %346, 0, !dbg !3656
  %352 = select i1 %351, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3656
  %353 = select i1 %349, i64 %352, i64 %350, !dbg !3656
  %354 = or i1 %347, %349, !dbg !3657
  call void @llvm.dbg.value(metadata i1 %354, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i1 %354, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3653
  %355 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %353, i64 %54), !dbg !3655
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3653
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !3656
  %358 = icmp slt i64 %353, 0, !dbg !3656
  %359 = select i1 %358, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3656
  %360 = select i1 %356, i64 %359, i64 %357, !dbg !3656
  %361 = or i1 %354, %356, !dbg !3657
  call void @llvm.dbg.value(metadata i1 %361, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i1 %361, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3653
  %362 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %360, i64 %54), !dbg !3655
  %363 = extractvalue { i64, i1 } %362, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3653
  %364 = extractvalue { i64, i1 } %362, 0, !dbg !3656
  %365 = icmp slt i64 %360, 0, !dbg !3656
  %366 = select i1 %365, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3656
  %367 = select i1 %363, i64 %366, i64 %364, !dbg !3656
  %368 = or i1 %361, %363, !dbg !3657
  call void @llvm.dbg.value(metadata i1 %368, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i1 %368, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3653
  %369 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %367, i64 %54), !dbg !3655
  %370 = extractvalue { i64, i1 } %369, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3653
  %371 = extractvalue { i64, i1 } %369, 0, !dbg !3656
  %372 = icmp slt i64 %367, 0, !dbg !3656
  %373 = select i1 %372, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3656
  %374 = select i1 %370, i64 %373, i64 %371, !dbg !3656
  %375 = or i1 %368, %370, !dbg !3657
  %376 = zext i1 %375 to i32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 %376, metadata !3598, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3651
  br label %476, !dbg !3622

377:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i32 512, metadata !3614, metadata !DIExpression()), !dbg !3658
  %378 = add i64 %31, -18014398509481984, !dbg !3660
  %379 = icmp ult i64 %378, -36028797018963968, !dbg !3660
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3658
  %380 = shl i64 %31, 9, !dbg !3661
  %381 = icmp slt i64 %31, 0, !dbg !3661
  %382 = select i1 %381, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3661
  %383 = select i1 %379, i64 %382, i64 %380, !dbg !3661
  %384 = zext i1 %379 to i32, !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !3536, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !3542, metadata !DIExpression()), !dbg !3583
  br label %476, !dbg !3662

385:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 1024, metadata !3614, metadata !DIExpression()), !dbg !3663
  %386 = add i64 %31, -9007199254740992, !dbg !3665
  %387 = icmp ult i64 %386, -18014398509481984, !dbg !3665
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3663
  %388 = shl i64 %31, 10, !dbg !3666
  %389 = icmp slt i64 %31, 0, !dbg !3666
  %390 = select i1 %389, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3666
  %391 = select i1 %387, i64 %390, i64 %388, !dbg !3666
  %392 = zext i1 %387 to i32, !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3536, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %392, metadata !3542, metadata !DIExpression()), !dbg !3583
  br label %476, !dbg !3667

393:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3603, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %54, metadata !3604, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3670
  %394 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3672
  %395 = extractvalue { i64, i1 } %394, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3670
  %396 = extractvalue { i64, i1 } %394, 0, !dbg !3673
  %397 = icmp slt i64 %31, 0, !dbg !3673
  %398 = select i1 %397, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3673
  %399 = select i1 %395, i64 %398, i64 %396, !dbg !3673
  call void @llvm.dbg.value(metadata i1 %395, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3668
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3668
  call void @llvm.dbg.value(metadata i1 %395, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3668
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3670
  %400 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %399, i64 %54), !dbg !3672
  %401 = extractvalue { i64, i1 } %400, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3670
  %402 = extractvalue { i64, i1 } %400, 0, !dbg !3673
  %403 = icmp slt i64 %399, 0, !dbg !3673
  %404 = select i1 %403, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3673
  %405 = select i1 %401, i64 %404, i64 %402, !dbg !3673
  %406 = or i1 %395, %401, !dbg !3674
  call void @llvm.dbg.value(metadata i1 %406, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3668
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3668
  call void @llvm.dbg.value(metadata i1 %406, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3668
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3670
  %407 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %405, i64 %54), !dbg !3672
  %408 = extractvalue { i64, i1 } %407, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3670
  %409 = extractvalue { i64, i1 } %407, 0, !dbg !3673
  %410 = icmp slt i64 %405, 0, !dbg !3673
  %411 = select i1 %410, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3673
  %412 = select i1 %408, i64 %411, i64 %409, !dbg !3673
  %413 = or i1 %406, %408, !dbg !3674
  %414 = zext i1 %413 to i32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 %414, metadata !3598, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3668
  br label %476, !dbg !3622

415:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3603, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %54, metadata !3604, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3675
  %416 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3677
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !3677
  %418 = icmp slt i64 %31, 0, !dbg !3679
  %419 = select i1 %418, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3679
  %420 = extractvalue { i64, i1 } %416, 0, !dbg !3679
  %421 = select i1 %417, i64 %419, i64 %420, !dbg !3679
  %422 = zext i1 %417 to i32, !dbg !3679
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3680
  br label %476, !dbg !3622

423:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3603, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %54, metadata !3604, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3683
  %424 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3685
  %425 = extractvalue { i64, i1 } %424, 1, !dbg !3685
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3683
  %426 = extractvalue { i64, i1 } %424, 0, !dbg !3686
  %427 = icmp slt i64 %31, 0, !dbg !3686
  %428 = select i1 %427, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3686
  %429 = select i1 %425, i64 %428, i64 %426, !dbg !3686
  call void @llvm.dbg.value(metadata i1 %425, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3681
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3681
  call void @llvm.dbg.value(metadata i1 %425, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3681
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3683
  %430 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %429, i64 %54), !dbg !3685
  %431 = extractvalue { i64, i1 } %430, 1, !dbg !3685
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3683
  %432 = extractvalue { i64, i1 } %430, 0, !dbg !3686
  %433 = icmp slt i64 %429, 0, !dbg !3686
  %434 = select i1 %433, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3686
  %435 = select i1 %431, i64 %434, i64 %432, !dbg !3686
  %436 = or i1 %425, %431, !dbg !3687
  %437 = zext i1 %436 to i32, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %437, metadata !3598, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3681
  br label %476, !dbg !3622

438:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3603, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %54, metadata !3604, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 4, metadata !3605, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3690
  %439 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3692
  %440 = extractvalue { i64, i1 } %439, 1, !dbg !3692
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3690
  %441 = extractvalue { i64, i1 } %439, 0, !dbg !3693
  %442 = icmp slt i64 %31, 0, !dbg !3693
  %443 = select i1 %442, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3693
  %444 = select i1 %440, i64 %443, i64 %441, !dbg !3693
  call void @llvm.dbg.value(metadata i1 %440, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i1 %440, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i32 3, metadata !3605, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3690
  %445 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %444, i64 %54), !dbg !3692
  %446 = extractvalue { i64, i1 } %445, 1, !dbg !3692
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3690
  %447 = extractvalue { i64, i1 } %445, 0, !dbg !3693
  %448 = icmp slt i64 %444, 0, !dbg !3693
  %449 = select i1 %448, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3693
  %450 = select i1 %446, i64 %449, i64 %447, !dbg !3693
  %451 = or i1 %440, %446, !dbg !3694
  call void @llvm.dbg.value(metadata i1 %451, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i1 %451, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i32 2, metadata !3605, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3690
  %452 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %450, i64 %54), !dbg !3692
  %453 = extractvalue { i64, i1 } %452, 1, !dbg !3692
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3690
  %454 = extractvalue { i64, i1 } %452, 0, !dbg !3693
  %455 = icmp slt i64 %450, 0, !dbg !3693
  %456 = select i1 %455, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3693
  %457 = select i1 %453, i64 %456, i64 %454, !dbg !3693
  %458 = or i1 %451, %453, !dbg !3694
  call void @llvm.dbg.value(metadata i1 %458, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i1 %458, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3688
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %54, metadata !3614, metadata !DIExpression()), !dbg !3690
  %459 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %457, i64 %54), !dbg !3692
  %460 = extractvalue { i64, i1 } %459, 1, !dbg !3692
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3690
  %461 = extractvalue { i64, i1 } %459, 0, !dbg !3693
  %462 = icmp slt i64 %457, 0, !dbg !3693
  %463 = select i1 %462, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3693
  %464 = select i1 %460, i64 %463, i64 %461, !dbg !3693
  %465 = or i1 %458, %460, !dbg !3694
  %466 = zext i1 %465 to i32, !dbg !3694
  call void @llvm.dbg.value(metadata i32 %466, metadata !3598, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3688
  br label %476, !dbg !3622

467:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3609, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i32 2, metadata !3614, metadata !DIExpression()), !dbg !3695
  %468 = add i64 %31, 4611686018427387904, !dbg !3697
  %469 = icmp slt i64 %468, 0, !dbg !3697
  call void @llvm.dbg.value(metadata i64 poison, metadata !3615, metadata !DIExpression()), !dbg !3695
  %470 = shl i64 %31, 1, !dbg !3698
  %471 = icmp slt i64 %31, 0, !dbg !3698
  %472 = select i1 %471, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3698
  %473 = select i1 %469, i64 %472, i64 %470, !dbg !3698
  %474 = lshr i64 %468, 63, !dbg !3698
  %475 = trunc i64 %474 to i32, !dbg !3698
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !3536, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %475, metadata !3542, metadata !DIExpression()), !dbg !3583
  br label %476, !dbg !3699

476:                                              ; preds = %56, %106, %438, %163, %227, %298, %423, %415, %393, %334, %377, %385, %467, %53
  %477 = phi i64 [ %473, %467 ], [ %31, %53 ], [ %391, %385 ], [ %383, %377 ], [ %374, %334 ], [ %412, %393 ], [ %421, %415 ], [ %435, %423 ], [ %331, %298 ], [ %295, %227 ], [ %224, %163 ], [ %464, %438 ], [ %160, %106 ], [ %103, %56 ], !dbg !3544
  %478 = phi i32 [ %475, %467 ], [ 0, %53 ], [ %392, %385 ], [ %384, %377 ], [ %376, %334 ], [ %414, %393 ], [ %422, %415 ], [ %437, %423 ], [ %333, %298 ], [ %297, %227 ], [ %226, %163 ], [ %466, %438 ], [ %162, %106 ], [ %105, %56 ], !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !3536, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !3542, metadata !DIExpression()), !dbg !3583
  %479 = or i32 %478, %30, !dbg !3622
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !3537, metadata !DIExpression()), !dbg !3544
  %480 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !3701
  store ptr %480, ptr %8, align 8, !dbg !3701, !tbaa !840
  %481 = load i8, ptr %480, align 1, !dbg !3702, !tbaa !921
  %482 = icmp eq i8 %481, 0, !dbg !3702
  %483 = or disjoint i32 %479, 2
  %484 = select i1 %482, i32 %479, i32 %483, !dbg !3704
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !3537, metadata !DIExpression()), !dbg !3544
  br label %487

485:                                              ; preds = %53
  store i64 %31, ptr %3, align 8, !dbg !3705, !tbaa !2337
  %486 = or disjoint i32 %30, 2, !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3536, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !3537, metadata !DIExpression()), !dbg !3544
  br label %490

487:                                              ; preds = %476, %29
  %488 = phi i64 [ %31, %29 ], [ %477, %476 ], !dbg !3707
  %489 = phi i32 [ %30, %29 ], [ %484, %476 ], !dbg !3708
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3536, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !3537, metadata !DIExpression()), !dbg !3544
  store i64 %488, ptr %3, align 8, !dbg !3709, !tbaa !2337
  br label %490, !dbg !3710

490:                                              ; preds = %485, %22, %13, %15, %18, %487, %38, %28
  %491 = phi i32 [ %489, %487 ], [ %486, %485 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !3544
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !3711
  ret i32 %491, !dbg !3711
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !3712 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3716 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3754, metadata !DIExpression()), !dbg !3759
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3755, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3759
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3764
  %3 = load i32, ptr %0, align 8, !dbg !3766, !tbaa !1185
  %4 = and i32 %3, 32, !dbg !3767
  %5 = icmp eq i32 %4, 0, !dbg !3767
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3757, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3759
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3768
  %7 = icmp eq i32 %6, 0, !dbg !3769
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3758, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3759
  br i1 %5, label %8, label %18, !dbg !3770

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3772
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3755, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3759
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3773
  %11 = xor i1 %7, true, !dbg !3773
  %12 = sext i1 %11 to i32, !dbg !3773
  br i1 %10, label %21, label %13, !dbg !3773

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3774
  %15 = load i32, ptr %14, align 4, !dbg !3774, !tbaa !912
  %16 = icmp ne i32 %15, 9, !dbg !3775
  %17 = sext i1 %16 to i32, !dbg !3776
  br label %21, !dbg !3776

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3777

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3779
  store i32 0, ptr %20, align 4, !dbg !3781, !tbaa !912
  br label %21, !dbg !3779

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3759
  ret i32 %22, !dbg !3782
}

; Function Attrs: nounwind
declare !dbg !3783 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3787 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3825, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()), !dbg !3829
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3827, metadata !DIExpression()), !dbg !3829
  %3 = icmp slt i32 %2, 0, !dbg !3831
  br i1 %3, label %4, label %6, !dbg !3833

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3834
  br label %24, !dbg !3835

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3836
  %8 = icmp eq i32 %7, 0, !dbg !3836
  br i1 %8, label %13, label %9, !dbg !3838

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3839
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3840
  %12 = icmp eq i64 %11, -1, !dbg !3841
  br i1 %12, label %16, label %13, !dbg !3842

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3843
  %15 = icmp eq i32 %14, 0, !dbg !3843
  br i1 %15, label %16, label %18, !dbg !3844

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3828, metadata !DIExpression()), !dbg !3829
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3845
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3828, metadata !DIExpression()), !dbg !3829
  br label %24, !dbg !3846

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3847
  %20 = load i32, ptr %19, align 4, !dbg !3847, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3826, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3828, metadata !DIExpression()), !dbg !3829
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3845
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3828, metadata !DIExpression()), !dbg !3829
  %22 = icmp eq i32 %20, 0, !dbg !3848
  br i1 %22, label %24, label %23, !dbg !3846

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3850, !tbaa !912
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3828, metadata !DIExpression()), !dbg !3829
  br label %24, !dbg !3852

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3829
  ret i32 %25, !dbg !3853
}

; Function Attrs: nofree nounwind
declare !dbg !3854 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3855 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3856 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3857 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3860 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3898, metadata !DIExpression()), !dbg !3899
  %2 = icmp eq ptr %0, null, !dbg !3900
  br i1 %2, label %6, label %3, !dbg !3902

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3903
  %5 = icmp eq i32 %4, 0, !dbg !3903
  br i1 %5, label %6, label %8, !dbg !3904

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3905
  br label %16, !dbg !3906

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3907, metadata !DIExpression()), !dbg !3912
  %9 = load i32, ptr %0, align 8, !dbg !3914, !tbaa !1185
  %10 = and i32 %9, 256, !dbg !3916
  %11 = icmp eq i32 %10, 0, !dbg !3916
  br i1 %11, label %14, label %12, !dbg !3917

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !3918
  br label %14, !dbg !3918

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3919
  br label %16, !dbg !3920

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3899
  ret i32 %17, !dbg !3921
}

; Function Attrs: nofree nounwind
declare !dbg !3922 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3923 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3962, metadata !DIExpression()), !dbg !3968
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3963, metadata !DIExpression()), !dbg !3968
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3964, metadata !DIExpression()), !dbg !3968
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3969
  %5 = load ptr, ptr %4, align 8, !dbg !3969, !tbaa !3970
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3971
  %7 = load ptr, ptr %6, align 8, !dbg !3971, !tbaa !3972
  %8 = icmp eq ptr %5, %7, !dbg !3973
  br i1 %8, label %9, label %27, !dbg !3974

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3975
  %11 = load ptr, ptr %10, align 8, !dbg !3975, !tbaa !1400
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3976
  %13 = load ptr, ptr %12, align 8, !dbg !3976, !tbaa !3977
  %14 = icmp eq ptr %11, %13, !dbg !3978
  br i1 %14, label %15, label %27, !dbg !3979

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3980
  %17 = load ptr, ptr %16, align 8, !dbg !3980, !tbaa !3981
  %18 = icmp eq ptr %17, null, !dbg !3982
  br i1 %18, label %19, label %27, !dbg !3983

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3984
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !3985
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3965, metadata !DIExpression()), !dbg !3986
  %22 = icmp eq i64 %21, -1, !dbg !3987
  br i1 %22, label %29, label %23, !dbg !3989

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3990, !tbaa !1185
  %25 = and i32 %24, -17, !dbg !3990
  store i32 %25, ptr %0, align 8, !dbg !3990, !tbaa !1185
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3991
  store i64 %21, ptr %26, align 8, !dbg !3992, !tbaa !3993
  br label %29, !dbg !3994

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3995
  br label %29, !dbg !3996

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3968
  ret i32 %30, !dbg !3997
}

; Function Attrs: nofree nounwind
declare !dbg !3998 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4001 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4006, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4007, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4008, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4009, metadata !DIExpression()), !dbg !4011
  %5 = icmp eq ptr %1, null, !dbg !4012
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4014
  %7 = select i1 %5, ptr @.str.131, ptr %1, !dbg !4014
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4014
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4008, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4007, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4006, metadata !DIExpression()), !dbg !4011
  %9 = icmp eq ptr %3, null, !dbg !4015
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4017
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4009, metadata !DIExpression()), !dbg !4011
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4018
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4010, metadata !DIExpression()), !dbg !4011
  %12 = icmp ult i64 %11, -3, !dbg !4019
  br i1 %12, label %13, label %17, !dbg !4021

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4022
  %15 = icmp eq i32 %14, 0, !dbg !4022
  br i1 %15, label %16, label %29, !dbg !4023

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4024, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata ptr %10, metadata !4031, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 0, metadata !4034, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 8, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i64 0, ptr %10, align 1, !dbg !4038
  br label %29, !dbg !4039

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4040
  br i1 %18, label %19, label %20, !dbg !4042

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4043
  unreachable, !dbg !4043

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4044

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4046
  br i1 %23, label %29, label %24, !dbg !4047

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4048
  br i1 %25, label %29, label %26, !dbg !4051

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4052, !tbaa !921
  %28 = zext i8 %27 to i32, !dbg !4053
  store i32 %28, ptr %6, align 4, !dbg !4054, !tbaa !912
  br label %29, !dbg !4055

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4011
  ret i64 %30, !dbg !4056
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4057 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4063 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4065, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4066, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4067, metadata !DIExpression()), !dbg !4069
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4070
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4068, metadata !DIExpression()), !dbg !4069
  br i1 %5, label %6, label %8, !dbg !4072

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4073
  store i32 12, ptr %7, align 4, !dbg !4075, !tbaa !912
  br label %12, !dbg !4076

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4068, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata ptr %0, metadata !4077, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %9, metadata !4080, metadata !DIExpression()), !dbg !4081
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4083
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4084
  br label %12, !dbg !4085

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4069
  ret ptr %13, !dbg !4086
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4087 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4094
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4090, metadata !DIExpression(), metadata !4094, metadata ptr %2, metadata !DIExpression()), !dbg !4095
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4089, metadata !DIExpression()), !dbg !4095
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4096
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4097
  %4 = icmp eq i32 %3, 0, !dbg !4097
  br i1 %4, label %5, label %12, !dbg !4099

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4100, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata !879, metadata !4103, metadata !DIExpression()), !dbg !4104
  %6 = load i16, ptr %2, align 16, !dbg !4107
  %7 = icmp eq i16 %6, 67, !dbg !4107
  br i1 %7, label %11, label %8, !dbg !4108

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4100, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr @.str.1.136, metadata !4103, metadata !DIExpression()), !dbg !4109
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.136, i64 6), !dbg !4111
  %10 = icmp eq i32 %9, 0, !dbg !4112
  br i1 %10, label %11, label %12, !dbg !4113

11:                                               ; preds = %8, %5
  br label %12, !dbg !4114

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4095
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4115
  ret i1 %13, !dbg !4115
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4116 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4120, metadata !DIExpression()), !dbg !4123
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4121, metadata !DIExpression()), !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4122, metadata !DIExpression()), !dbg !4123
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4124
  ret i32 %4, !dbg !4125
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4126 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4130, metadata !DIExpression()), !dbg !4131
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4132
  ret ptr %2, !dbg !4133
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4134 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4136, metadata !DIExpression()), !dbg !4138
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4139
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4138
  ret ptr %2, !dbg !4140
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4141 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4143, metadata !DIExpression()), !dbg !4150
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4144, metadata !DIExpression()), !dbg !4150
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4145, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i32 %0, metadata !4136, metadata !DIExpression()), !dbg !4151
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4153
  call void @llvm.dbg.value(metadata ptr %4, metadata !4137, metadata !DIExpression()), !dbg !4151
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4150
  %5 = icmp eq ptr %4, null, !dbg !4154
  br i1 %5, label %6, label %9, !dbg !4155

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4156
  br i1 %7, label %19, label %8, !dbg !4159

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4160, !tbaa !921
  br label %19, !dbg !4161

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4162
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4147, metadata !DIExpression()), !dbg !4163
  %11 = icmp ult i64 %10, %2, !dbg !4164
  br i1 %11, label %12, label %14, !dbg !4166

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4167
  call void @llvm.dbg.value(metadata ptr %1, metadata !4169, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata ptr %4, metadata !4172, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i64 %13, metadata !4173, metadata !DIExpression()), !dbg !4174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !4176
  br label %19, !dbg !4177

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4178
  br i1 %15, label %19, label %16, !dbg !4181

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4182
  call void @llvm.dbg.value(metadata ptr %1, metadata !4169, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata ptr %4, metadata !4172, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %17, metadata !4173, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4186
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4187
  store i8 0, ptr %18, align 1, !dbg !4188, !tbaa !921
  br label %19, !dbg !4189

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4190
  ret i32 %20, !dbg !4191
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!61, !404, !408, !423, !719, !751, !474, !488, !539, !753, !711, !760, !795, !797, !803, !805, !807, !809, !735, !811, !813, !817, !819}
!llvm.ident = !{!821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821, !821}
!llvm.module.flags = !{!822, !823, !824, !825, !826, !827, !828}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nice.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bb63d6c4d157649b1559df44069c2e07")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!74 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!75 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "bb0bdc9e7ae341ef435e98e05276a863")
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
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !220)
!219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!422 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !423, file: !424, line: 66, type: !469, isLocal: false, isDefinition: true)
!423 = distinct !DICompileUnit(language: DW_LANG_C11, file: !424, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !425, globals: !426, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!425 = !{!145, !150}
!426 = !{!427, !429, !448, !450, !452, !454, !421, !456, !458, !460, !462, !467}
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !424, line: 272, type: !16, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "old_file_name", scope: !431, file: !424, line: 304, type: !96, isLocal: true, isDefinition: true)
!431 = distinct !DISubprogram(name: "verror_at_line", scope: !424, file: !424, line: 298, type: !432, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !441)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !72, !72, !96, !65, !96, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !436)
!436 = !{!437, !438, !439, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !435, file: !424, baseType: !65, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !435, file: !424, baseType: !65, size: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !435, file: !424, baseType: !145, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !435, file: !424, baseType: !145, size: 64, offset: 128)
!441 = !{!442, !443, !444, !445, !446, !447}
!442 = !DILocalVariable(name: "status", arg: 1, scope: !431, file: !424, line: 298, type: !72)
!443 = !DILocalVariable(name: "errnum", arg: 2, scope: !431, file: !424, line: 298, type: !72)
!444 = !DILocalVariable(name: "file_name", arg: 3, scope: !431, file: !424, line: 298, type: !96)
!445 = !DILocalVariable(name: "line_number", arg: 4, scope: !431, file: !424, line: 298, type: !65)
!446 = !DILocalVariable(name: "message", arg: 5, scope: !431, file: !424, line: 298, type: !96)
!447 = !DILocalVariable(name: "args", arg: 6, scope: !431, file: !424, line: 298, type: !434)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "old_line_number", scope: !431, file: !424, line: 305, type: !65, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !424, line: 338, type: !56, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !424, line: 346, type: !304, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !424, line: 346, type: !282, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "error_message_count", scope: !423, file: !424, line: 69, type: !65, isLocal: false, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !423, file: !424, line: 295, type: !72, isLocal: false, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !424, line: 208, type: !299, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !424, line: 208, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 21)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !424, line: 214, type: !16, isLocal: true, isDefinition: true)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null}
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "program_name", scope: !474, file: !475, line: 31, type: !96, isLocal: false, isDefinition: true)
!474 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !476, globals: !477, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!476 = !{!145, !89}
!477 = !{!472, !478, !480}
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !475, line: 46, type: !304, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !475, line: 49, type: !56, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "utf07FF", scope: !484, file: !485, line: 46, type: !512, isLocal: true, isDefinition: true)
!484 = distinct !DISubprogram(name: "proper_name_lite", scope: !485, file: !485, line: 38, type: !486, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !490)
!485 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!486 = !DISubroutineType(types: !487)
!487 = !{!96, !96, !96}
!488 = distinct !DICompileUnit(language: DW_LANG_C11, file: !485, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !489, splitDebugInlining: false, nameTableKind: None)
!489 = !{!482}
!490 = !{!491, !492, !493, !494, !499}
!491 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !484, file: !485, line: 38, type: !96)
!492 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !484, file: !485, line: 38, type: !96)
!493 = !DILocalVariable(name: "translation", scope: !484, file: !485, line: 40, type: !96)
!494 = !DILocalVariable(name: "w", scope: !484, file: !485, line: 47, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !496, line: 37, baseType: !497)
!496 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !242, line: 57, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !242, line: 42, baseType: !65)
!499 = !DILocalVariable(name: "mbs", scope: !484, file: !485, line: 48, type: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !501, line: 6, baseType: !502)
!501 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !503, line: 21, baseType: !504)
!503 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 13, size: 64, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !504, file: !503, line: 15, baseType: !72, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !504, file: !503, line: 20, baseType: !508, size: 32, offset: 32)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !503, line: 16, size: 32, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !508, file: !503, line: 18, baseType: !65, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !508, file: !503, line: 19, baseType: !56, size: 32)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !283)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !515, line: 78, type: !304, isLocal: true, isDefinition: true)
!515 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !515, line: 79, type: !277, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !515, line: 80, type: !520, isLocal: true, isDefinition: true)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 13)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !515, line: 81, type: !520, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !515, line: 82, type: !174, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !515, line: 83, type: !282, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !515, line: 84, type: !304, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !515, line: 85, type: !299, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !515, line: 86, type: !299, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !515, line: 87, type: !304, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !539, file: !515, line: 76, type: !625, isLocal: false, isDefinition: true)
!539 = distinct !DICompileUnit(language: DW_LANG_C11, file: !515, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !540, retainedTypes: !560, globals: !561, splitDebugInlining: false, nameTableKind: None)
!540 = !{!541, !555, !129}
!541 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !542, line: 42, baseType: !65, size: 32, elements: !543)
!542 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!544 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!545 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!546 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!547 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!548 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!549 = !DIEnumerator(name: "c_quoting_style", value: 5)
!550 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!551 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!552 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!553 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!554 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!555 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !542, line: 254, baseType: !65, size: 32, elements: !556)
!556 = !{!557, !558, !559}
!557 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!558 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!559 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!560 = !{!145, !72, !146, !147}
!561 = !{!513, !516, !518, !523, !525, !527, !529, !531, !533, !535, !537, !562, !566, !576, !578, !583, !585, !587, !589, !591, !614, !621, !623}
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !539, file: !515, line: 92, type: !564, isLocal: false, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 320, elements: !47)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !539, file: !515, line: 1040, type: !568, isLocal: false, isDefinition: true)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !515, line: 56, size: 448, elements: !569)
!569 = !{!570, !571, !572, !574, !575}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !568, file: !515, line: 59, baseType: !541, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !515, line: 62, baseType: !72, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !568, file: !515, line: 66, baseType: !573, size: 256, offset: 64)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !305)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !568, file: !515, line: 69, baseType: !96, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !568, file: !515, line: 72, baseType: !96, size: 64, offset: 384)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !539, file: !515, line: 107, type: !568, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "slot0", scope: !539, file: !515, line: 831, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 256)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !515, line: 321, type: !282, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !515, line: 357, type: !282, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !515, line: 358, type: !282, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !515, line: 199, type: !299, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "quote", scope: !593, file: !515, line: 228, type: !612, isLocal: true, isDefinition: true)
!593 = distinct !DISubprogram(name: "gettext_quote", scope: !515, file: !515, line: 197, type: !594, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{!96, !96, !541}
!596 = !{!597, !598, !599, !600, !601}
!597 = !DILocalVariable(name: "msgid", arg: 1, scope: !593, file: !515, line: 197, type: !96)
!598 = !DILocalVariable(name: "s", arg: 2, scope: !593, file: !515, line: 197, type: !541)
!599 = !DILocalVariable(name: "translation", scope: !593, file: !515, line: 199, type: !96)
!600 = !DILocalVariable(name: "w", scope: !593, file: !515, line: 229, type: !495)
!601 = !DILocalVariable(name: "mbs", scope: !593, file: !515, line: 230, type: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !501, line: 6, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !503, line: 21, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 13, size: 64, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !604, file: !503, line: 15, baseType: !72, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !604, file: !503, line: 20, baseType: !608, size: 32, offset: 32)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !503, line: 16, size: 32, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !608, file: !503, line: 18, baseType: !65, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !608, file: !503, line: 19, baseType: !56, size: 32)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !613)
!613 = !{!284, !58}
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "slotvec", scope: !539, file: !515, line: 834, type: !616, isLocal: true, isDefinition: true)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !515, line: 823, size: 128, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !617, file: !515, line: 825, baseType: !147, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !617, file: !515, line: 826, baseType: !89, size: 64, offset: 64)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "nslots", scope: !539, file: !515, line: 832, type: !72, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "slotvec0", scope: !539, file: !515, line: 833, type: !617, isLocal: true, isDefinition: true)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 704, elements: !383)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !629, line: 67, type: !377, isLocal: true, isDefinition: true)
!629 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !629, line: 69, type: !299, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !629, line: 83, type: !299, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !629, line: 83, type: !56, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !629, line: 85, type: !282, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !629, line: 88, type: !640, isLocal: true, isDefinition: true)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 171)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !629, line: 88, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 34)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !629, line: 105, type: !159, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !629, line: 109, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 23)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !629, line: 113, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 28)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !629, line: 120, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 32)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !629, line: 127, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 36)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !629, line: 134, type: !326, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !629, line: 142, type: !674, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 44)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !629, line: 150, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 48)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !629, line: 159, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 52)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !629, line: 170, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 60)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !629, line: 248, type: !174, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !629, line: 248, type: !164, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !629, line: 254, type: !174, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !629, line: 254, type: !154, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !629, line: 254, type: !326, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !629, line: 259, type: !3, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !629, line: 259, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 29)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !711, file: !712, line: 26, type: !714, isLocal: false, isDefinition: true)
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !712, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !713, splitDebugInlining: false, nameTableKind: None)
!712 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!713 = !{!709}
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 376, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 47)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "exit_failure", scope: !719, file: !720, line: 24, type: !722, isLocal: false, isDefinition: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!721 = !{!717}
!722 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !725, line: 34, type: !183, isLocal: true, isDefinition: true)
!725 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !725, line: 34, type: !299, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !725, line: 34, type: !321, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !732, line: 108, type: !41, isLocal: true, isDefinition: true)
!732 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "internal_state", scope: !735, file: !732, line: 97, type: !738, isLocal: true, isDefinition: true)
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, globals: !737, splitDebugInlining: false, nameTableKind: None)
!736 = !{!145, !147, !150}
!737 = !{!730, !733}
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !501, line: 6, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !503, line: 21, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 13, size: 64, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !740, file: !503, line: 15, baseType: !72, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !740, file: !503, line: 20, baseType: !744, size: 32, offset: 32)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !503, line: 16, size: 32, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !744, file: !503, line: 18, baseType: !65, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !744, file: !503, line: 19, baseType: !56, size: 32)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !750, line: 35, type: !277, isLocal: true, isDefinition: true)
!750 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !629, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !754, retainedTypes: !758, globals: !759, splitDebugInlining: false, nameTableKind: None)
!754 = !{!755}
!755 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !629, line: 40, baseType: !65, size: 32, elements: !756)
!756 = !{!757}
!757 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!758 = !{!145}
!759 = !{!627, !630, !632, !634, !636, !638, !643, !648, !650, !655, !660, !665, !670, !672, !677, !682, !687, !692, !694, !696, !698, !700, !702, !704}
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !762, retainedTypes: !794, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!762 = !{!763, !775}
!763 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !764, file: !761, line: 188, baseType: !65, size: 32, elements: !773)
!764 = distinct !DISubprogram(name: "x2nrealloc", scope: !761, file: !761, line: 176, type: !765, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !768)
!765 = !DISubroutineType(types: !766)
!766 = !{!145, !145, !767, !147}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!768 = !{!769, !770, !771, !772}
!769 = !DILocalVariable(name: "p", arg: 1, scope: !764, file: !761, line: 176, type: !145)
!770 = !DILocalVariable(name: "pn", arg: 2, scope: !764, file: !761, line: 176, type: !767)
!771 = !DILocalVariable(name: "s", arg: 3, scope: !764, file: !761, line: 176, type: !147)
!772 = !DILocalVariable(name: "n", scope: !764, file: !761, line: 178, type: !147)
!773 = !{!774}
!774 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!775 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !776, file: !761, line: 228, baseType: !65, size: 32, elements: !773)
!776 = distinct !DISubprogram(name: "xpalloc", scope: !761, file: !761, line: 223, type: !777, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !784)
!777 = !DISubroutineType(types: !778)
!778 = !{!145, !145, !779, !780, !782, !780}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !781, line: 130, baseType: !782)
!781 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !783, line: 18, baseType: !113)
!783 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793}
!785 = !DILocalVariable(name: "pa", arg: 1, scope: !776, file: !761, line: 223, type: !145)
!786 = !DILocalVariable(name: "pn", arg: 2, scope: !776, file: !761, line: 223, type: !779)
!787 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !776, file: !761, line: 223, type: !780)
!788 = !DILocalVariable(name: "n_max", arg: 4, scope: !776, file: !761, line: 223, type: !782)
!789 = !DILocalVariable(name: "s", arg: 5, scope: !776, file: !761, line: 223, type: !780)
!790 = !DILocalVariable(name: "n0", scope: !776, file: !761, line: 230, type: !780)
!791 = !DILocalVariable(name: "n", scope: !776, file: !761, line: 237, type: !780)
!792 = !DILocalVariable(name: "nbytes", scope: !776, file: !761, line: 248, type: !780)
!793 = !DILocalVariable(name: "adjusted_nbytes", scope: !776, file: !761, line: 252, type: !780)
!794 = !{!89, !145}
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !796, splitDebugInlining: false, nameTableKind: None)
!796 = !{!723, !726, !728}
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !798, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtol.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtol.Tpo -c lib/xstrtol.c -o lib/.libcoreutils_a-xstrtol.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !799, retainedTypes: !802, splitDebugInlining: false, nameTableKind: None)
!798 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!799 = !{!800}
!800 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !801, line: 30, baseType: !65, size: 32, elements: !78)
!801 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!802 = !{!113}
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !804, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!804 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !814, splitDebugInlining: false, nameTableKind: None)
!814 = !{!815, !748}
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !750, line: 35, type: !282, isLocal: true, isDefinition: true)
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !820, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!820 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!821 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!822 = !{i32 7, !"Dwarf Version", i32 5}
!823 = !{i32 2, !"Debug Info Version", i32 3}
!824 = !{i32 1, !"wchar_size", i32 4}
!825 = !{i32 8, !"PIC Level", i32 2}
!826 = !{i32 7, !"PIE Level", i32 2}
!827 = !{i32 7, !"uwtable", i32 2}
!828 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!829 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 66, type: !830, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !72}
!832 = !{!833}
!833 = !DILocalVariable(name: "status", arg: 1, scope: !829, file: !2, line: 66, type: !72)
!834 = !DILocation(line: 0, scope: !829)
!835 = !DILocation(line: 68, column: 14, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !2, line: 68, column: 7)
!837 = !DILocation(line: 68, column: 7, scope: !829)
!838 = !DILocation(line: 69, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !2, line: 69, column: 5)
!840 = !{!841, !841, i64 0}
!841 = !{!"any pointer", !842, i64 0}
!842 = !{!"omnipotent char", !843, i64 0}
!843 = !{!"Simple C/C++ TBAA"}
!844 = !DILocation(line: 72, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !836, file: !2, line: 71, column: 5)
!846 = !DILocation(line: 73, column: 7, scope: !845)
!847 = !DILocation(line: 736, column: 3, scope: !848, inlinedAt: !849)
!848 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !64, file: !64, line: 734, type: !470, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61)
!849 = distinct !DILocation(line: 80, column: 7, scope: !845)
!850 = !DILocation(line: 82, column: 7, scope: !845)
!851 = !DILocation(line: 86, column: 7, scope: !845)
!852 = !DILocation(line: 87, column: 7, scope: !845)
!853 = !DILocation(line: 88, column: 7, scope: !845)
!854 = !DILocalVariable(name: "program", arg: 1, scope: !855, file: !64, line: 824, type: !96)
!855 = distinct !DISubprogram(name: "emit_exec_status", scope: !64, file: !64, line: 824, type: !856, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !96}
!858 = !{!854}
!859 = !DILocation(line: 0, scope: !855, inlinedAt: !860)
!860 = distinct !DILocation(line: 89, column: 7, scope: !845)
!861 = !DILocation(line: 826, column: 7, scope: !855, inlinedAt: !860)
!862 = !DILocalVariable(name: "program", arg: 1, scope: !863, file: !64, line: 836, type: !96)
!863 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !64, file: !64, line: 836, type: !856, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !864)
!864 = !{!862, !865, !872, !873, !875, !876}
!865 = !DILocalVariable(name: "infomap", scope: !863, file: !64, line: 838, type: !866)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 896, elements: !300)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !863, file: !64, line: 838, size: 128, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !868, file: !64, line: 838, baseType: !96, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !868, file: !64, line: 838, baseType: !96, size: 64, offset: 64)
!872 = !DILocalVariable(name: "node", scope: !863, file: !64, line: 848, type: !96)
!873 = !DILocalVariable(name: "map_prog", scope: !863, file: !64, line: 849, type: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!875 = !DILocalVariable(name: "lc_messages", scope: !863, file: !64, line: 861, type: !96)
!876 = !DILocalVariable(name: "url_program", scope: !863, file: !64, line: 874, type: !96)
!877 = !DILocation(line: 0, scope: !863, inlinedAt: !878)
!878 = distinct !DILocation(line: 90, column: 7, scope: !845)
!879 = !{}
!880 = !DILocation(line: 857, column: 3, scope: !863, inlinedAt: !878)
!881 = !DILocation(line: 861, column: 29, scope: !863, inlinedAt: !878)
!882 = !DILocation(line: 862, column: 7, scope: !883, inlinedAt: !878)
!883 = distinct !DILexicalBlock(scope: !863, file: !64, line: 862, column: 7)
!884 = !DILocation(line: 862, column: 19, scope: !883, inlinedAt: !878)
!885 = !DILocation(line: 862, column: 22, scope: !883, inlinedAt: !878)
!886 = !DILocation(line: 862, column: 7, scope: !863, inlinedAt: !878)
!887 = !DILocation(line: 868, column: 7, scope: !888, inlinedAt: !878)
!888 = distinct !DILexicalBlock(scope: !883, file: !64, line: 863, column: 5)
!889 = !DILocation(line: 870, column: 5, scope: !888, inlinedAt: !878)
!890 = !DILocation(line: 875, column: 3, scope: !863, inlinedAt: !878)
!891 = !DILocation(line: 877, column: 3, scope: !863, inlinedAt: !878)
!892 = !DILocation(line: 92, column: 3, scope: !829)
!893 = !DISubprogram(name: "dcgettext", scope: !894, file: !894, line: 51, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!895 = !DISubroutineType(types: !896)
!896 = !{!89, !96, !96, !72}
!897 = !DISubprogram(name: "__fprintf_chk", scope: !898, file: !898, line: 93, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!899 = !DISubroutineType(types: !900)
!900 = !{!72, !901, !72, !902, null}
!901 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!902 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!903 = !DISubprogram(name: "__printf_chk", scope: !898, file: !898, line: 95, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DISubroutineType(types: !905)
!905 = !{!72, !72, !902, null}
!906 = !DISubprogram(name: "fputs_unlocked", scope: !907, file: !907, line: 691, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!908 = !DISubroutineType(types: !909)
!909 = !{!72, !902, !901}
!910 = !DILocation(line: 0, scope: !193)
!911 = !DILocation(line: 581, column: 7, scope: !201)
!912 = !{!913, !913, i64 0}
!913 = !{!"int", !842, i64 0}
!914 = !DILocation(line: 581, column: 19, scope: !201)
!915 = !DILocation(line: 581, column: 7, scope: !193)
!916 = !DILocation(line: 585, column: 26, scope: !200)
!917 = !DILocation(line: 0, scope: !200)
!918 = !DILocation(line: 586, column: 23, scope: !200)
!919 = !DILocation(line: 586, column: 28, scope: !200)
!920 = !DILocation(line: 586, column: 32, scope: !200)
!921 = !{!842, !842, i64 0}
!922 = !DILocation(line: 586, column: 38, scope: !200)
!923 = !DILocalVariable(name: "__s1", arg: 1, scope: !924, file: !925, line: 1359, type: !96)
!924 = distinct !DISubprogram(name: "streq", scope: !925, file: !925, line: 1359, type: !926, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !928)
!925 = !DIFile(filename: "./lib/string.h", directory: "/src")
!926 = !DISubroutineType(types: !927)
!927 = !{!99, !96, !96}
!928 = !{!923, !929}
!929 = !DILocalVariable(name: "__s2", arg: 2, scope: !924, file: !925, line: 1359, type: !96)
!930 = !DILocation(line: 0, scope: !924, inlinedAt: !931)
!931 = distinct !DILocation(line: 586, column: 41, scope: !200)
!932 = !DILocation(line: 1361, column: 11, scope: !924, inlinedAt: !931)
!933 = !DILocation(line: 1361, column: 10, scope: !924, inlinedAt: !931)
!934 = !DILocation(line: 586, column: 19, scope: !200)
!935 = !DILocation(line: 587, column: 5, scope: !200)
!936 = !DILocation(line: 588, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !193, file: !64, line: 588, column: 7)
!938 = !DILocation(line: 588, column: 7, scope: !193)
!939 = !DILocation(line: 590, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !64, line: 589, column: 5)
!941 = !DILocation(line: 591, column: 7, scope: !940)
!942 = !DILocation(line: 595, column: 37, scope: !193)
!943 = !DILocation(line: 595, column: 35, scope: !193)
!944 = !DILocation(line: 596, column: 29, scope: !193)
!945 = !DILocation(line: 597, column: 8, scope: !208)
!946 = !DILocation(line: 597, column: 7, scope: !193)
!947 = !DILocation(line: 604, column: 24, scope: !207)
!948 = !DILocation(line: 604, column: 12, scope: !208)
!949 = !DILocation(line: 0, scope: !206)
!950 = !DILocation(line: 610, column: 16, scope: !206)
!951 = !DILocation(line: 610, column: 7, scope: !206)
!952 = !DILocation(line: 611, column: 21, scope: !206)
!953 = !{!954, !954, i64 0}
!954 = !{!"short", !842, i64 0}
!955 = !DILocation(line: 611, column: 19, scope: !206)
!956 = !DILocation(line: 611, column: 16, scope: !206)
!957 = !DILocation(line: 610, column: 30, scope: !206)
!958 = distinct !{!958, !951, !952, !959}
!959 = !{!"llvm.loop.mustprogress"}
!960 = !DILocation(line: 612, column: 18, scope: !961)
!961 = distinct !DILexicalBlock(scope: !206, file: !64, line: 612, column: 11)
!962 = !DILocation(line: 612, column: 11, scope: !206)
!963 = !DILocation(line: 620, column: 23, scope: !193)
!964 = !DILocation(line: 625, column: 39, scope: !193)
!965 = !DILocation(line: 626, column: 3, scope: !193)
!966 = !DILocation(line: 626, column: 10, scope: !193)
!967 = !DILocation(line: 626, column: 21, scope: !193)
!968 = !DILocation(line: 628, column: 44, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !64, line: 628, column: 11)
!970 = distinct !DILexicalBlock(scope: !193, file: !64, line: 627, column: 5)
!971 = !DILocation(line: 628, column: 32, scope: !969)
!972 = !DILocation(line: 628, column: 49, scope: !969)
!973 = !DILocation(line: 628, column: 11, scope: !970)
!974 = !DILocation(line: 630, column: 11, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !64, line: 630, column: 11)
!976 = !DILocation(line: 630, column: 11, scope: !970)
!977 = !DILocation(line: 632, column: 26, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !64, line: 632, column: 15)
!979 = distinct !DILexicalBlock(scope: !975, file: !64, line: 631, column: 9)
!980 = !DILocation(line: 632, column: 34, scope: !978)
!981 = !DILocation(line: 632, column: 37, scope: !978)
!982 = !DILocation(line: 632, column: 15, scope: !979)
!983 = !DILocation(line: 636, column: 16, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !64, line: 636, column: 15)
!985 = !DILocation(line: 636, column: 29, scope: !984)
!986 = !DILocation(line: 640, column: 16, scope: !970)
!987 = distinct !{!987, !965, !988, !959}
!988 = !DILocation(line: 641, column: 5, scope: !193)
!989 = !DILocation(line: 644, column: 3, scope: !193)
!990 = !DILocation(line: 0, scope: !924, inlinedAt: !991)
!991 = distinct !DILocation(line: 648, column: 31, scope: !193)
!992 = !DILocation(line: 0, scope: !924, inlinedAt: !993)
!993 = distinct !DILocation(line: 649, column: 31, scope: !193)
!994 = !DILocation(line: 0, scope: !924, inlinedAt: !995)
!995 = distinct !DILocation(line: 650, column: 31, scope: !193)
!996 = !DILocation(line: 0, scope: !924, inlinedAt: !997)
!997 = distinct !DILocation(line: 651, column: 31, scope: !193)
!998 = !DILocation(line: 0, scope: !924, inlinedAt: !999)
!999 = distinct !DILocation(line: 652, column: 31, scope: !193)
!1000 = !DILocation(line: 0, scope: !924, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 653, column: 31, scope: !193)
!1002 = !DILocation(line: 0, scope: !924, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 654, column: 31, scope: !193)
!1004 = !DILocation(line: 0, scope: !924, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 655, column: 31, scope: !193)
!1006 = !DILocation(line: 0, scope: !924, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 656, column: 31, scope: !193)
!1008 = !DILocation(line: 0, scope: !924, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 657, column: 31, scope: !193)
!1010 = !DILocation(line: 663, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !193, file: !64, line: 663, column: 7)
!1012 = !DILocation(line: 664, column: 7, scope: !1011)
!1013 = !DILocation(line: 664, column: 10, scope: !1011)
!1014 = !DILocation(line: 663, column: 7, scope: !193)
!1015 = !DILocation(line: 669, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !64, line: 665, column: 5)
!1017 = !DILocation(line: 671, column: 5, scope: !1016)
!1018 = !DILocation(line: 676, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1011, file: !64, line: 673, column: 5)
!1020 = !DILocation(line: 679, column: 3, scope: !193)
!1021 = !DILocation(line: 683, column: 3, scope: !193)
!1022 = !DILocation(line: 686, column: 3, scope: !193)
!1023 = !DILocation(line: 688, column: 3, scope: !193)
!1024 = !DILocation(line: 691, column: 3, scope: !193)
!1025 = !DILocation(line: 695, column: 3, scope: !193)
!1026 = !DILocation(line: 696, column: 1, scope: !193)
!1027 = !DISubprogram(name: "setlocale", scope: !1028, file: !1028, line: 122, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!89, !72, !96}
!1031 = !DISubprogram(name: "strncmp", scope: !1032, file: !1032, line: 159, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!72, !96, !96, !147}
!1035 = !DISubprogram(name: "exit", scope: !1036, file: !1036, line: 624, type: !830, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1036 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1037 = !DISubprogram(name: "getenv", scope: !1036, file: !1036, line: 641, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!89, !96}
!1040 = !DISubprogram(name: "strcmp", scope: !1032, file: !1032, line: 156, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!72, !96, !96}
!1043 = !DISubprogram(name: "strspn", scope: !1032, file: !1032, line: 297, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!149, !96, !96}
!1046 = !DISubprogram(name: "strchr", scope: !1032, file: !1032, line: 246, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!89, !96, !72}
!1049 = !DISubprogram(name: "__ctype_b_loc", scope: !130, file: !130, line: 79, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1055 = !DISubprogram(name: "strcspn", scope: !1032, file: !1032, line: 293, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubprogram(name: "fwrite_unlocked", scope: !907, file: !907, line: 704, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!147, !1059, !147, !147, !901}
!1059 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1062 = distinct !DIAssignID()
!1063 = !DILocation(line: 0, scope: !111)
!1064 = !DILocation(line: 0, scope: !85)
!1065 = !DILocation(line: 111, column: 21, scope: !85)
!1066 = !DILocation(line: 111, column: 3, scope: !85)
!1067 = !DILocation(line: 112, column: 3, scope: !85)
!1068 = !DILocation(line: 113, column: 3, scope: !85)
!1069 = !DILocation(line: 114, column: 3, scope: !85)
!1070 = !DILocalVariable(name: "status", arg: 1, scope: !1071, file: !64, line: 102, type: !72)
!1071 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !64, file: !64, line: 102, type: !830, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1072)
!1072 = !{!1070}
!1073 = !DILocation(line: 0, scope: !1071, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 116, column: 3, scope: !85)
!1075 = !DILocation(line: 105, column: 18, scope: !1076, inlinedAt: !1074)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !64, line: 104, column: 7)
!1077 = !DILocation(line: 117, column: 3, scope: !85)
!1078 = !DILocation(line: 119, column: 17, scope: !103)
!1079 = !DILocation(line: 119, column: 3, scope: !104)
!1080 = !DILocation(line: 121, column: 23, scope: !102)
!1081 = !DILocation(line: 0, scope: !102)
!1082 = !DILocation(line: 123, column: 11, scope: !107)
!1083 = !DILocation(line: 123, column: 16, scope: !107)
!1084 = !DILocation(line: 123, column: 23, scope: !107)
!1085 = !DILocation(line: 123, column: 44, scope: !107)
!1086 = !DILocation(line: 123, column: 49, scope: !107)
!1087 = !DILocation(line: 123, column: 56, scope: !107)
!1088 = !DILocation(line: 123, column: 41, scope: !107)
!1089 = !DILocation(line: 123, column: 37, scope: !107)
!1090 = !DILocalVariable(name: "c", arg: 1, scope: !1091, file: !1092, line: 233, type: !72)
!1091 = distinct !DISubprogram(name: "c_isdigit", scope: !1092, file: !1092, line: 233, type: !1093, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1095)
!1092 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!99, !72}
!1095 = !{!1090}
!1096 = !DILocation(line: 0, scope: !1091, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 123, column: 26, scope: !107)
!1098 = !DILocation(line: 235, column: 3, scope: !1091, inlinedAt: !1097)
!1099 = !DILocation(line: 123, column: 11, scope: !102)
!1100 = !DILocation(line: 126, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !107, file: !2, line: 124, column: 9)
!1102 = !DILocation(line: 127, column: 9, scope: !1101)
!1103 = !DILocation(line: 131, column: 37, scope: !106)
!1104 = !DILocation(line: 131, column: 32, scope: !106)
!1105 = !DILocation(line: 0, scope: !106)
!1106 = !DILocation(line: 132, column: 35, scope: !106)
!1107 = !DILocation(line: 135, column: 26, scope: !106)
!1108 = !DILocation(line: 135, column: 24, scope: !106)
!1109 = !DILocation(line: 138, column: 18, scope: !106)
!1110 = !DILocation(line: 140, column: 15, scope: !106)
!1111 = !DILocation(line: 141, column: 16, scope: !106)
!1112 = !DILocation(line: 141, column: 13, scope: !106)
!1113 = !DILocation(line: 143, column: 11, scope: !106)
!1114 = !DILocation(line: 152, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !106, file: !2, line: 144, column: 13)
!1116 = !DILocation(line: 154, column: 13, scope: !1115)
!1117 = !DILocation(line: 157, column: 15, scope: !1115)
!1118 = !DILocation(line: 146, column: 34, scope: !1115)
!1119 = !DILocation(line: 0, scope: !107)
!1120 = !DILocation(line: 0, scope: !104)
!1121 = !DILocation(line: 166, column: 7, scope: !112)
!1122 = !DILocation(line: 166, column: 7, scope: !85)
!1123 = !DILocation(line: 179, column: 7, scope: !111)
!1124 = !DILocation(line: 180, column: 30, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !111, file: !2, line: 180, column: 11)
!1126 = !DILocation(line: 180, column: 28, scope: !1125)
!1127 = !DILocation(line: 180, column: 11, scope: !111)
!1128 = !DILocation(line: 181, column: 9, scope: !1125)
!1129 = !DILocation(line: 213, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !85, file: !2, line: 213, column: 7)
!1131 = !DILocation(line: 213, column: 7, scope: !85)
!1132 = !DILocation(line: 209, column: 20, scope: !111)
!1133 = !DILocation(line: 211, column: 5, scope: !112)
!1134 = !DILocation(line: 217, column: 11, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 216, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 215, column: 11)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 214, column: 5)
!1138 = !DILocation(line: 218, column: 11, scope: !1135)
!1139 = !DILocation(line: 221, column: 7, scope: !1137)
!1140 = !DILocation(line: 221, column: 13, scope: !1137)
!1141 = !DILocation(line: 222, column: 26, scope: !1137)
!1142 = !DILocation(line: 223, column: 28, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 223, column: 11)
!1144 = !DILocation(line: 223, column: 34, scope: !1143)
!1145 = !DILocation(line: 223, column: 37, scope: !1143)
!1146 = !DILocation(line: 223, column: 43, scope: !1143)
!1147 = !DILocation(line: 223, column: 11, scope: !1137)
!1148 = !DILocation(line: 224, column: 9, scope: !1143)
!1149 = !DILocation(line: 225, column: 7, scope: !1137)
!1150 = !DILocation(line: 226, column: 7, scope: !1137)
!1151 = !DILocation(line: 229, column: 3, scope: !85)
!1152 = !DILocation(line: 229, column: 9, scope: !85)
!1153 = !DILocation(line: 233, column: 22, scope: !85)
!1154 = !DILocation(line: 234, column: 24, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !85, file: !2, line: 234, column: 7)
!1156 = !DILocation(line: 234, column: 30, scope: !1155)
!1157 = !DILocation(line: 234, column: 33, scope: !1155)
!1158 = !DILocation(line: 234, column: 39, scope: !1155)
!1159 = !DILocation(line: 234, column: 7, scope: !85)
!1160 = !DILocation(line: 235, column: 5, scope: !1155)
!1161 = !DILocation(line: 236, column: 56, scope: !85)
!1162 = !DILocation(line: 236, column: 9, scope: !85)
!1163 = !DILocation(line: 236, column: 70, scope: !85)
!1164 = !DILocation(line: 238, column: 7, scope: !85)
!1165 = !DILocation(line: 240, column: 7, scope: !115)
!1166 = !DILocalVariable(name: "err", arg: 1, scope: !1167, file: !2, line: 96, type: !72)
!1167 = distinct !DISubprogram(name: "perm_related_errno", scope: !2, file: !2, line: 96, type: !1093, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1168)
!1168 = !{!1166}
!1169 = !DILocation(line: 0, scope: !1167, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 240, column: 7, scope: !115)
!1171 = !DILocation(line: 98, column: 14, scope: !1167, inlinedAt: !1170)
!1172 = !DILocation(line: 98, column: 24, scope: !1167, inlinedAt: !1170)
!1173 = !DILocation(line: 0, scope: !115)
!1174 = !DILocation(line: 247, column: 11, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !116, file: !2, line: 247, column: 11)
!1176 = !DILocalVariable(name: "__stream", arg: 1, scope: !1177, file: !1178, line: 135, type: !215)
!1177 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1178, file: !1178, line: 135, type: !1179, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1181)
!1178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!72, !215}
!1181 = !{!1176}
!1182 = !DILocation(line: 0, scope: !1177, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 247, column: 11, scope: !1175)
!1184 = !DILocation(line: 137, column: 10, scope: !1177, inlinedAt: !1183)
!1185 = !{!1186, !913, i64 0}
!1186 = !{!"_IO_FILE", !913, i64 0, !841, i64 8, !841, i64 16, !841, i64 24, !841, i64 32, !841, i64 40, !841, i64 48, !841, i64 56, !841, i64 64, !841, i64 72, !841, i64 80, !841, i64 88, !841, i64 96, !841, i64 104, !913, i64 112, !913, i64 116, !1187, i64 120, !954, i64 128, !842, i64 130, !842, i64 131, !841, i64 136, !1187, i64 144, !841, i64 152, !841, i64 160, !841, i64 168, !841, i64 176, !1187, i64 184, !913, i64 192, !842, i64 196}
!1187 = !{!"long", !842, i64 0}
!1188 = !DILocation(line: 247, column: 11, scope: !116)
!1189 = !DILocation(line: 251, column: 11, scope: !85)
!1190 = !DILocation(line: 251, column: 3, scope: !85)
!1191 = !DILocation(line: 253, column: 21, scope: !85)
!1192 = !DILocation(line: 253, column: 27, scope: !85)
!1193 = !DILocation(line: 254, column: 3, scope: !85)
!1194 = !DILocation(line: 256, column: 1, scope: !85)
!1195 = !DISubprogram(name: "bindtextdomain", scope: !894, file: !894, line: 86, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!89, !96, !96}
!1198 = !DISubprogram(name: "textdomain", scope: !894, file: !894, line: 82, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1199 = !DISubprogram(name: "atexit", scope: !1036, file: !1036, line: 602, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!72, !469}
!1202 = !DISubprogram(name: "getopt_long", scope: !392, file: !392, line: 66, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!72, !72, !1205, !96, !1207, !397}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1208 = !DISubprogram(name: "__errno_location", scope: !1209, file: !1209, line: 37, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!397}
!1212 = !DISubprogram(name: "getpriority", scope: !1213, file: !1213, line: 105, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "e55940cb1bf33174af2c45f02cd69e8a")
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!72, !1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__priority_which_t", file: !1213, line: 40, baseType: !123)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "id_t", file: !1218, line: 103, baseType: !1219)
!1218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__id_t", file: !242, line: 159, baseType: !65)
!1220 = !DISubprogram(name: "setpriority", scope: !1213, file: !1213, line: 109, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!72, !1216, !1217, !72}
!1223 = !DISubprogram(name: "execvp", scope: !1224, file: !1224, line: 599, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!72, !96, !1205}
!1227 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !409, file: !409, line: 50, type: !856, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1228)
!1228 = !{!1229}
!1229 = !DILocalVariable(name: "file", arg: 1, scope: !1227, file: !409, line: 50, type: !96)
!1230 = !DILocation(line: 0, scope: !1227)
!1231 = !DILocation(line: 52, column: 13, scope: !1227)
!1232 = !DILocation(line: 53, column: 1, scope: !1227)
!1233 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !409, file: !409, line: 87, type: !1234, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !99}
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "ignore", arg: 1, scope: !1233, file: !409, line: 87, type: !99)
!1238 = !DILocation(line: 0, scope: !1233)
!1239 = !DILocation(line: 89, column: 16, scope: !1233)
!1240 = !{!1241, !1241, i64 0}
!1241 = !{!"_Bool", !842, i64 0}
!1242 = !DILocation(line: 90, column: 1, scope: !1233)
!1243 = distinct !DISubprogram(name: "close_stdout", scope: !409, file: !409, line: 116, type: !470, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1244)
!1244 = !{!1245}
!1245 = !DILocalVariable(name: "write_error", scope: !1246, file: !409, line: 121, type: !96)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !409, line: 120, column: 5)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !409, line: 118, column: 7)
!1248 = !DILocation(line: 118, column: 21, scope: !1247)
!1249 = !DILocation(line: 118, column: 7, scope: !1247)
!1250 = !DILocation(line: 118, column: 29, scope: !1247)
!1251 = !DILocation(line: 119, column: 7, scope: !1247)
!1252 = !DILocation(line: 119, column: 12, scope: !1247)
!1253 = !{i8 0, i8 2}
!1254 = !DILocation(line: 119, column: 25, scope: !1247)
!1255 = !DILocation(line: 119, column: 28, scope: !1247)
!1256 = !DILocation(line: 119, column: 34, scope: !1247)
!1257 = !DILocation(line: 118, column: 7, scope: !1243)
!1258 = !DILocation(line: 121, column: 33, scope: !1246)
!1259 = !DILocation(line: 0, scope: !1246)
!1260 = !DILocation(line: 122, column: 11, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1246, file: !409, line: 122, column: 11)
!1262 = !DILocation(line: 0, scope: !1261)
!1263 = !DILocation(line: 122, column: 11, scope: !1246)
!1264 = !DILocation(line: 123, column: 9, scope: !1261)
!1265 = !DILocation(line: 126, column: 9, scope: !1261)
!1266 = !DILocation(line: 128, column: 14, scope: !1246)
!1267 = !DILocation(line: 128, column: 7, scope: !1246)
!1268 = !DILocation(line: 133, column: 42, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1243, file: !409, line: 133, column: 7)
!1270 = !DILocation(line: 133, column: 28, scope: !1269)
!1271 = !DILocation(line: 133, column: 50, scope: !1269)
!1272 = !DILocation(line: 133, column: 7, scope: !1243)
!1273 = !DILocation(line: 134, column: 12, scope: !1269)
!1274 = !DILocation(line: 134, column: 5, scope: !1269)
!1275 = !DILocation(line: 135, column: 1, scope: !1243)
!1276 = !DISubprogram(name: "_exit", scope: !1224, file: !1224, line: 624, type: !830, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1277 = distinct !DISubprogram(name: "verror", scope: !424, file: !424, line: 251, type: !1278, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !72, !72, !96, !434}
!1280 = !{!1281, !1282, !1283, !1284}
!1281 = !DILocalVariable(name: "status", arg: 1, scope: !1277, file: !424, line: 251, type: !72)
!1282 = !DILocalVariable(name: "errnum", arg: 2, scope: !1277, file: !424, line: 251, type: !72)
!1283 = !DILocalVariable(name: "message", arg: 3, scope: !1277, file: !424, line: 251, type: !96)
!1284 = !DILocalVariable(name: "args", arg: 4, scope: !1277, file: !424, line: 251, type: !434)
!1285 = !DILocation(line: 0, scope: !1277)
!1286 = !DILocation(line: 261, column: 3, scope: !1277)
!1287 = !DILocation(line: 265, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1277, file: !424, line: 265, column: 7)
!1289 = !DILocation(line: 265, column: 7, scope: !1277)
!1290 = !DILocation(line: 266, column: 5, scope: !1288)
!1291 = !DILocation(line: 272, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !424, line: 268, column: 5)
!1293 = !DILocation(line: 276, column: 3, scope: !1277)
!1294 = !DILocation(line: 282, column: 1, scope: !1277)
!1295 = distinct !DISubprogram(name: "flush_stdout", scope: !424, file: !424, line: 163, type: !470, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1296)
!1296 = !{!1297}
!1297 = !DILocalVariable(name: "stdout_fd", scope: !1295, file: !424, line: 166, type: !72)
!1298 = !DILocation(line: 0, scope: !1295)
!1299 = !DILocalVariable(name: "fd", arg: 1, scope: !1300, file: !424, line: 145, type: !72)
!1300 = distinct !DISubprogram(name: "is_open", scope: !424, file: !424, line: 145, type: !1301, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!72, !72}
!1303 = !{!1299}
!1304 = !DILocation(line: 0, scope: !1300, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 182, column: 25, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1295, file: !424, line: 182, column: 7)
!1307 = !DILocation(line: 157, column: 15, scope: !1300, inlinedAt: !1305)
!1308 = !DILocation(line: 157, column: 12, scope: !1300, inlinedAt: !1305)
!1309 = !DILocation(line: 182, column: 7, scope: !1295)
!1310 = !DILocation(line: 184, column: 5, scope: !1306)
!1311 = !DILocation(line: 185, column: 1, scope: !1295)
!1312 = distinct !DISubprogram(name: "error_tail", scope: !424, file: !424, line: 219, type: !1278, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1313)
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DILocalVariable(name: "status", arg: 1, scope: !1312, file: !424, line: 219, type: !72)
!1315 = !DILocalVariable(name: "errnum", arg: 2, scope: !1312, file: !424, line: 219, type: !72)
!1316 = !DILocalVariable(name: "message", arg: 3, scope: !1312, file: !424, line: 219, type: !96)
!1317 = !DILocalVariable(name: "args", arg: 4, scope: !1312, file: !424, line: 219, type: !434)
!1318 = distinct !DIAssignID()
!1319 = !DILocation(line: 0, scope: !1312)
!1320 = !DILocation(line: 229, column: 13, scope: !1312)
!1321 = !DILocalVariable(name: "__stream", arg: 1, scope: !1322, file: !898, line: 132, type: !1325)
!1322 = distinct !DISubprogram(name: "vfprintf", scope: !898, file: !898, line: 132, type: !1323, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1360)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!72, !1325, !902, !434}
!1325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1328, file: !219, line: 51, baseType: !72, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1328, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1328, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1328, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1328, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1328, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1328, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1328, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1328, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1328, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1328, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1328, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1328, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1328, file: !219, line: 70, baseType: !1344, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1328, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1328, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1328, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1328, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1328, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1328, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1328, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1328, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1328, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1328, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1328, file: !219, line: 93, baseType: !1344, size: 64, offset: 1344)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1328, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1328, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1328, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1328, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!1360 = !{!1321, !1361, !1362}
!1361 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1322, file: !898, line: 133, type: !902)
!1362 = !DILocalVariable(name: "__ap", arg: 3, scope: !1322, file: !898, line: 133, type: !434)
!1363 = !DILocation(line: 0, scope: !1322, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 229, column: 3, scope: !1312)
!1365 = !DILocation(line: 135, column: 10, scope: !1322, inlinedAt: !1364)
!1366 = !DILocation(line: 232, column: 3, scope: !1312)
!1367 = !DILocation(line: 233, column: 7, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1312, file: !424, line: 233, column: 7)
!1369 = !DILocation(line: 233, column: 7, scope: !1312)
!1370 = !DILocalVariable(name: "errbuf", scope: !1371, file: !424, line: 193, type: !1375)
!1371 = distinct !DISubprogram(name: "print_errno_message", scope: !424, file: !424, line: 188, type: !830, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1372)
!1372 = !{!1373, !1374, !1370}
!1373 = !DILocalVariable(name: "errnum", arg: 1, scope: !1371, file: !424, line: 188, type: !72)
!1374 = !DILocalVariable(name: "s", scope: !1371, file: !424, line: 190, type: !96)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1376)
!1376 = !{!1377}
!1377 = !DISubrange(count: 1024)
!1378 = !DILocation(line: 0, scope: !1371, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 234, column: 5, scope: !1368)
!1380 = !DILocation(line: 193, column: 3, scope: !1371, inlinedAt: !1379)
!1381 = !DILocation(line: 195, column: 7, scope: !1371, inlinedAt: !1379)
!1382 = !DILocation(line: 207, column: 9, scope: !1383, inlinedAt: !1379)
!1383 = distinct !DILexicalBlock(scope: !1371, file: !424, line: 207, column: 7)
!1384 = !DILocation(line: 207, column: 7, scope: !1371, inlinedAt: !1379)
!1385 = !DILocation(line: 208, column: 9, scope: !1383, inlinedAt: !1379)
!1386 = !DILocation(line: 208, column: 5, scope: !1383, inlinedAt: !1379)
!1387 = !DILocation(line: 214, column: 3, scope: !1371, inlinedAt: !1379)
!1388 = !DILocation(line: 216, column: 1, scope: !1371, inlinedAt: !1379)
!1389 = !DILocation(line: 234, column: 5, scope: !1368)
!1390 = !DILocation(line: 238, column: 3, scope: !1312)
!1391 = !DILocalVariable(name: "__c", arg: 1, scope: !1392, file: !1178, line: 101, type: !72)
!1392 = distinct !DISubprogram(name: "putc_unlocked", scope: !1178, file: !1178, line: 101, type: !1393, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!72, !72, !1326}
!1395 = !{!1391, !1396}
!1396 = !DILocalVariable(name: "__stream", arg: 2, scope: !1392, file: !1178, line: 101, type: !1326)
!1397 = !DILocation(line: 0, scope: !1392, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 238, column: 3, scope: !1312)
!1399 = !DILocation(line: 103, column: 10, scope: !1392, inlinedAt: !1398)
!1400 = !{!1186, !841, i64 40}
!1401 = !{!1186, !841, i64 48}
!1402 = !{!"branch_weights", i32 2000, i32 1}
!1403 = !DILocation(line: 240, column: 3, scope: !1312)
!1404 = !DILocation(line: 241, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1312, file: !424, line: 241, column: 7)
!1406 = !DILocation(line: 241, column: 7, scope: !1312)
!1407 = !DILocation(line: 242, column: 5, scope: !1405)
!1408 = !DILocation(line: 243, column: 1, scope: !1312)
!1409 = !DISubprogram(name: "__vfprintf_chk", scope: !898, file: !898, line: 96, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!72, !1325, !72, !902, !434}
!1412 = !DISubprogram(name: "strerror_r", scope: !1032, file: !1032, line: 444, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!89, !72, !89, !147}
!1415 = !DISubprogram(name: "__overflow", scope: !907, file: !907, line: 886, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!72, !1326, !72}
!1418 = !DISubprogram(name: "fflush_unlocked", scope: !907, file: !907, line: 239, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!72, !1326}
!1421 = !DISubprogram(name: "fcntl", scope: !1422, file: !1422, line: 149, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!72, !72, !72, null}
!1425 = distinct !DISubprogram(name: "error", scope: !424, file: !424, line: 285, type: !1426, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !72, !72, !96, null}
!1428 = !{!1429, !1430, !1431, !1432}
!1429 = !DILocalVariable(name: "status", arg: 1, scope: !1425, file: !424, line: 285, type: !72)
!1430 = !DILocalVariable(name: "errnum", arg: 2, scope: !1425, file: !424, line: 285, type: !72)
!1431 = !DILocalVariable(name: "message", arg: 3, scope: !1425, file: !424, line: 285, type: !96)
!1432 = !DILocalVariable(name: "ap", scope: !1425, file: !424, line: 287, type: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !907, line: 52, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1435, line: 12, baseType: !1436)
!1435 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !424, baseType: !1437)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 192, elements: !42)
!1438 = distinct !DIAssignID()
!1439 = !DILocation(line: 0, scope: !1425)
!1440 = !DILocation(line: 287, column: 3, scope: !1425)
!1441 = !DILocation(line: 288, column: 3, scope: !1425)
!1442 = !DILocation(line: 289, column: 3, scope: !1425)
!1443 = !DILocation(line: 290, column: 3, scope: !1425)
!1444 = !DILocation(line: 291, column: 1, scope: !1425)
!1445 = !DILocation(line: 0, scope: !431)
!1446 = !DILocation(line: 302, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !431, file: !424, line: 302, column: 7)
!1448 = !DILocation(line: 302, column: 7, scope: !431)
!1449 = !DILocation(line: 307, column: 11, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !424, line: 307, column: 11)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !424, line: 303, column: 5)
!1452 = !DILocation(line: 307, column: 27, scope: !1450)
!1453 = !DILocation(line: 308, column: 11, scope: !1450)
!1454 = !DILocation(line: 308, column: 28, scope: !1450)
!1455 = !DILocation(line: 308, column: 25, scope: !1450)
!1456 = !DILocation(line: 309, column: 15, scope: !1450)
!1457 = !DILocation(line: 309, column: 33, scope: !1450)
!1458 = !DILocation(line: 310, column: 19, scope: !1450)
!1459 = !DILocation(line: 311, column: 22, scope: !1450)
!1460 = !DILocation(line: 311, column: 56, scope: !1450)
!1461 = !DILocation(line: 307, column: 11, scope: !1451)
!1462 = !DILocation(line: 316, column: 21, scope: !1451)
!1463 = !DILocation(line: 317, column: 23, scope: !1451)
!1464 = !DILocation(line: 318, column: 5, scope: !1451)
!1465 = !DILocation(line: 327, column: 3, scope: !431)
!1466 = !DILocation(line: 331, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !431, file: !424, line: 331, column: 7)
!1468 = !DILocation(line: 331, column: 7, scope: !431)
!1469 = !DILocation(line: 332, column: 5, scope: !1467)
!1470 = !DILocation(line: 338, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !424, line: 334, column: 5)
!1472 = !DILocation(line: 346, column: 3, scope: !431)
!1473 = !DILocation(line: 350, column: 3, scope: !431)
!1474 = !DILocation(line: 356, column: 1, scope: !431)
!1475 = distinct !DISubprogram(name: "error_at_line", scope: !424, file: !424, line: 359, type: !1476, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !72, !72, !96, !65, !96, null}
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484}
!1479 = !DILocalVariable(name: "status", arg: 1, scope: !1475, file: !424, line: 359, type: !72)
!1480 = !DILocalVariable(name: "errnum", arg: 2, scope: !1475, file: !424, line: 359, type: !72)
!1481 = !DILocalVariable(name: "file_name", arg: 3, scope: !1475, file: !424, line: 359, type: !96)
!1482 = !DILocalVariable(name: "line_number", arg: 4, scope: !1475, file: !424, line: 360, type: !65)
!1483 = !DILocalVariable(name: "message", arg: 5, scope: !1475, file: !424, line: 360, type: !96)
!1484 = !DILocalVariable(name: "ap", scope: !1475, file: !424, line: 362, type: !1433)
!1485 = distinct !DIAssignID()
!1486 = !DILocation(line: 0, scope: !1475)
!1487 = !DILocation(line: 362, column: 3, scope: !1475)
!1488 = !DILocation(line: 363, column: 3, scope: !1475)
!1489 = !DILocation(line: 364, column: 3, scope: !1475)
!1490 = !DILocation(line: 366, column: 3, scope: !1475)
!1491 = !DILocation(line: 367, column: 1, scope: !1475)
!1492 = distinct !DISubprogram(name: "getprogname", scope: !752, file: !752, line: 54, type: !1493, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!96}
!1495 = !DILocation(line: 58, column: 10, scope: !1492)
!1496 = !DILocation(line: 58, column: 3, scope: !1492)
!1497 = distinct !DISubprogram(name: "set_program_name", scope: !475, file: !475, line: 37, type: !856, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !1498)
!1498 = !{!1499, !1500, !1501}
!1499 = !DILocalVariable(name: "argv0", arg: 1, scope: !1497, file: !475, line: 37, type: !96)
!1500 = !DILocalVariable(name: "slash", scope: !1497, file: !475, line: 44, type: !96)
!1501 = !DILocalVariable(name: "base", scope: !1497, file: !475, line: 45, type: !96)
!1502 = !DILocation(line: 0, scope: !1497)
!1503 = !DILocation(line: 44, column: 23, scope: !1497)
!1504 = !DILocation(line: 45, column: 22, scope: !1497)
!1505 = !DILocation(line: 46, column: 17, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1497, file: !475, line: 46, column: 7)
!1507 = !DILocation(line: 46, column: 9, scope: !1506)
!1508 = !DILocation(line: 46, column: 25, scope: !1506)
!1509 = !DILocation(line: 46, column: 40, scope: !1506)
!1510 = !DILocalVariable(name: "__s1", arg: 1, scope: !1511, file: !925, line: 974, type: !1060)
!1511 = distinct !DISubprogram(name: "memeq", scope: !925, file: !925, line: 974, type: !1512, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!99, !1060, !1060, !147}
!1514 = !{!1510, !1515, !1516}
!1515 = !DILocalVariable(name: "__s2", arg: 2, scope: !1511, file: !925, line: 974, type: !1060)
!1516 = !DILocalVariable(name: "__n", arg: 3, scope: !1511, file: !925, line: 974, type: !147)
!1517 = !DILocation(line: 0, scope: !1511, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 46, column: 28, scope: !1506)
!1519 = !DILocation(line: 976, column: 11, scope: !1511, inlinedAt: !1518)
!1520 = !DILocation(line: 976, column: 10, scope: !1511, inlinedAt: !1518)
!1521 = !DILocation(line: 46, column: 7, scope: !1497)
!1522 = !DILocation(line: 49, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !475, line: 49, column: 11)
!1524 = distinct !DILexicalBlock(scope: !1506, file: !475, line: 47, column: 5)
!1525 = !DILocation(line: 49, column: 36, scope: !1523)
!1526 = !DILocation(line: 49, column: 11, scope: !1524)
!1527 = !DILocation(line: 65, column: 16, scope: !1497)
!1528 = !DILocation(line: 71, column: 27, scope: !1497)
!1529 = !DILocation(line: 74, column: 33, scope: !1497)
!1530 = !DILocation(line: 76, column: 1, scope: !1497)
!1531 = !DISubprogram(name: "strrchr", scope: !1032, file: !1032, line: 273, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1532 = distinct !DIAssignID()
!1533 = !DILocation(line: 0, scope: !484)
!1534 = distinct !DIAssignID()
!1535 = !DILocation(line: 40, column: 29, scope: !484)
!1536 = !DILocation(line: 41, column: 19, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !484, file: !485, line: 41, column: 7)
!1538 = !DILocation(line: 41, column: 7, scope: !484)
!1539 = !DILocation(line: 47, column: 3, scope: !484)
!1540 = !DILocation(line: 48, column: 3, scope: !484)
!1541 = !DILocalVariable(name: "ps", arg: 1, scope: !1542, file: !1543, line: 1135, type: !1546)
!1542 = distinct !DISubprogram(name: "mbszero", scope: !1543, file: !1543, line: 1135, type: !1544, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1547)
!1543 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1547 = !{!1541}
!1548 = !DILocation(line: 0, scope: !1542, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 48, column: 18, scope: !484)
!1550 = !DILocalVariable(name: "__dest", arg: 1, scope: !1551, file: !1552, line: 57, type: !145)
!1551 = distinct !DISubprogram(name: "memset", scope: !1552, file: !1552, line: 57, type: !1553, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1555)
!1552 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!145, !145, !72, !147}
!1555 = !{!1550, !1556, !1557}
!1556 = !DILocalVariable(name: "__ch", arg: 2, scope: !1551, file: !1552, line: 57, type: !72)
!1557 = !DILocalVariable(name: "__len", arg: 3, scope: !1551, file: !1552, line: 57, type: !147)
!1558 = !DILocation(line: 0, scope: !1551, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 1137, column: 3, scope: !1542, inlinedAt: !1549)
!1560 = !DILocation(line: 59, column: 10, scope: !1551, inlinedAt: !1559)
!1561 = !DILocation(line: 49, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !484, file: !485, line: 49, column: 7)
!1563 = !DILocation(line: 49, column: 39, scope: !1562)
!1564 = !DILocation(line: 49, column: 44, scope: !1562)
!1565 = !DILocation(line: 54, column: 1, scope: !484)
!1566 = !DISubprogram(name: "mbrtoc32", scope: !496, file: !496, line: 57, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!147, !1569, !902, !147, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1546)
!1572 = distinct !DISubprogram(name: "clone_quoting_options", scope: !515, file: !515, line: 113, type: !1573, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1576)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1575, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!1576 = !{!1577, !1578, !1579}
!1577 = !DILocalVariable(name: "o", arg: 1, scope: !1572, file: !515, line: 113, type: !1575)
!1578 = !DILocalVariable(name: "saved_errno", scope: !1572, file: !515, line: 115, type: !72)
!1579 = !DILocalVariable(name: "p", scope: !1572, file: !515, line: 116, type: !1575)
!1580 = !DILocation(line: 0, scope: !1572)
!1581 = !DILocation(line: 115, column: 21, scope: !1572)
!1582 = !DILocation(line: 116, column: 40, scope: !1572)
!1583 = !DILocation(line: 116, column: 31, scope: !1572)
!1584 = !DILocation(line: 118, column: 9, scope: !1572)
!1585 = !DILocation(line: 119, column: 3, scope: !1572)
!1586 = distinct !DISubprogram(name: "get_quoting_style", scope: !515, file: !515, line: 124, type: !1587, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1591)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!541, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!1591 = !{!1592}
!1592 = !DILocalVariable(name: "o", arg: 1, scope: !1586, file: !515, line: 124, type: !1589)
!1593 = !DILocation(line: 0, scope: !1586)
!1594 = !DILocation(line: 126, column: 11, scope: !1586)
!1595 = !DILocation(line: 126, column: 46, scope: !1586)
!1596 = !{!1597, !913, i64 0}
!1597 = !{!"quoting_options", !913, i64 0, !913, i64 4, !842, i64 8, !841, i64 40, !841, i64 48}
!1598 = !DILocation(line: 126, column: 3, scope: !1586)
!1599 = distinct !DISubprogram(name: "set_quoting_style", scope: !515, file: !515, line: 132, type: !1600, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1575, !541}
!1602 = !{!1603, !1604}
!1603 = !DILocalVariable(name: "o", arg: 1, scope: !1599, file: !515, line: 132, type: !1575)
!1604 = !DILocalVariable(name: "s", arg: 2, scope: !1599, file: !515, line: 132, type: !541)
!1605 = !DILocation(line: 0, scope: !1599)
!1606 = !DILocation(line: 134, column: 4, scope: !1599)
!1607 = !DILocation(line: 134, column: 45, scope: !1599)
!1608 = !DILocation(line: 135, column: 1, scope: !1599)
!1609 = distinct !DISubprogram(name: "set_char_quoting", scope: !515, file: !515, line: 143, type: !1610, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1612)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!72, !1575, !4, !72}
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1619, !1620}
!1613 = !DILocalVariable(name: "o", arg: 1, scope: !1609, file: !515, line: 143, type: !1575)
!1614 = !DILocalVariable(name: "c", arg: 2, scope: !1609, file: !515, line: 143, type: !4)
!1615 = !DILocalVariable(name: "i", arg: 3, scope: !1609, file: !515, line: 143, type: !72)
!1616 = !DILocalVariable(name: "uc", scope: !1609, file: !515, line: 145, type: !150)
!1617 = !DILocalVariable(name: "p", scope: !1609, file: !515, line: 146, type: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1619 = !DILocalVariable(name: "shift", scope: !1609, file: !515, line: 148, type: !72)
!1620 = !DILocalVariable(name: "r", scope: !1609, file: !515, line: 149, type: !65)
!1621 = !DILocation(line: 0, scope: !1609)
!1622 = !DILocation(line: 147, column: 6, scope: !1609)
!1623 = !DILocation(line: 147, column: 41, scope: !1609)
!1624 = !DILocation(line: 147, column: 62, scope: !1609)
!1625 = !DILocation(line: 147, column: 57, scope: !1609)
!1626 = !DILocation(line: 148, column: 15, scope: !1609)
!1627 = !DILocation(line: 149, column: 21, scope: !1609)
!1628 = !DILocation(line: 149, column: 24, scope: !1609)
!1629 = !DILocation(line: 149, column: 34, scope: !1609)
!1630 = !DILocation(line: 150, column: 19, scope: !1609)
!1631 = !DILocation(line: 150, column: 24, scope: !1609)
!1632 = !DILocation(line: 150, column: 6, scope: !1609)
!1633 = !DILocation(line: 151, column: 3, scope: !1609)
!1634 = distinct !DISubprogram(name: "set_quoting_flags", scope: !515, file: !515, line: 159, type: !1635, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!72, !1575, !72}
!1637 = !{!1638, !1639, !1640}
!1638 = !DILocalVariable(name: "o", arg: 1, scope: !1634, file: !515, line: 159, type: !1575)
!1639 = !DILocalVariable(name: "i", arg: 2, scope: !1634, file: !515, line: 159, type: !72)
!1640 = !DILocalVariable(name: "r", scope: !1634, file: !515, line: 163, type: !72)
!1641 = !DILocation(line: 0, scope: !1634)
!1642 = !DILocation(line: 161, column: 8, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !515, line: 161, column: 7)
!1644 = !DILocation(line: 161, column: 7, scope: !1634)
!1645 = !DILocation(line: 163, column: 14, scope: !1634)
!1646 = !{!1597, !913, i64 4}
!1647 = !DILocation(line: 164, column: 12, scope: !1634)
!1648 = !DILocation(line: 165, column: 3, scope: !1634)
!1649 = distinct !DISubprogram(name: "set_custom_quoting", scope: !515, file: !515, line: 169, type: !1650, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1575, !96, !96}
!1652 = !{!1653, !1654, !1655}
!1653 = !DILocalVariable(name: "o", arg: 1, scope: !1649, file: !515, line: 169, type: !1575)
!1654 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1649, file: !515, line: 170, type: !96)
!1655 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1649, file: !515, line: 170, type: !96)
!1656 = !DILocation(line: 0, scope: !1649)
!1657 = !DILocation(line: 172, column: 8, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !515, line: 172, column: 7)
!1659 = !DILocation(line: 172, column: 7, scope: !1649)
!1660 = !DILocation(line: 174, column: 12, scope: !1649)
!1661 = !DILocation(line: 175, column: 8, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1649, file: !515, line: 175, column: 7)
!1663 = !DILocation(line: 175, column: 19, scope: !1662)
!1664 = !DILocation(line: 176, column: 5, scope: !1662)
!1665 = !DILocation(line: 177, column: 6, scope: !1649)
!1666 = !DILocation(line: 177, column: 17, scope: !1649)
!1667 = !{!1597, !841, i64 40}
!1668 = !DILocation(line: 178, column: 6, scope: !1649)
!1669 = !DILocation(line: 178, column: 18, scope: !1649)
!1670 = !{!1597, !841, i64 48}
!1671 = !DILocation(line: 179, column: 1, scope: !1649)
!1672 = !DISubprogram(name: "abort", scope: !1036, file: !1036, line: 598, type: !470, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1673 = distinct !DISubprogram(name: "quotearg_buffer", scope: !515, file: !515, line: 774, type: !1674, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!147, !89, !147, !96, !147, !1589}
!1676 = !{!1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684}
!1677 = !DILocalVariable(name: "buffer", arg: 1, scope: !1673, file: !515, line: 774, type: !89)
!1678 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1673, file: !515, line: 774, type: !147)
!1679 = !DILocalVariable(name: "arg", arg: 3, scope: !1673, file: !515, line: 775, type: !96)
!1680 = !DILocalVariable(name: "argsize", arg: 4, scope: !1673, file: !515, line: 775, type: !147)
!1681 = !DILocalVariable(name: "o", arg: 5, scope: !1673, file: !515, line: 776, type: !1589)
!1682 = !DILocalVariable(name: "p", scope: !1673, file: !515, line: 778, type: !1589)
!1683 = !DILocalVariable(name: "saved_errno", scope: !1673, file: !515, line: 779, type: !72)
!1684 = !DILocalVariable(name: "r", scope: !1673, file: !515, line: 780, type: !147)
!1685 = !DILocation(line: 0, scope: !1673)
!1686 = !DILocation(line: 778, column: 37, scope: !1673)
!1687 = !DILocation(line: 779, column: 21, scope: !1673)
!1688 = !DILocation(line: 781, column: 43, scope: !1673)
!1689 = !DILocation(line: 781, column: 53, scope: !1673)
!1690 = !DILocation(line: 781, column: 63, scope: !1673)
!1691 = !DILocation(line: 782, column: 43, scope: !1673)
!1692 = !DILocation(line: 782, column: 58, scope: !1673)
!1693 = !DILocation(line: 780, column: 14, scope: !1673)
!1694 = !DILocation(line: 783, column: 9, scope: !1673)
!1695 = !DILocation(line: 784, column: 3, scope: !1673)
!1696 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !515, file: !515, line: 251, type: !1697, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1701)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!147, !89, !147, !96, !147, !541, !72, !1699, !96, !96}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1727, !1729, !1732, !1733, !1734, !1735, !1738, !1739, !1741, !1742, !1745, !1749, !1750, !1758, !1761, !1762, !1763}
!1702 = !DILocalVariable(name: "buffer", arg: 1, scope: !1696, file: !515, line: 251, type: !89)
!1703 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1696, file: !515, line: 251, type: !147)
!1704 = !DILocalVariable(name: "arg", arg: 3, scope: !1696, file: !515, line: 252, type: !96)
!1705 = !DILocalVariable(name: "argsize", arg: 4, scope: !1696, file: !515, line: 252, type: !147)
!1706 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1696, file: !515, line: 253, type: !541)
!1707 = !DILocalVariable(name: "flags", arg: 6, scope: !1696, file: !515, line: 253, type: !72)
!1708 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1696, file: !515, line: 254, type: !1699)
!1709 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1696, file: !515, line: 255, type: !96)
!1710 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1696, file: !515, line: 256, type: !96)
!1711 = !DILocalVariable(name: "unibyte_locale", scope: !1696, file: !515, line: 258, type: !99)
!1712 = !DILocalVariable(name: "len", scope: !1696, file: !515, line: 260, type: !147)
!1713 = !DILocalVariable(name: "orig_buffersize", scope: !1696, file: !515, line: 261, type: !147)
!1714 = !DILocalVariable(name: "quote_string", scope: !1696, file: !515, line: 262, type: !96)
!1715 = !DILocalVariable(name: "quote_string_len", scope: !1696, file: !515, line: 263, type: !147)
!1716 = !DILocalVariable(name: "backslash_escapes", scope: !1696, file: !515, line: 264, type: !99)
!1717 = !DILocalVariable(name: "elide_outer_quotes", scope: !1696, file: !515, line: 265, type: !99)
!1718 = !DILocalVariable(name: "encountered_single_quote", scope: !1696, file: !515, line: 266, type: !99)
!1719 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1696, file: !515, line: 267, type: !99)
!1720 = !DILabel(scope: !1696, name: "process_input", file: !515, line: 308)
!1721 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1696, file: !515, line: 309, type: !99)
!1722 = !DILocalVariable(name: "lq", scope: !1723, file: !515, line: 361, type: !96)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !515, line: 361, column: 11)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !515, line: 360, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !515, line: 333, column: 7)
!1726 = distinct !DILexicalBlock(scope: !1696, file: !515, line: 312, column: 5)
!1727 = !DILocalVariable(name: "i", scope: !1728, file: !515, line: 395, type: !147)
!1728 = distinct !DILexicalBlock(scope: !1696, file: !515, line: 395, column: 3)
!1729 = !DILocalVariable(name: "is_right_quote", scope: !1730, file: !515, line: 397, type: !99)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !515, line: 396, column: 5)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !515, line: 395, column: 3)
!1732 = !DILocalVariable(name: "escaping", scope: !1730, file: !515, line: 398, type: !99)
!1733 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1730, file: !515, line: 399, type: !99)
!1734 = !DILocalVariable(name: "c", scope: !1730, file: !515, line: 417, type: !150)
!1735 = !DILabel(scope: !1736, name: "c_and_shell_escape", file: !515, line: 502)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !515, line: 478, column: 9)
!1737 = distinct !DILexicalBlock(scope: !1730, file: !515, line: 419, column: 9)
!1738 = !DILabel(scope: !1736, name: "c_escape", file: !515, line: 507)
!1739 = !DILocalVariable(name: "m", scope: !1740, file: !515, line: 598, type: !147)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !515, line: 596, column: 11)
!1741 = !DILocalVariable(name: "printable", scope: !1740, file: !515, line: 600, type: !99)
!1742 = !DILocalVariable(name: "mbs", scope: !1743, file: !515, line: 609, type: !602)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !515, line: 608, column: 15)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !515, line: 602, column: 17)
!1745 = !DILocalVariable(name: "w", scope: !1746, file: !515, line: 618, type: !495)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !515, line: 617, column: 19)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !515, line: 616, column: 17)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !515, line: 616, column: 17)
!1749 = !DILocalVariable(name: "bytes", scope: !1746, file: !515, line: 619, type: !147)
!1750 = !DILocalVariable(name: "j", scope: !1751, file: !515, line: 648, type: !147)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !515, line: 648, column: 29)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !515, line: 647, column: 27)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !515, line: 645, column: 29)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !515, line: 636, column: 23)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !515, line: 628, column: 30)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !515, line: 623, column: 30)
!1757 = distinct !DILexicalBlock(scope: !1746, file: !515, line: 621, column: 25)
!1758 = !DILocalVariable(name: "ilim", scope: !1759, file: !515, line: 674, type: !147)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !515, line: 671, column: 15)
!1760 = distinct !DILexicalBlock(scope: !1740, file: !515, line: 670, column: 17)
!1761 = !DILabel(scope: !1730, name: "store_escape", file: !515, line: 709)
!1762 = !DILabel(scope: !1730, name: "store_c", file: !515, line: 712)
!1763 = !DILabel(scope: !1696, name: "force_outer_quoting_style", file: !515, line: 753)
!1764 = distinct !DIAssignID()
!1765 = distinct !DIAssignID()
!1766 = distinct !DIAssignID()
!1767 = distinct !DIAssignID()
!1768 = distinct !DIAssignID()
!1769 = !DILocation(line: 0, scope: !1743)
!1770 = distinct !DIAssignID()
!1771 = !DILocation(line: 0, scope: !1746)
!1772 = !DILocation(line: 0, scope: !1696)
!1773 = !DILocation(line: 258, column: 25, scope: !1696)
!1774 = !DILocation(line: 258, column: 36, scope: !1696)
!1775 = !DILocation(line: 265, column: 8, scope: !1696)
!1776 = !DILocation(line: 267, column: 3, scope: !1696)
!1777 = !DILocation(line: 261, column: 10, scope: !1696)
!1778 = !DILocation(line: 262, column: 15, scope: !1696)
!1779 = !DILocation(line: 263, column: 10, scope: !1696)
!1780 = !DILocation(line: 264, column: 8, scope: !1696)
!1781 = !DILocation(line: 266, column: 8, scope: !1696)
!1782 = !DILocation(line: 267, column: 8, scope: !1696)
!1783 = !DILocation(line: 308, column: 2, scope: !1696)
!1784 = !DILocation(line: 311, column: 3, scope: !1696)
!1785 = !DILocation(line: 318, column: 11, scope: !1726)
!1786 = !DILocation(line: 318, column: 12, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1726, file: !515, line: 318, column: 11)
!1788 = !DILocation(line: 319, column: 9, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !515, line: 319, column: 9)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !515, line: 319, column: 9)
!1791 = !DILocation(line: 319, column: 9, scope: !1790)
!1792 = !DILocation(line: 0, scope: !593, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 357, column: 26, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !515, line: 335, column: 11)
!1795 = distinct !DILexicalBlock(scope: !1725, file: !515, line: 334, column: 13)
!1796 = !DILocation(line: 199, column: 29, scope: !593, inlinedAt: !1793)
!1797 = !DILocation(line: 201, column: 19, scope: !1798, inlinedAt: !1793)
!1798 = distinct !DILexicalBlock(scope: !593, file: !515, line: 201, column: 7)
!1799 = !DILocation(line: 201, column: 7, scope: !593, inlinedAt: !1793)
!1800 = !DILocation(line: 229, column: 3, scope: !593, inlinedAt: !1793)
!1801 = !DILocation(line: 230, column: 3, scope: !593, inlinedAt: !1793)
!1802 = !DILocalVariable(name: "ps", arg: 1, scope: !1803, file: !1543, line: 1135, type: !1806)
!1803 = distinct !DISubprogram(name: "mbszero", scope: !1543, file: !1543, line: 1135, type: !1804, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1807)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!1807 = !{!1802}
!1808 = !DILocation(line: 0, scope: !1803, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 230, column: 18, scope: !593, inlinedAt: !1793)
!1810 = !DILocalVariable(name: "__dest", arg: 1, scope: !1811, file: !1552, line: 57, type: !145)
!1811 = distinct !DISubprogram(name: "memset", scope: !1552, file: !1552, line: 57, type: !1553, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1812)
!1812 = !{!1810, !1813, !1814}
!1813 = !DILocalVariable(name: "__ch", arg: 2, scope: !1811, file: !1552, line: 57, type: !72)
!1814 = !DILocalVariable(name: "__len", arg: 3, scope: !1811, file: !1552, line: 57, type: !147)
!1815 = !DILocation(line: 0, scope: !1811, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 1137, column: 3, scope: !1803, inlinedAt: !1809)
!1817 = !DILocation(line: 59, column: 10, scope: !1811, inlinedAt: !1816)
!1818 = !DILocation(line: 231, column: 7, scope: !1819, inlinedAt: !1793)
!1819 = distinct !DILexicalBlock(scope: !593, file: !515, line: 231, column: 7)
!1820 = !DILocation(line: 231, column: 40, scope: !1819, inlinedAt: !1793)
!1821 = !DILocation(line: 231, column: 45, scope: !1819, inlinedAt: !1793)
!1822 = !DILocation(line: 235, column: 1, scope: !593, inlinedAt: !1793)
!1823 = !DILocation(line: 0, scope: !593, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 358, column: 27, scope: !1794)
!1825 = !DILocation(line: 199, column: 29, scope: !593, inlinedAt: !1824)
!1826 = !DILocation(line: 201, column: 19, scope: !1798, inlinedAt: !1824)
!1827 = !DILocation(line: 201, column: 7, scope: !593, inlinedAt: !1824)
!1828 = !DILocation(line: 229, column: 3, scope: !593, inlinedAt: !1824)
!1829 = !DILocation(line: 230, column: 3, scope: !593, inlinedAt: !1824)
!1830 = !DILocation(line: 0, scope: !1803, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 230, column: 18, scope: !593, inlinedAt: !1824)
!1832 = !DILocation(line: 0, scope: !1811, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 1137, column: 3, scope: !1803, inlinedAt: !1831)
!1834 = !DILocation(line: 59, column: 10, scope: !1811, inlinedAt: !1833)
!1835 = !DILocation(line: 231, column: 7, scope: !1819, inlinedAt: !1824)
!1836 = !DILocation(line: 231, column: 40, scope: !1819, inlinedAt: !1824)
!1837 = !DILocation(line: 231, column: 45, scope: !1819, inlinedAt: !1824)
!1838 = !DILocation(line: 235, column: 1, scope: !593, inlinedAt: !1824)
!1839 = !DILocation(line: 360, column: 14, scope: !1724)
!1840 = !DILocation(line: 360, column: 13, scope: !1725)
!1841 = !DILocation(line: 0, scope: !1723)
!1842 = !DILocation(line: 361, column: 45, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1723, file: !515, line: 361, column: 11)
!1844 = !DILocation(line: 361, column: 11, scope: !1723)
!1845 = !DILocation(line: 362, column: 13, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !515, line: 362, column: 13)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !515, line: 362, column: 13)
!1848 = !DILocation(line: 362, column: 13, scope: !1847)
!1849 = !DILocation(line: 361, column: 52, scope: !1843)
!1850 = distinct !{!1850, !1844, !1851, !959}
!1851 = !DILocation(line: 362, column: 13, scope: !1723)
!1852 = !DILocation(line: 260, column: 10, scope: !1696)
!1853 = !DILocation(line: 365, column: 28, scope: !1725)
!1854 = !DILocation(line: 367, column: 7, scope: !1726)
!1855 = !DILocation(line: 370, column: 7, scope: !1726)
!1856 = !DILocation(line: 373, column: 7, scope: !1726)
!1857 = !DILocation(line: 376, column: 12, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1726, file: !515, line: 376, column: 11)
!1859 = !DILocation(line: 376, column: 11, scope: !1726)
!1860 = !DILocation(line: 381, column: 12, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1726, file: !515, line: 381, column: 11)
!1862 = !DILocation(line: 381, column: 11, scope: !1726)
!1863 = !DILocation(line: 382, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !515, line: 382, column: 9)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !515, line: 382, column: 9)
!1866 = !DILocation(line: 382, column: 9, scope: !1865)
!1867 = !DILocation(line: 389, column: 7, scope: !1726)
!1868 = !DILocation(line: 392, column: 7, scope: !1726)
!1869 = !DILocation(line: 0, scope: !1728)
!1870 = !DILocation(line: 395, column: 8, scope: !1728)
!1871 = !DILocation(line: 309, column: 8, scope: !1696)
!1872 = !DILocation(line: 395, scope: !1728)
!1873 = !DILocation(line: 395, column: 34, scope: !1731)
!1874 = !DILocation(line: 395, column: 26, scope: !1731)
!1875 = !DILocation(line: 395, column: 48, scope: !1731)
!1876 = !DILocation(line: 395, column: 55, scope: !1731)
!1877 = !DILocation(line: 395, column: 3, scope: !1728)
!1878 = !DILocation(line: 395, column: 67, scope: !1731)
!1879 = !DILocation(line: 0, scope: !1730)
!1880 = !DILocation(line: 402, column: 11, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1730, file: !515, line: 401, column: 11)
!1882 = !DILocation(line: 404, column: 17, scope: !1881)
!1883 = !DILocation(line: 405, column: 39, scope: !1881)
!1884 = !DILocation(line: 409, column: 32, scope: !1881)
!1885 = !DILocation(line: 405, column: 19, scope: !1881)
!1886 = !DILocation(line: 405, column: 15, scope: !1881)
!1887 = !DILocation(line: 410, column: 11, scope: !1881)
!1888 = !DILocation(line: 410, column: 25, scope: !1881)
!1889 = !DILocalVariable(name: "__s1", arg: 1, scope: !1890, file: !925, line: 974, type: !1060)
!1890 = distinct !DISubprogram(name: "memeq", scope: !925, file: !925, line: 974, type: !1512, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1891)
!1891 = !{!1889, !1892, !1893}
!1892 = !DILocalVariable(name: "__s2", arg: 2, scope: !1890, file: !925, line: 974, type: !1060)
!1893 = !DILocalVariable(name: "__n", arg: 3, scope: !1890, file: !925, line: 974, type: !147)
!1894 = !DILocation(line: 0, scope: !1890, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 410, column: 14, scope: !1881)
!1896 = !DILocation(line: 976, column: 11, scope: !1890, inlinedAt: !1895)
!1897 = !DILocation(line: 976, column: 10, scope: !1890, inlinedAt: !1895)
!1898 = !DILocation(line: 401, column: 11, scope: !1730)
!1899 = !DILocation(line: 417, column: 25, scope: !1730)
!1900 = !DILocation(line: 418, column: 7, scope: !1730)
!1901 = !DILocation(line: 421, column: 15, scope: !1737)
!1902 = !DILocation(line: 423, column: 15, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !515, line: 423, column: 15)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !515, line: 422, column: 13)
!1905 = distinct !DILexicalBlock(scope: !1737, file: !515, line: 421, column: 15)
!1906 = !DILocation(line: 423, column: 15, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !515, line: 423, column: 15)
!1908 = !DILocation(line: 423, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !515, line: 423, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !515, line: 423, column: 15)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !515, line: 423, column: 15)
!1912 = !DILocation(line: 423, column: 15, scope: !1910)
!1913 = !DILocation(line: 423, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !515, line: 423, column: 15)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !515, line: 423, column: 15)
!1916 = !DILocation(line: 423, column: 15, scope: !1915)
!1917 = !DILocation(line: 423, column: 15, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !515, line: 423, column: 15)
!1919 = distinct !DILexicalBlock(scope: !1911, file: !515, line: 423, column: 15)
!1920 = !DILocation(line: 423, column: 15, scope: !1919)
!1921 = !DILocation(line: 423, column: 15, scope: !1911)
!1922 = !DILocation(line: 423, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !515, line: 423, column: 15)
!1924 = distinct !DILexicalBlock(scope: !1903, file: !515, line: 423, column: 15)
!1925 = !DILocation(line: 423, column: 15, scope: !1924)
!1926 = !DILocation(line: 431, column: 19, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1904, file: !515, line: 430, column: 19)
!1928 = !DILocation(line: 431, column: 24, scope: !1927)
!1929 = !DILocation(line: 431, column: 28, scope: !1927)
!1930 = !DILocation(line: 431, column: 38, scope: !1927)
!1931 = !DILocation(line: 431, column: 48, scope: !1927)
!1932 = !DILocation(line: 431, column: 59, scope: !1927)
!1933 = !DILocation(line: 433, column: 19, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !515, line: 433, column: 19)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !515, line: 433, column: 19)
!1936 = distinct !DILexicalBlock(scope: !1927, file: !515, line: 432, column: 17)
!1937 = !DILocation(line: 433, column: 19, scope: !1935)
!1938 = !DILocation(line: 434, column: 19, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !515, line: 434, column: 19)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !515, line: 434, column: 19)
!1941 = !DILocation(line: 434, column: 19, scope: !1940)
!1942 = !DILocation(line: 435, column: 17, scope: !1936)
!1943 = !DILocation(line: 442, column: 20, scope: !1905)
!1944 = !DILocation(line: 447, column: 11, scope: !1737)
!1945 = !DILocation(line: 450, column: 19, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1737, file: !515, line: 448, column: 13)
!1947 = !DILocation(line: 456, column: 19, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1946, file: !515, line: 455, column: 19)
!1949 = !DILocation(line: 456, column: 24, scope: !1948)
!1950 = !DILocation(line: 456, column: 28, scope: !1948)
!1951 = !DILocation(line: 456, column: 38, scope: !1948)
!1952 = !DILocation(line: 456, column: 41, scope: !1948)
!1953 = !DILocation(line: 456, column: 52, scope: !1948)
!1954 = !DILocation(line: 455, column: 19, scope: !1946)
!1955 = !DILocation(line: 457, column: 25, scope: !1948)
!1956 = !DILocation(line: 457, column: 17, scope: !1948)
!1957 = !DILocation(line: 464, column: 25, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1948, file: !515, line: 458, column: 19)
!1959 = !DILocation(line: 468, column: 21, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !515, line: 468, column: 21)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !515, line: 468, column: 21)
!1962 = !DILocation(line: 468, column: 21, scope: !1961)
!1963 = !DILocation(line: 469, column: 21, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !515, line: 469, column: 21)
!1965 = distinct !DILexicalBlock(scope: !1958, file: !515, line: 469, column: 21)
!1966 = !DILocation(line: 469, column: 21, scope: !1965)
!1967 = !DILocation(line: 470, column: 21, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !515, line: 470, column: 21)
!1969 = distinct !DILexicalBlock(scope: !1958, file: !515, line: 470, column: 21)
!1970 = !DILocation(line: 470, column: 21, scope: !1969)
!1971 = !DILocation(line: 471, column: 21, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !515, line: 471, column: 21)
!1973 = distinct !DILexicalBlock(scope: !1958, file: !515, line: 471, column: 21)
!1974 = !DILocation(line: 471, column: 21, scope: !1973)
!1975 = !DILocation(line: 472, column: 21, scope: !1958)
!1976 = !DILocation(line: 482, column: 33, scope: !1736)
!1977 = !DILocation(line: 483, column: 33, scope: !1736)
!1978 = !DILocation(line: 485, column: 33, scope: !1736)
!1979 = !DILocation(line: 486, column: 33, scope: !1736)
!1980 = !DILocation(line: 487, column: 33, scope: !1736)
!1981 = !DILocation(line: 490, column: 17, scope: !1736)
!1982 = !DILocation(line: 492, column: 21, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !515, line: 491, column: 15)
!1984 = distinct !DILexicalBlock(scope: !1736, file: !515, line: 490, column: 17)
!1985 = !DILocation(line: 499, column: 35, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1736, file: !515, line: 499, column: 17)
!1987 = !DILocation(line: 499, column: 57, scope: !1986)
!1988 = !DILocation(line: 0, scope: !1736)
!1989 = !DILocation(line: 502, column: 11, scope: !1736)
!1990 = !DILocation(line: 504, column: 17, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1736, file: !515, line: 503, column: 17)
!1992 = !DILocation(line: 507, column: 11, scope: !1736)
!1993 = !DILocation(line: 508, column: 17, scope: !1736)
!1994 = !DILocation(line: 517, column: 15, scope: !1737)
!1995 = !DILocation(line: 517, column: 40, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1737, file: !515, line: 517, column: 15)
!1997 = !DILocation(line: 517, column: 47, scope: !1996)
!1998 = !DILocation(line: 517, column: 18, scope: !1996)
!1999 = !DILocation(line: 521, column: 17, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1737, file: !515, line: 521, column: 15)
!2001 = !DILocation(line: 521, column: 15, scope: !1737)
!2002 = !DILocation(line: 525, column: 11, scope: !1737)
!2003 = !DILocation(line: 537, column: 15, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1737, file: !515, line: 536, column: 15)
!2005 = !DILocation(line: 544, column: 15, scope: !1737)
!2006 = !DILocation(line: 546, column: 19, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !515, line: 545, column: 13)
!2008 = distinct !DILexicalBlock(scope: !1737, file: !515, line: 544, column: 15)
!2009 = !DILocation(line: 549, column: 19, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !515, line: 549, column: 19)
!2011 = !DILocation(line: 549, column: 30, scope: !2010)
!2012 = !DILocation(line: 558, column: 15, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !515, line: 558, column: 15)
!2014 = distinct !DILexicalBlock(scope: !2007, file: !515, line: 558, column: 15)
!2015 = !DILocation(line: 558, column: 15, scope: !2014)
!2016 = !DILocation(line: 559, column: 15, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !515, line: 559, column: 15)
!2018 = distinct !DILexicalBlock(scope: !2007, file: !515, line: 559, column: 15)
!2019 = !DILocation(line: 559, column: 15, scope: !2018)
!2020 = !DILocation(line: 560, column: 15, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !515, line: 560, column: 15)
!2022 = distinct !DILexicalBlock(scope: !2007, file: !515, line: 560, column: 15)
!2023 = !DILocation(line: 560, column: 15, scope: !2022)
!2024 = !DILocation(line: 562, column: 13, scope: !2007)
!2025 = !DILocation(line: 602, column: 17, scope: !1740)
!2026 = !DILocation(line: 0, scope: !1740)
!2027 = !DILocation(line: 605, column: 29, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1744, file: !515, line: 603, column: 15)
!2029 = !DILocation(line: 605, column: 27, scope: !2028)
!2030 = !DILocation(line: 606, column: 15, scope: !2028)
!2031 = !DILocation(line: 609, column: 17, scope: !1743)
!2032 = !DILocation(line: 0, scope: !1803, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 609, column: 32, scope: !1743)
!2034 = !DILocation(line: 0, scope: !1811, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 1137, column: 3, scope: !1803, inlinedAt: !2033)
!2036 = !DILocation(line: 59, column: 10, scope: !1811, inlinedAt: !2035)
!2037 = !DILocation(line: 613, column: 29, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1743, file: !515, line: 613, column: 21)
!2039 = !DILocation(line: 613, column: 21, scope: !1743)
!2040 = !DILocation(line: 614, column: 29, scope: !2038)
!2041 = !DILocation(line: 614, column: 19, scope: !2038)
!2042 = !DILocation(line: 618, column: 21, scope: !1746)
!2043 = !DILocation(line: 620, column: 54, scope: !1746)
!2044 = !DILocation(line: 619, column: 36, scope: !1746)
!2045 = !DILocation(line: 621, column: 25, scope: !1746)
!2046 = !DILocation(line: 631, column: 38, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1755, file: !515, line: 629, column: 23)
!2048 = !DILocation(line: 631, column: 48, scope: !2047)
!2049 = !DILocation(line: 626, column: 25, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1756, file: !515, line: 624, column: 23)
!2051 = !DILocation(line: 631, column: 51, scope: !2047)
!2052 = !DILocation(line: 631, column: 25, scope: !2047)
!2053 = !DILocation(line: 632, column: 28, scope: !2047)
!2054 = !DILocation(line: 631, column: 34, scope: !2047)
!2055 = distinct !{!2055, !2052, !2053, !959}
!2056 = !DILocation(line: 0, scope: !1751)
!2057 = !DILocation(line: 646, column: 29, scope: !1753)
!2058 = !DILocation(line: 649, column: 39, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1751, file: !515, line: 648, column: 29)
!2060 = !DILocation(line: 649, column: 31, scope: !2059)
!2061 = !DILocation(line: 648, column: 60, scope: !2059)
!2062 = !DILocation(line: 648, column: 50, scope: !2059)
!2063 = !DILocation(line: 648, column: 29, scope: !1751)
!2064 = distinct !{!2064, !2063, !2065, !959}
!2065 = !DILocation(line: 654, column: 33, scope: !1751)
!2066 = !DILocation(line: 657, column: 43, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1754, file: !515, line: 657, column: 29)
!2068 = !DILocalVariable(name: "wc", arg: 1, scope: !2069, file: !2070, line: 865, type: !2073)
!2069 = distinct !DISubprogram(name: "c32isprint", scope: !2070, file: !2070, line: 865, type: !2071, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2075)
!2070 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!72, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2074, line: 20, baseType: !65)
!2074 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2075 = !{!2068}
!2076 = !DILocation(line: 0, scope: !2069, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 657, column: 31, scope: !2067)
!2078 = !DILocation(line: 871, column: 10, scope: !2069, inlinedAt: !2077)
!2079 = !DILocation(line: 657, column: 31, scope: !2067)
!2080 = !DILocation(line: 664, column: 23, scope: !1746)
!2081 = !DILocation(line: 665, column: 19, scope: !1747)
!2082 = !DILocation(line: 666, column: 15, scope: !1744)
!2083 = !DILocation(line: 0, scope: !1744)
!2084 = !DILocation(line: 670, column: 19, scope: !1760)
!2085 = !DILocation(line: 670, column: 23, scope: !1760)
!2086 = !DILocation(line: 674, column: 33, scope: !1759)
!2087 = !DILocation(line: 0, scope: !1759)
!2088 = !DILocation(line: 676, column: 17, scope: !1759)
!2089 = !DILocation(line: 398, column: 12, scope: !1730)
!2090 = !DILocation(line: 678, column: 43, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !515, line: 678, column: 25)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !515, line: 677, column: 19)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !515, line: 676, column: 17)
!2094 = distinct !DILexicalBlock(scope: !1759, file: !515, line: 676, column: 17)
!2095 = !DILocation(line: 680, column: 25, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !515, line: 680, column: 25)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !515, line: 679, column: 23)
!2098 = !DILocation(line: 680, column: 25, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !515, line: 680, column: 25)
!2100 = !DILocation(line: 680, column: 25, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !515, line: 680, column: 25)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !515, line: 680, column: 25)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !515, line: 680, column: 25)
!2104 = !DILocation(line: 680, column: 25, scope: !2102)
!2105 = !DILocation(line: 680, column: 25, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !515, line: 680, column: 25)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !515, line: 680, column: 25)
!2108 = !DILocation(line: 680, column: 25, scope: !2107)
!2109 = !DILocation(line: 680, column: 25, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !515, line: 680, column: 25)
!2111 = distinct !DILexicalBlock(scope: !2103, file: !515, line: 680, column: 25)
!2112 = !DILocation(line: 680, column: 25, scope: !2111)
!2113 = !DILocation(line: 680, column: 25, scope: !2103)
!2114 = !DILocation(line: 680, column: 25, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !515, line: 680, column: 25)
!2116 = distinct !DILexicalBlock(scope: !2096, file: !515, line: 680, column: 25)
!2117 = !DILocation(line: 680, column: 25, scope: !2116)
!2118 = !DILocation(line: 681, column: 25, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !515, line: 681, column: 25)
!2120 = distinct !DILexicalBlock(scope: !2097, file: !515, line: 681, column: 25)
!2121 = !DILocation(line: 681, column: 25, scope: !2120)
!2122 = !DILocation(line: 682, column: 25, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !515, line: 682, column: 25)
!2124 = distinct !DILexicalBlock(scope: !2097, file: !515, line: 682, column: 25)
!2125 = !DILocation(line: 682, column: 25, scope: !2124)
!2126 = !DILocation(line: 683, column: 38, scope: !2097)
!2127 = !DILocation(line: 683, column: 33, scope: !2097)
!2128 = !DILocation(line: 684, column: 23, scope: !2097)
!2129 = !DILocation(line: 685, column: 30, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2091, file: !515, line: 685, column: 30)
!2131 = !DILocation(line: 685, column: 30, scope: !2091)
!2132 = !DILocation(line: 687, column: 25, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !515, line: 687, column: 25)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !515, line: 687, column: 25)
!2135 = distinct !DILexicalBlock(scope: !2130, file: !515, line: 686, column: 23)
!2136 = !DILocation(line: 687, column: 25, scope: !2134)
!2137 = !DILocation(line: 689, column: 23, scope: !2135)
!2138 = !DILocation(line: 690, column: 35, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2092, file: !515, line: 690, column: 25)
!2140 = !DILocation(line: 690, column: 30, scope: !2139)
!2141 = !DILocation(line: 690, column: 25, scope: !2092)
!2142 = !DILocation(line: 692, column: 21, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !515, line: 692, column: 21)
!2144 = distinct !DILexicalBlock(scope: !2092, file: !515, line: 692, column: 21)
!2145 = !DILocation(line: 692, column: 21, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !515, line: 692, column: 21)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !515, line: 692, column: 21)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !515, line: 692, column: 21)
!2149 = !DILocation(line: 692, column: 21, scope: !2147)
!2150 = !DILocation(line: 692, column: 21, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !515, line: 692, column: 21)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !515, line: 692, column: 21)
!2153 = !DILocation(line: 692, column: 21, scope: !2152)
!2154 = !DILocation(line: 692, column: 21, scope: !2148)
!2155 = !DILocation(line: 0, scope: !2092)
!2156 = !DILocation(line: 693, column: 21, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !515, line: 693, column: 21)
!2158 = distinct !DILexicalBlock(scope: !2092, file: !515, line: 693, column: 21)
!2159 = !DILocation(line: 693, column: 21, scope: !2158)
!2160 = !DILocation(line: 694, column: 25, scope: !2092)
!2161 = !DILocation(line: 676, column: 17, scope: !2093)
!2162 = distinct !{!2162, !2163, !2164}
!2163 = !DILocation(line: 676, column: 17, scope: !2094)
!2164 = !DILocation(line: 695, column: 19, scope: !2094)
!2165 = !DILocation(line: 409, column: 30, scope: !1881)
!2166 = !DILocation(line: 702, column: 34, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1730, file: !515, line: 702, column: 11)
!2168 = !DILocation(line: 704, column: 14, scope: !2167)
!2169 = !DILocation(line: 705, column: 14, scope: !2167)
!2170 = !DILocation(line: 705, column: 35, scope: !2167)
!2171 = !DILocation(line: 705, column: 17, scope: !2167)
!2172 = !DILocation(line: 705, column: 47, scope: !2167)
!2173 = !DILocation(line: 705, column: 65, scope: !2167)
!2174 = !DILocation(line: 706, column: 11, scope: !2167)
!2175 = !DILocation(line: 702, column: 11, scope: !1730)
!2176 = !DILocation(line: 395, column: 15, scope: !1728)
!2177 = !DILocation(line: 709, column: 5, scope: !1730)
!2178 = !DILocation(line: 710, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !1730, file: !515, line: 710, column: 7)
!2180 = !DILocation(line: 710, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2179, file: !515, line: 710, column: 7)
!2182 = !DILocation(line: 710, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !515, line: 710, column: 7)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !515, line: 710, column: 7)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !515, line: 710, column: 7)
!2186 = !DILocation(line: 710, column: 7, scope: !2184)
!2187 = !DILocation(line: 710, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !515, line: 710, column: 7)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !515, line: 710, column: 7)
!2190 = !DILocation(line: 710, column: 7, scope: !2189)
!2191 = !DILocation(line: 710, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !515, line: 710, column: 7)
!2193 = distinct !DILexicalBlock(scope: !2185, file: !515, line: 710, column: 7)
!2194 = !DILocation(line: 710, column: 7, scope: !2193)
!2195 = !DILocation(line: 710, column: 7, scope: !2185)
!2196 = !DILocation(line: 710, column: 7, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !515, line: 710, column: 7)
!2198 = distinct !DILexicalBlock(scope: !2179, file: !515, line: 710, column: 7)
!2199 = !DILocation(line: 710, column: 7, scope: !2198)
!2200 = !DILocation(line: 712, column: 5, scope: !1730)
!2201 = !DILocation(line: 713, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !515, line: 713, column: 7)
!2203 = distinct !DILexicalBlock(scope: !1730, file: !515, line: 713, column: 7)
!2204 = !DILocation(line: 417, column: 21, scope: !1730)
!2205 = !DILocation(line: 713, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !515, line: 713, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !515, line: 713, column: 7)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !515, line: 713, column: 7)
!2209 = !DILocation(line: 713, column: 7, scope: !2207)
!2210 = !DILocation(line: 713, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !515, line: 713, column: 7)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !515, line: 713, column: 7)
!2213 = !DILocation(line: 713, column: 7, scope: !2212)
!2214 = !DILocation(line: 713, column: 7, scope: !2208)
!2215 = !DILocation(line: 714, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !515, line: 714, column: 7)
!2217 = distinct !DILexicalBlock(scope: !1730, file: !515, line: 714, column: 7)
!2218 = !DILocation(line: 714, column: 7, scope: !2217)
!2219 = !DILocation(line: 716, column: 13, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1730, file: !515, line: 716, column: 11)
!2221 = !DILocation(line: 716, column: 11, scope: !1730)
!2222 = !DILocation(line: 718, column: 5, scope: !1731)
!2223 = !DILocation(line: 395, column: 82, scope: !1731)
!2224 = !DILocation(line: 395, column: 3, scope: !1731)
!2225 = distinct !{!2225, !1877, !2226, !959}
!2226 = !DILocation(line: 718, column: 5, scope: !1728)
!2227 = !DILocation(line: 720, column: 11, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1696, file: !515, line: 720, column: 7)
!2229 = !DILocation(line: 720, column: 16, scope: !2228)
!2230 = !DILocation(line: 728, column: 51, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !1696, file: !515, line: 728, column: 7)
!2232 = !DILocation(line: 731, column: 11, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !515, line: 731, column: 11)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !515, line: 730, column: 5)
!2235 = !DILocation(line: 731, column: 11, scope: !2234)
!2236 = !DILocation(line: 732, column: 16, scope: !2233)
!2237 = !DILocation(line: 732, column: 9, scope: !2233)
!2238 = !DILocation(line: 736, column: 18, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2233, file: !515, line: 736, column: 16)
!2240 = !DILocation(line: 736, column: 29, scope: !2239)
!2241 = !DILocation(line: 745, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !1696, file: !515, line: 745, column: 7)
!2243 = !DILocation(line: 745, column: 20, scope: !2242)
!2244 = !DILocation(line: 746, column: 12, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !515, line: 746, column: 5)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !515, line: 746, column: 5)
!2247 = !DILocation(line: 746, column: 5, scope: !2246)
!2248 = !DILocation(line: 747, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !515, line: 747, column: 7)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !515, line: 747, column: 7)
!2251 = !DILocation(line: 747, column: 7, scope: !2250)
!2252 = !DILocation(line: 746, column: 39, scope: !2245)
!2253 = distinct !{!2253, !2247, !2254, !959}
!2254 = !DILocation(line: 747, column: 7, scope: !2246)
!2255 = !DILocation(line: 749, column: 11, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !1696, file: !515, line: 749, column: 7)
!2257 = !DILocation(line: 749, column: 7, scope: !1696)
!2258 = !DILocation(line: 750, column: 5, scope: !2256)
!2259 = !DILocation(line: 750, column: 17, scope: !2256)
!2260 = !DILocation(line: 753, column: 2, scope: !1696)
!2261 = !DILocation(line: 756, column: 51, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1696, file: !515, line: 756, column: 7)
!2263 = !DILocation(line: 756, column: 21, scope: !2262)
!2264 = !DILocation(line: 760, column: 42, scope: !1696)
!2265 = !DILocation(line: 758, column: 10, scope: !1696)
!2266 = !DILocation(line: 758, column: 3, scope: !1696)
!2267 = !DILocation(line: 762, column: 1, scope: !1696)
!2268 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1036, file: !1036, line: 98, type: !2269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!147}
!2271 = !DISubprogram(name: "strlen", scope: !1032, file: !1032, line: 407, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!149, !96}
!2274 = !DISubprogram(name: "iswprint", scope: !2275, file: !2275, line: 120, type: !2071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2276 = distinct !DISubprogram(name: "quotearg_alloc", scope: !515, file: !515, line: 788, type: !2277, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!89, !96, !147, !1589}
!2279 = !{!2280, !2281, !2282}
!2280 = !DILocalVariable(name: "arg", arg: 1, scope: !2276, file: !515, line: 788, type: !96)
!2281 = !DILocalVariable(name: "argsize", arg: 2, scope: !2276, file: !515, line: 788, type: !147)
!2282 = !DILocalVariable(name: "o", arg: 3, scope: !2276, file: !515, line: 789, type: !1589)
!2283 = !DILocation(line: 0, scope: !2276)
!2284 = !DILocalVariable(name: "arg", arg: 1, scope: !2285, file: !515, line: 801, type: !96)
!2285 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !515, file: !515, line: 801, type: !2286, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!89, !96, !147, !767, !1589}
!2288 = !{!2284, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2289 = !DILocalVariable(name: "argsize", arg: 2, scope: !2285, file: !515, line: 801, type: !147)
!2290 = !DILocalVariable(name: "size", arg: 3, scope: !2285, file: !515, line: 801, type: !767)
!2291 = !DILocalVariable(name: "o", arg: 4, scope: !2285, file: !515, line: 802, type: !1589)
!2292 = !DILocalVariable(name: "p", scope: !2285, file: !515, line: 804, type: !1589)
!2293 = !DILocalVariable(name: "saved_errno", scope: !2285, file: !515, line: 805, type: !72)
!2294 = !DILocalVariable(name: "flags", scope: !2285, file: !515, line: 807, type: !72)
!2295 = !DILocalVariable(name: "bufsize", scope: !2285, file: !515, line: 808, type: !147)
!2296 = !DILocalVariable(name: "buf", scope: !2285, file: !515, line: 812, type: !89)
!2297 = !DILocation(line: 0, scope: !2285, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 791, column: 10, scope: !2276)
!2299 = !DILocation(line: 804, column: 37, scope: !2285, inlinedAt: !2298)
!2300 = !DILocation(line: 805, column: 21, scope: !2285, inlinedAt: !2298)
!2301 = !DILocation(line: 807, column: 18, scope: !2285, inlinedAt: !2298)
!2302 = !DILocation(line: 807, column: 24, scope: !2285, inlinedAt: !2298)
!2303 = !DILocation(line: 808, column: 72, scope: !2285, inlinedAt: !2298)
!2304 = !DILocation(line: 809, column: 56, scope: !2285, inlinedAt: !2298)
!2305 = !DILocation(line: 810, column: 49, scope: !2285, inlinedAt: !2298)
!2306 = !DILocation(line: 811, column: 49, scope: !2285, inlinedAt: !2298)
!2307 = !DILocation(line: 808, column: 20, scope: !2285, inlinedAt: !2298)
!2308 = !DILocation(line: 811, column: 62, scope: !2285, inlinedAt: !2298)
!2309 = !DILocation(line: 812, column: 15, scope: !2285, inlinedAt: !2298)
!2310 = !DILocation(line: 813, column: 60, scope: !2285, inlinedAt: !2298)
!2311 = !DILocation(line: 815, column: 32, scope: !2285, inlinedAt: !2298)
!2312 = !DILocation(line: 815, column: 47, scope: !2285, inlinedAt: !2298)
!2313 = !DILocation(line: 813, column: 3, scope: !2285, inlinedAt: !2298)
!2314 = !DILocation(line: 816, column: 9, scope: !2285, inlinedAt: !2298)
!2315 = !DILocation(line: 791, column: 3, scope: !2276)
!2316 = !DILocation(line: 0, scope: !2285)
!2317 = !DILocation(line: 804, column: 37, scope: !2285)
!2318 = !DILocation(line: 805, column: 21, scope: !2285)
!2319 = !DILocation(line: 807, column: 18, scope: !2285)
!2320 = !DILocation(line: 807, column: 27, scope: !2285)
!2321 = !DILocation(line: 807, column: 24, scope: !2285)
!2322 = !DILocation(line: 808, column: 72, scope: !2285)
!2323 = !DILocation(line: 809, column: 56, scope: !2285)
!2324 = !DILocation(line: 810, column: 49, scope: !2285)
!2325 = !DILocation(line: 811, column: 49, scope: !2285)
!2326 = !DILocation(line: 808, column: 20, scope: !2285)
!2327 = !DILocation(line: 811, column: 62, scope: !2285)
!2328 = !DILocation(line: 812, column: 15, scope: !2285)
!2329 = !DILocation(line: 813, column: 60, scope: !2285)
!2330 = !DILocation(line: 815, column: 32, scope: !2285)
!2331 = !DILocation(line: 815, column: 47, scope: !2285)
!2332 = !DILocation(line: 813, column: 3, scope: !2285)
!2333 = !DILocation(line: 816, column: 9, scope: !2285)
!2334 = !DILocation(line: 817, column: 7, scope: !2285)
!2335 = !DILocation(line: 818, column: 11, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2285, file: !515, line: 817, column: 7)
!2337 = !{!1187, !1187, i64 0}
!2338 = !DILocation(line: 818, column: 5, scope: !2336)
!2339 = !DILocation(line: 819, column: 3, scope: !2285)
!2340 = distinct !DISubprogram(name: "quotearg_free", scope: !515, file: !515, line: 837, type: !470, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2341)
!2341 = !{!2342, !2343}
!2342 = !DILocalVariable(name: "sv", scope: !2340, file: !515, line: 839, type: !616)
!2343 = !DILocalVariable(name: "i", scope: !2344, file: !515, line: 840, type: !72)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !515, line: 840, column: 3)
!2345 = !DILocation(line: 839, column: 24, scope: !2340)
!2346 = !DILocation(line: 0, scope: !2340)
!2347 = !DILocation(line: 0, scope: !2344)
!2348 = !DILocation(line: 840, column: 21, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !515, line: 840, column: 3)
!2350 = !DILocation(line: 840, column: 3, scope: !2344)
!2351 = !DILocation(line: 842, column: 13, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2340, file: !515, line: 842, column: 7)
!2353 = !{!2354, !841, i64 8}
!2354 = !{!"slotvec", !1187, i64 0, !841, i64 8}
!2355 = !DILocation(line: 842, column: 17, scope: !2352)
!2356 = !DILocation(line: 842, column: 7, scope: !2340)
!2357 = !DILocation(line: 841, column: 17, scope: !2349)
!2358 = !DILocation(line: 841, column: 5, scope: !2349)
!2359 = !DILocation(line: 840, column: 32, scope: !2349)
!2360 = distinct !{!2360, !2350, !2361, !959}
!2361 = !DILocation(line: 841, column: 20, scope: !2344)
!2362 = !DILocation(line: 844, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2352, file: !515, line: 843, column: 5)
!2364 = !DILocation(line: 845, column: 21, scope: !2363)
!2365 = !{!2354, !1187, i64 0}
!2366 = !DILocation(line: 846, column: 20, scope: !2363)
!2367 = !DILocation(line: 847, column: 5, scope: !2363)
!2368 = !DILocation(line: 848, column: 10, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2340, file: !515, line: 848, column: 7)
!2370 = !DILocation(line: 848, column: 7, scope: !2340)
!2371 = !DILocation(line: 850, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2369, file: !515, line: 849, column: 5)
!2373 = !DILocation(line: 851, column: 15, scope: !2372)
!2374 = !DILocation(line: 852, column: 5, scope: !2372)
!2375 = !DILocation(line: 853, column: 10, scope: !2340)
!2376 = !DILocation(line: 854, column: 1, scope: !2340)
!2377 = !DISubprogram(name: "free", scope: !1543, file: !1543, line: 786, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !145}
!2380 = distinct !DISubprogram(name: "quotearg_n", scope: !515, file: !515, line: 919, type: !1029, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2381)
!2381 = !{!2382, !2383}
!2382 = !DILocalVariable(name: "n", arg: 1, scope: !2380, file: !515, line: 919, type: !72)
!2383 = !DILocalVariable(name: "arg", arg: 2, scope: !2380, file: !515, line: 919, type: !96)
!2384 = !DILocation(line: 0, scope: !2380)
!2385 = !DILocation(line: 921, column: 10, scope: !2380)
!2386 = !DILocation(line: 921, column: 3, scope: !2380)
!2387 = distinct !DISubprogram(name: "quotearg_n_options", scope: !515, file: !515, line: 866, type: !2388, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!89, !72, !96, !147, !1589}
!2390 = !{!2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2401, !2402, !2404, !2405, !2406}
!2391 = !DILocalVariable(name: "n", arg: 1, scope: !2387, file: !515, line: 866, type: !72)
!2392 = !DILocalVariable(name: "arg", arg: 2, scope: !2387, file: !515, line: 866, type: !96)
!2393 = !DILocalVariable(name: "argsize", arg: 3, scope: !2387, file: !515, line: 866, type: !147)
!2394 = !DILocalVariable(name: "options", arg: 4, scope: !2387, file: !515, line: 867, type: !1589)
!2395 = !DILocalVariable(name: "saved_errno", scope: !2387, file: !515, line: 869, type: !72)
!2396 = !DILocalVariable(name: "sv", scope: !2387, file: !515, line: 871, type: !616)
!2397 = !DILocalVariable(name: "nslots_max", scope: !2387, file: !515, line: 873, type: !72)
!2398 = !DILocalVariable(name: "preallocated", scope: !2399, file: !515, line: 879, type: !99)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !515, line: 878, column: 5)
!2400 = distinct !DILexicalBlock(scope: !2387, file: !515, line: 877, column: 7)
!2401 = !DILocalVariable(name: "new_nslots", scope: !2399, file: !515, line: 880, type: !780)
!2402 = !DILocalVariable(name: "size", scope: !2403, file: !515, line: 891, type: !147)
!2403 = distinct !DILexicalBlock(scope: !2387, file: !515, line: 890, column: 3)
!2404 = !DILocalVariable(name: "val", scope: !2403, file: !515, line: 892, type: !89)
!2405 = !DILocalVariable(name: "flags", scope: !2403, file: !515, line: 894, type: !72)
!2406 = !DILocalVariable(name: "qsize", scope: !2403, file: !515, line: 895, type: !147)
!2407 = distinct !DIAssignID()
!2408 = !DILocation(line: 0, scope: !2399)
!2409 = !DILocation(line: 0, scope: !2387)
!2410 = !DILocation(line: 869, column: 21, scope: !2387)
!2411 = !DILocation(line: 871, column: 24, scope: !2387)
!2412 = !DILocation(line: 874, column: 17, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2387, file: !515, line: 874, column: 7)
!2414 = !DILocation(line: 875, column: 5, scope: !2413)
!2415 = !DILocation(line: 877, column: 7, scope: !2400)
!2416 = !DILocation(line: 877, column: 14, scope: !2400)
!2417 = !DILocation(line: 877, column: 7, scope: !2387)
!2418 = !DILocation(line: 879, column: 31, scope: !2399)
!2419 = !DILocation(line: 880, column: 7, scope: !2399)
!2420 = !DILocation(line: 880, column: 26, scope: !2399)
!2421 = !DILocation(line: 880, column: 13, scope: !2399)
!2422 = distinct !DIAssignID()
!2423 = !DILocation(line: 882, column: 31, scope: !2399)
!2424 = !DILocation(line: 883, column: 33, scope: !2399)
!2425 = !DILocation(line: 883, column: 42, scope: !2399)
!2426 = !DILocation(line: 883, column: 31, scope: !2399)
!2427 = !DILocation(line: 882, column: 22, scope: !2399)
!2428 = !DILocation(line: 882, column: 15, scope: !2399)
!2429 = !DILocation(line: 884, column: 11, scope: !2399)
!2430 = !DILocation(line: 885, column: 15, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2399, file: !515, line: 884, column: 11)
!2432 = !{i64 0, i64 8, !2337, i64 8, i64 8, !840}
!2433 = !DILocation(line: 885, column: 9, scope: !2431)
!2434 = !DILocation(line: 886, column: 20, scope: !2399)
!2435 = !DILocation(line: 886, column: 18, scope: !2399)
!2436 = !DILocation(line: 886, column: 32, scope: !2399)
!2437 = !DILocation(line: 886, column: 43, scope: !2399)
!2438 = !DILocation(line: 886, column: 53, scope: !2399)
!2439 = !DILocation(line: 0, scope: !1811, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 886, column: 7, scope: !2399)
!2441 = !DILocation(line: 59, column: 10, scope: !1811, inlinedAt: !2440)
!2442 = !DILocation(line: 887, column: 16, scope: !2399)
!2443 = !DILocation(line: 887, column: 14, scope: !2399)
!2444 = !DILocation(line: 888, column: 5, scope: !2400)
!2445 = !DILocation(line: 888, column: 5, scope: !2399)
!2446 = !DILocation(line: 891, column: 19, scope: !2403)
!2447 = !DILocation(line: 891, column: 25, scope: !2403)
!2448 = !DILocation(line: 0, scope: !2403)
!2449 = !DILocation(line: 892, column: 23, scope: !2403)
!2450 = !DILocation(line: 894, column: 26, scope: !2403)
!2451 = !DILocation(line: 894, column: 32, scope: !2403)
!2452 = !DILocation(line: 896, column: 55, scope: !2403)
!2453 = !DILocation(line: 897, column: 55, scope: !2403)
!2454 = !DILocation(line: 898, column: 55, scope: !2403)
!2455 = !DILocation(line: 899, column: 55, scope: !2403)
!2456 = !DILocation(line: 895, column: 20, scope: !2403)
!2457 = !DILocation(line: 901, column: 14, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2403, file: !515, line: 901, column: 9)
!2459 = !DILocation(line: 901, column: 9, scope: !2403)
!2460 = !DILocation(line: 903, column: 35, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !515, line: 902, column: 7)
!2462 = !DILocation(line: 903, column: 20, scope: !2461)
!2463 = !DILocation(line: 904, column: 17, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2461, file: !515, line: 904, column: 13)
!2465 = !DILocation(line: 904, column: 13, scope: !2461)
!2466 = !DILocation(line: 905, column: 11, scope: !2464)
!2467 = !DILocation(line: 906, column: 27, scope: !2461)
!2468 = !DILocation(line: 906, column: 19, scope: !2461)
!2469 = !DILocation(line: 907, column: 69, scope: !2461)
!2470 = !DILocation(line: 909, column: 44, scope: !2461)
!2471 = !DILocation(line: 910, column: 44, scope: !2461)
!2472 = !DILocation(line: 907, column: 9, scope: !2461)
!2473 = !DILocation(line: 911, column: 7, scope: !2461)
!2474 = !DILocation(line: 913, column: 11, scope: !2403)
!2475 = !DILocation(line: 914, column: 5, scope: !2403)
!2476 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !515, file: !515, line: 925, type: !2477, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!89, !72, !96, !147}
!2479 = !{!2480, !2481, !2482}
!2480 = !DILocalVariable(name: "n", arg: 1, scope: !2476, file: !515, line: 925, type: !72)
!2481 = !DILocalVariable(name: "arg", arg: 2, scope: !2476, file: !515, line: 925, type: !96)
!2482 = !DILocalVariable(name: "argsize", arg: 3, scope: !2476, file: !515, line: 925, type: !147)
!2483 = !DILocation(line: 0, scope: !2476)
!2484 = !DILocation(line: 927, column: 10, scope: !2476)
!2485 = !DILocation(line: 927, column: 3, scope: !2476)
!2486 = distinct !DISubprogram(name: "quotearg", scope: !515, file: !515, line: 931, type: !1038, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2487)
!2487 = !{!2488}
!2488 = !DILocalVariable(name: "arg", arg: 1, scope: !2486, file: !515, line: 931, type: !96)
!2489 = !DILocation(line: 0, scope: !2486)
!2490 = !DILocation(line: 0, scope: !2380, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 933, column: 10, scope: !2486)
!2492 = !DILocation(line: 921, column: 10, scope: !2380, inlinedAt: !2491)
!2493 = !DILocation(line: 933, column: 3, scope: !2486)
!2494 = distinct !DISubprogram(name: "quotearg_mem", scope: !515, file: !515, line: 937, type: !2495, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!89, !96, !147}
!2497 = !{!2498, !2499}
!2498 = !DILocalVariable(name: "arg", arg: 1, scope: !2494, file: !515, line: 937, type: !96)
!2499 = !DILocalVariable(name: "argsize", arg: 2, scope: !2494, file: !515, line: 937, type: !147)
!2500 = !DILocation(line: 0, scope: !2494)
!2501 = !DILocation(line: 0, scope: !2476, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 939, column: 10, scope: !2494)
!2503 = !DILocation(line: 927, column: 10, scope: !2476, inlinedAt: !2502)
!2504 = !DILocation(line: 939, column: 3, scope: !2494)
!2505 = distinct !DISubprogram(name: "quotearg_n_style", scope: !515, file: !515, line: 943, type: !2506, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!89, !72, !541, !96}
!2508 = !{!2509, !2510, !2511, !2512}
!2509 = !DILocalVariable(name: "n", arg: 1, scope: !2505, file: !515, line: 943, type: !72)
!2510 = !DILocalVariable(name: "s", arg: 2, scope: !2505, file: !515, line: 943, type: !541)
!2511 = !DILocalVariable(name: "arg", arg: 3, scope: !2505, file: !515, line: 943, type: !96)
!2512 = !DILocalVariable(name: "o", scope: !2505, file: !515, line: 945, type: !1590)
!2513 = distinct !DIAssignID()
!2514 = !DILocation(line: 0, scope: !2505)
!2515 = !DILocation(line: 945, column: 3, scope: !2505)
!2516 = !{!2517}
!2517 = distinct !{!2517, !2518, !"quoting_options_from_style: argument 0"}
!2518 = distinct !{!2518, !"quoting_options_from_style"}
!2519 = !DILocation(line: 945, column: 36, scope: !2505)
!2520 = !DILocalVariable(name: "style", arg: 1, scope: !2521, file: !515, line: 183, type: !541)
!2521 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !515, file: !515, line: 183, type: !2522, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!568, !541}
!2524 = !{!2520, !2525}
!2525 = !DILocalVariable(name: "o", scope: !2521, file: !515, line: 185, type: !568)
!2526 = !DILocation(line: 0, scope: !2521, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 945, column: 36, scope: !2505)
!2528 = !DILocation(line: 185, column: 26, scope: !2521, inlinedAt: !2527)
!2529 = distinct !DIAssignID()
!2530 = !DILocation(line: 186, column: 13, scope: !2531, inlinedAt: !2527)
!2531 = distinct !DILexicalBlock(scope: !2521, file: !515, line: 186, column: 7)
!2532 = !DILocation(line: 186, column: 7, scope: !2521, inlinedAt: !2527)
!2533 = !DILocation(line: 187, column: 5, scope: !2531, inlinedAt: !2527)
!2534 = !DILocation(line: 188, column: 11, scope: !2521, inlinedAt: !2527)
!2535 = distinct !DIAssignID()
!2536 = !DILocation(line: 946, column: 10, scope: !2505)
!2537 = !DILocation(line: 947, column: 1, scope: !2505)
!2538 = !DILocation(line: 946, column: 3, scope: !2505)
!2539 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !515, file: !515, line: 950, type: !2540, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!89, !72, !541, !96, !147}
!2542 = !{!2543, !2544, !2545, !2546, !2547}
!2543 = !DILocalVariable(name: "n", arg: 1, scope: !2539, file: !515, line: 950, type: !72)
!2544 = !DILocalVariable(name: "s", arg: 2, scope: !2539, file: !515, line: 950, type: !541)
!2545 = !DILocalVariable(name: "arg", arg: 3, scope: !2539, file: !515, line: 951, type: !96)
!2546 = !DILocalVariable(name: "argsize", arg: 4, scope: !2539, file: !515, line: 951, type: !147)
!2547 = !DILocalVariable(name: "o", scope: !2539, file: !515, line: 953, type: !1590)
!2548 = distinct !DIAssignID()
!2549 = !DILocation(line: 0, scope: !2539)
!2550 = !DILocation(line: 953, column: 3, scope: !2539)
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"quoting_options_from_style: argument 0"}
!2553 = distinct !{!2553, !"quoting_options_from_style"}
!2554 = !DILocation(line: 953, column: 36, scope: !2539)
!2555 = !DILocation(line: 0, scope: !2521, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 953, column: 36, scope: !2539)
!2557 = !DILocation(line: 185, column: 26, scope: !2521, inlinedAt: !2556)
!2558 = distinct !DIAssignID()
!2559 = !DILocation(line: 186, column: 13, scope: !2531, inlinedAt: !2556)
!2560 = !DILocation(line: 186, column: 7, scope: !2521, inlinedAt: !2556)
!2561 = !DILocation(line: 187, column: 5, scope: !2531, inlinedAt: !2556)
!2562 = !DILocation(line: 188, column: 11, scope: !2521, inlinedAt: !2556)
!2563 = distinct !DIAssignID()
!2564 = !DILocation(line: 954, column: 10, scope: !2539)
!2565 = !DILocation(line: 955, column: 1, scope: !2539)
!2566 = !DILocation(line: 954, column: 3, scope: !2539)
!2567 = distinct !DISubprogram(name: "quotearg_style", scope: !515, file: !515, line: 958, type: !2568, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!89, !541, !96}
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "s", arg: 1, scope: !2567, file: !515, line: 958, type: !541)
!2572 = !DILocalVariable(name: "arg", arg: 2, scope: !2567, file: !515, line: 958, type: !96)
!2573 = distinct !DIAssignID()
!2574 = !DILocation(line: 0, scope: !2567)
!2575 = !DILocation(line: 0, scope: !2505, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 960, column: 10, scope: !2567)
!2577 = !DILocation(line: 945, column: 3, scope: !2505, inlinedAt: !2576)
!2578 = !{!2579}
!2579 = distinct !{!2579, !2580, !"quoting_options_from_style: argument 0"}
!2580 = distinct !{!2580, !"quoting_options_from_style"}
!2581 = !DILocation(line: 945, column: 36, scope: !2505, inlinedAt: !2576)
!2582 = !DILocation(line: 0, scope: !2521, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 945, column: 36, scope: !2505, inlinedAt: !2576)
!2584 = !DILocation(line: 185, column: 26, scope: !2521, inlinedAt: !2583)
!2585 = distinct !DIAssignID()
!2586 = !DILocation(line: 186, column: 13, scope: !2531, inlinedAt: !2583)
!2587 = !DILocation(line: 186, column: 7, scope: !2521, inlinedAt: !2583)
!2588 = !DILocation(line: 187, column: 5, scope: !2531, inlinedAt: !2583)
!2589 = !DILocation(line: 188, column: 11, scope: !2521, inlinedAt: !2583)
!2590 = distinct !DIAssignID()
!2591 = !DILocation(line: 946, column: 10, scope: !2505, inlinedAt: !2576)
!2592 = !DILocation(line: 947, column: 1, scope: !2505, inlinedAt: !2576)
!2593 = !DILocation(line: 960, column: 3, scope: !2567)
!2594 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !515, file: !515, line: 964, type: !2595, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!89, !541, !96, !147}
!2597 = !{!2598, !2599, !2600}
!2598 = !DILocalVariable(name: "s", arg: 1, scope: !2594, file: !515, line: 964, type: !541)
!2599 = !DILocalVariable(name: "arg", arg: 2, scope: !2594, file: !515, line: 964, type: !96)
!2600 = !DILocalVariable(name: "argsize", arg: 3, scope: !2594, file: !515, line: 964, type: !147)
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 0, scope: !2594)
!2603 = !DILocation(line: 0, scope: !2539, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 966, column: 10, scope: !2594)
!2605 = !DILocation(line: 953, column: 3, scope: !2539, inlinedAt: !2604)
!2606 = !{!2607}
!2607 = distinct !{!2607, !2608, !"quoting_options_from_style: argument 0"}
!2608 = distinct !{!2608, !"quoting_options_from_style"}
!2609 = !DILocation(line: 953, column: 36, scope: !2539, inlinedAt: !2604)
!2610 = !DILocation(line: 0, scope: !2521, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 953, column: 36, scope: !2539, inlinedAt: !2604)
!2612 = !DILocation(line: 185, column: 26, scope: !2521, inlinedAt: !2611)
!2613 = distinct !DIAssignID()
!2614 = !DILocation(line: 186, column: 13, scope: !2531, inlinedAt: !2611)
!2615 = !DILocation(line: 186, column: 7, scope: !2521, inlinedAt: !2611)
!2616 = !DILocation(line: 187, column: 5, scope: !2531, inlinedAt: !2611)
!2617 = !DILocation(line: 188, column: 11, scope: !2521, inlinedAt: !2611)
!2618 = distinct !DIAssignID()
!2619 = !DILocation(line: 954, column: 10, scope: !2539, inlinedAt: !2604)
!2620 = !DILocation(line: 955, column: 1, scope: !2539, inlinedAt: !2604)
!2621 = !DILocation(line: 966, column: 3, scope: !2594)
!2622 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !515, file: !515, line: 970, type: !2623, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!89, !96, !147, !4}
!2625 = !{!2626, !2627, !2628, !2629}
!2626 = !DILocalVariable(name: "arg", arg: 1, scope: !2622, file: !515, line: 970, type: !96)
!2627 = !DILocalVariable(name: "argsize", arg: 2, scope: !2622, file: !515, line: 970, type: !147)
!2628 = !DILocalVariable(name: "ch", arg: 3, scope: !2622, file: !515, line: 970, type: !4)
!2629 = !DILocalVariable(name: "options", scope: !2622, file: !515, line: 972, type: !568)
!2630 = distinct !DIAssignID()
!2631 = !DILocation(line: 0, scope: !2622)
!2632 = !DILocation(line: 972, column: 3, scope: !2622)
!2633 = !DILocation(line: 973, column: 13, scope: !2622)
!2634 = !{i64 0, i64 4, !912, i64 4, i64 4, !912, i64 8, i64 32, !921, i64 40, i64 8, !840, i64 48, i64 8, !840}
!2635 = distinct !DIAssignID()
!2636 = !DILocation(line: 0, scope: !1609, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 974, column: 3, scope: !2622)
!2638 = !DILocation(line: 147, column: 41, scope: !1609, inlinedAt: !2637)
!2639 = !DILocation(line: 147, column: 62, scope: !1609, inlinedAt: !2637)
!2640 = !DILocation(line: 147, column: 57, scope: !1609, inlinedAt: !2637)
!2641 = !DILocation(line: 148, column: 15, scope: !1609, inlinedAt: !2637)
!2642 = !DILocation(line: 149, column: 21, scope: !1609, inlinedAt: !2637)
!2643 = !DILocation(line: 149, column: 24, scope: !1609, inlinedAt: !2637)
!2644 = !DILocation(line: 150, column: 19, scope: !1609, inlinedAt: !2637)
!2645 = !DILocation(line: 150, column: 24, scope: !1609, inlinedAt: !2637)
!2646 = !DILocation(line: 150, column: 6, scope: !1609, inlinedAt: !2637)
!2647 = !DILocation(line: 975, column: 10, scope: !2622)
!2648 = !DILocation(line: 976, column: 1, scope: !2622)
!2649 = !DILocation(line: 975, column: 3, scope: !2622)
!2650 = distinct !DISubprogram(name: "quotearg_char", scope: !515, file: !515, line: 979, type: !2651, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!89, !96, !4}
!2653 = !{!2654, !2655}
!2654 = !DILocalVariable(name: "arg", arg: 1, scope: !2650, file: !515, line: 979, type: !96)
!2655 = !DILocalVariable(name: "ch", arg: 2, scope: !2650, file: !515, line: 979, type: !4)
!2656 = distinct !DIAssignID()
!2657 = !DILocation(line: 0, scope: !2650)
!2658 = !DILocation(line: 0, scope: !2622, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 981, column: 10, scope: !2650)
!2660 = !DILocation(line: 972, column: 3, scope: !2622, inlinedAt: !2659)
!2661 = !DILocation(line: 973, column: 13, scope: !2622, inlinedAt: !2659)
!2662 = distinct !DIAssignID()
!2663 = !DILocation(line: 0, scope: !1609, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 974, column: 3, scope: !2622, inlinedAt: !2659)
!2665 = !DILocation(line: 147, column: 41, scope: !1609, inlinedAt: !2664)
!2666 = !DILocation(line: 147, column: 62, scope: !1609, inlinedAt: !2664)
!2667 = !DILocation(line: 147, column: 57, scope: !1609, inlinedAt: !2664)
!2668 = !DILocation(line: 148, column: 15, scope: !1609, inlinedAt: !2664)
!2669 = !DILocation(line: 149, column: 21, scope: !1609, inlinedAt: !2664)
!2670 = !DILocation(line: 149, column: 24, scope: !1609, inlinedAt: !2664)
!2671 = !DILocation(line: 150, column: 19, scope: !1609, inlinedAt: !2664)
!2672 = !DILocation(line: 150, column: 24, scope: !1609, inlinedAt: !2664)
!2673 = !DILocation(line: 150, column: 6, scope: !1609, inlinedAt: !2664)
!2674 = !DILocation(line: 975, column: 10, scope: !2622, inlinedAt: !2659)
!2675 = !DILocation(line: 976, column: 1, scope: !2622, inlinedAt: !2659)
!2676 = !DILocation(line: 981, column: 3, scope: !2650)
!2677 = distinct !DISubprogram(name: "quotearg_colon", scope: !515, file: !515, line: 985, type: !1038, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2678)
!2678 = !{!2679}
!2679 = !DILocalVariable(name: "arg", arg: 1, scope: !2677, file: !515, line: 985, type: !96)
!2680 = distinct !DIAssignID()
!2681 = !DILocation(line: 0, scope: !2677)
!2682 = !DILocation(line: 0, scope: !2650, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 987, column: 10, scope: !2677)
!2684 = !DILocation(line: 0, scope: !2622, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 981, column: 10, scope: !2650, inlinedAt: !2683)
!2686 = !DILocation(line: 972, column: 3, scope: !2622, inlinedAt: !2685)
!2687 = !DILocation(line: 973, column: 13, scope: !2622, inlinedAt: !2685)
!2688 = distinct !DIAssignID()
!2689 = !DILocation(line: 0, scope: !1609, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 974, column: 3, scope: !2622, inlinedAt: !2685)
!2691 = !DILocation(line: 147, column: 57, scope: !1609, inlinedAt: !2690)
!2692 = !DILocation(line: 149, column: 21, scope: !1609, inlinedAt: !2690)
!2693 = !DILocation(line: 150, column: 6, scope: !1609, inlinedAt: !2690)
!2694 = !DILocation(line: 975, column: 10, scope: !2622, inlinedAt: !2685)
!2695 = !DILocation(line: 976, column: 1, scope: !2622, inlinedAt: !2685)
!2696 = !DILocation(line: 987, column: 3, scope: !2677)
!2697 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !515, file: !515, line: 991, type: !2495, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2698)
!2698 = !{!2699, !2700}
!2699 = !DILocalVariable(name: "arg", arg: 1, scope: !2697, file: !515, line: 991, type: !96)
!2700 = !DILocalVariable(name: "argsize", arg: 2, scope: !2697, file: !515, line: 991, type: !147)
!2701 = distinct !DIAssignID()
!2702 = !DILocation(line: 0, scope: !2697)
!2703 = !DILocation(line: 0, scope: !2622, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 993, column: 10, scope: !2697)
!2705 = !DILocation(line: 972, column: 3, scope: !2622, inlinedAt: !2704)
!2706 = !DILocation(line: 973, column: 13, scope: !2622, inlinedAt: !2704)
!2707 = distinct !DIAssignID()
!2708 = !DILocation(line: 0, scope: !1609, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 974, column: 3, scope: !2622, inlinedAt: !2704)
!2710 = !DILocation(line: 147, column: 57, scope: !1609, inlinedAt: !2709)
!2711 = !DILocation(line: 149, column: 21, scope: !1609, inlinedAt: !2709)
!2712 = !DILocation(line: 150, column: 6, scope: !1609, inlinedAt: !2709)
!2713 = !DILocation(line: 975, column: 10, scope: !2622, inlinedAt: !2704)
!2714 = !DILocation(line: 976, column: 1, scope: !2622, inlinedAt: !2704)
!2715 = !DILocation(line: 993, column: 3, scope: !2697)
!2716 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !515, file: !515, line: 997, type: !2506, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2717)
!2717 = !{!2718, !2719, !2720, !2721}
!2718 = !DILocalVariable(name: "n", arg: 1, scope: !2716, file: !515, line: 997, type: !72)
!2719 = !DILocalVariable(name: "s", arg: 2, scope: !2716, file: !515, line: 997, type: !541)
!2720 = !DILocalVariable(name: "arg", arg: 3, scope: !2716, file: !515, line: 997, type: !96)
!2721 = !DILocalVariable(name: "options", scope: !2716, file: !515, line: 999, type: !568)
!2722 = distinct !DIAssignID()
!2723 = !DILocation(line: 0, scope: !2716)
!2724 = !DILocation(line: 185, column: 26, scope: !2521, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1000, column: 13, scope: !2716)
!2726 = !DILocation(line: 999, column: 3, scope: !2716)
!2727 = !DILocation(line: 0, scope: !2521, inlinedAt: !2725)
!2728 = !DILocation(line: 186, column: 13, scope: !2531, inlinedAt: !2725)
!2729 = !DILocation(line: 186, column: 7, scope: !2521, inlinedAt: !2725)
!2730 = !DILocation(line: 187, column: 5, scope: !2531, inlinedAt: !2725)
!2731 = !{!2732}
!2732 = distinct !{!2732, !2733, !"quoting_options_from_style: argument 0"}
!2733 = distinct !{!2733, !"quoting_options_from_style"}
!2734 = !DILocation(line: 1000, column: 13, scope: !2716)
!2735 = distinct !DIAssignID()
!2736 = distinct !DIAssignID()
!2737 = !DILocation(line: 0, scope: !1609, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1001, column: 3, scope: !2716)
!2739 = !DILocation(line: 147, column: 57, scope: !1609, inlinedAt: !2738)
!2740 = !DILocation(line: 149, column: 21, scope: !1609, inlinedAt: !2738)
!2741 = !DILocation(line: 150, column: 6, scope: !1609, inlinedAt: !2738)
!2742 = distinct !DIAssignID()
!2743 = !DILocation(line: 1002, column: 10, scope: !2716)
!2744 = !DILocation(line: 1003, column: 1, scope: !2716)
!2745 = !DILocation(line: 1002, column: 3, scope: !2716)
!2746 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !515, file: !515, line: 1006, type: !2747, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!89, !72, !96, !96, !96}
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DILocalVariable(name: "n", arg: 1, scope: !2746, file: !515, line: 1006, type: !72)
!2751 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2746, file: !515, line: 1006, type: !96)
!2752 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2746, file: !515, line: 1007, type: !96)
!2753 = !DILocalVariable(name: "arg", arg: 4, scope: !2746, file: !515, line: 1007, type: !96)
!2754 = distinct !DIAssignID()
!2755 = !DILocation(line: 0, scope: !2746)
!2756 = !DILocalVariable(name: "o", scope: !2757, file: !515, line: 1018, type: !568)
!2757 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !515, file: !515, line: 1014, type: !2758, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!89, !72, !96, !96, !96, !147}
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2756}
!2761 = !DILocalVariable(name: "n", arg: 1, scope: !2757, file: !515, line: 1014, type: !72)
!2762 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2757, file: !515, line: 1014, type: !96)
!2763 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2757, file: !515, line: 1015, type: !96)
!2764 = !DILocalVariable(name: "arg", arg: 4, scope: !2757, file: !515, line: 1016, type: !96)
!2765 = !DILocalVariable(name: "argsize", arg: 5, scope: !2757, file: !515, line: 1016, type: !147)
!2766 = !DILocation(line: 0, scope: !2757, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1009, column: 10, scope: !2746)
!2768 = !DILocation(line: 1018, column: 3, scope: !2757, inlinedAt: !2767)
!2769 = !DILocation(line: 1018, column: 30, scope: !2757, inlinedAt: !2767)
!2770 = distinct !DIAssignID()
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 0, scope: !1649, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 1019, column: 3, scope: !2757, inlinedAt: !2767)
!2774 = !DILocation(line: 174, column: 12, scope: !1649, inlinedAt: !2773)
!2775 = distinct !DIAssignID()
!2776 = !DILocation(line: 175, column: 8, scope: !1662, inlinedAt: !2773)
!2777 = !DILocation(line: 175, column: 19, scope: !1662, inlinedAt: !2773)
!2778 = !DILocation(line: 176, column: 5, scope: !1662, inlinedAt: !2773)
!2779 = !DILocation(line: 177, column: 6, scope: !1649, inlinedAt: !2773)
!2780 = !DILocation(line: 177, column: 17, scope: !1649, inlinedAt: !2773)
!2781 = distinct !DIAssignID()
!2782 = !DILocation(line: 178, column: 6, scope: !1649, inlinedAt: !2773)
!2783 = !DILocation(line: 178, column: 18, scope: !1649, inlinedAt: !2773)
!2784 = distinct !DIAssignID()
!2785 = !DILocation(line: 1020, column: 10, scope: !2757, inlinedAt: !2767)
!2786 = !DILocation(line: 1021, column: 1, scope: !2757, inlinedAt: !2767)
!2787 = !DILocation(line: 1009, column: 3, scope: !2746)
!2788 = distinct !DIAssignID()
!2789 = !DILocation(line: 0, scope: !2757)
!2790 = !DILocation(line: 1018, column: 3, scope: !2757)
!2791 = !DILocation(line: 1018, column: 30, scope: !2757)
!2792 = distinct !DIAssignID()
!2793 = distinct !DIAssignID()
!2794 = !DILocation(line: 0, scope: !1649, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1019, column: 3, scope: !2757)
!2796 = !DILocation(line: 174, column: 12, scope: !1649, inlinedAt: !2795)
!2797 = distinct !DIAssignID()
!2798 = !DILocation(line: 175, column: 8, scope: !1662, inlinedAt: !2795)
!2799 = !DILocation(line: 175, column: 19, scope: !1662, inlinedAt: !2795)
!2800 = !DILocation(line: 176, column: 5, scope: !1662, inlinedAt: !2795)
!2801 = !DILocation(line: 177, column: 6, scope: !1649, inlinedAt: !2795)
!2802 = !DILocation(line: 177, column: 17, scope: !1649, inlinedAt: !2795)
!2803 = distinct !DIAssignID()
!2804 = !DILocation(line: 178, column: 6, scope: !1649, inlinedAt: !2795)
!2805 = !DILocation(line: 178, column: 18, scope: !1649, inlinedAt: !2795)
!2806 = distinct !DIAssignID()
!2807 = !DILocation(line: 1020, column: 10, scope: !2757)
!2808 = !DILocation(line: 1021, column: 1, scope: !2757)
!2809 = !DILocation(line: 1020, column: 3, scope: !2757)
!2810 = distinct !DISubprogram(name: "quotearg_custom", scope: !515, file: !515, line: 1024, type: !2811, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!89, !96, !96, !96}
!2813 = !{!2814, !2815, !2816}
!2814 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2810, file: !515, line: 1024, type: !96)
!2815 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2810, file: !515, line: 1024, type: !96)
!2816 = !DILocalVariable(name: "arg", arg: 3, scope: !2810, file: !515, line: 1025, type: !96)
!2817 = distinct !DIAssignID()
!2818 = !DILocation(line: 0, scope: !2810)
!2819 = !DILocation(line: 0, scope: !2746, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1027, column: 10, scope: !2810)
!2821 = !DILocation(line: 0, scope: !2757, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1009, column: 10, scope: !2746, inlinedAt: !2820)
!2823 = !DILocation(line: 1018, column: 3, scope: !2757, inlinedAt: !2822)
!2824 = !DILocation(line: 1018, column: 30, scope: !2757, inlinedAt: !2822)
!2825 = distinct !DIAssignID()
!2826 = distinct !DIAssignID()
!2827 = !DILocation(line: 0, scope: !1649, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 1019, column: 3, scope: !2757, inlinedAt: !2822)
!2829 = !DILocation(line: 174, column: 12, scope: !1649, inlinedAt: !2828)
!2830 = distinct !DIAssignID()
!2831 = !DILocation(line: 175, column: 8, scope: !1662, inlinedAt: !2828)
!2832 = !DILocation(line: 175, column: 19, scope: !1662, inlinedAt: !2828)
!2833 = !DILocation(line: 176, column: 5, scope: !1662, inlinedAt: !2828)
!2834 = !DILocation(line: 177, column: 6, scope: !1649, inlinedAt: !2828)
!2835 = !DILocation(line: 177, column: 17, scope: !1649, inlinedAt: !2828)
!2836 = distinct !DIAssignID()
!2837 = !DILocation(line: 178, column: 6, scope: !1649, inlinedAt: !2828)
!2838 = !DILocation(line: 178, column: 18, scope: !1649, inlinedAt: !2828)
!2839 = distinct !DIAssignID()
!2840 = !DILocation(line: 1020, column: 10, scope: !2757, inlinedAt: !2822)
!2841 = !DILocation(line: 1021, column: 1, scope: !2757, inlinedAt: !2822)
!2842 = !DILocation(line: 1027, column: 3, scope: !2810)
!2843 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !515, file: !515, line: 1031, type: !2844, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!89, !96, !96, !96, !147}
!2846 = !{!2847, !2848, !2849, !2850}
!2847 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2843, file: !515, line: 1031, type: !96)
!2848 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2843, file: !515, line: 1031, type: !96)
!2849 = !DILocalVariable(name: "arg", arg: 3, scope: !2843, file: !515, line: 1032, type: !96)
!2850 = !DILocalVariable(name: "argsize", arg: 4, scope: !2843, file: !515, line: 1032, type: !147)
!2851 = distinct !DIAssignID()
!2852 = !DILocation(line: 0, scope: !2843)
!2853 = !DILocation(line: 0, scope: !2757, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 1034, column: 10, scope: !2843)
!2855 = !DILocation(line: 1018, column: 3, scope: !2757, inlinedAt: !2854)
!2856 = !DILocation(line: 1018, column: 30, scope: !2757, inlinedAt: !2854)
!2857 = distinct !DIAssignID()
!2858 = distinct !DIAssignID()
!2859 = !DILocation(line: 0, scope: !1649, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 1019, column: 3, scope: !2757, inlinedAt: !2854)
!2861 = !DILocation(line: 174, column: 12, scope: !1649, inlinedAt: !2860)
!2862 = distinct !DIAssignID()
!2863 = !DILocation(line: 175, column: 8, scope: !1662, inlinedAt: !2860)
!2864 = !DILocation(line: 175, column: 19, scope: !1662, inlinedAt: !2860)
!2865 = !DILocation(line: 176, column: 5, scope: !1662, inlinedAt: !2860)
!2866 = !DILocation(line: 177, column: 6, scope: !1649, inlinedAt: !2860)
!2867 = !DILocation(line: 177, column: 17, scope: !1649, inlinedAt: !2860)
!2868 = distinct !DIAssignID()
!2869 = !DILocation(line: 178, column: 6, scope: !1649, inlinedAt: !2860)
!2870 = !DILocation(line: 178, column: 18, scope: !1649, inlinedAt: !2860)
!2871 = distinct !DIAssignID()
!2872 = !DILocation(line: 1020, column: 10, scope: !2757, inlinedAt: !2854)
!2873 = !DILocation(line: 1021, column: 1, scope: !2757, inlinedAt: !2854)
!2874 = !DILocation(line: 1034, column: 3, scope: !2843)
!2875 = distinct !DISubprogram(name: "quote_n_mem", scope: !515, file: !515, line: 1049, type: !2876, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!96, !72, !96, !147}
!2878 = !{!2879, !2880, !2881}
!2879 = !DILocalVariable(name: "n", arg: 1, scope: !2875, file: !515, line: 1049, type: !72)
!2880 = !DILocalVariable(name: "arg", arg: 2, scope: !2875, file: !515, line: 1049, type: !96)
!2881 = !DILocalVariable(name: "argsize", arg: 3, scope: !2875, file: !515, line: 1049, type: !147)
!2882 = !DILocation(line: 0, scope: !2875)
!2883 = !DILocation(line: 1051, column: 10, scope: !2875)
!2884 = !DILocation(line: 1051, column: 3, scope: !2875)
!2885 = distinct !DISubprogram(name: "quote_mem", scope: !515, file: !515, line: 1055, type: !2886, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!96, !96, !147}
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "arg", arg: 1, scope: !2885, file: !515, line: 1055, type: !96)
!2890 = !DILocalVariable(name: "argsize", arg: 2, scope: !2885, file: !515, line: 1055, type: !147)
!2891 = !DILocation(line: 0, scope: !2885)
!2892 = !DILocation(line: 0, scope: !2875, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1057, column: 10, scope: !2885)
!2894 = !DILocation(line: 1051, column: 10, scope: !2875, inlinedAt: !2893)
!2895 = !DILocation(line: 1057, column: 3, scope: !2885)
!2896 = distinct !DISubprogram(name: "quote_n", scope: !515, file: !515, line: 1061, type: !2897, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!96, !72, !96}
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "n", arg: 1, scope: !2896, file: !515, line: 1061, type: !72)
!2901 = !DILocalVariable(name: "arg", arg: 2, scope: !2896, file: !515, line: 1061, type: !96)
!2902 = !DILocation(line: 0, scope: !2896)
!2903 = !DILocation(line: 0, scope: !2875, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 1063, column: 10, scope: !2896)
!2905 = !DILocation(line: 1051, column: 10, scope: !2875, inlinedAt: !2904)
!2906 = !DILocation(line: 1063, column: 3, scope: !2896)
!2907 = distinct !DISubprogram(name: "quote", scope: !515, file: !515, line: 1067, type: !2908, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!96, !96}
!2910 = !{!2911}
!2911 = !DILocalVariable(name: "arg", arg: 1, scope: !2907, file: !515, line: 1067, type: !96)
!2912 = !DILocation(line: 0, scope: !2907)
!2913 = !DILocation(line: 0, scope: !2896, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 1069, column: 10, scope: !2907)
!2915 = !DILocation(line: 0, scope: !2875, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 1063, column: 10, scope: !2896, inlinedAt: !2914)
!2917 = !DILocation(line: 1051, column: 10, scope: !2875, inlinedAt: !2916)
!2918 = !DILocation(line: 1069, column: 3, scope: !2907)
!2919 = distinct !DISubprogram(name: "version_etc_arn", scope: !629, file: !629, line: 61, type: !2920, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2957)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2922, !96, !96, !96, !2956, !147}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !2924)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !2925)
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2924, file: !219, line: 51, baseType: !72, size: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2924, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2924, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2924, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2924, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2924, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2924, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2924, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2924, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2924, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2924, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2924, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2924, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2924, file: !219, line: 70, baseType: !2940, size: 64, offset: 832)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2924, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2924, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2924, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2924, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2924, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2924, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2924, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2924, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2924, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2924, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2924, file: !219, line: 93, baseType: !2940, size: 64, offset: 1344)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2924, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2924, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2924, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2924, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963}
!2958 = !DILocalVariable(name: "stream", arg: 1, scope: !2919, file: !629, line: 61, type: !2922)
!2959 = !DILocalVariable(name: "command_name", arg: 2, scope: !2919, file: !629, line: 62, type: !96)
!2960 = !DILocalVariable(name: "package", arg: 3, scope: !2919, file: !629, line: 62, type: !96)
!2961 = !DILocalVariable(name: "version", arg: 4, scope: !2919, file: !629, line: 63, type: !96)
!2962 = !DILocalVariable(name: "authors", arg: 5, scope: !2919, file: !629, line: 64, type: !2956)
!2963 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2919, file: !629, line: 64, type: !147)
!2964 = !DILocation(line: 0, scope: !2919)
!2965 = !DILocation(line: 66, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2919, file: !629, line: 66, column: 7)
!2967 = !DILocation(line: 66, column: 7, scope: !2919)
!2968 = !DILocation(line: 67, column: 5, scope: !2966)
!2969 = !DILocation(line: 69, column: 5, scope: !2966)
!2970 = !DILocation(line: 83, column: 3, scope: !2919)
!2971 = !DILocation(line: 85, column: 3, scope: !2919)
!2972 = !DILocation(line: 88, column: 3, scope: !2919)
!2973 = !DILocation(line: 95, column: 3, scope: !2919)
!2974 = !DILocation(line: 97, column: 3, scope: !2919)
!2975 = !DILocation(line: 105, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2919, file: !629, line: 98, column: 5)
!2977 = !DILocation(line: 106, column: 7, scope: !2976)
!2978 = !DILocation(line: 109, column: 7, scope: !2976)
!2979 = !DILocation(line: 110, column: 7, scope: !2976)
!2980 = !DILocation(line: 113, column: 7, scope: !2976)
!2981 = !DILocation(line: 115, column: 7, scope: !2976)
!2982 = !DILocation(line: 120, column: 7, scope: !2976)
!2983 = !DILocation(line: 122, column: 7, scope: !2976)
!2984 = !DILocation(line: 127, column: 7, scope: !2976)
!2985 = !DILocation(line: 129, column: 7, scope: !2976)
!2986 = !DILocation(line: 134, column: 7, scope: !2976)
!2987 = !DILocation(line: 137, column: 7, scope: !2976)
!2988 = !DILocation(line: 142, column: 7, scope: !2976)
!2989 = !DILocation(line: 145, column: 7, scope: !2976)
!2990 = !DILocation(line: 150, column: 7, scope: !2976)
!2991 = !DILocation(line: 154, column: 7, scope: !2976)
!2992 = !DILocation(line: 159, column: 7, scope: !2976)
!2993 = !DILocation(line: 163, column: 7, scope: !2976)
!2994 = !DILocation(line: 170, column: 7, scope: !2976)
!2995 = !DILocation(line: 174, column: 7, scope: !2976)
!2996 = !DILocation(line: 176, column: 1, scope: !2919)
!2997 = distinct !DISubprogram(name: "version_etc_ar", scope: !629, file: !629, line: 183, type: !2998, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2922, !96, !96, !96, !2956}
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3006}
!3001 = !DILocalVariable(name: "stream", arg: 1, scope: !2997, file: !629, line: 183, type: !2922)
!3002 = !DILocalVariable(name: "command_name", arg: 2, scope: !2997, file: !629, line: 184, type: !96)
!3003 = !DILocalVariable(name: "package", arg: 3, scope: !2997, file: !629, line: 184, type: !96)
!3004 = !DILocalVariable(name: "version", arg: 4, scope: !2997, file: !629, line: 185, type: !96)
!3005 = !DILocalVariable(name: "authors", arg: 5, scope: !2997, file: !629, line: 185, type: !2956)
!3006 = !DILocalVariable(name: "n_authors", scope: !2997, file: !629, line: 187, type: !147)
!3007 = !DILocation(line: 0, scope: !2997)
!3008 = !DILocation(line: 189, column: 8, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2997, file: !629, line: 189, column: 3)
!3010 = !DILocation(line: 189, scope: !3009)
!3011 = !DILocation(line: 189, column: 23, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !629, line: 189, column: 3)
!3013 = !DILocation(line: 189, column: 3, scope: !3009)
!3014 = !DILocation(line: 189, column: 52, scope: !3012)
!3015 = distinct !{!3015, !3013, !3016, !959}
!3016 = !DILocation(line: 190, column: 5, scope: !3009)
!3017 = !DILocation(line: 191, column: 3, scope: !2997)
!3018 = !DILocation(line: 192, column: 1, scope: !2997)
!3019 = distinct !DISubprogram(name: "version_etc_va", scope: !629, file: !629, line: 199, type: !3020, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3029)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2922, !96, !96, !96, !3022}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3028}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3023, file: !629, line: 192, baseType: !65, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3023, file: !629, line: 192, baseType: !65, size: 32, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3023, file: !629, line: 192, baseType: !145, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3023, file: !629, line: 192, baseType: !145, size: 64, offset: 128)
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3030 = !DILocalVariable(name: "stream", arg: 1, scope: !3019, file: !629, line: 199, type: !2922)
!3031 = !DILocalVariable(name: "command_name", arg: 2, scope: !3019, file: !629, line: 200, type: !96)
!3032 = !DILocalVariable(name: "package", arg: 3, scope: !3019, file: !629, line: 200, type: !96)
!3033 = !DILocalVariable(name: "version", arg: 4, scope: !3019, file: !629, line: 201, type: !96)
!3034 = !DILocalVariable(name: "authors", arg: 5, scope: !3019, file: !629, line: 201, type: !3022)
!3035 = !DILocalVariable(name: "n_authors", scope: !3019, file: !629, line: 203, type: !147)
!3036 = !DILocalVariable(name: "authtab", scope: !3019, file: !629, line: 204, type: !3037)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !47)
!3038 = distinct !DIAssignID()
!3039 = !DILocation(line: 0, scope: !3019)
!3040 = !DILocation(line: 204, column: 3, scope: !3019)
!3041 = !DILocation(line: 208, column: 35, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !629, line: 206, column: 3)
!3043 = distinct !DILexicalBlock(scope: !3019, file: !629, line: 206, column: 3)
!3044 = !DILocation(line: 208, column: 33, scope: !3042)
!3045 = !DILocation(line: 208, column: 67, scope: !3042)
!3046 = !DILocation(line: 206, column: 3, scope: !3043)
!3047 = !DILocation(line: 208, column: 14, scope: !3042)
!3048 = !DILocation(line: 0, scope: !3043)
!3049 = !DILocation(line: 211, column: 3, scope: !3019)
!3050 = !DILocation(line: 213, column: 1, scope: !3019)
!3051 = distinct !DISubprogram(name: "version_etc", scope: !629, file: !629, line: 230, type: !3052, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !2922, !96, !96, !96, null}
!3054 = !{!3055, !3056, !3057, !3058, !3059}
!3055 = !DILocalVariable(name: "stream", arg: 1, scope: !3051, file: !629, line: 230, type: !2922)
!3056 = !DILocalVariable(name: "command_name", arg: 2, scope: !3051, file: !629, line: 231, type: !96)
!3057 = !DILocalVariable(name: "package", arg: 3, scope: !3051, file: !629, line: 231, type: !96)
!3058 = !DILocalVariable(name: "version", arg: 4, scope: !3051, file: !629, line: 232, type: !96)
!3059 = !DILocalVariable(name: "authors", scope: !3051, file: !629, line: 234, type: !3060)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !907, line: 52, baseType: !3061)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1435, line: 12, baseType: !3062)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !629, baseType: !3063)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3023, size: 192, elements: !42)
!3064 = distinct !DIAssignID()
!3065 = !DILocation(line: 0, scope: !3051)
!3066 = !DILocation(line: 234, column: 3, scope: !3051)
!3067 = !DILocation(line: 235, column: 3, scope: !3051)
!3068 = !DILocation(line: 236, column: 3, scope: !3051)
!3069 = !DILocation(line: 237, column: 3, scope: !3051)
!3070 = !DILocation(line: 238, column: 1, scope: !3051)
!3071 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !629, file: !629, line: 241, type: !470, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753)
!3072 = !DILocation(line: 243, column: 3, scope: !3071)
!3073 = !DILocation(line: 248, column: 3, scope: !3071)
!3074 = !DILocation(line: 254, column: 3, scope: !3071)
!3075 = !DILocation(line: 259, column: 3, scope: !3071)
!3076 = !DILocation(line: 261, column: 1, scope: !3071)
!3077 = distinct !DISubprogram(name: "xnrealloc", scope: !3078, file: !3078, line: 147, type: !3079, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3081)
!3078 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!145, !145, !147, !147}
!3081 = !{!3082, !3083, !3084}
!3082 = !DILocalVariable(name: "p", arg: 1, scope: !3077, file: !3078, line: 147, type: !145)
!3083 = !DILocalVariable(name: "n", arg: 2, scope: !3077, file: !3078, line: 147, type: !147)
!3084 = !DILocalVariable(name: "s", arg: 3, scope: !3077, file: !3078, line: 147, type: !147)
!3085 = !DILocation(line: 0, scope: !3077)
!3086 = !DILocalVariable(name: "p", arg: 1, scope: !3087, file: !761, line: 83, type: !145)
!3087 = distinct !DISubprogram(name: "xreallocarray", scope: !761, file: !761, line: 83, type: !3079, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3088)
!3088 = !{!3086, !3089, !3090}
!3089 = !DILocalVariable(name: "n", arg: 2, scope: !3087, file: !761, line: 83, type: !147)
!3090 = !DILocalVariable(name: "s", arg: 3, scope: !3087, file: !761, line: 83, type: !147)
!3091 = !DILocation(line: 0, scope: !3087, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 149, column: 10, scope: !3077)
!3093 = !DILocation(line: 85, column: 25, scope: !3087, inlinedAt: !3092)
!3094 = !DILocalVariable(name: "p", arg: 1, scope: !3095, file: !761, line: 37, type: !145)
!3095 = distinct !DISubprogram(name: "check_nonnull", scope: !761, file: !761, line: 37, type: !3096, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!145, !145}
!3098 = !{!3094}
!3099 = !DILocation(line: 0, scope: !3095, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 85, column: 10, scope: !3087, inlinedAt: !3092)
!3101 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3100)
!3102 = distinct !DILexicalBlock(scope: !3095, file: !761, line: 39, column: 7)
!3103 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3100)
!3104 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3100)
!3105 = !DILocation(line: 149, column: 3, scope: !3077)
!3106 = !DILocation(line: 0, scope: !3087)
!3107 = !DILocation(line: 85, column: 25, scope: !3087)
!3108 = !DILocation(line: 0, scope: !3095, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 85, column: 10, scope: !3087)
!3110 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3109)
!3111 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3109)
!3112 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3109)
!3113 = !DILocation(line: 85, column: 3, scope: !3087)
!3114 = distinct !DISubprogram(name: "xmalloc", scope: !761, file: !761, line: 47, type: !3115, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!145, !147}
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "s", arg: 1, scope: !3114, file: !761, line: 47, type: !147)
!3119 = !DILocation(line: 0, scope: !3114)
!3120 = !DILocation(line: 49, column: 25, scope: !3114)
!3121 = !DILocation(line: 0, scope: !3095, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 49, column: 10, scope: !3114)
!3123 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3122)
!3124 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3122)
!3125 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3122)
!3126 = !DILocation(line: 49, column: 3, scope: !3114)
!3127 = !DISubprogram(name: "malloc", scope: !1036, file: !1036, line: 540, type: !3115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3128 = distinct !DISubprogram(name: "ximalloc", scope: !761, file: !761, line: 53, type: !3129, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!145, !780}
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "s", arg: 1, scope: !3128, file: !761, line: 53, type: !780)
!3133 = !DILocation(line: 0, scope: !3128)
!3134 = !DILocalVariable(name: "s", arg: 1, scope: !3135, file: !3136, line: 55, type: !780)
!3135 = distinct !DISubprogram(name: "imalloc", scope: !3136, file: !3136, line: 55, type: !3129, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3137)
!3136 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3137 = !{!3134}
!3138 = !DILocation(line: 0, scope: !3135, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 55, column: 25, scope: !3128)
!3140 = !DILocation(line: 57, column: 26, scope: !3135, inlinedAt: !3139)
!3141 = !DILocation(line: 0, scope: !3095, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 55, column: 10, scope: !3128)
!3143 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3142)
!3144 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3142)
!3145 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3142)
!3146 = !DILocation(line: 55, column: 3, scope: !3128)
!3147 = distinct !DISubprogram(name: "xcharalloc", scope: !761, file: !761, line: 59, type: !3148, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!89, !147}
!3150 = !{!3151}
!3151 = !DILocalVariable(name: "n", arg: 1, scope: !3147, file: !761, line: 59, type: !147)
!3152 = !DILocation(line: 0, scope: !3147)
!3153 = !DILocation(line: 0, scope: !3114, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 61, column: 10, scope: !3147)
!3155 = !DILocation(line: 49, column: 25, scope: !3114, inlinedAt: !3154)
!3156 = !DILocation(line: 0, scope: !3095, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 49, column: 10, scope: !3114, inlinedAt: !3154)
!3158 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3157)
!3159 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3157)
!3160 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3157)
!3161 = !DILocation(line: 61, column: 3, scope: !3147)
!3162 = distinct !DISubprogram(name: "xrealloc", scope: !761, file: !761, line: 68, type: !3163, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!145, !145, !147}
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "p", arg: 1, scope: !3162, file: !761, line: 68, type: !145)
!3167 = !DILocalVariable(name: "s", arg: 2, scope: !3162, file: !761, line: 68, type: !147)
!3168 = !DILocation(line: 0, scope: !3162)
!3169 = !DILocalVariable(name: "ptr", arg: 1, scope: !3170, file: !3171, line: 2057, type: !145)
!3170 = distinct !DISubprogram(name: "rpl_realloc", scope: !3171, file: !3171, line: 2057, type: !3163, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3172)
!3171 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3172 = !{!3169, !3173}
!3173 = !DILocalVariable(name: "size", arg: 2, scope: !3170, file: !3171, line: 2057, type: !147)
!3174 = !DILocation(line: 0, scope: !3170, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 70, column: 25, scope: !3162)
!3176 = !DILocation(line: 2059, column: 24, scope: !3170, inlinedAt: !3175)
!3177 = !DILocation(line: 2059, column: 10, scope: !3170, inlinedAt: !3175)
!3178 = !DILocation(line: 0, scope: !3095, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 70, column: 10, scope: !3162)
!3180 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3179)
!3181 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3179)
!3182 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3179)
!3183 = !DILocation(line: 70, column: 3, scope: !3162)
!3184 = !DISubprogram(name: "realloc", scope: !1036, file: !1036, line: 551, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3185 = distinct !DISubprogram(name: "xirealloc", scope: !761, file: !761, line: 74, type: !3186, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!145, !145, !780}
!3188 = !{!3189, !3190}
!3189 = !DILocalVariable(name: "p", arg: 1, scope: !3185, file: !761, line: 74, type: !145)
!3190 = !DILocalVariable(name: "s", arg: 2, scope: !3185, file: !761, line: 74, type: !780)
!3191 = !DILocation(line: 0, scope: !3185)
!3192 = !DILocalVariable(name: "p", arg: 1, scope: !3193, file: !3136, line: 66, type: !145)
!3193 = distinct !DISubprogram(name: "irealloc", scope: !3136, file: !3136, line: 66, type: !3186, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3194)
!3194 = !{!3192, !3195}
!3195 = !DILocalVariable(name: "s", arg: 2, scope: !3193, file: !3136, line: 66, type: !780)
!3196 = !DILocation(line: 0, scope: !3193, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 76, column: 25, scope: !3185)
!3198 = !DILocation(line: 0, scope: !3170, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 68, column: 26, scope: !3193, inlinedAt: !3197)
!3200 = !DILocation(line: 2059, column: 24, scope: !3170, inlinedAt: !3199)
!3201 = !DILocation(line: 2059, column: 10, scope: !3170, inlinedAt: !3199)
!3202 = !DILocation(line: 0, scope: !3095, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 76, column: 10, scope: !3185)
!3204 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3203)
!3205 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3203)
!3206 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3203)
!3207 = !DILocation(line: 76, column: 3, scope: !3185)
!3208 = distinct !DISubprogram(name: "xireallocarray", scope: !761, file: !761, line: 89, type: !3209, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!145, !145, !780, !780}
!3211 = !{!3212, !3213, !3214}
!3212 = !DILocalVariable(name: "p", arg: 1, scope: !3208, file: !761, line: 89, type: !145)
!3213 = !DILocalVariable(name: "n", arg: 2, scope: !3208, file: !761, line: 89, type: !780)
!3214 = !DILocalVariable(name: "s", arg: 3, scope: !3208, file: !761, line: 89, type: !780)
!3215 = !DILocation(line: 0, scope: !3208)
!3216 = !DILocalVariable(name: "p", arg: 1, scope: !3217, file: !3136, line: 98, type: !145)
!3217 = distinct !DISubprogram(name: "ireallocarray", scope: !3136, file: !3136, line: 98, type: !3209, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3218)
!3218 = !{!3216, !3219, !3220}
!3219 = !DILocalVariable(name: "n", arg: 2, scope: !3217, file: !3136, line: 98, type: !780)
!3220 = !DILocalVariable(name: "s", arg: 3, scope: !3217, file: !3136, line: 98, type: !780)
!3221 = !DILocation(line: 0, scope: !3217, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 91, column: 25, scope: !3208)
!3223 = !DILocation(line: 101, column: 13, scope: !3217, inlinedAt: !3222)
!3224 = !DILocation(line: 0, scope: !3095, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 91, column: 10, scope: !3208)
!3226 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3225)
!3227 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3225)
!3228 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3225)
!3229 = !DILocation(line: 91, column: 3, scope: !3208)
!3230 = distinct !DISubprogram(name: "xnmalloc", scope: !761, file: !761, line: 98, type: !3231, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!145, !147, !147}
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3230, file: !761, line: 98, type: !147)
!3235 = !DILocalVariable(name: "s", arg: 2, scope: !3230, file: !761, line: 98, type: !147)
!3236 = !DILocation(line: 0, scope: !3230)
!3237 = !DILocation(line: 0, scope: !3087, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 100, column: 10, scope: !3230)
!3239 = !DILocation(line: 85, column: 25, scope: !3087, inlinedAt: !3238)
!3240 = !DILocation(line: 0, scope: !3095, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 85, column: 10, scope: !3087, inlinedAt: !3238)
!3242 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3241)
!3243 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3241)
!3244 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3241)
!3245 = !DILocation(line: 100, column: 3, scope: !3230)
!3246 = distinct !DISubprogram(name: "xinmalloc", scope: !761, file: !761, line: 104, type: !3247, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!145, !780, !780}
!3249 = !{!3250, !3251}
!3250 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !761, line: 104, type: !780)
!3251 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !761, line: 104, type: !780)
!3252 = !DILocation(line: 0, scope: !3246)
!3253 = !DILocation(line: 0, scope: !3208, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 106, column: 10, scope: !3246)
!3255 = !DILocation(line: 0, scope: !3217, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 91, column: 25, scope: !3208, inlinedAt: !3254)
!3257 = !DILocation(line: 101, column: 13, scope: !3217, inlinedAt: !3256)
!3258 = !DILocation(line: 0, scope: !3095, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 91, column: 10, scope: !3208, inlinedAt: !3254)
!3260 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3259)
!3261 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3259)
!3262 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3259)
!3263 = !DILocation(line: 106, column: 3, scope: !3246)
!3264 = distinct !DISubprogram(name: "x2realloc", scope: !761, file: !761, line: 116, type: !3265, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!145, !145, !767}
!3267 = !{!3268, !3269}
!3268 = !DILocalVariable(name: "p", arg: 1, scope: !3264, file: !761, line: 116, type: !145)
!3269 = !DILocalVariable(name: "ps", arg: 2, scope: !3264, file: !761, line: 116, type: !767)
!3270 = !DILocation(line: 0, scope: !3264)
!3271 = !DILocation(line: 0, scope: !764, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 118, column: 10, scope: !3264)
!3273 = !DILocation(line: 178, column: 14, scope: !764, inlinedAt: !3272)
!3274 = !DILocation(line: 180, column: 9, scope: !3275, inlinedAt: !3272)
!3275 = distinct !DILexicalBlock(scope: !764, file: !761, line: 180, column: 7)
!3276 = !DILocation(line: 180, column: 7, scope: !764, inlinedAt: !3272)
!3277 = !DILocation(line: 182, column: 13, scope: !3278, inlinedAt: !3272)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !761, line: 182, column: 11)
!3279 = distinct !DILexicalBlock(scope: !3275, file: !761, line: 181, column: 5)
!3280 = !DILocation(line: 182, column: 11, scope: !3279, inlinedAt: !3272)
!3281 = !DILocation(line: 197, column: 11, scope: !3282, inlinedAt: !3272)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !761, line: 197, column: 11)
!3283 = distinct !DILexicalBlock(scope: !3275, file: !761, line: 195, column: 5)
!3284 = !DILocation(line: 197, column: 11, scope: !3283, inlinedAt: !3272)
!3285 = !DILocation(line: 198, column: 9, scope: !3282, inlinedAt: !3272)
!3286 = !DILocation(line: 0, scope: !3087, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 201, column: 7, scope: !764, inlinedAt: !3272)
!3288 = !DILocation(line: 85, column: 25, scope: !3087, inlinedAt: !3287)
!3289 = !DILocation(line: 0, scope: !3095, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 85, column: 10, scope: !3087, inlinedAt: !3287)
!3291 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3290)
!3292 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3290)
!3293 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3290)
!3294 = !DILocation(line: 202, column: 7, scope: !764, inlinedAt: !3272)
!3295 = !DILocation(line: 118, column: 3, scope: !3264)
!3296 = !DILocation(line: 0, scope: !764)
!3297 = !DILocation(line: 178, column: 14, scope: !764)
!3298 = !DILocation(line: 180, column: 9, scope: !3275)
!3299 = !DILocation(line: 180, column: 7, scope: !764)
!3300 = !DILocation(line: 182, column: 13, scope: !3278)
!3301 = !DILocation(line: 182, column: 11, scope: !3279)
!3302 = !DILocation(line: 190, column: 30, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3278, file: !761, line: 183, column: 9)
!3304 = !DILocation(line: 191, column: 16, scope: !3303)
!3305 = !DILocation(line: 191, column: 13, scope: !3303)
!3306 = !DILocation(line: 192, column: 9, scope: !3303)
!3307 = !DILocation(line: 197, column: 11, scope: !3282)
!3308 = !DILocation(line: 197, column: 11, scope: !3283)
!3309 = !DILocation(line: 198, column: 9, scope: !3282)
!3310 = !DILocation(line: 0, scope: !3087, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 201, column: 7, scope: !764)
!3312 = !DILocation(line: 85, column: 25, scope: !3087, inlinedAt: !3311)
!3313 = !DILocation(line: 0, scope: !3095, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 85, column: 10, scope: !3087, inlinedAt: !3311)
!3315 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3314)
!3316 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3314)
!3317 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3314)
!3318 = !DILocation(line: 202, column: 7, scope: !764)
!3319 = !DILocation(line: 203, column: 3, scope: !764)
!3320 = !DILocation(line: 0, scope: !776)
!3321 = !DILocation(line: 230, column: 14, scope: !776)
!3322 = !DILocation(line: 238, column: 7, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !776, file: !761, line: 238, column: 7)
!3324 = !DILocation(line: 238, column: 7, scope: !776)
!3325 = !DILocation(line: 240, column: 9, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !776, file: !761, line: 240, column: 7)
!3327 = !DILocation(line: 240, column: 18, scope: !3326)
!3328 = !DILocation(line: 253, column: 8, scope: !776)
!3329 = !DILocation(line: 256, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !776, file: !761, line: 256, column: 7)
!3331 = !DILocation(line: 256, column: 7, scope: !776)
!3332 = !DILocation(line: 258, column: 27, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3330, file: !761, line: 257, column: 5)
!3334 = !DILocation(line: 259, column: 50, scope: !3333)
!3335 = !DILocation(line: 259, column: 32, scope: !3333)
!3336 = !DILocation(line: 260, column: 5, scope: !3333)
!3337 = !DILocation(line: 262, column: 9, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !776, file: !761, line: 262, column: 7)
!3339 = !DILocation(line: 262, column: 7, scope: !776)
!3340 = !DILocation(line: 263, column: 9, scope: !3338)
!3341 = !DILocation(line: 263, column: 5, scope: !3338)
!3342 = !DILocation(line: 264, column: 9, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !776, file: !761, line: 264, column: 7)
!3344 = !DILocation(line: 264, column: 14, scope: !3343)
!3345 = !DILocation(line: 265, column: 7, scope: !3343)
!3346 = !DILocation(line: 265, column: 11, scope: !3343)
!3347 = !DILocation(line: 266, column: 11, scope: !3343)
!3348 = !DILocation(line: 267, column: 14, scope: !3343)
!3349 = !DILocation(line: 264, column: 7, scope: !776)
!3350 = !DILocation(line: 268, column: 5, scope: !3343)
!3351 = !DILocation(line: 0, scope: !3162, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 269, column: 8, scope: !776)
!3353 = !DILocation(line: 0, scope: !3170, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 70, column: 25, scope: !3162, inlinedAt: !3352)
!3355 = !DILocation(line: 2059, column: 24, scope: !3170, inlinedAt: !3354)
!3356 = !DILocation(line: 2059, column: 10, scope: !3170, inlinedAt: !3354)
!3357 = !DILocation(line: 0, scope: !3095, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 70, column: 10, scope: !3162, inlinedAt: !3352)
!3359 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3358)
!3362 = !DILocation(line: 270, column: 7, scope: !776)
!3363 = !DILocation(line: 271, column: 3, scope: !776)
!3364 = distinct !DISubprogram(name: "xzalloc", scope: !761, file: !761, line: 279, type: !3115, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3365)
!3365 = !{!3366}
!3366 = !DILocalVariable(name: "s", arg: 1, scope: !3364, file: !761, line: 279, type: !147)
!3367 = !DILocation(line: 0, scope: !3364)
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3369, file: !761, line: 294, type: !147)
!3369 = distinct !DISubprogram(name: "xcalloc", scope: !761, file: !761, line: 294, type: !3231, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3370)
!3370 = !{!3368, !3371}
!3371 = !DILocalVariable(name: "s", arg: 2, scope: !3369, file: !761, line: 294, type: !147)
!3372 = !DILocation(line: 0, scope: !3369, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 281, column: 10, scope: !3364)
!3374 = !DILocation(line: 296, column: 25, scope: !3369, inlinedAt: !3373)
!3375 = !DILocation(line: 0, scope: !3095, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 296, column: 10, scope: !3369, inlinedAt: !3373)
!3377 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3376)
!3378 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3376)
!3379 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3376)
!3380 = !DILocation(line: 281, column: 3, scope: !3364)
!3381 = !DISubprogram(name: "calloc", scope: !1036, file: !1036, line: 543, type: !3231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3382 = !DILocation(line: 0, scope: !3369)
!3383 = !DILocation(line: 296, column: 25, scope: !3369)
!3384 = !DILocation(line: 0, scope: !3095, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 296, column: 10, scope: !3369)
!3386 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3385)
!3387 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3385)
!3388 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3385)
!3389 = !DILocation(line: 296, column: 3, scope: !3369)
!3390 = distinct !DISubprogram(name: "xizalloc", scope: !761, file: !761, line: 285, type: !3129, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3391)
!3391 = !{!3392}
!3392 = !DILocalVariable(name: "s", arg: 1, scope: !3390, file: !761, line: 285, type: !780)
!3393 = !DILocation(line: 0, scope: !3390)
!3394 = !DILocalVariable(name: "n", arg: 1, scope: !3395, file: !761, line: 300, type: !780)
!3395 = distinct !DISubprogram(name: "xicalloc", scope: !761, file: !761, line: 300, type: !3247, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3396)
!3396 = !{!3394, !3397}
!3397 = !DILocalVariable(name: "s", arg: 2, scope: !3395, file: !761, line: 300, type: !780)
!3398 = !DILocation(line: 0, scope: !3395, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 287, column: 10, scope: !3390)
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3401, file: !3136, line: 77, type: !780)
!3401 = distinct !DISubprogram(name: "icalloc", scope: !3136, file: !3136, line: 77, type: !3247, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3402)
!3402 = !{!3400, !3403}
!3403 = !DILocalVariable(name: "s", arg: 2, scope: !3401, file: !3136, line: 77, type: !780)
!3404 = !DILocation(line: 0, scope: !3401, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 302, column: 25, scope: !3395, inlinedAt: !3399)
!3406 = !DILocation(line: 91, column: 10, scope: !3401, inlinedAt: !3405)
!3407 = !DILocation(line: 0, scope: !3095, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 302, column: 10, scope: !3395, inlinedAt: !3399)
!3409 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3408)
!3410 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3408)
!3411 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3408)
!3412 = !DILocation(line: 287, column: 3, scope: !3390)
!3413 = !DILocation(line: 0, scope: !3395)
!3414 = !DILocation(line: 0, scope: !3401, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 302, column: 25, scope: !3395)
!3416 = !DILocation(line: 91, column: 10, scope: !3401, inlinedAt: !3415)
!3417 = !DILocation(line: 0, scope: !3095, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 302, column: 10, scope: !3395)
!3419 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3418)
!3420 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3418)
!3421 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3418)
!3422 = !DILocation(line: 302, column: 3, scope: !3395)
!3423 = distinct !DISubprogram(name: "xmemdup", scope: !761, file: !761, line: 310, type: !3424, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!145, !1060, !147}
!3426 = !{!3427, !3428}
!3427 = !DILocalVariable(name: "p", arg: 1, scope: !3423, file: !761, line: 310, type: !1060)
!3428 = !DILocalVariable(name: "s", arg: 2, scope: !3423, file: !761, line: 310, type: !147)
!3429 = !DILocation(line: 0, scope: !3423)
!3430 = !DILocation(line: 0, scope: !3114, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 312, column: 18, scope: !3423)
!3432 = !DILocation(line: 49, column: 25, scope: !3114, inlinedAt: !3431)
!3433 = !DILocation(line: 0, scope: !3095, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 49, column: 10, scope: !3114, inlinedAt: !3431)
!3435 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3434)
!3436 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3434)
!3437 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3434)
!3438 = !DILocalVariable(name: "__dest", arg: 1, scope: !3439, file: !1552, line: 26, type: !3442)
!3439 = distinct !DISubprogram(name: "memcpy", scope: !1552, file: !1552, line: 26, type: !3440, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3443)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!145, !3442, !1059, !147}
!3442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!3443 = !{!3438, !3444, !3445}
!3444 = !DILocalVariable(name: "__src", arg: 2, scope: !3439, file: !1552, line: 26, type: !1059)
!3445 = !DILocalVariable(name: "__len", arg: 3, scope: !3439, file: !1552, line: 26, type: !147)
!3446 = !DILocation(line: 0, scope: !3439, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 312, column: 10, scope: !3423)
!3448 = !DILocation(line: 29, column: 10, scope: !3439, inlinedAt: !3447)
!3449 = !DILocation(line: 312, column: 3, scope: !3423)
!3450 = distinct !DISubprogram(name: "ximemdup", scope: !761, file: !761, line: 316, type: !3451, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!145, !1060, !780}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "p", arg: 1, scope: !3450, file: !761, line: 316, type: !1060)
!3455 = !DILocalVariable(name: "s", arg: 2, scope: !3450, file: !761, line: 316, type: !780)
!3456 = !DILocation(line: 0, scope: !3450)
!3457 = !DILocation(line: 0, scope: !3128, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 318, column: 18, scope: !3450)
!3459 = !DILocation(line: 0, scope: !3135, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 55, column: 25, scope: !3128, inlinedAt: !3458)
!3461 = !DILocation(line: 57, column: 26, scope: !3135, inlinedAt: !3460)
!3462 = !DILocation(line: 0, scope: !3095, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 55, column: 10, scope: !3128, inlinedAt: !3458)
!3464 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3463)
!3465 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3463)
!3466 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3463)
!3467 = !DILocation(line: 0, scope: !3439, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 318, column: 10, scope: !3450)
!3469 = !DILocation(line: 29, column: 10, scope: !3439, inlinedAt: !3468)
!3470 = !DILocation(line: 318, column: 3, scope: !3450)
!3471 = distinct !DISubprogram(name: "ximemdup0", scope: !761, file: !761, line: 325, type: !3472, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!89, !1060, !780}
!3474 = !{!3475, !3476, !3477}
!3475 = !DILocalVariable(name: "p", arg: 1, scope: !3471, file: !761, line: 325, type: !1060)
!3476 = !DILocalVariable(name: "s", arg: 2, scope: !3471, file: !761, line: 325, type: !780)
!3477 = !DILocalVariable(name: "result", scope: !3471, file: !761, line: 327, type: !89)
!3478 = !DILocation(line: 0, scope: !3471)
!3479 = !DILocation(line: 327, column: 30, scope: !3471)
!3480 = !DILocation(line: 0, scope: !3128, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 327, column: 18, scope: !3471)
!3482 = !DILocation(line: 0, scope: !3135, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 55, column: 25, scope: !3128, inlinedAt: !3481)
!3484 = !DILocation(line: 57, column: 26, scope: !3135, inlinedAt: !3483)
!3485 = !DILocation(line: 0, scope: !3095, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 55, column: 10, scope: !3128, inlinedAt: !3481)
!3487 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3486)
!3488 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3486)
!3489 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3486)
!3490 = !DILocation(line: 328, column: 3, scope: !3471)
!3491 = !DILocation(line: 328, column: 13, scope: !3471)
!3492 = !DILocation(line: 0, scope: !3439, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 329, column: 10, scope: !3471)
!3494 = !DILocation(line: 29, column: 10, scope: !3439, inlinedAt: !3493)
!3495 = !DILocation(line: 329, column: 3, scope: !3471)
!3496 = distinct !DISubprogram(name: "xstrdup", scope: !761, file: !761, line: 335, type: !1038, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3497)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "string", arg: 1, scope: !3496, file: !761, line: 335, type: !96)
!3499 = !DILocation(line: 0, scope: !3496)
!3500 = !DILocation(line: 337, column: 27, scope: !3496)
!3501 = !DILocation(line: 337, column: 43, scope: !3496)
!3502 = !DILocation(line: 0, scope: !3423, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 337, column: 10, scope: !3496)
!3504 = !DILocation(line: 0, scope: !3114, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 312, column: 18, scope: !3423, inlinedAt: !3503)
!3506 = !DILocation(line: 49, column: 25, scope: !3114, inlinedAt: !3505)
!3507 = !DILocation(line: 0, scope: !3095, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 49, column: 10, scope: !3114, inlinedAt: !3505)
!3509 = !DILocation(line: 39, column: 8, scope: !3102, inlinedAt: !3508)
!3510 = !DILocation(line: 39, column: 7, scope: !3095, inlinedAt: !3508)
!3511 = !DILocation(line: 40, column: 5, scope: !3102, inlinedAt: !3508)
!3512 = !DILocation(line: 0, scope: !3439, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 312, column: 10, scope: !3423, inlinedAt: !3503)
!3514 = !DILocation(line: 29, column: 10, scope: !3439, inlinedAt: !3513)
!3515 = !DILocation(line: 337, column: 3, scope: !3496)
!3516 = distinct !DISubprogram(name: "xalloc_die", scope: !725, file: !725, line: 32, type: !470, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3517)
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "__errstatus", scope: !3519, file: !725, line: 34, type: !118)
!3519 = distinct !DILexicalBlock(scope: !3516, file: !725, line: 34, column: 3)
!3520 = !DILocation(line: 34, column: 3, scope: !3519)
!3521 = !DILocation(line: 0, scope: !3519)
!3522 = !DILocation(line: 40, column: 3, scope: !3516)
!3523 = distinct !DISubprogram(name: "xstrtol", scope: !798, file: !798, line: 71, type: !3524, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3528)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!3526, !96, !88, !72, !3527, !96}
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !801, line: 43, baseType: !800)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3541, !3542}
!3529 = !DILocalVariable(name: "nptr", arg: 1, scope: !3523, file: !798, line: 71, type: !96)
!3530 = !DILocalVariable(name: "endptr", arg: 2, scope: !3523, file: !798, line: 71, type: !88)
!3531 = !DILocalVariable(name: "base", arg: 3, scope: !3523, file: !798, line: 71, type: !72)
!3532 = !DILocalVariable(name: "val", arg: 4, scope: !3523, file: !798, line: 72, type: !3527)
!3533 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3523, file: !798, line: 72, type: !96)
!3534 = !DILocalVariable(name: "t_ptr", scope: !3523, file: !798, line: 74, type: !89)
!3535 = !DILocalVariable(name: "p", scope: !3523, file: !798, line: 75, type: !88)
!3536 = !DILocalVariable(name: "tmp", scope: !3523, file: !798, line: 91, type: !113)
!3537 = !DILocalVariable(name: "err", scope: !3523, file: !798, line: 92, type: !3526)
!3538 = !DILocalVariable(name: "xbase", scope: !3539, file: !798, line: 126, type: !72)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !798, line: 119, column: 5)
!3540 = distinct !DILexicalBlock(scope: !3523, file: !798, line: 118, column: 7)
!3541 = !DILocalVariable(name: "suffixes", scope: !3539, file: !798, line: 127, type: !72)
!3542 = !DILocalVariable(name: "overflow", scope: !3539, file: !798, line: 156, type: !3526)
!3543 = distinct !DIAssignID()
!3544 = !DILocation(line: 0, scope: !3523)
!3545 = !DILocation(line: 74, column: 3, scope: !3523)
!3546 = !DILocation(line: 75, column: 14, scope: !3523)
!3547 = !DILocation(line: 90, column: 3, scope: !3523)
!3548 = !DILocation(line: 90, column: 9, scope: !3523)
!3549 = !DILocation(line: 91, column: 20, scope: !3523)
!3550 = !DILocation(line: 94, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3523, file: !798, line: 94, column: 7)
!3552 = !DILocation(line: 94, column: 10, scope: !3551)
!3553 = !DILocation(line: 94, column: 7, scope: !3523)
!3554 = !DILocation(line: 98, column: 14, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !798, line: 98, column: 11)
!3556 = distinct !DILexicalBlock(scope: !3551, file: !798, line: 95, column: 5)
!3557 = !DILocation(line: 98, column: 29, scope: !3555)
!3558 = !DILocation(line: 98, column: 32, scope: !3555)
!3559 = !DILocation(line: 98, column: 38, scope: !3555)
!3560 = !DILocation(line: 98, column: 41, scope: !3555)
!3561 = !DILocation(line: 98, column: 11, scope: !3556)
!3562 = !DILocation(line: 102, column: 12, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3551, file: !798, line: 102, column: 12)
!3564 = !DILocation(line: 102, column: 12, scope: !3551)
!3565 = !DILocation(line: 107, column: 5, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3563, file: !798, line: 103, column: 5)
!3567 = !DILocation(line: 112, column: 8, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3523, file: !798, line: 112, column: 7)
!3569 = !DILocation(line: 112, column: 7, scope: !3523)
!3570 = !DILocation(line: 114, column: 12, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3568, file: !798, line: 113, column: 5)
!3572 = !DILocation(line: 115, column: 7, scope: !3571)
!3573 = !DILocation(line: 118, column: 7, scope: !3540)
!3574 = !DILocation(line: 118, column: 11, scope: !3540)
!3575 = !DILocation(line: 118, column: 7, scope: !3523)
!3576 = !DILocation(line: 120, column: 12, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3539, file: !798, line: 120, column: 11)
!3578 = !DILocation(line: 120, column: 11, scope: !3539)
!3579 = !DILocation(line: 122, column: 16, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3577, file: !798, line: 121, column: 9)
!3581 = !DILocation(line: 123, column: 22, scope: !3580)
!3582 = !DILocation(line: 123, column: 11, scope: !3580)
!3583 = !DILocation(line: 0, scope: !3539)
!3584 = !DILocation(line: 128, column: 7, scope: !3539)
!3585 = !DILocation(line: 140, column: 15, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !798, line: 140, column: 15)
!3587 = distinct !DILexicalBlock(scope: !3539, file: !798, line: 129, column: 9)
!3588 = !DILocation(line: 140, column: 15, scope: !3587)
!3589 = !DILocation(line: 141, column: 21, scope: !3586)
!3590 = !DILocation(line: 141, column: 13, scope: !3586)
!3591 = !DILocation(line: 144, column: 21, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !798, line: 144, column: 21)
!3593 = distinct !DILexicalBlock(scope: !3586, file: !798, line: 142, column: 15)
!3594 = !DILocation(line: 144, column: 29, scope: !3592)
!3595 = !DILocation(line: 144, column: 21, scope: !3593)
!3596 = !DILocation(line: 152, column: 17, scope: !3593)
!3597 = !DILocation(line: 157, column: 7, scope: !3539)
!3598 = !DILocalVariable(name: "err", scope: !3599, file: !798, line: 64, type: !3526)
!3599 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !798, file: !798, line: 62, type: !3600, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!3526, !3527, !72, !72}
!3602 = !{!3603, !3604, !3605, !3598}
!3603 = !DILocalVariable(name: "x", arg: 1, scope: !3599, file: !798, line: 62, type: !3527)
!3604 = !DILocalVariable(name: "base", arg: 2, scope: !3599, file: !798, line: 62, type: !72)
!3605 = !DILocalVariable(name: "power", arg: 3, scope: !3599, file: !798, line: 62, type: !72)
!3606 = !DILocation(line: 0, scope: !3599, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 219, column: 22, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3539, file: !798, line: 158, column: 9)
!3609 = !DILocalVariable(name: "x", arg: 1, scope: !3610, file: !798, line: 47, type: !3527)
!3610 = distinct !DISubprogram(name: "bkm_scale", scope: !798, file: !798, line: 47, type: !3611, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!3526, !3527, !72}
!3613 = !{!3609, !3614, !3615}
!3614 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3610, file: !798, line: 47, type: !72)
!3615 = !DILocalVariable(name: "scaled", scope: !3610, file: !798, line: 49, type: !113)
!3616 = !DILocation(line: 0, scope: !3610, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3607)
!3618 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3617)
!3619 = distinct !DILexicalBlock(scope: !3610, file: !798, line: 50, column: 7)
!3620 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3617)
!3621 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3607)
!3622 = !DILocation(line: 227, column: 11, scope: !3539)
!3623 = !DILocation(line: 0, scope: !3599, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 215, column: 22, scope: !3608)
!3625 = !DILocation(line: 0, scope: !3610, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3624)
!3627 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3626)
!3628 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3626)
!3629 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3624)
!3630 = !DILocation(line: 0, scope: !3599, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 202, column: 22, scope: !3608)
!3632 = !DILocation(line: 0, scope: !3610, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3631)
!3634 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3633)
!3635 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3633)
!3636 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3631)
!3637 = !DILocation(line: 0, scope: !3599, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 198, column: 22, scope: !3608)
!3639 = !DILocation(line: 0, scope: !3610, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3638)
!3641 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3640)
!3642 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3640)
!3643 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3638)
!3644 = !DILocation(line: 0, scope: !3599, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 194, column: 22, scope: !3608)
!3646 = !DILocation(line: 0, scope: !3610, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3645)
!3648 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3647)
!3649 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3647)
!3650 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3645)
!3651 = !DILocation(line: 0, scope: !3599, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 175, column: 22, scope: !3608)
!3653 = !DILocation(line: 0, scope: !3610, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3652)
!3655 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3654)
!3656 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3654)
!3657 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3652)
!3658 = !DILocation(line: 0, scope: !3610, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 160, column: 22, scope: !3608)
!3660 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3659)
!3661 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3659)
!3662 = !DILocation(line: 161, column: 11, scope: !3608)
!3663 = !DILocation(line: 0, scope: !3610, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 167, column: 22, scope: !3608)
!3665 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3664)
!3666 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3664)
!3667 = !DILocation(line: 168, column: 11, scope: !3608)
!3668 = !DILocation(line: 0, scope: !3599, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 180, column: 22, scope: !3608)
!3670 = !DILocation(line: 0, scope: !3610, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3669)
!3672 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3671)
!3673 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3671)
!3674 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3669)
!3675 = !DILocation(line: 0, scope: !3599, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 185, column: 22, scope: !3608)
!3677 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3676)
!3679 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3678)
!3680 = !DILocation(line: 0, scope: !3610, inlinedAt: !3678)
!3681 = !DILocation(line: 0, scope: !3599, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 190, column: 22, scope: !3608)
!3683 = !DILocation(line: 0, scope: !3610, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3682)
!3685 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3684)
!3686 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3684)
!3687 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3682)
!3688 = !DILocation(line: 0, scope: !3599, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 207, column: 22, scope: !3608)
!3690 = !DILocation(line: 0, scope: !3610, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 66, column: 12, scope: !3599, inlinedAt: !3689)
!3692 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3691)
!3693 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3691)
!3694 = !DILocation(line: 66, column: 9, scope: !3599, inlinedAt: !3689)
!3695 = !DILocation(line: 0, scope: !3610, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 211, column: 22, scope: !3608)
!3697 = !DILocation(line: 50, column: 7, scope: !3619, inlinedAt: !3696)
!3698 = !DILocation(line: 50, column: 7, scope: !3610, inlinedAt: !3696)
!3699 = !DILocation(line: 212, column: 11, scope: !3608)
!3700 = !DILocation(line: 0, scope: !3608)
!3701 = !DILocation(line: 228, column: 10, scope: !3539)
!3702 = !DILocation(line: 229, column: 11, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3539, file: !798, line: 229, column: 11)
!3704 = !DILocation(line: 229, column: 11, scope: !3539)
!3705 = !DILocation(line: 223, column: 16, scope: !3608)
!3706 = !DILocation(line: 224, column: 22, scope: !3608)
!3707 = !DILocation(line: 100, column: 11, scope: !3556)
!3708 = !DILocation(line: 92, column: 16, scope: !3523)
!3709 = !DILocation(line: 233, column: 8, scope: !3523)
!3710 = !DILocation(line: 234, column: 3, scope: !3523)
!3711 = !DILocation(line: 235, column: 1, scope: !3523)
!3712 = !DISubprogram(name: "strtol", scope: !1036, file: !1036, line: 177, type: !3713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!113, !902, !3715, !72}
!3715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3716 = distinct !DISubprogram(name: "close_stream", scope: !804, file: !804, line: 55, type: !3717, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3753)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!72, !3719}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3721)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3722)
!3722 = !{!3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3721, file: !219, line: 51, baseType: !72, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3721, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3721, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3721, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3721, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3721, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3721, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3721, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3721, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3721, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3721, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3721, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3721, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3721, file: !219, line: 70, baseType: !3737, size: 64, offset: 832)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3721, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3721, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3721, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3721, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3721, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3721, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3721, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3721, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3721, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3721, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3721, file: !219, line: 93, baseType: !3737, size: 64, offset: 1344)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3721, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3721, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3721, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3721, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3753 = !{!3754, !3755, !3757, !3758}
!3754 = !DILocalVariable(name: "stream", arg: 1, scope: !3716, file: !804, line: 55, type: !3719)
!3755 = !DILocalVariable(name: "some_pending", scope: !3716, file: !804, line: 57, type: !3756)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3757 = !DILocalVariable(name: "prev_fail", scope: !3716, file: !804, line: 58, type: !3756)
!3758 = !DILocalVariable(name: "fclose_fail", scope: !3716, file: !804, line: 59, type: !3756)
!3759 = !DILocation(line: 0, scope: !3716)
!3760 = !DILocation(line: 57, column: 30, scope: !3716)
!3761 = !DILocalVariable(name: "__stream", arg: 1, scope: !3762, file: !1178, line: 135, type: !3719)
!3762 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1178, file: !1178, line: 135, type: !3717, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3763)
!3763 = !{!3761}
!3764 = !DILocation(line: 0, scope: !3762, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 58, column: 27, scope: !3716)
!3766 = !DILocation(line: 137, column: 10, scope: !3762, inlinedAt: !3765)
!3767 = !DILocation(line: 58, column: 43, scope: !3716)
!3768 = !DILocation(line: 59, column: 29, scope: !3716)
!3769 = !DILocation(line: 59, column: 45, scope: !3716)
!3770 = !DILocation(line: 69, column: 17, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3716, file: !804, line: 69, column: 7)
!3772 = !DILocation(line: 57, column: 50, scope: !3716)
!3773 = !DILocation(line: 69, column: 33, scope: !3771)
!3774 = !DILocation(line: 69, column: 53, scope: !3771)
!3775 = !DILocation(line: 69, column: 59, scope: !3771)
!3776 = !DILocation(line: 69, column: 7, scope: !3716)
!3777 = !DILocation(line: 71, column: 11, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3771, file: !804, line: 70, column: 5)
!3779 = !DILocation(line: 72, column: 9, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3778, file: !804, line: 71, column: 11)
!3781 = !DILocation(line: 72, column: 15, scope: !3780)
!3782 = !DILocation(line: 77, column: 1, scope: !3716)
!3783 = !DISubprogram(name: "__fpending", scope: !3784, file: !3784, line: 75, type: !3785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3784 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!147, !3719}
!3787 = distinct !DISubprogram(name: "rpl_fclose", scope: !806, file: !806, line: 58, type: !3788, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3824)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!72, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3792)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3793)
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3792, file: !219, line: 51, baseType: !72, size: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3792, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3792, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3792, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3792, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3792, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3792, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3792, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3792, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3792, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3792, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3792, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3792, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3792, file: !219, line: 70, baseType: !3808, size: 64, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3792, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3792, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3792, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3792, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3792, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3792, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3792, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3792, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3792, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3792, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3792, file: !219, line: 93, baseType: !3808, size: 64, offset: 1344)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3792, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3792, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3792, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3792, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3824 = !{!3825, !3826, !3827, !3828}
!3825 = !DILocalVariable(name: "fp", arg: 1, scope: !3787, file: !806, line: 58, type: !3790)
!3826 = !DILocalVariable(name: "saved_errno", scope: !3787, file: !806, line: 60, type: !72)
!3827 = !DILocalVariable(name: "fd", scope: !3787, file: !806, line: 63, type: !72)
!3828 = !DILocalVariable(name: "result", scope: !3787, file: !806, line: 74, type: !72)
!3829 = !DILocation(line: 0, scope: !3787)
!3830 = !DILocation(line: 63, column: 12, scope: !3787)
!3831 = !DILocation(line: 64, column: 10, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3787, file: !806, line: 64, column: 7)
!3833 = !DILocation(line: 64, column: 7, scope: !3787)
!3834 = !DILocation(line: 65, column: 12, scope: !3832)
!3835 = !DILocation(line: 65, column: 5, scope: !3832)
!3836 = !DILocation(line: 70, column: 9, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3787, file: !806, line: 70, column: 7)
!3838 = !DILocation(line: 70, column: 23, scope: !3837)
!3839 = !DILocation(line: 70, column: 33, scope: !3837)
!3840 = !DILocation(line: 70, column: 26, scope: !3837)
!3841 = !DILocation(line: 70, column: 59, scope: !3837)
!3842 = !DILocation(line: 71, column: 7, scope: !3837)
!3843 = !DILocation(line: 71, column: 10, scope: !3837)
!3844 = !DILocation(line: 70, column: 7, scope: !3787)
!3845 = !DILocation(line: 100, column: 12, scope: !3787)
!3846 = !DILocation(line: 105, column: 7, scope: !3787)
!3847 = !DILocation(line: 72, column: 19, scope: !3837)
!3848 = !DILocation(line: 105, column: 19, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3787, file: !806, line: 105, column: 7)
!3850 = !DILocation(line: 107, column: 13, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3849, file: !806, line: 106, column: 5)
!3852 = !DILocation(line: 109, column: 5, scope: !3851)
!3853 = !DILocation(line: 112, column: 1, scope: !3787)
!3854 = !DISubprogram(name: "fileno", scope: !907, file: !907, line: 809, type: !3788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3855 = !DISubprogram(name: "fclose", scope: !907, file: !907, line: 178, type: !3788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3856 = !DISubprogram(name: "__freading", scope: !3784, file: !3784, line: 51, type: !3788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3857 = !DISubprogram(name: "lseek", scope: !1224, file: !1224, line: 339, type: !3858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!241, !72, !241, !72}
!3860 = distinct !DISubprogram(name: "rpl_fflush", scope: !808, file: !808, line: 130, type: !3861, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3897)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!72, !3863}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3865)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3865, file: !219, line: 51, baseType: !72, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3865, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3865, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3865, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3865, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3865, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3865, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3865, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3865, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3865, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3865, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3865, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3865, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3865, file: !219, line: 70, baseType: !3881, size: 64, offset: 832)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3865, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3865, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3865, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3865, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3865, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3865, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3865, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3865, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3865, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3865, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3865, file: !219, line: 93, baseType: !3881, size: 64, offset: 1344)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3865, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3865, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3865, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3865, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3897 = !{!3898}
!3898 = !DILocalVariable(name: "stream", arg: 1, scope: !3860, file: !808, line: 130, type: !3863)
!3899 = !DILocation(line: 0, scope: !3860)
!3900 = !DILocation(line: 151, column: 14, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3860, file: !808, line: 151, column: 7)
!3902 = !DILocation(line: 151, column: 22, scope: !3901)
!3903 = !DILocation(line: 151, column: 27, scope: !3901)
!3904 = !DILocation(line: 151, column: 7, scope: !3860)
!3905 = !DILocation(line: 152, column: 12, scope: !3901)
!3906 = !DILocation(line: 152, column: 5, scope: !3901)
!3907 = !DILocalVariable(name: "fp", arg: 1, scope: !3908, file: !808, line: 42, type: !3863)
!3908 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !808, file: !808, line: 42, type: !3909, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3911)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !3863}
!3911 = !{!3907}
!3912 = !DILocation(line: 0, scope: !3908, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 157, column: 3, scope: !3860)
!3914 = !DILocation(line: 44, column: 12, scope: !3915, inlinedAt: !3913)
!3915 = distinct !DILexicalBlock(scope: !3908, file: !808, line: 44, column: 7)
!3916 = !DILocation(line: 44, column: 19, scope: !3915, inlinedAt: !3913)
!3917 = !DILocation(line: 44, column: 7, scope: !3908, inlinedAt: !3913)
!3918 = !DILocation(line: 46, column: 5, scope: !3915, inlinedAt: !3913)
!3919 = !DILocation(line: 159, column: 10, scope: !3860)
!3920 = !DILocation(line: 159, column: 3, scope: !3860)
!3921 = !DILocation(line: 236, column: 1, scope: !3860)
!3922 = !DISubprogram(name: "fflush", scope: !907, file: !907, line: 230, type: !3861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3923 = distinct !DISubprogram(name: "rpl_fseeko", scope: !810, file: !810, line: 28, type: !3924, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3961)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!72, !3926, !3960, !72}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3928, file: !219, line: 51, baseType: !72, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3928, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3928, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3928, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3928, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3928, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3928, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3928, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3928, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3928, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3928, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3928, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3928, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3928, file: !219, line: 70, baseType: !3944, size: 64, offset: 832)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3928, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3928, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3928, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3928, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3928, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3928, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3928, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3928, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3928, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3928, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3928, file: !219, line: 93, baseType: !3944, size: 64, offset: 1344)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3928, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3928, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3928, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3928, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !907, line: 63, baseType: !241)
!3961 = !{!3962, !3963, !3964, !3965}
!3962 = !DILocalVariable(name: "fp", arg: 1, scope: !3923, file: !810, line: 28, type: !3926)
!3963 = !DILocalVariable(name: "offset", arg: 2, scope: !3923, file: !810, line: 28, type: !3960)
!3964 = !DILocalVariable(name: "whence", arg: 3, scope: !3923, file: !810, line: 28, type: !72)
!3965 = !DILocalVariable(name: "pos", scope: !3966, file: !810, line: 123, type: !3960)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !810, line: 119, column: 5)
!3967 = distinct !DILexicalBlock(scope: !3923, file: !810, line: 55, column: 7)
!3968 = !DILocation(line: 0, scope: !3923)
!3969 = !DILocation(line: 55, column: 12, scope: !3967)
!3970 = !{!1186, !841, i64 16}
!3971 = !DILocation(line: 55, column: 33, scope: !3967)
!3972 = !{!1186, !841, i64 8}
!3973 = !DILocation(line: 55, column: 25, scope: !3967)
!3974 = !DILocation(line: 56, column: 7, scope: !3967)
!3975 = !DILocation(line: 56, column: 15, scope: !3967)
!3976 = !DILocation(line: 56, column: 37, scope: !3967)
!3977 = !{!1186, !841, i64 32}
!3978 = !DILocation(line: 56, column: 29, scope: !3967)
!3979 = !DILocation(line: 57, column: 7, scope: !3967)
!3980 = !DILocation(line: 57, column: 15, scope: !3967)
!3981 = !{!1186, !841, i64 72}
!3982 = !DILocation(line: 57, column: 29, scope: !3967)
!3983 = !DILocation(line: 55, column: 7, scope: !3923)
!3984 = !DILocation(line: 123, column: 26, scope: !3966)
!3985 = !DILocation(line: 123, column: 19, scope: !3966)
!3986 = !DILocation(line: 0, scope: !3966)
!3987 = !DILocation(line: 124, column: 15, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3966, file: !810, line: 124, column: 11)
!3989 = !DILocation(line: 124, column: 11, scope: !3966)
!3990 = !DILocation(line: 135, column: 19, scope: !3966)
!3991 = !DILocation(line: 136, column: 12, scope: !3966)
!3992 = !DILocation(line: 136, column: 20, scope: !3966)
!3993 = !{!1186, !1187, i64 144}
!3994 = !DILocation(line: 167, column: 7, scope: !3966)
!3995 = !DILocation(line: 169, column: 10, scope: !3923)
!3996 = !DILocation(line: 169, column: 3, scope: !3923)
!3997 = !DILocation(line: 170, column: 1, scope: !3923)
!3998 = !DISubprogram(name: "fseeko", scope: !907, file: !907, line: 736, type: !3999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!72, !3926, !241, !72}
!4001 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !732, file: !732, line: 100, type: !4002, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !4005)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!147, !1570, !96, !147, !4004}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!4005 = !{!4006, !4007, !4008, !4009, !4010}
!4006 = !DILocalVariable(name: "pwc", arg: 1, scope: !4001, file: !732, line: 100, type: !1570)
!4007 = !DILocalVariable(name: "s", arg: 2, scope: !4001, file: !732, line: 100, type: !96)
!4008 = !DILocalVariable(name: "n", arg: 3, scope: !4001, file: !732, line: 100, type: !147)
!4009 = !DILocalVariable(name: "ps", arg: 4, scope: !4001, file: !732, line: 100, type: !4004)
!4010 = !DILocalVariable(name: "ret", scope: !4001, file: !732, line: 130, type: !147)
!4011 = !DILocation(line: 0, scope: !4001)
!4012 = !DILocation(line: 105, column: 9, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4001, file: !732, line: 105, column: 7)
!4014 = !DILocation(line: 105, column: 7, scope: !4001)
!4015 = !DILocation(line: 117, column: 10, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4001, file: !732, line: 117, column: 7)
!4017 = !DILocation(line: 117, column: 7, scope: !4001)
!4018 = !DILocation(line: 130, column: 16, scope: !4001)
!4019 = !DILocation(line: 135, column: 11, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4001, file: !732, line: 135, column: 7)
!4021 = !DILocation(line: 135, column: 25, scope: !4020)
!4022 = !DILocation(line: 135, column: 30, scope: !4020)
!4023 = !DILocation(line: 135, column: 7, scope: !4001)
!4024 = !DILocalVariable(name: "ps", arg: 1, scope: !4025, file: !1543, line: 1135, type: !4004)
!4025 = distinct !DISubprogram(name: "mbszero", scope: !1543, file: !1543, line: 1135, type: !4026, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !4028)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !4004}
!4028 = !{!4024}
!4029 = !DILocation(line: 0, scope: !4025, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 137, column: 5, scope: !4020)
!4031 = !DILocalVariable(name: "__dest", arg: 1, scope: !4032, file: !1552, line: 57, type: !145)
!4032 = distinct !DISubprogram(name: "memset", scope: !1552, file: !1552, line: 57, type: !1553, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !4033)
!4033 = !{!4031, !4034, !4035}
!4034 = !DILocalVariable(name: "__ch", arg: 2, scope: !4032, file: !1552, line: 57, type: !72)
!4035 = !DILocalVariable(name: "__len", arg: 3, scope: !4032, file: !1552, line: 57, type: !147)
!4036 = !DILocation(line: 0, scope: !4032, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 1137, column: 3, scope: !4025, inlinedAt: !4030)
!4038 = !DILocation(line: 59, column: 10, scope: !4032, inlinedAt: !4037)
!4039 = !DILocation(line: 137, column: 5, scope: !4020)
!4040 = !DILocation(line: 138, column: 11, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4001, file: !732, line: 138, column: 7)
!4042 = !DILocation(line: 138, column: 7, scope: !4001)
!4043 = !DILocation(line: 139, column: 5, scope: !4041)
!4044 = !DILocation(line: 143, column: 26, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4001, file: !732, line: 143, column: 7)
!4046 = !DILocation(line: 143, column: 41, scope: !4045)
!4047 = !DILocation(line: 143, column: 7, scope: !4001)
!4048 = !DILocation(line: 145, column: 15, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !732, line: 145, column: 11)
!4050 = distinct !DILexicalBlock(scope: !4045, file: !732, line: 144, column: 5)
!4051 = !DILocation(line: 145, column: 11, scope: !4050)
!4052 = !DILocation(line: 146, column: 32, scope: !4049)
!4053 = !DILocation(line: 146, column: 16, scope: !4049)
!4054 = !DILocation(line: 146, column: 14, scope: !4049)
!4055 = !DILocation(line: 146, column: 9, scope: !4049)
!4056 = !DILocation(line: 286, column: 1, scope: !4001)
!4057 = !DISubprogram(name: "mbsinit", scope: !4058, file: !4058, line: 293, type: !4059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4058 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!72, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!4063 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !812, file: !812, line: 27, type: !3079, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4064)
!4064 = !{!4065, !4066, !4067, !4068}
!4065 = !DILocalVariable(name: "ptr", arg: 1, scope: !4063, file: !812, line: 27, type: !145)
!4066 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4063, file: !812, line: 27, type: !147)
!4067 = !DILocalVariable(name: "size", arg: 3, scope: !4063, file: !812, line: 27, type: !147)
!4068 = !DILocalVariable(name: "nbytes", scope: !4063, file: !812, line: 29, type: !147)
!4069 = !DILocation(line: 0, scope: !4063)
!4070 = !DILocation(line: 30, column: 7, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4063, file: !812, line: 30, column: 7)
!4072 = !DILocation(line: 30, column: 7, scope: !4063)
!4073 = !DILocation(line: 32, column: 7, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4071, file: !812, line: 31, column: 5)
!4075 = !DILocation(line: 32, column: 13, scope: !4074)
!4076 = !DILocation(line: 33, column: 7, scope: !4074)
!4077 = !DILocalVariable(name: "ptr", arg: 1, scope: !4078, file: !3171, line: 2057, type: !145)
!4078 = distinct !DISubprogram(name: "rpl_realloc", scope: !3171, file: !3171, line: 2057, type: !3163, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4079)
!4079 = !{!4077, !4080}
!4080 = !DILocalVariable(name: "size", arg: 2, scope: !4078, file: !3171, line: 2057, type: !147)
!4081 = !DILocation(line: 0, scope: !4078, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 37, column: 10, scope: !4063)
!4083 = !DILocation(line: 2059, column: 24, scope: !4078, inlinedAt: !4082)
!4084 = !DILocation(line: 2059, column: 10, scope: !4078, inlinedAt: !4082)
!4085 = !DILocation(line: 37, column: 3, scope: !4063)
!4086 = !DILocation(line: 38, column: 1, scope: !4063)
!4087 = distinct !DISubprogram(name: "hard_locale", scope: !750, file: !750, line: 28, type: !1093, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4088)
!4088 = !{!4089, !4090}
!4089 = !DILocalVariable(name: "category", arg: 1, scope: !4087, file: !750, line: 28, type: !72)
!4090 = !DILocalVariable(name: "locale", scope: !4087, file: !750, line: 30, type: !4091)
!4091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4092)
!4092 = !{!4093}
!4093 = !DISubrange(count: 257)
!4094 = distinct !DIAssignID()
!4095 = !DILocation(line: 0, scope: !4087)
!4096 = !DILocation(line: 30, column: 3, scope: !4087)
!4097 = !DILocation(line: 32, column: 7, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4087, file: !750, line: 32, column: 7)
!4099 = !DILocation(line: 32, column: 7, scope: !4087)
!4100 = !DILocalVariable(name: "__s1", arg: 1, scope: !4101, file: !925, line: 1359, type: !96)
!4101 = distinct !DISubprogram(name: "streq", scope: !925, file: !925, line: 1359, type: !926, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4102)
!4102 = !{!4100, !4103}
!4103 = !DILocalVariable(name: "__s2", arg: 2, scope: !4101, file: !925, line: 1359, type: !96)
!4104 = !DILocation(line: 0, scope: !4101, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 35, column: 9, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4087, file: !750, line: 35, column: 7)
!4107 = !DILocation(line: 1361, column: 11, scope: !4101, inlinedAt: !4105)
!4108 = !DILocation(line: 35, column: 29, scope: !4106)
!4109 = !DILocation(line: 0, scope: !4101, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 35, column: 32, scope: !4106)
!4111 = !DILocation(line: 1361, column: 11, scope: !4101, inlinedAt: !4110)
!4112 = !DILocation(line: 1361, column: 10, scope: !4101, inlinedAt: !4110)
!4113 = !DILocation(line: 35, column: 7, scope: !4087)
!4114 = !DILocation(line: 46, column: 3, scope: !4087)
!4115 = !DILocation(line: 47, column: 1, scope: !4087)
!4116 = distinct !DISubprogram(name: "setlocale_null_r", scope: !818, file: !818, line: 154, type: !4117, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!72, !72, !89, !147}
!4119 = !{!4120, !4121, !4122}
!4120 = !DILocalVariable(name: "category", arg: 1, scope: !4116, file: !818, line: 154, type: !72)
!4121 = !DILocalVariable(name: "buf", arg: 2, scope: !4116, file: !818, line: 154, type: !89)
!4122 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4116, file: !818, line: 154, type: !147)
!4123 = !DILocation(line: 0, scope: !4116)
!4124 = !DILocation(line: 159, column: 10, scope: !4116)
!4125 = !DILocation(line: 159, column: 3, scope: !4116)
!4126 = distinct !DISubprogram(name: "setlocale_null", scope: !818, file: !818, line: 186, type: !4127, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!96, !72}
!4129 = !{!4130}
!4130 = !DILocalVariable(name: "category", arg: 1, scope: !4126, file: !818, line: 186, type: !72)
!4131 = !DILocation(line: 0, scope: !4126)
!4132 = !DILocation(line: 189, column: 10, scope: !4126)
!4133 = !DILocation(line: 189, column: 3, scope: !4126)
!4134 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !820, file: !820, line: 35, type: !4127, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4135)
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "category", arg: 1, scope: !4134, file: !820, line: 35, type: !72)
!4137 = !DILocalVariable(name: "result", scope: !4134, file: !820, line: 37, type: !96)
!4138 = !DILocation(line: 0, scope: !4134)
!4139 = !DILocation(line: 37, column: 24, scope: !4134)
!4140 = !DILocation(line: 62, column: 3, scope: !4134)
!4141 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !820, file: !820, line: 66, type: !4117, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4142)
!4142 = !{!4143, !4144, !4145, !4146, !4147}
!4143 = !DILocalVariable(name: "category", arg: 1, scope: !4141, file: !820, line: 66, type: !72)
!4144 = !DILocalVariable(name: "buf", arg: 2, scope: !4141, file: !820, line: 66, type: !89)
!4145 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4141, file: !820, line: 66, type: !147)
!4146 = !DILocalVariable(name: "result", scope: !4141, file: !820, line: 111, type: !96)
!4147 = !DILocalVariable(name: "length", scope: !4148, file: !820, line: 125, type: !147)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !820, line: 124, column: 5)
!4149 = distinct !DILexicalBlock(scope: !4141, file: !820, line: 113, column: 7)
!4150 = !DILocation(line: 0, scope: !4141)
!4151 = !DILocation(line: 0, scope: !4134, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 111, column: 24, scope: !4141)
!4153 = !DILocation(line: 37, column: 24, scope: !4134, inlinedAt: !4152)
!4154 = !DILocation(line: 113, column: 14, scope: !4149)
!4155 = !DILocation(line: 113, column: 7, scope: !4141)
!4156 = !DILocation(line: 116, column: 19, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !820, line: 116, column: 11)
!4158 = distinct !DILexicalBlock(scope: !4149, file: !820, line: 114, column: 5)
!4159 = !DILocation(line: 116, column: 11, scope: !4158)
!4160 = !DILocation(line: 120, column: 16, scope: !4157)
!4161 = !DILocation(line: 120, column: 9, scope: !4157)
!4162 = !DILocation(line: 125, column: 23, scope: !4148)
!4163 = !DILocation(line: 0, scope: !4148)
!4164 = !DILocation(line: 126, column: 18, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4148, file: !820, line: 126, column: 11)
!4166 = !DILocation(line: 126, column: 11, scope: !4148)
!4167 = !DILocation(line: 128, column: 39, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4165, file: !820, line: 127, column: 9)
!4169 = !DILocalVariable(name: "__dest", arg: 1, scope: !4170, file: !1552, line: 26, type: !3442)
!4170 = distinct !DISubprogram(name: "memcpy", scope: !1552, file: !1552, line: 26, type: !3440, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4171)
!4171 = !{!4169, !4172, !4173}
!4172 = !DILocalVariable(name: "__src", arg: 2, scope: !4170, file: !1552, line: 26, type: !1059)
!4173 = !DILocalVariable(name: "__len", arg: 3, scope: !4170, file: !1552, line: 26, type: !147)
!4174 = !DILocation(line: 0, scope: !4170, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 128, column: 11, scope: !4168)
!4176 = !DILocation(line: 29, column: 10, scope: !4170, inlinedAt: !4175)
!4177 = !DILocation(line: 129, column: 11, scope: !4168)
!4178 = !DILocation(line: 133, column: 23, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !820, line: 133, column: 15)
!4180 = distinct !DILexicalBlock(scope: !4165, file: !820, line: 132, column: 9)
!4181 = !DILocation(line: 133, column: 15, scope: !4180)
!4182 = !DILocation(line: 138, column: 44, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !820, line: 134, column: 13)
!4184 = !DILocation(line: 0, scope: !4170, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 138, column: 15, scope: !4183)
!4186 = !DILocation(line: 29, column: 10, scope: !4170, inlinedAt: !4185)
!4187 = !DILocation(line: 139, column: 15, scope: !4183)
!4188 = !DILocation(line: 139, column: 32, scope: !4183)
!4189 = !DILocation(line: 140, column: 13, scope: !4183)
!4190 = !DILocation(line: 0, scope: !4149)
!4191 = !DILocation(line: 145, column: 1, scope: !4141)
