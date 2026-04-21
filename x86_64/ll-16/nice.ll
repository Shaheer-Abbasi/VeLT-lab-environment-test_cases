; ModuleID = 'src/nice.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !459
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !429
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !449
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !451
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !453
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !455
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !457
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !461
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !463
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !468
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !473
@.str.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !479
@.str.1.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !481
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !483
@.str.60 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !514
@.str.1.61 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !517
@.str.2.62 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !519
@.str.3.63 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !524
@.str.4.64 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !526
@.str.5.65 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !528
@.str.6.66 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !530
@.str.7.67 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !532
@.str.8.68 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !534
@.str.9.69 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !536
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.60, ptr @.str.1.61, ptr @.str.2.62, ptr @.str.3.63, ptr @.str.4.64, ptr @.str.5.65, ptr @.str.6.66, ptr @.str.7.67, ptr @.str.8.68, ptr @.str.9.69, ptr null], align 16, !dbg !538
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !563
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !577
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !615
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !622
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !579
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !624
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !567
@.str.10.72 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !584
@.str.11.70 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !586
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !588
@.str.13.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !590
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !592
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !628
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !631
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !633
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !635
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !637
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !639
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !644
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !649
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !651
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !656
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !661
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !666
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !671
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !673
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !678
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !683
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !688
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !693
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !695
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !697
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !699
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !701
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !703
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !705
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !710
@exit_failure = dso_local global i32 1, align 4, !dbg !718
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !724
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !727
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !729
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !731
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !734
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !749

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !831, metadata !DIExpression()), !dbg !832
  %2 = icmp eq i32 %0, 0, !dbg !833
  br i1 %2, label %8, label %3, !dbg !835

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !836, !tbaa !838
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !836
  %6 = load ptr, ptr @program_name, align 8, !dbg !836, !tbaa !838
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !836
  br label %38, !dbg !836

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !842
  %10 = load ptr, ptr @program_name, align 8, !dbg !842, !tbaa !838
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !842
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !844
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef -20, i32 noundef 19) #38, !dbg !844
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !845
  %15 = load ptr, ptr @stdout, align 8, !dbg !845, !tbaa !838
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !845
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !849
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !849
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !850
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !850
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !851
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !851
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !852
  %21 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %20, ptr noundef nonnull @.str.3) #38, !dbg !852
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !853, metadata !DIExpression()), !dbg !858
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #38, !dbg !860
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #38, !dbg !860
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !861, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr poison, metadata !871, metadata !DIExpression()), !dbg !876
  tail call void @emit_bug_reporting_address() #38, !dbg !878
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !879
  call void @llvm.dbg.value(metadata ptr %24, metadata !874, metadata !DIExpression()), !dbg !876
  %25 = icmp eq ptr %24, null, !dbg !880
  br i1 %25, label %33, label %26, !dbg !882

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #39, !dbg !883
  %28 = icmp eq i32 %27, 0, !dbg !883
  br i1 %28, label %33, label %29, !dbg !884

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #38, !dbg !885
  %31 = load ptr, ptr @stdout, align 8, !dbg !885, !tbaa !838
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !885
  br label %33, !dbg !887

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !875, metadata !DIExpression()), !dbg !876
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !888
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3) #38, !dbg !888
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !889
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #38, !dbg !889
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !890
  unreachable, !dbg !890
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !891 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !895 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !901 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !904 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !193 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !197, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %0, metadata !198, metadata !DIExpression()), !dbg !908
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !909, !tbaa !910
  %3 = icmp eq i32 %2, -1, !dbg !912
  br i1 %3, label %4, label %16, !dbg !913

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.21) #38, !dbg !914
  call void @llvm.dbg.value(metadata ptr %5, metadata !199, metadata !DIExpression()), !dbg !915
  %6 = icmp eq ptr %5, null, !dbg !916
  br i1 %6, label %14, label %7, !dbg !917

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !918, !tbaa !919
  %9 = icmp eq i8 %8, 0, !dbg !918
  br i1 %9, label %14, label %10, !dbg !920

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !921, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr @.str.22, metadata !927, metadata !DIExpression()), !dbg !928
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.22) #39, !dbg !930
  %12 = icmp eq i32 %11, 0, !dbg !931
  %13 = zext i1 %12 to i32, !dbg !920
  br label %14, !dbg !920

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !932, !tbaa !910
  br label %16, !dbg !933

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !934
  %18 = icmp eq i32 %17, 0, !dbg !934
  br i1 %18, label %22, label %19, !dbg !936

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !937, !tbaa !838
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !937
  br label %128, !dbg !939

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !202, metadata !DIExpression()), !dbg !908
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.23) #39, !dbg !940
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !941
  call void @llvm.dbg.value(metadata ptr %24, metadata !203, metadata !DIExpression()), !dbg !908
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !942
  call void @llvm.dbg.value(metadata ptr %25, metadata !204, metadata !DIExpression()), !dbg !908
  %26 = icmp eq ptr %25, null, !dbg !943
  br i1 %26, label %58, label %27, !dbg !944

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !945
  br i1 %28, label %58, label %29, !dbg !946

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !205, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i64 0, metadata !209, metadata !DIExpression()), !dbg !947
  %30 = icmp ult ptr %24, %25, !dbg !948
  br i1 %30, label %31, label %52, !dbg !949

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !908
  %33 = load ptr, ptr %32, align 8, !tbaa !838
  br label %34, !dbg !949

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !205, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i64 %36, metadata !209, metadata !DIExpression()), !dbg !947
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !950
  call void @llvm.dbg.value(metadata ptr %37, metadata !205, metadata !DIExpression()), !dbg !947
  %38 = load i8, ptr %35, align 1, !dbg !950, !tbaa !919
  %39 = sext i8 %38 to i64, !dbg !950
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !950
  %41 = load i16, ptr %40, align 2, !dbg !950, !tbaa !951
  %42 = freeze i16 %41, !dbg !953
  %43 = lshr i16 %42, 13, !dbg !953
  %44 = and i16 %43, 1, !dbg !953
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !954
  call void @llvm.dbg.value(metadata i64 %46, metadata !209, metadata !DIExpression()), !dbg !947
  %47 = icmp ult ptr %37, %25, !dbg !948
  %48 = icmp ult i64 %46, 2, !dbg !955
  %49 = select i1 %47, i1 %48, i1 false, !dbg !955
  br i1 %49, label %34, label %50, !dbg !949, !llvm.loop !956

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !958
  br i1 %51, label %52, label %54, !dbg !960

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !960

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !960
  call void @llvm.dbg.value(metadata i8 %57, metadata !202, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %56, metadata !204, metadata !DIExpression()), !dbg !908
  br label %58, !dbg !961

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !908
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %60, metadata !202, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %59, metadata !204, metadata !DIExpression()), !dbg !908
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.24) #39, !dbg !962
  call void @llvm.dbg.value(metadata i64 %61, metadata !210, metadata !DIExpression()), !dbg !908
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !963
  call void @llvm.dbg.value(metadata ptr %62, metadata !211, metadata !DIExpression()), !dbg !908
  br label %63, !dbg !964

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !908
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %65, metadata !202, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %64, metadata !211, metadata !DIExpression()), !dbg !908
  %66 = load i8, ptr %64, align 1, !dbg !965, !tbaa !919
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !966

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !967
  %69 = load i8, ptr %68, align 1, !dbg !970, !tbaa !919
  %70 = icmp eq i8 %69, 45, !dbg !971
  %71 = select i1 %70, i8 0, i8 %65, !dbg !972
  br label %72, !dbg !972

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %73, metadata !202, metadata !DIExpression()), !dbg !908
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !973
  %75 = load ptr, ptr %74, align 8, !dbg !973, !tbaa !838
  %76 = sext i8 %66 to i64, !dbg !973
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !973
  %78 = load i16, ptr %77, align 2, !dbg !973, !tbaa !951
  %79 = and i16 %78, 8192, !dbg !973
  %80 = icmp eq i16 %79, 0, !dbg !973
  br i1 %80, label %96, label %81, !dbg !975

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !976
  br i1 %82, label %98, label %83, !dbg !979

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !980
  %85 = load i8, ptr %84, align 1, !dbg !980, !tbaa !919
  %86 = sext i8 %85 to i64, !dbg !980
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !980
  %88 = load i16, ptr %87, align 2, !dbg !980, !tbaa !951
  %89 = and i16 %88, 8192, !dbg !980
  %90 = icmp eq i16 %89, 0, !dbg !980
  br i1 %90, label %91, label %98, !dbg !981

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !982
  %93 = icmp ne i8 %92, 0, !dbg !982
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !984
  br i1 %95, label %96, label %98, !dbg !984

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !985
  call void @llvm.dbg.value(metadata ptr %97, metadata !211, metadata !DIExpression()), !dbg !908
  br label %63, !dbg !964, !llvm.loop !986

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !988
  %100 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !838
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !921, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !264, metadata !DIExpression()), !dbg !908
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.38, i64 noundef 6) #39, !dbg !1009
  %103 = icmp eq i32 %102, 0, !dbg !1009
  br i1 %103, label %107, label %104, !dbg !1011

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.39, i64 noundef 9) #39, !dbg !1012
  %106 = icmp eq i32 %105, 0, !dbg !1012
  br i1 %106, label %107, label %110, !dbg !1013

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1014
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #38, !dbg !1014
  br label %113, !dbg !1016

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1017
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #38, !dbg !1017
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !838
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %114), !dbg !1019
  %116 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !838
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %116), !dbg !1020
  %118 = ptrtoint ptr %64 to i64, !dbg !1021
  %119 = sub i64 %118, %99, !dbg !1021
  %120 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !838
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1021
  %122 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !838
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %122), !dbg !1022
  %124 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !838
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %124), !dbg !1023
  %126 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !838
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1024
  br label %128, !dbg !1025

128:                                              ; preds = %113, %19
  ret void, !dbg !1025
}

; Function Attrs: nounwind
declare !dbg !1026 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1030 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1034 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1036 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1039 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1042 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1045 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1048 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1054 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1055 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !85 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !91, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr %1, metadata !92, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i32 10, metadata !94, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr null, metadata !95, metadata !DIExpression()), !dbg !1061
  %4 = load ptr, ptr %1, align 8, !dbg !1062, !tbaa !838
  tail call void @set_program_name(ptr noundef %4) #38, !dbg !1063
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #38, !dbg !1064
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #38, !dbg !1065
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #38, !dbg !1066
  call void @llvm.dbg.value(metadata i32 125, metadata !1067, metadata !DIExpression()), !dbg !1070
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1072, !tbaa !910
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1074
  call void @llvm.dbg.value(metadata i32 1, metadata !100, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr null, metadata !95, metadata !DIExpression()), !dbg !1061
  %9 = icmp sgt i32 %0, 1, !dbg !1075
  br i1 %9, label %10, label %63, !dbg !1076

10:                                               ; preds = %2, %49
  %11 = phi ptr [ %51, %49 ], [ null, %2 ]
  %12 = phi i32 [ %50, %49 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata ptr %11, metadata !95, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i32 %12, metadata !100, metadata !DIExpression()), !dbg !1061
  %13 = sext i32 %12 to i64, !dbg !1077
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !1077
  %15 = load ptr, ptr %14, align 8, !dbg !1077, !tbaa !838
  call void @llvm.dbg.value(metadata ptr %15, metadata !101, metadata !DIExpression()), !dbg !1078
  %16 = load i8, ptr %15, align 1, !dbg !1079, !tbaa !919
  %17 = icmp eq i8 %16, 45, !dbg !1080
  br i1 %17, label %18, label %32, !dbg !1081

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1082
  %20 = load i8, ptr %19, align 1, !dbg !1082, !tbaa !919
  %21 = icmp eq i8 %20, 45, !dbg !1083
  %22 = icmp eq i8 %20, 43
  %23 = or i1 %21, %22, !dbg !1084
  %24 = select i1 %23, i64 2, i64 1, !dbg !1085
  %25 = getelementptr inbounds i8, ptr %15, i64 %24, !dbg !1086
  %26 = load i8, ptr %25, align 1, !dbg !1086, !tbaa !919
  %27 = sext i8 %26 to i32, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %27, metadata !1087, metadata !DIExpression()), !dbg !1093
  %28 = add nsw i32 %27, -48, !dbg !1095
  %29 = icmp ult i32 %28, 10, !dbg !1095
  br i1 %29, label %30, label %32, !dbg !1096

30:                                               ; preds = %18
  call void @llvm.dbg.value(metadata ptr %19, metadata !95, metadata !DIExpression()), !dbg !1061
  %31 = add nsw i32 %12, 1, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %31, metadata !100, metadata !DIExpression()), !dbg !1061
  br label %49, !dbg !1099

32:                                               ; preds = %18, %10
  %33 = add i32 %12, -1, !dbg !1100
  %34 = sub nsw i32 %0, %33, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %34, metadata !108, metadata !DIExpression()), !dbg !1102
  %35 = sext i32 %33 to i64, !dbg !1103
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35, !dbg !1103
  call void @llvm.dbg.value(metadata ptr %36, metadata !109, metadata !DIExpression()), !dbg !1102
  %37 = load ptr, ptr %1, align 8, !dbg !1104, !tbaa !838
  store ptr %37, ptr %36, align 8, !dbg !1105, !tbaa !838
  store i32 0, ptr @optind, align 4, !dbg !1106, !tbaa !910
  %38 = tail call i32 @getopt_long(i32 noundef %34, ptr noundef nonnull %36, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %38, metadata !105, metadata !DIExpression()), !dbg !1102
  %39 = load i32, ptr @optind, align 4, !dbg !1108, !tbaa !910
  %40 = add i32 %33, %39, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %40, metadata !100, metadata !DIExpression()), !dbg !1061
  switch i32 %38, label %46 [
    i32 110, label %47
    i32 -1, label %53
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !1110

41:                                               ; preds = %32
  tail call void @usage(i32 noundef 0) #42, !dbg !1111
  unreachable, !dbg !1111

42:                                               ; preds = %32
  %43 = load ptr, ptr @stdout, align 8, !dbg !1113, !tbaa !838
  %44 = load ptr, ptr @Version, align 8, !dbg !1113, !tbaa !838
  %45 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #38, !dbg !1113
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %44, ptr noundef %45, ptr noundef null) #38, !dbg !1113
  tail call void @exit(i32 noundef 0) #40, !dbg !1113
  unreachable, !dbg !1113

46:                                               ; preds = %32
  tail call void @usage(i32 noundef 125) #42, !dbg !1114
  unreachable, !dbg !1114

47:                                               ; preds = %32
  %48 = load ptr, ptr @optarg, align 8, !dbg !1115, !tbaa !838
  call void @llvm.dbg.value(metadata ptr %48, metadata !95, metadata !DIExpression()), !dbg !1061
  br label %49

49:                                               ; preds = %30, %47
  %50 = phi i32 [ %31, %30 ], [ %40, %47 ], !dbg !1116
  %51 = phi ptr [ %19, %30 ], [ %48, %47 ], !dbg !1061
  call void @llvm.dbg.value(metadata ptr %51, metadata !95, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i32 %50, metadata !100, metadata !DIExpression()), !dbg !1061
  %52 = icmp slt i32 %50, %0, !dbg !1075
  br i1 %52, label %10, label %53, !dbg !1076

53:                                               ; preds = %49, %32
  %54 = phi ptr [ %51, %49 ], [ %11, %32 ], !dbg !1061
  %55 = phi i32 [ %50, %49 ], [ %40, %32 ], !dbg !1117
  call void @llvm.dbg.value(metadata ptr %54, metadata !95, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i32 %55, metadata !100, metadata !DIExpression()), !dbg !1061
  %56 = icmp eq ptr %54, null, !dbg !1118
  br i1 %56, label %63, label %57, !dbg !1119

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %3, metadata !110, metadata !DIExpression(DW_OP_deref)), !dbg !1121
  %58 = call i32 @xstrtol(ptr noundef nonnull %54, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #38, !dbg !1122
  %59 = icmp ugt i32 %58, 1, !dbg !1124
  br i1 %59, label %60, label %66, !dbg !1125

60:                                               ; preds = %57
  %61 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #38, !dbg !1126
  %62 = call ptr @quote(ptr noundef nonnull %54) #38, !dbg !1126
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %61, ptr noundef %62) #38, !dbg !1126
  unreachable, !dbg !1126

63:                                               ; preds = %2, %53
  %64 = phi i32 [ %55, %53 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i32 10, metadata !94, metadata !DIExpression()), !dbg !1061
  %65 = icmp eq i32 %64, %0, !dbg !1127
  br i1 %65, label %74, label %85, !dbg !1129

66:                                               ; preds = %57
  %67 = load i64, ptr %3, align 8, !dbg !1130, !tbaa !1131
  call void @llvm.dbg.value(metadata i64 %67, metadata !110, metadata !DIExpression()), !dbg !1121
  %68 = call i64 @llvm.smin.i64(i64 %67, i64 39), !dbg !1130
  %69 = call i64 @llvm.smax.i64(i64 %68, i64 -39), !dbg !1130
  %70 = trunc i64 %69 to i32, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %70, metadata !94, metadata !DIExpression()), !dbg !1061
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1133
  %71 = icmp eq i32 %55, %0, !dbg !1127
  br i1 %71, label %72, label %85, !dbg !1129

72:                                               ; preds = %66
  %73 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1134
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %73) #38, !dbg !1134
  call void @usage(i32 noundef 125) #42, !dbg !1138
  unreachable, !dbg !1138

74:                                               ; preds = %63
  %75 = tail call ptr @__errno_location() #41, !dbg !1139
  store i32 0, ptr %75, align 4, !dbg !1140, !tbaa !910
  %76 = tail call i32 @getpriority(i32 noundef 0, i32 noundef 0) #38, !dbg !1141
  call void @llvm.dbg.value(metadata i32 %76, metadata !93, metadata !DIExpression()), !dbg !1061
  %77 = icmp eq i32 %76, -1, !dbg !1142
  br i1 %77, label %78, label %83, !dbg !1144

78:                                               ; preds = %74
  %79 = load i32, ptr %75, align 4, !dbg !1145, !tbaa !910
  %80 = icmp eq i32 %79, 0, !dbg !1146
  br i1 %80, label %83, label %81, !dbg !1147

81:                                               ; preds = %78
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1148
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %79, ptr noundef %82) #38, !dbg !1148
  unreachable, !dbg !1148

83:                                               ; preds = %78, %74
  %84 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %76) #38, !dbg !1149
  br label %121, !dbg !1150

85:                                               ; preds = %66, %63
  %86 = phi i32 [ %55, %66 ], [ %64, %63 ]
  %87 = phi i32 [ %70, %66 ], [ 10, %63 ]
  %88 = tail call ptr @__errno_location() #41, !dbg !1151
  store i32 0, ptr %88, align 4, !dbg !1152, !tbaa !910
  %89 = call i32 @getpriority(i32 noundef 0, i32 noundef 0) #38, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %89, metadata !93, metadata !DIExpression()), !dbg !1061
  %90 = icmp eq i32 %89, -1, !dbg !1154
  br i1 %90, label %91, label %96, !dbg !1156

91:                                               ; preds = %85
  %92 = load i32, ptr %88, align 4, !dbg !1157, !tbaa !910
  %93 = icmp eq i32 %92, 0, !dbg !1158
  br i1 %93, label %96, label %94, !dbg !1159

94:                                               ; preds = %91
  %95 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1160
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %92, ptr noundef %95) #38, !dbg !1160
  unreachable, !dbg !1160

96:                                               ; preds = %91, %85
  %97 = add nsw i32 %89, %87, !dbg !1161
  %98 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %97) #38, !dbg !1162
  %99 = icmp eq i32 %98, 0, !dbg !1163
  call void @llvm.dbg.value(metadata i1 %99, metadata !98, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1061
  br i1 %99, label %111, label %100, !dbg !1164

100:                                              ; preds = %96
  %101 = load i32, ptr %88, align 4, !dbg !1165, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %101, metadata !1166, metadata !DIExpression()), !dbg !1169
  %102 = icmp eq i32 %101, 13, !dbg !1171
  %103 = icmp eq i32 %101, 1, !dbg !1172
  %104 = or i1 %102, %103, !dbg !1172
  %105 = select i1 %104, i32 0, i32 125, !dbg !1165
  call void @llvm.dbg.value(metadata i32 %105, metadata !114, metadata !DIExpression()), !dbg !1173
  %106 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1165
  call void (i32, i32, ptr, ...) @error(i32 noundef %105, i32 noundef %101, ptr noundef %106) #38, !dbg !1165
  call void @llvm.assume(i1 %104), !dbg !1165
  %107 = load ptr, ptr @stderr, align 8, !dbg !1174, !tbaa !838
  call void @llvm.dbg.value(metadata ptr %107, metadata !1176, metadata !DIExpression()), !dbg !1182
  %108 = load i32, ptr %107, align 8, !dbg !1184, !tbaa !1185
  %109 = and i32 %108, 32, !dbg !1174
  %110 = icmp eq i32 %109, 0, !dbg !1174
  br i1 %110, label %111, label %121, !dbg !1187

111:                                              ; preds = %100, %96
  %112 = sext i32 %86 to i64, !dbg !1188
  %113 = getelementptr inbounds ptr, ptr %1, i64 %112, !dbg !1188
  %114 = load ptr, ptr %113, align 8, !dbg !1188, !tbaa !838
  %115 = call i32 @execvp(ptr noundef %114, ptr noundef nonnull %113) #38, !dbg !1189
  %116 = load i32, ptr %88, align 4, !dbg !1190, !tbaa !910
  %117 = icmp eq i32 %116, 2, !dbg !1191
  %118 = select i1 %117, i32 127, i32 126, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %118, metadata !119, metadata !DIExpression()), !dbg !1061
  %119 = load ptr, ptr %113, align 8, !dbg !1192, !tbaa !838
  %120 = call ptr @quote(ptr noundef %119) #38, !dbg !1192
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %116, ptr noundef nonnull @.str.19, ptr noundef %120) #38, !dbg !1192
  br label %121

121:                                              ; preds = %100, %111, %83
  %122 = phi i32 [ 0, %83 ], [ %118, %111 ], [ 125, %100 ], !dbg !1061
  ret i32 %122, !dbg !1193
}

; Function Attrs: nounwind
declare !dbg !1194 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1197 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1198 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1201 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1207 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1211 i32 @getpriority(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1219 i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind
declare !dbg !1222 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1226 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !1229
  store ptr %0, ptr @file_name, align 8, !dbg !1230, !tbaa !838
  ret void, !dbg !1231
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1232 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1236, metadata !DIExpression()), !dbg !1237
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1238, !tbaa !1239
  ret void, !dbg !1241
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1242 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1247, !tbaa !838
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1248
  %3 = icmp eq i32 %2, 0, !dbg !1249
  br i1 %3, label %22, label %4, !dbg !1250

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1251, !tbaa !1239, !range !1252, !noundef !847
  %6 = icmp eq i8 %5, 0, !dbg !1251
  br i1 %6, label %11, label %7, !dbg !1253

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1254
  %9 = load i32, ptr %8, align 4, !dbg !1254, !tbaa !910
  %10 = icmp eq i32 %9, 32, !dbg !1255
  br i1 %10, label %22, label %11, !dbg !1256

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1.29, i32 noundef 5) #38, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %12, metadata !1244, metadata !DIExpression()), !dbg !1258
  %13 = load ptr, ptr @file_name, align 8, !dbg !1259, !tbaa !838
  %14 = icmp eq ptr %13, null, !dbg !1259
  %15 = tail call ptr @__errno_location() #41, !dbg !1261
  %16 = load i32, ptr %15, align 4, !dbg !1261, !tbaa !910
  br i1 %14, label %19, label %17, !dbg !1262

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1263
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.30, ptr noundef %18, ptr noundef %12) #38, !dbg !1263
  br label %20, !dbg !1263

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.31, ptr noundef %12) #38, !dbg !1264
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1265, !tbaa !910
  tail call void @_exit(i32 noundef %21) #40, !dbg !1266
  unreachable, !dbg !1266

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1267, !tbaa !838
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1269
  %25 = icmp eq i32 %24, 0, !dbg !1270
  br i1 %25, label %28, label %26, !dbg !1271

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1272, !tbaa !910
  tail call void @_exit(i32 noundef %27) #40, !dbg !1273
  unreachable, !dbg !1273

28:                                               ; preds = %22
  ret void, !dbg !1274
}

; Function Attrs: noreturn
declare !dbg !1275 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1280, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %1, metadata !1281, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %2, metadata !1282, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %3, metadata !1283, metadata !DIExpression()), !dbg !1284
  tail call fastcc void @flush_stdout(), !dbg !1285
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1286, !tbaa !838
  %6 = icmp eq ptr %5, null, !dbg !1286
  br i1 %6, label %8, label %7, !dbg !1288

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1289
  br label %12, !dbg !1289

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1290, !tbaa !838
  %10 = tail call ptr @getprogname() #39, !dbg !1290
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %10) #38, !dbg !1290
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1292
  ret void, !dbg !1293
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1294 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1296, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1303
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1306
  %2 = icmp slt i32 %1, 0, !dbg !1307
  br i1 %2, label %6, label %3, !dbg !1308

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1309, !tbaa !838
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1309
  br label %6, !dbg !1309

6:                                                ; preds = %3, %0
  ret void, !dbg !1310
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1311 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1313, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 %1, metadata !1314, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %2, metadata !1315, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %3, metadata !1316, metadata !DIExpression()), !dbg !1317
  %6 = load ptr, ptr @stderr, align 8, !dbg !1318, !tbaa !838
  call void @llvm.dbg.value(metadata ptr %6, metadata !1319, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr %2, metadata !1359, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr %3, metadata !1360, metadata !DIExpression()), !dbg !1361
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1363
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1364, !tbaa !910
  %9 = add i32 %8, 1, !dbg !1364
  store i32 %9, ptr @error_message_count, align 4, !dbg !1364, !tbaa !910
  %10 = icmp eq i32 %1, 0, !dbg !1365
  br i1 %10, label %20, label %11, !dbg !1367

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1368, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1372, metadata !DIExpression()), !dbg !1379
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1380
  call void @llvm.dbg.value(metadata ptr %12, metadata !1371, metadata !DIExpression()), !dbg !1376
  %13 = icmp eq ptr %12, null, !dbg !1381
  br i1 %13, label %14, label %16, !dbg !1383

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.33, ptr noundef nonnull @.str.5.34, i32 noundef 5) #38, !dbg !1384
  call void @llvm.dbg.value(metadata ptr %15, metadata !1371, metadata !DIExpression()), !dbg !1376
  br label %16, !dbg !1385

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1376
  call void @llvm.dbg.value(metadata ptr %17, metadata !1371, metadata !DIExpression()), !dbg !1376
  %18 = load ptr, ptr @stderr, align 8, !dbg !1386, !tbaa !838
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.35, ptr noundef %17) #38, !dbg !1386
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1387
  br label %20, !dbg !1388

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1389, !tbaa !838
  call void @llvm.dbg.value(metadata i32 10, metadata !1390, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata ptr %21, metadata !1395, metadata !DIExpression()), !dbg !1396
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1398
  %23 = load ptr, ptr %22, align 8, !dbg !1398, !tbaa !1399
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1398
  %25 = load ptr, ptr %24, align 8, !dbg !1398, !tbaa !1400
  %26 = icmp ult ptr %23, %25, !dbg !1398
  br i1 %26, label %29, label %27, !dbg !1398, !prof !1401

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1398
  br label %31, !dbg !1398

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1398
  store ptr %30, ptr %22, align 8, !dbg !1398, !tbaa !1399
  store i8 10, ptr %23, align 1, !dbg !1398, !tbaa !919
  br label %31, !dbg !1398

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1402, !tbaa !838
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1402
  %34 = icmp eq i32 %0, 0, !dbg !1403
  br i1 %34, label %36, label %35, !dbg !1405

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1406
  unreachable, !dbg !1406

36:                                               ; preds = %31
  ret void, !dbg !1407
}

declare !dbg !1408 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1411 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1414 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1417 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1420 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1424 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1428, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %1, metadata !1429, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %2, metadata !1430, metadata !DIExpression()), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1431, metadata !DIExpression()), !dbg !1439
  call void @llvm.va_start(ptr nonnull %4), !dbg !1440
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !1441
  call void @llvm.va_end(ptr nonnull %4), !dbg !1442
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1443
  ret void, !dbg !1443
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !431 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !443, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %1, metadata !444, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %3, metadata !446, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %4, metadata !447, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %5, metadata !448, metadata !DIExpression()), !dbg !1444
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1445, !tbaa !910
  %8 = icmp eq i32 %7, 0, !dbg !1445
  br i1 %8, label %23, label %9, !dbg !1447

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1448, !tbaa !910
  %11 = icmp eq i32 %10, %3, !dbg !1451
  br i1 %11, label %12, label %22, !dbg !1452

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1453, !tbaa !838
  %14 = icmp eq ptr %13, %2, !dbg !1454
  br i1 %14, label %36, label %15, !dbg !1455

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1456
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1457
  br i1 %18, label %19, label %22, !dbg !1457

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1458
  %21 = icmp eq i32 %20, 0, !dbg !1459
  br i1 %21, label %36, label %22, !dbg !1460

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1461, !tbaa !838
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1462, !tbaa !910
  br label %23, !dbg !1463

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1464
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1465, !tbaa !838
  %25 = icmp eq ptr %24, null, !dbg !1465
  br i1 %25, label %27, label %26, !dbg !1467

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1468
  br label %31, !dbg !1468

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1469, !tbaa !838
  %29 = tail call ptr @getprogname() #39, !dbg !1469
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.38, ptr noundef %29) #38, !dbg !1469
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1471, !tbaa !838
  %33 = icmp eq ptr %2, null, !dbg !1471
  %34 = select i1 %33, ptr @.str.3.39, ptr @.str.2.40, !dbg !1471
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1471
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1472
  br label %36, !dbg !1473

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1473
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1474 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1478, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %1, metadata !1479, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata ptr %2, metadata !1480, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %3, metadata !1481, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata ptr %4, metadata !1482, metadata !DIExpression()), !dbg !1484
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1485
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1483, metadata !DIExpression()), !dbg !1486
  call void @llvm.va_start(ptr nonnull %6), !dbg !1487
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !1488
  call void @llvm.va_end(ptr nonnull %6), !dbg !1489
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1490
  ret void, !dbg !1490
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1491 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1494, !tbaa !838
  ret ptr %1, !dbg !1495
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1498, metadata !DIExpression()), !dbg !1501
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1502
  call void @llvm.dbg.value(metadata ptr %2, metadata !1499, metadata !DIExpression()), !dbg !1501
  %3 = icmp eq ptr %2, null, !dbg !1503
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1503
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1503
  call void @llvm.dbg.value(metadata ptr %5, metadata !1500, metadata !DIExpression()), !dbg !1501
  %6 = ptrtoint ptr %5 to i64, !dbg !1504
  %7 = ptrtoint ptr %0 to i64, !dbg !1504
  %8 = sub i64 %6, %7, !dbg !1504
  %9 = icmp sgt i64 %8, 6, !dbg !1506
  br i1 %9, label %10, label %19, !dbg !1507

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %11, metadata !1509, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata ptr @.str.49, metadata !1514, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i64 7, metadata !1515, metadata !DIExpression()), !dbg !1516
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.49, i64 7), !dbg !1518
  %13 = icmp eq i32 %12, 0, !dbg !1519
  br i1 %13, label %14, label %19, !dbg !1520

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1498, metadata !DIExpression()), !dbg !1501
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.50, i64 noundef 3) #39, !dbg !1521
  %16 = icmp eq i32 %15, 0, !dbg !1524
  %17 = select i1 %16, i64 3, i64 0, !dbg !1525
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1525
  br label %19, !dbg !1525

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1501
  call void @llvm.dbg.value(metadata ptr %21, metadata !1500, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata ptr %20, metadata !1498, metadata !DIExpression()), !dbg !1501
  store ptr %20, ptr @program_name, align 8, !dbg !1526, !tbaa !838
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1527, !tbaa !838
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1528, !tbaa !838
  ret void, !dbg !1529
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1530 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !485 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !492, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %1, metadata !493, metadata !DIExpression()), !dbg !1531
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1532
  call void @llvm.dbg.value(metadata ptr %5, metadata !494, metadata !DIExpression()), !dbg !1531
  %6 = icmp eq ptr %5, %0, !dbg !1533
  br i1 %6, label %7, label %14, !dbg !1535

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1536
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %4, metadata !500, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata ptr %4, metadata !1539, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata ptr %4, metadata !1548, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 0, metadata !1554, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 8, metadata !1555, metadata !DIExpression()), !dbg !1556
  store i64 0, ptr %4, align 8, !dbg !1558
  call void @llvm.dbg.value(metadata ptr %3, metadata !495, metadata !DIExpression(DW_OP_deref)), !dbg !1531
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1559
  %9 = icmp eq i64 %8, 2, !dbg !1561
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !495, metadata !DIExpression()), !dbg !1531
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1562
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1531
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1563
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1531
  ret ptr %15, !dbg !1563
}

; Function Attrs: nounwind
declare !dbg !1564 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1570 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1575, metadata !DIExpression()), !dbg !1578
  %2 = tail call ptr @__errno_location() #41, !dbg !1579
  %3 = load i32, ptr %2, align 4, !dbg !1579, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %3, metadata !1576, metadata !DIExpression()), !dbg !1578
  %4 = icmp eq ptr %0, null, !dbg !1580
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1580
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %6, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i32 %3, ptr %2, align 4, !dbg !1582, !tbaa !910
  ret ptr %6, !dbg !1583
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1584 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1590, metadata !DIExpression()), !dbg !1591
  %2 = icmp eq ptr %0, null, !dbg !1592
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1592
  %4 = load i32, ptr %3, align 8, !dbg !1593, !tbaa !1594
  ret i32 %4, !dbg !1596
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1597 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1601, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %1, metadata !1602, metadata !DIExpression()), !dbg !1603
  %3 = icmp eq ptr %0, null, !dbg !1604
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1604
  store i32 %1, ptr %4, align 8, !dbg !1605, !tbaa !1594
  ret void, !dbg !1606
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1607 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1611, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %1, metadata !1612, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i32 %2, metadata !1613, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %1, metadata !1614, metadata !DIExpression()), !dbg !1619
  %4 = icmp eq ptr %0, null, !dbg !1620
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1620
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1621
  %7 = lshr i8 %1, 5, !dbg !1622
  %8 = zext i8 %7 to i64, !dbg !1622
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1623
  call void @llvm.dbg.value(metadata ptr %9, metadata !1615, metadata !DIExpression()), !dbg !1619
  %10 = and i8 %1, 31, !dbg !1624
  %11 = zext i8 %10 to i32, !dbg !1624
  call void @llvm.dbg.value(metadata i32 %11, metadata !1617, metadata !DIExpression()), !dbg !1619
  %12 = load i32, ptr %9, align 4, !dbg !1625, !tbaa !910
  %13 = lshr i32 %12, %11, !dbg !1626
  %14 = and i32 %13, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %14, metadata !1618, metadata !DIExpression()), !dbg !1619
  %15 = xor i32 %13, %2, !dbg !1628
  %16 = and i32 %15, 1, !dbg !1628
  %17 = shl nuw i32 %16, %11, !dbg !1629
  %18 = xor i32 %17, %12, !dbg !1630
  store i32 %18, ptr %9, align 4, !dbg !1630, !tbaa !910
  ret i32 %14, !dbg !1631
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1632 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1636, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %1, metadata !1637, metadata !DIExpression()), !dbg !1639
  %3 = icmp eq ptr %0, null, !dbg !1640
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !1639
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1643
  %6 = load i32, ptr %5, align 4, !dbg !1643, !tbaa !1644
  call void @llvm.dbg.value(metadata i32 %6, metadata !1638, metadata !DIExpression()), !dbg !1639
  store i32 %1, ptr %5, align 4, !dbg !1645, !tbaa !1644
  ret i32 %6, !dbg !1646
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1647 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1651, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %1, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %2, metadata !1653, metadata !DIExpression()), !dbg !1654
  %4 = icmp eq ptr %0, null, !dbg !1655
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %5, metadata !1651, metadata !DIExpression()), !dbg !1654
  store i32 10, ptr %5, align 8, !dbg !1658, !tbaa !1594
  %6 = icmp ne ptr %1, null, !dbg !1659
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1661
  br i1 %8, label %10, label %9, !dbg !1661

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1662
  unreachable, !dbg !1662

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1663
  store ptr %1, ptr %11, align 8, !dbg !1664, !tbaa !1665
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1666
  store ptr %2, ptr %12, align 8, !dbg !1667, !tbaa !1668
  ret void, !dbg !1669
}

; Function Attrs: noreturn nounwind
declare !dbg !1670 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1671 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1675, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %1, metadata !1676, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata ptr %2, metadata !1677, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %3, metadata !1678, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata ptr %4, metadata !1679, metadata !DIExpression()), !dbg !1683
  %6 = icmp eq ptr %4, null, !dbg !1684
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %7, metadata !1680, metadata !DIExpression()), !dbg !1683
  %8 = tail call ptr @__errno_location() #41, !dbg !1685
  %9 = load i32, ptr %8, align 4, !dbg !1685, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %9, metadata !1681, metadata !DIExpression()), !dbg !1683
  %10 = load i32, ptr %7, align 8, !dbg !1686, !tbaa !1594
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1687
  %12 = load i32, ptr %11, align 4, !dbg !1687, !tbaa !1644
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1688
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1689
  %15 = load ptr, ptr %14, align 8, !dbg !1689, !tbaa !1665
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1690
  %17 = load ptr, ptr %16, align 8, !dbg !1690, !tbaa !1668
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %18, metadata !1682, metadata !DIExpression()), !dbg !1683
  store i32 %9, ptr %8, align 4, !dbg !1692, !tbaa !910
  ret i64 %18, !dbg !1693
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1694 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1700, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %1, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %2, metadata !1702, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %3, metadata !1703, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %4, metadata !1704, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %5, metadata !1705, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %6, metadata !1706, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %7, metadata !1707, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %8, metadata !1708, metadata !DIExpression()), !dbg !1762
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1763
  %17 = icmp eq i64 %16, 1, !dbg !1764
  call void @llvm.dbg.value(metadata i1 %17, metadata !1709, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1762
  call void @llvm.dbg.value(metadata i64 0, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 0, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr null, metadata !1712, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 0, metadata !1713, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1762
  %18 = trunc i32 %5 to i8, !dbg !1765
  %19 = lshr i8 %18, 1, !dbg !1765
  %20 = and i8 %19, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i8 %20, metadata !1715, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1762
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1766

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1767
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1768
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1769
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1770
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1762
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1771
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1772
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %39, metadata !1717, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %38, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %37, metadata !1715, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %36, metadata !1714, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %35, metadata !1713, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %34, metadata !1712, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %33, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 0, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %32, metadata !1703, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %31, metadata !1708, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %30, metadata !1707, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %29, metadata !1704, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.label(metadata !1755), !dbg !1773
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1762
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
  ], !dbg !1774

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 5, metadata !1704, metadata !DIExpression()), !dbg !1762
  br label %115, !dbg !1775

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1715, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 5, metadata !1704, metadata !DIExpression()), !dbg !1762
  %43 = and i8 %37, 1, !dbg !1776
  %44 = icmp eq i8 %43, 0, !dbg !1776
  br i1 %44, label %45, label %115, !dbg !1775

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1778
  br i1 %46, label %115, label %47, !dbg !1781

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1778, !tbaa !919
  br label %115, !dbg !1778

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.70, metadata !598, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i32 %29, metadata !599, metadata !DIExpression()), !dbg !1782
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.71, ptr noundef nonnull @.str.11.70, i32 noundef 5) #38, !dbg !1786
  call void @llvm.dbg.value(metadata ptr %49, metadata !600, metadata !DIExpression()), !dbg !1782
  %50 = icmp eq ptr %49, @.str.11.70, !dbg !1787
  br i1 %50, label %51, label %60, !dbg !1789

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1791
  call void @llvm.dbg.declare(metadata ptr %13, metadata !602, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata ptr %13, metadata !1793, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata ptr %13, metadata !1801, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 0, metadata !1804, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 8, metadata !1805, metadata !DIExpression()), !dbg !1806
  store i64 0, ptr %13, align 8, !dbg !1808
  call void @llvm.dbg.value(metadata ptr %12, metadata !601, metadata !DIExpression(DW_OP_deref)), !dbg !1782
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1809
  %53 = icmp eq i64 %52, 3, !dbg !1811
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !601, metadata !DIExpression()), !dbg !1782
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1812
  %57 = icmp eq i32 %29, 9, !dbg !1812
  %58 = select i1 %57, ptr @.str.10.72, ptr @.str.12.73, !dbg !1812
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1813
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1813
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1782
  call void @llvm.dbg.value(metadata ptr %61, metadata !1707, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr @.str.12.73, metadata !598, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %29, metadata !599, metadata !DIExpression()), !dbg !1814
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.71, ptr noundef nonnull @.str.12.73, i32 noundef 5) #38, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %62, metadata !600, metadata !DIExpression()), !dbg !1814
  %63 = icmp eq ptr %62, @.str.12.73, !dbg !1817
  br i1 %63, label %64, label %73, !dbg !1818

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1819
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1820
  call void @llvm.dbg.declare(metadata ptr %11, metadata !602, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %11, metadata !1793, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %11, metadata !1801, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i32 0, metadata !1804, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i64 8, metadata !1805, metadata !DIExpression()), !dbg !1824
  store i64 0, ptr %11, align 8, !dbg !1826
  call void @llvm.dbg.value(metadata ptr %10, metadata !601, metadata !DIExpression(DW_OP_deref)), !dbg !1814
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1827
  %66 = icmp eq i64 %65, 3, !dbg !1828
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !601, metadata !DIExpression()), !dbg !1814
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1829
  %70 = icmp eq i32 %29, 9, !dbg !1829
  %71 = select i1 %70, ptr @.str.10.72, ptr @.str.12.73, !dbg !1829
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1829
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1830
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1708, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %74, metadata !1707, metadata !DIExpression()), !dbg !1762
  %76 = and i8 %37, 1, !dbg !1831
  %77 = icmp eq i8 %76, 0, !dbg !1831
  br i1 %77, label %78, label %93, !dbg !1832

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1719, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1710, metadata !DIExpression()), !dbg !1762
  %79 = load i8, ptr %74, align 1, !dbg !1834, !tbaa !919
  %80 = icmp eq i8 %79, 0, !dbg !1836
  br i1 %80, label %93, label %81, !dbg !1836

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1719, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %84, metadata !1710, metadata !DIExpression()), !dbg !1762
  %85 = icmp ult i64 %84, %40, !dbg !1837
  br i1 %85, label %86, label %88, !dbg !1840

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1837
  store i8 %82, ptr %87, align 1, !dbg !1837, !tbaa !919
  br label %88, !dbg !1837

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %89, metadata !1710, metadata !DIExpression()), !dbg !1762
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %90, metadata !1719, metadata !DIExpression()), !dbg !1833
  %91 = load i8, ptr %90, align 1, !dbg !1834, !tbaa !919
  %92 = icmp eq i8 %91, 0, !dbg !1836
  br i1 %92, label %93, label %81, !dbg !1836, !llvm.loop !1842

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1844
  call void @llvm.dbg.value(metadata i64 %94, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, metadata !1714, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %75, metadata !1712, metadata !DIExpression()), !dbg !1762
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %95, metadata !1713, metadata !DIExpression()), !dbg !1762
  br label %115, !dbg !1846

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1714, metadata !DIExpression()), !dbg !1762
  br label %97, !dbg !1847

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %98, metadata !1714, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1762
  br label %99, !dbg !1848

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1770
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %101, metadata !1715, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %100, metadata !1714, metadata !DIExpression()), !dbg !1762
  %102 = and i8 %101, 1, !dbg !1849
  %103 = icmp eq i8 %102, 0, !dbg !1849
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1851
  br label %105, !dbg !1851

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1762
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %107, metadata !1715, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %106, metadata !1714, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 2, metadata !1704, metadata !DIExpression()), !dbg !1762
  %108 = and i8 %107, 1, !dbg !1852
  %109 = icmp eq i8 %108, 0, !dbg !1852
  br i1 %109, label %110, label %115, !dbg !1854

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1855
  br i1 %111, label %115, label %112, !dbg !1858

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1855, !tbaa !919
  br label %115, !dbg !1855

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1762
  br label %115, !dbg !1859

114:                                              ; preds = %28
  call void @abort() #40, !dbg !1860
  unreachable, !dbg !1860

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1844
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.72, %45 ], [ @.str.10.72, %47 ], [ @.str.10.72, %42 ], [ %34, %28 ], [ @.str.12.73, %110 ], [ @.str.12.73, %112 ], [ @.str.12.73, %105 ], [ @.str.10.72, %41 ], !dbg !1762
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1762
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1762
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %123, metadata !1715, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %122, metadata !1714, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %121, metadata !1713, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %120, metadata !1712, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %119, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %118, metadata !1708, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %117, metadata !1707, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %116, metadata !1704, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 0, metadata !1724, metadata !DIExpression()), !dbg !1861
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
  br label %138, !dbg !1862

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1844
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1767
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1771
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1772
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1863
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1864
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %145, metadata !1724, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %144, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %143, metadata !1717, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %142, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %141, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %140, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %139, metadata !1703, metadata !DIExpression()), !dbg !1762
  %147 = icmp eq i64 %139, -1, !dbg !1865
  br i1 %147, label %148, label %152, !dbg !1866

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1867
  %150 = load i8, ptr %149, align 1, !dbg !1867, !tbaa !919
  %151 = icmp eq i8 %150, 0, !dbg !1868
  br i1 %151, label %627, label %154, !dbg !1869

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1870
  br i1 %153, label %627, label %154, !dbg !1869

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1871
  br i1 %129, label %155, label %170, !dbg !1872

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1874
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1875
  br i1 %157, label %158, label %160, !dbg !1875

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %159, metadata !1703, metadata !DIExpression()), !dbg !1762
  br label %160, !dbg !1877

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1877
  call void @llvm.dbg.value(metadata i64 %161, metadata !1703, metadata !DIExpression()), !dbg !1762
  %162 = icmp ugt i64 %156, %161, !dbg !1878
  br i1 %162, label %170, label %163, !dbg !1879

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1880
  call void @llvm.dbg.value(metadata ptr %164, metadata !1881, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata ptr %120, metadata !1884, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %121, metadata !1885, metadata !DIExpression()), !dbg !1886
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1888
  %166 = icmp ne i32 %165, 0, !dbg !1889
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1890
  %168 = xor i1 %166, true, !dbg !1890
  %169 = zext i1 %168 to i8, !dbg !1890
  br i1 %167, label %170, label %688, !dbg !1890

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1871
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1871
  call void @llvm.dbg.value(metadata i8 %173, metadata !1726, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %171, metadata !1703, metadata !DIExpression()), !dbg !1762
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1891
  %175 = load i8, ptr %174, align 1, !dbg !1891, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %175, metadata !1731, metadata !DIExpression()), !dbg !1871
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
  ], !dbg !1892

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1893

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1894

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1729, metadata !DIExpression()), !dbg !1871
  %179 = and i8 %144, 1, !dbg !1898
  %180 = icmp eq i8 %179, 0, !dbg !1898
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1898
  br i1 %181, label %182, label %198, !dbg !1898

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1900
  br i1 %183, label %184, label %186, !dbg !1904

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1900
  store i8 39, ptr %185, align 1, !dbg !1900, !tbaa !919
  br label %186, !dbg !1900

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %187, metadata !1710, metadata !DIExpression()), !dbg !1762
  %188 = icmp ult i64 %187, %146, !dbg !1905
  br i1 %188, label %189, label %191, !dbg !1908

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1905
  store i8 36, ptr %190, align 1, !dbg !1905, !tbaa !919
  br label %191, !dbg !1905

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %192, metadata !1710, metadata !DIExpression()), !dbg !1762
  %193 = icmp ult i64 %192, %146, !dbg !1909
  br i1 %193, label %194, label %196, !dbg !1912

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1909
  store i8 39, ptr %195, align 1, !dbg !1909, !tbaa !919
  br label %196, !dbg !1909

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %197, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, metadata !1718, metadata !DIExpression()), !dbg !1762
  br label %198, !dbg !1913

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1762
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %200, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %199, metadata !1710, metadata !DIExpression()), !dbg !1762
  %201 = icmp ult i64 %199, %146, !dbg !1914
  br i1 %201, label %202, label %204, !dbg !1917

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1914
  store i8 92, ptr %203, align 1, !dbg !1914, !tbaa !919
  br label %204, !dbg !1914

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %205, metadata !1710, metadata !DIExpression()), !dbg !1762
  br i1 %126, label %206, label %491, !dbg !1918

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1920
  %208 = icmp ult i64 %207, %171, !dbg !1921
  br i1 %208, label %209, label %480, !dbg !1922

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1923
  %211 = load i8, ptr %210, align 1, !dbg !1923, !tbaa !919
  %212 = add i8 %211, -48, !dbg !1924
  %213 = icmp ult i8 %212, 10, !dbg !1924
  br i1 %213, label %214, label %480, !dbg !1924

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1925
  br i1 %215, label %216, label %218, !dbg !1929

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1925
  store i8 48, ptr %217, align 1, !dbg !1925, !tbaa !919
  br label %218, !dbg !1925

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %219, metadata !1710, metadata !DIExpression()), !dbg !1762
  %220 = icmp ult i64 %219, %146, !dbg !1930
  br i1 %220, label %221, label %223, !dbg !1933

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1930
  store i8 48, ptr %222, align 1, !dbg !1930, !tbaa !919
  br label %223, !dbg !1930

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %224, metadata !1710, metadata !DIExpression()), !dbg !1762
  br label %480, !dbg !1934

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1935

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1936

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1937

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1939

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1941
  %231 = icmp ult i64 %230, %171, !dbg !1942
  br i1 %231, label %232, label %480, !dbg !1943

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1944
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1945
  %235 = load i8, ptr %234, align 1, !dbg !1945, !tbaa !919
  %236 = icmp eq i8 %235, 63, !dbg !1946
  br i1 %236, label %237, label %480, !dbg !1947

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1948
  %239 = load i8, ptr %238, align 1, !dbg !1948, !tbaa !919
  %240 = sext i8 %239 to i32, !dbg !1948
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
  ], !dbg !1949

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1950

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1731, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %230, metadata !1724, metadata !DIExpression()), !dbg !1861
  %243 = icmp ult i64 %140, %146, !dbg !1952
  br i1 %243, label %244, label %246, !dbg !1955

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1952
  store i8 63, ptr %245, align 1, !dbg !1952, !tbaa !919
  br label %246, !dbg !1952

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %247, metadata !1710, metadata !DIExpression()), !dbg !1762
  %248 = icmp ult i64 %247, %146, !dbg !1956
  br i1 %248, label %249, label %251, !dbg !1959

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1956
  store i8 34, ptr %250, align 1, !dbg !1956, !tbaa !919
  br label %251, !dbg !1956

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %252, metadata !1710, metadata !DIExpression()), !dbg !1762
  %253 = icmp ult i64 %252, %146, !dbg !1960
  br i1 %253, label %254, label %256, !dbg !1963

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1960
  store i8 34, ptr %255, align 1, !dbg !1960, !tbaa !919
  br label %256, !dbg !1960

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %257, metadata !1710, metadata !DIExpression()), !dbg !1762
  %258 = icmp ult i64 %257, %146, !dbg !1964
  br i1 %258, label %259, label %261, !dbg !1967

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1964
  store i8 63, ptr %260, align 1, !dbg !1964, !tbaa !919
  br label %261, !dbg !1964

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %262, metadata !1710, metadata !DIExpression()), !dbg !1762
  br label %480, !dbg !1968

263:                                              ; preds = %170
  br label %274, !dbg !1969

264:                                              ; preds = %170
  br label %274, !dbg !1970

265:                                              ; preds = %170
  br label %272, !dbg !1971

266:                                              ; preds = %170
  br label %272, !dbg !1972

267:                                              ; preds = %170
  br label %274, !dbg !1973

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1974

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1975

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1978

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1980

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1981
  call void @llvm.dbg.label(metadata !1756), !dbg !1982
  br i1 %134, label %274, label %670, !dbg !1983

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1981
  call void @llvm.dbg.label(metadata !1758), !dbg !1985
  br i1 %125, label %535, label %491, !dbg !1986

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1987

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1988, !tbaa !919
  %279 = icmp eq i8 %278, 0, !dbg !1990
  br i1 %279, label %280, label %480, !dbg !1991

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1992
  br i1 %281, label %282, label %480, !dbg !1994

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1730, metadata !DIExpression()), !dbg !1871
  br label %283, !dbg !1995

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1871
  call void @llvm.dbg.value(metadata i8 %284, metadata !1730, metadata !DIExpression()), !dbg !1871
  br i1 %134, label %480, label %670, !dbg !1996

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, metadata !1730, metadata !DIExpression()), !dbg !1871
  br i1 %133, label %286, label %480, !dbg !1998

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1999

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2002
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2004
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2004
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %292, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %291, metadata !1711, metadata !DIExpression()), !dbg !1762
  %293 = icmp ult i64 %140, %292, !dbg !2005
  br i1 %293, label %294, label %296, !dbg !2008

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2005
  store i8 39, ptr %295, align 1, !dbg !2005, !tbaa !919
  br label %296, !dbg !2005

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %297, metadata !1710, metadata !DIExpression()), !dbg !1762
  %298 = icmp ult i64 %297, %292, !dbg !2009
  br i1 %298, label %299, label %301, !dbg !2012

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2009
  store i8 92, ptr %300, align 1, !dbg !2009, !tbaa !919
  br label %301, !dbg !2009

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %302, metadata !1710, metadata !DIExpression()), !dbg !1762
  %303 = icmp ult i64 %302, %292, !dbg !2013
  br i1 %303, label %304, label %306, !dbg !2016

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2013
  store i8 39, ptr %305, align 1, !dbg !2013, !tbaa !919
  br label %306, !dbg !2013

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %307, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1762
  br label %480, !dbg !2017

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2018

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1732, metadata !DIExpression()), !dbg !2019
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !2020
  %311 = load ptr, ptr %310, align 8, !dbg !2020, !tbaa !838
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2020
  %314 = load i16, ptr %313, align 2, !dbg !2020, !tbaa !951
  %315 = lshr i16 %314, 14, !dbg !2022
  %316 = trunc i16 %315 to i8, !dbg !2022
  %317 = and i8 %316, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i8 %317, metadata !1735, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %171, metadata !1703, metadata !DIExpression()), !dbg !1762
  %318 = icmp eq i8 %317, 0, !dbg !2023
  call void @llvm.dbg.value(metadata i1 %318, metadata !1730, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1871
  br label %368, !dbg !2024

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1736, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata ptr %14, metadata !1793, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata ptr %14, metadata !1801, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 0, metadata !1804, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 8, metadata !1805, metadata !DIExpression()), !dbg !2029
  store i64 0, ptr %14, align 8, !dbg !2031
  call void @llvm.dbg.value(metadata i64 0, metadata !1732, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !2019
  %320 = icmp eq i64 %171, -1, !dbg !2032
  br i1 %320, label %321, label %323, !dbg !2034

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %322, metadata !1703, metadata !DIExpression()), !dbg !1762
  br label %323, !dbg !2036

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1871
  call void @llvm.dbg.value(metadata i64 %324, metadata !1703, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2037
  %325 = sub i64 %324, %145, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %15, metadata !1739, metadata !DIExpression(DW_OP_deref)), !dbg !2039
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %326, metadata !1743, metadata !DIExpression()), !dbg !2039
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2041

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1732, metadata !DIExpression()), !dbg !2019
  %328 = icmp ugt i64 %324, %145, !dbg !2042
  br i1 %328, label %331, label %329, !dbg !2044

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1732, metadata !DIExpression()), !dbg !2019
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2045
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %324, metadata !1703, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i1 true, metadata !1730, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1871
  br label %368, !dbg !2024

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !2019
  br label %360, !dbg !2047

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1732, metadata !DIExpression()), !dbg !2019
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2049
  %335 = load i8, ptr %334, align 1, !dbg !2049, !tbaa !919
  %336 = icmp eq i8 %335, 0, !dbg !2044
  br i1 %336, label %363, label %337, !dbg !2050

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %338, metadata !1732, metadata !DIExpression()), !dbg !2019
  %339 = add i64 %338, %145, !dbg !2052
  %340 = icmp eq i64 %338, %325, !dbg !2042
  br i1 %340, label %363, label %331, !dbg !2044, !llvm.loop !2053

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2054
  %344 = and i1 %343, %133, !dbg !2054
  call void @llvm.dbg.value(metadata i64 1, metadata !1744, metadata !DIExpression()), !dbg !2055
  br i1 %344, label %345, label %354, !dbg !2054

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1744, metadata !DIExpression()), !dbg !2055
  %347 = add i64 %346, %145, !dbg !2056
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2058
  %349 = load i8, ptr %348, align 1, !dbg !2058, !tbaa !919
  %350 = sext i8 %349 to i32, !dbg !2058
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2059

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %352, metadata !1744, metadata !DIExpression()), !dbg !2055
  %353 = icmp eq i64 %352, %326, !dbg !2061
  br i1 %353, label %354, label %345, !dbg !2062, !llvm.loop !2063

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2065, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %355, metadata !1739, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %355, metadata !2067, metadata !DIExpression()), !dbg !2075
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !2077
  %357 = icmp ne i32 %356, 0, !dbg !2078
  %358 = zext i1 %357 to i8, !dbg !2079
  call void @llvm.dbg.value(metadata i8 %358, metadata !1735, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %326, metadata !1732, metadata !DIExpression()), !dbg !2019
  br label %363, !dbg !2080

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1732, metadata !DIExpression()), !dbg !2019
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2045
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2046
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1735, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1732, metadata !DIExpression()), !dbg !2019
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2045
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %324, metadata !1703, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i1 %361, metadata !1730, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1871
  br label %368, !dbg !2024

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1735, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %364, metadata !1732, metadata !DIExpression()), !dbg !2019
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2045
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %324, metadata !1703, metadata !DIExpression()), !dbg !1762
  %366 = icmp eq i8 %365, 0, !dbg !2023
  call void @llvm.dbg.value(metadata i1 %366, metadata !1730, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1871
  %367 = icmp ugt i64 %364, 1, !dbg !2081
  br i1 %367, label %374, label %368, !dbg !2024

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2082
  br i1 %373, label %374, label %480, !dbg !2082

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %379, metadata !1752, metadata !DIExpression()), !dbg !2084
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2085

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1762
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1863
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1861
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1871
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2086
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1871
  call void @llvm.dbg.value(metadata i8 %387, metadata !1731, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %386, metadata !1729, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %385, metadata !1726, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %384, metadata !1724, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %383, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %382, metadata !1710, metadata !DIExpression()), !dbg !1762
  br i1 %380, label %388, label %434, !dbg !2087

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2092

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1729, metadata !DIExpression()), !dbg !1871
  %390 = and i8 %383, 1, !dbg !2095
  %391 = icmp eq i8 %390, 0, !dbg !2095
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2095
  br i1 %392, label %393, label %409, !dbg !2095

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2097
  br i1 %394, label %395, label %397, !dbg !2101

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2097
  store i8 39, ptr %396, align 1, !dbg !2097, !tbaa !919
  br label %397, !dbg !2097

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %398, metadata !1710, metadata !DIExpression()), !dbg !1762
  %399 = icmp ult i64 %398, %146, !dbg !2102
  br i1 %399, label %400, label %402, !dbg !2105

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2102
  store i8 36, ptr %401, align 1, !dbg !2102, !tbaa !919
  br label %402, !dbg !2102

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %403, metadata !1710, metadata !DIExpression()), !dbg !1762
  %404 = icmp ult i64 %403, %146, !dbg !2106
  br i1 %404, label %405, label %407, !dbg !2109

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2106
  store i8 39, ptr %406, align 1, !dbg !2106, !tbaa !919
  br label %407, !dbg !2106

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %408, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, metadata !1718, metadata !DIExpression()), !dbg !1762
  br label %409, !dbg !2110

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1762
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %411, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %410, metadata !1710, metadata !DIExpression()), !dbg !1762
  %412 = icmp ult i64 %410, %146, !dbg !2111
  br i1 %412, label %413, label %415, !dbg !2114

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2111
  store i8 92, ptr %414, align 1, !dbg !2111, !tbaa !919
  br label %415, !dbg !2111

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %416, metadata !1710, metadata !DIExpression()), !dbg !1762
  %417 = icmp ult i64 %416, %146, !dbg !2115
  br i1 %417, label %418, label %422, !dbg !2118

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2115
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2115
  store i8 %420, ptr %421, align 1, !dbg !2115, !tbaa !919
  br label %422, !dbg !2115

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %423, metadata !1710, metadata !DIExpression()), !dbg !1762
  %424 = icmp ult i64 %423, %146, !dbg !2119
  br i1 %424, label %425, label %430, !dbg !2122

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2119
  %428 = or i8 %427, 48, !dbg !2119
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2119
  store i8 %428, ptr %429, align 1, !dbg !2119, !tbaa !919
  br label %430, !dbg !2119

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %431, metadata !1710, metadata !DIExpression()), !dbg !1762
  %432 = and i8 %387, 7, !dbg !2123
  %433 = or i8 %432, 48, !dbg !2124
  call void @llvm.dbg.value(metadata i8 %433, metadata !1731, metadata !DIExpression()), !dbg !1871
  br label %443, !dbg !2125

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2126
  %436 = icmp eq i8 %435, 0, !dbg !2126
  br i1 %436, label %443, label %437, !dbg !2128

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2129
  br i1 %438, label %439, label %441, !dbg !2133

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2129
  store i8 92, ptr %440, align 1, !dbg !2129, !tbaa !919
  br label %441, !dbg !2129

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %442, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1871
  br label %443, !dbg !2134

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1762
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1863
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1871
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1871
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1871
  call void @llvm.dbg.value(metadata i8 %448, metadata !1731, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %447, metadata !1729, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %446, metadata !1726, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %445, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %444, metadata !1710, metadata !DIExpression()), !dbg !1762
  %449 = add i64 %384, 1, !dbg !2135
  %450 = icmp ugt i64 %379, %449, !dbg !2137
  br i1 %450, label %451, label %478, !dbg !2138

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2139
  %453 = icmp ne i8 %452, 0, !dbg !2139
  %454 = and i8 %447, 1, !dbg !2139
  %455 = icmp eq i8 %454, 0, !dbg !2139
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2139
  br i1 %456, label %457, label %468, !dbg !2139

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2142
  br i1 %458, label %459, label %461, !dbg !2146

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2142
  store i8 39, ptr %460, align 1, !dbg !2142, !tbaa !919
  br label %461, !dbg !2142

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %462, metadata !1710, metadata !DIExpression()), !dbg !1762
  %463 = icmp ult i64 %462, %146, !dbg !2147
  br i1 %463, label %464, label %466, !dbg !2150

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2147
  store i8 39, ptr %465, align 1, !dbg !2147, !tbaa !919
  br label %466, !dbg !2147

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %467, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1762
  br label %468, !dbg !2151

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2152
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %470, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %469, metadata !1710, metadata !DIExpression()), !dbg !1762
  %471 = icmp ult i64 %469, %146, !dbg !2153
  br i1 %471, label %472, label %474, !dbg !2156

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2153
  store i8 %448, ptr %473, align 1, !dbg !2153, !tbaa !919
  br label %474, !dbg !2153

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %475, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %449, metadata !1724, metadata !DIExpression()), !dbg !1861
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2157
  %477 = load i8, ptr %476, align 1, !dbg !2157, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %477, metadata !1731, metadata !DIExpression()), !dbg !1871
  br label %381, !dbg !2158, !llvm.loop !2159

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i8 %448, metadata !1731, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %479, metadata !1730, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %447, metadata !1729, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %446, metadata !1726, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %384, metadata !1724, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %445, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %444, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %378, metadata !1703, metadata !DIExpression()), !dbg !1762
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2162
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1762
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1767
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1762
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1762
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1861
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1871
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1871
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1871
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %489, metadata !1731, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %488, metadata !1730, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %487, metadata !1729, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %173, metadata !1726, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %486, metadata !1724, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %485, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %484, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %483, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %482, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %481, metadata !1703, metadata !DIExpression()), !dbg !1762
  br i1 %127, label %502, label %491, !dbg !2163

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
  br i1 %137, label %503, label %524, !dbg !2165

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2166

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
  %514 = lshr i8 %505, 5, !dbg !2167
  %515 = zext i8 %514 to i64, !dbg !2167
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2168
  %517 = load i32, ptr %516, align 4, !dbg !2168, !tbaa !910
  %518 = and i8 %505, 31, !dbg !2169
  %519 = zext i8 %518 to i32, !dbg !2169
  %520 = shl nuw i32 1, %519, !dbg !2170
  %521 = and i32 %517, %520, !dbg !2170
  %522 = icmp eq i32 %521, 0, !dbg !2170
  %523 = and i1 %172, %522, !dbg !2171
  br i1 %523, label %573, label %535, !dbg !2171

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
  br i1 %172, label %573, label %535, !dbg !2172

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2162
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1762
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1767
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1771
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1863
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2173
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1871
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1871
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %543, metadata !1731, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %542, metadata !1730, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %541, metadata !1724, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %540, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %539, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %538, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %537, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %536, metadata !1703, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.label(metadata !1759), !dbg !2174
  br i1 %132, label %545, label %674, !dbg !2175

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1729, metadata !DIExpression()), !dbg !1871
  %546 = and i8 %540, 1, !dbg !2177
  %547 = icmp eq i8 %546, 0, !dbg !2177
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2177
  br i1 %548, label %549, label %565, !dbg !2177

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2179
  br i1 %550, label %551, label %553, !dbg !2183

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2179
  store i8 39, ptr %552, align 1, !dbg !2179, !tbaa !919
  br label %553, !dbg !2179

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %554, metadata !1710, metadata !DIExpression()), !dbg !1762
  %555 = icmp ult i64 %554, %544, !dbg !2184
  br i1 %555, label %556, label %558, !dbg !2187

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2184
  store i8 36, ptr %557, align 1, !dbg !2184, !tbaa !919
  br label %558, !dbg !2184

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %559, metadata !1710, metadata !DIExpression()), !dbg !1762
  %560 = icmp ult i64 %559, %544, !dbg !2188
  br i1 %560, label %561, label %563, !dbg !2191

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2188
  store i8 39, ptr %562, align 1, !dbg !2188, !tbaa !919
  br label %563, !dbg !2188

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %564, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, metadata !1718, metadata !DIExpression()), !dbg !1762
  br label %565, !dbg !2192

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1871
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %567, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %566, metadata !1710, metadata !DIExpression()), !dbg !1762
  %568 = icmp ult i64 %566, %544, !dbg !2193
  br i1 %568, label %569, label %571, !dbg !2196

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2193
  store i8 92, ptr %570, align 1, !dbg !2193, !tbaa !919
  br label %571, !dbg !2193

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %544, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %543, metadata !1731, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %542, metadata !1730, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 1, metadata !1729, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %541, metadata !1724, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %567, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %539, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %538, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %572, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %536, metadata !1703, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.label(metadata !1760), !dbg !2197
  br label %600, !dbg !2198

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2162
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1762
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1767
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1771
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1863
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2173
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1871
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1871
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2201
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %582, metadata !1731, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %581, metadata !1730, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %580, metadata !1729, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %579, metadata !1724, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %578, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %577, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %576, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %575, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %574, metadata !1703, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.label(metadata !1760), !dbg !2197
  %584 = and i8 %578, 1, !dbg !2198
  %585 = icmp ne i8 %584, 0, !dbg !2198
  %586 = and i8 %580, 1, !dbg !2198
  %587 = icmp eq i8 %586, 0, !dbg !2198
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2198
  br i1 %588, label %589, label %600, !dbg !2198

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2202
  br i1 %590, label %591, label %593, !dbg !2206

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2202
  store i8 39, ptr %592, align 1, !dbg !2202, !tbaa !919
  br label %593, !dbg !2202

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %594, metadata !1710, metadata !DIExpression()), !dbg !1762
  %595 = icmp ult i64 %594, %583, !dbg !2207
  br i1 %595, label %596, label %598, !dbg !2210

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2207
  store i8 39, ptr %597, align 1, !dbg !2207, !tbaa !919
  br label %598, !dbg !2207

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %599, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1762
  br label %600, !dbg !2211

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1871
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %609, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %608, metadata !1710, metadata !DIExpression()), !dbg !1762
  %610 = icmp ult i64 %608, %601, !dbg !2212
  br i1 %610, label %611, label %613, !dbg !2215

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2212
  store i8 %602, ptr %612, align 1, !dbg !2212, !tbaa !919
  br label %613, !dbg !2212

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %614, metadata !1710, metadata !DIExpression()), !dbg !1762
  %615 = icmp eq i8 %603, 0, !dbg !2216
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2218
  call void @llvm.dbg.value(metadata i8 %616, metadata !1717, metadata !DIExpression()), !dbg !1762
  br label %617, !dbg !2219

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2162
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1762
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1767
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1771
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1772
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1863
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2173
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %624, metadata !1724, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 %623, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %622, metadata !1717, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %621, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %620, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %619, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %618, metadata !1703, metadata !DIExpression()), !dbg !1762
  %626 = add i64 %624, 1, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %626, metadata !1724, metadata !DIExpression()), !dbg !1861
  br label %138, !dbg !2221, !llvm.loop !2222

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1701, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %143, metadata !1717, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %142, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %141, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %140, metadata !1710, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %139, metadata !1703, metadata !DIExpression()), !dbg !1762
  %628 = icmp eq i64 %140, 0, !dbg !2224
  %629 = and i1 %133, %628, !dbg !2226
  %630 = xor i1 %629, true, !dbg !2226
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2226
  br i1 %631, label %632, label %670, !dbg !2226

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2227
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2227
  br i1 %636, label %637, label %646, !dbg !2227

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2229
  %639 = icmp eq i8 %638, 0, !dbg !2229
  br i1 %639, label %642, label %640, !dbg !2232

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2233
  br label %694, !dbg !2234

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2235
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2237
  br i1 %645, label %28, label %646, !dbg !2237

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2238
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2240
  br i1 %649, label %650, label %665, !dbg !2240

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1712, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %140, metadata !1710, metadata !DIExpression()), !dbg !1762
  %651 = load i8, ptr %120, align 1, !dbg !2241, !tbaa !919
  %652 = icmp eq i8 %651, 0, !dbg !2244
  br i1 %652, label %665, label %653, !dbg !2244

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1712, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %656, metadata !1710, metadata !DIExpression()), !dbg !1762
  %657 = icmp ult i64 %656, %146, !dbg !2245
  br i1 %657, label %658, label %660, !dbg !2248

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2245
  store i8 %654, ptr %659, align 1, !dbg !2245, !tbaa !919
  br label %660, !dbg !2245

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %661, metadata !1710, metadata !DIExpression()), !dbg !1762
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2249
  call void @llvm.dbg.value(metadata ptr %662, metadata !1712, metadata !DIExpression()), !dbg !1762
  %663 = load i8, ptr %662, align 1, !dbg !2241, !tbaa !919
  %664 = icmp eq i8 %663, 0, !dbg !2244
  br i1 %664, label %665, label %653, !dbg !2244, !llvm.loop !2250

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1844
  call void @llvm.dbg.value(metadata i64 %666, metadata !1710, metadata !DIExpression()), !dbg !1762
  %667 = icmp ult i64 %666, %146, !dbg !2252
  br i1 %667, label %668, label %694, !dbg !2254

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2255
  store i8 0, ptr %669, align 1, !dbg !2256, !tbaa !919
  br label %694, !dbg !2255

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1761), !dbg !2257
  %672 = icmp eq i8 %124, 0, !dbg !2258
  %673 = select i1 %672, i32 2, i32 4, !dbg !2258
  br label %684, !dbg !2258

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2258
  %678 = select i1 %677, i32 2, i32 4, !dbg !2258
  br label %679, !dbg !2260

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1761), !dbg !2257
  %683 = icmp eq i32 %116, 2, !dbg !2260
  br i1 %683, label %684, label %688, !dbg !2258

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2258

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1704, metadata !DIExpression()), !dbg !1762
  %692 = and i32 %5, -3, !dbg !2261
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2262
  br label %694, !dbg !2263

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2264
}

; Function Attrs: nounwind
declare !dbg !2265 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2268 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2271 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2273 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2277, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %1, metadata !2278, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata ptr %2, metadata !2279, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata ptr %0, metadata !2281, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %1, metadata !2286, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata ptr null, metadata !2287, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata ptr %2, metadata !2288, metadata !DIExpression()), !dbg !2294
  %4 = icmp eq ptr %2, null, !dbg !2296
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %5, metadata !2289, metadata !DIExpression()), !dbg !2294
  %6 = tail call ptr @__errno_location() #41, !dbg !2297
  %7 = load i32, ptr %6, align 4, !dbg !2297, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %7, metadata !2290, metadata !DIExpression()), !dbg !2294
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2298
  %9 = load i32, ptr %8, align 4, !dbg !2298, !tbaa !1644
  %10 = or i32 %9, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i32 %10, metadata !2291, metadata !DIExpression()), !dbg !2294
  %11 = load i32, ptr %5, align 8, !dbg !2300, !tbaa !1594
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2301
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2302
  %14 = load ptr, ptr %13, align 8, !dbg !2302, !tbaa !1665
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2303
  %16 = load ptr, ptr %15, align 8, !dbg !2303, !tbaa !1668
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2304
  %18 = add i64 %17, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %18, metadata !2292, metadata !DIExpression()), !dbg !2294
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2306
  call void @llvm.dbg.value(metadata ptr %19, metadata !2293, metadata !DIExpression()), !dbg !2294
  %20 = load i32, ptr %5, align 8, !dbg !2307, !tbaa !1594
  %21 = load ptr, ptr %13, align 8, !dbg !2308, !tbaa !1665
  %22 = load ptr, ptr %15, align 8, !dbg !2309, !tbaa !1668
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2310
  store i32 %7, ptr %6, align 4, !dbg !2311, !tbaa !910
  ret ptr %19, !dbg !2312
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2282 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2281, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i64 %1, metadata !2286, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata ptr %2, metadata !2287, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata ptr %3, metadata !2288, metadata !DIExpression()), !dbg !2313
  %5 = icmp eq ptr %3, null, !dbg !2314
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %6, metadata !2289, metadata !DIExpression()), !dbg !2313
  %7 = tail call ptr @__errno_location() #41, !dbg !2315
  %8 = load i32, ptr %7, align 4, !dbg !2315, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %8, metadata !2290, metadata !DIExpression()), !dbg !2313
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2316
  %10 = load i32, ptr %9, align 4, !dbg !2316, !tbaa !1644
  %11 = icmp eq ptr %2, null, !dbg !2317
  %12 = zext i1 %11 to i32, !dbg !2317
  %13 = or i32 %10, %12, !dbg !2318
  call void @llvm.dbg.value(metadata i32 %13, metadata !2291, metadata !DIExpression()), !dbg !2313
  %14 = load i32, ptr %6, align 8, !dbg !2319, !tbaa !1594
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2320
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2321
  %17 = load ptr, ptr %16, align 8, !dbg !2321, !tbaa !1665
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2322
  %19 = load ptr, ptr %18, align 8, !dbg !2322, !tbaa !1668
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2323
  %21 = add i64 %20, 1, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %21, metadata !2292, metadata !DIExpression()), !dbg !2313
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2325
  call void @llvm.dbg.value(metadata ptr %22, metadata !2293, metadata !DIExpression()), !dbg !2313
  %23 = load i32, ptr %6, align 8, !dbg !2326, !tbaa !1594
  %24 = load ptr, ptr %16, align 8, !dbg !2327, !tbaa !1665
  %25 = load ptr, ptr %18, align 8, !dbg !2328, !tbaa !1668
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2329
  store i32 %8, ptr %7, align 4, !dbg !2330, !tbaa !910
  br i1 %11, label %28, label %27, !dbg !2331

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2332, !tbaa !1131
  br label %28, !dbg !2334

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2335
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2336 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2341, !tbaa !838
  call void @llvm.dbg.value(metadata ptr %1, metadata !2338, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 1, metadata !2339, metadata !DIExpression()), !dbg !2343
  %2 = load i32, ptr @nslots, align 4, !tbaa !910
  call void @llvm.dbg.value(metadata i32 1, metadata !2339, metadata !DIExpression()), !dbg !2343
  %3 = icmp sgt i32 %2, 1, !dbg !2344
  br i1 %3, label %4, label %6, !dbg !2346

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2344
  br label %10, !dbg !2346

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2347
  %8 = load ptr, ptr %7, align 8, !dbg !2347, !tbaa !2349
  %9 = icmp eq ptr %8, @slot0, !dbg !2351
  br i1 %9, label %17, label %16, !dbg !2352

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2339, metadata !DIExpression()), !dbg !2343
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2353
  %13 = load ptr, ptr %12, align 8, !dbg !2353, !tbaa !2349
  tail call void @free(ptr noundef %13) #38, !dbg !2354
  %14 = add nuw nsw i64 %11, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %14, metadata !2339, metadata !DIExpression()), !dbg !2343
  %15 = icmp eq i64 %14, %5, !dbg !2344
  br i1 %15, label %6, label %10, !dbg !2346, !llvm.loop !2356

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2358
  store i64 256, ptr @slotvec0, align 8, !dbg !2360, !tbaa !2361
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2362, !tbaa !2349
  br label %17, !dbg !2363

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2364
  br i1 %18, label %20, label %19, !dbg !2366

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2367
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2369, !tbaa !838
  br label %20, !dbg !2370

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2371, !tbaa !910
  ret void, !dbg !2372
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2373 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2378, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata ptr %1, metadata !2379, metadata !DIExpression()), !dbg !2380
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2381
  ret ptr %3, !dbg !2382
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2383 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata ptr %1, metadata !2388, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %2, metadata !2389, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata ptr %3, metadata !2390, metadata !DIExpression()), !dbg !2403
  %6 = tail call ptr @__errno_location() #41, !dbg !2404
  %7 = load i32, ptr %6, align 4, !dbg !2404, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %7, metadata !2391, metadata !DIExpression()), !dbg !2403
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2405, !tbaa !838
  call void @llvm.dbg.value(metadata ptr %8, metadata !2392, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2393, metadata !DIExpression()), !dbg !2403
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2406
  br i1 %9, label %10, label %11, !dbg !2406

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2408
  unreachable, !dbg !2408

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2409, !tbaa !910
  %13 = icmp sgt i32 %12, %0, !dbg !2410
  br i1 %13, label %32, label %14, !dbg !2411

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2412
  call void @llvm.dbg.value(metadata i1 %15, metadata !2394, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2413
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2414
  %16 = sext i32 %12 to i64, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %16, metadata !2397, metadata !DIExpression()), !dbg !2413
  store i64 %16, ptr %5, align 8, !dbg !2416, !tbaa !1131
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2417
  %18 = add nuw nsw i32 %0, 1, !dbg !2418
  %19 = sub i32 %18, %12, !dbg !2419
  %20 = sext i32 %19 to i64, !dbg !2420
  call void @llvm.dbg.value(metadata ptr %5, metadata !2397, metadata !DIExpression(DW_OP_deref)), !dbg !2413
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2421
  call void @llvm.dbg.value(metadata ptr %21, metadata !2392, metadata !DIExpression()), !dbg !2403
  store ptr %21, ptr @slotvec, align 8, !dbg !2422, !tbaa !838
  br i1 %15, label %22, label %23, !dbg !2423

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2424, !tbaa.struct !2426
  br label %23, !dbg !2427

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2428, !tbaa !910
  %25 = sext i32 %24 to i64, !dbg !2429
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2429
  %27 = load i64, ptr %5, align 8, !dbg !2430, !tbaa !1131
  call void @llvm.dbg.value(metadata i64 %27, metadata !2397, metadata !DIExpression()), !dbg !2413
  %28 = sub nsw i64 %27, %25, !dbg !2431
  %29 = shl i64 %28, 4, !dbg !2432
  call void @llvm.dbg.value(metadata ptr %26, metadata !1801, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 0, metadata !1804, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %29, metadata !1805, metadata !DIExpression()), !dbg !2433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2435
  %30 = load i64, ptr %5, align 8, !dbg !2436, !tbaa !1131
  call void @llvm.dbg.value(metadata i64 %30, metadata !2397, metadata !DIExpression()), !dbg !2413
  %31 = trunc i64 %30 to i32, !dbg !2436
  store i32 %31, ptr @nslots, align 4, !dbg !2437, !tbaa !910
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2438
  br label %32, !dbg !2439

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2403
  call void @llvm.dbg.value(metadata ptr %33, metadata !2392, metadata !DIExpression()), !dbg !2403
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2440
  %36 = load i64, ptr %35, align 8, !dbg !2441, !tbaa !2361
  call void @llvm.dbg.value(metadata i64 %36, metadata !2398, metadata !DIExpression()), !dbg !2442
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2443
  %38 = load ptr, ptr %37, align 8, !dbg !2443, !tbaa !2349
  call void @llvm.dbg.value(metadata ptr %38, metadata !2400, metadata !DIExpression()), !dbg !2442
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2444
  %40 = load i32, ptr %39, align 4, !dbg !2444, !tbaa !1644
  %41 = or i32 %40, 1, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %41, metadata !2401, metadata !DIExpression()), !dbg !2442
  %42 = load i32, ptr %3, align 8, !dbg !2446, !tbaa !1594
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2447
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2448
  %45 = load ptr, ptr %44, align 8, !dbg !2448, !tbaa !1665
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2449
  %47 = load ptr, ptr %46, align 8, !dbg !2449, !tbaa !1668
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2450
  call void @llvm.dbg.value(metadata i64 %48, metadata !2402, metadata !DIExpression()), !dbg !2442
  %49 = icmp ugt i64 %36, %48, !dbg !2451
  br i1 %49, label %60, label %50, !dbg !2453

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %51, metadata !2398, metadata !DIExpression()), !dbg !2442
  store i64 %51, ptr %35, align 8, !dbg !2456, !tbaa !2361
  %52 = icmp eq ptr %38, @slot0, !dbg !2457
  br i1 %52, label %54, label %53, !dbg !2459

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2460
  br label %54, !dbg !2460

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2461
  call void @llvm.dbg.value(metadata ptr %55, metadata !2400, metadata !DIExpression()), !dbg !2442
  store ptr %55, ptr %37, align 8, !dbg !2462, !tbaa !2349
  %56 = load i32, ptr %3, align 8, !dbg !2463, !tbaa !1594
  %57 = load ptr, ptr %44, align 8, !dbg !2464, !tbaa !1665
  %58 = load ptr, ptr %46, align 8, !dbg !2465, !tbaa !1668
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2466
  br label %60, !dbg !2467

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2442
  call void @llvm.dbg.value(metadata ptr %61, metadata !2400, metadata !DIExpression()), !dbg !2442
  store i32 %7, ptr %6, align 4, !dbg !2468, !tbaa !910
  ret ptr %61, !dbg !2469
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata ptr %1, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %2, metadata !2476, metadata !DIExpression()), !dbg !2477
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2478
  ret ptr %4, !dbg !2479
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2480 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2482, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i32 0, metadata !2378, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata ptr %0, metadata !2379, metadata !DIExpression()), !dbg !2484
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2486
  ret ptr %2, !dbg !2487
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2488 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2492, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %1, metadata !2493, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 0, metadata !2474, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata ptr %0, metadata !2475, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()), !dbg !2495
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2497
  ret ptr %3, !dbg !2498
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2499 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %1, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata ptr %2, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2506, metadata !DIExpression()), !dbg !2509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510), !dbg !2513
  call void @llvm.dbg.value(metadata i32 %1, metadata !2514, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2522, !alias.scope !2510
  %5 = icmp eq i32 %1, 10, !dbg !2523
  br i1 %5, label %6, label %7, !dbg !2525

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2526, !noalias !2510
  unreachable, !dbg !2526

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2527, !tbaa !1594, !alias.scope !2510
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2528
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2529
  ret ptr %8, !dbg !2530
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2531 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2535, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 %1, metadata !2536, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata ptr %2, metadata !2537, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 %3, metadata !2538, metadata !DIExpression()), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2541
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2539, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2543), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %1, metadata !2514, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2519, metadata !DIExpression()), !dbg !2549
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2549, !alias.scope !2543
  %6 = icmp eq i32 %1, 10, !dbg !2550
  br i1 %6, label %7, label %8, !dbg !2551

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2552, !noalias !2543
  unreachable, !dbg !2552

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2553, !tbaa !1594, !alias.scope !2543
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2554
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2555
  ret ptr %9, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2557 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2561, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %1, metadata !2562, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 0, metadata !2503, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 %0, metadata !2504, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %1, metadata !2505, metadata !DIExpression()), !dbg !2564
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2566
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2506, metadata !DIExpression()), !dbg !2567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2568), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %0, metadata !2514, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2519, metadata !DIExpression()), !dbg !2574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2574, !alias.scope !2568
  %4 = icmp eq i32 %0, 10, !dbg !2575
  br i1 %4, label %5, label %6, !dbg !2576

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2577, !noalias !2568
  unreachable, !dbg !2577

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2578, !tbaa !1594, !alias.scope !2568
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2579
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2580
  ret ptr %7, !dbg !2581
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2582 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata ptr %1, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %2, metadata !2588, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 %0, metadata !2536, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata ptr %1, metadata !2537, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i64 %2, metadata !2538, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2592
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2539, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2594), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %0, metadata !2514, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2519, metadata !DIExpression()), !dbg !2600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2600, !alias.scope !2594
  %5 = icmp eq i32 %0, 10, !dbg !2601
  br i1 %5, label %6, label %7, !dbg !2602

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2603, !noalias !2594
  unreachable, !dbg !2603

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2604, !tbaa !1594, !alias.scope !2594
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2605
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2606
  ret ptr %8, !dbg !2607
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2608 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2612, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %1, metadata !2613, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 %2, metadata !2614, metadata !DIExpression()), !dbg !2616
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2617
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2615, metadata !DIExpression()), !dbg !2618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2619, !tbaa.struct !2620
  call void @llvm.dbg.value(metadata ptr %4, metadata !1611, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 %2, metadata !1612, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 1, metadata !1613, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 %2, metadata !1614, metadata !DIExpression()), !dbg !2621
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2623
  %6 = lshr i8 %2, 5, !dbg !2624
  %7 = zext i8 %6 to i64, !dbg !2624
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %8, metadata !1615, metadata !DIExpression()), !dbg !2621
  %9 = and i8 %2, 31, !dbg !2626
  %10 = zext i8 %9 to i32, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %10, metadata !1617, metadata !DIExpression()), !dbg !2621
  %11 = load i32, ptr %8, align 4, !dbg !2627, !tbaa !910
  %12 = lshr i32 %11, %10, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %12, metadata !1618, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2621
  %13 = and i32 %12, 1, !dbg !2629
  %14 = xor i32 %13, 1, !dbg !2629
  %15 = shl nuw i32 %14, %10, !dbg !2630
  %16 = xor i32 %15, %11, !dbg !2631
  store i32 %16, ptr %8, align 4, !dbg !2631, !tbaa !910
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2632
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2633
  ret ptr %17, !dbg !2634
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2635 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 %1, metadata !2640, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %0, metadata !2612, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 -1, metadata !2613, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 %1, metadata !2614, metadata !DIExpression()), !dbg !2642
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2644
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2615, metadata !DIExpression()), !dbg !2645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2646, !tbaa.struct !2620
  call void @llvm.dbg.value(metadata ptr %3, metadata !1611, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %1, metadata !1612, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 1, metadata !1613, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %1, metadata !1614, metadata !DIExpression()), !dbg !2647
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2649
  %5 = lshr i8 %1, 5, !dbg !2650
  %6 = zext i8 %5 to i64, !dbg !2650
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2651
  call void @llvm.dbg.value(metadata ptr %7, metadata !1615, metadata !DIExpression()), !dbg !2647
  %8 = and i8 %1, 31, !dbg !2652
  %9 = zext i8 %8 to i32, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %9, metadata !1617, metadata !DIExpression()), !dbg !2647
  %10 = load i32, ptr %7, align 4, !dbg !2653, !tbaa !910
  %11 = lshr i32 %10, %9, !dbg !2654
  call void @llvm.dbg.value(metadata i32 %11, metadata !1618, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2647
  %12 = and i32 %11, 1, !dbg !2655
  %13 = xor i32 %12, 1, !dbg !2655
  %14 = shl nuw i32 %13, %9, !dbg !2656
  %15 = xor i32 %14, %10, !dbg !2657
  store i32 %15, ptr %7, align 4, !dbg !2657, !tbaa !910
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2658
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2659
  ret ptr %16, !dbg !2660
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2661 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 58, metadata !2640, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %0, metadata !2612, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 -1, metadata !2613, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8 58, metadata !2614, metadata !DIExpression()), !dbg !2667
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2669
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2615, metadata !DIExpression()), !dbg !2670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2671, !tbaa.struct !2620
  call void @llvm.dbg.value(metadata ptr %2, metadata !1611, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 58, metadata !1612, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 1, metadata !1613, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 58, metadata !1614, metadata !DIExpression()), !dbg !2672
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %3, metadata !1615, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 26, metadata !1617, metadata !DIExpression()), !dbg !2672
  %4 = load i32, ptr %3, align 4, !dbg !2675, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %4, metadata !1618, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2672
  %5 = or i32 %4, 67108864, !dbg !2676
  store i32 %5, ptr %3, align 4, !dbg !2676, !tbaa !910
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2677
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2678
  ret ptr %6, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2680 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %1, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %0, metadata !2612, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i64 %1, metadata !2613, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 58, metadata !2614, metadata !DIExpression()), !dbg !2685
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2615, metadata !DIExpression()), !dbg !2688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2689, !tbaa.struct !2620
  call void @llvm.dbg.value(metadata ptr %3, metadata !1611, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 58, metadata !1612, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 1, metadata !1613, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 58, metadata !1614, metadata !DIExpression()), !dbg !2690
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2692
  call void @llvm.dbg.value(metadata ptr %4, metadata !1615, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 26, metadata !1617, metadata !DIExpression()), !dbg !2690
  %5 = load i32, ptr %4, align 4, !dbg !2693, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %5, metadata !1618, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2690
  %6 = or i32 %5, 67108864, !dbg !2694
  store i32 %6, ptr %4, align 4, !dbg !2694, !tbaa !910
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2695
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2696
  ret ptr %7, !dbg !2697
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2698 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2519, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2704
  call void @llvm.dbg.value(metadata i32 %0, metadata !2700, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 %1, metadata !2701, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %2, metadata !2702, metadata !DIExpression()), !dbg !2706
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2707
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2703, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 %1, metadata !2514, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 0, metadata !2519, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2709
  %5 = icmp eq i32 %1, 10, !dbg !2710
  br i1 %5, label %6, label %7, !dbg !2711

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2712, !noalias !2713
  unreachable, !dbg !2712

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2519, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2709
  store i32 %1, ptr %4, align 8, !dbg !2716, !tbaa.struct !2620
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2716
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %4, metadata !1611, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8 58, metadata !1612, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 1, metadata !1613, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8 58, metadata !1614, metadata !DIExpression()), !dbg !2717
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2719
  call void @llvm.dbg.value(metadata ptr %9, metadata !1615, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 26, metadata !1617, metadata !DIExpression()), !dbg !2717
  %10 = load i32, ptr %9, align 4, !dbg !2720, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %10, metadata !1618, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2717
  %11 = or i32 %10, 67108864, !dbg !2721
  store i32 %11, ptr %9, align 4, !dbg !2721, !tbaa !910
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2722
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2723
  ret ptr %12, !dbg !2724
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2725 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2729, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %1, metadata !2730, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %2, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %3, metadata !2732, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %0, metadata !2734, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %1, metadata !2739, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %2, metadata !2740, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %3, metadata !2741, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 -1, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2746
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2743, metadata !DIExpression()), !dbg !2747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2748, !tbaa.struct !2620
  call void @llvm.dbg.value(metadata ptr %5, metadata !1651, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %1, metadata !1652, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %2, metadata !1653, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %5, metadata !1651, metadata !DIExpression()), !dbg !2749
  store i32 10, ptr %5, align 8, !dbg !2751, !tbaa !1594
  %6 = icmp ne ptr %1, null, !dbg !2752
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2753
  br i1 %8, label %10, label %9, !dbg !2753

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2754
  unreachable, !dbg !2754

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2755
  store ptr %1, ptr %11, align 8, !dbg !2756, !tbaa !1665
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2757
  store ptr %2, ptr %12, align 8, !dbg !2758, !tbaa !1668
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2759
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2760
  ret ptr %13, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2735 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2734, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %1, metadata !2739, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %2, metadata !2740, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata ptr %3, metadata !2741, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %4, metadata !2742, metadata !DIExpression()), !dbg !2762
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2763
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2743, metadata !DIExpression()), !dbg !2764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2765, !tbaa.struct !2620
  call void @llvm.dbg.value(metadata ptr %6, metadata !1651, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %1, metadata !1652, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %2, metadata !1653, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %6, metadata !1651, metadata !DIExpression()), !dbg !2766
  store i32 10, ptr %6, align 8, !dbg !2768, !tbaa !1594
  %7 = icmp ne ptr %1, null, !dbg !2769
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2770
  br i1 %9, label %11, label %10, !dbg !2770

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2771
  unreachable, !dbg !2771

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2772
  store ptr %1, ptr %12, align 8, !dbg !2773, !tbaa !1665
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2774
  store ptr %2, ptr %13, align 8, !dbg !2775, !tbaa !1668
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2776
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2777
  ret ptr %14, !dbg !2778
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2779 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata ptr %1, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata ptr %2, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 0, metadata !2729, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %0, metadata !2730, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %1, metadata !2731, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %2, metadata !2732, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 0, metadata !2734, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %1, metadata !2740, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %2, metadata !2741, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 -1, metadata !2742, metadata !DIExpression()), !dbg !2789
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2791
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2743, metadata !DIExpression()), !dbg !2792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2793, !tbaa.struct !2620
  call void @llvm.dbg.value(metadata ptr %4, metadata !1651, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %0, metadata !1652, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %1, metadata !1653, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %4, metadata !1651, metadata !DIExpression()), !dbg !2794
  store i32 10, ptr %4, align 8, !dbg !2796, !tbaa !1594
  %5 = icmp ne ptr %0, null, !dbg !2797
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2798
  br i1 %7, label %9, label %8, !dbg !2798

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2799
  unreachable, !dbg !2799

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2800
  store ptr %0, ptr %10, align 8, !dbg !2801, !tbaa !1665
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2802
  store ptr %1, ptr %11, align 8, !dbg !2803, !tbaa !1668
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2804
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2805
  ret ptr %12, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2807 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2811, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %1, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %3, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2734, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %1, metadata !2740, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %2, metadata !2741, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %3, metadata !2742, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2743, metadata !DIExpression()), !dbg !2819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2820, !tbaa.struct !2620
  call void @llvm.dbg.value(metadata ptr %5, metadata !1651, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %0, metadata !1652, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %1, metadata !1653, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %5, metadata !1651, metadata !DIExpression()), !dbg !2821
  store i32 10, ptr %5, align 8, !dbg !2823, !tbaa !1594
  %6 = icmp ne ptr %0, null, !dbg !2824
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2825
  br i1 %8, label %10, label %9, !dbg !2825

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2826
  unreachable, !dbg !2826

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2827
  store ptr %0, ptr %11, align 8, !dbg !2828, !tbaa !1665
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2829
  store ptr %1, ptr %12, align 8, !dbg !2830, !tbaa !1668
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2831
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2832
  ret ptr %13, !dbg !2833
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %1, metadata !2839, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 %2, metadata !2840, metadata !DIExpression()), !dbg !2841
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2842
  ret ptr %4, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2844 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %1, metadata !2849, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i64 %1, metadata !2840, metadata !DIExpression()), !dbg !2851
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2853
  ret ptr %3, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2855 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2859, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %1, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %1, metadata !2839, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 -1, metadata !2840, metadata !DIExpression()), !dbg !2862
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2864
  ret ptr %3, !dbg !2865
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2866 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2870, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 0, metadata !2859, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %0, metadata !2860, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 -1, metadata !2840, metadata !DIExpression()), !dbg !2874
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2876
  ret ptr %2, !dbg !2877
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2878 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2917, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %1, metadata !2918, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %2, metadata !2919, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %3, metadata !2920, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 %5, metadata !2922, metadata !DIExpression()), !dbg !2923
  %7 = icmp eq ptr %1, null, !dbg !2924
  br i1 %7, label %10, label %8, !dbg !2926

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !2927
  br label %12, !dbg !2927

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %2, ptr noundef %3) #38, !dbg !2928
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.3.81, i32 noundef 5) #38, !dbg !2929
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !2929
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2930
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.5.83, i32 noundef 5) #38, !dbg !2931
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.84) #38, !dbg !2931
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2932
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
  ], !dbg !2933

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.7.85, i32 noundef 5) #38, !dbg !2934
  %21 = load ptr, ptr %4, align 8, !dbg !2934, !tbaa !838
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !2934
  br label %147, !dbg !2936

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.8.86, i32 noundef 5) #38, !dbg !2937
  %25 = load ptr, ptr %4, align 8, !dbg !2937, !tbaa !838
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2937
  %27 = load ptr, ptr %26, align 8, !dbg !2937, !tbaa !838
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !2937
  br label %147, !dbg !2938

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.9.87, i32 noundef 5) #38, !dbg !2939
  %31 = load ptr, ptr %4, align 8, !dbg !2939, !tbaa !838
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2939
  %33 = load ptr, ptr %32, align 8, !dbg !2939, !tbaa !838
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2939
  %35 = load ptr, ptr %34, align 8, !dbg !2939, !tbaa !838
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !2939
  br label %147, !dbg !2940

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.10.88, i32 noundef 5) #38, !dbg !2941
  %39 = load ptr, ptr %4, align 8, !dbg !2941, !tbaa !838
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2941
  %41 = load ptr, ptr %40, align 8, !dbg !2941, !tbaa !838
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2941
  %43 = load ptr, ptr %42, align 8, !dbg !2941, !tbaa !838
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2941
  %45 = load ptr, ptr %44, align 8, !dbg !2941, !tbaa !838
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !2941
  br label %147, !dbg !2942

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.11.89, i32 noundef 5) #38, !dbg !2943
  %49 = load ptr, ptr %4, align 8, !dbg !2943, !tbaa !838
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2943
  %51 = load ptr, ptr %50, align 8, !dbg !2943, !tbaa !838
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2943
  %53 = load ptr, ptr %52, align 8, !dbg !2943, !tbaa !838
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2943
  %55 = load ptr, ptr %54, align 8, !dbg !2943, !tbaa !838
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2943
  %57 = load ptr, ptr %56, align 8, !dbg !2943, !tbaa !838
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !2943
  br label %147, !dbg !2944

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.12.90, i32 noundef 5) #38, !dbg !2945
  %61 = load ptr, ptr %4, align 8, !dbg !2945, !tbaa !838
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2945
  %63 = load ptr, ptr %62, align 8, !dbg !2945, !tbaa !838
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2945
  %65 = load ptr, ptr %64, align 8, !dbg !2945, !tbaa !838
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2945
  %67 = load ptr, ptr %66, align 8, !dbg !2945, !tbaa !838
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2945
  %69 = load ptr, ptr %68, align 8, !dbg !2945, !tbaa !838
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2945
  %71 = load ptr, ptr %70, align 8, !dbg !2945, !tbaa !838
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !2945
  br label %147, !dbg !2946

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.13.91, i32 noundef 5) #38, !dbg !2947
  %75 = load ptr, ptr %4, align 8, !dbg !2947, !tbaa !838
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2947
  %77 = load ptr, ptr %76, align 8, !dbg !2947, !tbaa !838
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2947
  %79 = load ptr, ptr %78, align 8, !dbg !2947, !tbaa !838
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2947
  %81 = load ptr, ptr %80, align 8, !dbg !2947, !tbaa !838
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2947
  %83 = load ptr, ptr %82, align 8, !dbg !2947, !tbaa !838
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2947
  %85 = load ptr, ptr %84, align 8, !dbg !2947, !tbaa !838
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2947
  %87 = load ptr, ptr %86, align 8, !dbg !2947, !tbaa !838
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !2947
  br label %147, !dbg !2948

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.14.92, i32 noundef 5) #38, !dbg !2949
  %91 = load ptr, ptr %4, align 8, !dbg !2949, !tbaa !838
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2949
  %93 = load ptr, ptr %92, align 8, !dbg !2949, !tbaa !838
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2949
  %95 = load ptr, ptr %94, align 8, !dbg !2949, !tbaa !838
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2949
  %97 = load ptr, ptr %96, align 8, !dbg !2949, !tbaa !838
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2949
  %99 = load ptr, ptr %98, align 8, !dbg !2949, !tbaa !838
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2949
  %101 = load ptr, ptr %100, align 8, !dbg !2949, !tbaa !838
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2949
  %103 = load ptr, ptr %102, align 8, !dbg !2949, !tbaa !838
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2949
  %105 = load ptr, ptr %104, align 8, !dbg !2949, !tbaa !838
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !2949
  br label %147, !dbg !2950

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.15.93, i32 noundef 5) #38, !dbg !2951
  %109 = load ptr, ptr %4, align 8, !dbg !2951, !tbaa !838
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2951
  %111 = load ptr, ptr %110, align 8, !dbg !2951, !tbaa !838
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2951
  %113 = load ptr, ptr %112, align 8, !dbg !2951, !tbaa !838
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2951
  %115 = load ptr, ptr %114, align 8, !dbg !2951, !tbaa !838
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2951
  %117 = load ptr, ptr %116, align 8, !dbg !2951, !tbaa !838
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2951
  %119 = load ptr, ptr %118, align 8, !dbg !2951, !tbaa !838
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2951
  %121 = load ptr, ptr %120, align 8, !dbg !2951, !tbaa !838
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2951
  %123 = load ptr, ptr %122, align 8, !dbg !2951, !tbaa !838
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2951
  %125 = load ptr, ptr %124, align 8, !dbg !2951, !tbaa !838
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !2951
  br label %147, !dbg !2952

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.16.94, i32 noundef 5) #38, !dbg !2953
  %129 = load ptr, ptr %4, align 8, !dbg !2953, !tbaa !838
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2953
  %131 = load ptr, ptr %130, align 8, !dbg !2953, !tbaa !838
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2953
  %133 = load ptr, ptr %132, align 8, !dbg !2953, !tbaa !838
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2953
  %135 = load ptr, ptr %134, align 8, !dbg !2953, !tbaa !838
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2953
  %137 = load ptr, ptr %136, align 8, !dbg !2953, !tbaa !838
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2953
  %139 = load ptr, ptr %138, align 8, !dbg !2953, !tbaa !838
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2953
  %141 = load ptr, ptr %140, align 8, !dbg !2953, !tbaa !838
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2953
  %143 = load ptr, ptr %142, align 8, !dbg !2953, !tbaa !838
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2953
  %145 = load ptr, ptr %144, align 8, !dbg !2953, !tbaa !838
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !2953
  br label %147, !dbg !2954

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2955
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2956 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2960, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %1, metadata !2961, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %2, metadata !2962, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %3, metadata !2963, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %4, metadata !2964, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 0, metadata !2965, metadata !DIExpression()), !dbg !2966
  br label %6, !dbg !2967

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2969
  call void @llvm.dbg.value(metadata i64 %7, metadata !2965, metadata !DIExpression()), !dbg !2966
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2970
  %9 = load ptr, ptr %8, align 8, !dbg !2970, !tbaa !838
  %10 = icmp eq ptr %9, null, !dbg !2972
  %11 = add i64 %7, 1, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %11, metadata !2965, metadata !DIExpression()), !dbg !2966
  br i1 %10, label %12, label %6, !dbg !2972, !llvm.loop !2974

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2976
  ret void, !dbg !2977
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2978 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2990, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %1, metadata !2991, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %2, metadata !2992, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %4, metadata !2994, metadata !DIExpression()), !dbg !2998
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !2999
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2996, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 0, metadata !2995, metadata !DIExpression()), !dbg !2998
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2995, metadata !DIExpression()), !dbg !2998
  %10 = icmp ult i32 %9, 41, !dbg !3001
  br i1 %10, label %11, label %16, !dbg !3001

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3001
  %13 = zext i32 %9 to i64, !dbg !3001
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3001
  %15 = add nuw nsw i32 %9, 8, !dbg !3001
  store i32 %15, ptr %4, align 8, !dbg !3001
  br label %19, !dbg !3001

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3001
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3001
  store ptr %18, ptr %7, align 8, !dbg !3001
  br label %19, !dbg !3001

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3001
  %22 = load ptr, ptr %21, align 8, !dbg !3001
  store ptr %22, ptr %6, align 16, !dbg !3004, !tbaa !838
  %23 = icmp eq ptr %22, null, !dbg !3005
  br i1 %23, label %128, label %24, !dbg !3006

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 1, metadata !2995, metadata !DIExpression()), !dbg !2998
  %25 = icmp ult i32 %20, 41, !dbg !3001
  br i1 %25, label %29, label %26, !dbg !3001

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3001
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3001
  store ptr %28, ptr %7, align 8, !dbg !3001
  br label %34, !dbg !3001

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3001
  %31 = zext i32 %20 to i64, !dbg !3001
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3001
  %33 = add nuw nsw i32 %20, 8, !dbg !3001
  store i32 %33, ptr %4, align 8, !dbg !3001
  br label %34, !dbg !3001

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3001
  %37 = load ptr, ptr %36, align 8, !dbg !3001
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3007
  store ptr %37, ptr %38, align 8, !dbg !3004, !tbaa !838
  %39 = icmp eq ptr %37, null, !dbg !3005
  br i1 %39, label %128, label %40, !dbg !3006

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 2, metadata !2995, metadata !DIExpression()), !dbg !2998
  %41 = icmp ult i32 %35, 41, !dbg !3001
  br i1 %41, label %45, label %42, !dbg !3001

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3001
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3001
  store ptr %44, ptr %7, align 8, !dbg !3001
  br label %50, !dbg !3001

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3001
  %47 = zext i32 %35 to i64, !dbg !3001
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3001
  %49 = add nuw nsw i32 %35, 8, !dbg !3001
  store i32 %49, ptr %4, align 8, !dbg !3001
  br label %50, !dbg !3001

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3001
  %53 = load ptr, ptr %52, align 8, !dbg !3001
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3007
  store ptr %53, ptr %54, align 16, !dbg !3004, !tbaa !838
  %55 = icmp eq ptr %53, null, !dbg !3005
  br i1 %55, label %128, label %56, !dbg !3006

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 3, metadata !2995, metadata !DIExpression()), !dbg !2998
  %57 = icmp ult i32 %51, 41, !dbg !3001
  br i1 %57, label %61, label %58, !dbg !3001

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3001
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3001
  store ptr %60, ptr %7, align 8, !dbg !3001
  br label %66, !dbg !3001

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3001
  %63 = zext i32 %51 to i64, !dbg !3001
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3001
  %65 = add nuw nsw i32 %51, 8, !dbg !3001
  store i32 %65, ptr %4, align 8, !dbg !3001
  br label %66, !dbg !3001

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3001
  %69 = load ptr, ptr %68, align 8, !dbg !3001
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3007
  store ptr %69, ptr %70, align 8, !dbg !3004, !tbaa !838
  %71 = icmp eq ptr %69, null, !dbg !3005
  br i1 %71, label %128, label %72, !dbg !3006

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 4, metadata !2995, metadata !DIExpression()), !dbg !2998
  %73 = icmp ult i32 %67, 41, !dbg !3001
  br i1 %73, label %77, label %74, !dbg !3001

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3001
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3001
  store ptr %76, ptr %7, align 8, !dbg !3001
  br label %82, !dbg !3001

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3001
  %79 = zext i32 %67 to i64, !dbg !3001
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3001
  %81 = add nuw nsw i32 %67, 8, !dbg !3001
  store i32 %81, ptr %4, align 8, !dbg !3001
  br label %82, !dbg !3001

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3001
  %85 = load ptr, ptr %84, align 8, !dbg !3001
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3007
  store ptr %85, ptr %86, align 16, !dbg !3004, !tbaa !838
  %87 = icmp eq ptr %85, null, !dbg !3005
  br i1 %87, label %128, label %88, !dbg !3006

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 5, metadata !2995, metadata !DIExpression()), !dbg !2998
  %89 = icmp ult i32 %83, 41, !dbg !3001
  br i1 %89, label %93, label %90, !dbg !3001

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3001
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3001
  store ptr %92, ptr %7, align 8, !dbg !3001
  br label %98, !dbg !3001

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3001
  %95 = zext i32 %83 to i64, !dbg !3001
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3001
  %97 = add nuw nsw i32 %83, 8, !dbg !3001
  store i32 %97, ptr %4, align 8, !dbg !3001
  br label %98, !dbg !3001

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3001
  %100 = load ptr, ptr %99, align 8, !dbg !3001
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3007
  store ptr %100, ptr %101, align 8, !dbg !3004, !tbaa !838
  %102 = icmp eq ptr %100, null, !dbg !3005
  br i1 %102, label %128, label %103, !dbg !3006

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2995, metadata !DIExpression()), !dbg !2998
  %104 = load ptr, ptr %7, align 8, !dbg !3001
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3001
  store ptr %105, ptr %7, align 8, !dbg !3001
  %106 = load ptr, ptr %104, align 8, !dbg !3001
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3007
  store ptr %106, ptr %107, align 16, !dbg !3004, !tbaa !838
  %108 = icmp eq ptr %106, null, !dbg !3005
  br i1 %108, label %128, label %109, !dbg !3006

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2995, metadata !DIExpression()), !dbg !2998
  %110 = load ptr, ptr %7, align 8, !dbg !3001
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3001
  store ptr %111, ptr %7, align 8, !dbg !3001
  %112 = load ptr, ptr %110, align 8, !dbg !3001
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3007
  store ptr %112, ptr %113, align 8, !dbg !3004, !tbaa !838
  %114 = icmp eq ptr %112, null, !dbg !3005
  br i1 %114, label %128, label %115, !dbg !3006

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2995, metadata !DIExpression()), !dbg !2998
  %116 = load ptr, ptr %7, align 8, !dbg !3001
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3001
  store ptr %117, ptr %7, align 8, !dbg !3001
  %118 = load ptr, ptr %116, align 8, !dbg !3001
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3007
  store ptr %118, ptr %119, align 16, !dbg !3004, !tbaa !838
  %120 = icmp eq ptr %118, null, !dbg !3005
  br i1 %120, label %128, label %121, !dbg !3006

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2995, metadata !DIExpression()), !dbg !2998
  %122 = load ptr, ptr %7, align 8, !dbg !3001
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3001
  store ptr %123, ptr %7, align 8, !dbg !3001
  %124 = load ptr, ptr %122, align 8, !dbg !3001
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3007
  store ptr %124, ptr %125, align 8, !dbg !3004, !tbaa !838
  %126 = icmp eq ptr %124, null, !dbg !3005
  %127 = select i1 %126, i64 9, i64 10, !dbg !3006
  br label %128, !dbg !3006

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3008
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3009
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3010
  ret void, !dbg !3010
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3011 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %1, metadata !3016, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %2, metadata !3017, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %3, metadata !3018, metadata !DIExpression()), !dbg !3024
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3025
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3019, metadata !DIExpression()), !dbg !3026
  call void @llvm.va_start(ptr nonnull %5), !dbg !3027
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3028
  call void @llvm.va_end(ptr nonnull %5), !dbg !3029
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3030
  ret void, !dbg !3030
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3031 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3032, !tbaa !838
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %1), !dbg !3032
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.17.99, i32 noundef 5) #38, !dbg !3033
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.100) #38, !dbg !3033
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.19.101, i32 noundef 5) #38, !dbg !3034
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.102, ptr noundef nonnull @.str.21.103) #38, !dbg !3034
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.22.104, i32 noundef 5) #38, !dbg !3035
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.105) #38, !dbg !3035
  ret void, !dbg !3036
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3037 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %2, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3049, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %2, metadata !3050, metadata !DIExpression()), !dbg !3051
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3053
  call void @llvm.dbg.value(metadata ptr %4, metadata !3054, metadata !DIExpression()), !dbg !3059
  %5 = icmp eq ptr %4, null, !dbg !3061
  br i1 %5, label %6, label %7, !dbg !3063

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3064
  unreachable, !dbg !3064

7:                                                ; preds = %3
  ret ptr %4, !dbg !3065
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3047 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %1, metadata !3049, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %2, metadata !3050, metadata !DIExpression()), !dbg !3066
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %4, metadata !3054, metadata !DIExpression()), !dbg !3068
  %5 = icmp eq ptr %4, null, !dbg !3070
  br i1 %5, label %6, label %7, !dbg !3071

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3072
  unreachable, !dbg !3072

7:                                                ; preds = %3
  ret ptr %4, !dbg !3073
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3074 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3078, metadata !DIExpression()), !dbg !3079
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3080
  call void @llvm.dbg.value(metadata ptr %2, metadata !3054, metadata !DIExpression()), !dbg !3081
  %3 = icmp eq ptr %2, null, !dbg !3083
  br i1 %3, label %4, label %5, !dbg !3084

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3085
  unreachable, !dbg !3085

5:                                                ; preds = %1
  ret ptr %2, !dbg !3086
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3087 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3088 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %0, metadata !3094, metadata !DIExpression()), !dbg !3098
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %2, metadata !3054, metadata !DIExpression()), !dbg !3101
  %3 = icmp eq ptr %2, null, !dbg !3103
  br i1 %3, label %4, label %5, !dbg !3104

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3105
  unreachable, !dbg !3105

5:                                                ; preds = %1
  ret ptr %2, !dbg !3106
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3107 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3111, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %0, metadata !3078, metadata !DIExpression()), !dbg !3113
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %2, metadata !3054, metadata !DIExpression()), !dbg !3116
  %3 = icmp eq ptr %2, null, !dbg !3118
  br i1 %3, label %4, label %5, !dbg !3119

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3120
  unreachable, !dbg !3120

5:                                                ; preds = %1
  ret ptr %2, !dbg !3121
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3122 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3134
  %3 = icmp eq i64 %1, 0, !dbg !3136
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3136
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3137
  call void @llvm.dbg.value(metadata ptr %5, metadata !3054, metadata !DIExpression()), !dbg !3138
  %6 = icmp eq ptr %5, null, !dbg !3140
  br i1 %6, label %7, label %8, !dbg !3141

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3142
  unreachable, !dbg !3142

8:                                                ; preds = %2
  ret ptr %5, !dbg !3143
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3144 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3145 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3149, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %0, metadata !3152, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %1, metadata !3155, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3158
  %3 = icmp eq i64 %1, 0, !dbg !3160
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3160
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3161
  call void @llvm.dbg.value(metadata ptr %5, metadata !3054, metadata !DIExpression()), !dbg !3162
  %6 = icmp eq ptr %5, null, !dbg !3164
  br i1 %6, label %7, label %8, !dbg !3165

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3166
  unreachable, !dbg !3166

8:                                                ; preds = %2
  ret ptr %5, !dbg !3167
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3168 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3172, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !3173, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %2, metadata !3174, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata ptr %0, metadata !3176, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %1, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %2, metadata !3180, metadata !DIExpression()), !dbg !3181
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3183
  call void @llvm.dbg.value(metadata ptr %4, metadata !3054, metadata !DIExpression()), !dbg !3184
  %5 = icmp eq ptr %4, null, !dbg !3186
  br i1 %5, label %6, label %7, !dbg !3187

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3188
  unreachable, !dbg !3188

7:                                                ; preds = %3
  ret ptr %4, !dbg !3189
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3190 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr null, metadata !3046, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %0, metadata !3049, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3197
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3199
  call void @llvm.dbg.value(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !3200
  %4 = icmp eq ptr %3, null, !dbg !3202
  br i1 %4, label %5, label %6, !dbg !3203

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3204
  unreachable, !dbg !3204

6:                                                ; preds = %2
  ret ptr %3, !dbg !3205
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3206 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3210, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr null, metadata !3172, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %0, metadata !3173, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %1, metadata !3174, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr null, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %0, metadata !3179, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %1, metadata !3180, metadata !DIExpression()), !dbg !3215
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3217
  call void @llvm.dbg.value(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !3218
  %4 = icmp eq ptr %3, null, !dbg !3220
  br i1 %4, label %5, label %6, !dbg !3221

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3222
  unreachable, !dbg !3222

6:                                                ; preds = %2
  ret ptr %3, !dbg !3223
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3224 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3228, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %1, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %0, metadata !770, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr %1, metadata !771, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 1, metadata !772, metadata !DIExpression()), !dbg !3231
  %3 = load i64, ptr %1, align 8, !dbg !3233, !tbaa !1131
  call void @llvm.dbg.value(metadata i64 %3, metadata !773, metadata !DIExpression()), !dbg !3231
  %4 = icmp eq ptr %0, null, !dbg !3234
  br i1 %4, label %5, label %8, !dbg !3236

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3237
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3240
  br label %15, !dbg !3240

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3241
  %10 = add nuw i64 %9, 1, !dbg !3241
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3241
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3241
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3241
  call void @llvm.dbg.value(metadata i64 %13, metadata !773, metadata !DIExpression()), !dbg !3231
  br i1 %12, label %14, label %15, !dbg !3244

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3245
  unreachable, !dbg !3245

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3231
  call void @llvm.dbg.value(metadata i64 %16, metadata !773, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %16, metadata !3049, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 1, metadata !3050, metadata !DIExpression()), !dbg !3246
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3248
  call void @llvm.dbg.value(metadata ptr %17, metadata !3054, metadata !DIExpression()), !dbg !3249
  %18 = icmp eq ptr %17, null, !dbg !3251
  br i1 %18, label %19, label %20, !dbg !3252

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3253
  unreachable, !dbg !3253

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !770, metadata !DIExpression()), !dbg !3231
  store i64 %16, ptr %1, align 8, !dbg !3254, !tbaa !1131
  ret ptr %17, !dbg !3255
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !765 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !770, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %1, metadata !771, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %2, metadata !772, metadata !DIExpression()), !dbg !3256
  %4 = load i64, ptr %1, align 8, !dbg !3257, !tbaa !1131
  call void @llvm.dbg.value(metadata i64 %4, metadata !773, metadata !DIExpression()), !dbg !3256
  %5 = icmp eq ptr %0, null, !dbg !3258
  br i1 %5, label %6, label %13, !dbg !3259

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3260
  br i1 %7, label %8, label %20, !dbg !3261

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %9, metadata !773, metadata !DIExpression()), !dbg !3256
  %10 = icmp ugt i64 %2, 128, !dbg !3264
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %12, metadata !773, metadata !DIExpression()), !dbg !3256
  br label %20, !dbg !3266

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3267
  %15 = add nuw i64 %14, 1, !dbg !3267
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3267
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3267
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %18, metadata !773, metadata !DIExpression()), !dbg !3256
  br i1 %17, label %19, label %20, !dbg !3268

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3269
  unreachable, !dbg !3269

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3256
  call void @llvm.dbg.value(metadata i64 %21, metadata !773, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %21, metadata !3049, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %2, metadata !3050, metadata !DIExpression()), !dbg !3270
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3272
  call void @llvm.dbg.value(metadata ptr %22, metadata !3054, metadata !DIExpression()), !dbg !3273
  %23 = icmp eq ptr %22, null, !dbg !3275
  br i1 %23, label %24, label %25, !dbg !3276

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3277
  unreachable, !dbg !3277

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !770, metadata !DIExpression()), !dbg !3256
  store i64 %21, ptr %1, align 8, !dbg !3278, !tbaa !1131
  ret ptr %22, !dbg !3279
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !777 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !785, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr %1, metadata !786, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %2, metadata !787, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %3, metadata !788, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %4, metadata !789, metadata !DIExpression()), !dbg !3280
  %6 = load i64, ptr %1, align 8, !dbg !3281, !tbaa !1131
  call void @llvm.dbg.value(metadata i64 %6, metadata !790, metadata !DIExpression()), !dbg !3280
  %7 = ashr i64 %6, 1, !dbg !3282
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3282
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3282
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %10, metadata !791, metadata !DIExpression()), !dbg !3280
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %11, metadata !791, metadata !DIExpression()), !dbg !3280
  %12 = icmp sgt i64 %3, -1, !dbg !3285
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3287
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %15, metadata !791, metadata !DIExpression()), !dbg !3280
  %16 = icmp slt i64 %4, 0, !dbg !3288
  br i1 %16, label %17, label %30, !dbg !3288

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3288
  br i1 %18, label %19, label %24, !dbg !3288

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3288
  %21 = udiv i64 9223372036854775807, %20, !dbg !3288
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3288
  br i1 %23, label %46, label %43, !dbg !3288

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3288
  br i1 %25, label %43, label %26, !dbg !3288

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3288
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3288
  %29 = icmp ult i64 %28, %15, !dbg !3288
  br i1 %29, label %46, label %43, !dbg !3288

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3288
  br i1 %31, label %43, label %32, !dbg !3288

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3288
  br i1 %33, label %34, label %40, !dbg !3288

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3288
  br i1 %35, label %43, label %36, !dbg !3288

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3288
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3288
  %39 = icmp ult i64 %38, %4, !dbg !3288
  br i1 %39, label %46, label %43, !dbg !3288

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3288
  br i1 %42, label %46, label %43, !dbg !3288

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !792, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3280
  %44 = mul i64 %15, %4, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %44, metadata !792, metadata !DIExpression()), !dbg !3280
  %45 = icmp slt i64 %44, 128, !dbg !3288
  br i1 %45, label %46, label %51, !dbg !3288

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !793, metadata !DIExpression()), !dbg !3280
  %48 = sdiv i64 %47, %4, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %48, metadata !791, metadata !DIExpression()), !dbg !3280
  %49 = srem i64 %47, %4, !dbg !3292
  %50 = sub nsw i64 %47, %49, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %50, metadata !792, metadata !DIExpression()), !dbg !3280
  br label %51, !dbg !3294

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3280
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3280
  call void @llvm.dbg.value(metadata i64 %53, metadata !792, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %52, metadata !791, metadata !DIExpression()), !dbg !3280
  %54 = icmp eq ptr %0, null, !dbg !3295
  br i1 %54, label %55, label %56, !dbg !3297

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3298, !tbaa !1131
  br label %56, !dbg !3299

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3300
  %58 = icmp slt i64 %57, %2, !dbg !3302
  br i1 %58, label %59, label %96, !dbg !3303

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3304
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3304
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %62, metadata !791, metadata !DIExpression()), !dbg !3280
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3305
  br i1 %65, label %95, label %66, !dbg !3305

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3306

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3306
  br i1 %68, label %69, label %74, !dbg !3306

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3306
  %71 = udiv i64 9223372036854775807, %70, !dbg !3306
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3306
  br i1 %73, label %95, label %93, !dbg !3306

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3306
  br i1 %75, label %93, label %76, !dbg !3306

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3306
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3306
  %79 = icmp ult i64 %78, %62, !dbg !3306
  br i1 %79, label %95, label %93, !dbg !3306

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3306
  br i1 %81, label %93, label %82, !dbg !3306

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3306
  br i1 %83, label %84, label %90, !dbg !3306

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3306
  br i1 %85, label %93, label %86, !dbg !3306

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3306
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3306
  %89 = icmp ult i64 %88, %4, !dbg !3306
  br i1 %89, label %95, label %93, !dbg !3306

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3306
  br i1 %92, label %95, label %93, !dbg !3306

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !792, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3280
  %94 = mul i64 %62, %4, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %94, metadata !792, metadata !DIExpression()), !dbg !3280
  br label %96, !dbg !3307

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !3308
  unreachable, !dbg !3308

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3280
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3280
  call void @llvm.dbg.value(metadata i64 %98, metadata !792, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %97, metadata !791, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64 %98, metadata !3127, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %98, metadata !3133, metadata !DIExpression()), !dbg !3311
  %99 = icmp eq i64 %98, 0, !dbg !3313
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3313
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !3314
  call void @llvm.dbg.value(metadata ptr %101, metadata !3054, metadata !DIExpression()), !dbg !3315
  %102 = icmp eq ptr %101, null, !dbg !3317
  br i1 %102, label %103, label %104, !dbg !3318

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !3319
  unreachable, !dbg !3319

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !785, metadata !DIExpression()), !dbg !3280
  store i64 %97, ptr %1, align 8, !dbg !3320, !tbaa !1131
  ret ptr %101, !dbg !3321
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3322 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %0, metadata !3326, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 1, metadata !3329, metadata !DIExpression()), !dbg !3330
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3332
  call void @llvm.dbg.value(metadata ptr %2, metadata !3054, metadata !DIExpression()), !dbg !3333
  %3 = icmp eq ptr %2, null, !dbg !3335
  br i1 %3, label %4, label %5, !dbg !3336

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3337
  unreachable, !dbg !3337

5:                                                ; preds = %1
  ret ptr %2, !dbg !3338
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3339 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3327 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3326, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3340
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3341
  call void @llvm.dbg.value(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !3342
  %4 = icmp eq ptr %3, null, !dbg !3344
  br i1 %4, label %5, label %6, !dbg !3345

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3346
  unreachable, !dbg !3346

6:                                                ; preds = %2
  ret ptr %3, !dbg !3347
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3348 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3350, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %0, metadata !3352, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 1, metadata !3355, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 1, metadata !3361, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 1, metadata !3361, metadata !DIExpression()), !dbg !3362
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3364
  call void @llvm.dbg.value(metadata ptr %2, metadata !3054, metadata !DIExpression()), !dbg !3365
  %3 = icmp eq ptr %2, null, !dbg !3367
  br i1 %3, label %4, label %5, !dbg !3368

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3369
  unreachable, !dbg !3369

5:                                                ; preds = %1
  ret ptr %2, !dbg !3370
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3353 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3352, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %1, metadata !3355, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %1, metadata !3361, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %1, metadata !3361, metadata !DIExpression()), !dbg !3372
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !3375
  %4 = icmp eq ptr %3, null, !dbg !3377
  br i1 %4, label %5, label %6, !dbg !3378

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3379
  unreachable, !dbg !3379

6:                                                ; preds = %2
  ret ptr %3, !dbg !3380
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3381 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i64 %1, metadata !3386, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()), !dbg !3388
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3390
  call void @llvm.dbg.value(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !3391
  %4 = icmp eq ptr %3, null, !dbg !3393
  br i1 %4, label %5, label %6, !dbg !3394

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3395
  unreachable, !dbg !3395

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3396, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3404
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3406
  ret ptr %3, !dbg !3407
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3408 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3412, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3417
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !3420
  %4 = icmp eq ptr %3, null, !dbg !3422
  br i1 %4, label %5, label %6, !dbg !3423

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3424
  unreachable, !dbg !3424

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3396, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3425
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3427
  ret ptr %3, !dbg !3428
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3429 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3433, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %1, metadata !3434, metadata !DIExpression()), !dbg !3436
  %3 = add nsw i64 %1, 1, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %3, metadata !3092, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 %3, metadata !3094, metadata !DIExpression()), !dbg !3440
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3442
  call void @llvm.dbg.value(metadata ptr %4, metadata !3054, metadata !DIExpression()), !dbg !3443
  %5 = icmp eq ptr %4, null, !dbg !3445
  br i1 %5, label %6, label %7, !dbg !3446

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3447
  unreachable, !dbg !3447

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3435, metadata !DIExpression()), !dbg !3436
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3448
  store i8 0, ptr %8, align 1, !dbg !3449, !tbaa !919
  call void @llvm.dbg.value(metadata ptr %4, metadata !3396, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3452
  ret ptr %4, !dbg !3453
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3454 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3456, metadata !DIExpression()), !dbg !3457
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3458
  %3 = add i64 %2, 1, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %3, metadata !3386, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %3, metadata !3078, metadata !DIExpression()), !dbg !3462
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3464
  call void @llvm.dbg.value(metadata ptr %4, metadata !3054, metadata !DIExpression()), !dbg !3465
  %5 = icmp eq ptr %4, null, !dbg !3467
  br i1 %5, label %6, label %7, !dbg !3468

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3469
  unreachable, !dbg !3469

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3396, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %3, metadata !3403, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3472
  ret ptr %4, !dbg !3473
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3474 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3478, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %1, metadata !3476, metadata !DIExpression()), !dbg !3479
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.116, ptr noundef nonnull @.str.2.117, i32 noundef 5) #38, !dbg !3478
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef %2) #38, !dbg !3478
  %3 = icmp eq i32 %1, 0, !dbg !3478
  tail call void @llvm.assume(i1 %3), !dbg !3478
  tail call void @abort() #40, !dbg !3480
  unreachable, !dbg !3480
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtol(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #34 !dbg !3481 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr %1, metadata !3488, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 %2, metadata !3489, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr %3, metadata !3490, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr %4, metadata !3491, metadata !DIExpression()), !dbg !3501
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #38, !dbg !3502
  %7 = icmp eq ptr %1, null, !dbg !3503
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !3503
  call void @llvm.dbg.value(metadata ptr %8, metadata !3493, metadata !DIExpression()), !dbg !3501
  %9 = tail call ptr @__errno_location() #41, !dbg !3504
  store i32 0, ptr %9, align 4, !dbg !3505, !tbaa !910
  %10 = call i64 @strtol(ptr noundef %0, ptr noundef %8, i32 noundef %2) #38, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %10, metadata !3494, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 0, metadata !3495, metadata !DIExpression()), !dbg !3501
  %11 = load ptr, ptr %8, align 8, !dbg !3507, !tbaa !838
  %12 = icmp eq ptr %11, %0, !dbg !3509
  br i1 %12, label %13, label %22, !dbg !3510

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !3511
  br i1 %14, label %991, label %15, !dbg !3514

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !3515, !tbaa !919
  %17 = icmp eq i8 %16, 0, !dbg !3515
  br i1 %17, label %991, label %18, !dbg !3516

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !3515
  %20 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #39, !dbg !3517
  %21 = icmp eq ptr %20, null, !dbg !3517
  br i1 %21, label %991, label %29, !dbg !3518

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !3519, !tbaa !910
  switch i32 %23, label %991 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !3521

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !3495, metadata !DIExpression()), !dbg !3501
  br label %25, !dbg !3522

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !3501
  call void @llvm.dbg.value(metadata i32 %26, metadata !3495, metadata !DIExpression()), !dbg !3501
  %27 = icmp eq ptr %4, null, !dbg !3524
  br i1 %27, label %28, label %29, !dbg !3526

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !3494, metadata !DIExpression()), !dbg !3501
  store i64 %10, ptr %3, align 8, !dbg !3527, !tbaa !1131
  br label %991, !dbg !3529

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !3530, !tbaa !919
  %33 = sext i8 %32 to i32, !dbg !3530
  %34 = icmp eq i8 %32, 0, !dbg !3531
  br i1 %34, label %988, label %35, !dbg !3532

35:                                               ; preds = %29
  %36 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %33) #39, !dbg !3533
  %37 = icmp eq ptr %36, null, !dbg !3533
  br i1 %37, label %38, label %40, !dbg !3535

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %10, metadata !3494, metadata !DIExpression()), !dbg !3501
  store i64 %31, ptr %3, align 8, !dbg !3536, !tbaa !1131
  %39 = or i32 %30, 2, !dbg !3538
  br label %991, !dbg !3539

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !3496, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i32 1, metadata !3499, metadata !DIExpression()), !dbg !3540
  switch i32 %33, label %54 [
    i32 69, label %41
    i32 71, label %41
    i32 103, label %41
    i32 107, label %41
    i32 75, label %41
    i32 77, label %41
    i32 109, label %41
    i32 80, label %41
    i32 81, label %41
    i32 82, label %41
    i32 84, label %41
    i32 116, label %41
    i32 89, label %41
    i32 90, label %41
  ], !dbg !3541

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #39, !dbg !3542
  %43 = icmp eq ptr %42, null, !dbg !3542
  br i1 %43, label %54, label %44, !dbg !3545

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3546
  %46 = load i8, ptr %45, align 1, !dbg !3546, !tbaa !919
  %47 = sext i8 %46 to i32, !dbg !3546
  switch i32 %47, label %54 [
    i32 105, label %48
    i32 66, label %53
    i32 68, label %53
  ], !dbg !3547

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !3548
  %50 = load i8, ptr %49, align 1, !dbg !3548, !tbaa !919
  %51 = icmp eq i8 %50, 66, !dbg !3551
  %52 = select i1 %51, i64 3, i64 1, !dbg !3552
  br label %54, !dbg !3552

53:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !3496, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i32 2, metadata !3499, metadata !DIExpression()), !dbg !3540
  br label %54, !dbg !3553

54:                                               ; preds = %48, %41, %44, %53, %40
  %55 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %53 ], [ 1024, %41 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %53 ], [ 1, %41 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3499, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i32 poison, metadata !3496, metadata !DIExpression()), !dbg !3540
  switch i32 %33, label %986 [
    i32 98, label %69
    i32 66, label %77
    i32 99, label %977
    i32 69, label %67
    i32 71, label %181
    i32 103, label %181
    i32 107, label %231
    i32 75, label %231
    i32 77, label %244
    i32 109, label %244
    i32 80, label %65
    i32 81, label %63
    i32 82, label %61
    i32 84, label %662
    i32 116, label %662
    i32 119, label %728
    i32 89, label %59
    i32 90, label %57
  ], !dbg !3554

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 7, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 6, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3573
  %58 = icmp slt i64 %31, 0, !dbg !3575
  br i1 %58, label %865, label %871, !dbg !3575

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 8, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 7, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3579
  %60 = icmp slt i64 %31, 0, !dbg !3581
  br i1 %60, label %737, label %743, !dbg !3581

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 9, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 8, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %62 = icmp slt i64 %31, 0, !dbg !3586
  br i1 %62, label %518, label %524, !dbg !3586

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 10, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 9, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %64 = icmp slt i64 %31, 0, !dbg !3591
  br i1 %64, label %358, label %364, !dbg !3591

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 5, metadata !3562, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 4, metadata !3562, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3594
  %66 = icmp slt i64 %31, 0, !dbg !3596
  br i1 %66, label %278, label %284, !dbg !3596

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 6, metadata !3562, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 5, metadata !3562, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3599
  %68 = icmp slt i64 %31, 0, !dbg !3601
  br i1 %68, label %85, label %91, !dbg !3601

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 512, metadata !3571, metadata !DIExpression()), !dbg !3602
  %70 = icmp slt i64 %31, 0, !dbg !3604
  br i1 %70, label %71, label %73, !dbg !3604

71:                                               ; preds = %69
  %72 = icmp ult i64 %31, -18014398509481984, !dbg !3604
  br i1 %72, label %977, label %75, !dbg !3604

73:                                               ; preds = %69
  %74 = icmp ugt i64 %31, 18014398509481983, !dbg !3604
  br i1 %74, label %977, label %75, !dbg !3604

75:                                               ; preds = %71, %73
  %76 = shl nsw i64 %31, 9, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %76, metadata !3572, metadata !DIExpression()), !dbg !3602
  br label %977, !dbg !3605

77:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 1024, metadata !3571, metadata !DIExpression()), !dbg !3606
  %78 = icmp slt i64 %31, 0, !dbg !3608
  br i1 %78, label %79, label %81, !dbg !3608

79:                                               ; preds = %77
  %80 = icmp ult i64 %31, -9007199254740992, !dbg !3608
  br i1 %80, label %977, label %83, !dbg !3608

81:                                               ; preds = %77
  %82 = icmp ugt i64 %31, 9007199254740991, !dbg !3608
  br i1 %82, label %977, label %83, !dbg !3608

83:                                               ; preds = %79, %81
  %84 = shl nsw i64 %31, 10, !dbg !3608
  call void @llvm.dbg.value(metadata i64 %84, metadata !3572, metadata !DIExpression()), !dbg !3606
  br label %977, !dbg !3609

85:                                               ; preds = %67
  %86 = icmp eq i64 %31, -1, !dbg !3601
  br i1 %86, label %94, label %87, !dbg !3601

87:                                               ; preds = %85
  %88 = sub i64 0, %31, !dbg !3601
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3601
  %90 = icmp ult i64 %89, %55, !dbg !3601
  br i1 %90, label %102, label %94, !dbg !3601

91:                                               ; preds = %67
  %92 = udiv i64 9223372036854775807, %55, !dbg !3601
  %93 = icmp ult i64 %92, %31, !dbg !3601
  br i1 %93, label %97, label %94, !dbg !3601

94:                                               ; preds = %85, %87, %91
  %95 = mul i64 %31, %55, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %95, metadata !3572, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 4, metadata !3562, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3599
  %96 = icmp slt i64 %95, 0, !dbg !3601
  br i1 %96, label %102, label %97, !dbg !3601

97:                                               ; preds = %91, %94
  %98 = phi i32 [ 0, %94 ], [ 1, %91 ]
  %99 = phi i64 [ %95, %94 ], [ 9223372036854775807, %91 ]
  %100 = udiv i64 9223372036854775807, %55, !dbg !3601
  %101 = icmp ult i64 %100, %99, !dbg !3601
  br i1 %101, label %113, label %108, !dbg !3601

102:                                              ; preds = %87, %94
  %103 = phi i32 [ 0, %94 ], [ 1, %87 ]
  %104 = phi i64 [ %95, %94 ], [ -9223372036854775808, %87 ]
  %105 = sub i64 0, %104, !dbg !3601
  %106 = udiv i64 -9223372036854775808, %105, !dbg !3601
  %107 = icmp ult i64 %106, %55, !dbg !3601
  br i1 %107, label %118, label %108, !dbg !3601

108:                                              ; preds = %97, %102
  %109 = phi i32 [ %103, %102 ], [ %98, %97 ]
  %110 = phi i64 [ %104, %102 ], [ %99, %97 ]
  %111 = mul i64 %110, %55, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %111, metadata !3572, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 %109, metadata !3555, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 3, metadata !3562, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3599
  %112 = icmp slt i64 %111, 0, !dbg !3601
  br i1 %112, label %118, label %113, !dbg !3601

113:                                              ; preds = %97, %108
  %114 = phi i32 [ %109, %108 ], [ 1, %97 ]
  %115 = phi i64 [ %111, %108 ], [ 9223372036854775807, %97 ]
  %116 = udiv i64 9223372036854775807, %55, !dbg !3601
  %117 = icmp ult i64 %116, %115, !dbg !3601
  br i1 %117, label %129, label %124, !dbg !3601

118:                                              ; preds = %102, %108
  %119 = phi i32 [ %109, %108 ], [ 1, %102 ]
  %120 = phi i64 [ %111, %108 ], [ -9223372036854775808, %102 ]
  %121 = sub i64 0, %120, !dbg !3601
  %122 = udiv i64 -9223372036854775808, %121, !dbg !3601
  %123 = icmp ult i64 %122, %55, !dbg !3601
  br i1 %123, label %134, label %124, !dbg !3601

124:                                              ; preds = %113, %118
  %125 = phi i32 [ %119, %118 ], [ %114, %113 ]
  %126 = phi i64 [ %120, %118 ], [ %115, %113 ]
  %127 = mul i64 %126, %55, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %127, metadata !3572, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 %125, metadata !3555, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 2, metadata !3562, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3599
  %128 = icmp slt i64 %127, 0, !dbg !3601
  br i1 %128, label %134, label %129, !dbg !3601

129:                                              ; preds = %113, %124
  %130 = phi i32 [ %125, %124 ], [ 1, %113 ]
  %131 = phi i64 [ %127, %124 ], [ 9223372036854775807, %113 ]
  %132 = udiv i64 9223372036854775807, %55, !dbg !3601
  %133 = icmp ult i64 %132, %131, !dbg !3601
  br i1 %133, label %145, label %140, !dbg !3601

134:                                              ; preds = %118, %124
  %135 = phi i32 [ %125, %124 ], [ 1, %118 ]
  %136 = phi i64 [ %127, %124 ], [ -9223372036854775808, %118 ]
  %137 = sub i64 0, %136, !dbg !3601
  %138 = udiv i64 -9223372036854775808, %137, !dbg !3601
  %139 = icmp ult i64 %138, %55, !dbg !3601
  br i1 %139, label %150, label %140, !dbg !3601

140:                                              ; preds = %129, %134
  %141 = phi i32 [ %135, %134 ], [ %130, %129 ]
  %142 = phi i64 [ %136, %134 ], [ %131, %129 ]
  %143 = mul i64 %142, %55, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %143, metadata !3572, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 %141, metadata !3555, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3599
  %144 = icmp slt i64 %143, 0, !dbg !3601
  br i1 %144, label %150, label %145, !dbg !3601

145:                                              ; preds = %129, %140
  %146 = phi i32 [ %141, %140 ], [ 1, %129 ]
  %147 = phi i64 [ %143, %140 ], [ 9223372036854775807, %129 ]
  %148 = udiv i64 9223372036854775807, %55, !dbg !3601
  %149 = icmp ult i64 %148, %147, !dbg !3601
  br i1 %149, label %161, label %156, !dbg !3601

150:                                              ; preds = %134, %140
  %151 = phi i32 [ %141, %140 ], [ 1, %134 ]
  %152 = phi i64 [ %143, %140 ], [ -9223372036854775808, %134 ]
  %153 = sub i64 0, %152, !dbg !3601
  %154 = udiv i64 -9223372036854775808, %153, !dbg !3601
  %155 = icmp ult i64 %154, %55, !dbg !3601
  br i1 %155, label %166, label %156, !dbg !3601

156:                                              ; preds = %145, %150
  %157 = phi i32 [ %151, %150 ], [ %146, %145 ]
  %158 = phi i64 [ %152, %150 ], [ %147, %145 ]
  %159 = mul i64 %158, %55, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %159, metadata !3572, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 %157, metadata !3555, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3599
  %160 = icmp slt i64 %159, 0, !dbg !3601
  br i1 %160, label %166, label %161, !dbg !3601

161:                                              ; preds = %145, %156
  %162 = phi i32 [ %157, %156 ], [ 1, %145 ]
  %163 = phi i64 [ %159, %156 ], [ 9223372036854775807, %145 ]
  %164 = udiv i64 9223372036854775807, %55, !dbg !3601
  %165 = icmp ult i64 %164, %163, !dbg !3601
  br i1 %165, label %176, label %172, !dbg !3601

166:                                              ; preds = %150, %156
  %167 = phi i32 [ %157, %156 ], [ 1, %150 ]
  %168 = phi i64 [ %159, %156 ], [ -9223372036854775808, %150 ]
  %169 = sub i64 0, %168, !dbg !3601
  %170 = udiv i64 -9223372036854775808, %169, !dbg !3601
  %171 = icmp ult i64 %170, %55, !dbg !3601
  br i1 %171, label %176, label %172, !dbg !3601

172:                                              ; preds = %166, %161
  %173 = phi i32 [ %167, %166 ], [ %162, %161 ]
  %174 = phi i64 [ %168, %166 ], [ %163, %161 ]
  %175 = mul i64 %174, %55, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %175, metadata !3572, metadata !DIExpression()), !dbg !3599
  br label %176, !dbg !3610

176:                                              ; preds = %172, %166, %161
  %177 = phi i32 [ %173, %172 ], [ %162, %161 ], [ %167, %166 ]
  %178 = phi i64 [ %175, %172 ], [ 9223372036854775807, %161 ], [ -9223372036854775808, %166 ], !dbg !3599
  %179 = phi i32 [ 0, %172 ], [ 1, %161 ], [ 1, %166 ], !dbg !3599
  %180 = or i32 %179, %177, !dbg !3611
  call void @llvm.dbg.value(metadata i32 %180, metadata !3555, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3597
  br label %977, !dbg !3612

181:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3560, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 poison, metadata !3561, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 2, metadata !3562, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3615
  %182 = icmp slt i64 %31, 0, !dbg !3617
  br i1 %182, label %183, label %189, !dbg !3617

183:                                              ; preds = %181
  %184 = icmp eq i64 %31, -1, !dbg !3617
  br i1 %184, label %192, label %185, !dbg !3617

185:                                              ; preds = %183
  %186 = sub i64 0, %31, !dbg !3617
  %187 = udiv i64 -9223372036854775808, %186, !dbg !3617
  %188 = icmp ult i64 %187, %55, !dbg !3617
  br i1 %188, label %200, label %192, !dbg !3617

189:                                              ; preds = %181
  %190 = udiv i64 9223372036854775807, %55, !dbg !3617
  %191 = icmp ult i64 %190, %31, !dbg !3617
  br i1 %191, label %195, label %192, !dbg !3617

192:                                              ; preds = %183, %185, %189
  %193 = mul i64 %31, %55, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %193, metadata !3572, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3615
  %194 = icmp slt i64 %193, 0, !dbg !3617
  br i1 %194, label %200, label %195, !dbg !3617

195:                                              ; preds = %189, %192
  %196 = phi i32 [ 0, %192 ], [ 1, %189 ]
  %197 = phi i64 [ %193, %192 ], [ 9223372036854775807, %189 ]
  %198 = udiv i64 9223372036854775807, %55, !dbg !3617
  %199 = icmp ult i64 %198, %197, !dbg !3617
  br i1 %199, label %211, label %206, !dbg !3617

200:                                              ; preds = %185, %192
  %201 = phi i32 [ 0, %192 ], [ 1, %185 ]
  %202 = phi i64 [ %193, %192 ], [ -9223372036854775808, %185 ]
  %203 = sub i64 0, %202, !dbg !3617
  %204 = udiv i64 -9223372036854775808, %203, !dbg !3617
  %205 = icmp ult i64 %204, %55, !dbg !3617
  br i1 %205, label %216, label %206, !dbg !3617

206:                                              ; preds = %195, %200
  %207 = phi i32 [ %201, %200 ], [ %196, %195 ]
  %208 = phi i64 [ %202, %200 ], [ %197, %195 ]
  %209 = mul i64 %208, %55, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %209, metadata !3572, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 %207, metadata !3555, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3615
  %210 = icmp slt i64 %209, 0, !dbg !3617
  br i1 %210, label %216, label %211, !dbg !3617

211:                                              ; preds = %195, %206
  %212 = phi i32 [ %207, %206 ], [ 1, %195 ]
  %213 = phi i64 [ %209, %206 ], [ 9223372036854775807, %195 ]
  %214 = udiv i64 9223372036854775807, %55, !dbg !3617
  %215 = icmp ult i64 %214, %213, !dbg !3617
  br i1 %215, label %226, label %222, !dbg !3617

216:                                              ; preds = %200, %206
  %217 = phi i32 [ %207, %206 ], [ 1, %200 ]
  %218 = phi i64 [ %209, %206 ], [ -9223372036854775808, %200 ]
  %219 = sub i64 0, %218, !dbg !3617
  %220 = udiv i64 -9223372036854775808, %219, !dbg !3617
  %221 = icmp ult i64 %220, %55, !dbg !3617
  br i1 %221, label %226, label %222, !dbg !3617

222:                                              ; preds = %216, %211
  %223 = phi i32 [ %217, %216 ], [ %212, %211 ]
  %224 = phi i64 [ %218, %216 ], [ %213, %211 ]
  %225 = mul i64 %224, %55, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %225, metadata !3572, metadata !DIExpression()), !dbg !3615
  br label %226, !dbg !3618

226:                                              ; preds = %222, %216, %211
  %227 = phi i32 [ %223, %222 ], [ %212, %211 ], [ %217, %216 ]
  %228 = phi i64 [ %225, %222 ], [ 9223372036854775807, %211 ], [ -9223372036854775808, %216 ], !dbg !3615
  %229 = phi i32 [ 0, %222 ], [ 1, %211 ], [ 1, %216 ], !dbg !3615
  %230 = or i32 %229, %227, !dbg !3619
  call void @llvm.dbg.value(metadata i32 %230, metadata !3555, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3613
  br label %977, !dbg !3612

231:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3560, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i32 poison, metadata !3561, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3622
  %232 = icmp slt i64 %31, 0, !dbg !3624
  br i1 %232, label %233, label %239, !dbg !3624

233:                                              ; preds = %231
  %234 = icmp eq i64 %31, -1, !dbg !3624
  br i1 %234, label %242, label %235, !dbg !3624

235:                                              ; preds = %233
  %236 = sub i64 0, %31, !dbg !3624
  %237 = udiv i64 -9223372036854775808, %236, !dbg !3624
  %238 = icmp ult i64 %237, %55, !dbg !3624
  br i1 %238, label %977, label %242, !dbg !3624

239:                                              ; preds = %231
  %240 = udiv i64 9223372036854775807, %55, !dbg !3624
  %241 = icmp ult i64 %240, %31, !dbg !3624
  br i1 %241, label %977, label %242, !dbg !3624

242:                                              ; preds = %239, %235, %233
  %243 = mul i64 %31, %55, !dbg !3624
  call void @llvm.dbg.value(metadata i64 %243, metadata !3572, metadata !DIExpression()), !dbg !3622
  br label %977, !dbg !3625

244:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3560, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 poison, metadata !3561, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3628
  %245 = icmp slt i64 %31, 0, !dbg !3630
  br i1 %245, label %246, label %252, !dbg !3630

246:                                              ; preds = %244
  %247 = icmp eq i64 %31, -1, !dbg !3630
  br i1 %247, label %255, label %248, !dbg !3630

248:                                              ; preds = %246
  %249 = sub i64 0, %31, !dbg !3630
  %250 = udiv i64 -9223372036854775808, %249, !dbg !3630
  %251 = icmp ult i64 %250, %55, !dbg !3630
  br i1 %251, label %263, label %255, !dbg !3630

252:                                              ; preds = %244
  %253 = udiv i64 9223372036854775807, %55, !dbg !3630
  %254 = icmp ult i64 %253, %31, !dbg !3630
  br i1 %254, label %258, label %255, !dbg !3630

255:                                              ; preds = %246, %248, %252
  %256 = mul i64 %31, %55, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %256, metadata !3572, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3628
  %257 = icmp slt i64 %256, 0, !dbg !3630
  br i1 %257, label %263, label %258, !dbg !3630

258:                                              ; preds = %252, %255
  %259 = phi i32 [ 0, %255 ], [ 1, %252 ]
  %260 = phi i64 [ %256, %255 ], [ 9223372036854775807, %252 ]
  %261 = udiv i64 9223372036854775807, %55, !dbg !3630
  %262 = icmp ult i64 %261, %260, !dbg !3630
  br i1 %262, label %273, label %269, !dbg !3630

263:                                              ; preds = %248, %255
  %264 = phi i32 [ 0, %255 ], [ 1, %248 ]
  %265 = phi i64 [ %256, %255 ], [ -9223372036854775808, %248 ]
  %266 = sub i64 0, %265, !dbg !3630
  %267 = udiv i64 -9223372036854775808, %266, !dbg !3630
  %268 = icmp ult i64 %267, %55, !dbg !3630
  br i1 %268, label %273, label %269, !dbg !3630

269:                                              ; preds = %263, %258
  %270 = phi i32 [ %264, %263 ], [ %259, %258 ]
  %271 = phi i64 [ %265, %263 ], [ %260, %258 ]
  %272 = mul i64 %271, %55, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %272, metadata !3572, metadata !DIExpression()), !dbg !3628
  br label %273, !dbg !3631

273:                                              ; preds = %269, %263, %258
  %274 = phi i32 [ %270, %269 ], [ %259, %258 ], [ %264, %263 ]
  %275 = phi i64 [ %272, %269 ], [ 9223372036854775807, %258 ], [ -9223372036854775808, %263 ], !dbg !3628
  %276 = phi i32 [ 0, %269 ], [ 1, %258 ], [ 1, %263 ], !dbg !3628
  %277 = or i32 %276, %274, !dbg !3632
  call void @llvm.dbg.value(metadata i32 %277, metadata !3555, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3626
  br label %977, !dbg !3612

278:                                              ; preds = %65
  %279 = icmp eq i64 %31, -1, !dbg !3596
  br i1 %279, label %287, label %280, !dbg !3596

280:                                              ; preds = %278
  %281 = sub i64 0, %31, !dbg !3596
  %282 = udiv i64 -9223372036854775808, %281, !dbg !3596
  %283 = icmp ult i64 %282, %55, !dbg !3596
  br i1 %283, label %295, label %287, !dbg !3596

284:                                              ; preds = %65
  %285 = udiv i64 9223372036854775807, %55, !dbg !3596
  %286 = icmp ult i64 %285, %31, !dbg !3596
  br i1 %286, label %290, label %287, !dbg !3596

287:                                              ; preds = %278, %280, %284
  %288 = mul i64 %31, %55, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %288, metadata !3572, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 3, metadata !3562, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3594
  %289 = icmp slt i64 %288, 0, !dbg !3596
  br i1 %289, label %295, label %290, !dbg !3596

290:                                              ; preds = %284, %287
  %291 = phi i32 [ 0, %287 ], [ 1, %284 ]
  %292 = phi i64 [ %288, %287 ], [ 9223372036854775807, %284 ]
  %293 = udiv i64 9223372036854775807, %55, !dbg !3596
  %294 = icmp ult i64 %293, %292, !dbg !3596
  br i1 %294, label %306, label %301, !dbg !3596

295:                                              ; preds = %280, %287
  %296 = phi i32 [ 0, %287 ], [ 1, %280 ]
  %297 = phi i64 [ %288, %287 ], [ -9223372036854775808, %280 ]
  %298 = sub i64 0, %297, !dbg !3596
  %299 = udiv i64 -9223372036854775808, %298, !dbg !3596
  %300 = icmp ult i64 %299, %55, !dbg !3596
  br i1 %300, label %311, label %301, !dbg !3596

301:                                              ; preds = %290, %295
  %302 = phi i32 [ %296, %295 ], [ %291, %290 ]
  %303 = phi i64 [ %297, %295 ], [ %292, %290 ]
  %304 = mul i64 %303, %55, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %304, metadata !3572, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %302, metadata !3555, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 2, metadata !3562, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3594
  %305 = icmp slt i64 %304, 0, !dbg !3596
  br i1 %305, label %311, label %306, !dbg !3596

306:                                              ; preds = %290, %301
  %307 = phi i32 [ %302, %301 ], [ 1, %290 ]
  %308 = phi i64 [ %304, %301 ], [ 9223372036854775807, %290 ]
  %309 = udiv i64 9223372036854775807, %55, !dbg !3596
  %310 = icmp ult i64 %309, %308, !dbg !3596
  br i1 %310, label %322, label %317, !dbg !3596

311:                                              ; preds = %295, %301
  %312 = phi i32 [ %302, %301 ], [ 1, %295 ]
  %313 = phi i64 [ %304, %301 ], [ -9223372036854775808, %295 ]
  %314 = sub i64 0, %313, !dbg !3596
  %315 = udiv i64 -9223372036854775808, %314, !dbg !3596
  %316 = icmp ult i64 %315, %55, !dbg !3596
  br i1 %316, label %327, label %317, !dbg !3596

317:                                              ; preds = %306, %311
  %318 = phi i32 [ %312, %311 ], [ %307, %306 ]
  %319 = phi i64 [ %313, %311 ], [ %308, %306 ]
  %320 = mul i64 %319, %55, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %320, metadata !3572, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %318, metadata !3555, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3594
  %321 = icmp slt i64 %320, 0, !dbg !3596
  br i1 %321, label %327, label %322, !dbg !3596

322:                                              ; preds = %306, %317
  %323 = phi i32 [ %318, %317 ], [ 1, %306 ]
  %324 = phi i64 [ %320, %317 ], [ 9223372036854775807, %306 ]
  %325 = udiv i64 9223372036854775807, %55, !dbg !3596
  %326 = icmp ult i64 %325, %324, !dbg !3596
  br i1 %326, label %338, label %333, !dbg !3596

327:                                              ; preds = %311, %317
  %328 = phi i32 [ %318, %317 ], [ 1, %311 ]
  %329 = phi i64 [ %320, %317 ], [ -9223372036854775808, %311 ]
  %330 = sub i64 0, %329, !dbg !3596
  %331 = udiv i64 -9223372036854775808, %330, !dbg !3596
  %332 = icmp ult i64 %331, %55, !dbg !3596
  br i1 %332, label %343, label %333, !dbg !3596

333:                                              ; preds = %322, %327
  %334 = phi i32 [ %328, %327 ], [ %323, %322 ]
  %335 = phi i64 [ %329, %327 ], [ %324, %322 ]
  %336 = mul i64 %335, %55, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %336, metadata !3572, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %334, metadata !3555, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3594
  %337 = icmp slt i64 %336, 0, !dbg !3596
  br i1 %337, label %343, label %338, !dbg !3596

338:                                              ; preds = %322, %333
  %339 = phi i32 [ %334, %333 ], [ 1, %322 ]
  %340 = phi i64 [ %336, %333 ], [ 9223372036854775807, %322 ]
  %341 = udiv i64 9223372036854775807, %55, !dbg !3596
  %342 = icmp ult i64 %341, %340, !dbg !3596
  br i1 %342, label %353, label %349, !dbg !3596

343:                                              ; preds = %327, %333
  %344 = phi i32 [ %334, %333 ], [ 1, %327 ]
  %345 = phi i64 [ %336, %333 ], [ -9223372036854775808, %327 ]
  %346 = sub i64 0, %345, !dbg !3596
  %347 = udiv i64 -9223372036854775808, %346, !dbg !3596
  %348 = icmp ult i64 %347, %55, !dbg !3596
  br i1 %348, label %353, label %349, !dbg !3596

349:                                              ; preds = %343, %338
  %350 = phi i32 [ %344, %343 ], [ %339, %338 ]
  %351 = phi i64 [ %345, %343 ], [ %340, %338 ]
  %352 = mul i64 %351, %55, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %352, metadata !3572, metadata !DIExpression()), !dbg !3594
  br label %353, !dbg !3633

353:                                              ; preds = %349, %343, %338
  %354 = phi i32 [ %350, %349 ], [ %339, %338 ], [ %344, %343 ]
  %355 = phi i64 [ %352, %349 ], [ 9223372036854775807, %338 ], [ -9223372036854775808, %343 ], !dbg !3594
  %356 = phi i32 [ 0, %349 ], [ 1, %338 ], [ 1, %343 ], !dbg !3594
  %357 = or i32 %356, %354, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %357, metadata !3555, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3592
  br label %977, !dbg !3612

358:                                              ; preds = %63
  %359 = icmp eq i64 %31, -1, !dbg !3591
  br i1 %359, label %367, label %360, !dbg !3591

360:                                              ; preds = %358
  %361 = sub i64 0, %31, !dbg !3591
  %362 = udiv i64 -9223372036854775808, %361, !dbg !3591
  %363 = icmp ult i64 %362, %55, !dbg !3591
  br i1 %363, label %375, label %367, !dbg !3591

364:                                              ; preds = %63
  %365 = udiv i64 9223372036854775807, %55, !dbg !3591
  %366 = icmp ult i64 %365, %31, !dbg !3591
  br i1 %366, label %370, label %367, !dbg !3591

367:                                              ; preds = %358, %360, %364
  %368 = mul i64 %31, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %368, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 8, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %369 = icmp slt i64 %368, 0, !dbg !3591
  br i1 %369, label %375, label %370, !dbg !3591

370:                                              ; preds = %364, %367
  %371 = phi i32 [ 0, %367 ], [ 1, %364 ]
  %372 = phi i64 [ %368, %367 ], [ 9223372036854775807, %364 ]
  %373 = udiv i64 9223372036854775807, %55, !dbg !3591
  %374 = icmp ult i64 %373, %372, !dbg !3591
  br i1 %374, label %386, label %381, !dbg !3591

375:                                              ; preds = %360, %367
  %376 = phi i32 [ 0, %367 ], [ 1, %360 ]
  %377 = phi i64 [ %368, %367 ], [ -9223372036854775808, %360 ]
  %378 = sub i64 0, %377, !dbg !3591
  %379 = udiv i64 -9223372036854775808, %378, !dbg !3591
  %380 = icmp ult i64 %379, %55, !dbg !3591
  br i1 %380, label %391, label %381, !dbg !3591

381:                                              ; preds = %370, %375
  %382 = phi i32 [ %376, %375 ], [ %371, %370 ]
  %383 = phi i64 [ %377, %375 ], [ %372, %370 ]
  %384 = mul i64 %383, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %384, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %382, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 7, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %385 = icmp slt i64 %384, 0, !dbg !3591
  br i1 %385, label %391, label %386, !dbg !3591

386:                                              ; preds = %370, %381
  %387 = phi i32 [ %382, %381 ], [ 1, %370 ]
  %388 = phi i64 [ %384, %381 ], [ 9223372036854775807, %370 ]
  %389 = udiv i64 9223372036854775807, %55, !dbg !3591
  %390 = icmp ult i64 %389, %388, !dbg !3591
  br i1 %390, label %402, label %397, !dbg !3591

391:                                              ; preds = %375, %381
  %392 = phi i32 [ %382, %381 ], [ 1, %375 ]
  %393 = phi i64 [ %384, %381 ], [ -9223372036854775808, %375 ]
  %394 = sub i64 0, %393, !dbg !3591
  %395 = udiv i64 -9223372036854775808, %394, !dbg !3591
  %396 = icmp ult i64 %395, %55, !dbg !3591
  br i1 %396, label %407, label %397, !dbg !3591

397:                                              ; preds = %386, %391
  %398 = phi i32 [ %392, %391 ], [ %387, %386 ]
  %399 = phi i64 [ %393, %391 ], [ %388, %386 ]
  %400 = mul i64 %399, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %400, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %398, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 6, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %401 = icmp slt i64 %400, 0, !dbg !3591
  br i1 %401, label %407, label %402, !dbg !3591

402:                                              ; preds = %386, %397
  %403 = phi i32 [ %398, %397 ], [ 1, %386 ]
  %404 = phi i64 [ %400, %397 ], [ 9223372036854775807, %386 ]
  %405 = udiv i64 9223372036854775807, %55, !dbg !3591
  %406 = icmp ult i64 %405, %404, !dbg !3591
  br i1 %406, label %418, label %413, !dbg !3591

407:                                              ; preds = %391, %397
  %408 = phi i32 [ %398, %397 ], [ 1, %391 ]
  %409 = phi i64 [ %400, %397 ], [ -9223372036854775808, %391 ]
  %410 = sub i64 0, %409, !dbg !3591
  %411 = udiv i64 -9223372036854775808, %410, !dbg !3591
  %412 = icmp ult i64 %411, %55, !dbg !3591
  br i1 %412, label %423, label %413, !dbg !3591

413:                                              ; preds = %402, %407
  %414 = phi i32 [ %408, %407 ], [ %403, %402 ]
  %415 = phi i64 [ %409, %407 ], [ %404, %402 ]
  %416 = mul i64 %415, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %416, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %414, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 5, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %417 = icmp slt i64 %416, 0, !dbg !3591
  br i1 %417, label %423, label %418, !dbg !3591

418:                                              ; preds = %402, %413
  %419 = phi i32 [ %414, %413 ], [ 1, %402 ]
  %420 = phi i64 [ %416, %413 ], [ 9223372036854775807, %402 ]
  %421 = udiv i64 9223372036854775807, %55, !dbg !3591
  %422 = icmp ult i64 %421, %420, !dbg !3591
  br i1 %422, label %434, label %429, !dbg !3591

423:                                              ; preds = %407, %413
  %424 = phi i32 [ %414, %413 ], [ 1, %407 ]
  %425 = phi i64 [ %416, %413 ], [ -9223372036854775808, %407 ]
  %426 = sub i64 0, %425, !dbg !3591
  %427 = udiv i64 -9223372036854775808, %426, !dbg !3591
  %428 = icmp ult i64 %427, %55, !dbg !3591
  br i1 %428, label %439, label %429, !dbg !3591

429:                                              ; preds = %418, %423
  %430 = phi i32 [ %424, %423 ], [ %419, %418 ]
  %431 = phi i64 [ %425, %423 ], [ %420, %418 ]
  %432 = mul i64 %431, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %432, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %430, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 4, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %433 = icmp slt i64 %432, 0, !dbg !3591
  br i1 %433, label %439, label %434, !dbg !3591

434:                                              ; preds = %418, %429
  %435 = phi i32 [ %430, %429 ], [ 1, %418 ]
  %436 = phi i64 [ %432, %429 ], [ 9223372036854775807, %418 ]
  %437 = udiv i64 9223372036854775807, %55, !dbg !3591
  %438 = icmp ult i64 %437, %436, !dbg !3591
  br i1 %438, label %450, label %445, !dbg !3591

439:                                              ; preds = %423, %429
  %440 = phi i32 [ %430, %429 ], [ 1, %423 ]
  %441 = phi i64 [ %432, %429 ], [ -9223372036854775808, %423 ]
  %442 = sub i64 0, %441, !dbg !3591
  %443 = udiv i64 -9223372036854775808, %442, !dbg !3591
  %444 = icmp ult i64 %443, %55, !dbg !3591
  br i1 %444, label %455, label %445, !dbg !3591

445:                                              ; preds = %434, %439
  %446 = phi i32 [ %440, %439 ], [ %435, %434 ]
  %447 = phi i64 [ %441, %439 ], [ %436, %434 ]
  %448 = mul i64 %447, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %448, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %446, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 3, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %449 = icmp slt i64 %448, 0, !dbg !3591
  br i1 %449, label %455, label %450, !dbg !3591

450:                                              ; preds = %434, %445
  %451 = phi i32 [ %446, %445 ], [ 1, %434 ]
  %452 = phi i64 [ %448, %445 ], [ 9223372036854775807, %434 ]
  %453 = udiv i64 9223372036854775807, %55, !dbg !3591
  %454 = icmp ult i64 %453, %452, !dbg !3591
  br i1 %454, label %466, label %461, !dbg !3591

455:                                              ; preds = %439, %445
  %456 = phi i32 [ %446, %445 ], [ 1, %439 ]
  %457 = phi i64 [ %448, %445 ], [ -9223372036854775808, %439 ]
  %458 = sub i64 0, %457, !dbg !3591
  %459 = udiv i64 -9223372036854775808, %458, !dbg !3591
  %460 = icmp ult i64 %459, %55, !dbg !3591
  br i1 %460, label %471, label %461, !dbg !3591

461:                                              ; preds = %450, %455
  %462 = phi i32 [ %456, %455 ], [ %451, %450 ]
  %463 = phi i64 [ %457, %455 ], [ %452, %450 ]
  %464 = mul i64 %463, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %464, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %462, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 2, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %465 = icmp slt i64 %464, 0, !dbg !3591
  br i1 %465, label %471, label %466, !dbg !3591

466:                                              ; preds = %450, %461
  %467 = phi i32 [ %462, %461 ], [ 1, %450 ]
  %468 = phi i64 [ %464, %461 ], [ 9223372036854775807, %450 ]
  %469 = udiv i64 9223372036854775807, %55, !dbg !3591
  %470 = icmp ult i64 %469, %468, !dbg !3591
  br i1 %470, label %482, label %477, !dbg !3591

471:                                              ; preds = %455, %461
  %472 = phi i32 [ %462, %461 ], [ 1, %455 ]
  %473 = phi i64 [ %464, %461 ], [ -9223372036854775808, %455 ]
  %474 = sub i64 0, %473, !dbg !3591
  %475 = udiv i64 -9223372036854775808, %474, !dbg !3591
  %476 = icmp ult i64 %475, %55, !dbg !3591
  br i1 %476, label %487, label %477, !dbg !3591

477:                                              ; preds = %466, %471
  %478 = phi i32 [ %472, %471 ], [ %467, %466 ]
  %479 = phi i64 [ %473, %471 ], [ %468, %466 ]
  %480 = mul i64 %479, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %480, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %478, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %481 = icmp slt i64 %480, 0, !dbg !3591
  br i1 %481, label %487, label %482, !dbg !3591

482:                                              ; preds = %466, %477
  %483 = phi i32 [ %478, %477 ], [ 1, %466 ]
  %484 = phi i64 [ %480, %477 ], [ 9223372036854775807, %466 ]
  %485 = udiv i64 9223372036854775807, %55, !dbg !3591
  %486 = icmp ult i64 %485, %484, !dbg !3591
  br i1 %486, label %498, label %493, !dbg !3591

487:                                              ; preds = %471, %477
  %488 = phi i32 [ %478, %477 ], [ 1, %471 ]
  %489 = phi i64 [ %480, %477 ], [ -9223372036854775808, %471 ]
  %490 = sub i64 0, %489, !dbg !3591
  %491 = udiv i64 -9223372036854775808, %490, !dbg !3591
  %492 = icmp ult i64 %491, %55, !dbg !3591
  br i1 %492, label %503, label %493, !dbg !3591

493:                                              ; preds = %482, %487
  %494 = phi i32 [ %488, %487 ], [ %483, %482 ]
  %495 = phi i64 [ %489, %487 ], [ %484, %482 ]
  %496 = mul i64 %495, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %496, metadata !3572, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %494, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3589
  %497 = icmp slt i64 %496, 0, !dbg !3591
  br i1 %497, label %503, label %498, !dbg !3591

498:                                              ; preds = %482, %493
  %499 = phi i32 [ %494, %493 ], [ 1, %482 ]
  %500 = phi i64 [ %496, %493 ], [ 9223372036854775807, %482 ]
  %501 = udiv i64 9223372036854775807, %55, !dbg !3591
  %502 = icmp ult i64 %501, %500, !dbg !3591
  br i1 %502, label %513, label %509, !dbg !3591

503:                                              ; preds = %487, %493
  %504 = phi i32 [ %494, %493 ], [ 1, %487 ]
  %505 = phi i64 [ %496, %493 ], [ -9223372036854775808, %487 ]
  %506 = sub i64 0, %505, !dbg !3591
  %507 = udiv i64 -9223372036854775808, %506, !dbg !3591
  %508 = icmp ult i64 %507, %55, !dbg !3591
  br i1 %508, label %513, label %509, !dbg !3591

509:                                              ; preds = %503, %498
  %510 = phi i32 [ %504, %503 ], [ %499, %498 ]
  %511 = phi i64 [ %505, %503 ], [ %500, %498 ]
  %512 = mul i64 %511, %55, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %512, metadata !3572, metadata !DIExpression()), !dbg !3589
  br label %513, !dbg !3635

513:                                              ; preds = %509, %503, %498
  %514 = phi i32 [ %510, %509 ], [ %499, %498 ], [ %504, %503 ]
  %515 = phi i64 [ %512, %509 ], [ 9223372036854775807, %498 ], [ -9223372036854775808, %503 ], !dbg !3589
  %516 = phi i32 [ 0, %509 ], [ 1, %498 ], [ 1, %503 ], !dbg !3589
  %517 = or i32 %516, %514, !dbg !3636
  call void @llvm.dbg.value(metadata i32 %517, metadata !3555, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3587
  br label %977, !dbg !3612

518:                                              ; preds = %61
  %519 = icmp eq i64 %31, -1, !dbg !3586
  br i1 %519, label %527, label %520, !dbg !3586

520:                                              ; preds = %518
  %521 = sub i64 0, %31, !dbg !3586
  %522 = udiv i64 -9223372036854775808, %521, !dbg !3586
  %523 = icmp ult i64 %522, %55, !dbg !3586
  br i1 %523, label %535, label %527, !dbg !3586

524:                                              ; preds = %61
  %525 = udiv i64 9223372036854775807, %55, !dbg !3586
  %526 = icmp ult i64 %525, %31, !dbg !3586
  br i1 %526, label %530, label %527, !dbg !3586

527:                                              ; preds = %518, %520, %524
  %528 = mul i64 %31, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %528, metadata !3572, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 7, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %529 = icmp slt i64 %528, 0, !dbg !3586
  br i1 %529, label %535, label %530, !dbg !3586

530:                                              ; preds = %524, %527
  %531 = phi i32 [ 0, %527 ], [ 1, %524 ]
  %532 = phi i64 [ %528, %527 ], [ 9223372036854775807, %524 ]
  %533 = udiv i64 9223372036854775807, %55, !dbg !3586
  %534 = icmp ult i64 %533, %532, !dbg !3586
  br i1 %534, label %546, label %541, !dbg !3586

535:                                              ; preds = %520, %527
  %536 = phi i32 [ 0, %527 ], [ 1, %520 ]
  %537 = phi i64 [ %528, %527 ], [ -9223372036854775808, %520 ]
  %538 = sub i64 0, %537, !dbg !3586
  %539 = udiv i64 -9223372036854775808, %538, !dbg !3586
  %540 = icmp ult i64 %539, %55, !dbg !3586
  br i1 %540, label %551, label %541, !dbg !3586

541:                                              ; preds = %530, %535
  %542 = phi i32 [ %536, %535 ], [ %531, %530 ]
  %543 = phi i64 [ %537, %535 ], [ %532, %530 ]
  %544 = mul i64 %543, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %544, metadata !3572, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %542, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 6, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %545 = icmp slt i64 %544, 0, !dbg !3586
  br i1 %545, label %551, label %546, !dbg !3586

546:                                              ; preds = %530, %541
  %547 = phi i32 [ %542, %541 ], [ 1, %530 ]
  %548 = phi i64 [ %544, %541 ], [ 9223372036854775807, %530 ]
  %549 = udiv i64 9223372036854775807, %55, !dbg !3586
  %550 = icmp ult i64 %549, %548, !dbg !3586
  br i1 %550, label %562, label %557, !dbg !3586

551:                                              ; preds = %535, %541
  %552 = phi i32 [ %542, %541 ], [ 1, %535 ]
  %553 = phi i64 [ %544, %541 ], [ -9223372036854775808, %535 ]
  %554 = sub i64 0, %553, !dbg !3586
  %555 = udiv i64 -9223372036854775808, %554, !dbg !3586
  %556 = icmp ult i64 %555, %55, !dbg !3586
  br i1 %556, label %567, label %557, !dbg !3586

557:                                              ; preds = %546, %551
  %558 = phi i32 [ %552, %551 ], [ %547, %546 ]
  %559 = phi i64 [ %553, %551 ], [ %548, %546 ]
  %560 = mul i64 %559, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %560, metadata !3572, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %558, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 5, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %561 = icmp slt i64 %560, 0, !dbg !3586
  br i1 %561, label %567, label %562, !dbg !3586

562:                                              ; preds = %546, %557
  %563 = phi i32 [ %558, %557 ], [ 1, %546 ]
  %564 = phi i64 [ %560, %557 ], [ 9223372036854775807, %546 ]
  %565 = udiv i64 9223372036854775807, %55, !dbg !3586
  %566 = icmp ult i64 %565, %564, !dbg !3586
  br i1 %566, label %578, label %573, !dbg !3586

567:                                              ; preds = %551, %557
  %568 = phi i32 [ %558, %557 ], [ 1, %551 ]
  %569 = phi i64 [ %560, %557 ], [ -9223372036854775808, %551 ]
  %570 = sub i64 0, %569, !dbg !3586
  %571 = udiv i64 -9223372036854775808, %570, !dbg !3586
  %572 = icmp ult i64 %571, %55, !dbg !3586
  br i1 %572, label %583, label %573, !dbg !3586

573:                                              ; preds = %562, %567
  %574 = phi i32 [ %568, %567 ], [ %563, %562 ]
  %575 = phi i64 [ %569, %567 ], [ %564, %562 ]
  %576 = mul i64 %575, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %576, metadata !3572, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %574, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 4, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %577 = icmp slt i64 %576, 0, !dbg !3586
  br i1 %577, label %583, label %578, !dbg !3586

578:                                              ; preds = %562, %573
  %579 = phi i32 [ %574, %573 ], [ 1, %562 ]
  %580 = phi i64 [ %576, %573 ], [ 9223372036854775807, %562 ]
  %581 = udiv i64 9223372036854775807, %55, !dbg !3586
  %582 = icmp ult i64 %581, %580, !dbg !3586
  br i1 %582, label %594, label %589, !dbg !3586

583:                                              ; preds = %567, %573
  %584 = phi i32 [ %574, %573 ], [ 1, %567 ]
  %585 = phi i64 [ %576, %573 ], [ -9223372036854775808, %567 ]
  %586 = sub i64 0, %585, !dbg !3586
  %587 = udiv i64 -9223372036854775808, %586, !dbg !3586
  %588 = icmp ult i64 %587, %55, !dbg !3586
  br i1 %588, label %599, label %589, !dbg !3586

589:                                              ; preds = %578, %583
  %590 = phi i32 [ %584, %583 ], [ %579, %578 ]
  %591 = phi i64 [ %585, %583 ], [ %580, %578 ]
  %592 = mul i64 %591, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %592, metadata !3572, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %590, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 3, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %593 = icmp slt i64 %592, 0, !dbg !3586
  br i1 %593, label %599, label %594, !dbg !3586

594:                                              ; preds = %578, %589
  %595 = phi i32 [ %590, %589 ], [ 1, %578 ]
  %596 = phi i64 [ %592, %589 ], [ 9223372036854775807, %578 ]
  %597 = udiv i64 9223372036854775807, %55, !dbg !3586
  %598 = icmp ult i64 %597, %596, !dbg !3586
  br i1 %598, label %610, label %605, !dbg !3586

599:                                              ; preds = %583, %589
  %600 = phi i32 [ %590, %589 ], [ 1, %583 ]
  %601 = phi i64 [ %592, %589 ], [ -9223372036854775808, %583 ]
  %602 = sub i64 0, %601, !dbg !3586
  %603 = udiv i64 -9223372036854775808, %602, !dbg !3586
  %604 = icmp ult i64 %603, %55, !dbg !3586
  br i1 %604, label %615, label %605, !dbg !3586

605:                                              ; preds = %594, %599
  %606 = phi i32 [ %600, %599 ], [ %595, %594 ]
  %607 = phi i64 [ %601, %599 ], [ %596, %594 ]
  %608 = mul i64 %607, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %608, metadata !3572, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %606, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 2, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %609 = icmp slt i64 %608, 0, !dbg !3586
  br i1 %609, label %615, label %610, !dbg !3586

610:                                              ; preds = %594, %605
  %611 = phi i32 [ %606, %605 ], [ 1, %594 ]
  %612 = phi i64 [ %608, %605 ], [ 9223372036854775807, %594 ]
  %613 = udiv i64 9223372036854775807, %55, !dbg !3586
  %614 = icmp ult i64 %613, %612, !dbg !3586
  br i1 %614, label %626, label %621, !dbg !3586

615:                                              ; preds = %599, %605
  %616 = phi i32 [ %606, %605 ], [ 1, %599 ]
  %617 = phi i64 [ %608, %605 ], [ -9223372036854775808, %599 ]
  %618 = sub i64 0, %617, !dbg !3586
  %619 = udiv i64 -9223372036854775808, %618, !dbg !3586
  %620 = icmp ult i64 %619, %55, !dbg !3586
  br i1 %620, label %631, label %621, !dbg !3586

621:                                              ; preds = %610, %615
  %622 = phi i32 [ %616, %615 ], [ %611, %610 ]
  %623 = phi i64 [ %617, %615 ], [ %612, %610 ]
  %624 = mul i64 %623, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %624, metadata !3572, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %622, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %625 = icmp slt i64 %624, 0, !dbg !3586
  br i1 %625, label %631, label %626, !dbg !3586

626:                                              ; preds = %610, %621
  %627 = phi i32 [ %622, %621 ], [ 1, %610 ]
  %628 = phi i64 [ %624, %621 ], [ 9223372036854775807, %610 ]
  %629 = udiv i64 9223372036854775807, %55, !dbg !3586
  %630 = icmp ult i64 %629, %628, !dbg !3586
  br i1 %630, label %642, label %637, !dbg !3586

631:                                              ; preds = %615, %621
  %632 = phi i32 [ %622, %621 ], [ 1, %615 ]
  %633 = phi i64 [ %624, %621 ], [ -9223372036854775808, %615 ]
  %634 = sub i64 0, %633, !dbg !3586
  %635 = udiv i64 -9223372036854775808, %634, !dbg !3586
  %636 = icmp ult i64 %635, %55, !dbg !3586
  br i1 %636, label %647, label %637, !dbg !3586

637:                                              ; preds = %626, %631
  %638 = phi i32 [ %632, %631 ], [ %627, %626 ]
  %639 = phi i64 [ %633, %631 ], [ %628, %626 ]
  %640 = mul i64 %639, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %640, metadata !3572, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %638, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3584
  %641 = icmp slt i64 %640, 0, !dbg !3586
  br i1 %641, label %647, label %642, !dbg !3586

642:                                              ; preds = %626, %637
  %643 = phi i32 [ %638, %637 ], [ 1, %626 ]
  %644 = phi i64 [ %640, %637 ], [ 9223372036854775807, %626 ]
  %645 = udiv i64 9223372036854775807, %55, !dbg !3586
  %646 = icmp ult i64 %645, %644, !dbg !3586
  br i1 %646, label %657, label %653, !dbg !3586

647:                                              ; preds = %631, %637
  %648 = phi i32 [ %638, %637 ], [ 1, %631 ]
  %649 = phi i64 [ %640, %637 ], [ -9223372036854775808, %631 ]
  %650 = sub i64 0, %649, !dbg !3586
  %651 = udiv i64 -9223372036854775808, %650, !dbg !3586
  %652 = icmp ult i64 %651, %55, !dbg !3586
  br i1 %652, label %657, label %653, !dbg !3586

653:                                              ; preds = %647, %642
  %654 = phi i32 [ %648, %647 ], [ %643, %642 ]
  %655 = phi i64 [ %649, %647 ], [ %644, %642 ]
  %656 = mul i64 %655, %55, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %656, metadata !3572, metadata !DIExpression()), !dbg !3584
  br label %657, !dbg !3637

657:                                              ; preds = %653, %647, %642
  %658 = phi i32 [ %654, %653 ], [ %643, %642 ], [ %648, %647 ]
  %659 = phi i64 [ %656, %653 ], [ 9223372036854775807, %642 ], [ -9223372036854775808, %647 ], !dbg !3584
  %660 = phi i32 [ 0, %653 ], [ 1, %642 ], [ 1, %647 ], !dbg !3584
  %661 = or i32 %660, %658, !dbg !3638
  call void @llvm.dbg.value(metadata i32 %661, metadata !3555, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3582
  br label %977, !dbg !3612

662:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3560, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 poison, metadata !3561, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 3, metadata !3562, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3641
  %663 = icmp slt i64 %31, 0, !dbg !3643
  br i1 %663, label %664, label %670, !dbg !3643

664:                                              ; preds = %662
  %665 = icmp eq i64 %31, -1, !dbg !3643
  br i1 %665, label %673, label %666, !dbg !3643

666:                                              ; preds = %664
  %667 = sub i64 0, %31, !dbg !3643
  %668 = udiv i64 -9223372036854775808, %667, !dbg !3643
  %669 = icmp ult i64 %668, %55, !dbg !3643
  br i1 %669, label %681, label %673, !dbg !3643

670:                                              ; preds = %662
  %671 = udiv i64 9223372036854775807, %55, !dbg !3643
  %672 = icmp ult i64 %671, %31, !dbg !3643
  br i1 %672, label %676, label %673, !dbg !3643

673:                                              ; preds = %664, %666, %670
  %674 = mul i64 %31, %55, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %674, metadata !3572, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 2, metadata !3562, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3641
  %675 = icmp slt i64 %674, 0, !dbg !3643
  br i1 %675, label %681, label %676, !dbg !3643

676:                                              ; preds = %670, %673
  %677 = phi i32 [ 0, %673 ], [ 1, %670 ]
  %678 = phi i64 [ %674, %673 ], [ 9223372036854775807, %670 ]
  %679 = udiv i64 9223372036854775807, %55, !dbg !3643
  %680 = icmp ult i64 %679, %678, !dbg !3643
  br i1 %680, label %692, label %687, !dbg !3643

681:                                              ; preds = %666, %673
  %682 = phi i32 [ 0, %673 ], [ 1, %666 ]
  %683 = phi i64 [ %674, %673 ], [ -9223372036854775808, %666 ]
  %684 = sub i64 0, %683, !dbg !3643
  %685 = udiv i64 -9223372036854775808, %684, !dbg !3643
  %686 = icmp ult i64 %685, %55, !dbg !3643
  br i1 %686, label %697, label %687, !dbg !3643

687:                                              ; preds = %676, %681
  %688 = phi i32 [ %682, %681 ], [ %677, %676 ]
  %689 = phi i64 [ %683, %681 ], [ %678, %676 ]
  %690 = mul i64 %689, %55, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %690, metadata !3572, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %688, metadata !3555, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3641
  %691 = icmp slt i64 %690, 0, !dbg !3643
  br i1 %691, label %697, label %692, !dbg !3643

692:                                              ; preds = %676, %687
  %693 = phi i32 [ %688, %687 ], [ 1, %676 ]
  %694 = phi i64 [ %690, %687 ], [ 9223372036854775807, %676 ]
  %695 = udiv i64 9223372036854775807, %55, !dbg !3643
  %696 = icmp ult i64 %695, %694, !dbg !3643
  br i1 %696, label %708, label %703, !dbg !3643

697:                                              ; preds = %681, %687
  %698 = phi i32 [ %688, %687 ], [ 1, %681 ]
  %699 = phi i64 [ %690, %687 ], [ -9223372036854775808, %681 ]
  %700 = sub i64 0, %699, !dbg !3643
  %701 = udiv i64 -9223372036854775808, %700, !dbg !3643
  %702 = icmp ult i64 %701, %55, !dbg !3643
  br i1 %702, label %713, label %703, !dbg !3643

703:                                              ; preds = %692, %697
  %704 = phi i32 [ %698, %697 ], [ %693, %692 ]
  %705 = phi i64 [ %699, %697 ], [ %694, %692 ]
  %706 = mul i64 %705, %55, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %706, metadata !3572, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %704, metadata !3555, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3641
  %707 = icmp slt i64 %706, 0, !dbg !3643
  br i1 %707, label %713, label %708, !dbg !3643

708:                                              ; preds = %692, %703
  %709 = phi i32 [ %704, %703 ], [ 1, %692 ]
  %710 = phi i64 [ %706, %703 ], [ 9223372036854775807, %692 ]
  %711 = udiv i64 9223372036854775807, %55, !dbg !3643
  %712 = icmp ult i64 %711, %710, !dbg !3643
  br i1 %712, label %723, label %719, !dbg !3643

713:                                              ; preds = %697, %703
  %714 = phi i32 [ %704, %703 ], [ 1, %697 ]
  %715 = phi i64 [ %706, %703 ], [ -9223372036854775808, %697 ]
  %716 = sub i64 0, %715, !dbg !3643
  %717 = udiv i64 -9223372036854775808, %716, !dbg !3643
  %718 = icmp ult i64 %717, %55, !dbg !3643
  br i1 %718, label %723, label %719, !dbg !3643

719:                                              ; preds = %713, %708
  %720 = phi i32 [ %714, %713 ], [ %709, %708 ]
  %721 = phi i64 [ %715, %713 ], [ %710, %708 ]
  %722 = mul i64 %721, %55, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %722, metadata !3572, metadata !DIExpression()), !dbg !3641
  br label %723, !dbg !3644

723:                                              ; preds = %719, %713, %708
  %724 = phi i32 [ %720, %719 ], [ %709, %708 ], [ %714, %713 ]
  %725 = phi i64 [ %722, %719 ], [ 9223372036854775807, %708 ], [ -9223372036854775808, %713 ], !dbg !3641
  %726 = phi i32 [ 0, %719 ], [ 1, %708 ], [ 1, %713 ], !dbg !3641
  %727 = or i32 %726, %724, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %727, metadata !3555, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3639
  br label %977, !dbg !3612

728:                                              ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 2, metadata !3571, metadata !DIExpression()), !dbg !3646
  %729 = icmp slt i64 %31, 0, !dbg !3648
  br i1 %729, label %730, label %733, !dbg !3648

730:                                              ; preds = %728
  %731 = add i64 %31, -1, !dbg !3648
  %732 = icmp ult i64 %731, -4611686018427387905, !dbg !3648
  br i1 %732, label %977, label %735, !dbg !3648

733:                                              ; preds = %728
  %734 = icmp ugt i64 %31, 4611686018427387903, !dbg !3648
  br i1 %734, label %977, label %735, !dbg !3648

735:                                              ; preds = %730, %733
  %736 = shl nsw i64 %31, 1, !dbg !3648
  call void @llvm.dbg.value(metadata i64 %736, metadata !3572, metadata !DIExpression()), !dbg !3646
  br label %977, !dbg !3649

737:                                              ; preds = %59
  %738 = icmp eq i64 %31, -1, !dbg !3581
  br i1 %738, label %746, label %739, !dbg !3581

739:                                              ; preds = %737
  %740 = sub i64 0, %31, !dbg !3581
  %741 = udiv i64 -9223372036854775808, %740, !dbg !3581
  %742 = icmp ult i64 %741, %55, !dbg !3581
  br i1 %742, label %754, label %746, !dbg !3581

743:                                              ; preds = %59
  %744 = udiv i64 9223372036854775807, %55, !dbg !3581
  %745 = icmp ult i64 %744, %31, !dbg !3581
  br i1 %745, label %749, label %746, !dbg !3581

746:                                              ; preds = %737, %739, %743
  %747 = mul i64 %31, %55, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %747, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 6, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3579
  %748 = icmp slt i64 %747, 0, !dbg !3581
  br i1 %748, label %754, label %749, !dbg !3581

749:                                              ; preds = %743, %746
  %750 = phi i32 [ 0, %746 ], [ 1, %743 ]
  %751 = phi i64 [ %747, %746 ], [ 9223372036854775807, %743 ]
  %752 = udiv i64 9223372036854775807, %55, !dbg !3581
  %753 = icmp ult i64 %752, %751, !dbg !3581
  br i1 %753, label %765, label %760, !dbg !3581

754:                                              ; preds = %739, %746
  %755 = phi i32 [ 0, %746 ], [ 1, %739 ]
  %756 = phi i64 [ %747, %746 ], [ -9223372036854775808, %739 ]
  %757 = sub i64 0, %756, !dbg !3581
  %758 = udiv i64 -9223372036854775808, %757, !dbg !3581
  %759 = icmp ult i64 %758, %55, !dbg !3581
  br i1 %759, label %770, label %760, !dbg !3581

760:                                              ; preds = %749, %754
  %761 = phi i32 [ %755, %754 ], [ %750, %749 ]
  %762 = phi i64 [ %756, %754 ], [ %751, %749 ]
  %763 = mul i64 %762, %55, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %763, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 %761, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 5, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3579
  %764 = icmp slt i64 %763, 0, !dbg !3581
  br i1 %764, label %770, label %765, !dbg !3581

765:                                              ; preds = %749, %760
  %766 = phi i32 [ %761, %760 ], [ 1, %749 ]
  %767 = phi i64 [ %763, %760 ], [ 9223372036854775807, %749 ]
  %768 = udiv i64 9223372036854775807, %55, !dbg !3581
  %769 = icmp ult i64 %768, %767, !dbg !3581
  br i1 %769, label %781, label %776, !dbg !3581

770:                                              ; preds = %754, %760
  %771 = phi i32 [ %761, %760 ], [ 1, %754 ]
  %772 = phi i64 [ %763, %760 ], [ -9223372036854775808, %754 ]
  %773 = sub i64 0, %772, !dbg !3581
  %774 = udiv i64 -9223372036854775808, %773, !dbg !3581
  %775 = icmp ult i64 %774, %55, !dbg !3581
  br i1 %775, label %786, label %776, !dbg !3581

776:                                              ; preds = %765, %770
  %777 = phi i32 [ %771, %770 ], [ %766, %765 ]
  %778 = phi i64 [ %772, %770 ], [ %767, %765 ]
  %779 = mul i64 %778, %55, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %779, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 %777, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 4, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3579
  %780 = icmp slt i64 %779, 0, !dbg !3581
  br i1 %780, label %786, label %781, !dbg !3581

781:                                              ; preds = %765, %776
  %782 = phi i32 [ %777, %776 ], [ 1, %765 ]
  %783 = phi i64 [ %779, %776 ], [ 9223372036854775807, %765 ]
  %784 = udiv i64 9223372036854775807, %55, !dbg !3581
  %785 = icmp ult i64 %784, %783, !dbg !3581
  br i1 %785, label %797, label %792, !dbg !3581

786:                                              ; preds = %770, %776
  %787 = phi i32 [ %777, %776 ], [ 1, %770 ]
  %788 = phi i64 [ %779, %776 ], [ -9223372036854775808, %770 ]
  %789 = sub i64 0, %788, !dbg !3581
  %790 = udiv i64 -9223372036854775808, %789, !dbg !3581
  %791 = icmp ult i64 %790, %55, !dbg !3581
  br i1 %791, label %802, label %792, !dbg !3581

792:                                              ; preds = %781, %786
  %793 = phi i32 [ %787, %786 ], [ %782, %781 ]
  %794 = phi i64 [ %788, %786 ], [ %783, %781 ]
  %795 = mul i64 %794, %55, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %795, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 %793, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 3, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3579
  %796 = icmp slt i64 %795, 0, !dbg !3581
  br i1 %796, label %802, label %797, !dbg !3581

797:                                              ; preds = %781, %792
  %798 = phi i32 [ %793, %792 ], [ 1, %781 ]
  %799 = phi i64 [ %795, %792 ], [ 9223372036854775807, %781 ]
  %800 = udiv i64 9223372036854775807, %55, !dbg !3581
  %801 = icmp ult i64 %800, %799, !dbg !3581
  br i1 %801, label %813, label %808, !dbg !3581

802:                                              ; preds = %786, %792
  %803 = phi i32 [ %793, %792 ], [ 1, %786 ]
  %804 = phi i64 [ %795, %792 ], [ -9223372036854775808, %786 ]
  %805 = sub i64 0, %804, !dbg !3581
  %806 = udiv i64 -9223372036854775808, %805, !dbg !3581
  %807 = icmp ult i64 %806, %55, !dbg !3581
  br i1 %807, label %818, label %808, !dbg !3581

808:                                              ; preds = %797, %802
  %809 = phi i32 [ %803, %802 ], [ %798, %797 ]
  %810 = phi i64 [ %804, %802 ], [ %799, %797 ]
  %811 = mul i64 %810, %55, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %811, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 %809, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 2, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3579
  %812 = icmp slt i64 %811, 0, !dbg !3581
  br i1 %812, label %818, label %813, !dbg !3581

813:                                              ; preds = %797, %808
  %814 = phi i32 [ %809, %808 ], [ 1, %797 ]
  %815 = phi i64 [ %811, %808 ], [ 9223372036854775807, %797 ]
  %816 = udiv i64 9223372036854775807, %55, !dbg !3581
  %817 = icmp ult i64 %816, %815, !dbg !3581
  br i1 %817, label %829, label %824, !dbg !3581

818:                                              ; preds = %802, %808
  %819 = phi i32 [ %809, %808 ], [ 1, %802 ]
  %820 = phi i64 [ %811, %808 ], [ -9223372036854775808, %802 ]
  %821 = sub i64 0, %820, !dbg !3581
  %822 = udiv i64 -9223372036854775808, %821, !dbg !3581
  %823 = icmp ult i64 %822, %55, !dbg !3581
  br i1 %823, label %834, label %824, !dbg !3581

824:                                              ; preds = %813, %818
  %825 = phi i32 [ %819, %818 ], [ %814, %813 ]
  %826 = phi i64 [ %820, %818 ], [ %815, %813 ]
  %827 = mul i64 %826, %55, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %827, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 %825, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3579
  %828 = icmp slt i64 %827, 0, !dbg !3581
  br i1 %828, label %834, label %829, !dbg !3581

829:                                              ; preds = %813, %824
  %830 = phi i32 [ %825, %824 ], [ 1, %813 ]
  %831 = phi i64 [ %827, %824 ], [ 9223372036854775807, %813 ]
  %832 = udiv i64 9223372036854775807, %55, !dbg !3581
  %833 = icmp ult i64 %832, %831, !dbg !3581
  br i1 %833, label %845, label %840, !dbg !3581

834:                                              ; preds = %818, %824
  %835 = phi i32 [ %825, %824 ], [ 1, %818 ]
  %836 = phi i64 [ %827, %824 ], [ -9223372036854775808, %818 ]
  %837 = sub i64 0, %836, !dbg !3581
  %838 = udiv i64 -9223372036854775808, %837, !dbg !3581
  %839 = icmp ult i64 %838, %55, !dbg !3581
  br i1 %839, label %850, label %840, !dbg !3581

840:                                              ; preds = %829, %834
  %841 = phi i32 [ %835, %834 ], [ %830, %829 ]
  %842 = phi i64 [ %836, %834 ], [ %831, %829 ]
  %843 = mul i64 %842, %55, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %843, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 %841, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3579
  %844 = icmp slt i64 %843, 0, !dbg !3581
  br i1 %844, label %850, label %845, !dbg !3581

845:                                              ; preds = %829, %840
  %846 = phi i32 [ %841, %840 ], [ 1, %829 ]
  %847 = phi i64 [ %843, %840 ], [ 9223372036854775807, %829 ]
  %848 = udiv i64 9223372036854775807, %55, !dbg !3581
  %849 = icmp ult i64 %848, %847, !dbg !3581
  br i1 %849, label %860, label %856, !dbg !3581

850:                                              ; preds = %834, %840
  %851 = phi i32 [ %841, %840 ], [ 1, %834 ]
  %852 = phi i64 [ %843, %840 ], [ -9223372036854775808, %834 ]
  %853 = sub i64 0, %852, !dbg !3581
  %854 = udiv i64 -9223372036854775808, %853, !dbg !3581
  %855 = icmp ult i64 %854, %55, !dbg !3581
  br i1 %855, label %860, label %856, !dbg !3581

856:                                              ; preds = %850, %845
  %857 = phi i32 [ %851, %850 ], [ %846, %845 ]
  %858 = phi i64 [ %852, %850 ], [ %847, %845 ]
  %859 = mul i64 %858, %55, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %859, metadata !3572, metadata !DIExpression()), !dbg !3579
  br label %860, !dbg !3650

860:                                              ; preds = %856, %850, %845
  %861 = phi i32 [ %857, %856 ], [ %846, %845 ], [ %851, %850 ]
  %862 = phi i64 [ %859, %856 ], [ 9223372036854775807, %845 ], [ -9223372036854775808, %850 ], !dbg !3579
  %863 = phi i32 [ 0, %856 ], [ 1, %845 ], [ 1, %850 ], !dbg !3579
  %864 = or i32 %863, %861, !dbg !3651
  call void @llvm.dbg.value(metadata i32 %864, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3577
  br label %977, !dbg !3612

865:                                              ; preds = %57
  %866 = icmp eq i64 %31, -1, !dbg !3575
  br i1 %866, label %874, label %867, !dbg !3575

867:                                              ; preds = %865
  %868 = sub i64 0, %31, !dbg !3575
  %869 = udiv i64 -9223372036854775808, %868, !dbg !3575
  %870 = icmp ult i64 %869, %55, !dbg !3575
  br i1 %870, label %882, label %874, !dbg !3575

871:                                              ; preds = %57
  %872 = udiv i64 9223372036854775807, %55, !dbg !3575
  %873 = icmp ult i64 %872, %31, !dbg !3575
  br i1 %873, label %877, label %874, !dbg !3575

874:                                              ; preds = %865, %867, %871
  %875 = mul i64 %31, %55, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %875, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 5, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3573
  %876 = icmp slt i64 %875, 0, !dbg !3575
  br i1 %876, label %882, label %877, !dbg !3575

877:                                              ; preds = %871, %874
  %878 = phi i32 [ 0, %874 ], [ 1, %871 ]
  %879 = phi i64 [ %875, %874 ], [ 9223372036854775807, %871 ]
  %880 = udiv i64 9223372036854775807, %55, !dbg !3575
  %881 = icmp ult i64 %880, %879, !dbg !3575
  br i1 %881, label %893, label %888, !dbg !3575

882:                                              ; preds = %867, %874
  %883 = phi i32 [ 0, %874 ], [ 1, %867 ]
  %884 = phi i64 [ %875, %874 ], [ -9223372036854775808, %867 ]
  %885 = sub i64 0, %884, !dbg !3575
  %886 = udiv i64 -9223372036854775808, %885, !dbg !3575
  %887 = icmp ult i64 %886, %55, !dbg !3575
  br i1 %887, label %898, label %888, !dbg !3575

888:                                              ; preds = %877, %882
  %889 = phi i32 [ %883, %882 ], [ %878, %877 ]
  %890 = phi i64 [ %884, %882 ], [ %879, %877 ]
  %891 = mul i64 %890, %55, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %891, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %889, metadata !3555, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 4, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3573
  %892 = icmp slt i64 %891, 0, !dbg !3575
  br i1 %892, label %898, label %893, !dbg !3575

893:                                              ; preds = %877, %888
  %894 = phi i32 [ %889, %888 ], [ 1, %877 ]
  %895 = phi i64 [ %891, %888 ], [ 9223372036854775807, %877 ]
  %896 = udiv i64 9223372036854775807, %55, !dbg !3575
  %897 = icmp ult i64 %896, %895, !dbg !3575
  br i1 %897, label %909, label %904, !dbg !3575

898:                                              ; preds = %882, %888
  %899 = phi i32 [ %889, %888 ], [ 1, %882 ]
  %900 = phi i64 [ %891, %888 ], [ -9223372036854775808, %882 ]
  %901 = sub i64 0, %900, !dbg !3575
  %902 = udiv i64 -9223372036854775808, %901, !dbg !3575
  %903 = icmp ult i64 %902, %55, !dbg !3575
  br i1 %903, label %914, label %904, !dbg !3575

904:                                              ; preds = %893, %898
  %905 = phi i32 [ %899, %898 ], [ %894, %893 ]
  %906 = phi i64 [ %900, %898 ], [ %895, %893 ]
  %907 = mul i64 %906, %55, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %907, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %905, metadata !3555, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 3, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3573
  %908 = icmp slt i64 %907, 0, !dbg !3575
  br i1 %908, label %914, label %909, !dbg !3575

909:                                              ; preds = %893, %904
  %910 = phi i32 [ %905, %904 ], [ 1, %893 ]
  %911 = phi i64 [ %907, %904 ], [ 9223372036854775807, %893 ]
  %912 = udiv i64 9223372036854775807, %55, !dbg !3575
  %913 = icmp ult i64 %912, %911, !dbg !3575
  br i1 %913, label %925, label %920, !dbg !3575

914:                                              ; preds = %898, %904
  %915 = phi i32 [ %905, %904 ], [ 1, %898 ]
  %916 = phi i64 [ %907, %904 ], [ -9223372036854775808, %898 ]
  %917 = sub i64 0, %916, !dbg !3575
  %918 = udiv i64 -9223372036854775808, %917, !dbg !3575
  %919 = icmp ult i64 %918, %55, !dbg !3575
  br i1 %919, label %930, label %920, !dbg !3575

920:                                              ; preds = %909, %914
  %921 = phi i32 [ %915, %914 ], [ %910, %909 ]
  %922 = phi i64 [ %916, %914 ], [ %911, %909 ]
  %923 = mul i64 %922, %55, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %923, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %921, metadata !3555, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 2, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3573
  %924 = icmp slt i64 %923, 0, !dbg !3575
  br i1 %924, label %930, label %925, !dbg !3575

925:                                              ; preds = %909, %920
  %926 = phi i32 [ %921, %920 ], [ 1, %909 ]
  %927 = phi i64 [ %923, %920 ], [ 9223372036854775807, %909 ]
  %928 = udiv i64 9223372036854775807, %55, !dbg !3575
  %929 = icmp ult i64 %928, %927, !dbg !3575
  br i1 %929, label %941, label %936, !dbg !3575

930:                                              ; preds = %914, %920
  %931 = phi i32 [ %921, %920 ], [ 1, %914 ]
  %932 = phi i64 [ %923, %920 ], [ -9223372036854775808, %914 ]
  %933 = sub i64 0, %932, !dbg !3575
  %934 = udiv i64 -9223372036854775808, %933, !dbg !3575
  %935 = icmp ult i64 %934, %55, !dbg !3575
  br i1 %935, label %946, label %936, !dbg !3575

936:                                              ; preds = %925, %930
  %937 = phi i32 [ %931, %930 ], [ %926, %925 ]
  %938 = phi i64 [ %932, %930 ], [ %927, %925 ]
  %939 = mul i64 %938, %55, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %939, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %937, metadata !3555, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 1, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3573
  %940 = icmp slt i64 %939, 0, !dbg !3575
  br i1 %940, label %946, label %941, !dbg !3575

941:                                              ; preds = %925, %936
  %942 = phi i32 [ %937, %936 ], [ 1, %925 ]
  %943 = phi i64 [ %939, %936 ], [ 9223372036854775807, %925 ]
  %944 = udiv i64 9223372036854775807, %55, !dbg !3575
  %945 = icmp ult i64 %944, %943, !dbg !3575
  br i1 %945, label %957, label %952, !dbg !3575

946:                                              ; preds = %930, %936
  %947 = phi i32 [ %937, %936 ], [ 1, %930 ]
  %948 = phi i64 [ %939, %936 ], [ -9223372036854775808, %930 ]
  %949 = sub i64 0, %948, !dbg !3575
  %950 = udiv i64 -9223372036854775808, %949, !dbg !3575
  %951 = icmp ult i64 %950, %55, !dbg !3575
  br i1 %951, label %962, label %952, !dbg !3575

952:                                              ; preds = %941, %946
  %953 = phi i32 [ %947, %946 ], [ %942, %941 ]
  %954 = phi i64 [ %948, %946 ], [ %943, %941 ]
  %955 = mul i64 %954, %55, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %955, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %953, metadata !3555, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr undef, metadata !3566, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3571, metadata !DIExpression()), !dbg !3573
  %956 = icmp slt i64 %955, 0, !dbg !3575
  br i1 %956, label %962, label %957, !dbg !3575

957:                                              ; preds = %941, %952
  %958 = phi i32 [ %953, %952 ], [ 1, %941 ]
  %959 = phi i64 [ %955, %952 ], [ 9223372036854775807, %941 ]
  %960 = udiv i64 9223372036854775807, %55, !dbg !3575
  %961 = icmp ult i64 %960, %959, !dbg !3575
  br i1 %961, label %972, label %968, !dbg !3575

962:                                              ; preds = %946, %952
  %963 = phi i32 [ %953, %952 ], [ 1, %946 ]
  %964 = phi i64 [ %955, %952 ], [ -9223372036854775808, %946 ]
  %965 = sub i64 0, %964, !dbg !3575
  %966 = udiv i64 -9223372036854775808, %965, !dbg !3575
  %967 = icmp ult i64 %966, %55, !dbg !3575
  br i1 %967, label %972, label %968, !dbg !3575

968:                                              ; preds = %962, %957
  %969 = phi i32 [ %963, %962 ], [ %958, %957 ]
  %970 = phi i64 [ %964, %962 ], [ %959, %957 ]
  %971 = mul i64 %970, %55, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %971, metadata !3572, metadata !DIExpression()), !dbg !3573
  br label %972, !dbg !3652

972:                                              ; preds = %968, %962, %957
  %973 = phi i32 [ %969, %968 ], [ %958, %957 ], [ %963, %962 ]
  %974 = phi i64 [ %971, %968 ], [ 9223372036854775807, %957 ], [ -9223372036854775808, %962 ], !dbg !3573
  %975 = phi i32 [ 0, %968 ], [ 1, %957 ], [ 1, %962 ], !dbg !3573
  %976 = or i32 %975, %973, !dbg !3653
  call void @llvm.dbg.value(metadata i32 %976, metadata !3555, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3563
  br label %977, !dbg !3612

977:                                              ; preds = %235, %239, %242, %972, %860, %723, %657, %513, %353, %273, %226, %176, %730, %79, %71, %54, %73, %75, %81, %83, %733, %735
  %978 = phi i64 [ %31, %54 ], [ %76, %75 ], [ 9223372036854775807, %73 ], [ %84, %83 ], [ 9223372036854775807, %81 ], [ %736, %735 ], [ 9223372036854775807, %733 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %79 ], [ -9223372036854775808, %730 ], [ %178, %176 ], [ %228, %226 ], [ %275, %273 ], [ %355, %353 ], [ %515, %513 ], [ %659, %657 ], [ %725, %723 ], [ %862, %860 ], [ %974, %972 ], [ %243, %242 ], [ 9223372036854775807, %239 ], [ -9223372036854775808, %235 ], !dbg !3501
  %979 = phi i32 [ 0, %54 ], [ 0, %75 ], [ 1, %73 ], [ 0, %83 ], [ 1, %81 ], [ 0, %735 ], [ 1, %733 ], [ 1, %71 ], [ 1, %79 ], [ 1, %730 ], [ %180, %176 ], [ %230, %226 ], [ %277, %273 ], [ %357, %353 ], [ %517, %513 ], [ %661, %657 ], [ %727, %723 ], [ %864, %860 ], [ %976, %972 ], [ 0, %242 ], [ 1, %239 ], [ 1, %235 ], !dbg !3654
  call void @llvm.dbg.value(metadata i32 %979, metadata !3500, metadata !DIExpression()), !dbg !3540
  %980 = or i32 %979, %30, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %980, metadata !3495, metadata !DIExpression()), !dbg !3501
  %981 = getelementptr inbounds i8, ptr %11, i64 %56, !dbg !3655
  store ptr %981, ptr %8, align 8, !dbg !3655, !tbaa !838
  %982 = load i8, ptr %981, align 1, !dbg !3656, !tbaa !919
  %983 = icmp eq i8 %982, 0, !dbg !3656
  %984 = or i32 %980, 2
  %985 = select i1 %983, i32 %980, i32 %984, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %985, metadata !3495, metadata !DIExpression()), !dbg !3501
  br label %988

986:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64 %10, metadata !3494, metadata !DIExpression()), !dbg !3501
  store i64 %31, ptr %3, align 8, !dbg !3659, !tbaa !1131
  %987 = or i32 %30, 2, !dbg !3660
  call void @llvm.dbg.value(metadata i32 %30, metadata !3495, metadata !DIExpression()), !dbg !3501
  br label %991

988:                                              ; preds = %977, %29
  %989 = phi i64 [ %31, %29 ], [ %978, %977 ], !dbg !3661
  %990 = phi i32 [ %30, %29 ], [ %985, %977 ], !dbg !3662
  call void @llvm.dbg.value(metadata i32 %990, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %989, metadata !3494, metadata !DIExpression()), !dbg !3501
  store i64 %989, ptr %3, align 8, !dbg !3663, !tbaa !1131
  br label %991, !dbg !3664

991:                                              ; preds = %986, %22, %13, %15, %18, %988, %38, %28
  %992 = phi i32 [ %990, %988 ], [ %987, %986 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !3501
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #38, !dbg !3665
  ret i32 %992, !dbg !3665
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !3666 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #35

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3670 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3713
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3714
  call void @llvm.dbg.value(metadata i1 poison, metadata !3709, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3718
  %3 = load i32, ptr %0, align 8, !dbg !3720, !tbaa !1185
  %4 = and i32 %3, 32, !dbg !3721
  %5 = icmp eq i32 %4, 0, !dbg !3721
  call void @llvm.dbg.value(metadata i1 %5, metadata !3711, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3713
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3722
  %7 = icmp eq i32 %6, 0, !dbg !3723
  call void @llvm.dbg.value(metadata i1 %7, metadata !3712, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3713
  br i1 %5, label %8, label %18, !dbg !3724

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3726
  call void @llvm.dbg.value(metadata i1 %9, metadata !3709, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3713
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3727
  %11 = xor i1 %7, true, !dbg !3727
  %12 = sext i1 %11 to i32, !dbg !3727
  br i1 %10, label %21, label %13, !dbg !3727

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3728
  %15 = load i32, ptr %14, align 4, !dbg !3728, !tbaa !910
  %16 = icmp ne i32 %15, 9, !dbg !3729
  %17 = sext i1 %16 to i32, !dbg !3730
  br label %21, !dbg !3730

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3731

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3733
  store i32 0, ptr %20, align 4, !dbg !3735, !tbaa !910
  br label %21, !dbg !3733

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3713
  ret i32 %22, !dbg !3736
}

; Function Attrs: nounwind
declare !dbg !3737 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3741 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3779, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 0, metadata !3780, metadata !DIExpression()), !dbg !3783
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3784
  call void @llvm.dbg.value(metadata i32 %2, metadata !3781, metadata !DIExpression()), !dbg !3783
  %3 = icmp slt i32 %2, 0, !dbg !3785
  br i1 %3, label %4, label %6, !dbg !3787

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3788
  br label %24, !dbg !3789

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3790
  %8 = icmp eq i32 %7, 0, !dbg !3790
  br i1 %8, label %13, label %9, !dbg !3792

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3793
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3794
  %12 = icmp eq i64 %11, -1, !dbg !3795
  br i1 %12, label %16, label %13, !dbg !3796

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3797
  %15 = icmp eq i32 %14, 0, !dbg !3797
  br i1 %15, label %16, label %18, !dbg !3798

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3780, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 0, metadata !3782, metadata !DIExpression()), !dbg !3783
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3799
  call void @llvm.dbg.value(metadata i32 %17, metadata !3782, metadata !DIExpression()), !dbg !3783
  br label %24, !dbg !3800

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3801
  %20 = load i32, ptr %19, align 4, !dbg !3801, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %20, metadata !3780, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 0, metadata !3782, metadata !DIExpression()), !dbg !3783
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3799
  call void @llvm.dbg.value(metadata i32 %21, metadata !3782, metadata !DIExpression()), !dbg !3783
  %22 = icmp eq i32 %20, 0, !dbg !3802
  br i1 %22, label %24, label %23, !dbg !3800

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3804, !tbaa !910
  call void @llvm.dbg.value(metadata i32 -1, metadata !3782, metadata !DIExpression()), !dbg !3783
  br label %24, !dbg !3806

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3783
  ret i32 %25, !dbg !3807
}

; Function Attrs: nofree nounwind
declare !dbg !3808 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3809 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3810 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3811 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3853
  %2 = icmp eq ptr %0, null, !dbg !3854
  br i1 %2, label %6, label %3, !dbg !3856

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3857
  %5 = icmp eq i32 %4, 0, !dbg !3857
  br i1 %5, label %6, label %8, !dbg !3858

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3859
  br label %16, !dbg !3860

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !3866
  %9 = load i32, ptr %0, align 8, !dbg !3868, !tbaa !1185
  %10 = and i32 %9, 256, !dbg !3870
  %11 = icmp eq i32 %10, 0, !dbg !3870
  br i1 %11, label %14, label %12, !dbg !3871

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3872
  br label %14, !dbg !3872

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3873
  br label %16, !dbg !3874

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3853
  ret i32 %17, !dbg !3875
}

; Function Attrs: nofree nounwind
declare !dbg !3876 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3916, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %1, metadata !3917, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 %2, metadata !3918, metadata !DIExpression()), !dbg !3922
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3923
  %5 = load ptr, ptr %4, align 8, !dbg !3923, !tbaa !3924
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3925
  %7 = load ptr, ptr %6, align 8, !dbg !3925, !tbaa !3926
  %8 = icmp eq ptr %5, %7, !dbg !3927
  br i1 %8, label %9, label %27, !dbg !3928

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3929
  %11 = load ptr, ptr %10, align 8, !dbg !3929, !tbaa !1399
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3930
  %13 = load ptr, ptr %12, align 8, !dbg !3930, !tbaa !3931
  %14 = icmp eq ptr %11, %13, !dbg !3932
  br i1 %14, label %15, label %27, !dbg !3933

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3934
  %17 = load ptr, ptr %16, align 8, !dbg !3934, !tbaa !3935
  %18 = icmp eq ptr %17, null, !dbg !3936
  br i1 %18, label %19, label %27, !dbg !3937

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3938
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %21, metadata !3919, metadata !DIExpression()), !dbg !3940
  %22 = icmp eq i64 %21, -1, !dbg !3941
  br i1 %22, label %29, label %23, !dbg !3943

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3944, !tbaa !1185
  %25 = and i32 %24, -17, !dbg !3944
  store i32 %25, ptr %0, align 8, !dbg !3944, !tbaa !1185
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3945
  store i64 %21, ptr %26, align 8, !dbg !3946, !tbaa !3947
  br label %29, !dbg !3948

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3949
  br label %29, !dbg !3950

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3922
  ret i32 %30, !dbg !3951
}

; Function Attrs: nofree nounwind
declare !dbg !3952 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3955 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3960, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %1, metadata !3961, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %2, metadata !3962, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %3, metadata !3963, metadata !DIExpression()), !dbg !3965
  %5 = icmp eq ptr %1, null, !dbg !3966
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3968
  %7 = select i1 %5, ptr @.str.131, ptr %1, !dbg !3968
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3968
  call void @llvm.dbg.value(metadata i64 %8, metadata !3962, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %7, metadata !3961, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %6, metadata !3960, metadata !DIExpression()), !dbg !3965
  %9 = icmp eq ptr %3, null, !dbg !3969
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3971
  call void @llvm.dbg.value(metadata ptr %10, metadata !3963, metadata !DIExpression()), !dbg !3965
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !3972
  call void @llvm.dbg.value(metadata i64 %11, metadata !3964, metadata !DIExpression()), !dbg !3965
  %12 = icmp ult i64 %11, -3, !dbg !3973
  br i1 %12, label %13, label %17, !dbg !3975

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !3976
  %15 = icmp eq i32 %14, 0, !dbg !3976
  br i1 %15, label %16, label %29, !dbg !3977

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3978, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %10, metadata !3985, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i32 0, metadata !3988, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 8, metadata !3989, metadata !DIExpression()), !dbg !3990
  store i64 0, ptr %10, align 1, !dbg !3992
  br label %29, !dbg !3993

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3994
  br i1 %18, label %19, label %20, !dbg !3996

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !3997
  unreachable, !dbg !3997

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3998

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !4000
  br i1 %23, label %29, label %24, !dbg !4001

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4002
  br i1 %25, label %29, label %26, !dbg !4005

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4006, !tbaa !919
  %28 = zext i8 %27 to i32, !dbg !4007
  store i32 %28, ptr %6, align 4, !dbg !4008, !tbaa !910
  br label %29, !dbg !4009

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3965
  ret i64 %30, !dbg !4010
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4011 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4017 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4019, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %2, metadata !4021, metadata !DIExpression()), !dbg !4023
  %4 = icmp eq i64 %2, 0, !dbg !4024
  br i1 %4, label %8, label %5, !dbg !4024

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4024
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4024
  br i1 %7, label %13, label %8, !dbg !4024

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4022, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4023
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4022, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4023
  %9 = mul i64 %2, %1, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %9, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %0, metadata !4026, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %9, metadata !4029, metadata !DIExpression()), !dbg !4030
  %10 = icmp eq i64 %9, 0, !dbg !4032
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4032
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4033
  br label %15, !dbg !4034

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4022, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4023
  %14 = tail call ptr @__errno_location() #41, !dbg !4035
  store i32 12, ptr %14, align 4, !dbg !4037, !tbaa !910
  br label %15, !dbg !4038

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4023
  ret ptr %16, !dbg !4039
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4040 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4042, metadata !DIExpression()), !dbg !4047
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4048
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4043, metadata !DIExpression()), !dbg !4049
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4050
  %4 = icmp eq i32 %3, 0, !dbg !4050
  br i1 %4, label %5, label %12, !dbg !4052

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4053, metadata !DIExpression()), !dbg !4057
  %6 = load i16, ptr %2, align 16, !dbg !4060
  %7 = icmp eq i16 %6, 67, !dbg !4060
  br i1 %7, label %11, label %8, !dbg !4061

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4053, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr @.str.1.136, metadata !4056, metadata !DIExpression()), !dbg !4062
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.136, i64 6), !dbg !4064
  %10 = icmp eq i32 %9, 0, !dbg !4065
  br i1 %10, label %11, label %12, !dbg !4066

11:                                               ; preds = %8, %5
  br label %12, !dbg !4067

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4047
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4068
  ret i1 %13, !dbg !4068
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4069 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4073, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %1, metadata !4074, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i64 %2, metadata !4075, metadata !DIExpression()), !dbg !4076
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4077
  ret i32 %4, !dbg !4078
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4079 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4083, metadata !DIExpression()), !dbg !4084
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4085
  ret ptr %2, !dbg !4086
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4089, metadata !DIExpression()), !dbg !4091
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4092
  call void @llvm.dbg.value(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4091
  ret ptr %2, !dbg !4093
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4094 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4096, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %1, metadata !4097, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %2, metadata !4098, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %0, metadata !4089, metadata !DIExpression()), !dbg !4104
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4106
  call void @llvm.dbg.value(metadata ptr %4, metadata !4090, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %4, metadata !4099, metadata !DIExpression()), !dbg !4103
  %5 = icmp eq ptr %4, null, !dbg !4107
  br i1 %5, label %6, label %9, !dbg !4108

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4109
  br i1 %7, label %19, label %8, !dbg !4112

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4113, !tbaa !919
  br label %19, !dbg !4114

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %10, metadata !4100, metadata !DIExpression()), !dbg !4116
  %11 = icmp ult i64 %10, %2, !dbg !4117
  br i1 %11, label %12, label %14, !dbg !4119

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4120
  call void @llvm.dbg.value(metadata ptr %1, metadata !4122, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %4, metadata !4125, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 %13, metadata !4126, metadata !DIExpression()), !dbg !4127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4129
  br label %19, !dbg !4130

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4131
  br i1 %15, label %19, label %16, !dbg !4134

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4135
  call void @llvm.dbg.value(metadata ptr %1, metadata !4122, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %4, metadata !4125, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %17, metadata !4126, metadata !DIExpression()), !dbg !4137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4139
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4140
  store i8 0, ptr %18, align 1, !dbg !4141, !tbaa !919
  br label %19, !dbg !4142

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4143
  ret i32 %20, !dbg !4144
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!61, !404, !408, !423, !720, !752, !475, !489, !540, !754, !712, !761, !795, !797, !801, !803, !805, !807, !736, !809, !812, !816, !818}
!llvm.ident = !{!820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820, !820}
!llvm.module.flags = !{!821, !822, !823, !824, !825, !826}

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
!61 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !144, globals: !151, splitDebugInlining: false, nameTableKind: None)
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
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 46, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!404 = distinct !DICompileUnit(language: DW_LANG_C11, file: !401, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !405, splitDebugInlining: false, nameTableKind: None)
!405 = !{!399, !402}
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "file_name", scope: !408, file: !409, line: 45, type: !96, isLocal: true, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !410, splitDebugInlining: false, nameTableKind: None)
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
!422 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !423, file: !424, line: 66, type: !470, isLocal: false, isDefinition: true)
!423 = distinct !DICompileUnit(language: DW_LANG_C11, file: !424, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !425, globals: !426, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!425 = !{!145, !150}
!426 = !{!427, !429, !449, !451, !453, !455, !421, !457, !459, !461, !463, !468}
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !424, line: 272, type: !16, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "old_file_name", scope: !431, file: !424, line: 304, type: !96, isLocal: true, isDefinition: true)
!431 = distinct !DISubprogram(name: "verror_at_line", scope: !424, file: !424, line: 298, type: !432, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !442)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !72, !72, !96, !65, !96, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !436)
!436 = !{!437, !439, !440, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !435, file: !438, baseType: !65, size: 32)
!438 = !DIFile(filename: "lib/error.c", directory: "/src")
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !435, file: !438, baseType: !65, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !435, file: !438, baseType: !145, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !435, file: !438, baseType: !145, size: 64, offset: 128)
!442 = !{!443, !444, !445, !446, !447, !448}
!443 = !DILocalVariable(name: "status", arg: 1, scope: !431, file: !424, line: 298, type: !72)
!444 = !DILocalVariable(name: "errnum", arg: 2, scope: !431, file: !424, line: 298, type: !72)
!445 = !DILocalVariable(name: "file_name", arg: 3, scope: !431, file: !424, line: 298, type: !96)
!446 = !DILocalVariable(name: "line_number", arg: 4, scope: !431, file: !424, line: 298, type: !65)
!447 = !DILocalVariable(name: "message", arg: 5, scope: !431, file: !424, line: 298, type: !96)
!448 = !DILocalVariable(name: "args", arg: 6, scope: !431, file: !424, line: 298, type: !434)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "old_line_number", scope: !431, file: !424, line: 305, type: !65, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !424, line: 338, type: !56, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !424, line: 346, type: !304, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !424, line: 346, type: !282, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "error_message_count", scope: !423, file: !424, line: 69, type: !65, isLocal: false, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !423, file: !424, line: 295, type: !72, isLocal: false, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !424, line: 208, type: !299, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !424, line: 208, type: !465, isLocal: true, isDefinition: true)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 21)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !424, line: 214, type: !16, isLocal: true, isDefinition: true)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "program_name", scope: !475, file: !476, line: 31, type: !96, isLocal: false, isDefinition: true)
!475 = distinct !DICompileUnit(language: DW_LANG_C11, file: !476, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !477, globals: !478, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!477 = !{!89}
!478 = !{!473, !479, !481}
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !476, line: 46, type: !304, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !476, line: 49, type: !56, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "utf07FF", scope: !485, file: !486, line: 46, type: !513, isLocal: true, isDefinition: true)
!485 = distinct !DISubprogram(name: "proper_name_lite", scope: !486, file: !486, line: 38, type: !487, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !491)
!486 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!487 = !DISubroutineType(types: !488)
!488 = !{!96, !96, !96}
!489 = distinct !DICompileUnit(language: DW_LANG_C11, file: !486, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !490, splitDebugInlining: false, nameTableKind: None)
!490 = !{!483}
!491 = !{!492, !493, !494, !495, !500}
!492 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !485, file: !486, line: 38, type: !96)
!493 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !485, file: !486, line: 38, type: !96)
!494 = !DILocalVariable(name: "translation", scope: !485, file: !486, line: 40, type: !96)
!495 = !DILocalVariable(name: "w", scope: !485, file: !486, line: 47, type: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !497, line: 37, baseType: !498)
!497 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !242, line: 57, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !242, line: 42, baseType: !65)
!500 = !DILocalVariable(name: "mbs", scope: !485, file: !486, line: 48, type: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !502, line: 6, baseType: !503)
!502 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !504, line: 21, baseType: !505)
!504 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 13, size: 64, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !505, file: !504, line: 15, baseType: !72, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !505, file: !504, line: 20, baseType: !509, size: 32, offset: 32)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !504, line: 16, size: 32, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !509, file: !504, line: 18, baseType: !65, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !509, file: !504, line: 19, baseType: !56, size: 32)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !283)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !516, line: 78, type: !304, isLocal: true, isDefinition: true)
!516 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !516, line: 79, type: !277, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !516, line: 80, type: !521, isLocal: true, isDefinition: true)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 13)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !516, line: 81, type: !521, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !516, line: 82, type: !174, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !516, line: 83, type: !282, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !516, line: 84, type: !304, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !516, line: 85, type: !299, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !516, line: 86, type: !299, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !516, line: 87, type: !304, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !540, file: !516, line: 76, type: !626, isLocal: false, isDefinition: true)
!540 = distinct !DICompileUnit(language: DW_LANG_C11, file: !516, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !541, retainedTypes: !561, globals: !562, splitDebugInlining: false, nameTableKind: None)
!541 = !{!542, !556, !129}
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !543, line: 42, baseType: !65, size: 32, elements: !544)
!543 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!545 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!546 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!547 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!548 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!549 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!550 = !DIEnumerator(name: "c_quoting_style", value: 5)
!551 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!552 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!553 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!554 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!555 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!556 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !543, line: 254, baseType: !65, size: 32, elements: !557)
!557 = !{!558, !559, !560}
!558 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!559 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!560 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!561 = !{!72, !146, !147}
!562 = !{!514, !517, !519, !524, !526, !528, !530, !532, !534, !536, !538, !563, !567, !577, !579, !584, !586, !588, !590, !592, !615, !622, !624}
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !540, file: !516, line: 92, type: !565, isLocal: false, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 320, elements: !47)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !540, file: !516, line: 1040, type: !569, isLocal: false, isDefinition: true)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !516, line: 56, size: 448, elements: !570)
!570 = !{!571, !572, !573, !575, !576}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !569, file: !516, line: 59, baseType: !542, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !516, line: 62, baseType: !72, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !569, file: !516, line: 66, baseType: !574, size: 256, offset: 64)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !305)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !569, file: !516, line: 69, baseType: !96, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !569, file: !516, line: 72, baseType: !96, size: 64, offset: 384)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !540, file: !516, line: 107, type: !569, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "slot0", scope: !540, file: !516, line: 831, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 256)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !516, line: 321, type: !282, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !516, line: 357, type: !282, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !516, line: 358, type: !282, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !516, line: 199, type: !299, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "quote", scope: !594, file: !516, line: 228, type: !613, isLocal: true, isDefinition: true)
!594 = distinct !DISubprogram(name: "gettext_quote", scope: !516, file: !516, line: 197, type: !595, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!96, !96, !542}
!597 = !{!598, !599, !600, !601, !602}
!598 = !DILocalVariable(name: "msgid", arg: 1, scope: !594, file: !516, line: 197, type: !96)
!599 = !DILocalVariable(name: "s", arg: 2, scope: !594, file: !516, line: 197, type: !542)
!600 = !DILocalVariable(name: "translation", scope: !594, file: !516, line: 199, type: !96)
!601 = !DILocalVariable(name: "w", scope: !594, file: !516, line: 229, type: !496)
!602 = !DILocalVariable(name: "mbs", scope: !594, file: !516, line: 230, type: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !502, line: 6, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !504, line: 21, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 13, size: 64, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !605, file: !504, line: 15, baseType: !72, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !605, file: !504, line: 20, baseType: !609, size: 32, offset: 32)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !504, line: 16, size: 32, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !609, file: !504, line: 18, baseType: !65, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !609, file: !504, line: 19, baseType: !56, size: 32)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !614)
!614 = !{!284, !58}
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(name: "slotvec", scope: !540, file: !516, line: 834, type: !617, isLocal: true, isDefinition: true)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !516, line: 823, size: 128, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !618, file: !516, line: 825, baseType: !147, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !618, file: !516, line: 826, baseType: !89, size: 64, offset: 64)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "nslots", scope: !540, file: !516, line: 832, type: !72, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "slotvec0", scope: !540, file: !516, line: 833, type: !618, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 704, elements: !383)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !630, line: 67, type: !377, isLocal: true, isDefinition: true)
!630 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !630, line: 69, type: !299, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !630, line: 83, type: !299, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !630, line: 83, type: !56, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !630, line: 85, type: !282, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !630, line: 88, type: !641, isLocal: true, isDefinition: true)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 171)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !630, line: 88, type: !646, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 34)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !630, line: 105, type: !159, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !630, line: 109, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 23)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !630, line: 113, type: !658, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 28)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !630, line: 120, type: !663, isLocal: true, isDefinition: true)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 32)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !630, line: 127, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 36)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !630, line: 134, type: !326, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !630, line: 142, type: !675, isLocal: true, isDefinition: true)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 44)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !630, line: 150, type: !680, isLocal: true, isDefinition: true)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 48)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !630, line: 159, type: !685, isLocal: true, isDefinition: true)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 52)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !630, line: 170, type: !690, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 60)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !630, line: 248, type: !174, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !630, line: 248, type: !164, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !630, line: 254, type: !174, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !630, line: 254, type: !154, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !630, line: 254, type: !326, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !630, line: 259, type: !3, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !630, line: 259, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 29)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !712, file: !713, line: 26, type: !715, isLocal: false, isDefinition: true)
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !714, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!714 = !{!710}
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 376, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 47)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "exit_failure", scope: !720, file: !721, line: 24, type: !723, isLocal: false, isDefinition: true)
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !722, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!722 = !{!718}
!723 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !726, line: 34, type: !183, isLocal: true, isDefinition: true)
!726 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !726, line: 34, type: !299, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !726, line: 34, type: !321, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !733, line: 108, type: !41, isLocal: true, isDefinition: true)
!733 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(name: "internal_state", scope: !736, file: !733, line: 97, type: !739, isLocal: true, isDefinition: true)
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !737, globals: !738, splitDebugInlining: false, nameTableKind: None)
!737 = !{!145, !147, !150}
!738 = !{!731, !734}
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !502, line: 6, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !504, line: 21, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 13, size: 64, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !741, file: !504, line: 15, baseType: !72, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !741, file: !504, line: 20, baseType: !745, size: 32, offset: 32)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !504, line: 16, size: 32, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !745, file: !504, line: 18, baseType: !65, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !745, file: !504, line: 19, baseType: !56, size: 32)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !751, line: 35, type: !277, isLocal: true, isDefinition: true)
!751 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !630, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !755, retainedTypes: !759, globals: !760, splitDebugInlining: false, nameTableKind: None)
!755 = !{!756}
!756 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !630, line: 40, baseType: !65, size: 32, elements: !757)
!757 = !{!758}
!758 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!759 = !{!145}
!760 = !{!628, !631, !633, !635, !637, !639, !644, !649, !651, !656, !661, !666, !671, !673, !678, !683, !688, !693, !695, !697, !699, !701, !703, !705}
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !763, retainedTypes: !794, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!763 = !{!764, !776}
!764 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !765, file: !762, line: 188, baseType: !65, size: 32, elements: !774)
!765 = distinct !DISubprogram(name: "x2nrealloc", scope: !762, file: !762, line: 176, type: !766, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !769)
!766 = !DISubroutineType(types: !767)
!767 = !{!145, !145, !768, !147}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!769 = !{!770, !771, !772, !773}
!770 = !DILocalVariable(name: "p", arg: 1, scope: !765, file: !762, line: 176, type: !145)
!771 = !DILocalVariable(name: "pn", arg: 2, scope: !765, file: !762, line: 176, type: !768)
!772 = !DILocalVariable(name: "s", arg: 3, scope: !765, file: !762, line: 176, type: !147)
!773 = !DILocalVariable(name: "n", scope: !765, file: !762, line: 178, type: !147)
!774 = !{!775}
!775 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!776 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !777, file: !762, line: 228, baseType: !65, size: 32, elements: !774)
!777 = distinct !DISubprogram(name: "xpalloc", scope: !762, file: !762, line: 223, type: !778, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !784)
!778 = !DISubroutineType(types: !779)
!779 = !{!145, !145, !780, !781, !783, !781}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !782, line: 130, baseType: !783)
!782 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !148, line: 35, baseType: !113)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793}
!785 = !DILocalVariable(name: "pa", arg: 1, scope: !777, file: !762, line: 223, type: !145)
!786 = !DILocalVariable(name: "pn", arg: 2, scope: !777, file: !762, line: 223, type: !780)
!787 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !777, file: !762, line: 223, type: !781)
!788 = !DILocalVariable(name: "n_max", arg: 4, scope: !777, file: !762, line: 223, type: !783)
!789 = !DILocalVariable(name: "s", arg: 5, scope: !777, file: !762, line: 223, type: !781)
!790 = !DILocalVariable(name: "n0", scope: !777, file: !762, line: 230, type: !781)
!791 = !DILocalVariable(name: "n", scope: !777, file: !762, line: 237, type: !781)
!792 = !DILocalVariable(name: "nbytes", scope: !777, file: !762, line: 248, type: !781)
!793 = !DILocalVariable(name: "adjusted_nbytes", scope: !777, file: !762, line: 252, type: !781)
!794 = !{!89, !145, !99, !113, !149}
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !796, splitDebugInlining: false, nameTableKind: None)
!796 = !{!724, !727, !729}
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !798, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !799, retainedTypes: !800, splitDebugInlining: false, nameTableKind: None)
!798 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!799 = !{!76}
!800 = !{!99, !113, !149}
!801 = distinct !DICompileUnit(language: DW_LANG_C11, file: !802, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!802 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !804, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!804 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !759, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !759, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !811, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!811 = !{!99, !149, !145}
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !813, splitDebugInlining: false, nameTableKind: None)
!813 = !{!814, !749}
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !751, line: 35, type: !282, isLocal: true, isDefinition: true)
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !759, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!820 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!821 = !{i32 7, !"Dwarf Version", i32 5}
!822 = !{i32 2, !"Debug Info Version", i32 3}
!823 = !{i32 1, !"wchar_size", i32 4}
!824 = !{i32 8, !"PIC Level", i32 2}
!825 = !{i32 7, !"PIE Level", i32 2}
!826 = !{i32 7, !"uwtable", i32 2}
!827 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 66, type: !828, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !72}
!830 = !{!831}
!831 = !DILocalVariable(name: "status", arg: 1, scope: !827, file: !2, line: 66, type: !72)
!832 = !DILocation(line: 0, scope: !827)
!833 = !DILocation(line: 68, column: 14, scope: !834)
!834 = distinct !DILexicalBlock(scope: !827, file: !2, line: 68, column: 7)
!835 = !DILocation(line: 68, column: 7, scope: !827)
!836 = !DILocation(line: 69, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !2, line: 69, column: 5)
!838 = !{!839, !839, i64 0}
!839 = !{!"any pointer", !840, i64 0}
!840 = !{!"omnipotent char", !841, i64 0}
!841 = !{!"Simple C/C++ TBAA"}
!842 = !DILocation(line: 72, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !834, file: !2, line: 71, column: 5)
!844 = !DILocation(line: 73, column: 7, scope: !843)
!845 = !DILocation(line: 736, column: 3, scope: !846, inlinedAt: !848)
!846 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !64, file: !64, line: 734, type: !471, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !847)
!847 = !{}
!848 = distinct !DILocation(line: 80, column: 7, scope: !843)
!849 = !DILocation(line: 82, column: 7, scope: !843)
!850 = !DILocation(line: 86, column: 7, scope: !843)
!851 = !DILocation(line: 87, column: 7, scope: !843)
!852 = !DILocation(line: 88, column: 7, scope: !843)
!853 = !DILocalVariable(name: "program", arg: 1, scope: !854, file: !64, line: 824, type: !96)
!854 = distinct !DISubprogram(name: "emit_exec_status", scope: !64, file: !64, line: 824, type: !855, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !96}
!857 = !{!853}
!858 = !DILocation(line: 0, scope: !854, inlinedAt: !859)
!859 = distinct !DILocation(line: 89, column: 7, scope: !843)
!860 = !DILocation(line: 826, column: 7, scope: !854, inlinedAt: !859)
!861 = !DILocalVariable(name: "program", arg: 1, scope: !862, file: !64, line: 836, type: !96)
!862 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !64, file: !64, line: 836, type: !855, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !863)
!863 = !{!861, !864, !871, !872, !874, !875}
!864 = !DILocalVariable(name: "infomap", scope: !862, file: !64, line: 838, type: !865)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 896, elements: !300)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !862, file: !64, line: 838, size: 128, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !867, file: !64, line: 838, baseType: !96, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !867, file: !64, line: 838, baseType: !96, size: 64, offset: 64)
!871 = !DILocalVariable(name: "node", scope: !862, file: !64, line: 848, type: !96)
!872 = !DILocalVariable(name: "map_prog", scope: !862, file: !64, line: 849, type: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!874 = !DILocalVariable(name: "lc_messages", scope: !862, file: !64, line: 861, type: !96)
!875 = !DILocalVariable(name: "url_program", scope: !862, file: !64, line: 874, type: !96)
!876 = !DILocation(line: 0, scope: !862, inlinedAt: !877)
!877 = distinct !DILocation(line: 90, column: 7, scope: !843)
!878 = !DILocation(line: 857, column: 3, scope: !862, inlinedAt: !877)
!879 = !DILocation(line: 861, column: 29, scope: !862, inlinedAt: !877)
!880 = !DILocation(line: 862, column: 7, scope: !881, inlinedAt: !877)
!881 = distinct !DILexicalBlock(scope: !862, file: !64, line: 862, column: 7)
!882 = !DILocation(line: 862, column: 19, scope: !881, inlinedAt: !877)
!883 = !DILocation(line: 862, column: 22, scope: !881, inlinedAt: !877)
!884 = !DILocation(line: 862, column: 7, scope: !862, inlinedAt: !877)
!885 = !DILocation(line: 868, column: 7, scope: !886, inlinedAt: !877)
!886 = distinct !DILexicalBlock(scope: !881, file: !64, line: 863, column: 5)
!887 = !DILocation(line: 870, column: 5, scope: !886, inlinedAt: !877)
!888 = !DILocation(line: 875, column: 3, scope: !862, inlinedAt: !877)
!889 = !DILocation(line: 877, column: 3, scope: !862, inlinedAt: !877)
!890 = !DILocation(line: 92, column: 3, scope: !827)
!891 = !DISubprogram(name: "dcgettext", scope: !892, file: !892, line: 51, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!892 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!893 = !DISubroutineType(types: !894)
!894 = !{!89, !96, !96, !72}
!895 = !DISubprogram(name: "__fprintf_chk", scope: !896, file: !896, line: 93, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!896 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!897 = !DISubroutineType(types: !898)
!898 = !{!72, !899, !72, !900, null}
!899 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!900 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!901 = !DISubprogram(name: "__printf_chk", scope: !896, file: !896, line: 95, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!902 = !DISubroutineType(types: !903)
!903 = !{!72, !72, !900, null}
!904 = !DISubprogram(name: "fputs_unlocked", scope: !905, file: !905, line: 691, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!905 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!906 = !DISubroutineType(types: !907)
!907 = !{!72, !900, !899}
!908 = !DILocation(line: 0, scope: !193)
!909 = !DILocation(line: 581, column: 7, scope: !201)
!910 = !{!911, !911, i64 0}
!911 = !{!"int", !840, i64 0}
!912 = !DILocation(line: 581, column: 19, scope: !201)
!913 = !DILocation(line: 581, column: 7, scope: !193)
!914 = !DILocation(line: 585, column: 26, scope: !200)
!915 = !DILocation(line: 0, scope: !200)
!916 = !DILocation(line: 586, column: 23, scope: !200)
!917 = !DILocation(line: 586, column: 28, scope: !200)
!918 = !DILocation(line: 586, column: 32, scope: !200)
!919 = !{!840, !840, i64 0}
!920 = !DILocation(line: 586, column: 38, scope: !200)
!921 = !DILocalVariable(name: "__s1", arg: 1, scope: !922, file: !923, line: 1359, type: !96)
!922 = distinct !DISubprogram(name: "streq", scope: !923, file: !923, line: 1359, type: !924, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !926)
!923 = !DIFile(filename: "./lib/string.h", directory: "/src")
!924 = !DISubroutineType(types: !925)
!925 = !{!99, !96, !96}
!926 = !{!921, !927}
!927 = !DILocalVariable(name: "__s2", arg: 2, scope: !922, file: !923, line: 1359, type: !96)
!928 = !DILocation(line: 0, scope: !922, inlinedAt: !929)
!929 = distinct !DILocation(line: 586, column: 41, scope: !200)
!930 = !DILocation(line: 1361, column: 11, scope: !922, inlinedAt: !929)
!931 = !DILocation(line: 1361, column: 10, scope: !922, inlinedAt: !929)
!932 = !DILocation(line: 586, column: 19, scope: !200)
!933 = !DILocation(line: 587, column: 5, scope: !200)
!934 = !DILocation(line: 588, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !193, file: !64, line: 588, column: 7)
!936 = !DILocation(line: 588, column: 7, scope: !193)
!937 = !DILocation(line: 590, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !64, line: 589, column: 5)
!939 = !DILocation(line: 591, column: 7, scope: !938)
!940 = !DILocation(line: 595, column: 37, scope: !193)
!941 = !DILocation(line: 595, column: 35, scope: !193)
!942 = !DILocation(line: 596, column: 29, scope: !193)
!943 = !DILocation(line: 597, column: 8, scope: !208)
!944 = !DILocation(line: 597, column: 7, scope: !193)
!945 = !DILocation(line: 604, column: 24, scope: !207)
!946 = !DILocation(line: 604, column: 12, scope: !208)
!947 = !DILocation(line: 0, scope: !206)
!948 = !DILocation(line: 610, column: 16, scope: !206)
!949 = !DILocation(line: 610, column: 7, scope: !206)
!950 = !DILocation(line: 611, column: 21, scope: !206)
!951 = !{!952, !952, i64 0}
!952 = !{!"short", !840, i64 0}
!953 = !DILocation(line: 611, column: 19, scope: !206)
!954 = !DILocation(line: 611, column: 16, scope: !206)
!955 = !DILocation(line: 610, column: 30, scope: !206)
!956 = distinct !{!956, !949, !950, !957}
!957 = !{!"llvm.loop.mustprogress"}
!958 = !DILocation(line: 612, column: 18, scope: !959)
!959 = distinct !DILexicalBlock(scope: !206, file: !64, line: 612, column: 11)
!960 = !DILocation(line: 612, column: 11, scope: !206)
!961 = !DILocation(line: 618, column: 5, scope: !206)
!962 = !DILocation(line: 620, column: 23, scope: !193)
!963 = !DILocation(line: 625, column: 39, scope: !193)
!964 = !DILocation(line: 626, column: 3, scope: !193)
!965 = !DILocation(line: 626, column: 10, scope: !193)
!966 = !DILocation(line: 626, column: 21, scope: !193)
!967 = !DILocation(line: 628, column: 44, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !64, line: 628, column: 11)
!969 = distinct !DILexicalBlock(scope: !193, file: !64, line: 627, column: 5)
!970 = !DILocation(line: 628, column: 32, scope: !968)
!971 = !DILocation(line: 628, column: 49, scope: !968)
!972 = !DILocation(line: 628, column: 11, scope: !969)
!973 = !DILocation(line: 630, column: 11, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !64, line: 630, column: 11)
!975 = !DILocation(line: 630, column: 11, scope: !969)
!976 = !DILocation(line: 632, column: 26, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !64, line: 632, column: 15)
!978 = distinct !DILexicalBlock(scope: !974, file: !64, line: 631, column: 9)
!979 = !DILocation(line: 632, column: 34, scope: !977)
!980 = !DILocation(line: 632, column: 37, scope: !977)
!981 = !DILocation(line: 632, column: 15, scope: !978)
!982 = !DILocation(line: 636, column: 16, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !64, line: 636, column: 15)
!984 = !DILocation(line: 636, column: 29, scope: !983)
!985 = !DILocation(line: 640, column: 16, scope: !969)
!986 = distinct !{!986, !964, !987, !957}
!987 = !DILocation(line: 641, column: 5, scope: !193)
!988 = !DILocation(line: 644, column: 3, scope: !193)
!989 = !DILocation(line: 0, scope: !922, inlinedAt: !990)
!990 = distinct !DILocation(line: 648, column: 31, scope: !193)
!991 = !DILocation(line: 0, scope: !922, inlinedAt: !992)
!992 = distinct !DILocation(line: 649, column: 31, scope: !193)
!993 = !DILocation(line: 0, scope: !922, inlinedAt: !994)
!994 = distinct !DILocation(line: 650, column: 31, scope: !193)
!995 = !DILocation(line: 0, scope: !922, inlinedAt: !996)
!996 = distinct !DILocation(line: 651, column: 31, scope: !193)
!997 = !DILocation(line: 0, scope: !922, inlinedAt: !998)
!998 = distinct !DILocation(line: 652, column: 31, scope: !193)
!999 = !DILocation(line: 0, scope: !922, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 653, column: 31, scope: !193)
!1001 = !DILocation(line: 0, scope: !922, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 654, column: 31, scope: !193)
!1003 = !DILocation(line: 0, scope: !922, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 655, column: 31, scope: !193)
!1005 = !DILocation(line: 0, scope: !922, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 656, column: 31, scope: !193)
!1007 = !DILocation(line: 0, scope: !922, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 657, column: 31, scope: !193)
!1009 = !DILocation(line: 663, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !193, file: !64, line: 663, column: 7)
!1011 = !DILocation(line: 664, column: 7, scope: !1010)
!1012 = !DILocation(line: 664, column: 10, scope: !1010)
!1013 = !DILocation(line: 663, column: 7, scope: !193)
!1014 = !DILocation(line: 669, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !64, line: 665, column: 5)
!1016 = !DILocation(line: 671, column: 5, scope: !1015)
!1017 = !DILocation(line: 676, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !64, line: 673, column: 5)
!1019 = !DILocation(line: 679, column: 3, scope: !193)
!1020 = !DILocation(line: 683, column: 3, scope: !193)
!1021 = !DILocation(line: 686, column: 3, scope: !193)
!1022 = !DILocation(line: 688, column: 3, scope: !193)
!1023 = !DILocation(line: 691, column: 3, scope: !193)
!1024 = !DILocation(line: 695, column: 3, scope: !193)
!1025 = !DILocation(line: 696, column: 1, scope: !193)
!1026 = !DISubprogram(name: "setlocale", scope: !1027, file: !1027, line: 122, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1027 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!89, !72, !96}
!1030 = !DISubprogram(name: "strncmp", scope: !1031, file: !1031, line: 159, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1031 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!72, !96, !96, !147}
!1034 = !DISubprogram(name: "exit", scope: !1035, file: !1035, line: 624, type: !828, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1035 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1036 = !DISubprogram(name: "getenv", scope: !1035, file: !1035, line: 641, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!89, !96}
!1039 = !DISubprogram(name: "strcmp", scope: !1031, file: !1031, line: 156, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!72, !96, !96}
!1042 = !DISubprogram(name: "strspn", scope: !1031, file: !1031, line: 297, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!149, !96, !96}
!1045 = !DISubprogram(name: "strchr", scope: !1031, file: !1031, line: 246, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!89, !96, !72}
!1048 = !DISubprogram(name: "__ctype_b_loc", scope: !130, file: !130, line: 79, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1054 = !DISubprogram(name: "strcspn", scope: !1031, file: !1031, line: 293, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1055 = !DISubprogram(name: "fwrite_unlocked", scope: !905, file: !905, line: 704, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!147, !1058, !147, !147, !899}
!1058 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1061 = !DILocation(line: 0, scope: !85)
!1062 = !DILocation(line: 111, column: 21, scope: !85)
!1063 = !DILocation(line: 111, column: 3, scope: !85)
!1064 = !DILocation(line: 112, column: 3, scope: !85)
!1065 = !DILocation(line: 113, column: 3, scope: !85)
!1066 = !DILocation(line: 114, column: 3, scope: !85)
!1067 = !DILocalVariable(name: "status", arg: 1, scope: !1068, file: !64, line: 102, type: !72)
!1068 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !64, file: !64, line: 102, type: !828, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1069)
!1069 = !{!1067}
!1070 = !DILocation(line: 0, scope: !1068, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 116, column: 3, scope: !85)
!1072 = !DILocation(line: 105, column: 18, scope: !1073, inlinedAt: !1071)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !64, line: 104, column: 7)
!1074 = !DILocation(line: 117, column: 3, scope: !85)
!1075 = !DILocation(line: 119, column: 17, scope: !103)
!1076 = !DILocation(line: 119, column: 3, scope: !104)
!1077 = !DILocation(line: 121, column: 23, scope: !102)
!1078 = !DILocation(line: 0, scope: !102)
!1079 = !DILocation(line: 123, column: 11, scope: !107)
!1080 = !DILocation(line: 123, column: 16, scope: !107)
!1081 = !DILocation(line: 123, column: 23, scope: !107)
!1082 = !DILocation(line: 123, column: 44, scope: !107)
!1083 = !DILocation(line: 123, column: 49, scope: !107)
!1084 = !DILocation(line: 123, column: 56, scope: !107)
!1085 = !DILocation(line: 123, column: 41, scope: !107)
!1086 = !DILocation(line: 123, column: 37, scope: !107)
!1087 = !DILocalVariable(name: "c", arg: 1, scope: !1088, file: !1089, line: 233, type: !72)
!1088 = distinct !DISubprogram(name: "c_isdigit", scope: !1089, file: !1089, line: 233, type: !1090, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1092)
!1089 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!99, !72}
!1092 = !{!1087}
!1093 = !DILocation(line: 0, scope: !1088, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 123, column: 26, scope: !107)
!1095 = !DILocation(line: 235, column: 3, scope: !1088, inlinedAt: !1094)
!1096 = !DILocation(line: 123, column: 11, scope: !102)
!1097 = !DILocation(line: 126, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !107, file: !2, line: 124, column: 9)
!1099 = !DILocation(line: 127, column: 9, scope: !1098)
!1100 = !DILocation(line: 131, column: 37, scope: !106)
!1101 = !DILocation(line: 131, column: 32, scope: !106)
!1102 = !DILocation(line: 0, scope: !106)
!1103 = !DILocation(line: 132, column: 35, scope: !106)
!1104 = !DILocation(line: 135, column: 26, scope: !106)
!1105 = !DILocation(line: 135, column: 24, scope: !106)
!1106 = !DILocation(line: 138, column: 18, scope: !106)
!1107 = !DILocation(line: 140, column: 15, scope: !106)
!1108 = !DILocation(line: 141, column: 16, scope: !106)
!1109 = !DILocation(line: 141, column: 13, scope: !106)
!1110 = !DILocation(line: 143, column: 11, scope: !106)
!1111 = !DILocation(line: 152, column: 13, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !106, file: !2, line: 144, column: 13)
!1113 = !DILocation(line: 154, column: 13, scope: !1112)
!1114 = !DILocation(line: 157, column: 15, scope: !1112)
!1115 = !DILocation(line: 146, column: 34, scope: !1112)
!1116 = !DILocation(line: 0, scope: !107)
!1117 = !DILocation(line: 0, scope: !104)
!1118 = !DILocation(line: 166, column: 7, scope: !112)
!1119 = !DILocation(line: 166, column: 7, scope: !85)
!1120 = !DILocation(line: 179, column: 7, scope: !111)
!1121 = !DILocation(line: 0, scope: !111)
!1122 = !DILocation(line: 180, column: 30, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !111, file: !2, line: 180, column: 11)
!1124 = !DILocation(line: 180, column: 28, scope: !1123)
!1125 = !DILocation(line: 180, column: 11, scope: !111)
!1126 = !DILocation(line: 181, column: 9, scope: !1123)
!1127 = !DILocation(line: 213, column: 9, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !85, file: !2, line: 213, column: 7)
!1129 = !DILocation(line: 213, column: 7, scope: !85)
!1130 = !DILocation(line: 209, column: 20, scope: !111)
!1131 = !{!1132, !1132, i64 0}
!1132 = !{!"long", !840, i64 0}
!1133 = !DILocation(line: 211, column: 5, scope: !112)
!1134 = !DILocation(line: 217, column: 11, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 216, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 215, column: 11)
!1137 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 214, column: 5)
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
!1167 = distinct !DISubprogram(name: "perm_related_errno", scope: !2, file: !2, line: 96, type: !1090, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1168)
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
!1185 = !{!1186, !911, i64 0}
!1186 = !{!"_IO_FILE", !911, i64 0, !839, i64 8, !839, i64 16, !839, i64 24, !839, i64 32, !839, i64 40, !839, i64 48, !839, i64 56, !839, i64 64, !839, i64 72, !839, i64 80, !839, i64 88, !839, i64 96, !839, i64 104, !911, i64 112, !911, i64 116, !1132, i64 120, !952, i64 128, !840, i64 130, !840, i64 131, !839, i64 136, !1132, i64 144, !839, i64 152, !839, i64 160, !839, i64 168, !839, i64 176, !1132, i64 184, !911, i64 192, !840, i64 196}
!1187 = !DILocation(line: 247, column: 11, scope: !116)
!1188 = !DILocation(line: 251, column: 11, scope: !85)
!1189 = !DILocation(line: 251, column: 3, scope: !85)
!1190 = !DILocation(line: 253, column: 21, scope: !85)
!1191 = !DILocation(line: 253, column: 27, scope: !85)
!1192 = !DILocation(line: 254, column: 3, scope: !85)
!1193 = !DILocation(line: 256, column: 1, scope: !85)
!1194 = !DISubprogram(name: "bindtextdomain", scope: !892, file: !892, line: 86, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!89, !96, !96}
!1197 = !DISubprogram(name: "textdomain", scope: !892, file: !892, line: 82, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1198 = !DISubprogram(name: "atexit", scope: !1035, file: !1035, line: 602, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!72, !470}
!1201 = !DISubprogram(name: "getopt_long", scope: !392, file: !392, line: 66, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!72, !72, !1204, !96, !1206, !397}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1207 = !DISubprogram(name: "__errno_location", scope: !1208, file: !1208, line: 37, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1208 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!397}
!1211 = !DISubprogram(name: "getpriority", scope: !1212, file: !1212, line: 105, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "e55940cb1bf33174af2c45f02cd69e8a")
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!72, !1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__priority_which_t", file: !1212, line: 40, baseType: !123)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "id_t", file: !1217, line: 103, baseType: !1218)
!1217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__id_t", file: !242, line: 159, baseType: !65)
!1219 = !DISubprogram(name: "setpriority", scope: !1212, file: !1212, line: 109, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!72, !1215, !1216, !72}
!1222 = !DISubprogram(name: "execvp", scope: !1223, file: !1223, line: 599, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1223 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!72, !96, !1204}
!1226 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !409, file: !409, line: 50, type: !855, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1227)
!1227 = !{!1228}
!1228 = !DILocalVariable(name: "file", arg: 1, scope: !1226, file: !409, line: 50, type: !96)
!1229 = !DILocation(line: 0, scope: !1226)
!1230 = !DILocation(line: 52, column: 13, scope: !1226)
!1231 = !DILocation(line: 53, column: 1, scope: !1226)
!1232 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !409, file: !409, line: 87, type: !1233, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !99}
!1235 = !{!1236}
!1236 = !DILocalVariable(name: "ignore", arg: 1, scope: !1232, file: !409, line: 87, type: !99)
!1237 = !DILocation(line: 0, scope: !1232)
!1238 = !DILocation(line: 89, column: 16, scope: !1232)
!1239 = !{!1240, !1240, i64 0}
!1240 = !{!"_Bool", !840, i64 0}
!1241 = !DILocation(line: 90, column: 1, scope: !1232)
!1242 = distinct !DISubprogram(name: "close_stdout", scope: !409, file: !409, line: 116, type: !471, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1243)
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "write_error", scope: !1245, file: !409, line: 121, type: !96)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !409, line: 120, column: 5)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !409, line: 118, column: 7)
!1247 = !DILocation(line: 118, column: 21, scope: !1246)
!1248 = !DILocation(line: 118, column: 7, scope: !1246)
!1249 = !DILocation(line: 118, column: 29, scope: !1246)
!1250 = !DILocation(line: 119, column: 7, scope: !1246)
!1251 = !DILocation(line: 119, column: 12, scope: !1246)
!1252 = !{i8 0, i8 2}
!1253 = !DILocation(line: 119, column: 25, scope: !1246)
!1254 = !DILocation(line: 119, column: 28, scope: !1246)
!1255 = !DILocation(line: 119, column: 34, scope: !1246)
!1256 = !DILocation(line: 118, column: 7, scope: !1242)
!1257 = !DILocation(line: 121, column: 33, scope: !1245)
!1258 = !DILocation(line: 0, scope: !1245)
!1259 = !DILocation(line: 122, column: 11, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1245, file: !409, line: 122, column: 11)
!1261 = !DILocation(line: 0, scope: !1260)
!1262 = !DILocation(line: 122, column: 11, scope: !1245)
!1263 = !DILocation(line: 123, column: 9, scope: !1260)
!1264 = !DILocation(line: 126, column: 9, scope: !1260)
!1265 = !DILocation(line: 128, column: 14, scope: !1245)
!1266 = !DILocation(line: 128, column: 7, scope: !1245)
!1267 = !DILocation(line: 133, column: 42, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1242, file: !409, line: 133, column: 7)
!1269 = !DILocation(line: 133, column: 28, scope: !1268)
!1270 = !DILocation(line: 133, column: 50, scope: !1268)
!1271 = !DILocation(line: 133, column: 7, scope: !1242)
!1272 = !DILocation(line: 134, column: 12, scope: !1268)
!1273 = !DILocation(line: 134, column: 5, scope: !1268)
!1274 = !DILocation(line: 135, column: 1, scope: !1242)
!1275 = !DISubprogram(name: "_exit", scope: !1223, file: !1223, line: 624, type: !828, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1276 = distinct !DISubprogram(name: "verror", scope: !424, file: !424, line: 251, type: !1277, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !72, !72, !96, !434}
!1279 = !{!1280, !1281, !1282, !1283}
!1280 = !DILocalVariable(name: "status", arg: 1, scope: !1276, file: !424, line: 251, type: !72)
!1281 = !DILocalVariable(name: "errnum", arg: 2, scope: !1276, file: !424, line: 251, type: !72)
!1282 = !DILocalVariable(name: "message", arg: 3, scope: !1276, file: !424, line: 251, type: !96)
!1283 = !DILocalVariable(name: "args", arg: 4, scope: !1276, file: !424, line: 251, type: !434)
!1284 = !DILocation(line: 0, scope: !1276)
!1285 = !DILocation(line: 261, column: 3, scope: !1276)
!1286 = !DILocation(line: 265, column: 7, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1276, file: !424, line: 265, column: 7)
!1288 = !DILocation(line: 265, column: 7, scope: !1276)
!1289 = !DILocation(line: 266, column: 5, scope: !1287)
!1290 = !DILocation(line: 272, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !424, line: 268, column: 5)
!1292 = !DILocation(line: 276, column: 3, scope: !1276)
!1293 = !DILocation(line: 282, column: 1, scope: !1276)
!1294 = distinct !DISubprogram(name: "flush_stdout", scope: !424, file: !424, line: 163, type: !471, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1295)
!1295 = !{!1296}
!1296 = !DILocalVariable(name: "stdout_fd", scope: !1294, file: !424, line: 166, type: !72)
!1297 = !DILocation(line: 0, scope: !1294)
!1298 = !DILocalVariable(name: "fd", arg: 1, scope: !1299, file: !424, line: 145, type: !72)
!1299 = distinct !DISubprogram(name: "is_open", scope: !424, file: !424, line: 145, type: !1300, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!72, !72}
!1302 = !{!1298}
!1303 = !DILocation(line: 0, scope: !1299, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 182, column: 25, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1294, file: !424, line: 182, column: 7)
!1306 = !DILocation(line: 157, column: 15, scope: !1299, inlinedAt: !1304)
!1307 = !DILocation(line: 157, column: 12, scope: !1299, inlinedAt: !1304)
!1308 = !DILocation(line: 182, column: 7, scope: !1294)
!1309 = !DILocation(line: 184, column: 5, scope: !1305)
!1310 = !DILocation(line: 185, column: 1, scope: !1294)
!1311 = distinct !DISubprogram(name: "error_tail", scope: !424, file: !424, line: 219, type: !1277, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1312)
!1312 = !{!1313, !1314, !1315, !1316}
!1313 = !DILocalVariable(name: "status", arg: 1, scope: !1311, file: !424, line: 219, type: !72)
!1314 = !DILocalVariable(name: "errnum", arg: 2, scope: !1311, file: !424, line: 219, type: !72)
!1315 = !DILocalVariable(name: "message", arg: 3, scope: !1311, file: !424, line: 219, type: !96)
!1316 = !DILocalVariable(name: "args", arg: 4, scope: !1311, file: !424, line: 219, type: !434)
!1317 = !DILocation(line: 0, scope: !1311)
!1318 = !DILocation(line: 229, column: 13, scope: !1311)
!1319 = !DILocalVariable(name: "__stream", arg: 1, scope: !1320, file: !896, line: 132, type: !1323)
!1320 = distinct !DISubprogram(name: "vfprintf", scope: !896, file: !896, line: 132, type: !1321, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1358)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!72, !1323, !900, !434}
!1323 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1326, file: !219, line: 51, baseType: !72, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1326, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1326, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1326, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1326, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1326, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1326, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1326, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1326, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1326, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1326, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1326, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1326, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1326, file: !219, line: 70, baseType: !1342, size: 64, offset: 832)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1326, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1326, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1326, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1326, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1326, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1326, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1326, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1326, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1326, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1326, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1326, file: !219, line: 93, baseType: !1342, size: 64, offset: 1344)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1326, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1326, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1326, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1326, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!1358 = !{!1319, !1359, !1360}
!1359 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1320, file: !896, line: 133, type: !900)
!1360 = !DILocalVariable(name: "__ap", arg: 3, scope: !1320, file: !896, line: 133, type: !434)
!1361 = !DILocation(line: 0, scope: !1320, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 229, column: 3, scope: !1311)
!1363 = !DILocation(line: 135, column: 10, scope: !1320, inlinedAt: !1362)
!1364 = !DILocation(line: 232, column: 3, scope: !1311)
!1365 = !DILocation(line: 233, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1311, file: !424, line: 233, column: 7)
!1367 = !DILocation(line: 233, column: 7, scope: !1311)
!1368 = !DILocalVariable(name: "errnum", arg: 1, scope: !1369, file: !424, line: 188, type: !72)
!1369 = distinct !DISubprogram(name: "print_errno_message", scope: !424, file: !424, line: 188, type: !828, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1370)
!1370 = !{!1368, !1371, !1372}
!1371 = !DILocalVariable(name: "s", scope: !1369, file: !424, line: 190, type: !96)
!1372 = !DILocalVariable(name: "errbuf", scope: !1369, file: !424, line: 193, type: !1373)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: 1024)
!1376 = !DILocation(line: 0, scope: !1369, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 234, column: 5, scope: !1366)
!1378 = !DILocation(line: 193, column: 3, scope: !1369, inlinedAt: !1377)
!1379 = !DILocation(line: 193, column: 8, scope: !1369, inlinedAt: !1377)
!1380 = !DILocation(line: 195, column: 7, scope: !1369, inlinedAt: !1377)
!1381 = !DILocation(line: 207, column: 9, scope: !1382, inlinedAt: !1377)
!1382 = distinct !DILexicalBlock(scope: !1369, file: !424, line: 207, column: 7)
!1383 = !DILocation(line: 207, column: 7, scope: !1369, inlinedAt: !1377)
!1384 = !DILocation(line: 208, column: 9, scope: !1382, inlinedAt: !1377)
!1385 = !DILocation(line: 208, column: 5, scope: !1382, inlinedAt: !1377)
!1386 = !DILocation(line: 214, column: 3, scope: !1369, inlinedAt: !1377)
!1387 = !DILocation(line: 216, column: 1, scope: !1369, inlinedAt: !1377)
!1388 = !DILocation(line: 234, column: 5, scope: !1366)
!1389 = !DILocation(line: 238, column: 3, scope: !1311)
!1390 = !DILocalVariable(name: "__c", arg: 1, scope: !1391, file: !1178, line: 101, type: !72)
!1391 = distinct !DISubprogram(name: "putc_unlocked", scope: !1178, file: !1178, line: 101, type: !1392, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!72, !72, !1324}
!1394 = !{!1390, !1395}
!1395 = !DILocalVariable(name: "__stream", arg: 2, scope: !1391, file: !1178, line: 101, type: !1324)
!1396 = !DILocation(line: 0, scope: !1391, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 238, column: 3, scope: !1311)
!1398 = !DILocation(line: 103, column: 10, scope: !1391, inlinedAt: !1397)
!1399 = !{!1186, !839, i64 40}
!1400 = !{!1186, !839, i64 48}
!1401 = !{!"branch_weights", i32 2000, i32 1}
!1402 = !DILocation(line: 240, column: 3, scope: !1311)
!1403 = !DILocation(line: 241, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1311, file: !424, line: 241, column: 7)
!1405 = !DILocation(line: 241, column: 7, scope: !1311)
!1406 = !DILocation(line: 242, column: 5, scope: !1404)
!1407 = !DILocation(line: 243, column: 1, scope: !1311)
!1408 = !DISubprogram(name: "__vfprintf_chk", scope: !896, file: !896, line: 96, type: !1409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!72, !1323, !72, !900, !434}
!1411 = !DISubprogram(name: "strerror_r", scope: !1031, file: !1031, line: 444, type: !1412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!89, !72, !89, !147}
!1414 = !DISubprogram(name: "__overflow", scope: !905, file: !905, line: 886, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!72, !1324, !72}
!1417 = !DISubprogram(name: "fflush_unlocked", scope: !905, file: !905, line: 239, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!72, !1324}
!1420 = !DISubprogram(name: "fcntl", scope: !1421, file: !1421, line: 149, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1421 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!72, !72, !72, null}
!1424 = distinct !DISubprogram(name: "error", scope: !424, file: !424, line: 285, type: !1425, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !72, !72, !96, null}
!1427 = !{!1428, !1429, !1430, !1431}
!1428 = !DILocalVariable(name: "status", arg: 1, scope: !1424, file: !424, line: 285, type: !72)
!1429 = !DILocalVariable(name: "errnum", arg: 2, scope: !1424, file: !424, line: 285, type: !72)
!1430 = !DILocalVariable(name: "message", arg: 3, scope: !1424, file: !424, line: 285, type: !96)
!1431 = !DILocalVariable(name: "ap", scope: !1424, file: !424, line: 287, type: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !905, line: 52, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1434, line: 14, baseType: !1435)
!1434 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !438, baseType: !1436)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 192, elements: !42)
!1437 = !DILocation(line: 0, scope: !1424)
!1438 = !DILocation(line: 287, column: 3, scope: !1424)
!1439 = !DILocation(line: 287, column: 11, scope: !1424)
!1440 = !DILocation(line: 288, column: 3, scope: !1424)
!1441 = !DILocation(line: 289, column: 3, scope: !1424)
!1442 = !DILocation(line: 290, column: 3, scope: !1424)
!1443 = !DILocation(line: 291, column: 1, scope: !1424)
!1444 = !DILocation(line: 0, scope: !431)
!1445 = !DILocation(line: 302, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !431, file: !424, line: 302, column: 7)
!1447 = !DILocation(line: 302, column: 7, scope: !431)
!1448 = !DILocation(line: 307, column: 11, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !424, line: 307, column: 11)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !424, line: 303, column: 5)
!1451 = !DILocation(line: 307, column: 27, scope: !1449)
!1452 = !DILocation(line: 308, column: 11, scope: !1449)
!1453 = !DILocation(line: 308, column: 28, scope: !1449)
!1454 = !DILocation(line: 308, column: 25, scope: !1449)
!1455 = !DILocation(line: 309, column: 15, scope: !1449)
!1456 = !DILocation(line: 309, column: 33, scope: !1449)
!1457 = !DILocation(line: 310, column: 19, scope: !1449)
!1458 = !DILocation(line: 311, column: 22, scope: !1449)
!1459 = !DILocation(line: 311, column: 56, scope: !1449)
!1460 = !DILocation(line: 307, column: 11, scope: !1450)
!1461 = !DILocation(line: 316, column: 21, scope: !1450)
!1462 = !DILocation(line: 317, column: 23, scope: !1450)
!1463 = !DILocation(line: 318, column: 5, scope: !1450)
!1464 = !DILocation(line: 327, column: 3, scope: !431)
!1465 = !DILocation(line: 331, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !431, file: !424, line: 331, column: 7)
!1467 = !DILocation(line: 331, column: 7, scope: !431)
!1468 = !DILocation(line: 332, column: 5, scope: !1466)
!1469 = !DILocation(line: 338, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !424, line: 334, column: 5)
!1471 = !DILocation(line: 346, column: 3, scope: !431)
!1472 = !DILocation(line: 350, column: 3, scope: !431)
!1473 = !DILocation(line: 356, column: 1, scope: !431)
!1474 = distinct !DISubprogram(name: "error_at_line", scope: !424, file: !424, line: 359, type: !1475, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !72, !72, !96, !65, !96, null}
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483}
!1478 = !DILocalVariable(name: "status", arg: 1, scope: !1474, file: !424, line: 359, type: !72)
!1479 = !DILocalVariable(name: "errnum", arg: 2, scope: !1474, file: !424, line: 359, type: !72)
!1480 = !DILocalVariable(name: "file_name", arg: 3, scope: !1474, file: !424, line: 359, type: !96)
!1481 = !DILocalVariable(name: "line_number", arg: 4, scope: !1474, file: !424, line: 360, type: !65)
!1482 = !DILocalVariable(name: "message", arg: 5, scope: !1474, file: !424, line: 360, type: !96)
!1483 = !DILocalVariable(name: "ap", scope: !1474, file: !424, line: 362, type: !1432)
!1484 = !DILocation(line: 0, scope: !1474)
!1485 = !DILocation(line: 362, column: 3, scope: !1474)
!1486 = !DILocation(line: 362, column: 11, scope: !1474)
!1487 = !DILocation(line: 363, column: 3, scope: !1474)
!1488 = !DILocation(line: 364, column: 3, scope: !1474)
!1489 = !DILocation(line: 366, column: 3, scope: !1474)
!1490 = !DILocation(line: 367, column: 1, scope: !1474)
!1491 = distinct !DISubprogram(name: "getprogname", scope: !753, file: !753, line: 54, type: !1492, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !847)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!96}
!1494 = !DILocation(line: 58, column: 10, scope: !1491)
!1495 = !DILocation(line: 58, column: 3, scope: !1491)
!1496 = distinct !DISubprogram(name: "set_program_name", scope: !476, file: !476, line: 37, type: !855, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DILocalVariable(name: "argv0", arg: 1, scope: !1496, file: !476, line: 37, type: !96)
!1499 = !DILocalVariable(name: "slash", scope: !1496, file: !476, line: 44, type: !96)
!1500 = !DILocalVariable(name: "base", scope: !1496, file: !476, line: 45, type: !96)
!1501 = !DILocation(line: 0, scope: !1496)
!1502 = !DILocation(line: 44, column: 23, scope: !1496)
!1503 = !DILocation(line: 45, column: 22, scope: !1496)
!1504 = !DILocation(line: 46, column: 17, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1496, file: !476, line: 46, column: 7)
!1506 = !DILocation(line: 46, column: 9, scope: !1505)
!1507 = !DILocation(line: 46, column: 25, scope: !1505)
!1508 = !DILocation(line: 46, column: 40, scope: !1505)
!1509 = !DILocalVariable(name: "__s1", arg: 1, scope: !1510, file: !923, line: 974, type: !1059)
!1510 = distinct !DISubprogram(name: "memeq", scope: !923, file: !923, line: 974, type: !1511, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!99, !1059, !1059, !147}
!1513 = !{!1509, !1514, !1515}
!1514 = !DILocalVariable(name: "__s2", arg: 2, scope: !1510, file: !923, line: 974, type: !1059)
!1515 = !DILocalVariable(name: "__n", arg: 3, scope: !1510, file: !923, line: 974, type: !147)
!1516 = !DILocation(line: 0, scope: !1510, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 46, column: 28, scope: !1505)
!1518 = !DILocation(line: 976, column: 11, scope: !1510, inlinedAt: !1517)
!1519 = !DILocation(line: 976, column: 10, scope: !1510, inlinedAt: !1517)
!1520 = !DILocation(line: 46, column: 7, scope: !1496)
!1521 = !DILocation(line: 49, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !476, line: 49, column: 11)
!1523 = distinct !DILexicalBlock(scope: !1505, file: !476, line: 47, column: 5)
!1524 = !DILocation(line: 49, column: 36, scope: !1522)
!1525 = !DILocation(line: 49, column: 11, scope: !1523)
!1526 = !DILocation(line: 65, column: 16, scope: !1496)
!1527 = !DILocation(line: 71, column: 27, scope: !1496)
!1528 = !DILocation(line: 74, column: 33, scope: !1496)
!1529 = !DILocation(line: 76, column: 1, scope: !1496)
!1530 = !DISubprogram(name: "strrchr", scope: !1031, file: !1031, line: 273, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1531 = !DILocation(line: 0, scope: !485)
!1532 = !DILocation(line: 40, column: 29, scope: !485)
!1533 = !DILocation(line: 41, column: 19, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !485, file: !486, line: 41, column: 7)
!1535 = !DILocation(line: 41, column: 7, scope: !485)
!1536 = !DILocation(line: 47, column: 3, scope: !485)
!1537 = !DILocation(line: 48, column: 3, scope: !485)
!1538 = !DILocation(line: 48, column: 13, scope: !485)
!1539 = !DILocalVariable(name: "ps", arg: 1, scope: !1540, file: !1541, line: 1135, type: !1544)
!1540 = distinct !DISubprogram(name: "mbszero", scope: !1541, file: !1541, line: 1135, type: !1542, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1545)
!1541 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!1545 = !{!1539}
!1546 = !DILocation(line: 0, scope: !1540, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 48, column: 18, scope: !485)
!1548 = !DILocalVariable(name: "__dest", arg: 1, scope: !1549, file: !1550, line: 57, type: !145)
!1549 = distinct !DISubprogram(name: "memset", scope: !1550, file: !1550, line: 57, type: !1551, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1553)
!1550 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!145, !145, !72, !147}
!1553 = !{!1548, !1554, !1555}
!1554 = !DILocalVariable(name: "__ch", arg: 2, scope: !1549, file: !1550, line: 57, type: !72)
!1555 = !DILocalVariable(name: "__len", arg: 3, scope: !1549, file: !1550, line: 57, type: !147)
!1556 = !DILocation(line: 0, scope: !1549, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 1137, column: 3, scope: !1540, inlinedAt: !1547)
!1558 = !DILocation(line: 59, column: 10, scope: !1549, inlinedAt: !1557)
!1559 = !DILocation(line: 49, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !485, file: !486, line: 49, column: 7)
!1561 = !DILocation(line: 49, column: 39, scope: !1560)
!1562 = !DILocation(line: 49, column: 44, scope: !1560)
!1563 = !DILocation(line: 54, column: 1, scope: !485)
!1564 = !DISubprogram(name: "mbrtoc32", scope: !497, file: !497, line: 57, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!147, !1567, !900, !147, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1544)
!1570 = distinct !DISubprogram(name: "clone_quoting_options", scope: !516, file: !516, line: 113, type: !1571, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1574)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1573, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!1574 = !{!1575, !1576, !1577}
!1575 = !DILocalVariable(name: "o", arg: 1, scope: !1570, file: !516, line: 113, type: !1573)
!1576 = !DILocalVariable(name: "saved_errno", scope: !1570, file: !516, line: 115, type: !72)
!1577 = !DILocalVariable(name: "p", scope: !1570, file: !516, line: 116, type: !1573)
!1578 = !DILocation(line: 0, scope: !1570)
!1579 = !DILocation(line: 115, column: 21, scope: !1570)
!1580 = !DILocation(line: 116, column: 40, scope: !1570)
!1581 = !DILocation(line: 116, column: 31, scope: !1570)
!1582 = !DILocation(line: 118, column: 9, scope: !1570)
!1583 = !DILocation(line: 119, column: 3, scope: !1570)
!1584 = distinct !DISubprogram(name: "get_quoting_style", scope: !516, file: !516, line: 124, type: !1585, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1589)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!542, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!1589 = !{!1590}
!1590 = !DILocalVariable(name: "o", arg: 1, scope: !1584, file: !516, line: 124, type: !1587)
!1591 = !DILocation(line: 0, scope: !1584)
!1592 = !DILocation(line: 126, column: 11, scope: !1584)
!1593 = !DILocation(line: 126, column: 46, scope: !1584)
!1594 = !{!1595, !840, i64 0}
!1595 = !{!"quoting_options", !840, i64 0, !911, i64 4, !840, i64 8, !839, i64 40, !839, i64 48}
!1596 = !DILocation(line: 126, column: 3, scope: !1584)
!1597 = distinct !DISubprogram(name: "set_quoting_style", scope: !516, file: !516, line: 132, type: !1598, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1600)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !1573, !542}
!1600 = !{!1601, !1602}
!1601 = !DILocalVariable(name: "o", arg: 1, scope: !1597, file: !516, line: 132, type: !1573)
!1602 = !DILocalVariable(name: "s", arg: 2, scope: !1597, file: !516, line: 132, type: !542)
!1603 = !DILocation(line: 0, scope: !1597)
!1604 = !DILocation(line: 134, column: 4, scope: !1597)
!1605 = !DILocation(line: 134, column: 45, scope: !1597)
!1606 = !DILocation(line: 135, column: 1, scope: !1597)
!1607 = distinct !DISubprogram(name: "set_char_quoting", scope: !516, file: !516, line: 143, type: !1608, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!72, !1573, !4, !72}
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1617, !1618}
!1611 = !DILocalVariable(name: "o", arg: 1, scope: !1607, file: !516, line: 143, type: !1573)
!1612 = !DILocalVariable(name: "c", arg: 2, scope: !1607, file: !516, line: 143, type: !4)
!1613 = !DILocalVariable(name: "i", arg: 3, scope: !1607, file: !516, line: 143, type: !72)
!1614 = !DILocalVariable(name: "uc", scope: !1607, file: !516, line: 145, type: !150)
!1615 = !DILocalVariable(name: "p", scope: !1607, file: !516, line: 146, type: !1616)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1617 = !DILocalVariable(name: "shift", scope: !1607, file: !516, line: 148, type: !72)
!1618 = !DILocalVariable(name: "r", scope: !1607, file: !516, line: 149, type: !65)
!1619 = !DILocation(line: 0, scope: !1607)
!1620 = !DILocation(line: 147, column: 6, scope: !1607)
!1621 = !DILocation(line: 147, column: 41, scope: !1607)
!1622 = !DILocation(line: 147, column: 62, scope: !1607)
!1623 = !DILocation(line: 147, column: 57, scope: !1607)
!1624 = !DILocation(line: 148, column: 15, scope: !1607)
!1625 = !DILocation(line: 149, column: 21, scope: !1607)
!1626 = !DILocation(line: 149, column: 24, scope: !1607)
!1627 = !DILocation(line: 149, column: 34, scope: !1607)
!1628 = !DILocation(line: 150, column: 19, scope: !1607)
!1629 = !DILocation(line: 150, column: 24, scope: !1607)
!1630 = !DILocation(line: 150, column: 6, scope: !1607)
!1631 = !DILocation(line: 151, column: 3, scope: !1607)
!1632 = distinct !DISubprogram(name: "set_quoting_flags", scope: !516, file: !516, line: 159, type: !1633, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!72, !1573, !72}
!1635 = !{!1636, !1637, !1638}
!1636 = !DILocalVariable(name: "o", arg: 1, scope: !1632, file: !516, line: 159, type: !1573)
!1637 = !DILocalVariable(name: "i", arg: 2, scope: !1632, file: !516, line: 159, type: !72)
!1638 = !DILocalVariable(name: "r", scope: !1632, file: !516, line: 163, type: !72)
!1639 = !DILocation(line: 0, scope: !1632)
!1640 = !DILocation(line: 161, column: 8, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1632, file: !516, line: 161, column: 7)
!1642 = !DILocation(line: 161, column: 7, scope: !1632)
!1643 = !DILocation(line: 163, column: 14, scope: !1632)
!1644 = !{!1595, !911, i64 4}
!1645 = !DILocation(line: 164, column: 12, scope: !1632)
!1646 = !DILocation(line: 165, column: 3, scope: !1632)
!1647 = distinct !DISubprogram(name: "set_custom_quoting", scope: !516, file: !516, line: 169, type: !1648, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !1573, !96, !96}
!1650 = !{!1651, !1652, !1653}
!1651 = !DILocalVariable(name: "o", arg: 1, scope: !1647, file: !516, line: 169, type: !1573)
!1652 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1647, file: !516, line: 170, type: !96)
!1653 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1647, file: !516, line: 170, type: !96)
!1654 = !DILocation(line: 0, scope: !1647)
!1655 = !DILocation(line: 172, column: 8, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1647, file: !516, line: 172, column: 7)
!1657 = !DILocation(line: 172, column: 7, scope: !1647)
!1658 = !DILocation(line: 174, column: 12, scope: !1647)
!1659 = !DILocation(line: 175, column: 8, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1647, file: !516, line: 175, column: 7)
!1661 = !DILocation(line: 175, column: 19, scope: !1660)
!1662 = !DILocation(line: 176, column: 5, scope: !1660)
!1663 = !DILocation(line: 177, column: 6, scope: !1647)
!1664 = !DILocation(line: 177, column: 17, scope: !1647)
!1665 = !{!1595, !839, i64 40}
!1666 = !DILocation(line: 178, column: 6, scope: !1647)
!1667 = !DILocation(line: 178, column: 18, scope: !1647)
!1668 = !{!1595, !839, i64 48}
!1669 = !DILocation(line: 179, column: 1, scope: !1647)
!1670 = !DISubprogram(name: "abort", scope: !1035, file: !1035, line: 598, type: !471, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !847)
!1671 = distinct !DISubprogram(name: "quotearg_buffer", scope: !516, file: !516, line: 774, type: !1672, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!147, !89, !147, !96, !147, !1587}
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1675 = !DILocalVariable(name: "buffer", arg: 1, scope: !1671, file: !516, line: 774, type: !89)
!1676 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1671, file: !516, line: 774, type: !147)
!1677 = !DILocalVariable(name: "arg", arg: 3, scope: !1671, file: !516, line: 775, type: !96)
!1678 = !DILocalVariable(name: "argsize", arg: 4, scope: !1671, file: !516, line: 775, type: !147)
!1679 = !DILocalVariable(name: "o", arg: 5, scope: !1671, file: !516, line: 776, type: !1587)
!1680 = !DILocalVariable(name: "p", scope: !1671, file: !516, line: 778, type: !1587)
!1681 = !DILocalVariable(name: "saved_errno", scope: !1671, file: !516, line: 779, type: !72)
!1682 = !DILocalVariable(name: "r", scope: !1671, file: !516, line: 780, type: !147)
!1683 = !DILocation(line: 0, scope: !1671)
!1684 = !DILocation(line: 778, column: 37, scope: !1671)
!1685 = !DILocation(line: 779, column: 21, scope: !1671)
!1686 = !DILocation(line: 781, column: 43, scope: !1671)
!1687 = !DILocation(line: 781, column: 53, scope: !1671)
!1688 = !DILocation(line: 781, column: 63, scope: !1671)
!1689 = !DILocation(line: 782, column: 43, scope: !1671)
!1690 = !DILocation(line: 782, column: 58, scope: !1671)
!1691 = !DILocation(line: 780, column: 14, scope: !1671)
!1692 = !DILocation(line: 783, column: 9, scope: !1671)
!1693 = !DILocation(line: 784, column: 3, scope: !1671)
!1694 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !516, file: !516, line: 251, type: !1695, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1699)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!147, !89, !147, !96, !147, !542, !72, !1697, !96, !96}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1724, !1726, !1729, !1730, !1731, !1732, !1735, !1736, !1739, !1743, !1744, !1752, !1755, !1756, !1758, !1759, !1760, !1761}
!1700 = !DILocalVariable(name: "buffer", arg: 1, scope: !1694, file: !516, line: 251, type: !89)
!1701 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1694, file: !516, line: 251, type: !147)
!1702 = !DILocalVariable(name: "arg", arg: 3, scope: !1694, file: !516, line: 252, type: !96)
!1703 = !DILocalVariable(name: "argsize", arg: 4, scope: !1694, file: !516, line: 252, type: !147)
!1704 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1694, file: !516, line: 253, type: !542)
!1705 = !DILocalVariable(name: "flags", arg: 6, scope: !1694, file: !516, line: 253, type: !72)
!1706 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1694, file: !516, line: 254, type: !1697)
!1707 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1694, file: !516, line: 255, type: !96)
!1708 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1694, file: !516, line: 256, type: !96)
!1709 = !DILocalVariable(name: "unibyte_locale", scope: !1694, file: !516, line: 258, type: !99)
!1710 = !DILocalVariable(name: "len", scope: !1694, file: !516, line: 260, type: !147)
!1711 = !DILocalVariable(name: "orig_buffersize", scope: !1694, file: !516, line: 261, type: !147)
!1712 = !DILocalVariable(name: "quote_string", scope: !1694, file: !516, line: 262, type: !96)
!1713 = !DILocalVariable(name: "quote_string_len", scope: !1694, file: !516, line: 263, type: !147)
!1714 = !DILocalVariable(name: "backslash_escapes", scope: !1694, file: !516, line: 264, type: !99)
!1715 = !DILocalVariable(name: "elide_outer_quotes", scope: !1694, file: !516, line: 265, type: !99)
!1716 = !DILocalVariable(name: "encountered_single_quote", scope: !1694, file: !516, line: 266, type: !99)
!1717 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1694, file: !516, line: 267, type: !99)
!1718 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1694, file: !516, line: 309, type: !99)
!1719 = !DILocalVariable(name: "lq", scope: !1720, file: !516, line: 361, type: !96)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !516, line: 361, column: 11)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !516, line: 360, column: 13)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !516, line: 333, column: 7)
!1723 = distinct !DILexicalBlock(scope: !1694, file: !516, line: 312, column: 5)
!1724 = !DILocalVariable(name: "i", scope: !1725, file: !516, line: 395, type: !147)
!1725 = distinct !DILexicalBlock(scope: !1694, file: !516, line: 395, column: 3)
!1726 = !DILocalVariable(name: "is_right_quote", scope: !1727, file: !516, line: 397, type: !99)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !516, line: 396, column: 5)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !516, line: 395, column: 3)
!1729 = !DILocalVariable(name: "escaping", scope: !1727, file: !516, line: 398, type: !99)
!1730 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1727, file: !516, line: 399, type: !99)
!1731 = !DILocalVariable(name: "c", scope: !1727, file: !516, line: 417, type: !150)
!1732 = !DILocalVariable(name: "m", scope: !1733, file: !516, line: 598, type: !147)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !516, line: 596, column: 11)
!1734 = distinct !DILexicalBlock(scope: !1727, file: !516, line: 419, column: 9)
!1735 = !DILocalVariable(name: "printable", scope: !1733, file: !516, line: 600, type: !99)
!1736 = !DILocalVariable(name: "mbs", scope: !1737, file: !516, line: 609, type: !603)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !516, line: 608, column: 15)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !516, line: 602, column: 17)
!1739 = !DILocalVariable(name: "w", scope: !1740, file: !516, line: 618, type: !496)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !516, line: 617, column: 19)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !516, line: 616, column: 17)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !516, line: 616, column: 17)
!1743 = !DILocalVariable(name: "bytes", scope: !1740, file: !516, line: 619, type: !147)
!1744 = !DILocalVariable(name: "j", scope: !1745, file: !516, line: 648, type: !147)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !516, line: 648, column: 29)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !516, line: 647, column: 27)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !516, line: 645, column: 29)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !516, line: 636, column: 23)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !516, line: 628, column: 30)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !516, line: 623, column: 30)
!1751 = distinct !DILexicalBlock(scope: !1740, file: !516, line: 621, column: 25)
!1752 = !DILocalVariable(name: "ilim", scope: !1753, file: !516, line: 674, type: !147)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !516, line: 671, column: 15)
!1754 = distinct !DILexicalBlock(scope: !1733, file: !516, line: 670, column: 17)
!1755 = !DILabel(scope: !1694, name: "process_input", file: !516, line: 308)
!1756 = !DILabel(scope: !1757, name: "c_and_shell_escape", file: !516, line: 502)
!1757 = distinct !DILexicalBlock(scope: !1734, file: !516, line: 478, column: 9)
!1758 = !DILabel(scope: !1757, name: "c_escape", file: !516, line: 507)
!1759 = !DILabel(scope: !1727, name: "store_escape", file: !516, line: 709)
!1760 = !DILabel(scope: !1727, name: "store_c", file: !516, line: 712)
!1761 = !DILabel(scope: !1694, name: "force_outer_quoting_style", file: !516, line: 753)
!1762 = !DILocation(line: 0, scope: !1694)
!1763 = !DILocation(line: 258, column: 25, scope: !1694)
!1764 = !DILocation(line: 258, column: 36, scope: !1694)
!1765 = !DILocation(line: 265, column: 8, scope: !1694)
!1766 = !DILocation(line: 267, column: 3, scope: !1694)
!1767 = !DILocation(line: 261, column: 10, scope: !1694)
!1768 = !DILocation(line: 262, column: 15, scope: !1694)
!1769 = !DILocation(line: 263, column: 10, scope: !1694)
!1770 = !DILocation(line: 264, column: 8, scope: !1694)
!1771 = !DILocation(line: 266, column: 8, scope: !1694)
!1772 = !DILocation(line: 267, column: 8, scope: !1694)
!1773 = !DILocation(line: 308, column: 2, scope: !1694)
!1774 = !DILocation(line: 311, column: 3, scope: !1694)
!1775 = !DILocation(line: 318, column: 11, scope: !1723)
!1776 = !DILocation(line: 318, column: 12, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1723, file: !516, line: 318, column: 11)
!1778 = !DILocation(line: 319, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !516, line: 319, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !516, line: 319, column: 9)
!1781 = !DILocation(line: 319, column: 9, scope: !1780)
!1782 = !DILocation(line: 0, scope: !594, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 357, column: 26, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !516, line: 335, column: 11)
!1785 = distinct !DILexicalBlock(scope: !1722, file: !516, line: 334, column: 13)
!1786 = !DILocation(line: 199, column: 29, scope: !594, inlinedAt: !1783)
!1787 = !DILocation(line: 201, column: 19, scope: !1788, inlinedAt: !1783)
!1788 = distinct !DILexicalBlock(scope: !594, file: !516, line: 201, column: 7)
!1789 = !DILocation(line: 201, column: 7, scope: !594, inlinedAt: !1783)
!1790 = !DILocation(line: 229, column: 3, scope: !594, inlinedAt: !1783)
!1791 = !DILocation(line: 230, column: 3, scope: !594, inlinedAt: !1783)
!1792 = !DILocation(line: 230, column: 13, scope: !594, inlinedAt: !1783)
!1793 = !DILocalVariable(name: "ps", arg: 1, scope: !1794, file: !1541, line: 1135, type: !1797)
!1794 = distinct !DISubprogram(name: "mbszero", scope: !1541, file: !1541, line: 1135, type: !1795, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1798)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!1798 = !{!1793}
!1799 = !DILocation(line: 0, scope: !1794, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 230, column: 18, scope: !594, inlinedAt: !1783)
!1801 = !DILocalVariable(name: "__dest", arg: 1, scope: !1802, file: !1550, line: 57, type: !145)
!1802 = distinct !DISubprogram(name: "memset", scope: !1550, file: !1550, line: 57, type: !1551, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1803)
!1803 = !{!1801, !1804, !1805}
!1804 = !DILocalVariable(name: "__ch", arg: 2, scope: !1802, file: !1550, line: 57, type: !72)
!1805 = !DILocalVariable(name: "__len", arg: 3, scope: !1802, file: !1550, line: 57, type: !147)
!1806 = !DILocation(line: 0, scope: !1802, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 1137, column: 3, scope: !1794, inlinedAt: !1800)
!1808 = !DILocation(line: 59, column: 10, scope: !1802, inlinedAt: !1807)
!1809 = !DILocation(line: 231, column: 7, scope: !1810, inlinedAt: !1783)
!1810 = distinct !DILexicalBlock(scope: !594, file: !516, line: 231, column: 7)
!1811 = !DILocation(line: 231, column: 40, scope: !1810, inlinedAt: !1783)
!1812 = !DILocation(line: 231, column: 45, scope: !1810, inlinedAt: !1783)
!1813 = !DILocation(line: 235, column: 1, scope: !594, inlinedAt: !1783)
!1814 = !DILocation(line: 0, scope: !594, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 358, column: 27, scope: !1784)
!1816 = !DILocation(line: 199, column: 29, scope: !594, inlinedAt: !1815)
!1817 = !DILocation(line: 201, column: 19, scope: !1788, inlinedAt: !1815)
!1818 = !DILocation(line: 201, column: 7, scope: !594, inlinedAt: !1815)
!1819 = !DILocation(line: 229, column: 3, scope: !594, inlinedAt: !1815)
!1820 = !DILocation(line: 230, column: 3, scope: !594, inlinedAt: !1815)
!1821 = !DILocation(line: 230, column: 13, scope: !594, inlinedAt: !1815)
!1822 = !DILocation(line: 0, scope: !1794, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 230, column: 18, scope: !594, inlinedAt: !1815)
!1824 = !DILocation(line: 0, scope: !1802, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 1137, column: 3, scope: !1794, inlinedAt: !1823)
!1826 = !DILocation(line: 59, column: 10, scope: !1802, inlinedAt: !1825)
!1827 = !DILocation(line: 231, column: 7, scope: !1810, inlinedAt: !1815)
!1828 = !DILocation(line: 231, column: 40, scope: !1810, inlinedAt: !1815)
!1829 = !DILocation(line: 231, column: 45, scope: !1810, inlinedAt: !1815)
!1830 = !DILocation(line: 235, column: 1, scope: !594, inlinedAt: !1815)
!1831 = !DILocation(line: 360, column: 14, scope: !1721)
!1832 = !DILocation(line: 360, column: 13, scope: !1722)
!1833 = !DILocation(line: 0, scope: !1720)
!1834 = !DILocation(line: 361, column: 45, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1720, file: !516, line: 361, column: 11)
!1836 = !DILocation(line: 361, column: 11, scope: !1720)
!1837 = !DILocation(line: 362, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !516, line: 362, column: 13)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !516, line: 362, column: 13)
!1840 = !DILocation(line: 362, column: 13, scope: !1839)
!1841 = !DILocation(line: 361, column: 52, scope: !1835)
!1842 = distinct !{!1842, !1836, !1843, !957}
!1843 = !DILocation(line: 362, column: 13, scope: !1720)
!1844 = !DILocation(line: 260, column: 10, scope: !1694)
!1845 = !DILocation(line: 365, column: 28, scope: !1722)
!1846 = !DILocation(line: 367, column: 7, scope: !1723)
!1847 = !DILocation(line: 370, column: 7, scope: !1723)
!1848 = !DILocation(line: 373, column: 7, scope: !1723)
!1849 = !DILocation(line: 376, column: 12, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1723, file: !516, line: 376, column: 11)
!1851 = !DILocation(line: 376, column: 11, scope: !1723)
!1852 = !DILocation(line: 381, column: 12, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1723, file: !516, line: 381, column: 11)
!1854 = !DILocation(line: 381, column: 11, scope: !1723)
!1855 = !DILocation(line: 382, column: 9, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !516, line: 382, column: 9)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !516, line: 382, column: 9)
!1858 = !DILocation(line: 382, column: 9, scope: !1857)
!1859 = !DILocation(line: 389, column: 7, scope: !1723)
!1860 = !DILocation(line: 392, column: 7, scope: !1723)
!1861 = !DILocation(line: 0, scope: !1725)
!1862 = !DILocation(line: 395, column: 8, scope: !1725)
!1863 = !DILocation(line: 309, column: 8, scope: !1694)
!1864 = !DILocation(line: 395, scope: !1725)
!1865 = !DILocation(line: 395, column: 34, scope: !1728)
!1866 = !DILocation(line: 395, column: 26, scope: !1728)
!1867 = !DILocation(line: 395, column: 48, scope: !1728)
!1868 = !DILocation(line: 395, column: 55, scope: !1728)
!1869 = !DILocation(line: 395, column: 3, scope: !1725)
!1870 = !DILocation(line: 395, column: 67, scope: !1728)
!1871 = !DILocation(line: 0, scope: !1727)
!1872 = !DILocation(line: 402, column: 11, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1727, file: !516, line: 401, column: 11)
!1874 = !DILocation(line: 404, column: 17, scope: !1873)
!1875 = !DILocation(line: 405, column: 39, scope: !1873)
!1876 = !DILocation(line: 409, column: 32, scope: !1873)
!1877 = !DILocation(line: 405, column: 19, scope: !1873)
!1878 = !DILocation(line: 405, column: 15, scope: !1873)
!1879 = !DILocation(line: 410, column: 11, scope: !1873)
!1880 = !DILocation(line: 410, column: 25, scope: !1873)
!1881 = !DILocalVariable(name: "__s1", arg: 1, scope: !1882, file: !923, line: 974, type: !1059)
!1882 = distinct !DISubprogram(name: "memeq", scope: !923, file: !923, line: 974, type: !1511, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1883)
!1883 = !{!1881, !1884, !1885}
!1884 = !DILocalVariable(name: "__s2", arg: 2, scope: !1882, file: !923, line: 974, type: !1059)
!1885 = !DILocalVariable(name: "__n", arg: 3, scope: !1882, file: !923, line: 974, type: !147)
!1886 = !DILocation(line: 0, scope: !1882, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 410, column: 14, scope: !1873)
!1888 = !DILocation(line: 976, column: 11, scope: !1882, inlinedAt: !1887)
!1889 = !DILocation(line: 976, column: 10, scope: !1882, inlinedAt: !1887)
!1890 = !DILocation(line: 401, column: 11, scope: !1727)
!1891 = !DILocation(line: 417, column: 25, scope: !1727)
!1892 = !DILocation(line: 418, column: 7, scope: !1727)
!1893 = !DILocation(line: 421, column: 15, scope: !1734)
!1894 = !DILocation(line: 423, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !516, line: 423, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !516, line: 422, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1734, file: !516, line: 421, column: 15)
!1898 = !DILocation(line: 423, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !516, line: 423, column: 15)
!1900 = !DILocation(line: 423, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !516, line: 423, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !516, line: 423, column: 15)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !516, line: 423, column: 15)
!1904 = !DILocation(line: 423, column: 15, scope: !1902)
!1905 = !DILocation(line: 423, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !516, line: 423, column: 15)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !516, line: 423, column: 15)
!1908 = !DILocation(line: 423, column: 15, scope: !1907)
!1909 = !DILocation(line: 423, column: 15, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !516, line: 423, column: 15)
!1911 = distinct !DILexicalBlock(scope: !1903, file: !516, line: 423, column: 15)
!1912 = !DILocation(line: 423, column: 15, scope: !1911)
!1913 = !DILocation(line: 423, column: 15, scope: !1903)
!1914 = !DILocation(line: 423, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !516, line: 423, column: 15)
!1916 = distinct !DILexicalBlock(scope: !1895, file: !516, line: 423, column: 15)
!1917 = !DILocation(line: 423, column: 15, scope: !1916)
!1918 = !DILocation(line: 431, column: 19, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1896, file: !516, line: 430, column: 19)
!1920 = !DILocation(line: 431, column: 24, scope: !1919)
!1921 = !DILocation(line: 431, column: 28, scope: !1919)
!1922 = !DILocation(line: 431, column: 38, scope: !1919)
!1923 = !DILocation(line: 431, column: 48, scope: !1919)
!1924 = !DILocation(line: 431, column: 59, scope: !1919)
!1925 = !DILocation(line: 433, column: 19, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !516, line: 433, column: 19)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !516, line: 433, column: 19)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !516, line: 432, column: 17)
!1929 = !DILocation(line: 433, column: 19, scope: !1927)
!1930 = !DILocation(line: 434, column: 19, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !516, line: 434, column: 19)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !516, line: 434, column: 19)
!1933 = !DILocation(line: 434, column: 19, scope: !1932)
!1934 = !DILocation(line: 435, column: 17, scope: !1928)
!1935 = !DILocation(line: 442, column: 20, scope: !1897)
!1936 = !DILocation(line: 447, column: 11, scope: !1734)
!1937 = !DILocation(line: 450, column: 19, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1734, file: !516, line: 448, column: 13)
!1939 = !DILocation(line: 456, column: 19, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1938, file: !516, line: 455, column: 19)
!1941 = !DILocation(line: 456, column: 24, scope: !1940)
!1942 = !DILocation(line: 456, column: 28, scope: !1940)
!1943 = !DILocation(line: 456, column: 38, scope: !1940)
!1944 = !DILocation(line: 456, column: 47, scope: !1940)
!1945 = !DILocation(line: 456, column: 41, scope: !1940)
!1946 = !DILocation(line: 456, column: 52, scope: !1940)
!1947 = !DILocation(line: 455, column: 19, scope: !1938)
!1948 = !DILocation(line: 457, column: 25, scope: !1940)
!1949 = !DILocation(line: 457, column: 17, scope: !1940)
!1950 = !DILocation(line: 464, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1940, file: !516, line: 458, column: 19)
!1952 = !DILocation(line: 468, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !516, line: 468, column: 21)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !516, line: 468, column: 21)
!1955 = !DILocation(line: 468, column: 21, scope: !1954)
!1956 = !DILocation(line: 469, column: 21, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !516, line: 469, column: 21)
!1958 = distinct !DILexicalBlock(scope: !1951, file: !516, line: 469, column: 21)
!1959 = !DILocation(line: 469, column: 21, scope: !1958)
!1960 = !DILocation(line: 470, column: 21, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !516, line: 470, column: 21)
!1962 = distinct !DILexicalBlock(scope: !1951, file: !516, line: 470, column: 21)
!1963 = !DILocation(line: 470, column: 21, scope: !1962)
!1964 = !DILocation(line: 471, column: 21, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !516, line: 471, column: 21)
!1966 = distinct !DILexicalBlock(scope: !1951, file: !516, line: 471, column: 21)
!1967 = !DILocation(line: 471, column: 21, scope: !1966)
!1968 = !DILocation(line: 472, column: 21, scope: !1951)
!1969 = !DILocation(line: 482, column: 33, scope: !1757)
!1970 = !DILocation(line: 483, column: 33, scope: !1757)
!1971 = !DILocation(line: 485, column: 33, scope: !1757)
!1972 = !DILocation(line: 486, column: 33, scope: !1757)
!1973 = !DILocation(line: 487, column: 33, scope: !1757)
!1974 = !DILocation(line: 490, column: 17, scope: !1757)
!1975 = !DILocation(line: 492, column: 21, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !516, line: 491, column: 15)
!1977 = distinct !DILexicalBlock(scope: !1757, file: !516, line: 490, column: 17)
!1978 = !DILocation(line: 499, column: 35, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1757, file: !516, line: 499, column: 17)
!1980 = !DILocation(line: 499, column: 57, scope: !1979)
!1981 = !DILocation(line: 0, scope: !1757)
!1982 = !DILocation(line: 502, column: 11, scope: !1757)
!1983 = !DILocation(line: 504, column: 17, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1757, file: !516, line: 503, column: 17)
!1985 = !DILocation(line: 507, column: 11, scope: !1757)
!1986 = !DILocation(line: 508, column: 17, scope: !1757)
!1987 = !DILocation(line: 517, column: 15, scope: !1734)
!1988 = !DILocation(line: 517, column: 40, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1734, file: !516, line: 517, column: 15)
!1990 = !DILocation(line: 517, column: 47, scope: !1989)
!1991 = !DILocation(line: 517, column: 18, scope: !1989)
!1992 = !DILocation(line: 521, column: 17, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1734, file: !516, line: 521, column: 15)
!1994 = !DILocation(line: 521, column: 15, scope: !1734)
!1995 = !DILocation(line: 525, column: 11, scope: !1734)
!1996 = !DILocation(line: 537, column: 15, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1734, file: !516, line: 536, column: 15)
!1998 = !DILocation(line: 544, column: 15, scope: !1734)
!1999 = !DILocation(line: 546, column: 19, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !516, line: 545, column: 13)
!2001 = distinct !DILexicalBlock(scope: !1734, file: !516, line: 544, column: 15)
!2002 = !DILocation(line: 549, column: 19, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2000, file: !516, line: 549, column: 19)
!2004 = !DILocation(line: 549, column: 30, scope: !2003)
!2005 = !DILocation(line: 558, column: 15, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !516, line: 558, column: 15)
!2007 = distinct !DILexicalBlock(scope: !2000, file: !516, line: 558, column: 15)
!2008 = !DILocation(line: 558, column: 15, scope: !2007)
!2009 = !DILocation(line: 559, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !516, line: 559, column: 15)
!2011 = distinct !DILexicalBlock(scope: !2000, file: !516, line: 559, column: 15)
!2012 = !DILocation(line: 559, column: 15, scope: !2011)
!2013 = !DILocation(line: 560, column: 15, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !516, line: 560, column: 15)
!2015 = distinct !DILexicalBlock(scope: !2000, file: !516, line: 560, column: 15)
!2016 = !DILocation(line: 560, column: 15, scope: !2015)
!2017 = !DILocation(line: 562, column: 13, scope: !2000)
!2018 = !DILocation(line: 602, column: 17, scope: !1733)
!2019 = !DILocation(line: 0, scope: !1733)
!2020 = !DILocation(line: 605, column: 29, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1738, file: !516, line: 603, column: 15)
!2022 = !DILocation(line: 605, column: 27, scope: !2021)
!2023 = !DILocation(line: 668, column: 40, scope: !1733)
!2024 = !DILocation(line: 670, column: 23, scope: !1754)
!2025 = !DILocation(line: 609, column: 17, scope: !1737)
!2026 = !DILocation(line: 609, column: 27, scope: !1737)
!2027 = !DILocation(line: 0, scope: !1794, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 609, column: 32, scope: !1737)
!2029 = !DILocation(line: 0, scope: !1802, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 1137, column: 3, scope: !1794, inlinedAt: !2028)
!2031 = !DILocation(line: 59, column: 10, scope: !1802, inlinedAt: !2030)
!2032 = !DILocation(line: 613, column: 29, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1737, file: !516, line: 613, column: 21)
!2034 = !DILocation(line: 613, column: 21, scope: !1737)
!2035 = !DILocation(line: 614, column: 29, scope: !2033)
!2036 = !DILocation(line: 614, column: 19, scope: !2033)
!2037 = !DILocation(line: 618, column: 21, scope: !1740)
!2038 = !DILocation(line: 620, column: 54, scope: !1740)
!2039 = !DILocation(line: 0, scope: !1740)
!2040 = !DILocation(line: 619, column: 36, scope: !1740)
!2041 = !DILocation(line: 621, column: 25, scope: !1740)
!2042 = !DILocation(line: 631, column: 38, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1749, file: !516, line: 629, column: 23)
!2044 = !DILocation(line: 631, column: 48, scope: !2043)
!2045 = !DILocation(line: 665, column: 19, scope: !1741)
!2046 = !DILocation(line: 666, column: 15, scope: !1738)
!2047 = !DILocation(line: 626, column: 25, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1750, file: !516, line: 624, column: 23)
!2049 = !DILocation(line: 631, column: 51, scope: !2043)
!2050 = !DILocation(line: 631, column: 25, scope: !2043)
!2051 = !DILocation(line: 632, column: 28, scope: !2043)
!2052 = !DILocation(line: 631, column: 34, scope: !2043)
!2053 = distinct !{!2053, !2050, !2051, !957}
!2054 = !DILocation(line: 646, column: 29, scope: !1747)
!2055 = !DILocation(line: 0, scope: !1745)
!2056 = !DILocation(line: 649, column: 49, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1745, file: !516, line: 648, column: 29)
!2058 = !DILocation(line: 649, column: 39, scope: !2057)
!2059 = !DILocation(line: 649, column: 31, scope: !2057)
!2060 = !DILocation(line: 648, column: 60, scope: !2057)
!2061 = !DILocation(line: 648, column: 50, scope: !2057)
!2062 = !DILocation(line: 648, column: 29, scope: !1745)
!2063 = distinct !{!2063, !2062, !2064, !957}
!2064 = !DILocation(line: 654, column: 33, scope: !1745)
!2065 = !DILocation(line: 657, column: 43, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1748, file: !516, line: 657, column: 29)
!2067 = !DILocalVariable(name: "wc", arg: 1, scope: !2068, file: !2069, line: 865, type: !2072)
!2068 = distinct !DISubprogram(name: "c32isprint", scope: !2069, file: !2069, line: 865, type: !2070, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2074)
!2069 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!72, !2072}
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2073, line: 20, baseType: !65)
!2073 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2074 = !{!2067}
!2075 = !DILocation(line: 0, scope: !2068, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 657, column: 31, scope: !2066)
!2077 = !DILocation(line: 871, column: 10, scope: !2068, inlinedAt: !2076)
!2078 = !DILocation(line: 657, column: 31, scope: !2066)
!2079 = !DILocation(line: 657, column: 29, scope: !1748)
!2080 = !DILocation(line: 664, column: 23, scope: !1740)
!2081 = !DILocation(line: 670, column: 19, scope: !1754)
!2082 = !DILocation(line: 670, column: 45, scope: !1754)
!2083 = !DILocation(line: 674, column: 33, scope: !1753)
!2084 = !DILocation(line: 0, scope: !1753)
!2085 = !DILocation(line: 676, column: 17, scope: !1753)
!2086 = !DILocation(line: 398, column: 12, scope: !1727)
!2087 = !DILocation(line: 678, column: 43, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !516, line: 678, column: 25)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !516, line: 677, column: 19)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !516, line: 676, column: 17)
!2091 = distinct !DILexicalBlock(scope: !1753, file: !516, line: 676, column: 17)
!2092 = !DILocation(line: 680, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !516, line: 680, column: 25)
!2094 = distinct !DILexicalBlock(scope: !2088, file: !516, line: 679, column: 23)
!2095 = !DILocation(line: 680, column: 25, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !516, line: 680, column: 25)
!2097 = !DILocation(line: 680, column: 25, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !516, line: 680, column: 25)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !516, line: 680, column: 25)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !516, line: 680, column: 25)
!2101 = !DILocation(line: 680, column: 25, scope: !2099)
!2102 = !DILocation(line: 680, column: 25, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !516, line: 680, column: 25)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !516, line: 680, column: 25)
!2105 = !DILocation(line: 680, column: 25, scope: !2104)
!2106 = !DILocation(line: 680, column: 25, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !516, line: 680, column: 25)
!2108 = distinct !DILexicalBlock(scope: !2100, file: !516, line: 680, column: 25)
!2109 = !DILocation(line: 680, column: 25, scope: !2108)
!2110 = !DILocation(line: 680, column: 25, scope: !2100)
!2111 = !DILocation(line: 680, column: 25, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !516, line: 680, column: 25)
!2113 = distinct !DILexicalBlock(scope: !2093, file: !516, line: 680, column: 25)
!2114 = !DILocation(line: 680, column: 25, scope: !2113)
!2115 = !DILocation(line: 681, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !516, line: 681, column: 25)
!2117 = distinct !DILexicalBlock(scope: !2094, file: !516, line: 681, column: 25)
!2118 = !DILocation(line: 681, column: 25, scope: !2117)
!2119 = !DILocation(line: 682, column: 25, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !516, line: 682, column: 25)
!2121 = distinct !DILexicalBlock(scope: !2094, file: !516, line: 682, column: 25)
!2122 = !DILocation(line: 682, column: 25, scope: !2121)
!2123 = !DILocation(line: 683, column: 38, scope: !2094)
!2124 = !DILocation(line: 683, column: 33, scope: !2094)
!2125 = !DILocation(line: 684, column: 23, scope: !2094)
!2126 = !DILocation(line: 685, column: 30, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2088, file: !516, line: 685, column: 30)
!2128 = !DILocation(line: 685, column: 30, scope: !2088)
!2129 = !DILocation(line: 687, column: 25, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !516, line: 687, column: 25)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !516, line: 687, column: 25)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !516, line: 686, column: 23)
!2133 = !DILocation(line: 687, column: 25, scope: !2131)
!2134 = !DILocation(line: 689, column: 23, scope: !2132)
!2135 = !DILocation(line: 690, column: 35, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2089, file: !516, line: 690, column: 25)
!2137 = !DILocation(line: 690, column: 30, scope: !2136)
!2138 = !DILocation(line: 690, column: 25, scope: !2089)
!2139 = !DILocation(line: 692, column: 21, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !516, line: 692, column: 21)
!2141 = distinct !DILexicalBlock(scope: !2089, file: !516, line: 692, column: 21)
!2142 = !DILocation(line: 692, column: 21, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !516, line: 692, column: 21)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !516, line: 692, column: 21)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !516, line: 692, column: 21)
!2146 = !DILocation(line: 692, column: 21, scope: !2144)
!2147 = !DILocation(line: 692, column: 21, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !516, line: 692, column: 21)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !516, line: 692, column: 21)
!2150 = !DILocation(line: 692, column: 21, scope: !2149)
!2151 = !DILocation(line: 692, column: 21, scope: !2145)
!2152 = !DILocation(line: 0, scope: !2089)
!2153 = !DILocation(line: 693, column: 21, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !516, line: 693, column: 21)
!2155 = distinct !DILexicalBlock(scope: !2089, file: !516, line: 693, column: 21)
!2156 = !DILocation(line: 693, column: 21, scope: !2155)
!2157 = !DILocation(line: 694, column: 25, scope: !2089)
!2158 = !DILocation(line: 676, column: 17, scope: !2090)
!2159 = distinct !{!2159, !2160, !2161}
!2160 = !DILocation(line: 676, column: 17, scope: !2091)
!2161 = !DILocation(line: 695, column: 19, scope: !2091)
!2162 = !DILocation(line: 409, column: 30, scope: !1873)
!2163 = !DILocation(line: 702, column: 34, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1727, file: !516, line: 702, column: 11)
!2165 = !DILocation(line: 704, column: 14, scope: !2164)
!2166 = !DILocation(line: 705, column: 14, scope: !2164)
!2167 = !DILocation(line: 705, column: 35, scope: !2164)
!2168 = !DILocation(line: 705, column: 17, scope: !2164)
!2169 = !DILocation(line: 705, column: 47, scope: !2164)
!2170 = !DILocation(line: 705, column: 65, scope: !2164)
!2171 = !DILocation(line: 706, column: 11, scope: !2164)
!2172 = !DILocation(line: 702, column: 11, scope: !1727)
!2173 = !DILocation(line: 395, column: 15, scope: !1725)
!2174 = !DILocation(line: 709, column: 5, scope: !1727)
!2175 = !DILocation(line: 710, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !1727, file: !516, line: 710, column: 7)
!2177 = !DILocation(line: 710, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2176, file: !516, line: 710, column: 7)
!2179 = !DILocation(line: 710, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !516, line: 710, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !516, line: 710, column: 7)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !516, line: 710, column: 7)
!2183 = !DILocation(line: 710, column: 7, scope: !2181)
!2184 = !DILocation(line: 710, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !516, line: 710, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !516, line: 710, column: 7)
!2187 = !DILocation(line: 710, column: 7, scope: !2186)
!2188 = !DILocation(line: 710, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !516, line: 710, column: 7)
!2190 = distinct !DILexicalBlock(scope: !2182, file: !516, line: 710, column: 7)
!2191 = !DILocation(line: 710, column: 7, scope: !2190)
!2192 = !DILocation(line: 710, column: 7, scope: !2182)
!2193 = !DILocation(line: 710, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !516, line: 710, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2176, file: !516, line: 710, column: 7)
!2196 = !DILocation(line: 710, column: 7, scope: !2195)
!2197 = !DILocation(line: 712, column: 5, scope: !1727)
!2198 = !DILocation(line: 713, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !516, line: 713, column: 7)
!2200 = distinct !DILexicalBlock(scope: !1727, file: !516, line: 713, column: 7)
!2201 = !DILocation(line: 417, column: 21, scope: !1727)
!2202 = !DILocation(line: 713, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !516, line: 713, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !516, line: 713, column: 7)
!2205 = distinct !DILexicalBlock(scope: !2199, file: !516, line: 713, column: 7)
!2206 = !DILocation(line: 713, column: 7, scope: !2204)
!2207 = !DILocation(line: 713, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !516, line: 713, column: 7)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !516, line: 713, column: 7)
!2210 = !DILocation(line: 713, column: 7, scope: !2209)
!2211 = !DILocation(line: 713, column: 7, scope: !2205)
!2212 = !DILocation(line: 714, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !516, line: 714, column: 7)
!2214 = distinct !DILexicalBlock(scope: !1727, file: !516, line: 714, column: 7)
!2215 = !DILocation(line: 714, column: 7, scope: !2214)
!2216 = !DILocation(line: 716, column: 13, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !1727, file: !516, line: 716, column: 11)
!2218 = !DILocation(line: 716, column: 11, scope: !1727)
!2219 = !DILocation(line: 718, column: 5, scope: !1728)
!2220 = !DILocation(line: 395, column: 82, scope: !1728)
!2221 = !DILocation(line: 395, column: 3, scope: !1728)
!2222 = distinct !{!2222, !1869, !2223, !957}
!2223 = !DILocation(line: 718, column: 5, scope: !1725)
!2224 = !DILocation(line: 720, column: 11, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !1694, file: !516, line: 720, column: 7)
!2226 = !DILocation(line: 720, column: 16, scope: !2225)
!2227 = !DILocation(line: 728, column: 51, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1694, file: !516, line: 728, column: 7)
!2229 = !DILocation(line: 731, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !516, line: 731, column: 11)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !516, line: 730, column: 5)
!2232 = !DILocation(line: 731, column: 11, scope: !2231)
!2233 = !DILocation(line: 732, column: 16, scope: !2230)
!2234 = !DILocation(line: 732, column: 9, scope: !2230)
!2235 = !DILocation(line: 736, column: 18, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2230, file: !516, line: 736, column: 16)
!2237 = !DILocation(line: 736, column: 29, scope: !2236)
!2238 = !DILocation(line: 745, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !1694, file: !516, line: 745, column: 7)
!2240 = !DILocation(line: 745, column: 20, scope: !2239)
!2241 = !DILocation(line: 746, column: 12, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !516, line: 746, column: 5)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !516, line: 746, column: 5)
!2244 = !DILocation(line: 746, column: 5, scope: !2243)
!2245 = !DILocation(line: 747, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !516, line: 747, column: 7)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !516, line: 747, column: 7)
!2248 = !DILocation(line: 747, column: 7, scope: !2247)
!2249 = !DILocation(line: 746, column: 39, scope: !2242)
!2250 = distinct !{!2250, !2244, !2251, !957}
!2251 = !DILocation(line: 747, column: 7, scope: !2243)
!2252 = !DILocation(line: 749, column: 11, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1694, file: !516, line: 749, column: 7)
!2254 = !DILocation(line: 749, column: 7, scope: !1694)
!2255 = !DILocation(line: 750, column: 5, scope: !2253)
!2256 = !DILocation(line: 750, column: 17, scope: !2253)
!2257 = !DILocation(line: 753, column: 2, scope: !1694)
!2258 = !DILocation(line: 756, column: 51, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1694, file: !516, line: 756, column: 7)
!2260 = !DILocation(line: 756, column: 21, scope: !2259)
!2261 = !DILocation(line: 760, column: 42, scope: !1694)
!2262 = !DILocation(line: 758, column: 10, scope: !1694)
!2263 = !DILocation(line: 758, column: 3, scope: !1694)
!2264 = !DILocation(line: 762, column: 1, scope: !1694)
!2265 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1035, file: !1035, line: 98, type: !2266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!147}
!2268 = !DISubprogram(name: "strlen", scope: !1031, file: !1031, line: 407, type: !2269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!149, !96}
!2271 = !DISubprogram(name: "iswprint", scope: !2272, file: !2272, line: 120, type: !2070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!2272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2273 = distinct !DISubprogram(name: "quotearg_alloc", scope: !516, file: !516, line: 788, type: !2274, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!89, !96, !147, !1587}
!2276 = !{!2277, !2278, !2279}
!2277 = !DILocalVariable(name: "arg", arg: 1, scope: !2273, file: !516, line: 788, type: !96)
!2278 = !DILocalVariable(name: "argsize", arg: 2, scope: !2273, file: !516, line: 788, type: !147)
!2279 = !DILocalVariable(name: "o", arg: 3, scope: !2273, file: !516, line: 789, type: !1587)
!2280 = !DILocation(line: 0, scope: !2273)
!2281 = !DILocalVariable(name: "arg", arg: 1, scope: !2282, file: !516, line: 801, type: !96)
!2282 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !516, file: !516, line: 801, type: !2283, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!89, !96, !147, !768, !1587}
!2285 = !{!2281, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2286 = !DILocalVariable(name: "argsize", arg: 2, scope: !2282, file: !516, line: 801, type: !147)
!2287 = !DILocalVariable(name: "size", arg: 3, scope: !2282, file: !516, line: 801, type: !768)
!2288 = !DILocalVariable(name: "o", arg: 4, scope: !2282, file: !516, line: 802, type: !1587)
!2289 = !DILocalVariable(name: "p", scope: !2282, file: !516, line: 804, type: !1587)
!2290 = !DILocalVariable(name: "saved_errno", scope: !2282, file: !516, line: 805, type: !72)
!2291 = !DILocalVariable(name: "flags", scope: !2282, file: !516, line: 807, type: !72)
!2292 = !DILocalVariable(name: "bufsize", scope: !2282, file: !516, line: 808, type: !147)
!2293 = !DILocalVariable(name: "buf", scope: !2282, file: !516, line: 812, type: !89)
!2294 = !DILocation(line: 0, scope: !2282, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 791, column: 10, scope: !2273)
!2296 = !DILocation(line: 804, column: 37, scope: !2282, inlinedAt: !2295)
!2297 = !DILocation(line: 805, column: 21, scope: !2282, inlinedAt: !2295)
!2298 = !DILocation(line: 807, column: 18, scope: !2282, inlinedAt: !2295)
!2299 = !DILocation(line: 807, column: 24, scope: !2282, inlinedAt: !2295)
!2300 = !DILocation(line: 808, column: 72, scope: !2282, inlinedAt: !2295)
!2301 = !DILocation(line: 809, column: 56, scope: !2282, inlinedAt: !2295)
!2302 = !DILocation(line: 810, column: 49, scope: !2282, inlinedAt: !2295)
!2303 = !DILocation(line: 811, column: 49, scope: !2282, inlinedAt: !2295)
!2304 = !DILocation(line: 808, column: 20, scope: !2282, inlinedAt: !2295)
!2305 = !DILocation(line: 811, column: 62, scope: !2282, inlinedAt: !2295)
!2306 = !DILocation(line: 812, column: 15, scope: !2282, inlinedAt: !2295)
!2307 = !DILocation(line: 813, column: 60, scope: !2282, inlinedAt: !2295)
!2308 = !DILocation(line: 815, column: 32, scope: !2282, inlinedAt: !2295)
!2309 = !DILocation(line: 815, column: 47, scope: !2282, inlinedAt: !2295)
!2310 = !DILocation(line: 813, column: 3, scope: !2282, inlinedAt: !2295)
!2311 = !DILocation(line: 816, column: 9, scope: !2282, inlinedAt: !2295)
!2312 = !DILocation(line: 791, column: 3, scope: !2273)
!2313 = !DILocation(line: 0, scope: !2282)
!2314 = !DILocation(line: 804, column: 37, scope: !2282)
!2315 = !DILocation(line: 805, column: 21, scope: !2282)
!2316 = !DILocation(line: 807, column: 18, scope: !2282)
!2317 = !DILocation(line: 807, column: 27, scope: !2282)
!2318 = !DILocation(line: 807, column: 24, scope: !2282)
!2319 = !DILocation(line: 808, column: 72, scope: !2282)
!2320 = !DILocation(line: 809, column: 56, scope: !2282)
!2321 = !DILocation(line: 810, column: 49, scope: !2282)
!2322 = !DILocation(line: 811, column: 49, scope: !2282)
!2323 = !DILocation(line: 808, column: 20, scope: !2282)
!2324 = !DILocation(line: 811, column: 62, scope: !2282)
!2325 = !DILocation(line: 812, column: 15, scope: !2282)
!2326 = !DILocation(line: 813, column: 60, scope: !2282)
!2327 = !DILocation(line: 815, column: 32, scope: !2282)
!2328 = !DILocation(line: 815, column: 47, scope: !2282)
!2329 = !DILocation(line: 813, column: 3, scope: !2282)
!2330 = !DILocation(line: 816, column: 9, scope: !2282)
!2331 = !DILocation(line: 817, column: 7, scope: !2282)
!2332 = !DILocation(line: 818, column: 11, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2282, file: !516, line: 817, column: 7)
!2334 = !DILocation(line: 818, column: 5, scope: !2333)
!2335 = !DILocation(line: 819, column: 3, scope: !2282)
!2336 = distinct !DISubprogram(name: "quotearg_free", scope: !516, file: !516, line: 837, type: !471, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2337)
!2337 = !{!2338, !2339}
!2338 = !DILocalVariable(name: "sv", scope: !2336, file: !516, line: 839, type: !617)
!2339 = !DILocalVariable(name: "i", scope: !2340, file: !516, line: 840, type: !72)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !516, line: 840, column: 3)
!2341 = !DILocation(line: 839, column: 24, scope: !2336)
!2342 = !DILocation(line: 0, scope: !2336)
!2343 = !DILocation(line: 0, scope: !2340)
!2344 = !DILocation(line: 840, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2340, file: !516, line: 840, column: 3)
!2346 = !DILocation(line: 840, column: 3, scope: !2340)
!2347 = !DILocation(line: 842, column: 13, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2336, file: !516, line: 842, column: 7)
!2349 = !{!2350, !839, i64 8}
!2350 = !{!"slotvec", !1132, i64 0, !839, i64 8}
!2351 = !DILocation(line: 842, column: 17, scope: !2348)
!2352 = !DILocation(line: 842, column: 7, scope: !2336)
!2353 = !DILocation(line: 841, column: 17, scope: !2345)
!2354 = !DILocation(line: 841, column: 5, scope: !2345)
!2355 = !DILocation(line: 840, column: 32, scope: !2345)
!2356 = distinct !{!2356, !2346, !2357, !957}
!2357 = !DILocation(line: 841, column: 20, scope: !2340)
!2358 = !DILocation(line: 844, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2348, file: !516, line: 843, column: 5)
!2360 = !DILocation(line: 845, column: 21, scope: !2359)
!2361 = !{!2350, !1132, i64 0}
!2362 = !DILocation(line: 846, column: 20, scope: !2359)
!2363 = !DILocation(line: 847, column: 5, scope: !2359)
!2364 = !DILocation(line: 848, column: 10, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2336, file: !516, line: 848, column: 7)
!2366 = !DILocation(line: 848, column: 7, scope: !2336)
!2367 = !DILocation(line: 850, column: 7, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2365, file: !516, line: 849, column: 5)
!2369 = !DILocation(line: 851, column: 15, scope: !2368)
!2370 = !DILocation(line: 852, column: 5, scope: !2368)
!2371 = !DILocation(line: 853, column: 10, scope: !2336)
!2372 = !DILocation(line: 854, column: 1, scope: !2336)
!2373 = !DISubprogram(name: "free", scope: !1541, file: !1541, line: 786, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !145}
!2376 = distinct !DISubprogram(name: "quotearg_n", scope: !516, file: !516, line: 919, type: !1028, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2377)
!2377 = !{!2378, !2379}
!2378 = !DILocalVariable(name: "n", arg: 1, scope: !2376, file: !516, line: 919, type: !72)
!2379 = !DILocalVariable(name: "arg", arg: 2, scope: !2376, file: !516, line: 919, type: !96)
!2380 = !DILocation(line: 0, scope: !2376)
!2381 = !DILocation(line: 921, column: 10, scope: !2376)
!2382 = !DILocation(line: 921, column: 3, scope: !2376)
!2383 = distinct !DISubprogram(name: "quotearg_n_options", scope: !516, file: !516, line: 866, type: !2384, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!89, !72, !96, !147, !1587}
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2397, !2398, !2400, !2401, !2402}
!2387 = !DILocalVariable(name: "n", arg: 1, scope: !2383, file: !516, line: 866, type: !72)
!2388 = !DILocalVariable(name: "arg", arg: 2, scope: !2383, file: !516, line: 866, type: !96)
!2389 = !DILocalVariable(name: "argsize", arg: 3, scope: !2383, file: !516, line: 866, type: !147)
!2390 = !DILocalVariable(name: "options", arg: 4, scope: !2383, file: !516, line: 867, type: !1587)
!2391 = !DILocalVariable(name: "saved_errno", scope: !2383, file: !516, line: 869, type: !72)
!2392 = !DILocalVariable(name: "sv", scope: !2383, file: !516, line: 871, type: !617)
!2393 = !DILocalVariable(name: "nslots_max", scope: !2383, file: !516, line: 873, type: !72)
!2394 = !DILocalVariable(name: "preallocated", scope: !2395, file: !516, line: 879, type: !99)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !516, line: 878, column: 5)
!2396 = distinct !DILexicalBlock(scope: !2383, file: !516, line: 877, column: 7)
!2397 = !DILocalVariable(name: "new_nslots", scope: !2395, file: !516, line: 880, type: !781)
!2398 = !DILocalVariable(name: "size", scope: !2399, file: !516, line: 891, type: !147)
!2399 = distinct !DILexicalBlock(scope: !2383, file: !516, line: 890, column: 3)
!2400 = !DILocalVariable(name: "val", scope: !2399, file: !516, line: 892, type: !89)
!2401 = !DILocalVariable(name: "flags", scope: !2399, file: !516, line: 894, type: !72)
!2402 = !DILocalVariable(name: "qsize", scope: !2399, file: !516, line: 895, type: !147)
!2403 = !DILocation(line: 0, scope: !2383)
!2404 = !DILocation(line: 869, column: 21, scope: !2383)
!2405 = !DILocation(line: 871, column: 24, scope: !2383)
!2406 = !DILocation(line: 874, column: 17, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2383, file: !516, line: 874, column: 7)
!2408 = !DILocation(line: 875, column: 5, scope: !2407)
!2409 = !DILocation(line: 877, column: 7, scope: !2396)
!2410 = !DILocation(line: 877, column: 14, scope: !2396)
!2411 = !DILocation(line: 877, column: 7, scope: !2383)
!2412 = !DILocation(line: 879, column: 31, scope: !2395)
!2413 = !DILocation(line: 0, scope: !2395)
!2414 = !DILocation(line: 880, column: 7, scope: !2395)
!2415 = !DILocation(line: 880, column: 26, scope: !2395)
!2416 = !DILocation(line: 880, column: 13, scope: !2395)
!2417 = !DILocation(line: 882, column: 31, scope: !2395)
!2418 = !DILocation(line: 883, column: 33, scope: !2395)
!2419 = !DILocation(line: 883, column: 42, scope: !2395)
!2420 = !DILocation(line: 883, column: 31, scope: !2395)
!2421 = !DILocation(line: 882, column: 22, scope: !2395)
!2422 = !DILocation(line: 882, column: 15, scope: !2395)
!2423 = !DILocation(line: 884, column: 11, scope: !2395)
!2424 = !DILocation(line: 885, column: 15, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2395, file: !516, line: 884, column: 11)
!2426 = !{i64 0, i64 8, !1131, i64 8, i64 8, !838}
!2427 = !DILocation(line: 885, column: 9, scope: !2425)
!2428 = !DILocation(line: 886, column: 20, scope: !2395)
!2429 = !DILocation(line: 886, column: 18, scope: !2395)
!2430 = !DILocation(line: 886, column: 32, scope: !2395)
!2431 = !DILocation(line: 886, column: 43, scope: !2395)
!2432 = !DILocation(line: 886, column: 53, scope: !2395)
!2433 = !DILocation(line: 0, scope: !1802, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 886, column: 7, scope: !2395)
!2435 = !DILocation(line: 59, column: 10, scope: !1802, inlinedAt: !2434)
!2436 = !DILocation(line: 887, column: 16, scope: !2395)
!2437 = !DILocation(line: 887, column: 14, scope: !2395)
!2438 = !DILocation(line: 888, column: 5, scope: !2396)
!2439 = !DILocation(line: 888, column: 5, scope: !2395)
!2440 = !DILocation(line: 891, column: 19, scope: !2399)
!2441 = !DILocation(line: 891, column: 25, scope: !2399)
!2442 = !DILocation(line: 0, scope: !2399)
!2443 = !DILocation(line: 892, column: 23, scope: !2399)
!2444 = !DILocation(line: 894, column: 26, scope: !2399)
!2445 = !DILocation(line: 894, column: 32, scope: !2399)
!2446 = !DILocation(line: 896, column: 55, scope: !2399)
!2447 = !DILocation(line: 897, column: 55, scope: !2399)
!2448 = !DILocation(line: 898, column: 55, scope: !2399)
!2449 = !DILocation(line: 899, column: 55, scope: !2399)
!2450 = !DILocation(line: 895, column: 20, scope: !2399)
!2451 = !DILocation(line: 901, column: 14, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2399, file: !516, line: 901, column: 9)
!2453 = !DILocation(line: 901, column: 9, scope: !2399)
!2454 = !DILocation(line: 903, column: 35, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !516, line: 902, column: 7)
!2456 = !DILocation(line: 903, column: 20, scope: !2455)
!2457 = !DILocation(line: 904, column: 17, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2455, file: !516, line: 904, column: 13)
!2459 = !DILocation(line: 904, column: 13, scope: !2455)
!2460 = !DILocation(line: 905, column: 11, scope: !2458)
!2461 = !DILocation(line: 906, column: 27, scope: !2455)
!2462 = !DILocation(line: 906, column: 19, scope: !2455)
!2463 = !DILocation(line: 907, column: 69, scope: !2455)
!2464 = !DILocation(line: 909, column: 44, scope: !2455)
!2465 = !DILocation(line: 910, column: 44, scope: !2455)
!2466 = !DILocation(line: 907, column: 9, scope: !2455)
!2467 = !DILocation(line: 911, column: 7, scope: !2455)
!2468 = !DILocation(line: 913, column: 11, scope: !2399)
!2469 = !DILocation(line: 914, column: 5, scope: !2399)
!2470 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !516, file: !516, line: 925, type: !2471, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!89, !72, !96, !147}
!2473 = !{!2474, !2475, !2476}
!2474 = !DILocalVariable(name: "n", arg: 1, scope: !2470, file: !516, line: 925, type: !72)
!2475 = !DILocalVariable(name: "arg", arg: 2, scope: !2470, file: !516, line: 925, type: !96)
!2476 = !DILocalVariable(name: "argsize", arg: 3, scope: !2470, file: !516, line: 925, type: !147)
!2477 = !DILocation(line: 0, scope: !2470)
!2478 = !DILocation(line: 927, column: 10, scope: !2470)
!2479 = !DILocation(line: 927, column: 3, scope: !2470)
!2480 = distinct !DISubprogram(name: "quotearg", scope: !516, file: !516, line: 931, type: !1037, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2481)
!2481 = !{!2482}
!2482 = !DILocalVariable(name: "arg", arg: 1, scope: !2480, file: !516, line: 931, type: !96)
!2483 = !DILocation(line: 0, scope: !2480)
!2484 = !DILocation(line: 0, scope: !2376, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 933, column: 10, scope: !2480)
!2486 = !DILocation(line: 921, column: 10, scope: !2376, inlinedAt: !2485)
!2487 = !DILocation(line: 933, column: 3, scope: !2480)
!2488 = distinct !DISubprogram(name: "quotearg_mem", scope: !516, file: !516, line: 937, type: !2489, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!89, !96, !147}
!2491 = !{!2492, !2493}
!2492 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !516, line: 937, type: !96)
!2493 = !DILocalVariable(name: "argsize", arg: 2, scope: !2488, file: !516, line: 937, type: !147)
!2494 = !DILocation(line: 0, scope: !2488)
!2495 = !DILocation(line: 0, scope: !2470, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 939, column: 10, scope: !2488)
!2497 = !DILocation(line: 927, column: 10, scope: !2470, inlinedAt: !2496)
!2498 = !DILocation(line: 939, column: 3, scope: !2488)
!2499 = distinct !DISubprogram(name: "quotearg_n_style", scope: !516, file: !516, line: 943, type: !2500, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!89, !72, !542, !96}
!2502 = !{!2503, !2504, !2505, !2506}
!2503 = !DILocalVariable(name: "n", arg: 1, scope: !2499, file: !516, line: 943, type: !72)
!2504 = !DILocalVariable(name: "s", arg: 2, scope: !2499, file: !516, line: 943, type: !542)
!2505 = !DILocalVariable(name: "arg", arg: 3, scope: !2499, file: !516, line: 943, type: !96)
!2506 = !DILocalVariable(name: "o", scope: !2499, file: !516, line: 945, type: !1588)
!2507 = !DILocation(line: 0, scope: !2499)
!2508 = !DILocation(line: 945, column: 3, scope: !2499)
!2509 = !DILocation(line: 945, column: 32, scope: !2499)
!2510 = !{!2511}
!2511 = distinct !{!2511, !2512, !"quoting_options_from_style: argument 0"}
!2512 = distinct !{!2512, !"quoting_options_from_style"}
!2513 = !DILocation(line: 945, column: 36, scope: !2499)
!2514 = !DILocalVariable(name: "style", arg: 1, scope: !2515, file: !516, line: 183, type: !542)
!2515 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !516, file: !516, line: 183, type: !2516, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!569, !542}
!2518 = !{!2514, !2519}
!2519 = !DILocalVariable(name: "o", scope: !2515, file: !516, line: 185, type: !569)
!2520 = !DILocation(line: 0, scope: !2515, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 945, column: 36, scope: !2499)
!2522 = !DILocation(line: 185, column: 26, scope: !2515, inlinedAt: !2521)
!2523 = !DILocation(line: 186, column: 13, scope: !2524, inlinedAt: !2521)
!2524 = distinct !DILexicalBlock(scope: !2515, file: !516, line: 186, column: 7)
!2525 = !DILocation(line: 186, column: 7, scope: !2515, inlinedAt: !2521)
!2526 = !DILocation(line: 187, column: 5, scope: !2524, inlinedAt: !2521)
!2527 = !DILocation(line: 188, column: 11, scope: !2515, inlinedAt: !2521)
!2528 = !DILocation(line: 946, column: 10, scope: !2499)
!2529 = !DILocation(line: 947, column: 1, scope: !2499)
!2530 = !DILocation(line: 946, column: 3, scope: !2499)
!2531 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !516, file: !516, line: 950, type: !2532, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!89, !72, !542, !96, !147}
!2534 = !{!2535, !2536, !2537, !2538, !2539}
!2535 = !DILocalVariable(name: "n", arg: 1, scope: !2531, file: !516, line: 950, type: !72)
!2536 = !DILocalVariable(name: "s", arg: 2, scope: !2531, file: !516, line: 950, type: !542)
!2537 = !DILocalVariable(name: "arg", arg: 3, scope: !2531, file: !516, line: 951, type: !96)
!2538 = !DILocalVariable(name: "argsize", arg: 4, scope: !2531, file: !516, line: 951, type: !147)
!2539 = !DILocalVariable(name: "o", scope: !2531, file: !516, line: 953, type: !1588)
!2540 = !DILocation(line: 0, scope: !2531)
!2541 = !DILocation(line: 953, column: 3, scope: !2531)
!2542 = !DILocation(line: 953, column: 32, scope: !2531)
!2543 = !{!2544}
!2544 = distinct !{!2544, !2545, !"quoting_options_from_style: argument 0"}
!2545 = distinct !{!2545, !"quoting_options_from_style"}
!2546 = !DILocation(line: 953, column: 36, scope: !2531)
!2547 = !DILocation(line: 0, scope: !2515, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 953, column: 36, scope: !2531)
!2549 = !DILocation(line: 185, column: 26, scope: !2515, inlinedAt: !2548)
!2550 = !DILocation(line: 186, column: 13, scope: !2524, inlinedAt: !2548)
!2551 = !DILocation(line: 186, column: 7, scope: !2515, inlinedAt: !2548)
!2552 = !DILocation(line: 187, column: 5, scope: !2524, inlinedAt: !2548)
!2553 = !DILocation(line: 188, column: 11, scope: !2515, inlinedAt: !2548)
!2554 = !DILocation(line: 954, column: 10, scope: !2531)
!2555 = !DILocation(line: 955, column: 1, scope: !2531)
!2556 = !DILocation(line: 954, column: 3, scope: !2531)
!2557 = distinct !DISubprogram(name: "quotearg_style", scope: !516, file: !516, line: 958, type: !2558, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!89, !542, !96}
!2560 = !{!2561, !2562}
!2561 = !DILocalVariable(name: "s", arg: 1, scope: !2557, file: !516, line: 958, type: !542)
!2562 = !DILocalVariable(name: "arg", arg: 2, scope: !2557, file: !516, line: 958, type: !96)
!2563 = !DILocation(line: 0, scope: !2557)
!2564 = !DILocation(line: 0, scope: !2499, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 960, column: 10, scope: !2557)
!2566 = !DILocation(line: 945, column: 3, scope: !2499, inlinedAt: !2565)
!2567 = !DILocation(line: 945, column: 32, scope: !2499, inlinedAt: !2565)
!2568 = !{!2569}
!2569 = distinct !{!2569, !2570, !"quoting_options_from_style: argument 0"}
!2570 = distinct !{!2570, !"quoting_options_from_style"}
!2571 = !DILocation(line: 945, column: 36, scope: !2499, inlinedAt: !2565)
!2572 = !DILocation(line: 0, scope: !2515, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 945, column: 36, scope: !2499, inlinedAt: !2565)
!2574 = !DILocation(line: 185, column: 26, scope: !2515, inlinedAt: !2573)
!2575 = !DILocation(line: 186, column: 13, scope: !2524, inlinedAt: !2573)
!2576 = !DILocation(line: 186, column: 7, scope: !2515, inlinedAt: !2573)
!2577 = !DILocation(line: 187, column: 5, scope: !2524, inlinedAt: !2573)
!2578 = !DILocation(line: 188, column: 11, scope: !2515, inlinedAt: !2573)
!2579 = !DILocation(line: 946, column: 10, scope: !2499, inlinedAt: !2565)
!2580 = !DILocation(line: 947, column: 1, scope: !2499, inlinedAt: !2565)
!2581 = !DILocation(line: 960, column: 3, scope: !2557)
!2582 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !516, file: !516, line: 964, type: !2583, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!89, !542, !96, !147}
!2585 = !{!2586, !2587, !2588}
!2586 = !DILocalVariable(name: "s", arg: 1, scope: !2582, file: !516, line: 964, type: !542)
!2587 = !DILocalVariable(name: "arg", arg: 2, scope: !2582, file: !516, line: 964, type: !96)
!2588 = !DILocalVariable(name: "argsize", arg: 3, scope: !2582, file: !516, line: 964, type: !147)
!2589 = !DILocation(line: 0, scope: !2582)
!2590 = !DILocation(line: 0, scope: !2531, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 966, column: 10, scope: !2582)
!2592 = !DILocation(line: 953, column: 3, scope: !2531, inlinedAt: !2591)
!2593 = !DILocation(line: 953, column: 32, scope: !2531, inlinedAt: !2591)
!2594 = !{!2595}
!2595 = distinct !{!2595, !2596, !"quoting_options_from_style: argument 0"}
!2596 = distinct !{!2596, !"quoting_options_from_style"}
!2597 = !DILocation(line: 953, column: 36, scope: !2531, inlinedAt: !2591)
!2598 = !DILocation(line: 0, scope: !2515, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 953, column: 36, scope: !2531, inlinedAt: !2591)
!2600 = !DILocation(line: 185, column: 26, scope: !2515, inlinedAt: !2599)
!2601 = !DILocation(line: 186, column: 13, scope: !2524, inlinedAt: !2599)
!2602 = !DILocation(line: 186, column: 7, scope: !2515, inlinedAt: !2599)
!2603 = !DILocation(line: 187, column: 5, scope: !2524, inlinedAt: !2599)
!2604 = !DILocation(line: 188, column: 11, scope: !2515, inlinedAt: !2599)
!2605 = !DILocation(line: 954, column: 10, scope: !2531, inlinedAt: !2591)
!2606 = !DILocation(line: 955, column: 1, scope: !2531, inlinedAt: !2591)
!2607 = !DILocation(line: 966, column: 3, scope: !2582)
!2608 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !516, file: !516, line: 970, type: !2609, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!89, !96, !147, !4}
!2611 = !{!2612, !2613, !2614, !2615}
!2612 = !DILocalVariable(name: "arg", arg: 1, scope: !2608, file: !516, line: 970, type: !96)
!2613 = !DILocalVariable(name: "argsize", arg: 2, scope: !2608, file: !516, line: 970, type: !147)
!2614 = !DILocalVariable(name: "ch", arg: 3, scope: !2608, file: !516, line: 970, type: !4)
!2615 = !DILocalVariable(name: "options", scope: !2608, file: !516, line: 972, type: !569)
!2616 = !DILocation(line: 0, scope: !2608)
!2617 = !DILocation(line: 972, column: 3, scope: !2608)
!2618 = !DILocation(line: 972, column: 26, scope: !2608)
!2619 = !DILocation(line: 973, column: 13, scope: !2608)
!2620 = !{i64 0, i64 4, !919, i64 4, i64 4, !910, i64 8, i64 32, !919, i64 40, i64 8, !838, i64 48, i64 8, !838}
!2621 = !DILocation(line: 0, scope: !1607, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 974, column: 3, scope: !2608)
!2623 = !DILocation(line: 147, column: 41, scope: !1607, inlinedAt: !2622)
!2624 = !DILocation(line: 147, column: 62, scope: !1607, inlinedAt: !2622)
!2625 = !DILocation(line: 147, column: 57, scope: !1607, inlinedAt: !2622)
!2626 = !DILocation(line: 148, column: 15, scope: !1607, inlinedAt: !2622)
!2627 = !DILocation(line: 149, column: 21, scope: !1607, inlinedAt: !2622)
!2628 = !DILocation(line: 149, column: 24, scope: !1607, inlinedAt: !2622)
!2629 = !DILocation(line: 150, column: 19, scope: !1607, inlinedAt: !2622)
!2630 = !DILocation(line: 150, column: 24, scope: !1607, inlinedAt: !2622)
!2631 = !DILocation(line: 150, column: 6, scope: !1607, inlinedAt: !2622)
!2632 = !DILocation(line: 975, column: 10, scope: !2608)
!2633 = !DILocation(line: 976, column: 1, scope: !2608)
!2634 = !DILocation(line: 975, column: 3, scope: !2608)
!2635 = distinct !DISubprogram(name: "quotearg_char", scope: !516, file: !516, line: 979, type: !2636, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!89, !96, !4}
!2638 = !{!2639, !2640}
!2639 = !DILocalVariable(name: "arg", arg: 1, scope: !2635, file: !516, line: 979, type: !96)
!2640 = !DILocalVariable(name: "ch", arg: 2, scope: !2635, file: !516, line: 979, type: !4)
!2641 = !DILocation(line: 0, scope: !2635)
!2642 = !DILocation(line: 0, scope: !2608, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 981, column: 10, scope: !2635)
!2644 = !DILocation(line: 972, column: 3, scope: !2608, inlinedAt: !2643)
!2645 = !DILocation(line: 972, column: 26, scope: !2608, inlinedAt: !2643)
!2646 = !DILocation(line: 973, column: 13, scope: !2608, inlinedAt: !2643)
!2647 = !DILocation(line: 0, scope: !1607, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 974, column: 3, scope: !2608, inlinedAt: !2643)
!2649 = !DILocation(line: 147, column: 41, scope: !1607, inlinedAt: !2648)
!2650 = !DILocation(line: 147, column: 62, scope: !1607, inlinedAt: !2648)
!2651 = !DILocation(line: 147, column: 57, scope: !1607, inlinedAt: !2648)
!2652 = !DILocation(line: 148, column: 15, scope: !1607, inlinedAt: !2648)
!2653 = !DILocation(line: 149, column: 21, scope: !1607, inlinedAt: !2648)
!2654 = !DILocation(line: 149, column: 24, scope: !1607, inlinedAt: !2648)
!2655 = !DILocation(line: 150, column: 19, scope: !1607, inlinedAt: !2648)
!2656 = !DILocation(line: 150, column: 24, scope: !1607, inlinedAt: !2648)
!2657 = !DILocation(line: 150, column: 6, scope: !1607, inlinedAt: !2648)
!2658 = !DILocation(line: 975, column: 10, scope: !2608, inlinedAt: !2643)
!2659 = !DILocation(line: 976, column: 1, scope: !2608, inlinedAt: !2643)
!2660 = !DILocation(line: 981, column: 3, scope: !2635)
!2661 = distinct !DISubprogram(name: "quotearg_colon", scope: !516, file: !516, line: 985, type: !1037, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2662)
!2662 = !{!2663}
!2663 = !DILocalVariable(name: "arg", arg: 1, scope: !2661, file: !516, line: 985, type: !96)
!2664 = !DILocation(line: 0, scope: !2661)
!2665 = !DILocation(line: 0, scope: !2635, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 987, column: 10, scope: !2661)
!2667 = !DILocation(line: 0, scope: !2608, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 981, column: 10, scope: !2635, inlinedAt: !2666)
!2669 = !DILocation(line: 972, column: 3, scope: !2608, inlinedAt: !2668)
!2670 = !DILocation(line: 972, column: 26, scope: !2608, inlinedAt: !2668)
!2671 = !DILocation(line: 973, column: 13, scope: !2608, inlinedAt: !2668)
!2672 = !DILocation(line: 0, scope: !1607, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 974, column: 3, scope: !2608, inlinedAt: !2668)
!2674 = !DILocation(line: 147, column: 57, scope: !1607, inlinedAt: !2673)
!2675 = !DILocation(line: 149, column: 21, scope: !1607, inlinedAt: !2673)
!2676 = !DILocation(line: 150, column: 6, scope: !1607, inlinedAt: !2673)
!2677 = !DILocation(line: 975, column: 10, scope: !2608, inlinedAt: !2668)
!2678 = !DILocation(line: 976, column: 1, scope: !2608, inlinedAt: !2668)
!2679 = !DILocation(line: 987, column: 3, scope: !2661)
!2680 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !516, file: !516, line: 991, type: !2489, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2681)
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "arg", arg: 1, scope: !2680, file: !516, line: 991, type: !96)
!2683 = !DILocalVariable(name: "argsize", arg: 2, scope: !2680, file: !516, line: 991, type: !147)
!2684 = !DILocation(line: 0, scope: !2680)
!2685 = !DILocation(line: 0, scope: !2608, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 993, column: 10, scope: !2680)
!2687 = !DILocation(line: 972, column: 3, scope: !2608, inlinedAt: !2686)
!2688 = !DILocation(line: 972, column: 26, scope: !2608, inlinedAt: !2686)
!2689 = !DILocation(line: 973, column: 13, scope: !2608, inlinedAt: !2686)
!2690 = !DILocation(line: 0, scope: !1607, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 974, column: 3, scope: !2608, inlinedAt: !2686)
!2692 = !DILocation(line: 147, column: 57, scope: !1607, inlinedAt: !2691)
!2693 = !DILocation(line: 149, column: 21, scope: !1607, inlinedAt: !2691)
!2694 = !DILocation(line: 150, column: 6, scope: !1607, inlinedAt: !2691)
!2695 = !DILocation(line: 975, column: 10, scope: !2608, inlinedAt: !2686)
!2696 = !DILocation(line: 976, column: 1, scope: !2608, inlinedAt: !2686)
!2697 = !DILocation(line: 993, column: 3, scope: !2680)
!2698 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !516, file: !516, line: 997, type: !2500, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2699)
!2699 = !{!2700, !2701, !2702, !2703}
!2700 = !DILocalVariable(name: "n", arg: 1, scope: !2698, file: !516, line: 997, type: !72)
!2701 = !DILocalVariable(name: "s", arg: 2, scope: !2698, file: !516, line: 997, type: !542)
!2702 = !DILocalVariable(name: "arg", arg: 3, scope: !2698, file: !516, line: 997, type: !96)
!2703 = !DILocalVariable(name: "options", scope: !2698, file: !516, line: 999, type: !569)
!2704 = !DILocation(line: 185, column: 26, scope: !2515, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1000, column: 13, scope: !2698)
!2706 = !DILocation(line: 0, scope: !2698)
!2707 = !DILocation(line: 999, column: 3, scope: !2698)
!2708 = !DILocation(line: 999, column: 26, scope: !2698)
!2709 = !DILocation(line: 0, scope: !2515, inlinedAt: !2705)
!2710 = !DILocation(line: 186, column: 13, scope: !2524, inlinedAt: !2705)
!2711 = !DILocation(line: 186, column: 7, scope: !2515, inlinedAt: !2705)
!2712 = !DILocation(line: 187, column: 5, scope: !2524, inlinedAt: !2705)
!2713 = !{!2714}
!2714 = distinct !{!2714, !2715, !"quoting_options_from_style: argument 0"}
!2715 = distinct !{!2715, !"quoting_options_from_style"}
!2716 = !DILocation(line: 1000, column: 13, scope: !2698)
!2717 = !DILocation(line: 0, scope: !1607, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1001, column: 3, scope: !2698)
!2719 = !DILocation(line: 147, column: 57, scope: !1607, inlinedAt: !2718)
!2720 = !DILocation(line: 149, column: 21, scope: !1607, inlinedAt: !2718)
!2721 = !DILocation(line: 150, column: 6, scope: !1607, inlinedAt: !2718)
!2722 = !DILocation(line: 1002, column: 10, scope: !2698)
!2723 = !DILocation(line: 1003, column: 1, scope: !2698)
!2724 = !DILocation(line: 1002, column: 3, scope: !2698)
!2725 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !516, file: !516, line: 1006, type: !2726, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!89, !72, !96, !96, !96}
!2728 = !{!2729, !2730, !2731, !2732}
!2729 = !DILocalVariable(name: "n", arg: 1, scope: !2725, file: !516, line: 1006, type: !72)
!2730 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2725, file: !516, line: 1006, type: !96)
!2731 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2725, file: !516, line: 1007, type: !96)
!2732 = !DILocalVariable(name: "arg", arg: 4, scope: !2725, file: !516, line: 1007, type: !96)
!2733 = !DILocation(line: 0, scope: !2725)
!2734 = !DILocalVariable(name: "n", arg: 1, scope: !2735, file: !516, line: 1014, type: !72)
!2735 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !516, file: !516, line: 1014, type: !2736, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!89, !72, !96, !96, !96, !147}
!2738 = !{!2734, !2739, !2740, !2741, !2742, !2743}
!2739 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2735, file: !516, line: 1014, type: !96)
!2740 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2735, file: !516, line: 1015, type: !96)
!2741 = !DILocalVariable(name: "arg", arg: 4, scope: !2735, file: !516, line: 1016, type: !96)
!2742 = !DILocalVariable(name: "argsize", arg: 5, scope: !2735, file: !516, line: 1016, type: !147)
!2743 = !DILocalVariable(name: "o", scope: !2735, file: !516, line: 1018, type: !569)
!2744 = !DILocation(line: 0, scope: !2735, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1009, column: 10, scope: !2725)
!2746 = !DILocation(line: 1018, column: 3, scope: !2735, inlinedAt: !2745)
!2747 = !DILocation(line: 1018, column: 26, scope: !2735, inlinedAt: !2745)
!2748 = !DILocation(line: 1018, column: 30, scope: !2735, inlinedAt: !2745)
!2749 = !DILocation(line: 0, scope: !1647, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1019, column: 3, scope: !2735, inlinedAt: !2745)
!2751 = !DILocation(line: 174, column: 12, scope: !1647, inlinedAt: !2750)
!2752 = !DILocation(line: 175, column: 8, scope: !1660, inlinedAt: !2750)
!2753 = !DILocation(line: 175, column: 19, scope: !1660, inlinedAt: !2750)
!2754 = !DILocation(line: 176, column: 5, scope: !1660, inlinedAt: !2750)
!2755 = !DILocation(line: 177, column: 6, scope: !1647, inlinedAt: !2750)
!2756 = !DILocation(line: 177, column: 17, scope: !1647, inlinedAt: !2750)
!2757 = !DILocation(line: 178, column: 6, scope: !1647, inlinedAt: !2750)
!2758 = !DILocation(line: 178, column: 18, scope: !1647, inlinedAt: !2750)
!2759 = !DILocation(line: 1020, column: 10, scope: !2735, inlinedAt: !2745)
!2760 = !DILocation(line: 1021, column: 1, scope: !2735, inlinedAt: !2745)
!2761 = !DILocation(line: 1009, column: 3, scope: !2725)
!2762 = !DILocation(line: 0, scope: !2735)
!2763 = !DILocation(line: 1018, column: 3, scope: !2735)
!2764 = !DILocation(line: 1018, column: 26, scope: !2735)
!2765 = !DILocation(line: 1018, column: 30, scope: !2735)
!2766 = !DILocation(line: 0, scope: !1647, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1019, column: 3, scope: !2735)
!2768 = !DILocation(line: 174, column: 12, scope: !1647, inlinedAt: !2767)
!2769 = !DILocation(line: 175, column: 8, scope: !1660, inlinedAt: !2767)
!2770 = !DILocation(line: 175, column: 19, scope: !1660, inlinedAt: !2767)
!2771 = !DILocation(line: 176, column: 5, scope: !1660, inlinedAt: !2767)
!2772 = !DILocation(line: 177, column: 6, scope: !1647, inlinedAt: !2767)
!2773 = !DILocation(line: 177, column: 17, scope: !1647, inlinedAt: !2767)
!2774 = !DILocation(line: 178, column: 6, scope: !1647, inlinedAt: !2767)
!2775 = !DILocation(line: 178, column: 18, scope: !1647, inlinedAt: !2767)
!2776 = !DILocation(line: 1020, column: 10, scope: !2735)
!2777 = !DILocation(line: 1021, column: 1, scope: !2735)
!2778 = !DILocation(line: 1020, column: 3, scope: !2735)
!2779 = distinct !DISubprogram(name: "quotearg_custom", scope: !516, file: !516, line: 1024, type: !2780, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!89, !96, !96, !96}
!2782 = !{!2783, !2784, !2785}
!2783 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2779, file: !516, line: 1024, type: !96)
!2784 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2779, file: !516, line: 1024, type: !96)
!2785 = !DILocalVariable(name: "arg", arg: 3, scope: !2779, file: !516, line: 1025, type: !96)
!2786 = !DILocation(line: 0, scope: !2779)
!2787 = !DILocation(line: 0, scope: !2725, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 1027, column: 10, scope: !2779)
!2789 = !DILocation(line: 0, scope: !2735, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1009, column: 10, scope: !2725, inlinedAt: !2788)
!2791 = !DILocation(line: 1018, column: 3, scope: !2735, inlinedAt: !2790)
!2792 = !DILocation(line: 1018, column: 26, scope: !2735, inlinedAt: !2790)
!2793 = !DILocation(line: 1018, column: 30, scope: !2735, inlinedAt: !2790)
!2794 = !DILocation(line: 0, scope: !1647, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1019, column: 3, scope: !2735, inlinedAt: !2790)
!2796 = !DILocation(line: 174, column: 12, scope: !1647, inlinedAt: !2795)
!2797 = !DILocation(line: 175, column: 8, scope: !1660, inlinedAt: !2795)
!2798 = !DILocation(line: 175, column: 19, scope: !1660, inlinedAt: !2795)
!2799 = !DILocation(line: 176, column: 5, scope: !1660, inlinedAt: !2795)
!2800 = !DILocation(line: 177, column: 6, scope: !1647, inlinedAt: !2795)
!2801 = !DILocation(line: 177, column: 17, scope: !1647, inlinedAt: !2795)
!2802 = !DILocation(line: 178, column: 6, scope: !1647, inlinedAt: !2795)
!2803 = !DILocation(line: 178, column: 18, scope: !1647, inlinedAt: !2795)
!2804 = !DILocation(line: 1020, column: 10, scope: !2735, inlinedAt: !2790)
!2805 = !DILocation(line: 1021, column: 1, scope: !2735, inlinedAt: !2790)
!2806 = !DILocation(line: 1027, column: 3, scope: !2779)
!2807 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !516, file: !516, line: 1031, type: !2808, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!89, !96, !96, !96, !147}
!2810 = !{!2811, !2812, !2813, !2814}
!2811 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2807, file: !516, line: 1031, type: !96)
!2812 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2807, file: !516, line: 1031, type: !96)
!2813 = !DILocalVariable(name: "arg", arg: 3, scope: !2807, file: !516, line: 1032, type: !96)
!2814 = !DILocalVariable(name: "argsize", arg: 4, scope: !2807, file: !516, line: 1032, type: !147)
!2815 = !DILocation(line: 0, scope: !2807)
!2816 = !DILocation(line: 0, scope: !2735, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1034, column: 10, scope: !2807)
!2818 = !DILocation(line: 1018, column: 3, scope: !2735, inlinedAt: !2817)
!2819 = !DILocation(line: 1018, column: 26, scope: !2735, inlinedAt: !2817)
!2820 = !DILocation(line: 1018, column: 30, scope: !2735, inlinedAt: !2817)
!2821 = !DILocation(line: 0, scope: !1647, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1019, column: 3, scope: !2735, inlinedAt: !2817)
!2823 = !DILocation(line: 174, column: 12, scope: !1647, inlinedAt: !2822)
!2824 = !DILocation(line: 175, column: 8, scope: !1660, inlinedAt: !2822)
!2825 = !DILocation(line: 175, column: 19, scope: !1660, inlinedAt: !2822)
!2826 = !DILocation(line: 176, column: 5, scope: !1660, inlinedAt: !2822)
!2827 = !DILocation(line: 177, column: 6, scope: !1647, inlinedAt: !2822)
!2828 = !DILocation(line: 177, column: 17, scope: !1647, inlinedAt: !2822)
!2829 = !DILocation(line: 178, column: 6, scope: !1647, inlinedAt: !2822)
!2830 = !DILocation(line: 178, column: 18, scope: !1647, inlinedAt: !2822)
!2831 = !DILocation(line: 1020, column: 10, scope: !2735, inlinedAt: !2817)
!2832 = !DILocation(line: 1021, column: 1, scope: !2735, inlinedAt: !2817)
!2833 = !DILocation(line: 1034, column: 3, scope: !2807)
!2834 = distinct !DISubprogram(name: "quote_n_mem", scope: !516, file: !516, line: 1049, type: !2835, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!96, !72, !96, !147}
!2837 = !{!2838, !2839, !2840}
!2838 = !DILocalVariable(name: "n", arg: 1, scope: !2834, file: !516, line: 1049, type: !72)
!2839 = !DILocalVariable(name: "arg", arg: 2, scope: !2834, file: !516, line: 1049, type: !96)
!2840 = !DILocalVariable(name: "argsize", arg: 3, scope: !2834, file: !516, line: 1049, type: !147)
!2841 = !DILocation(line: 0, scope: !2834)
!2842 = !DILocation(line: 1051, column: 10, scope: !2834)
!2843 = !DILocation(line: 1051, column: 3, scope: !2834)
!2844 = distinct !DISubprogram(name: "quote_mem", scope: !516, file: !516, line: 1055, type: !2845, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!96, !96, !147}
!2847 = !{!2848, !2849}
!2848 = !DILocalVariable(name: "arg", arg: 1, scope: !2844, file: !516, line: 1055, type: !96)
!2849 = !DILocalVariable(name: "argsize", arg: 2, scope: !2844, file: !516, line: 1055, type: !147)
!2850 = !DILocation(line: 0, scope: !2844)
!2851 = !DILocation(line: 0, scope: !2834, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 1057, column: 10, scope: !2844)
!2853 = !DILocation(line: 1051, column: 10, scope: !2834, inlinedAt: !2852)
!2854 = !DILocation(line: 1057, column: 3, scope: !2844)
!2855 = distinct !DISubprogram(name: "quote_n", scope: !516, file: !516, line: 1061, type: !2856, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!96, !72, !96}
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "n", arg: 1, scope: !2855, file: !516, line: 1061, type: !72)
!2860 = !DILocalVariable(name: "arg", arg: 2, scope: !2855, file: !516, line: 1061, type: !96)
!2861 = !DILocation(line: 0, scope: !2855)
!2862 = !DILocation(line: 0, scope: !2834, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1063, column: 10, scope: !2855)
!2864 = !DILocation(line: 1051, column: 10, scope: !2834, inlinedAt: !2863)
!2865 = !DILocation(line: 1063, column: 3, scope: !2855)
!2866 = distinct !DISubprogram(name: "quote", scope: !516, file: !516, line: 1067, type: !2867, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!96, !96}
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "arg", arg: 1, scope: !2866, file: !516, line: 1067, type: !96)
!2871 = !DILocation(line: 0, scope: !2866)
!2872 = !DILocation(line: 0, scope: !2855, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1069, column: 10, scope: !2866)
!2874 = !DILocation(line: 0, scope: !2834, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 1063, column: 10, scope: !2855, inlinedAt: !2873)
!2876 = !DILocation(line: 1051, column: 10, scope: !2834, inlinedAt: !2875)
!2877 = !DILocation(line: 1069, column: 3, scope: !2866)
!2878 = distinct !DISubprogram(name: "version_etc_arn", scope: !630, file: !630, line: 61, type: !2879, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !2916)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !2881, !96, !96, !96, !2915, !147}
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !2884)
!2884 = !{!2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2883, file: !219, line: 51, baseType: !72, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2883, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2883, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2883, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2883, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2883, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2883, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2883, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2883, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2883, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2883, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2883, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2883, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2883, file: !219, line: 70, baseType: !2899, size: 64, offset: 832)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2883, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2883, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2883, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2883, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2883, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2883, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2883, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2883, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2883, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2883, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2883, file: !219, line: 93, baseType: !2899, size: 64, offset: 1344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2883, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2883, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2883, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2883, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922}
!2917 = !DILocalVariable(name: "stream", arg: 1, scope: !2878, file: !630, line: 61, type: !2881)
!2918 = !DILocalVariable(name: "command_name", arg: 2, scope: !2878, file: !630, line: 62, type: !96)
!2919 = !DILocalVariable(name: "package", arg: 3, scope: !2878, file: !630, line: 62, type: !96)
!2920 = !DILocalVariable(name: "version", arg: 4, scope: !2878, file: !630, line: 63, type: !96)
!2921 = !DILocalVariable(name: "authors", arg: 5, scope: !2878, file: !630, line: 64, type: !2915)
!2922 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2878, file: !630, line: 64, type: !147)
!2923 = !DILocation(line: 0, scope: !2878)
!2924 = !DILocation(line: 66, column: 7, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2878, file: !630, line: 66, column: 7)
!2926 = !DILocation(line: 66, column: 7, scope: !2878)
!2927 = !DILocation(line: 67, column: 5, scope: !2925)
!2928 = !DILocation(line: 69, column: 5, scope: !2925)
!2929 = !DILocation(line: 83, column: 3, scope: !2878)
!2930 = !DILocation(line: 85, column: 3, scope: !2878)
!2931 = !DILocation(line: 88, column: 3, scope: !2878)
!2932 = !DILocation(line: 95, column: 3, scope: !2878)
!2933 = !DILocation(line: 97, column: 3, scope: !2878)
!2934 = !DILocation(line: 105, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2878, file: !630, line: 98, column: 5)
!2936 = !DILocation(line: 106, column: 7, scope: !2935)
!2937 = !DILocation(line: 109, column: 7, scope: !2935)
!2938 = !DILocation(line: 110, column: 7, scope: !2935)
!2939 = !DILocation(line: 113, column: 7, scope: !2935)
!2940 = !DILocation(line: 115, column: 7, scope: !2935)
!2941 = !DILocation(line: 120, column: 7, scope: !2935)
!2942 = !DILocation(line: 122, column: 7, scope: !2935)
!2943 = !DILocation(line: 127, column: 7, scope: !2935)
!2944 = !DILocation(line: 129, column: 7, scope: !2935)
!2945 = !DILocation(line: 134, column: 7, scope: !2935)
!2946 = !DILocation(line: 137, column: 7, scope: !2935)
!2947 = !DILocation(line: 142, column: 7, scope: !2935)
!2948 = !DILocation(line: 145, column: 7, scope: !2935)
!2949 = !DILocation(line: 150, column: 7, scope: !2935)
!2950 = !DILocation(line: 154, column: 7, scope: !2935)
!2951 = !DILocation(line: 159, column: 7, scope: !2935)
!2952 = !DILocation(line: 163, column: 7, scope: !2935)
!2953 = !DILocation(line: 170, column: 7, scope: !2935)
!2954 = !DILocation(line: 174, column: 7, scope: !2935)
!2955 = !DILocation(line: 176, column: 1, scope: !2878)
!2956 = distinct !DISubprogram(name: "version_etc_ar", scope: !630, file: !630, line: 183, type: !2957, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{null, !2881, !96, !96, !96, !2915}
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965}
!2960 = !DILocalVariable(name: "stream", arg: 1, scope: !2956, file: !630, line: 183, type: !2881)
!2961 = !DILocalVariable(name: "command_name", arg: 2, scope: !2956, file: !630, line: 184, type: !96)
!2962 = !DILocalVariable(name: "package", arg: 3, scope: !2956, file: !630, line: 184, type: !96)
!2963 = !DILocalVariable(name: "version", arg: 4, scope: !2956, file: !630, line: 185, type: !96)
!2964 = !DILocalVariable(name: "authors", arg: 5, scope: !2956, file: !630, line: 185, type: !2915)
!2965 = !DILocalVariable(name: "n_authors", scope: !2956, file: !630, line: 187, type: !147)
!2966 = !DILocation(line: 0, scope: !2956)
!2967 = !DILocation(line: 189, column: 8, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2956, file: !630, line: 189, column: 3)
!2969 = !DILocation(line: 189, scope: !2968)
!2970 = !DILocation(line: 189, column: 23, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !630, line: 189, column: 3)
!2972 = !DILocation(line: 189, column: 3, scope: !2968)
!2973 = !DILocation(line: 189, column: 52, scope: !2971)
!2974 = distinct !{!2974, !2972, !2975, !957}
!2975 = !DILocation(line: 190, column: 5, scope: !2968)
!2976 = !DILocation(line: 191, column: 3, scope: !2956)
!2977 = !DILocation(line: 192, column: 1, scope: !2956)
!2978 = distinct !DISubprogram(name: "version_etc_va", scope: !630, file: !630, line: 199, type: !2979, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !2989)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2881, !96, !96, !96, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2983)
!2983 = !{!2984, !2986, !2987, !2988}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2982, file: !2985, line: 192, baseType: !65, size: 32)
!2985 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2982, file: !2985, line: 192, baseType: !65, size: 32, offset: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2982, file: !2985, line: 192, baseType: !145, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2982, file: !2985, line: 192, baseType: !145, size: 64, offset: 128)
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995, !2996}
!2990 = !DILocalVariable(name: "stream", arg: 1, scope: !2978, file: !630, line: 199, type: !2881)
!2991 = !DILocalVariable(name: "command_name", arg: 2, scope: !2978, file: !630, line: 200, type: !96)
!2992 = !DILocalVariable(name: "package", arg: 3, scope: !2978, file: !630, line: 200, type: !96)
!2993 = !DILocalVariable(name: "version", arg: 4, scope: !2978, file: !630, line: 201, type: !96)
!2994 = !DILocalVariable(name: "authors", arg: 5, scope: !2978, file: !630, line: 201, type: !2981)
!2995 = !DILocalVariable(name: "n_authors", scope: !2978, file: !630, line: 203, type: !147)
!2996 = !DILocalVariable(name: "authtab", scope: !2978, file: !630, line: 204, type: !2997)
!2997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !47)
!2998 = !DILocation(line: 0, scope: !2978)
!2999 = !DILocation(line: 204, column: 3, scope: !2978)
!3000 = !DILocation(line: 204, column: 15, scope: !2978)
!3001 = !DILocation(line: 208, column: 35, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !630, line: 206, column: 3)
!3003 = distinct !DILexicalBlock(scope: !2978, file: !630, line: 206, column: 3)
!3004 = !DILocation(line: 208, column: 33, scope: !3002)
!3005 = !DILocation(line: 208, column: 67, scope: !3002)
!3006 = !DILocation(line: 206, column: 3, scope: !3003)
!3007 = !DILocation(line: 208, column: 14, scope: !3002)
!3008 = !DILocation(line: 0, scope: !3003)
!3009 = !DILocation(line: 211, column: 3, scope: !2978)
!3010 = !DILocation(line: 213, column: 1, scope: !2978)
!3011 = distinct !DISubprogram(name: "version_etc", scope: !630, file: !630, line: 230, type: !3012, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2881, !96, !96, !96, null}
!3014 = !{!3015, !3016, !3017, !3018, !3019}
!3015 = !DILocalVariable(name: "stream", arg: 1, scope: !3011, file: !630, line: 230, type: !2881)
!3016 = !DILocalVariable(name: "command_name", arg: 2, scope: !3011, file: !630, line: 231, type: !96)
!3017 = !DILocalVariable(name: "package", arg: 3, scope: !3011, file: !630, line: 231, type: !96)
!3018 = !DILocalVariable(name: "version", arg: 4, scope: !3011, file: !630, line: 232, type: !96)
!3019 = !DILocalVariable(name: "authors", scope: !3011, file: !630, line: 234, type: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !905, line: 52, baseType: !3021)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1434, line: 14, baseType: !3022)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2985, baseType: !3023)
!3023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2982, size: 192, elements: !42)
!3024 = !DILocation(line: 0, scope: !3011)
!3025 = !DILocation(line: 234, column: 3, scope: !3011)
!3026 = !DILocation(line: 234, column: 11, scope: !3011)
!3027 = !DILocation(line: 235, column: 3, scope: !3011)
!3028 = !DILocation(line: 236, column: 3, scope: !3011)
!3029 = !DILocation(line: 237, column: 3, scope: !3011)
!3030 = !DILocation(line: 238, column: 1, scope: !3011)
!3031 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !630, file: !630, line: 241, type: !471, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !847)
!3032 = !DILocation(line: 243, column: 3, scope: !3031)
!3033 = !DILocation(line: 248, column: 3, scope: !3031)
!3034 = !DILocation(line: 254, column: 3, scope: !3031)
!3035 = !DILocation(line: 259, column: 3, scope: !3031)
!3036 = !DILocation(line: 261, column: 1, scope: !3031)
!3037 = distinct !DISubprogram(name: "xnrealloc", scope: !3038, file: !3038, line: 147, type: !3039, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3041)
!3038 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!145, !145, !147, !147}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "p", arg: 1, scope: !3037, file: !3038, line: 147, type: !145)
!3043 = !DILocalVariable(name: "n", arg: 2, scope: !3037, file: !3038, line: 147, type: !147)
!3044 = !DILocalVariable(name: "s", arg: 3, scope: !3037, file: !3038, line: 147, type: !147)
!3045 = !DILocation(line: 0, scope: !3037)
!3046 = !DILocalVariable(name: "p", arg: 1, scope: !3047, file: !762, line: 83, type: !145)
!3047 = distinct !DISubprogram(name: "xreallocarray", scope: !762, file: !762, line: 83, type: !3039, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3048)
!3048 = !{!3046, !3049, !3050}
!3049 = !DILocalVariable(name: "n", arg: 2, scope: !3047, file: !762, line: 83, type: !147)
!3050 = !DILocalVariable(name: "s", arg: 3, scope: !3047, file: !762, line: 83, type: !147)
!3051 = !DILocation(line: 0, scope: !3047, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 149, column: 10, scope: !3037)
!3053 = !DILocation(line: 85, column: 25, scope: !3047, inlinedAt: !3052)
!3054 = !DILocalVariable(name: "p", arg: 1, scope: !3055, file: !762, line: 37, type: !145)
!3055 = distinct !DISubprogram(name: "check_nonnull", scope: !762, file: !762, line: 37, type: !3056, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!145, !145}
!3058 = !{!3054}
!3059 = !DILocation(line: 0, scope: !3055, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 85, column: 10, scope: !3047, inlinedAt: !3052)
!3061 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3060)
!3062 = distinct !DILexicalBlock(scope: !3055, file: !762, line: 39, column: 7)
!3063 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3060)
!3064 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3060)
!3065 = !DILocation(line: 149, column: 3, scope: !3037)
!3066 = !DILocation(line: 0, scope: !3047)
!3067 = !DILocation(line: 85, column: 25, scope: !3047)
!3068 = !DILocation(line: 0, scope: !3055, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 85, column: 10, scope: !3047)
!3070 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3069)
!3071 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3069)
!3072 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3069)
!3073 = !DILocation(line: 85, column: 3, scope: !3047)
!3074 = distinct !DISubprogram(name: "xmalloc", scope: !762, file: !762, line: 47, type: !3075, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!145, !147}
!3077 = !{!3078}
!3078 = !DILocalVariable(name: "s", arg: 1, scope: !3074, file: !762, line: 47, type: !147)
!3079 = !DILocation(line: 0, scope: !3074)
!3080 = !DILocation(line: 49, column: 25, scope: !3074)
!3081 = !DILocation(line: 0, scope: !3055, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 49, column: 10, scope: !3074)
!3083 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3082)
!3084 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3082)
!3085 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3082)
!3086 = !DILocation(line: 49, column: 3, scope: !3074)
!3087 = !DISubprogram(name: "malloc", scope: !1035, file: !1035, line: 540, type: !3075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3088 = distinct !DISubprogram(name: "ximalloc", scope: !762, file: !762, line: 53, type: !3089, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!145, !781}
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "s", arg: 1, scope: !3088, file: !762, line: 53, type: !781)
!3093 = !DILocation(line: 0, scope: !3088)
!3094 = !DILocalVariable(name: "s", arg: 1, scope: !3095, file: !3096, line: 55, type: !781)
!3095 = distinct !DISubprogram(name: "imalloc", scope: !3096, file: !3096, line: 55, type: !3089, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3097)
!3096 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3097 = !{!3094}
!3098 = !DILocation(line: 0, scope: !3095, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 55, column: 25, scope: !3088)
!3100 = !DILocation(line: 57, column: 26, scope: !3095, inlinedAt: !3099)
!3101 = !DILocation(line: 0, scope: !3055, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 55, column: 10, scope: !3088)
!3103 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3102)
!3104 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3102)
!3105 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3102)
!3106 = !DILocation(line: 55, column: 3, scope: !3088)
!3107 = distinct !DISubprogram(name: "xcharalloc", scope: !762, file: !762, line: 59, type: !3108, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!89, !147}
!3110 = !{!3111}
!3111 = !DILocalVariable(name: "n", arg: 1, scope: !3107, file: !762, line: 59, type: !147)
!3112 = !DILocation(line: 0, scope: !3107)
!3113 = !DILocation(line: 0, scope: !3074, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 61, column: 10, scope: !3107)
!3115 = !DILocation(line: 49, column: 25, scope: !3074, inlinedAt: !3114)
!3116 = !DILocation(line: 0, scope: !3055, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 49, column: 10, scope: !3074, inlinedAt: !3114)
!3118 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3117)
!3119 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3117)
!3120 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3117)
!3121 = !DILocation(line: 61, column: 3, scope: !3107)
!3122 = distinct !DISubprogram(name: "xrealloc", scope: !762, file: !762, line: 68, type: !3123, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!145, !145, !147}
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "p", arg: 1, scope: !3122, file: !762, line: 68, type: !145)
!3127 = !DILocalVariable(name: "s", arg: 2, scope: !3122, file: !762, line: 68, type: !147)
!3128 = !DILocation(line: 0, scope: !3122)
!3129 = !DILocalVariable(name: "ptr", arg: 1, scope: !3130, file: !3131, line: 2057, type: !145)
!3130 = distinct !DISubprogram(name: "rpl_realloc", scope: !3131, file: !3131, line: 2057, type: !3123, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3132)
!3131 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3132 = !{!3129, !3133}
!3133 = !DILocalVariable(name: "size", arg: 2, scope: !3130, file: !3131, line: 2057, type: !147)
!3134 = !DILocation(line: 0, scope: !3130, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 70, column: 25, scope: !3122)
!3136 = !DILocation(line: 2059, column: 24, scope: !3130, inlinedAt: !3135)
!3137 = !DILocation(line: 2059, column: 10, scope: !3130, inlinedAt: !3135)
!3138 = !DILocation(line: 0, scope: !3055, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 70, column: 10, scope: !3122)
!3140 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3139)
!3141 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3139)
!3142 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3139)
!3143 = !DILocation(line: 70, column: 3, scope: !3122)
!3144 = !DISubprogram(name: "realloc", scope: !1035, file: !1035, line: 551, type: !3123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3145 = distinct !DISubprogram(name: "xirealloc", scope: !762, file: !762, line: 74, type: !3146, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!145, !145, !781}
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "p", arg: 1, scope: !3145, file: !762, line: 74, type: !145)
!3150 = !DILocalVariable(name: "s", arg: 2, scope: !3145, file: !762, line: 74, type: !781)
!3151 = !DILocation(line: 0, scope: !3145)
!3152 = !DILocalVariable(name: "p", arg: 1, scope: !3153, file: !3096, line: 66, type: !145)
!3153 = distinct !DISubprogram(name: "irealloc", scope: !3096, file: !3096, line: 66, type: !3146, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3154)
!3154 = !{!3152, !3155}
!3155 = !DILocalVariable(name: "s", arg: 2, scope: !3153, file: !3096, line: 66, type: !781)
!3156 = !DILocation(line: 0, scope: !3153, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 76, column: 25, scope: !3145)
!3158 = !DILocation(line: 0, scope: !3130, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 68, column: 26, scope: !3153, inlinedAt: !3157)
!3160 = !DILocation(line: 2059, column: 24, scope: !3130, inlinedAt: !3159)
!3161 = !DILocation(line: 2059, column: 10, scope: !3130, inlinedAt: !3159)
!3162 = !DILocation(line: 0, scope: !3055, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 76, column: 10, scope: !3145)
!3164 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3163)
!3165 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3163)
!3166 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3163)
!3167 = !DILocation(line: 76, column: 3, scope: !3145)
!3168 = distinct !DISubprogram(name: "xireallocarray", scope: !762, file: !762, line: 89, type: !3169, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3171)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!145, !145, !781, !781}
!3171 = !{!3172, !3173, !3174}
!3172 = !DILocalVariable(name: "p", arg: 1, scope: !3168, file: !762, line: 89, type: !145)
!3173 = !DILocalVariable(name: "n", arg: 2, scope: !3168, file: !762, line: 89, type: !781)
!3174 = !DILocalVariable(name: "s", arg: 3, scope: !3168, file: !762, line: 89, type: !781)
!3175 = !DILocation(line: 0, scope: !3168)
!3176 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !3096, line: 98, type: !145)
!3177 = distinct !DISubprogram(name: "ireallocarray", scope: !3096, file: !3096, line: 98, type: !3169, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3178)
!3178 = !{!3176, !3179, !3180}
!3179 = !DILocalVariable(name: "n", arg: 2, scope: !3177, file: !3096, line: 98, type: !781)
!3180 = !DILocalVariable(name: "s", arg: 3, scope: !3177, file: !3096, line: 98, type: !781)
!3181 = !DILocation(line: 0, scope: !3177, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 91, column: 25, scope: !3168)
!3183 = !DILocation(line: 101, column: 13, scope: !3177, inlinedAt: !3182)
!3184 = !DILocation(line: 0, scope: !3055, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 91, column: 10, scope: !3168)
!3186 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3185)
!3187 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3185)
!3188 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3185)
!3189 = !DILocation(line: 91, column: 3, scope: !3168)
!3190 = distinct !DISubprogram(name: "xnmalloc", scope: !762, file: !762, line: 98, type: !3191, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!145, !147, !147}
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !762, line: 98, type: !147)
!3195 = !DILocalVariable(name: "s", arg: 2, scope: !3190, file: !762, line: 98, type: !147)
!3196 = !DILocation(line: 0, scope: !3190)
!3197 = !DILocation(line: 0, scope: !3047, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 100, column: 10, scope: !3190)
!3199 = !DILocation(line: 85, column: 25, scope: !3047, inlinedAt: !3198)
!3200 = !DILocation(line: 0, scope: !3055, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 85, column: 10, scope: !3047, inlinedAt: !3198)
!3202 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3201)
!3203 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3201)
!3204 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3201)
!3205 = !DILocation(line: 100, column: 3, scope: !3190)
!3206 = distinct !DISubprogram(name: "xinmalloc", scope: !762, file: !762, line: 104, type: !3207, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!145, !781, !781}
!3209 = !{!3210, !3211}
!3210 = !DILocalVariable(name: "n", arg: 1, scope: !3206, file: !762, line: 104, type: !781)
!3211 = !DILocalVariable(name: "s", arg: 2, scope: !3206, file: !762, line: 104, type: !781)
!3212 = !DILocation(line: 0, scope: !3206)
!3213 = !DILocation(line: 0, scope: !3168, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 106, column: 10, scope: !3206)
!3215 = !DILocation(line: 0, scope: !3177, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 91, column: 25, scope: !3168, inlinedAt: !3214)
!3217 = !DILocation(line: 101, column: 13, scope: !3177, inlinedAt: !3216)
!3218 = !DILocation(line: 0, scope: !3055, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 91, column: 10, scope: !3168, inlinedAt: !3214)
!3220 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3219)
!3221 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3219)
!3222 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3219)
!3223 = !DILocation(line: 106, column: 3, scope: !3206)
!3224 = distinct !DISubprogram(name: "x2realloc", scope: !762, file: !762, line: 116, type: !3225, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!145, !145, !768}
!3227 = !{!3228, !3229}
!3228 = !DILocalVariable(name: "p", arg: 1, scope: !3224, file: !762, line: 116, type: !145)
!3229 = !DILocalVariable(name: "ps", arg: 2, scope: !3224, file: !762, line: 116, type: !768)
!3230 = !DILocation(line: 0, scope: !3224)
!3231 = !DILocation(line: 0, scope: !765, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 118, column: 10, scope: !3224)
!3233 = !DILocation(line: 178, column: 14, scope: !765, inlinedAt: !3232)
!3234 = !DILocation(line: 180, column: 9, scope: !3235, inlinedAt: !3232)
!3235 = distinct !DILexicalBlock(scope: !765, file: !762, line: 180, column: 7)
!3236 = !DILocation(line: 180, column: 7, scope: !765, inlinedAt: !3232)
!3237 = !DILocation(line: 182, column: 13, scope: !3238, inlinedAt: !3232)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !762, line: 182, column: 11)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !762, line: 181, column: 5)
!3240 = !DILocation(line: 182, column: 11, scope: !3239, inlinedAt: !3232)
!3241 = !DILocation(line: 197, column: 11, scope: !3242, inlinedAt: !3232)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !762, line: 197, column: 11)
!3243 = distinct !DILexicalBlock(scope: !3235, file: !762, line: 195, column: 5)
!3244 = !DILocation(line: 197, column: 11, scope: !3243, inlinedAt: !3232)
!3245 = !DILocation(line: 198, column: 9, scope: !3242, inlinedAt: !3232)
!3246 = !DILocation(line: 0, scope: !3047, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 201, column: 7, scope: !765, inlinedAt: !3232)
!3248 = !DILocation(line: 85, column: 25, scope: !3047, inlinedAt: !3247)
!3249 = !DILocation(line: 0, scope: !3055, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 85, column: 10, scope: !3047, inlinedAt: !3247)
!3251 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3250)
!3252 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3250)
!3253 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3250)
!3254 = !DILocation(line: 202, column: 7, scope: !765, inlinedAt: !3232)
!3255 = !DILocation(line: 118, column: 3, scope: !3224)
!3256 = !DILocation(line: 0, scope: !765)
!3257 = !DILocation(line: 178, column: 14, scope: !765)
!3258 = !DILocation(line: 180, column: 9, scope: !3235)
!3259 = !DILocation(line: 180, column: 7, scope: !765)
!3260 = !DILocation(line: 182, column: 13, scope: !3238)
!3261 = !DILocation(line: 182, column: 11, scope: !3239)
!3262 = !DILocation(line: 190, column: 30, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3238, file: !762, line: 183, column: 9)
!3264 = !DILocation(line: 191, column: 16, scope: !3263)
!3265 = !DILocation(line: 191, column: 13, scope: !3263)
!3266 = !DILocation(line: 192, column: 9, scope: !3263)
!3267 = !DILocation(line: 197, column: 11, scope: !3242)
!3268 = !DILocation(line: 197, column: 11, scope: !3243)
!3269 = !DILocation(line: 198, column: 9, scope: !3242)
!3270 = !DILocation(line: 0, scope: !3047, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 201, column: 7, scope: !765)
!3272 = !DILocation(line: 85, column: 25, scope: !3047, inlinedAt: !3271)
!3273 = !DILocation(line: 0, scope: !3055, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 85, column: 10, scope: !3047, inlinedAt: !3271)
!3275 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3274)
!3276 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3274)
!3277 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3274)
!3278 = !DILocation(line: 202, column: 7, scope: !765)
!3279 = !DILocation(line: 203, column: 3, scope: !765)
!3280 = !DILocation(line: 0, scope: !777)
!3281 = !DILocation(line: 230, column: 14, scope: !777)
!3282 = !DILocation(line: 238, column: 7, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !777, file: !762, line: 238, column: 7)
!3284 = !DILocation(line: 238, column: 7, scope: !777)
!3285 = !DILocation(line: 240, column: 9, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !777, file: !762, line: 240, column: 7)
!3287 = !DILocation(line: 240, column: 18, scope: !3286)
!3288 = !DILocation(line: 253, column: 8, scope: !777)
!3289 = !DILocation(line: 258, column: 27, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !762, line: 257, column: 5)
!3291 = distinct !DILexicalBlock(scope: !777, file: !762, line: 256, column: 7)
!3292 = !DILocation(line: 259, column: 50, scope: !3290)
!3293 = !DILocation(line: 259, column: 32, scope: !3290)
!3294 = !DILocation(line: 260, column: 5, scope: !3290)
!3295 = !DILocation(line: 262, column: 9, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !777, file: !762, line: 262, column: 7)
!3297 = !DILocation(line: 262, column: 7, scope: !777)
!3298 = !DILocation(line: 263, column: 9, scope: !3296)
!3299 = !DILocation(line: 263, column: 5, scope: !3296)
!3300 = !DILocation(line: 264, column: 9, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !777, file: !762, line: 264, column: 7)
!3302 = !DILocation(line: 264, column: 14, scope: !3301)
!3303 = !DILocation(line: 265, column: 7, scope: !3301)
!3304 = !DILocation(line: 265, column: 11, scope: !3301)
!3305 = !DILocation(line: 266, column: 11, scope: !3301)
!3306 = !DILocation(line: 267, column: 14, scope: !3301)
!3307 = !DILocation(line: 264, column: 7, scope: !777)
!3308 = !DILocation(line: 268, column: 5, scope: !3301)
!3309 = !DILocation(line: 0, scope: !3122, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 269, column: 8, scope: !777)
!3311 = !DILocation(line: 0, scope: !3130, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 70, column: 25, scope: !3122, inlinedAt: !3310)
!3313 = !DILocation(line: 2059, column: 24, scope: !3130, inlinedAt: !3312)
!3314 = !DILocation(line: 2059, column: 10, scope: !3130, inlinedAt: !3312)
!3315 = !DILocation(line: 0, scope: !3055, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 70, column: 10, scope: !3122, inlinedAt: !3310)
!3317 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3316)
!3318 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3316)
!3319 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3316)
!3320 = !DILocation(line: 270, column: 7, scope: !777)
!3321 = !DILocation(line: 271, column: 3, scope: !777)
!3322 = distinct !DISubprogram(name: "xzalloc", scope: !762, file: !762, line: 279, type: !3075, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3323)
!3323 = !{!3324}
!3324 = !DILocalVariable(name: "s", arg: 1, scope: !3322, file: !762, line: 279, type: !147)
!3325 = !DILocation(line: 0, scope: !3322)
!3326 = !DILocalVariable(name: "n", arg: 1, scope: !3327, file: !762, line: 294, type: !147)
!3327 = distinct !DISubprogram(name: "xcalloc", scope: !762, file: !762, line: 294, type: !3191, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3328)
!3328 = !{!3326, !3329}
!3329 = !DILocalVariable(name: "s", arg: 2, scope: !3327, file: !762, line: 294, type: !147)
!3330 = !DILocation(line: 0, scope: !3327, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 281, column: 10, scope: !3322)
!3332 = !DILocation(line: 296, column: 25, scope: !3327, inlinedAt: !3331)
!3333 = !DILocation(line: 0, scope: !3055, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 296, column: 10, scope: !3327, inlinedAt: !3331)
!3335 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3334)
!3336 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3334)
!3337 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3334)
!3338 = !DILocation(line: 281, column: 3, scope: !3322)
!3339 = !DISubprogram(name: "calloc", scope: !1035, file: !1035, line: 543, type: !3191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3340 = !DILocation(line: 0, scope: !3327)
!3341 = !DILocation(line: 296, column: 25, scope: !3327)
!3342 = !DILocation(line: 0, scope: !3055, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 296, column: 10, scope: !3327)
!3344 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3343)
!3345 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3343)
!3346 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3343)
!3347 = !DILocation(line: 296, column: 3, scope: !3327)
!3348 = distinct !DISubprogram(name: "xizalloc", scope: !762, file: !762, line: 285, type: !3089, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3349)
!3349 = !{!3350}
!3350 = !DILocalVariable(name: "s", arg: 1, scope: !3348, file: !762, line: 285, type: !781)
!3351 = !DILocation(line: 0, scope: !3348)
!3352 = !DILocalVariable(name: "n", arg: 1, scope: !3353, file: !762, line: 300, type: !781)
!3353 = distinct !DISubprogram(name: "xicalloc", scope: !762, file: !762, line: 300, type: !3207, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3354)
!3354 = !{!3352, !3355}
!3355 = !DILocalVariable(name: "s", arg: 2, scope: !3353, file: !762, line: 300, type: !781)
!3356 = !DILocation(line: 0, scope: !3353, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 287, column: 10, scope: !3348)
!3358 = !DILocalVariable(name: "n", arg: 1, scope: !3359, file: !3096, line: 77, type: !781)
!3359 = distinct !DISubprogram(name: "icalloc", scope: !3096, file: !3096, line: 77, type: !3207, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3360)
!3360 = !{!3358, !3361}
!3361 = !DILocalVariable(name: "s", arg: 2, scope: !3359, file: !3096, line: 77, type: !781)
!3362 = !DILocation(line: 0, scope: !3359, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 302, column: 25, scope: !3353, inlinedAt: !3357)
!3364 = !DILocation(line: 91, column: 10, scope: !3359, inlinedAt: !3363)
!3365 = !DILocation(line: 0, scope: !3055, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 302, column: 10, scope: !3353, inlinedAt: !3357)
!3367 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3366)
!3368 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3366)
!3369 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3366)
!3370 = !DILocation(line: 287, column: 3, scope: !3348)
!3371 = !DILocation(line: 0, scope: !3353)
!3372 = !DILocation(line: 0, scope: !3359, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 302, column: 25, scope: !3353)
!3374 = !DILocation(line: 91, column: 10, scope: !3359, inlinedAt: !3373)
!3375 = !DILocation(line: 0, scope: !3055, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 302, column: 10, scope: !3353)
!3377 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3376)
!3378 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3376)
!3379 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3376)
!3380 = !DILocation(line: 302, column: 3, scope: !3353)
!3381 = distinct !DISubprogram(name: "xmemdup", scope: !762, file: !762, line: 310, type: !3382, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!145, !1059, !147}
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "p", arg: 1, scope: !3381, file: !762, line: 310, type: !1059)
!3386 = !DILocalVariable(name: "s", arg: 2, scope: !3381, file: !762, line: 310, type: !147)
!3387 = !DILocation(line: 0, scope: !3381)
!3388 = !DILocation(line: 0, scope: !3074, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 312, column: 18, scope: !3381)
!3390 = !DILocation(line: 49, column: 25, scope: !3074, inlinedAt: !3389)
!3391 = !DILocation(line: 0, scope: !3055, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 49, column: 10, scope: !3074, inlinedAt: !3389)
!3393 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3392)
!3394 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3392)
!3395 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3392)
!3396 = !DILocalVariable(name: "__dest", arg: 1, scope: !3397, file: !1550, line: 26, type: !3400)
!3397 = distinct !DISubprogram(name: "memcpy", scope: !1550, file: !1550, line: 26, type: !3398, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3401)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!145, !3400, !1058, !147}
!3400 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!3401 = !{!3396, !3402, !3403}
!3402 = !DILocalVariable(name: "__src", arg: 2, scope: !3397, file: !1550, line: 26, type: !1058)
!3403 = !DILocalVariable(name: "__len", arg: 3, scope: !3397, file: !1550, line: 26, type: !147)
!3404 = !DILocation(line: 0, scope: !3397, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 312, column: 10, scope: !3381)
!3406 = !DILocation(line: 29, column: 10, scope: !3397, inlinedAt: !3405)
!3407 = !DILocation(line: 312, column: 3, scope: !3381)
!3408 = distinct !DISubprogram(name: "ximemdup", scope: !762, file: !762, line: 316, type: !3409, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!145, !1059, !781}
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "p", arg: 1, scope: !3408, file: !762, line: 316, type: !1059)
!3413 = !DILocalVariable(name: "s", arg: 2, scope: !3408, file: !762, line: 316, type: !781)
!3414 = !DILocation(line: 0, scope: !3408)
!3415 = !DILocation(line: 0, scope: !3088, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 318, column: 18, scope: !3408)
!3417 = !DILocation(line: 0, scope: !3095, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 55, column: 25, scope: !3088, inlinedAt: !3416)
!3419 = !DILocation(line: 57, column: 26, scope: !3095, inlinedAt: !3418)
!3420 = !DILocation(line: 0, scope: !3055, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 55, column: 10, scope: !3088, inlinedAt: !3416)
!3422 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3421)
!3423 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3421)
!3424 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3421)
!3425 = !DILocation(line: 0, scope: !3397, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 318, column: 10, scope: !3408)
!3427 = !DILocation(line: 29, column: 10, scope: !3397, inlinedAt: !3426)
!3428 = !DILocation(line: 318, column: 3, scope: !3408)
!3429 = distinct !DISubprogram(name: "ximemdup0", scope: !762, file: !762, line: 325, type: !3430, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!89, !1059, !781}
!3432 = !{!3433, !3434, !3435}
!3433 = !DILocalVariable(name: "p", arg: 1, scope: !3429, file: !762, line: 325, type: !1059)
!3434 = !DILocalVariable(name: "s", arg: 2, scope: !3429, file: !762, line: 325, type: !781)
!3435 = !DILocalVariable(name: "result", scope: !3429, file: !762, line: 327, type: !89)
!3436 = !DILocation(line: 0, scope: !3429)
!3437 = !DILocation(line: 327, column: 30, scope: !3429)
!3438 = !DILocation(line: 0, scope: !3088, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 327, column: 18, scope: !3429)
!3440 = !DILocation(line: 0, scope: !3095, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 55, column: 25, scope: !3088, inlinedAt: !3439)
!3442 = !DILocation(line: 57, column: 26, scope: !3095, inlinedAt: !3441)
!3443 = !DILocation(line: 0, scope: !3055, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 55, column: 10, scope: !3088, inlinedAt: !3439)
!3445 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3444)
!3446 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3444)
!3447 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3444)
!3448 = !DILocation(line: 328, column: 3, scope: !3429)
!3449 = !DILocation(line: 328, column: 13, scope: !3429)
!3450 = !DILocation(line: 0, scope: !3397, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 329, column: 10, scope: !3429)
!3452 = !DILocation(line: 29, column: 10, scope: !3397, inlinedAt: !3451)
!3453 = !DILocation(line: 329, column: 3, scope: !3429)
!3454 = distinct !DISubprogram(name: "xstrdup", scope: !762, file: !762, line: 335, type: !1037, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3455)
!3455 = !{!3456}
!3456 = !DILocalVariable(name: "string", arg: 1, scope: !3454, file: !762, line: 335, type: !96)
!3457 = !DILocation(line: 0, scope: !3454)
!3458 = !DILocation(line: 337, column: 27, scope: !3454)
!3459 = !DILocation(line: 337, column: 43, scope: !3454)
!3460 = !DILocation(line: 0, scope: !3381, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 337, column: 10, scope: !3454)
!3462 = !DILocation(line: 0, scope: !3074, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 312, column: 18, scope: !3381, inlinedAt: !3461)
!3464 = !DILocation(line: 49, column: 25, scope: !3074, inlinedAt: !3463)
!3465 = !DILocation(line: 0, scope: !3055, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 49, column: 10, scope: !3074, inlinedAt: !3463)
!3467 = !DILocation(line: 39, column: 8, scope: !3062, inlinedAt: !3466)
!3468 = !DILocation(line: 39, column: 7, scope: !3055, inlinedAt: !3466)
!3469 = !DILocation(line: 40, column: 5, scope: !3062, inlinedAt: !3466)
!3470 = !DILocation(line: 0, scope: !3397, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 312, column: 10, scope: !3381, inlinedAt: !3461)
!3472 = !DILocation(line: 29, column: 10, scope: !3397, inlinedAt: !3471)
!3473 = !DILocation(line: 337, column: 3, scope: !3454)
!3474 = distinct !DISubprogram(name: "xalloc_die", scope: !726, file: !726, line: 32, type: !471, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3475)
!3475 = !{!3476}
!3476 = !DILocalVariable(name: "__errstatus", scope: !3477, file: !726, line: 34, type: !118)
!3477 = distinct !DILexicalBlock(scope: !3474, file: !726, line: 34, column: 3)
!3478 = !DILocation(line: 34, column: 3, scope: !3477)
!3479 = !DILocation(line: 0, scope: !3477)
!3480 = !DILocation(line: 40, column: 3, scope: !3474)
!3481 = distinct !DISubprogram(name: "xstrtol", scope: !798, file: !798, line: 71, type: !3482, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3486)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!3484, !96, !88, !72, !3485, !96}
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3499, !3500}
!3487 = !DILocalVariable(name: "nptr", arg: 1, scope: !3481, file: !798, line: 71, type: !96)
!3488 = !DILocalVariable(name: "endptr", arg: 2, scope: !3481, file: !798, line: 71, type: !88)
!3489 = !DILocalVariable(name: "base", arg: 3, scope: !3481, file: !798, line: 71, type: !72)
!3490 = !DILocalVariable(name: "val", arg: 4, scope: !3481, file: !798, line: 72, type: !3485)
!3491 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3481, file: !798, line: 72, type: !96)
!3492 = !DILocalVariable(name: "t_ptr", scope: !3481, file: !798, line: 74, type: !89)
!3493 = !DILocalVariable(name: "p", scope: !3481, file: !798, line: 75, type: !88)
!3494 = !DILocalVariable(name: "tmp", scope: !3481, file: !798, line: 91, type: !113)
!3495 = !DILocalVariable(name: "err", scope: !3481, file: !798, line: 92, type: !3484)
!3496 = !DILocalVariable(name: "xbase", scope: !3497, file: !798, line: 126, type: !72)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !798, line: 119, column: 5)
!3498 = distinct !DILexicalBlock(scope: !3481, file: !798, line: 118, column: 7)
!3499 = !DILocalVariable(name: "suffixes", scope: !3497, file: !798, line: 127, type: !72)
!3500 = !DILocalVariable(name: "overflow", scope: !3497, file: !798, line: 156, type: !3484)
!3501 = !DILocation(line: 0, scope: !3481)
!3502 = !DILocation(line: 74, column: 3, scope: !3481)
!3503 = !DILocation(line: 75, column: 14, scope: !3481)
!3504 = !DILocation(line: 90, column: 3, scope: !3481)
!3505 = !DILocation(line: 90, column: 9, scope: !3481)
!3506 = !DILocation(line: 91, column: 20, scope: !3481)
!3507 = !DILocation(line: 94, column: 7, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3481, file: !798, line: 94, column: 7)
!3509 = !DILocation(line: 94, column: 10, scope: !3508)
!3510 = !DILocation(line: 94, column: 7, scope: !3481)
!3511 = !DILocation(line: 98, column: 14, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !798, line: 98, column: 11)
!3513 = distinct !DILexicalBlock(scope: !3508, file: !798, line: 95, column: 5)
!3514 = !DILocation(line: 98, column: 29, scope: !3512)
!3515 = !DILocation(line: 98, column: 32, scope: !3512)
!3516 = !DILocation(line: 98, column: 38, scope: !3512)
!3517 = !DILocation(line: 98, column: 41, scope: !3512)
!3518 = !DILocation(line: 98, column: 11, scope: !3513)
!3519 = !DILocation(line: 102, column: 12, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3508, file: !798, line: 102, column: 12)
!3521 = !DILocation(line: 102, column: 12, scope: !3508)
!3522 = !DILocation(line: 107, column: 5, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3520, file: !798, line: 103, column: 5)
!3524 = !DILocation(line: 112, column: 8, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3481, file: !798, line: 112, column: 7)
!3526 = !DILocation(line: 112, column: 7, scope: !3481)
!3527 = !DILocation(line: 114, column: 12, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3525, file: !798, line: 113, column: 5)
!3529 = !DILocation(line: 115, column: 7, scope: !3528)
!3530 = !DILocation(line: 118, column: 7, scope: !3498)
!3531 = !DILocation(line: 118, column: 11, scope: !3498)
!3532 = !DILocation(line: 118, column: 7, scope: !3481)
!3533 = !DILocation(line: 120, column: 12, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3497, file: !798, line: 120, column: 11)
!3535 = !DILocation(line: 120, column: 11, scope: !3497)
!3536 = !DILocation(line: 122, column: 16, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3534, file: !798, line: 121, column: 9)
!3538 = !DILocation(line: 123, column: 22, scope: !3537)
!3539 = !DILocation(line: 123, column: 11, scope: !3537)
!3540 = !DILocation(line: 0, scope: !3497)
!3541 = !DILocation(line: 128, column: 7, scope: !3497)
!3542 = !DILocation(line: 140, column: 15, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !798, line: 140, column: 15)
!3544 = distinct !DILexicalBlock(scope: !3497, file: !798, line: 129, column: 9)
!3545 = !DILocation(line: 140, column: 15, scope: !3544)
!3546 = !DILocation(line: 141, column: 21, scope: !3543)
!3547 = !DILocation(line: 141, column: 13, scope: !3543)
!3548 = !DILocation(line: 144, column: 21, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !798, line: 144, column: 21)
!3550 = distinct !DILexicalBlock(scope: !3543, file: !798, line: 142, column: 15)
!3551 = !DILocation(line: 144, column: 29, scope: !3549)
!3552 = !DILocation(line: 144, column: 21, scope: !3550)
!3553 = !DILocation(line: 152, column: 17, scope: !3550)
!3554 = !DILocation(line: 157, column: 7, scope: !3497)
!3555 = !DILocalVariable(name: "err", scope: !3556, file: !798, line: 64, type: !3484)
!3556 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !798, file: !798, line: 62, type: !3557, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!3484, !3485, !72, !72}
!3559 = !{!3560, !3561, !3562, !3555}
!3560 = !DILocalVariable(name: "x", arg: 1, scope: !3556, file: !798, line: 62, type: !3485)
!3561 = !DILocalVariable(name: "base", arg: 2, scope: !3556, file: !798, line: 62, type: !72)
!3562 = !DILocalVariable(name: "power", arg: 3, scope: !3556, file: !798, line: 62, type: !72)
!3563 = !DILocation(line: 0, scope: !3556, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 219, column: 22, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3497, file: !798, line: 158, column: 9)
!3566 = !DILocalVariable(name: "x", arg: 1, scope: !3567, file: !798, line: 47, type: !3485)
!3567 = distinct !DISubprogram(name: "bkm_scale", scope: !798, file: !798, line: 47, type: !3568, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!3484, !3485, !72}
!3570 = !{!3566, !3571, !3572}
!3571 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3567, file: !798, line: 47, type: !72)
!3572 = !DILocalVariable(name: "scaled", scope: !3567, file: !798, line: 49, type: !113)
!3573 = !DILocation(line: 0, scope: !3567, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3564)
!3575 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3574)
!3576 = distinct !DILexicalBlock(scope: !3567, file: !798, line: 50, column: 7)
!3577 = !DILocation(line: 0, scope: !3556, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 215, column: 22, scope: !3565)
!3579 = !DILocation(line: 0, scope: !3567, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3578)
!3581 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3580)
!3582 = !DILocation(line: 0, scope: !3556, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 202, column: 22, scope: !3565)
!3584 = !DILocation(line: 0, scope: !3567, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3583)
!3586 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3585)
!3587 = !DILocation(line: 0, scope: !3556, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 198, column: 22, scope: !3565)
!3589 = !DILocation(line: 0, scope: !3567, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3588)
!3591 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3590)
!3592 = !DILocation(line: 0, scope: !3556, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 194, column: 22, scope: !3565)
!3594 = !DILocation(line: 0, scope: !3567, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3593)
!3596 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3595)
!3597 = !DILocation(line: 0, scope: !3556, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 175, column: 22, scope: !3565)
!3599 = !DILocation(line: 0, scope: !3567, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3598)
!3601 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3600)
!3602 = !DILocation(line: 0, scope: !3567, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 160, column: 22, scope: !3565)
!3604 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3603)
!3605 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3603)
!3606 = !DILocation(line: 0, scope: !3567, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 167, column: 22, scope: !3565)
!3608 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3607)
!3609 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3607)
!3610 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3600)
!3611 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3598)
!3612 = !DILocation(line: 227, column: 11, scope: !3497)
!3613 = !DILocation(line: 0, scope: !3556, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 180, column: 22, scope: !3565)
!3615 = !DILocation(line: 0, scope: !3567, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3614)
!3617 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3616)
!3618 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3616)
!3619 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3614)
!3620 = !DILocation(line: 0, scope: !3556, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 185, column: 22, scope: !3565)
!3622 = !DILocation(line: 0, scope: !3567, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3621)
!3624 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3623)
!3625 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3623)
!3626 = !DILocation(line: 0, scope: !3556, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 190, column: 22, scope: !3565)
!3628 = !DILocation(line: 0, scope: !3567, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3627)
!3630 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3629)
!3631 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3629)
!3632 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3627)
!3633 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3595)
!3634 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3593)
!3635 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3590)
!3636 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3588)
!3637 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3585)
!3638 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3583)
!3639 = !DILocation(line: 0, scope: !3556, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 207, column: 22, scope: !3565)
!3641 = !DILocation(line: 0, scope: !3567, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 66, column: 12, scope: !3556, inlinedAt: !3640)
!3643 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3642)
!3644 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3642)
!3645 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3640)
!3646 = !DILocation(line: 0, scope: !3567, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 211, column: 22, scope: !3565)
!3648 = !DILocation(line: 50, column: 7, scope: !3576, inlinedAt: !3647)
!3649 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3647)
!3650 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3580)
!3651 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3578)
!3652 = !DILocation(line: 50, column: 7, scope: !3567, inlinedAt: !3574)
!3653 = !DILocation(line: 66, column: 9, scope: !3556, inlinedAt: !3564)
!3654 = !DILocation(line: 0, scope: !3565)
!3655 = !DILocation(line: 228, column: 10, scope: !3497)
!3656 = !DILocation(line: 229, column: 11, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3497, file: !798, line: 229, column: 11)
!3658 = !DILocation(line: 229, column: 11, scope: !3497)
!3659 = !DILocation(line: 223, column: 16, scope: !3565)
!3660 = !DILocation(line: 224, column: 22, scope: !3565)
!3661 = !DILocation(line: 100, column: 11, scope: !3513)
!3662 = !DILocation(line: 92, column: 16, scope: !3481)
!3663 = !DILocation(line: 233, column: 8, scope: !3481)
!3664 = !DILocation(line: 234, column: 3, scope: !3481)
!3665 = !DILocation(line: 235, column: 1, scope: !3481)
!3666 = !DISubprogram(name: "strtol", scope: !1035, file: !1035, line: 177, type: !3667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!113, !900, !3669, !72}
!3669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3670 = distinct !DISubprogram(name: "close_stream", scope: !802, file: !802, line: 55, type: !3671, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !3707)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!72, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3675)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3675, file: !219, line: 51, baseType: !72, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3675, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3675, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3675, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3675, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3675, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3675, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3675, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3675, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3675, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3675, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3675, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3675, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3675, file: !219, line: 70, baseType: !3691, size: 64, offset: 832)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3675, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3675, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3675, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3675, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3675, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3675, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3675, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3675, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3675, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3675, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3675, file: !219, line: 93, baseType: !3691, size: 64, offset: 1344)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3675, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3675, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3675, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3675, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3707 = !{!3708, !3709, !3711, !3712}
!3708 = !DILocalVariable(name: "stream", arg: 1, scope: !3670, file: !802, line: 55, type: !3673)
!3709 = !DILocalVariable(name: "some_pending", scope: !3670, file: !802, line: 57, type: !3710)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3711 = !DILocalVariable(name: "prev_fail", scope: !3670, file: !802, line: 58, type: !3710)
!3712 = !DILocalVariable(name: "fclose_fail", scope: !3670, file: !802, line: 59, type: !3710)
!3713 = !DILocation(line: 0, scope: !3670)
!3714 = !DILocation(line: 57, column: 30, scope: !3670)
!3715 = !DILocalVariable(name: "__stream", arg: 1, scope: !3716, file: !1178, line: 135, type: !3673)
!3716 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1178, file: !1178, line: 135, type: !3671, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !3717)
!3717 = !{!3715}
!3718 = !DILocation(line: 0, scope: !3716, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 58, column: 27, scope: !3670)
!3720 = !DILocation(line: 137, column: 10, scope: !3716, inlinedAt: !3719)
!3721 = !DILocation(line: 58, column: 43, scope: !3670)
!3722 = !DILocation(line: 59, column: 29, scope: !3670)
!3723 = !DILocation(line: 59, column: 45, scope: !3670)
!3724 = !DILocation(line: 69, column: 17, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3670, file: !802, line: 69, column: 7)
!3726 = !DILocation(line: 57, column: 50, scope: !3670)
!3727 = !DILocation(line: 69, column: 33, scope: !3725)
!3728 = !DILocation(line: 69, column: 53, scope: !3725)
!3729 = !DILocation(line: 69, column: 59, scope: !3725)
!3730 = !DILocation(line: 69, column: 7, scope: !3670)
!3731 = !DILocation(line: 71, column: 11, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3725, file: !802, line: 70, column: 5)
!3733 = !DILocation(line: 72, column: 9, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3732, file: !802, line: 71, column: 11)
!3735 = !DILocation(line: 72, column: 15, scope: !3734)
!3736 = !DILocation(line: 77, column: 1, scope: !3670)
!3737 = !DISubprogram(name: "__fpending", scope: !3738, file: !3738, line: 75, type: !3739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3738 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!147, !3673}
!3741 = distinct !DISubprogram(name: "rpl_fclose", scope: !804, file: !804, line: 58, type: !3742, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3778)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!72, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3746)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3746, file: !219, line: 51, baseType: !72, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3746, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3746, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3746, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3746, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3746, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3746, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3746, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3746, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3746, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3746, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3746, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3746, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3746, file: !219, line: 70, baseType: !3762, size: 64, offset: 832)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3746, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3746, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3746, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3746, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3746, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3746, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3746, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3746, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3746, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3746, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3746, file: !219, line: 93, baseType: !3762, size: 64, offset: 1344)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3746, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3746, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3746, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3746, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3778 = !{!3779, !3780, !3781, !3782}
!3779 = !DILocalVariable(name: "fp", arg: 1, scope: !3741, file: !804, line: 58, type: !3744)
!3780 = !DILocalVariable(name: "saved_errno", scope: !3741, file: !804, line: 60, type: !72)
!3781 = !DILocalVariable(name: "fd", scope: !3741, file: !804, line: 63, type: !72)
!3782 = !DILocalVariable(name: "result", scope: !3741, file: !804, line: 74, type: !72)
!3783 = !DILocation(line: 0, scope: !3741)
!3784 = !DILocation(line: 63, column: 12, scope: !3741)
!3785 = !DILocation(line: 64, column: 10, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3741, file: !804, line: 64, column: 7)
!3787 = !DILocation(line: 64, column: 7, scope: !3741)
!3788 = !DILocation(line: 65, column: 12, scope: !3786)
!3789 = !DILocation(line: 65, column: 5, scope: !3786)
!3790 = !DILocation(line: 70, column: 9, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3741, file: !804, line: 70, column: 7)
!3792 = !DILocation(line: 70, column: 23, scope: !3791)
!3793 = !DILocation(line: 70, column: 33, scope: !3791)
!3794 = !DILocation(line: 70, column: 26, scope: !3791)
!3795 = !DILocation(line: 70, column: 59, scope: !3791)
!3796 = !DILocation(line: 71, column: 7, scope: !3791)
!3797 = !DILocation(line: 71, column: 10, scope: !3791)
!3798 = !DILocation(line: 70, column: 7, scope: !3741)
!3799 = !DILocation(line: 100, column: 12, scope: !3741)
!3800 = !DILocation(line: 105, column: 7, scope: !3741)
!3801 = !DILocation(line: 72, column: 19, scope: !3791)
!3802 = !DILocation(line: 105, column: 19, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3741, file: !804, line: 105, column: 7)
!3804 = !DILocation(line: 107, column: 13, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3803, file: !804, line: 106, column: 5)
!3806 = !DILocation(line: 109, column: 5, scope: !3805)
!3807 = !DILocation(line: 112, column: 1, scope: !3741)
!3808 = !DISubprogram(name: "fileno", scope: !905, file: !905, line: 809, type: !3742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3809 = !DISubprogram(name: "fclose", scope: !905, file: !905, line: 178, type: !3742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3810 = !DISubprogram(name: "__freading", scope: !3738, file: !3738, line: 51, type: !3742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3811 = !DISubprogram(name: "lseek", scope: !1223, file: !1223, line: 339, type: !3812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!241, !72, !241, !72}
!3814 = distinct !DISubprogram(name: "rpl_fflush", scope: !806, file: !806, line: 130, type: !3815, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3851)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!72, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3819, file: !219, line: 51, baseType: !72, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3819, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3819, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3819, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3819, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3819, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3819, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3819, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3819, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3819, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3819, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3819, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3819, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3819, file: !219, line: 70, baseType: !3835, size: 64, offset: 832)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3819, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3819, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3819, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3819, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3819, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3819, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3819, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3819, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3819, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3819, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3819, file: !219, line: 93, baseType: !3835, size: 64, offset: 1344)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3819, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3819, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3819, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3819, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "stream", arg: 1, scope: !3814, file: !806, line: 130, type: !3817)
!3853 = !DILocation(line: 0, scope: !3814)
!3854 = !DILocation(line: 151, column: 14, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3814, file: !806, line: 151, column: 7)
!3856 = !DILocation(line: 151, column: 22, scope: !3855)
!3857 = !DILocation(line: 151, column: 27, scope: !3855)
!3858 = !DILocation(line: 151, column: 7, scope: !3814)
!3859 = !DILocation(line: 152, column: 12, scope: !3855)
!3860 = !DILocation(line: 152, column: 5, scope: !3855)
!3861 = !DILocalVariable(name: "fp", arg: 1, scope: !3862, file: !806, line: 42, type: !3817)
!3862 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !806, file: !806, line: 42, type: !3863, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3817}
!3865 = !{!3861}
!3866 = !DILocation(line: 0, scope: !3862, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 157, column: 3, scope: !3814)
!3868 = !DILocation(line: 44, column: 12, scope: !3869, inlinedAt: !3867)
!3869 = distinct !DILexicalBlock(scope: !3862, file: !806, line: 44, column: 7)
!3870 = !DILocation(line: 44, column: 19, scope: !3869, inlinedAt: !3867)
!3871 = !DILocation(line: 44, column: 7, scope: !3862, inlinedAt: !3867)
!3872 = !DILocation(line: 46, column: 5, scope: !3869, inlinedAt: !3867)
!3873 = !DILocation(line: 159, column: 10, scope: !3814)
!3874 = !DILocation(line: 159, column: 3, scope: !3814)
!3875 = !DILocation(line: 236, column: 1, scope: !3814)
!3876 = !DISubprogram(name: "fflush", scope: !905, file: !905, line: 230, type: !3815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3877 = distinct !DISubprogram(name: "rpl_fseeko", scope: !808, file: !808, line: 28, type: !3878, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3915)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!72, !3880, !3914, !72}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3882)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3882, file: !219, line: 51, baseType: !72, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3882, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3882, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3882, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3882, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3882, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3882, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3882, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3882, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3882, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3882, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3882, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3882, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3882, file: !219, line: 70, baseType: !3898, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3882, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3882, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3882, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3882, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3882, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3882, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3882, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3882, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3882, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3882, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3882, file: !219, line: 93, baseType: !3898, size: 64, offset: 1344)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3882, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3882, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3882, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3882, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !905, line: 63, baseType: !241)
!3915 = !{!3916, !3917, !3918, !3919}
!3916 = !DILocalVariable(name: "fp", arg: 1, scope: !3877, file: !808, line: 28, type: !3880)
!3917 = !DILocalVariable(name: "offset", arg: 2, scope: !3877, file: !808, line: 28, type: !3914)
!3918 = !DILocalVariable(name: "whence", arg: 3, scope: !3877, file: !808, line: 28, type: !72)
!3919 = !DILocalVariable(name: "pos", scope: !3920, file: !808, line: 123, type: !3914)
!3920 = distinct !DILexicalBlock(scope: !3921, file: !808, line: 119, column: 5)
!3921 = distinct !DILexicalBlock(scope: !3877, file: !808, line: 55, column: 7)
!3922 = !DILocation(line: 0, scope: !3877)
!3923 = !DILocation(line: 55, column: 12, scope: !3921)
!3924 = !{!1186, !839, i64 16}
!3925 = !DILocation(line: 55, column: 33, scope: !3921)
!3926 = !{!1186, !839, i64 8}
!3927 = !DILocation(line: 55, column: 25, scope: !3921)
!3928 = !DILocation(line: 56, column: 7, scope: !3921)
!3929 = !DILocation(line: 56, column: 15, scope: !3921)
!3930 = !DILocation(line: 56, column: 37, scope: !3921)
!3931 = !{!1186, !839, i64 32}
!3932 = !DILocation(line: 56, column: 29, scope: !3921)
!3933 = !DILocation(line: 57, column: 7, scope: !3921)
!3934 = !DILocation(line: 57, column: 15, scope: !3921)
!3935 = !{!1186, !839, i64 72}
!3936 = !DILocation(line: 57, column: 29, scope: !3921)
!3937 = !DILocation(line: 55, column: 7, scope: !3877)
!3938 = !DILocation(line: 123, column: 26, scope: !3920)
!3939 = !DILocation(line: 123, column: 19, scope: !3920)
!3940 = !DILocation(line: 0, scope: !3920)
!3941 = !DILocation(line: 124, column: 15, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3920, file: !808, line: 124, column: 11)
!3943 = !DILocation(line: 124, column: 11, scope: !3920)
!3944 = !DILocation(line: 135, column: 19, scope: !3920)
!3945 = !DILocation(line: 136, column: 12, scope: !3920)
!3946 = !DILocation(line: 136, column: 20, scope: !3920)
!3947 = !{!1186, !1132, i64 144}
!3948 = !DILocation(line: 167, column: 7, scope: !3920)
!3949 = !DILocation(line: 169, column: 10, scope: !3877)
!3950 = !DILocation(line: 169, column: 3, scope: !3877)
!3951 = !DILocation(line: 170, column: 1, scope: !3877)
!3952 = !DISubprogram(name: "fseeko", scope: !905, file: !905, line: 736, type: !3953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!72, !3880, !241, !72}
!3955 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !733, file: !733, line: 100, type: !3956, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3959)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!147, !1568, !96, !147, !3958}
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!3959 = !{!3960, !3961, !3962, !3963, !3964}
!3960 = !DILocalVariable(name: "pwc", arg: 1, scope: !3955, file: !733, line: 100, type: !1568)
!3961 = !DILocalVariable(name: "s", arg: 2, scope: !3955, file: !733, line: 100, type: !96)
!3962 = !DILocalVariable(name: "n", arg: 3, scope: !3955, file: !733, line: 100, type: !147)
!3963 = !DILocalVariable(name: "ps", arg: 4, scope: !3955, file: !733, line: 100, type: !3958)
!3964 = !DILocalVariable(name: "ret", scope: !3955, file: !733, line: 130, type: !147)
!3965 = !DILocation(line: 0, scope: !3955)
!3966 = !DILocation(line: 105, column: 9, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3955, file: !733, line: 105, column: 7)
!3968 = !DILocation(line: 105, column: 7, scope: !3955)
!3969 = !DILocation(line: 117, column: 10, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3955, file: !733, line: 117, column: 7)
!3971 = !DILocation(line: 117, column: 7, scope: !3955)
!3972 = !DILocation(line: 130, column: 16, scope: !3955)
!3973 = !DILocation(line: 135, column: 11, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3955, file: !733, line: 135, column: 7)
!3975 = !DILocation(line: 135, column: 25, scope: !3974)
!3976 = !DILocation(line: 135, column: 30, scope: !3974)
!3977 = !DILocation(line: 135, column: 7, scope: !3955)
!3978 = !DILocalVariable(name: "ps", arg: 1, scope: !3979, file: !1541, line: 1135, type: !3958)
!3979 = distinct !DISubprogram(name: "mbszero", scope: !1541, file: !1541, line: 1135, type: !3980, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !3958}
!3982 = !{!3978}
!3983 = !DILocation(line: 0, scope: !3979, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 137, column: 5, scope: !3974)
!3985 = !DILocalVariable(name: "__dest", arg: 1, scope: !3986, file: !1550, line: 57, type: !145)
!3986 = distinct !DISubprogram(name: "memset", scope: !1550, file: !1550, line: 57, type: !1551, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3987)
!3987 = !{!3985, !3988, !3989}
!3988 = !DILocalVariable(name: "__ch", arg: 2, scope: !3986, file: !1550, line: 57, type: !72)
!3989 = !DILocalVariable(name: "__len", arg: 3, scope: !3986, file: !1550, line: 57, type: !147)
!3990 = !DILocation(line: 0, scope: !3986, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 1137, column: 3, scope: !3979, inlinedAt: !3984)
!3992 = !DILocation(line: 59, column: 10, scope: !3986, inlinedAt: !3991)
!3993 = !DILocation(line: 137, column: 5, scope: !3974)
!3994 = !DILocation(line: 138, column: 11, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3955, file: !733, line: 138, column: 7)
!3996 = !DILocation(line: 138, column: 7, scope: !3955)
!3997 = !DILocation(line: 139, column: 5, scope: !3995)
!3998 = !DILocation(line: 143, column: 26, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3955, file: !733, line: 143, column: 7)
!4000 = !DILocation(line: 143, column: 41, scope: !3999)
!4001 = !DILocation(line: 143, column: 7, scope: !3955)
!4002 = !DILocation(line: 145, column: 15, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !733, line: 145, column: 11)
!4004 = distinct !DILexicalBlock(scope: !3999, file: !733, line: 144, column: 5)
!4005 = !DILocation(line: 145, column: 11, scope: !4004)
!4006 = !DILocation(line: 146, column: 32, scope: !4003)
!4007 = !DILocation(line: 146, column: 16, scope: !4003)
!4008 = !DILocation(line: 146, column: 14, scope: !4003)
!4009 = !DILocation(line: 146, column: 9, scope: !4003)
!4010 = !DILocation(line: 286, column: 1, scope: !3955)
!4011 = !DISubprogram(name: "mbsinit", scope: !4012, file: !4012, line: 293, type: !4013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !847)
!4012 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!72, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!4017 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !810, file: !810, line: 27, type: !3039, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4018)
!4018 = !{!4019, !4020, !4021, !4022}
!4019 = !DILocalVariable(name: "ptr", arg: 1, scope: !4017, file: !810, line: 27, type: !145)
!4020 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4017, file: !810, line: 27, type: !147)
!4021 = !DILocalVariable(name: "size", arg: 3, scope: !4017, file: !810, line: 27, type: !147)
!4022 = !DILocalVariable(name: "nbytes", scope: !4017, file: !810, line: 29, type: !147)
!4023 = !DILocation(line: 0, scope: !4017)
!4024 = !DILocation(line: 30, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4017, file: !810, line: 30, column: 7)
!4026 = !DILocalVariable(name: "ptr", arg: 1, scope: !4027, file: !3131, line: 2057, type: !145)
!4027 = distinct !DISubprogram(name: "rpl_realloc", scope: !3131, file: !3131, line: 2057, type: !3123, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4028)
!4028 = !{!4026, !4029}
!4029 = !DILocalVariable(name: "size", arg: 2, scope: !4027, file: !3131, line: 2057, type: !147)
!4030 = !DILocation(line: 0, scope: !4027, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 37, column: 10, scope: !4017)
!4032 = !DILocation(line: 2059, column: 24, scope: !4027, inlinedAt: !4031)
!4033 = !DILocation(line: 2059, column: 10, scope: !4027, inlinedAt: !4031)
!4034 = !DILocation(line: 37, column: 3, scope: !4017)
!4035 = !DILocation(line: 32, column: 7, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4025, file: !810, line: 31, column: 5)
!4037 = !DILocation(line: 32, column: 13, scope: !4036)
!4038 = !DILocation(line: 33, column: 7, scope: !4036)
!4039 = !DILocation(line: 38, column: 1, scope: !4017)
!4040 = distinct !DISubprogram(name: "hard_locale", scope: !751, file: !751, line: 28, type: !1090, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4041)
!4041 = !{!4042, !4043}
!4042 = !DILocalVariable(name: "category", arg: 1, scope: !4040, file: !751, line: 28, type: !72)
!4043 = !DILocalVariable(name: "locale", scope: !4040, file: !751, line: 30, type: !4044)
!4044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4045)
!4045 = !{!4046}
!4046 = !DISubrange(count: 257)
!4047 = !DILocation(line: 0, scope: !4040)
!4048 = !DILocation(line: 30, column: 3, scope: !4040)
!4049 = !DILocation(line: 30, column: 8, scope: !4040)
!4050 = !DILocation(line: 32, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4040, file: !751, line: 32, column: 7)
!4052 = !DILocation(line: 32, column: 7, scope: !4040)
!4053 = !DILocalVariable(name: "__s1", arg: 1, scope: !4054, file: !923, line: 1359, type: !96)
!4054 = distinct !DISubprogram(name: "streq", scope: !923, file: !923, line: 1359, type: !924, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4055)
!4055 = !{!4053, !4056}
!4056 = !DILocalVariable(name: "__s2", arg: 2, scope: !4054, file: !923, line: 1359, type: !96)
!4057 = !DILocation(line: 0, scope: !4054, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 35, column: 9, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4040, file: !751, line: 35, column: 7)
!4060 = !DILocation(line: 1361, column: 11, scope: !4054, inlinedAt: !4058)
!4061 = !DILocation(line: 35, column: 29, scope: !4059)
!4062 = !DILocation(line: 0, scope: !4054, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 35, column: 32, scope: !4059)
!4064 = !DILocation(line: 1361, column: 11, scope: !4054, inlinedAt: !4063)
!4065 = !DILocation(line: 1361, column: 10, scope: !4054, inlinedAt: !4063)
!4066 = !DILocation(line: 35, column: 7, scope: !4040)
!4067 = !DILocation(line: 46, column: 3, scope: !4040)
!4068 = !DILocation(line: 47, column: 1, scope: !4040)
!4069 = distinct !DISubprogram(name: "setlocale_null_r", scope: !817, file: !817, line: 154, type: !4070, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!72, !72, !89, !147}
!4072 = !{!4073, !4074, !4075}
!4073 = !DILocalVariable(name: "category", arg: 1, scope: !4069, file: !817, line: 154, type: !72)
!4074 = !DILocalVariable(name: "buf", arg: 2, scope: !4069, file: !817, line: 154, type: !89)
!4075 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4069, file: !817, line: 154, type: !147)
!4076 = !DILocation(line: 0, scope: !4069)
!4077 = !DILocation(line: 159, column: 10, scope: !4069)
!4078 = !DILocation(line: 159, column: 3, scope: !4069)
!4079 = distinct !DISubprogram(name: "setlocale_null", scope: !817, file: !817, line: 186, type: !4080, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!96, !72}
!4082 = !{!4083}
!4083 = !DILocalVariable(name: "category", arg: 1, scope: !4079, file: !817, line: 186, type: !72)
!4084 = !DILocation(line: 0, scope: !4079)
!4085 = !DILocation(line: 189, column: 10, scope: !4079)
!4086 = !DILocation(line: 189, column: 3, scope: !4079)
!4087 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !819, file: !819, line: 35, type: !4080, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4088)
!4088 = !{!4089, !4090}
!4089 = !DILocalVariable(name: "category", arg: 1, scope: !4087, file: !819, line: 35, type: !72)
!4090 = !DILocalVariable(name: "result", scope: !4087, file: !819, line: 37, type: !96)
!4091 = !DILocation(line: 0, scope: !4087)
!4092 = !DILocation(line: 37, column: 24, scope: !4087)
!4093 = !DILocation(line: 62, column: 3, scope: !4087)
!4094 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !819, file: !819, line: 66, type: !4070, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4095)
!4095 = !{!4096, !4097, !4098, !4099, !4100}
!4096 = !DILocalVariable(name: "category", arg: 1, scope: !4094, file: !819, line: 66, type: !72)
!4097 = !DILocalVariable(name: "buf", arg: 2, scope: !4094, file: !819, line: 66, type: !89)
!4098 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4094, file: !819, line: 66, type: !147)
!4099 = !DILocalVariable(name: "result", scope: !4094, file: !819, line: 111, type: !96)
!4100 = !DILocalVariable(name: "length", scope: !4101, file: !819, line: 125, type: !147)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !819, line: 124, column: 5)
!4102 = distinct !DILexicalBlock(scope: !4094, file: !819, line: 113, column: 7)
!4103 = !DILocation(line: 0, scope: !4094)
!4104 = !DILocation(line: 0, scope: !4087, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 111, column: 24, scope: !4094)
!4106 = !DILocation(line: 37, column: 24, scope: !4087, inlinedAt: !4105)
!4107 = !DILocation(line: 113, column: 14, scope: !4102)
!4108 = !DILocation(line: 113, column: 7, scope: !4094)
!4109 = !DILocation(line: 116, column: 19, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !819, line: 116, column: 11)
!4111 = distinct !DILexicalBlock(scope: !4102, file: !819, line: 114, column: 5)
!4112 = !DILocation(line: 116, column: 11, scope: !4111)
!4113 = !DILocation(line: 120, column: 16, scope: !4110)
!4114 = !DILocation(line: 120, column: 9, scope: !4110)
!4115 = !DILocation(line: 125, column: 23, scope: !4101)
!4116 = !DILocation(line: 0, scope: !4101)
!4117 = !DILocation(line: 126, column: 18, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4101, file: !819, line: 126, column: 11)
!4119 = !DILocation(line: 126, column: 11, scope: !4101)
!4120 = !DILocation(line: 128, column: 39, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4118, file: !819, line: 127, column: 9)
!4122 = !DILocalVariable(name: "__dest", arg: 1, scope: !4123, file: !1550, line: 26, type: !3400)
!4123 = distinct !DISubprogram(name: "memcpy", scope: !1550, file: !1550, line: 26, type: !3398, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4124)
!4124 = !{!4122, !4125, !4126}
!4125 = !DILocalVariable(name: "__src", arg: 2, scope: !4123, file: !1550, line: 26, type: !1058)
!4126 = !DILocalVariable(name: "__len", arg: 3, scope: !4123, file: !1550, line: 26, type: !147)
!4127 = !DILocation(line: 0, scope: !4123, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 128, column: 11, scope: !4121)
!4129 = !DILocation(line: 29, column: 10, scope: !4123, inlinedAt: !4128)
!4130 = !DILocation(line: 129, column: 11, scope: !4121)
!4131 = !DILocation(line: 133, column: 23, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !819, line: 133, column: 15)
!4133 = distinct !DILexicalBlock(scope: !4118, file: !819, line: 132, column: 9)
!4134 = !DILocation(line: 133, column: 15, scope: !4133)
!4135 = !DILocation(line: 138, column: 44, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !819, line: 134, column: 13)
!4137 = !DILocation(line: 0, scope: !4123, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 138, column: 15, scope: !4136)
!4139 = !DILocation(line: 29, column: 10, scope: !4123, inlinedAt: !4138)
!4140 = !DILocation(line: 139, column: 15, scope: !4136)
!4141 = !DILocation(line: 139, column: 32, scope: !4136)
!4142 = !DILocation(line: 140, column: 13, scope: !4136)
!4143 = !DILocation(line: 0, scope: !4102)
!4144 = !DILocation(line: 145, column: 1, scope: !4094)
