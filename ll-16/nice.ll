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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !464
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !429
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !454
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !456
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !458
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !460
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !462
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !466
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !468
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !473
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !478
@.str.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !484
@.str.1.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !486
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !488
@.str.60 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !519
@.str.1.61 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !522
@.str.2.62 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !524
@.str.3.63 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !529
@.str.4.64 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !531
@.str.5.65 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !533
@.str.6.66 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !535
@.str.7.67 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !537
@.str.8.68 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !539
@.str.9.69 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !541
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.60, ptr @.str.1.61, ptr @.str.2.62, ptr @.str.3.63, ptr @.str.4.64, ptr @.str.5.65, ptr @.str.6.66, ptr @.str.7.67, ptr @.str.8.68, ptr @.str.9.69, ptr null], align 8, !dbg !543
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !568
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !582
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !620
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !627
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !584
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !629
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !572
@.str.10.72 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !589
@.str.11.70 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !591
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !593
@.str.13.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !595
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !597
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !633
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !636
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !638
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !640
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !642
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !644
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !649
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !654
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !656
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !661
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !666
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !671
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !676
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !678
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !683
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !688
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !693
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !698
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !700
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !702
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !704
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !706
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !708
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !710
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !715
@exit_failure = dso_local global i32 1, align 4, !dbg !723
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !729
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !732
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !734
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !736
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !739
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !754
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !757

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !837, metadata !DIExpression()), !dbg !838
  %2 = icmp eq i32 %0, 0, !dbg !839
  br i1 %2, label %8, label %3, !dbg !841

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !842, !tbaa !844
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !842
  %6 = load ptr, ptr @program_name, align 8, !dbg !842, !tbaa !844
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !842
  br label %38, !dbg !842

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !848
  %10 = load ptr, ptr @program_name, align 8, !dbg !848, !tbaa !844
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !848
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !850
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef -20, i32 noundef 19) #38, !dbg !850
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !851
  %15 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !844
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !851
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !855
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !855
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !856
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !856
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !857
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !857
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !858
  %21 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %20, ptr noundef nonnull @.str.3) #38, !dbg !858
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !859, metadata !DIExpression()), !dbg !864
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #38, !dbg !866
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #38, !dbg !866
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !867, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr poison, metadata !877, metadata !DIExpression()), !dbg !882
  tail call void @emit_bug_reporting_address() #38, !dbg !884
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !885
  call void @llvm.dbg.value(metadata ptr %24, metadata !880, metadata !DIExpression()), !dbg !882
  %25 = icmp eq ptr %24, null, !dbg !886
  br i1 %25, label %33, label %26, !dbg !888

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #39, !dbg !889
  %28 = icmp eq i32 %27, 0, !dbg !889
  br i1 %28, label %33, label %29, !dbg !890

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #38, !dbg !891
  %31 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !844
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !891
  br label %33, !dbg !893

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !881, metadata !DIExpression()), !dbg !882
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !894
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3) #38, !dbg !894
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !895
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #38, !dbg !895
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !896
  unreachable, !dbg !896
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !897 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !901 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !907 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !910 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !193 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !197, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %0, metadata !198, metadata !DIExpression()), !dbg !913
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !914, !tbaa !915
  %3 = icmp eq i32 %2, -1, !dbg !917
  br i1 %3, label %4, label %16, !dbg !918

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.21) #38, !dbg !919
  call void @llvm.dbg.value(metadata ptr %5, metadata !199, metadata !DIExpression()), !dbg !920
  %6 = icmp eq ptr %5, null, !dbg !921
  br i1 %6, label %14, label %7, !dbg !922

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !923, !tbaa !924
  %9 = icmp eq i8 %8, 0, !dbg !923
  br i1 %9, label %14, label %10, !dbg !925

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !926, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr @.str.22, metadata !932, metadata !DIExpression()), !dbg !933
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.22) #39, !dbg !935
  %12 = icmp eq i32 %11, 0, !dbg !936
  %13 = zext i1 %12 to i32, !dbg !925
  br label %14, !dbg !925

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !937, !tbaa !915
  br label %16, !dbg !938

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !939
  %18 = icmp eq i32 %17, 0, !dbg !939
  br i1 %18, label %22, label %19, !dbg !941

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !942, !tbaa !844
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !942
  br label %122, !dbg !944

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !202, metadata !DIExpression()), !dbg !913
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.23) #39, !dbg !945
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !946
  call void @llvm.dbg.value(metadata ptr %24, metadata !203, metadata !DIExpression()), !dbg !913
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !947
  call void @llvm.dbg.value(metadata ptr %25, metadata !204, metadata !DIExpression()), !dbg !913
  %26 = icmp eq ptr %25, null, !dbg !948
  br i1 %26, label %54, label %27, !dbg !949

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !950
  br i1 %28, label %54, label %29, !dbg !951

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !205, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !209, metadata !DIExpression()), !dbg !952
  %30 = icmp ult ptr %24, %25, !dbg !953
  br i1 %30, label %31, label %52, !dbg !954

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !913
  %33 = load ptr, ptr %32, align 8, !tbaa !844
  br label %34, !dbg !954

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !205, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 %36, metadata !209, metadata !DIExpression()), !dbg !952
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !955
  call void @llvm.dbg.value(metadata ptr %37, metadata !205, metadata !DIExpression()), !dbg !952
  %38 = load i8, ptr %35, align 1, !dbg !955, !tbaa !924
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !955
  %41 = load i16, ptr %40, align 2, !dbg !955, !tbaa !956
  %42 = freeze i16 %41, !dbg !958
  %43 = lshr i16 %42, 13, !dbg !958
  %44 = and i16 %43, 1, !dbg !958
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !959
  call void @llvm.dbg.value(metadata i64 %46, metadata !209, metadata !DIExpression()), !dbg !952
  %47 = icmp ult ptr %37, %25, !dbg !953
  %48 = icmp ult i64 %46, 2, !dbg !960
  %49 = select i1 %47, i1 %48, i1 false, !dbg !960
  br i1 %49, label %34, label %50, !dbg !954, !llvm.loop !961

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !963
  br i1 %51, label %52, label %54, !dbg !965

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !965

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !913
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !202, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %55, metadata !204, metadata !DIExpression()), !dbg !913
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.24) #39, !dbg !966
  call void @llvm.dbg.value(metadata i64 %57, metadata !210, metadata !DIExpression()), !dbg !913
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !967
  call void @llvm.dbg.value(metadata ptr %58, metadata !211, metadata !DIExpression()), !dbg !913
  br label %59, !dbg !968

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !913
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !202, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %60, metadata !211, metadata !DIExpression()), !dbg !913
  %62 = load i8, ptr %60, align 1, !dbg !969, !tbaa !924
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !970

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !971
  %65 = load i8, ptr %64, align 1, !dbg !974, !tbaa !924
  %66 = icmp ne i8 %65, 45, !dbg !975
  %67 = select i1 %66, i1 %61, i1 false, !dbg !976
  br label %68, !dbg !976

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !202, metadata !DIExpression()), !dbg !913
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !977
  %71 = load ptr, ptr %70, align 8, !dbg !977, !tbaa !844
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !977
  %74 = load i16, ptr %73, align 2, !dbg !977, !tbaa !956
  %75 = and i16 %74, 8192, !dbg !977
  %76 = icmp eq i16 %75, 0, !dbg !977
  br i1 %76, label %90, label %77, !dbg !979

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !980
  br i1 %78, label %92, label %79, !dbg !983

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !984
  %81 = load i8, ptr %80, align 1, !dbg !984, !tbaa !924
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !984
  %84 = load i16, ptr %83, align 2, !dbg !984, !tbaa !956
  %85 = and i16 %84, 8192, !dbg !984
  %86 = icmp eq i16 %85, 0, !dbg !984
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !985
  br i1 %89, label %90, label %92, !dbg !985

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !986
  call void @llvm.dbg.value(metadata ptr %91, metadata !211, metadata !DIExpression()), !dbg !913
  br label %59, !dbg !968, !llvm.loop !987

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !989
  %94 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !844
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !264, metadata !DIExpression()), !dbg !913
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.38, i64 noundef 6) #39, !dbg !1010
  %97 = icmp eq i32 %96, 0, !dbg !1010
  br i1 %97, label %101, label %98, !dbg !1012

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.39, i64 noundef 9) #39, !dbg !1013
  %100 = icmp eq i32 %99, 0, !dbg !1013
  br i1 %100, label %101, label %104, !dbg !1014

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1015
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #38, !dbg !1015
  br label %107, !dbg !1017

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1018
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #38, !dbg !1018
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !844
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %108), !dbg !1020
  %110 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !844
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %110), !dbg !1021
  %112 = ptrtoint ptr %60 to i64, !dbg !1022
  %113 = sub i64 %112, %93, !dbg !1022
  %114 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !844
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1022
  %116 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !844
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %116), !dbg !1023
  %118 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !844
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %118), !dbg !1024
  %120 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !844
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1025
  br label %122, !dbg !1026

122:                                              ; preds = %107, %19
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
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !91, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr %1, metadata !92, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 10, metadata !94, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr null, metadata !95, metadata !DIExpression()), !dbg !1062
  %4 = load ptr, ptr %1, align 8, !dbg !1063, !tbaa !844
  tail call void @set_program_name(ptr noundef %4) #38, !dbg !1064
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #38, !dbg !1065
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #38, !dbg !1066
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #38, !dbg !1067
  call void @llvm.dbg.value(metadata i32 125, metadata !1068, metadata !DIExpression()), !dbg !1071
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1073, !tbaa !915
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1075
  call void @llvm.dbg.value(metadata i32 1, metadata !100, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr null, metadata !95, metadata !DIExpression()), !dbg !1062
  %9 = icmp sgt i32 %0, 1, !dbg !1076
  br i1 %9, label %10, label %63, !dbg !1077

10:                                               ; preds = %2, %49
  %11 = phi ptr [ %51, %49 ], [ null, %2 ]
  %12 = phi i32 [ %50, %49 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata ptr %11, metadata !95, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 %12, metadata !100, metadata !DIExpression()), !dbg !1062
  %13 = sext i32 %12 to i64, !dbg !1078
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !1078
  %15 = load ptr, ptr %14, align 8, !dbg !1078, !tbaa !844
  call void @llvm.dbg.value(metadata ptr %15, metadata !101, metadata !DIExpression()), !dbg !1079
  %16 = load i8, ptr %15, align 1, !dbg !1080, !tbaa !924
  %17 = icmp eq i8 %16, 45, !dbg !1081
  br i1 %17, label %18, label %32, !dbg !1082

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1083
  %20 = load i8, ptr %19, align 1, !dbg !1083, !tbaa !924
  %21 = icmp eq i8 %20, 45, !dbg !1084
  %22 = icmp eq i8 %20, 43
  %23 = or i1 %21, %22, !dbg !1085
  %24 = select i1 %23, i64 2, i64 1, !dbg !1086
  %25 = getelementptr inbounds i8, ptr %15, i64 %24, !dbg !1087
  %26 = load i8, ptr %25, align 1, !dbg !1087, !tbaa !924
  %27 = zext i8 %26 to i32, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %27, metadata !1088, metadata !DIExpression()), !dbg !1094
  %28 = add nsw i32 %27, -48, !dbg !1096
  %29 = icmp ult i32 %28, 10, !dbg !1096
  br i1 %29, label %30, label %32, !dbg !1097

30:                                               ; preds = %18
  call void @llvm.dbg.value(metadata ptr %19, metadata !95, metadata !DIExpression()), !dbg !1062
  %31 = add nsw i32 %12, 1, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %31, metadata !100, metadata !DIExpression()), !dbg !1062
  br label %49, !dbg !1100

32:                                               ; preds = %18, %10
  %33 = add i32 %12, -1, !dbg !1101
  %34 = sub nsw i32 %0, %33, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %34, metadata !108, metadata !DIExpression()), !dbg !1103
  %35 = sext i32 %33 to i64, !dbg !1104
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35, !dbg !1104
  call void @llvm.dbg.value(metadata ptr %36, metadata !109, metadata !DIExpression()), !dbg !1103
  %37 = load ptr, ptr %1, align 8, !dbg !1105, !tbaa !844
  store ptr %37, ptr %36, align 8, !dbg !1106, !tbaa !844
  store i32 0, ptr @optind, align 4, !dbg !1107, !tbaa !915
  %38 = tail call i32 @getopt_long(i32 noundef %34, ptr noundef nonnull %36, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %38, metadata !105, metadata !DIExpression()), !dbg !1103
  %39 = load i32, ptr @optind, align 4, !dbg !1109, !tbaa !915
  %40 = add i32 %33, %39, !dbg !1110
  call void @llvm.dbg.value(metadata i32 %40, metadata !100, metadata !DIExpression()), !dbg !1062
  switch i32 %38, label %46 [
    i32 110, label %47
    i32 -1, label %53
    i32 -2, label %41
    i32 -3, label %42
  ], !dbg !1111

41:                                               ; preds = %32
  tail call void @usage(i32 noundef 0) #42, !dbg !1112
  unreachable, !dbg !1112

42:                                               ; preds = %32
  %43 = load ptr, ptr @stdout, align 8, !dbg !1114, !tbaa !844
  %44 = load ptr, ptr @Version, align 8, !dbg !1114, !tbaa !844
  %45 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #38, !dbg !1114
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %44, ptr noundef %45, ptr noundef null) #38, !dbg !1114
  tail call void @exit(i32 noundef 0) #40, !dbg !1114
  unreachable, !dbg !1114

46:                                               ; preds = %32
  tail call void @usage(i32 noundef 125) #42, !dbg !1115
  unreachable, !dbg !1115

47:                                               ; preds = %32
  %48 = load ptr, ptr @optarg, align 8, !dbg !1116, !tbaa !844
  call void @llvm.dbg.value(metadata ptr %48, metadata !95, metadata !DIExpression()), !dbg !1062
  br label %49

49:                                               ; preds = %30, %47
  %50 = phi i32 [ %31, %30 ], [ %40, %47 ], !dbg !1117
  %51 = phi ptr [ %19, %30 ], [ %48, %47 ], !dbg !1062
  call void @llvm.dbg.value(metadata ptr %51, metadata !95, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 %50, metadata !100, metadata !DIExpression()), !dbg !1062
  %52 = icmp slt i32 %50, %0, !dbg !1076
  br i1 %52, label %10, label %53, !dbg !1077

53:                                               ; preds = %49, %32
  %54 = phi ptr [ %51, %49 ], [ %11, %32 ], !dbg !1062
  %55 = phi i32 [ %50, %49 ], [ %40, %32 ], !dbg !1118
  call void @llvm.dbg.value(metadata ptr %54, metadata !95, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 %55, metadata !100, metadata !DIExpression()), !dbg !1062
  %56 = icmp eq ptr %54, null, !dbg !1119
  br i1 %56, label %63, label %57, !dbg !1120

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1121
  call void @llvm.dbg.value(metadata ptr %3, metadata !110, metadata !DIExpression(DW_OP_deref)), !dbg !1122
  %58 = call i32 @xstrtol(ptr noundef nonnull %54, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #38, !dbg !1123
  %59 = icmp ugt i32 %58, 1, !dbg !1125
  br i1 %59, label %60, label %66, !dbg !1126

60:                                               ; preds = %57
  %61 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #38, !dbg !1127
  %62 = call ptr @quote(ptr noundef nonnull %54) #38, !dbg !1127
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %61, ptr noundef %62) #38, !dbg !1127
  unreachable, !dbg !1127

63:                                               ; preds = %2, %53
  %64 = phi i32 [ %55, %53 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i32 10, metadata !94, metadata !DIExpression()), !dbg !1062
  %65 = icmp eq i32 %64, %0, !dbg !1128
  br i1 %65, label %74, label %85, !dbg !1130

66:                                               ; preds = %57
  %67 = load i64, ptr %3, align 8, !dbg !1131, !tbaa !1132
  call void @llvm.dbg.value(metadata i64 %67, metadata !110, metadata !DIExpression()), !dbg !1122
  %68 = call i64 @llvm.smin.i64(i64 %67, i64 39), !dbg !1131
  %69 = call i64 @llvm.smax.i64(i64 %68, i64 -39), !dbg !1131
  %70 = trunc i64 %69 to i32, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %70, metadata !94, metadata !DIExpression()), !dbg !1062
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1134
  %71 = icmp eq i32 %55, %0, !dbg !1128
  br i1 %71, label %72, label %85, !dbg !1130

72:                                               ; preds = %66
  %73 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1135
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %73) #38, !dbg !1135
  call void @usage(i32 noundef 125) #42, !dbg !1139
  unreachable, !dbg !1139

74:                                               ; preds = %63
  %75 = tail call ptr @__errno_location() #41, !dbg !1140
  store i32 0, ptr %75, align 4, !dbg !1141, !tbaa !915
  %76 = tail call i32 @getpriority(i32 noundef 0, i32 noundef 0) #38, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %76, metadata !93, metadata !DIExpression()), !dbg !1062
  %77 = icmp eq i32 %76, -1, !dbg !1143
  br i1 %77, label %78, label %83, !dbg !1145

78:                                               ; preds = %74
  %79 = load i32, ptr %75, align 4, !dbg !1146, !tbaa !915
  %80 = icmp eq i32 %79, 0, !dbg !1147
  br i1 %80, label %83, label %81, !dbg !1148

81:                                               ; preds = %78
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1149
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %79, ptr noundef %82) #38, !dbg !1149
  unreachable, !dbg !1149

83:                                               ; preds = %78, %74
  %84 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %76) #38, !dbg !1150
  br label %121, !dbg !1151

85:                                               ; preds = %66, %63
  %86 = phi i32 [ %55, %66 ], [ %64, %63 ]
  %87 = phi i32 [ %70, %66 ], [ 10, %63 ]
  %88 = tail call ptr @__errno_location() #41, !dbg !1152
  store i32 0, ptr %88, align 4, !dbg !1153, !tbaa !915
  %89 = call i32 @getpriority(i32 noundef 0, i32 noundef 0) #38, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %89, metadata !93, metadata !DIExpression()), !dbg !1062
  %90 = icmp eq i32 %89, -1, !dbg !1155
  br i1 %90, label %91, label %96, !dbg !1157

91:                                               ; preds = %85
  %92 = load i32, ptr %88, align 4, !dbg !1158, !tbaa !915
  %93 = icmp eq i32 %92, 0, !dbg !1159
  br i1 %93, label %96, label %94, !dbg !1160

94:                                               ; preds = %91
  %95 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1161
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %92, ptr noundef %95) #38, !dbg !1161
  unreachable, !dbg !1161

96:                                               ; preds = %91, %85
  %97 = add nsw i32 %89, %87, !dbg !1162
  %98 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %97) #38, !dbg !1163
  %99 = icmp eq i32 %98, 0, !dbg !1164
  call void @llvm.dbg.value(metadata i1 %99, metadata !98, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1062
  br i1 %99, label %111, label %100, !dbg !1165

100:                                              ; preds = %96
  %101 = load i32, ptr %88, align 4, !dbg !1166, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %101, metadata !1167, metadata !DIExpression()), !dbg !1170
  %102 = icmp eq i32 %101, 13, !dbg !1172
  %103 = icmp eq i32 %101, 1, !dbg !1173
  %104 = or i1 %102, %103, !dbg !1173
  %105 = select i1 %104, i32 0, i32 125, !dbg !1166
  call void @llvm.dbg.value(metadata i32 %105, metadata !114, metadata !DIExpression()), !dbg !1174
  %106 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1166
  call void (i32, i32, ptr, ...) @error(i32 noundef %105, i32 noundef %101, ptr noundef %106) #38, !dbg !1166
  call void @llvm.assume(i1 %104), !dbg !1166
  %107 = load ptr, ptr @stderr, align 8, !dbg !1175, !tbaa !844
  call void @llvm.dbg.value(metadata ptr %107, metadata !1177, metadata !DIExpression()), !dbg !1183
  %108 = load i32, ptr %107, align 8, !dbg !1185, !tbaa !1186
  %109 = and i32 %108, 32, !dbg !1175
  %110 = icmp eq i32 %109, 0, !dbg !1175
  br i1 %110, label %111, label %121, !dbg !1188

111:                                              ; preds = %100, %96
  %112 = sext i32 %86 to i64, !dbg !1189
  %113 = getelementptr inbounds ptr, ptr %1, i64 %112, !dbg !1189
  %114 = load ptr, ptr %113, align 8, !dbg !1189, !tbaa !844
  %115 = call i32 @execvp(ptr noundef %114, ptr noundef nonnull %113) #38, !dbg !1190
  %116 = load i32, ptr %88, align 4, !dbg !1191, !tbaa !915
  %117 = icmp eq i32 %116, 2, !dbg !1192
  %118 = select i1 %117, i32 127, i32 126, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %118, metadata !119, metadata !DIExpression()), !dbg !1062
  %119 = load ptr, ptr %113, align 8, !dbg !1193, !tbaa !844
  %120 = call ptr @quote(ptr noundef %119) #38, !dbg !1193
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %116, ptr noundef nonnull @.str.19, ptr noundef %120) #38, !dbg !1193
  br label %121

121:                                              ; preds = %100, %111, %83
  %122 = phi i32 [ 0, %83 ], [ %118, %111 ], [ 125, %100 ], !dbg !1062
  ret i32 %122, !dbg !1194
}

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind
declare !dbg !1223 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1227 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1229, metadata !DIExpression()), !dbg !1230
  store ptr %0, ptr @file_name, align 8, !dbg !1231, !tbaa !844
  ret void, !dbg !1232
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1233 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1237, metadata !DIExpression()), !dbg !1238
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1239, !tbaa !1240
  ret void, !dbg !1242
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1243 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1248, !tbaa !844
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1249
  %3 = icmp eq i32 %2, 0, !dbg !1250
  br i1 %3, label %22, label %4, !dbg !1251

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1252, !tbaa !1240, !range !1253, !noundef !853
  %6 = icmp eq i8 %5, 0, !dbg !1252
  br i1 %6, label %11, label %7, !dbg !1254

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1255
  %9 = load i32, ptr %8, align 4, !dbg !1255, !tbaa !915
  %10 = icmp eq i32 %9, 32, !dbg !1256
  br i1 %10, label %22, label %11, !dbg !1257

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1.29, i32 noundef 5) #38, !dbg !1258
  call void @llvm.dbg.value(metadata ptr %12, metadata !1245, metadata !DIExpression()), !dbg !1259
  %13 = load ptr, ptr @file_name, align 8, !dbg !1260, !tbaa !844
  %14 = icmp eq ptr %13, null, !dbg !1260
  %15 = tail call ptr @__errno_location() #41, !dbg !1262
  %16 = load i32, ptr %15, align 4, !dbg !1262, !tbaa !915
  br i1 %14, label %19, label %17, !dbg !1263

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1264
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.30, ptr noundef %18, ptr noundef %12) #38, !dbg !1264
  br label %20, !dbg !1264

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.31, ptr noundef %12) #38, !dbg !1265
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1266, !tbaa !915
  tail call void @_exit(i32 noundef %21) #40, !dbg !1267
  unreachable, !dbg !1267

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1268, !tbaa !844
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1270
  %25 = icmp eq i32 %24, 0, !dbg !1271
  br i1 %25, label %28, label %26, !dbg !1272

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1273, !tbaa !915
  tail call void @_exit(i32 noundef %27) #40, !dbg !1274
  unreachable, !dbg !1274

28:                                               ; preds = %22
  ret void, !dbg !1275
}

; Function Attrs: noreturn
declare !dbg !1276 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1277 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %1, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata ptr %2, metadata !1283, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1284, metadata !DIExpression()), !dbg !1286
  tail call fastcc void @flush_stdout(), !dbg !1287
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1288, !tbaa !844
  %7 = icmp eq ptr %6, null, !dbg !1288
  br i1 %7, label %9, label %8, !dbg !1290

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1291
  br label %13, !dbg !1291

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1292, !tbaa !844
  %11 = tail call ptr @getprogname() #39, !dbg !1292
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %11) #38, !dbg !1292
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1294, !tbaa.struct !1295
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1294
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1294
  ret void, !dbg !1296
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1297 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1299, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i32 1, metadata !1301, metadata !DIExpression()), !dbg !1306
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1309
  %2 = icmp slt i32 %1, 0, !dbg !1310
  br i1 %2, label %6, label %3, !dbg !1311

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1312, !tbaa !844
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1312
  br label %6, !dbg !1312

6:                                                ; preds = %3, %0
  ret void, !dbg !1313
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1314 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1316, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 %1, metadata !1317, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata ptr %2, metadata !1318, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1319, metadata !DIExpression()), !dbg !1321
  %7 = load ptr, ptr @stderr, align 8, !dbg !1322, !tbaa !844
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1323, !noalias !1367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %7, metadata !1363, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata ptr %2, metadata !1364, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1365, metadata !DIExpression()), !dbg !1373
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1323, !noalias !1367
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1374, !tbaa !915
  %10 = add i32 %9, 1, !dbg !1374
  store i32 %10, ptr @error_message_count, align 4, !dbg !1374, !tbaa !915
  %11 = icmp eq i32 %1, 0, !dbg !1375
  br i1 %11, label %21, label %12, !dbg !1377

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1378, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1382, metadata !DIExpression()), !dbg !1389
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1390
  call void @llvm.dbg.value(metadata ptr %13, metadata !1381, metadata !DIExpression()), !dbg !1386
  %14 = icmp eq ptr %13, null, !dbg !1391
  br i1 %14, label %15, label %17, !dbg !1393

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.33, ptr noundef nonnull @.str.5.34, i32 noundef 5) #38, !dbg !1394
  call void @llvm.dbg.value(metadata ptr %16, metadata !1381, metadata !DIExpression()), !dbg !1386
  br label %17, !dbg !1395

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1386
  call void @llvm.dbg.value(metadata ptr %18, metadata !1381, metadata !DIExpression()), !dbg !1386
  %19 = load ptr, ptr @stderr, align 8, !dbg !1396, !tbaa !844
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.35, ptr noundef %18) #38, !dbg !1396
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1397
  br label %21, !dbg !1398

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1399, !tbaa !844
  call void @llvm.dbg.value(metadata i32 10, metadata !1400, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %22, metadata !1405, metadata !DIExpression()), !dbg !1406
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1408
  %24 = load ptr, ptr %23, align 8, !dbg !1408, !tbaa !1409
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1408
  %26 = load ptr, ptr %25, align 8, !dbg !1408, !tbaa !1410
  %27 = icmp ult ptr %24, %26, !dbg !1408
  br i1 %27, label %30, label %28, !dbg !1408, !prof !1411

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1408
  br label %32, !dbg !1408

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1408
  store ptr %31, ptr %23, align 8, !dbg !1408, !tbaa !1409
  store i8 10, ptr %24, align 1, !dbg !1408, !tbaa !924
  br label %32, !dbg !1408

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1412, !tbaa !844
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1412
  %35 = icmp eq i32 %0, 0, !dbg !1413
  br i1 %35, label %37, label %36, !dbg !1415

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1416
  unreachable, !dbg !1416

37:                                               ; preds = %32
  ret void, !dbg !1417
}

declare !dbg !1418 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1421 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1424 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1427 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1430 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1434 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1438, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i32 %1, metadata !1439, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata ptr %2, metadata !1440, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1441, metadata !DIExpression()), !dbg !1444
  call void @llvm.va_start(ptr nonnull %4), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1446, !tbaa.struct !1295
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !1446
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1446
  call void @llvm.va_end(ptr nonnull %4), !dbg !1447
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1448
  ret void, !dbg !1448
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !431 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !448, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i32 %1, metadata !449, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata ptr %2, metadata !450, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i32 %3, metadata !451, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata ptr %4, metadata !452, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %5, metadata !453, metadata !DIExpression()), !dbg !1450
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1451, !tbaa !915
  %9 = icmp eq i32 %8, 0, !dbg !1451
  br i1 %9, label %24, label %10, !dbg !1453

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1454, !tbaa !915
  %12 = icmp eq i32 %11, %3, !dbg !1457
  br i1 %12, label %13, label %23, !dbg !1458

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1459, !tbaa !844
  %15 = icmp eq ptr %14, %2, !dbg !1460
  br i1 %15, label %37, label %16, !dbg !1461

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1462
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1463
  br i1 %19, label %20, label %23, !dbg !1463

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1464
  %22 = icmp eq i32 %21, 0, !dbg !1465
  br i1 %22, label %37, label %23, !dbg !1466

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1467, !tbaa !844
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1468, !tbaa !915
  br label %24, !dbg !1469

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1470
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1471, !tbaa !844
  %26 = icmp eq ptr %25, null, !dbg !1471
  br i1 %26, label %28, label %27, !dbg !1473

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1474
  br label %32, !dbg !1474

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1475, !tbaa !844
  %30 = tail call ptr @getprogname() #39, !dbg !1475
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.38, ptr noundef %30) #38, !dbg !1475
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1477, !tbaa !844
  %34 = icmp eq ptr %2, null, !dbg !1477
  %35 = select i1 %34, ptr @.str.3.39, ptr @.str.2.40, !dbg !1477
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1477
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1478, !tbaa.struct !1295
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1478
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1478
  br label %37, !dbg !1479

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1479
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1480 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1484, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %1, metadata !1485, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata ptr %2, metadata !1486, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %3, metadata !1487, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata ptr %4, metadata !1488, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1489, metadata !DIExpression()), !dbg !1492
  call void @llvm.va_start(ptr nonnull %6), !dbg !1493
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1494, !tbaa.struct !1295
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1494
  call void @llvm.va_end(ptr nonnull %6), !dbg !1495
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1496
  ret void, !dbg !1496
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1497 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1500, !tbaa !844
  ret ptr %1, !dbg !1501
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1502 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1504, metadata !DIExpression()), !dbg !1507
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %2, metadata !1505, metadata !DIExpression()), !dbg !1507
  %3 = icmp eq ptr %2, null, !dbg !1509
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1509
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1509
  call void @llvm.dbg.value(metadata ptr %5, metadata !1506, metadata !DIExpression()), !dbg !1507
  %6 = ptrtoint ptr %5 to i64, !dbg !1510
  %7 = ptrtoint ptr %0 to i64, !dbg !1510
  %8 = sub i64 %6, %7, !dbg !1510
  %9 = icmp sgt i64 %8, 6, !dbg !1512
  br i1 %9, label %10, label %19, !dbg !1513

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %11, metadata !1515, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata ptr @.str.49, metadata !1520, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i64 7, metadata !1521, metadata !DIExpression()), !dbg !1522
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.49, i64 7), !dbg !1524
  %13 = icmp eq i32 %12, 0, !dbg !1525
  br i1 %13, label %14, label %19, !dbg !1526

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1504, metadata !DIExpression()), !dbg !1507
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.50, i64 noundef 3) #39, !dbg !1527
  %16 = icmp eq i32 %15, 0, !dbg !1530
  %17 = select i1 %16, i64 3, i64 0, !dbg !1531
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1531
  br label %19, !dbg !1531

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1507
  call void @llvm.dbg.value(metadata ptr %21, metadata !1506, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata ptr %20, metadata !1504, metadata !DIExpression()), !dbg !1507
  store ptr %20, ptr @program_name, align 8, !dbg !1532, !tbaa !844
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1533, !tbaa !844
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1534, !tbaa !844
  ret void, !dbg !1535
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1536 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !490 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !497, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %1, metadata !498, metadata !DIExpression()), !dbg !1537
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1538
  call void @llvm.dbg.value(metadata ptr %5, metadata !499, metadata !DIExpression()), !dbg !1537
  %6 = icmp eq ptr %5, %0, !dbg !1539
  br i1 %6, label %7, label %14, !dbg !1541

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1542
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1543
  call void @llvm.dbg.declare(metadata ptr %4, metadata !505, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata ptr %4, metadata !1545, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %4, metadata !1554, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i32 0, metadata !1560, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 8, metadata !1561, metadata !DIExpression()), !dbg !1562
  store i64 0, ptr %4, align 8, !dbg !1564
  call void @llvm.dbg.value(metadata ptr %3, metadata !500, metadata !DIExpression(DW_OP_deref)), !dbg !1537
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1565
  %9 = icmp eq i64 %8, 2, !dbg !1567
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !500, metadata !DIExpression()), !dbg !1537
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1568
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1537
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1569
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1569
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1537
  ret ptr %15, !dbg !1569
}

; Function Attrs: nounwind
declare !dbg !1570 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1576 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1581, metadata !DIExpression()), !dbg !1584
  %2 = tail call ptr @__errno_location() #41, !dbg !1585
  %3 = load i32, ptr %2, align 4, !dbg !1585, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %3, metadata !1582, metadata !DIExpression()), !dbg !1584
  %4 = icmp eq ptr %0, null, !dbg !1586
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1586
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !1587
  call void @llvm.dbg.value(metadata ptr %6, metadata !1583, metadata !DIExpression()), !dbg !1584
  store i32 %3, ptr %2, align 4, !dbg !1588, !tbaa !915
  ret ptr %6, !dbg !1589
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1590 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1596, metadata !DIExpression()), !dbg !1597
  %2 = icmp eq ptr %0, null, !dbg !1598
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1598
  %4 = load i32, ptr %3, align 8, !dbg !1599, !tbaa !1600
  ret i32 %4, !dbg !1602
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1603 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %1, metadata !1608, metadata !DIExpression()), !dbg !1609
  %3 = icmp eq ptr %0, null, !dbg !1610
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1610
  store i32 %1, ptr %4, align 8, !dbg !1611, !tbaa !1600
  ret void, !dbg !1612
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1613 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1617, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %1, metadata !1618, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %2, metadata !1619, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %1, metadata !1620, metadata !DIExpression()), !dbg !1625
  %4 = icmp eq ptr %0, null, !dbg !1626
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1626
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1627
  %7 = lshr i8 %1, 5, !dbg !1628
  %8 = zext i8 %7 to i64, !dbg !1628
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1629
  call void @llvm.dbg.value(metadata ptr %9, metadata !1621, metadata !DIExpression()), !dbg !1625
  %10 = and i8 %1, 31, !dbg !1630
  %11 = zext i8 %10 to i32, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %11, metadata !1623, metadata !DIExpression()), !dbg !1625
  %12 = load i32, ptr %9, align 4, !dbg !1631, !tbaa !915
  %13 = lshr i32 %12, %11, !dbg !1632
  %14 = and i32 %13, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %14, metadata !1624, metadata !DIExpression()), !dbg !1625
  %15 = xor i32 %13, %2, !dbg !1634
  %16 = and i32 %15, 1, !dbg !1634
  %17 = shl nuw i32 %16, %11, !dbg !1635
  %18 = xor i32 %17, %12, !dbg !1636
  store i32 %18, ptr %9, align 4, !dbg !1636, !tbaa !915
  ret i32 %14, !dbg !1637
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1638 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1642, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %1, metadata !1643, metadata !DIExpression()), !dbg !1645
  %3 = icmp eq ptr %0, null, !dbg !1646
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !1645
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1649
  %6 = load i32, ptr %5, align 4, !dbg !1649, !tbaa !1650
  call void @llvm.dbg.value(metadata i32 %6, metadata !1644, metadata !DIExpression()), !dbg !1645
  store i32 %1, ptr %5, align 4, !dbg !1651, !tbaa !1650
  ret i32 %6, !dbg !1652
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1653 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1657, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %1, metadata !1658, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %2, metadata !1659, metadata !DIExpression()), !dbg !1660
  %4 = icmp eq ptr %0, null, !dbg !1661
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1663
  call void @llvm.dbg.value(metadata ptr %5, metadata !1657, metadata !DIExpression()), !dbg !1660
  store i32 10, ptr %5, align 8, !dbg !1664, !tbaa !1600
  %6 = icmp ne ptr %1, null, !dbg !1665
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1667
  br i1 %8, label %10, label %9, !dbg !1667

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1668
  unreachable, !dbg !1668

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1669
  store ptr %1, ptr %11, align 8, !dbg !1670, !tbaa !1671
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1672
  store ptr %2, ptr %12, align 8, !dbg !1673, !tbaa !1674
  ret void, !dbg !1675
}

; Function Attrs: noreturn nounwind
declare !dbg !1676 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1677 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1681, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i64 %1, metadata !1682, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata ptr %2, metadata !1683, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i64 %3, metadata !1684, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata ptr %4, metadata !1685, metadata !DIExpression()), !dbg !1689
  %6 = icmp eq ptr %4, null, !dbg !1690
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1690
  call void @llvm.dbg.value(metadata ptr %7, metadata !1686, metadata !DIExpression()), !dbg !1689
  %8 = tail call ptr @__errno_location() #41, !dbg !1691
  %9 = load i32, ptr %8, align 4, !dbg !1691, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %9, metadata !1687, metadata !DIExpression()), !dbg !1689
  %10 = load i32, ptr %7, align 8, !dbg !1692, !tbaa !1600
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1693
  %12 = load i32, ptr %11, align 4, !dbg !1693, !tbaa !1650
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1694
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1695
  %15 = load ptr, ptr %14, align 8, !dbg !1695, !tbaa !1671
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1696
  %17 = load ptr, ptr %16, align 8, !dbg !1696, !tbaa !1674
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %18, metadata !1688, metadata !DIExpression()), !dbg !1689
  store i32 %9, ptr %8, align 4, !dbg !1698, !tbaa !915
  ret i64 %18, !dbg !1699
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1700 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1706, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %1, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %3, metadata !1709, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %4, metadata !1710, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %5, metadata !1711, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %6, metadata !1712, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %7, metadata !1713, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %8, metadata !1714, metadata !DIExpression()), !dbg !1768
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1769
  %17 = icmp eq i64 %16, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i1 %17, metadata !1715, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr null, metadata !1718, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1719, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %5, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, metadata !1723, metadata !DIExpression()), !dbg !1768
  %18 = and i32 %5, 2, !dbg !1771
  %19 = icmp ne i32 %18, 0, !dbg !1771
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1771

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1772
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1773
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1774
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %34, metadata !1719, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %33, metadata !1718, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %32, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %31, metadata !1709, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %30, metadata !1714, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %29, metadata !1713, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %28, metadata !1710, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.label(metadata !1761), !dbg !1775
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1768
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
  ], !dbg !1776

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 5, metadata !1710, metadata !DIExpression()), !dbg !1768
  br label %102, !dbg !1777

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 5, metadata !1710, metadata !DIExpression()), !dbg !1768
  br i1 %36, label %102, label %42, !dbg !1777

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1778
  br i1 %43, label %102, label %44, !dbg !1782

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1778, !tbaa !924
  br label %102, !dbg !1778

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.70, metadata !603, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i32 %28, metadata !604, metadata !DIExpression()), !dbg !1783
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.71, ptr noundef nonnull @.str.11.70, i32 noundef 5) #38, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %46, metadata !605, metadata !DIExpression()), !dbg !1783
  %47 = icmp eq ptr %46, @.str.11.70, !dbg !1788
  br i1 %47, label %48, label %57, !dbg !1790

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1791
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1792
  call void @llvm.dbg.declare(metadata ptr %13, metadata !607, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %13, metadata !1794, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr %13, metadata !1802, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 0, metadata !1805, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 8, metadata !1806, metadata !DIExpression()), !dbg !1807
  store i64 0, ptr %13, align 8, !dbg !1809
  call void @llvm.dbg.value(metadata ptr %12, metadata !606, metadata !DIExpression(DW_OP_deref)), !dbg !1783
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1810
  %50 = icmp eq i64 %49, 3, !dbg !1812
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !606, metadata !DIExpression()), !dbg !1783
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1813
  %54 = icmp eq i32 %28, 9, !dbg !1813
  %55 = select i1 %54, ptr @.str.10.72, ptr @.str.12.73, !dbg !1813
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1813
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1814
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1814
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1783
  call void @llvm.dbg.value(metadata ptr %58, metadata !1713, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr @.str.12.73, metadata !603, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 %28, metadata !604, metadata !DIExpression()), !dbg !1815
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.71, ptr noundef nonnull @.str.12.73, i32 noundef 5) #38, !dbg !1817
  call void @llvm.dbg.value(metadata ptr %59, metadata !605, metadata !DIExpression()), !dbg !1815
  %60 = icmp eq ptr %59, @.str.12.73, !dbg !1818
  br i1 %60, label %61, label %70, !dbg !1819

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1820
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1821
  call void @llvm.dbg.declare(metadata ptr %11, metadata !607, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %11, metadata !1794, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %11, metadata !1802, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 0, metadata !1805, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 8, metadata !1806, metadata !DIExpression()), !dbg !1825
  store i64 0, ptr %11, align 8, !dbg !1827
  call void @llvm.dbg.value(metadata ptr %10, metadata !606, metadata !DIExpression(DW_OP_deref)), !dbg !1815
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1828
  %63 = icmp eq i64 %62, 3, !dbg !1829
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !606, metadata !DIExpression()), !dbg !1815
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1830
  %67 = icmp eq i32 %28, 9, !dbg !1830
  %68 = select i1 %67, ptr @.str.10.72, ptr @.str.12.73, !dbg !1830
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1831
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1831
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1714, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %71, metadata !1713, metadata !DIExpression()), !dbg !1768
  br i1 %36, label %88, label %73, !dbg !1832

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1725, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1716, metadata !DIExpression()), !dbg !1768
  %74 = load i8, ptr %71, align 1, !dbg !1834, !tbaa !924
  %75 = icmp eq i8 %74, 0, !dbg !1836
  br i1 %75, label %88, label %76, !dbg !1836

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1725, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %79, metadata !1716, metadata !DIExpression()), !dbg !1768
  %80 = icmp ult i64 %79, %39, !dbg !1837
  br i1 %80, label %81, label %83, !dbg !1840

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1837
  store i8 %77, ptr %82, align 1, !dbg !1837, !tbaa !924
  br label %83, !dbg !1837

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %84, metadata !1716, metadata !DIExpression()), !dbg !1768
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %85, metadata !1725, metadata !DIExpression()), !dbg !1833
  %86 = load i8, ptr %85, align 1, !dbg !1834, !tbaa !924
  %87 = icmp eq i8 %86, 0, !dbg !1836
  br i1 %87, label %88, label %76, !dbg !1836, !llvm.loop !1842

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1844
  call void @llvm.dbg.value(metadata i64 %89, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, metadata !1720, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %72, metadata !1718, metadata !DIExpression()), !dbg !1768
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %90, metadata !1719, metadata !DIExpression()), !dbg !1768
  br label %102, !dbg !1846

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1720, metadata !DIExpression()), !dbg !1768
  br label %93, !dbg !1847

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1768
  br i1 %36, label %102, label %96, !dbg !1848

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 2, metadata !1710, metadata !DIExpression()), !dbg !1768
  br label %102, !dbg !1849

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 2, metadata !1710, metadata !DIExpression()), !dbg !1768
  br i1 %36, label %102, label %96, !dbg !1849

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1850
  br i1 %98, label %102, label %99, !dbg !1854

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1850, !tbaa !924
  br label %102, !dbg !1850

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1721, metadata !DIExpression()), !dbg !1768
  br label %102, !dbg !1855

101:                                              ; preds = %27
  call void @abort() #40, !dbg !1856
  unreachable, !dbg !1856

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1844
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.72, %42 ], [ @.str.10.72, %44 ], [ @.str.10.72, %41 ], [ %33, %27 ], [ @.str.12.73, %96 ], [ @.str.12.73, %99 ], [ @.str.12.73, %95 ], [ @.str.10.72, %40 ], [ @.str.12.73, %93 ], [ @.str.12.73, %92 ], !dbg !1768
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1768
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1721, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1720, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %108, metadata !1719, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %107, metadata !1718, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %106, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %105, metadata !1714, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %104, metadata !1713, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %103, metadata !1710, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1730, metadata !DIExpression()), !dbg !1857
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
  br label %122, !dbg !1858

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1844
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1772
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1859
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %129, metadata !1730, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %125, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %124, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %123, metadata !1709, metadata !DIExpression()), !dbg !1768
  %131 = icmp eq i64 %123, -1, !dbg !1860
  br i1 %131, label %132, label %136, !dbg !1861

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1862
  %134 = load i8, ptr %133, align 1, !dbg !1862, !tbaa !924
  %135 = icmp eq i8 %134, 0, !dbg !1863
  br i1 %135, label %579, label %138, !dbg !1864

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1865
  br i1 %137, label %579, label %138, !dbg !1864

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1736, metadata !DIExpression()), !dbg !1866
  br i1 %114, label %139, label %152, !dbg !1867

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1869
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1870
  br i1 %141, label %142, label %144, !dbg !1870

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %143, metadata !1709, metadata !DIExpression()), !dbg !1768
  br label %144, !dbg !1872

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1872
  call void @llvm.dbg.value(metadata i64 %145, metadata !1709, metadata !DIExpression()), !dbg !1768
  %146 = icmp ugt i64 %140, %145, !dbg !1873
  br i1 %146, label %152, label %147, !dbg !1874

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %148, metadata !1876, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata ptr %107, metadata !1879, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %108, metadata !1880, metadata !DIExpression()), !dbg !1881
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1883
  %150 = icmp eq i32 %149, 0, !dbg !1884
  %151 = and i1 %150, %110, !dbg !1885
  br i1 %151, label %630, label %152, !dbg !1885

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %153, metadata !1709, metadata !DIExpression()), !dbg !1768
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1886
  %156 = load i8, ptr %155, align 1, !dbg !1886, !tbaa !924
  call void @llvm.dbg.value(metadata i8 %156, metadata !1737, metadata !DIExpression()), !dbg !1866
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
  ], !dbg !1887

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1888

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1889

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1866
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1893
  br i1 %160, label %177, label %161, !dbg !1893

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1895
  br i1 %162, label %163, label %165, !dbg !1899

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1895
  store i8 39, ptr %164, align 1, !dbg !1895, !tbaa !924
  br label %165, !dbg !1895

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %166, metadata !1716, metadata !DIExpression()), !dbg !1768
  %167 = icmp ult i64 %166, %130, !dbg !1900
  br i1 %167, label %168, label %170, !dbg !1903

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1900
  store i8 36, ptr %169, align 1, !dbg !1900, !tbaa !924
  br label %170, !dbg !1900

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %171, metadata !1716, metadata !DIExpression()), !dbg !1768
  %172 = icmp ult i64 %171, %130, !dbg !1904
  br i1 %172, label %173, label %175, !dbg !1907

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1904
  store i8 39, ptr %174, align 1, !dbg !1904, !tbaa !924
  br label %175, !dbg !1904

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %176, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1768
  br label %177, !dbg !1908

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1768
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %178, metadata !1716, metadata !DIExpression()), !dbg !1768
  %180 = icmp ult i64 %178, %130, !dbg !1909
  br i1 %180, label %181, label %183, !dbg !1912

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1909
  store i8 92, ptr %182, align 1, !dbg !1909, !tbaa !924
  br label %183, !dbg !1909

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %184, metadata !1716, metadata !DIExpression()), !dbg !1768
  br i1 %111, label %185, label %482, !dbg !1913

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1915
  %187 = icmp ult i64 %186, %153, !dbg !1916
  br i1 %187, label %188, label %439, !dbg !1917

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1918
  %190 = load i8, ptr %189, align 1, !dbg !1918, !tbaa !924
  %191 = add i8 %190, -48, !dbg !1919
  %192 = icmp ult i8 %191, 10, !dbg !1919
  br i1 %192, label %193, label %439, !dbg !1919

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1920
  br i1 %194, label %195, label %197, !dbg !1924

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1920
  store i8 48, ptr %196, align 1, !dbg !1920, !tbaa !924
  br label %197, !dbg !1920

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %198, metadata !1716, metadata !DIExpression()), !dbg !1768
  %199 = icmp ult i64 %198, %130, !dbg !1925
  br i1 %199, label %200, label %202, !dbg !1928

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1925
  store i8 48, ptr %201, align 1, !dbg !1925, !tbaa !924
  br label %202, !dbg !1925

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %203, metadata !1716, metadata !DIExpression()), !dbg !1768
  br label %439, !dbg !1929

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1930

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1931

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1932

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1934

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1936
  %210 = icmp ult i64 %209, %153, !dbg !1937
  br i1 %210, label %211, label %439, !dbg !1938

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1939
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1940
  %214 = load i8, ptr %213, align 1, !dbg !1940, !tbaa !924
  %215 = icmp eq i8 %214, 63, !dbg !1941
  br i1 %215, label %216, label %439, !dbg !1942

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1943
  %218 = load i8, ptr %217, align 1, !dbg !1943, !tbaa !924
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
  ], !dbg !1944

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1945

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1737, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %209, metadata !1730, metadata !DIExpression()), !dbg !1857
  %221 = icmp ult i64 %124, %130, !dbg !1947
  br i1 %221, label %222, label %224, !dbg !1950

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1947
  store i8 63, ptr %223, align 1, !dbg !1947, !tbaa !924
  br label %224, !dbg !1947

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %225, metadata !1716, metadata !DIExpression()), !dbg !1768
  %226 = icmp ult i64 %225, %130, !dbg !1951
  br i1 %226, label %227, label %229, !dbg !1954

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1951
  store i8 34, ptr %228, align 1, !dbg !1951, !tbaa !924
  br label %229, !dbg !1951

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %230, metadata !1716, metadata !DIExpression()), !dbg !1768
  %231 = icmp ult i64 %230, %130, !dbg !1955
  br i1 %231, label %232, label %234, !dbg !1958

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1955
  store i8 34, ptr %233, align 1, !dbg !1955, !tbaa !924
  br label %234, !dbg !1955

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %235, metadata !1716, metadata !DIExpression()), !dbg !1768
  %236 = icmp ult i64 %235, %130, !dbg !1959
  br i1 %236, label %237, label %239, !dbg !1962

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1959
  store i8 63, ptr %238, align 1, !dbg !1959, !tbaa !924
  br label %239, !dbg !1959

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %240, metadata !1716, metadata !DIExpression()), !dbg !1768
  br label %439, !dbg !1963

241:                                              ; preds = %152
  br label %251, !dbg !1964

242:                                              ; preds = %152
  br label %251, !dbg !1965

243:                                              ; preds = %152
  br label %249, !dbg !1966

244:                                              ; preds = %152
  br label %249, !dbg !1967

245:                                              ; preds = %152
  br label %251, !dbg !1968

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1969

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1970

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1973

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1975
  call void @llvm.dbg.label(metadata !1762), !dbg !1976
  br i1 %119, label %621, label %251, !dbg !1977

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1975
  call void @llvm.dbg.label(metadata !1764), !dbg !1979
  br i1 %109, label %493, label %450, !dbg !1980

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1981

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1982, !tbaa !924
  %256 = icmp eq i8 %255, 0, !dbg !1984
  br i1 %256, label %257, label %439, !dbg !1985

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1986
  br i1 %258, label %259, label %439, !dbg !1988

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1736, metadata !DIExpression()), !dbg !1866
  br label %260, !dbg !1989

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1866
  br i1 %116, label %262, label %439, !dbg !1990

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1992

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, metadata !1736, metadata !DIExpression()), !dbg !1866
  br i1 %116, label %264, label %439, !dbg !1993

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1994

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1997
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1999
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1999
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %270, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %269, metadata !1717, metadata !DIExpression()), !dbg !1768
  %271 = icmp ult i64 %124, %270, !dbg !2000
  br i1 %271, label %272, label %274, !dbg !2003

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2000
  store i8 39, ptr %273, align 1, !dbg !2000, !tbaa !924
  br label %274, !dbg !2000

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %275, metadata !1716, metadata !DIExpression()), !dbg !1768
  %276 = icmp ult i64 %275, %270, !dbg !2004
  br i1 %276, label %277, label %279, !dbg !2007

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2004
  store i8 92, ptr %278, align 1, !dbg !2004, !tbaa !924
  br label %279, !dbg !2004

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %280, metadata !1716, metadata !DIExpression()), !dbg !1768
  %281 = icmp ult i64 %280, %270, !dbg !2008
  br i1 %281, label %282, label %284, !dbg !2011

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2008
  store i8 39, ptr %283, align 1, !dbg !2008, !tbaa !924
  br label %284, !dbg !2008

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %285, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1768
  br label %439, !dbg !2012

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2013

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1738, metadata !DIExpression()), !dbg !2014
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !2015
  %289 = load ptr, ptr %288, align 8, !dbg !2015, !tbaa !844
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2015
  %292 = load i16, ptr %291, align 2, !dbg !2015, !tbaa !956
  %293 = and i16 %292, 16384, !dbg !2015
  %294 = icmp ne i16 %293, 0, !dbg !2017
  call void @llvm.dbg.value(metadata i1 %294, metadata !1741, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2014
  br label %337, !dbg !2018

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1742, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr %14, metadata !1794, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata ptr %14, metadata !1802, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 0, metadata !1805, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 8, metadata !1806, metadata !DIExpression()), !dbg !2023
  store i64 0, ptr %14, align 8, !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !1738, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i8 1, metadata !1741, metadata !DIExpression()), !dbg !2014
  %296 = icmp eq i64 %153, -1, !dbg !2026
  br i1 %296, label %297, label %299, !dbg !2028

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %298, metadata !1709, metadata !DIExpression()), !dbg !1768
  br label %299, !dbg !2030

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1866
  call void @llvm.dbg.value(metadata i64 %300, metadata !1709, metadata !DIExpression()), !dbg !1768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2031
  %301 = sub i64 %300, %129, !dbg !2032
  call void @llvm.dbg.value(metadata ptr %15, metadata !1745, metadata !DIExpression(DW_OP_deref)), !dbg !2033
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %302, metadata !1749, metadata !DIExpression()), !dbg !2033
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2035

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1738, metadata !DIExpression()), !dbg !2014
  %304 = icmp ugt i64 %300, %129, !dbg !2036
  br i1 %304, label %306, label %332, !dbg !2038

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !2014
  br label %332, !dbg !2039

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1738, metadata !DIExpression()), !dbg !2014
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2041
  %310 = load i8, ptr %309, align 1, !dbg !2041, !tbaa !924
  %311 = icmp eq i8 %310, 0, !dbg !2038
  br i1 %311, label %332, label %312, !dbg !2042

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %313, metadata !1738, metadata !DIExpression()), !dbg !2014
  %314 = add i64 %313, %129, !dbg !2044
  %315 = icmp eq i64 %313, %301, !dbg !2036
  br i1 %315, label %332, label %306, !dbg !2038, !llvm.loop !2045

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2046
  %319 = and i1 %318, %110, !dbg !2046
  call void @llvm.dbg.value(metadata i64 1, metadata !1750, metadata !DIExpression()), !dbg !2047
  br i1 %319, label %320, label %328, !dbg !2046

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1750, metadata !DIExpression()), !dbg !2047
  %322 = add i64 %321, %129, !dbg !2048
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2050
  %324 = load i8, ptr %323, align 1, !dbg !2050, !tbaa !924
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2051

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %326, metadata !1750, metadata !DIExpression()), !dbg !2047
  %327 = icmp eq i64 %326, %302, !dbg !2053
  br i1 %327, label %328, label %320, !dbg !2054, !llvm.loop !2055

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2057, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %329, metadata !1745, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i32 %329, metadata !2059, metadata !DIExpression()), !dbg !2067
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !2069
  %331 = icmp ne i32 %330, 0, !dbg !2070
  call void @llvm.dbg.value(metadata i8 poison, metadata !1741, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %302, metadata !1738, metadata !DIExpression()), !dbg !2014
  br label %332, !dbg !2071

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1741, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %333, metadata !1738, metadata !DIExpression()), !dbg !2014
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2073
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1741, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 0, metadata !1738, metadata !DIExpression()), !dbg !2014
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2073
  call void @llvm.dbg.label(metadata !1767), !dbg !2074
  %336 = select i1 %109, i32 4, i32 2, !dbg !2075
  br label %626, !dbg !2075

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1866
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2077
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1741, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %339, metadata !1738, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %338, metadata !1709, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i1 %340, metadata !1736, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1866
  %341 = icmp ult i64 %339, 2, !dbg !2078
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2079
  br i1 %343, label %439, label %344, !dbg !2079

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %345, metadata !1758, metadata !DIExpression()), !dbg !2081
  br label %346, !dbg !2082

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1768
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1857
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2083
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1866
  call void @llvm.dbg.value(metadata i8 %352, metadata !1737, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %351, metadata !1735, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %349, metadata !1730, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %347, metadata !1716, metadata !DIExpression()), !dbg !1768
  br i1 %342, label %397, label %353, !dbg !2084

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2089

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1866
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2092
  br i1 %355, label %372, label %356, !dbg !2092

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2094
  br i1 %357, label %358, label %360, !dbg !2098

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2094
  store i8 39, ptr %359, align 1, !dbg !2094, !tbaa !924
  br label %360, !dbg !2094

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %361, metadata !1716, metadata !DIExpression()), !dbg !1768
  %362 = icmp ult i64 %361, %130, !dbg !2099
  br i1 %362, label %363, label %365, !dbg !2102

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2099
  store i8 36, ptr %364, align 1, !dbg !2099, !tbaa !924
  br label %365, !dbg !2099

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %366, metadata !1716, metadata !DIExpression()), !dbg !1768
  %367 = icmp ult i64 %366, %130, !dbg !2103
  br i1 %367, label %368, label %370, !dbg !2106

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2103
  store i8 39, ptr %369, align 1, !dbg !2103, !tbaa !924
  br label %370, !dbg !2103

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %371, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1768
  br label %372, !dbg !2107

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1768
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %373, metadata !1716, metadata !DIExpression()), !dbg !1768
  %375 = icmp ult i64 %373, %130, !dbg !2108
  br i1 %375, label %376, label %378, !dbg !2111

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2108
  store i8 92, ptr %377, align 1, !dbg !2108, !tbaa !924
  br label %378, !dbg !2108

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %379, metadata !1716, metadata !DIExpression()), !dbg !1768
  %380 = icmp ult i64 %379, %130, !dbg !2112
  br i1 %380, label %381, label %385, !dbg !2115

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2112
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2112
  store i8 %383, ptr %384, align 1, !dbg !2112, !tbaa !924
  br label %385, !dbg !2112

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %386, metadata !1716, metadata !DIExpression()), !dbg !1768
  %387 = icmp ult i64 %386, %130, !dbg !2116
  br i1 %387, label %388, label %393, !dbg !2119

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2116
  %391 = or i8 %390, 48, !dbg !2116
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2116
  store i8 %391, ptr %392, align 1, !dbg !2116, !tbaa !924
  br label %393, !dbg !2116

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %394, metadata !1716, metadata !DIExpression()), !dbg !1768
  %395 = and i8 %352, 7, !dbg !2120
  %396 = or i8 %395, 48, !dbg !2121
  call void @llvm.dbg.value(metadata i8 %396, metadata !1737, metadata !DIExpression()), !dbg !1866
  br label %404, !dbg !2122

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2123

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2124
  br i1 %399, label %400, label %402, !dbg !2129

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2124
  store i8 92, ptr %401, align 1, !dbg !2124, !tbaa !924
  br label %402, !dbg !2124

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %403, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1866
  br label %404, !dbg !2130

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1768
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1866
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1866
  call void @llvm.dbg.value(metadata i8 %409, metadata !1737, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %408, metadata !1735, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %405, metadata !1716, metadata !DIExpression()), !dbg !1768
  %410 = add i64 %349, 1, !dbg !2131
  %411 = icmp ugt i64 %345, %410, !dbg !2133
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2134

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2135
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2135
  br i1 %415, label %416, label %427, !dbg !2135

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2138
  br i1 %417, label %418, label %420, !dbg !2142

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2138
  store i8 39, ptr %419, align 1, !dbg !2138, !tbaa !924
  br label %420, !dbg !2138

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %421, metadata !1716, metadata !DIExpression()), !dbg !1768
  %422 = icmp ult i64 %421, %130, !dbg !2143
  br i1 %422, label %423, label %425, !dbg !2146

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2143
  store i8 39, ptr %424, align 1, !dbg !2143, !tbaa !924
  br label %425, !dbg !2143

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %426, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1768
  br label %427, !dbg !2147

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2148
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %428, metadata !1716, metadata !DIExpression()), !dbg !1768
  %430 = icmp ult i64 %428, %130, !dbg !2149
  br i1 %430, label %431, label %433, !dbg !2152

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2149
  store i8 %409, ptr %432, align 1, !dbg !2149, !tbaa !924
  br label %433, !dbg !2149

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %434, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %410, metadata !1730, metadata !DIExpression()), !dbg !1857
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2153
  %436 = load i8, ptr %435, align 1, !dbg !2153, !tbaa !924
  call void @llvm.dbg.value(metadata i8 %436, metadata !1737, metadata !DIExpression()), !dbg !1866
  br label %346, !dbg !2154, !llvm.loop !2155

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1737, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i1 %340, metadata !1736, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %408, metadata !1735, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %349, metadata !1730, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %405, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %338, metadata !1709, metadata !DIExpression()), !dbg !1768
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2158
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1768
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1772
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1857
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1866
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %448, metadata !1737, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1732, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %445, metadata !1730, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %442, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %441, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %440, metadata !1709, metadata !DIExpression()), !dbg !1768
  br i1 %112, label %461, label %450, !dbg !2159

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
  br i1 %121, label %462, label %482, !dbg !2161

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2162

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
  %473 = lshr i8 %464, 5, !dbg !2163
  %474 = zext i8 %473 to i64, !dbg !2163
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2164
  %476 = load i32, ptr %475, align 4, !dbg !2164, !tbaa !915
  %477 = and i8 %464, 31, !dbg !2165
  %478 = zext i8 %477 to i32, !dbg !2165
  %479 = shl nuw i32 1, %478, !dbg !2166
  %480 = and i32 %476, %479, !dbg !2166
  %481 = icmp eq i32 %480, 0, !dbg !2166
  br i1 %481, label %482, label %493, !dbg !2167

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
  br i1 %154, label %493, label %529, !dbg !2168

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2158
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1768
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1772
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2169
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1866
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %501, metadata !1737, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %499, metadata !1730, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %496, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %495, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %494, metadata !1709, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.label(metadata !1765), !dbg !2170
  br i1 %110, label %621, label %503, !dbg !2171

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1866
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2173
  br i1 %504, label %521, label %505, !dbg !2173

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2175
  br i1 %506, label %507, label %509, !dbg !2179

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2175
  store i8 39, ptr %508, align 1, !dbg !2175, !tbaa !924
  br label %509, !dbg !2175

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %510, metadata !1716, metadata !DIExpression()), !dbg !1768
  %511 = icmp ult i64 %510, %502, !dbg !2180
  br i1 %511, label %512, label %514, !dbg !2183

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2180
  store i8 36, ptr %513, align 1, !dbg !2180, !tbaa !924
  br label %514, !dbg !2180

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %515, metadata !1716, metadata !DIExpression()), !dbg !1768
  %516 = icmp ult i64 %515, %502, !dbg !2184
  br i1 %516, label %517, label %519, !dbg !2187

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2184
  store i8 39, ptr %518, align 1, !dbg !2184, !tbaa !924
  br label %519, !dbg !2184

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %520, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1768
  br label %521, !dbg !2188

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1866
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %522, metadata !1716, metadata !DIExpression()), !dbg !1768
  %524 = icmp ult i64 %522, %502, !dbg !2189
  br i1 %524, label %525, label %527, !dbg !2192

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2189
  store i8 92, ptr %526, align 1, !dbg !2189, !tbaa !924
  br label %527, !dbg !2189

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %502, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %501, metadata !1737, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %499, metadata !1730, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %496, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %528, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %494, metadata !1709, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.label(metadata !1766), !dbg !2193
  br label %553, !dbg !2194

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2158
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1768
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1772
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2169
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2197
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %538, metadata !1737, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %535, metadata !1730, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %532, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %531, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %530, metadata !1709, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.label(metadata !1766), !dbg !2193
  %540 = xor i1 %534, true, !dbg !2194
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2194
  br i1 %541, label %553, label %542, !dbg !2194

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2198
  br i1 %543, label %544, label %546, !dbg !2202

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2198
  store i8 39, ptr %545, align 1, !dbg !2198, !tbaa !924
  br label %546, !dbg !2198

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %547, metadata !1716, metadata !DIExpression()), !dbg !1768
  %548 = icmp ult i64 %547, %539, !dbg !2203
  br i1 %548, label %549, label %551, !dbg !2206

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2203
  store i8 39, ptr %550, align 1, !dbg !2203, !tbaa !924
  br label %551, !dbg !2203

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %552, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1768
  br label %553, !dbg !2207

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1866
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %561, metadata !1716, metadata !DIExpression()), !dbg !1768
  %563 = icmp ult i64 %561, %554, !dbg !2208
  br i1 %563, label %564, label %566, !dbg !2211

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2208
  store i8 %555, ptr %565, align 1, !dbg !2208, !tbaa !924
  br label %566, !dbg !2208

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %567, metadata !1716, metadata !DIExpression()), !dbg !1768
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2212
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1768
  br label %569, !dbg !2213

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2158
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1768
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1772
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2169
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %576, metadata !1730, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1724, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %572, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %571, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %570, metadata !1709, metadata !DIExpression()), !dbg !1768
  %578 = add i64 %576, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %578, metadata !1730, metadata !DIExpression()), !dbg !1857
  br label %122, !dbg !2215, !llvm.loop !2216

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1707, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1723, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1722, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %125, metadata !1717, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %124, metadata !1716, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %123, metadata !1709, metadata !DIExpression()), !dbg !1768
  %580 = icmp ne i64 %124, 0, !dbg !2218
  %581 = xor i1 %110, true, !dbg !2220
  %582 = or i1 %580, %581, !dbg !2220
  %583 = or i1 %582, %111, !dbg !2220
  br i1 %583, label %584, label %621, !dbg !2220

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2221
  %586 = xor i1 %126, true, !dbg !2221
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2221
  br i1 %587, label %595, label %588, !dbg !2221

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2223

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2225
  br label %636, !dbg !2227

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2228
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2230
  br i1 %594, label %27, label %595, !dbg !2230

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2231
  %598 = or i1 %597, %596, !dbg !2233
  br i1 %598, label %614, label %599, !dbg !2233

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1718, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %124, metadata !1716, metadata !DIExpression()), !dbg !1768
  %600 = load i8, ptr %107, align 1, !dbg !2234, !tbaa !924
  %601 = icmp eq i8 %600, 0, !dbg !2237
  br i1 %601, label %614, label %602, !dbg !2237

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1718, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %605, metadata !1716, metadata !DIExpression()), !dbg !1768
  %606 = icmp ult i64 %605, %130, !dbg !2238
  br i1 %606, label %607, label %609, !dbg !2241

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2238
  store i8 %603, ptr %608, align 1, !dbg !2238, !tbaa !924
  br label %609, !dbg !2238

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %610, metadata !1716, metadata !DIExpression()), !dbg !1768
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2242
  call void @llvm.dbg.value(metadata ptr %611, metadata !1718, metadata !DIExpression()), !dbg !1768
  %612 = load i8, ptr %611, align 1, !dbg !2234, !tbaa !924
  %613 = icmp eq i8 %612, 0, !dbg !2237
  br i1 %613, label %614, label %602, !dbg !2237, !llvm.loop !2243

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1844
  call void @llvm.dbg.value(metadata i64 %615, metadata !1716, metadata !DIExpression()), !dbg !1768
  %616 = icmp ult i64 %615, %130, !dbg !2245
  br i1 %616, label %617, label %636, !dbg !2247

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2248
  store i8 0, ptr %618, align 1, !dbg !2249, !tbaa !924
  br label %636, !dbg !2248

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1767), !dbg !2074
  %620 = icmp eq i32 %103, 2, !dbg !2250
  br i1 %620, label %626, label %630, !dbg !2075

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1767), !dbg !2074
  %624 = icmp eq i32 %103, 2, !dbg !2250
  %625 = select i1 %109, i32 4, i32 2, !dbg !2075
  br i1 %624, label %626, label %630, !dbg !2075

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2075

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1710, metadata !DIExpression()), !dbg !1768
  %634 = and i32 %5, -3, !dbg !2251
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2252
  br label %636, !dbg !2253

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2254
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
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2263 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2267, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata ptr %2, metadata !2269, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata ptr %0, metadata !2271, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %1, metadata !2276, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr null, metadata !2277, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %2, metadata !2278, metadata !DIExpression()), !dbg !2284
  %4 = icmp eq ptr %2, null, !dbg !2286
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2286
  call void @llvm.dbg.value(metadata ptr %5, metadata !2279, metadata !DIExpression()), !dbg !2284
  %6 = tail call ptr @__errno_location() #41, !dbg !2287
  %7 = load i32, ptr %6, align 4, !dbg !2287, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %7, metadata !2280, metadata !DIExpression()), !dbg !2284
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2288
  %9 = load i32, ptr %8, align 4, !dbg !2288, !tbaa !1650
  %10 = or i32 %9, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %10, metadata !2281, metadata !DIExpression()), !dbg !2284
  %11 = load i32, ptr %5, align 8, !dbg !2290, !tbaa !1600
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2291
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2292
  %14 = load ptr, ptr %13, align 8, !dbg !2292, !tbaa !1671
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2293
  %16 = load ptr, ptr %15, align 8, !dbg !2293, !tbaa !1674
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2294
  %18 = add i64 %17, 1, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %18, metadata !2282, metadata !DIExpression()), !dbg !2284
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %19, metadata !2283, metadata !DIExpression()), !dbg !2284
  %20 = load i32, ptr %5, align 8, !dbg !2297, !tbaa !1600
  %21 = load ptr, ptr %13, align 8, !dbg !2298, !tbaa !1671
  %22 = load ptr, ptr %15, align 8, !dbg !2299, !tbaa !1674
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2300
  store i32 %7, ptr %6, align 4, !dbg !2301, !tbaa !915
  ret ptr %19, !dbg !2302
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2272 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2271, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %1, metadata !2276, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata ptr %2, metadata !2277, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata ptr %3, metadata !2278, metadata !DIExpression()), !dbg !2303
  %5 = icmp eq ptr %3, null, !dbg !2304
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2304
  call void @llvm.dbg.value(metadata ptr %6, metadata !2279, metadata !DIExpression()), !dbg !2303
  %7 = tail call ptr @__errno_location() #41, !dbg !2305
  %8 = load i32, ptr %7, align 4, !dbg !2305, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %8, metadata !2280, metadata !DIExpression()), !dbg !2303
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2306
  %10 = load i32, ptr %9, align 4, !dbg !2306, !tbaa !1650
  %11 = icmp eq ptr %2, null, !dbg !2307
  %12 = zext i1 %11 to i32, !dbg !2307
  %13 = or i32 %10, %12, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %13, metadata !2281, metadata !DIExpression()), !dbg !2303
  %14 = load i32, ptr %6, align 8, !dbg !2309, !tbaa !1600
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2310
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2311
  %17 = load ptr, ptr %16, align 8, !dbg !2311, !tbaa !1671
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2312
  %19 = load ptr, ptr %18, align 8, !dbg !2312, !tbaa !1674
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2313
  %21 = add i64 %20, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %21, metadata !2282, metadata !DIExpression()), !dbg !2303
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2315
  call void @llvm.dbg.value(metadata ptr %22, metadata !2283, metadata !DIExpression()), !dbg !2303
  %23 = load i32, ptr %6, align 8, !dbg !2316, !tbaa !1600
  %24 = load ptr, ptr %16, align 8, !dbg !2317, !tbaa !1671
  %25 = load ptr, ptr %18, align 8, !dbg !2318, !tbaa !1674
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2319
  store i32 %8, ptr %7, align 4, !dbg !2320, !tbaa !915
  br i1 %11, label %28, label %27, !dbg !2321

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2322, !tbaa !1132
  br label %28, !dbg !2324

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2325
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2326 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2331, !tbaa !844
  call void @llvm.dbg.value(metadata ptr %1, metadata !2328, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 1, metadata !2329, metadata !DIExpression()), !dbg !2333
  %2 = load i32, ptr @nslots, align 4, !tbaa !915
  call void @llvm.dbg.value(metadata i32 1, metadata !2329, metadata !DIExpression()), !dbg !2333
  %3 = icmp sgt i32 %2, 1, !dbg !2334
  br i1 %3, label %4, label %6, !dbg !2336

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2334
  br label %10, !dbg !2336

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2337
  %8 = load ptr, ptr %7, align 8, !dbg !2337, !tbaa !2339
  %9 = icmp eq ptr %8, @slot0, !dbg !2341
  br i1 %9, label %17, label %16, !dbg !2342

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2329, metadata !DIExpression()), !dbg !2333
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2343
  %13 = load ptr, ptr %12, align 8, !dbg !2343, !tbaa !2339
  tail call void @free(ptr noundef %13) #38, !dbg !2344
  %14 = add nuw nsw i64 %11, 1, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %14, metadata !2329, metadata !DIExpression()), !dbg !2333
  %15 = icmp eq i64 %14, %5, !dbg !2334
  br i1 %15, label %6, label %10, !dbg !2336, !llvm.loop !2346

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2348
  store i64 256, ptr @slotvec0, align 8, !dbg !2350, !tbaa !2351
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2352, !tbaa !2339
  br label %17, !dbg !2353

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2354
  br i1 %18, label %20, label %19, !dbg !2356

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2357
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2359, !tbaa !844
  br label %20, !dbg !2360

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2361, !tbaa !915
  ret void, !dbg !2362
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2363 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2366 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr %1, metadata !2369, metadata !DIExpression()), !dbg !2370
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2371
  ret ptr %3, !dbg !2372
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2373 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2377, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata ptr %1, metadata !2378, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %2, metadata !2379, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata ptr %3, metadata !2380, metadata !DIExpression()), !dbg !2393
  %6 = tail call ptr @__errno_location() #41, !dbg !2394
  %7 = load i32, ptr %6, align 4, !dbg !2394, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %7, metadata !2381, metadata !DIExpression()), !dbg !2393
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2395, !tbaa !844
  call void @llvm.dbg.value(metadata ptr %8, metadata !2382, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2383, metadata !DIExpression()), !dbg !2393
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2396
  br i1 %9, label %10, label %11, !dbg !2396

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2398
  unreachable, !dbg !2398

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2399, !tbaa !915
  %13 = icmp sgt i32 %12, %0, !dbg !2400
  br i1 %13, label %32, label %14, !dbg !2401

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2402
  call void @llvm.dbg.value(metadata i1 %15, metadata !2384, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2404
  %16 = sext i32 %12 to i64, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %16, metadata !2387, metadata !DIExpression()), !dbg !2403
  store i64 %16, ptr %5, align 8, !dbg !2406, !tbaa !1132
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2407
  %18 = add nuw nsw i32 %0, 1, !dbg !2408
  %19 = sub i32 %18, %12, !dbg !2409
  %20 = sext i32 %19 to i64, !dbg !2410
  call void @llvm.dbg.value(metadata ptr %5, metadata !2387, metadata !DIExpression(DW_OP_deref)), !dbg !2403
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2411
  call void @llvm.dbg.value(metadata ptr %21, metadata !2382, metadata !DIExpression()), !dbg !2393
  store ptr %21, ptr @slotvec, align 8, !dbg !2412, !tbaa !844
  br i1 %15, label %22, label %23, !dbg !2413

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2414, !tbaa.struct !2416
  br label %23, !dbg !2417

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2418, !tbaa !915
  %25 = sext i32 %24 to i64, !dbg !2419
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2419
  %27 = load i64, ptr %5, align 8, !dbg !2420, !tbaa !1132
  call void @llvm.dbg.value(metadata i64 %27, metadata !2387, metadata !DIExpression()), !dbg !2403
  %28 = sub nsw i64 %27, %25, !dbg !2421
  %29 = shl i64 %28, 4, !dbg !2422
  call void @llvm.dbg.value(metadata ptr %26, metadata !1802, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 0, metadata !1805, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i64 %29, metadata !1806, metadata !DIExpression()), !dbg !2423
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2425
  %30 = load i64, ptr %5, align 8, !dbg !2426, !tbaa !1132
  call void @llvm.dbg.value(metadata i64 %30, metadata !2387, metadata !DIExpression()), !dbg !2403
  %31 = trunc i64 %30 to i32, !dbg !2426
  store i32 %31, ptr @nslots, align 4, !dbg !2427, !tbaa !915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2428
  br label %32, !dbg !2429

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2393
  call void @llvm.dbg.value(metadata ptr %33, metadata !2382, metadata !DIExpression()), !dbg !2393
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2430
  %36 = load i64, ptr %35, align 8, !dbg !2431, !tbaa !2351
  call void @llvm.dbg.value(metadata i64 %36, metadata !2388, metadata !DIExpression()), !dbg !2432
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2433
  %38 = load ptr, ptr %37, align 8, !dbg !2433, !tbaa !2339
  call void @llvm.dbg.value(metadata ptr %38, metadata !2390, metadata !DIExpression()), !dbg !2432
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2434
  %40 = load i32, ptr %39, align 4, !dbg !2434, !tbaa !1650
  %41 = or i32 %40, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %41, metadata !2391, metadata !DIExpression()), !dbg !2432
  %42 = load i32, ptr %3, align 8, !dbg !2436, !tbaa !1600
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2437
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2438
  %45 = load ptr, ptr %44, align 8, !dbg !2438, !tbaa !1671
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2439
  %47 = load ptr, ptr %46, align 8, !dbg !2439, !tbaa !1674
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %48, metadata !2392, metadata !DIExpression()), !dbg !2432
  %49 = icmp ugt i64 %36, %48, !dbg !2441
  br i1 %49, label %60, label %50, !dbg !2443

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %51, metadata !2388, metadata !DIExpression()), !dbg !2432
  store i64 %51, ptr %35, align 8, !dbg !2446, !tbaa !2351
  %52 = icmp eq ptr %38, @slot0, !dbg !2447
  br i1 %52, label %54, label %53, !dbg !2449

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2450
  br label %54, !dbg !2450

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %55, metadata !2390, metadata !DIExpression()), !dbg !2432
  store ptr %55, ptr %37, align 8, !dbg !2452, !tbaa !2339
  %56 = load i32, ptr %3, align 8, !dbg !2453, !tbaa !1600
  %57 = load ptr, ptr %44, align 8, !dbg !2454, !tbaa !1671
  %58 = load ptr, ptr %46, align 8, !dbg !2455, !tbaa !1674
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2456
  br label %60, !dbg !2457

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2432
  call void @llvm.dbg.value(metadata ptr %61, metadata !2390, metadata !DIExpression()), !dbg !2432
  store i32 %7, ptr %6, align 4, !dbg !2458, !tbaa !915
  ret ptr %61, !dbg !2459
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %1, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %2, metadata !2466, metadata !DIExpression()), !dbg !2467
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2468
  ret ptr %4, !dbg !2469
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2470 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2472, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 0, metadata !2368, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %0, metadata !2369, metadata !DIExpression()), !dbg !2474
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2476
  ret ptr %2, !dbg !2477
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2478 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %1, metadata !2483, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 0, metadata !2464, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata ptr %0, metadata !2465, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %1, metadata !2466, metadata !DIExpression()), !dbg !2485
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2487
  ret ptr %3, !dbg !2488
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2489 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata ptr %2, metadata !2495, metadata !DIExpression()), !dbg !2497
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2498
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2496, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %1, metadata !2504, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2509, metadata !DIExpression()), !dbg !2512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2512, !alias.scope !2500
  %5 = icmp eq i32 %1, 10, !dbg !2513
  br i1 %5, label %6, label %7, !dbg !2515

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2516, !noalias !2500
  unreachable, !dbg !2516

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2517, !tbaa !1600, !alias.scope !2500
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2518
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2519
  ret ptr %8, !dbg !2520
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2521 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2525, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 %1, metadata !2526, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr %2, metadata !2527, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i64 %3, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2531
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2529, metadata !DIExpression()), !dbg !2532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2533), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %1, metadata !2504, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2509, metadata !DIExpression()), !dbg !2539
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2539, !alias.scope !2533
  %6 = icmp eq i32 %1, 10, !dbg !2540
  br i1 %6, label %7, label %8, !dbg !2541

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2542, !noalias !2533
  unreachable, !dbg !2542

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2543, !tbaa !1600, !alias.scope !2533
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2544
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2545
  ret ptr %9, !dbg !2546
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2547 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2551, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %1, metadata !2552, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 0, metadata !2493, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %1, metadata !2495, metadata !DIExpression()), !dbg !2554
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2496, metadata !DIExpression()), !dbg !2557
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %0, metadata !2504, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2509, metadata !DIExpression()), !dbg !2564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2564, !alias.scope !2558
  %4 = icmp eq i32 %0, 10, !dbg !2565
  br i1 %4, label %5, label %6, !dbg !2566

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2567, !noalias !2558
  unreachable, !dbg !2567

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2568, !tbaa !1600, !alias.scope !2558
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2569
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2570
  ret ptr %7, !dbg !2571
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2572 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata ptr %1, metadata !2577, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %2, metadata !2578, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !2525, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %0, metadata !2526, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %1, metadata !2527, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i64 %2, metadata !2528, metadata !DIExpression()), !dbg !2580
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2582
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %0, metadata !2504, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2509, metadata !DIExpression()), !dbg !2590
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2590, !alias.scope !2584
  %5 = icmp eq i32 %0, 10, !dbg !2591
  br i1 %5, label %6, label %7, !dbg !2592

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2593, !noalias !2584
  unreachable, !dbg !2593

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2594, !tbaa !1600, !alias.scope !2584
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2595
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2596
  ret ptr %8, !dbg !2597
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2598 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %1, metadata !2603, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %2, metadata !2604, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2605, metadata !DIExpression()), !dbg !2608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2609, !tbaa.struct !2610
  call void @llvm.dbg.value(metadata ptr %4, metadata !1617, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %2, metadata !1618, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %2, metadata !1620, metadata !DIExpression()), !dbg !2611
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2613
  %6 = lshr i8 %2, 5, !dbg !2614
  %7 = zext i8 %6 to i64, !dbg !2614
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2615
  call void @llvm.dbg.value(metadata ptr %8, metadata !1621, metadata !DIExpression()), !dbg !2611
  %9 = and i8 %2, 31, !dbg !2616
  %10 = zext i8 %9 to i32, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %10, metadata !1623, metadata !DIExpression()), !dbg !2611
  %11 = load i32, ptr %8, align 4, !dbg !2617, !tbaa !915
  %12 = lshr i32 %11, %10, !dbg !2618
  call void @llvm.dbg.value(metadata i32 %12, metadata !1624, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2611
  %13 = and i32 %12, 1, !dbg !2619
  %14 = xor i32 %13, 1, !dbg !2619
  %15 = shl nuw i32 %14, %10, !dbg !2620
  %16 = xor i32 %15, %11, !dbg !2621
  store i32 %16, ptr %8, align 4, !dbg !2621, !tbaa !915
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2622
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2623
  ret ptr %17, !dbg !2624
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2625 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8 %1, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 -1, metadata !2603, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 %1, metadata !2604, metadata !DIExpression()), !dbg !2632
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2605, metadata !DIExpression()), !dbg !2635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2636, !tbaa.struct !2610
  call void @llvm.dbg.value(metadata ptr %3, metadata !1617, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 %1, metadata !1618, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 %1, metadata !1620, metadata !DIExpression()), !dbg !2637
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2639
  %5 = lshr i8 %1, 5, !dbg !2640
  %6 = zext i8 %5 to i64, !dbg !2640
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2641
  call void @llvm.dbg.value(metadata ptr %7, metadata !1621, metadata !DIExpression()), !dbg !2637
  %8 = and i8 %1, 31, !dbg !2642
  %9 = zext i8 %8 to i32, !dbg !2642
  call void @llvm.dbg.value(metadata i32 %9, metadata !1623, metadata !DIExpression()), !dbg !2637
  %10 = load i32, ptr %7, align 4, !dbg !2643, !tbaa !915
  %11 = lshr i32 %10, %9, !dbg !2644
  call void @llvm.dbg.value(metadata i32 %11, metadata !1624, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2637
  %12 = and i32 %11, 1, !dbg !2645
  %13 = xor i32 %12, 1, !dbg !2645
  %14 = shl nuw i32 %13, %9, !dbg !2646
  %15 = xor i32 %14, %10, !dbg !2647
  store i32 %15, ptr %7, align 4, !dbg !2647, !tbaa !915
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2648
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2649
  ret ptr %16, !dbg !2650
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2651 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2653, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %0, metadata !2629, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 58, metadata !2630, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i64 -1, metadata !2603, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8 58, metadata !2604, metadata !DIExpression()), !dbg !2657
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2659
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2661, !tbaa.struct !2610
  call void @llvm.dbg.value(metadata ptr %2, metadata !1617, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 58, metadata !1618, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 58, metadata !1620, metadata !DIExpression()), !dbg !2662
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2664
  call void @llvm.dbg.value(metadata ptr %3, metadata !1621, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 26, metadata !1623, metadata !DIExpression()), !dbg !2662
  %4 = load i32, ptr %3, align 4, !dbg !2665, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %4, metadata !1624, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2662
  %5 = or i32 %4, 67108864, !dbg !2666
  store i32 %5, ptr %3, align 4, !dbg !2666, !tbaa !915
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2667
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2668
  ret ptr %6, !dbg !2669
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2670 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 %1, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2603, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 58, metadata !2604, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2677
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2605, metadata !DIExpression()), !dbg !2678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2679, !tbaa.struct !2610
  call void @llvm.dbg.value(metadata ptr %3, metadata !1617, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 58, metadata !1618, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 58, metadata !1620, metadata !DIExpression()), !dbg !2680
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2682
  call void @llvm.dbg.value(metadata ptr %4, metadata !1621, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 26, metadata !1623, metadata !DIExpression()), !dbg !2680
  %5 = load i32, ptr %4, align 4, !dbg !2683, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %5, metadata !1624, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2680
  %6 = or i32 %5, 67108864, !dbg !2684
  store i32 %6, ptr %4, align 4, !dbg !2684, !tbaa !915
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2685
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2686
  ret ptr %7, !dbg !2687
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2688 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2509, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %0, metadata !2690, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i32 %1, metadata !2691, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %2, metadata !2692, metadata !DIExpression()), !dbg !2696
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2697
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2693, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 %1, metadata !2504, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i32 0, metadata !2509, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2699
  %5 = icmp eq i32 %1, 10, !dbg !2700
  br i1 %5, label %6, label %7, !dbg !2701

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2702, !noalias !2703
  unreachable, !dbg !2702

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2509, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2699
  store i32 %1, ptr %4, align 8, !dbg !2706, !tbaa.struct !2610
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2706
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %4, metadata !1617, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 58, metadata !1618, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 58, metadata !1620, metadata !DIExpression()), !dbg !2707
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2709
  call void @llvm.dbg.value(metadata ptr %9, metadata !1621, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 26, metadata !1623, metadata !DIExpression()), !dbg !2707
  %10 = load i32, ptr %9, align 4, !dbg !2710, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %10, metadata !1624, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2707
  %11 = or i32 %10, 67108864, !dbg !2711
  store i32 %11, ptr %9, align 4, !dbg !2711, !tbaa !915
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2712
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2713
  ret ptr %12, !dbg !2714
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2715 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2719, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %1, metadata !2720, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %3, metadata !2722, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %1, metadata !2729, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %2, metadata !2730, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %3, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 -1, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2736
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2733, metadata !DIExpression()), !dbg !2737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2738, !tbaa.struct !2610
  call void @llvm.dbg.value(metadata ptr %5, metadata !1657, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %1, metadata !1658, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %2, metadata !1659, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %5, metadata !1657, metadata !DIExpression()), !dbg !2739
  store i32 10, ptr %5, align 8, !dbg !2741, !tbaa !1600
  %6 = icmp ne ptr %1, null, !dbg !2742
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2743
  br i1 %8, label %10, label %9, !dbg !2743

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2744
  unreachable, !dbg !2744

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2745
  store ptr %1, ptr %11, align 8, !dbg !2746, !tbaa !1671
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2747
  store ptr %2, ptr %12, align 8, !dbg !2748, !tbaa !1674
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2749
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2750
  ret ptr %13, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2725 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %1, metadata !2729, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %2, metadata !2730, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %3, metadata !2731, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 %4, metadata !2732, metadata !DIExpression()), !dbg !2752
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2753
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2733, metadata !DIExpression()), !dbg !2754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2755, !tbaa.struct !2610
  call void @llvm.dbg.value(metadata ptr %6, metadata !1657, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %1, metadata !1658, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %2, metadata !1659, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %6, metadata !1657, metadata !DIExpression()), !dbg !2756
  store i32 10, ptr %6, align 8, !dbg !2758, !tbaa !1600
  %7 = icmp ne ptr %1, null, !dbg !2759
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2760
  br i1 %9, label %11, label %10, !dbg !2760

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2761
  unreachable, !dbg !2761

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2762
  store ptr %1, ptr %12, align 8, !dbg !2763, !tbaa !1671
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2764
  store ptr %2, ptr %13, align 8, !dbg !2765, !tbaa !1674
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2766
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2767
  ret ptr %14, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2769 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %1, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %2, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 0, metadata !2719, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %0, metadata !2720, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %1, metadata !2721, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %2, metadata !2722, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %1, metadata !2730, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %2, metadata !2731, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 -1, metadata !2732, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2781
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2733, metadata !DIExpression()), !dbg !2782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2783, !tbaa.struct !2610
  call void @llvm.dbg.value(metadata ptr %4, metadata !1657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata ptr %0, metadata !1658, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata ptr %1, metadata !1659, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata ptr %4, metadata !1657, metadata !DIExpression()), !dbg !2784
  store i32 10, ptr %4, align 8, !dbg !2786, !tbaa !1600
  %5 = icmp ne ptr %0, null, !dbg !2787
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2788
  br i1 %7, label %9, label %8, !dbg !2788

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2789
  unreachable, !dbg !2789

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2790
  store ptr %0, ptr %10, align 8, !dbg !2791, !tbaa !1671
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2792
  store ptr %1, ptr %11, align 8, !dbg !2793, !tbaa !1674
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2794
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2795
  ret ptr %12, !dbg !2796
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2797 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %1, metadata !2802, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %3, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %1, metadata !2730, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %2, metadata !2731, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %3, metadata !2732, metadata !DIExpression()), !dbg !2806
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2808
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2733, metadata !DIExpression()), !dbg !2809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2810, !tbaa.struct !2610
  call void @llvm.dbg.value(metadata ptr %5, metadata !1657, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %0, metadata !1658, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %1, metadata !1659, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %5, metadata !1657, metadata !DIExpression()), !dbg !2811
  store i32 10, ptr %5, align 8, !dbg !2813, !tbaa !1600
  %6 = icmp ne ptr %0, null, !dbg !2814
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2815
  br i1 %8, label %10, label %9, !dbg !2815

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2816
  unreachable, !dbg !2816

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2817
  store ptr %0, ptr %11, align 8, !dbg !2818, !tbaa !1671
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2819
  store ptr %1, ptr %12, align 8, !dbg !2820, !tbaa !1674
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2821
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2822
  ret ptr %13, !dbg !2823
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2824 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %1, metadata !2829, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 %2, metadata !2830, metadata !DIExpression()), !dbg !2831
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2832
  ret ptr %4, !dbg !2833
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2834 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %1, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, metadata !2828, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 %1, metadata !2830, metadata !DIExpression()), !dbg !2841
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2843
  ret ptr %3, !dbg !2844
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2849, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %0, metadata !2828, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %1, metadata !2829, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 -1, metadata !2830, metadata !DIExpression()), !dbg !2852
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2854
  ret ptr %3, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2856 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2849, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %0, metadata !2850, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 0, metadata !2828, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 -1, metadata !2830, metadata !DIExpression()), !dbg !2864
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2866
  ret ptr %2, !dbg !2867
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2868 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2907, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %1, metadata !2908, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %2, metadata !2909, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %3, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %4, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %5, metadata !2912, metadata !DIExpression()), !dbg !2913
  %7 = icmp eq ptr %1, null, !dbg !2914
  br i1 %7, label %10, label %8, !dbg !2916

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !2917
  br label %12, !dbg !2917

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %2, ptr noundef %3) #38, !dbg !2918
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.3.81, i32 noundef 5) #38, !dbg !2919
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !2919
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2920
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.5.83, i32 noundef 5) #38, !dbg !2921
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.84) #38, !dbg !2921
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2922
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
  ], !dbg !2923

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.7.85, i32 noundef 5) #38, !dbg !2924
  %21 = load ptr, ptr %4, align 8, !dbg !2924, !tbaa !844
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !2924
  br label %147, !dbg !2926

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.8.86, i32 noundef 5) #38, !dbg !2927
  %25 = load ptr, ptr %4, align 8, !dbg !2927, !tbaa !844
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2927
  %27 = load ptr, ptr %26, align 8, !dbg !2927, !tbaa !844
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !2927
  br label %147, !dbg !2928

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.9.87, i32 noundef 5) #38, !dbg !2929
  %31 = load ptr, ptr %4, align 8, !dbg !2929, !tbaa !844
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2929
  %33 = load ptr, ptr %32, align 8, !dbg !2929, !tbaa !844
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2929
  %35 = load ptr, ptr %34, align 8, !dbg !2929, !tbaa !844
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !2929
  br label %147, !dbg !2930

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.10.88, i32 noundef 5) #38, !dbg !2931
  %39 = load ptr, ptr %4, align 8, !dbg !2931, !tbaa !844
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2931
  %41 = load ptr, ptr %40, align 8, !dbg !2931, !tbaa !844
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2931
  %43 = load ptr, ptr %42, align 8, !dbg !2931, !tbaa !844
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2931
  %45 = load ptr, ptr %44, align 8, !dbg !2931, !tbaa !844
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !2931
  br label %147, !dbg !2932

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.11.89, i32 noundef 5) #38, !dbg !2933
  %49 = load ptr, ptr %4, align 8, !dbg !2933, !tbaa !844
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2933
  %51 = load ptr, ptr %50, align 8, !dbg !2933, !tbaa !844
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2933
  %53 = load ptr, ptr %52, align 8, !dbg !2933, !tbaa !844
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2933
  %55 = load ptr, ptr %54, align 8, !dbg !2933, !tbaa !844
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2933
  %57 = load ptr, ptr %56, align 8, !dbg !2933, !tbaa !844
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !2933
  br label %147, !dbg !2934

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.12.90, i32 noundef 5) #38, !dbg !2935
  %61 = load ptr, ptr %4, align 8, !dbg !2935, !tbaa !844
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2935
  %63 = load ptr, ptr %62, align 8, !dbg !2935, !tbaa !844
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2935
  %65 = load ptr, ptr %64, align 8, !dbg !2935, !tbaa !844
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2935
  %67 = load ptr, ptr %66, align 8, !dbg !2935, !tbaa !844
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2935
  %69 = load ptr, ptr %68, align 8, !dbg !2935, !tbaa !844
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2935
  %71 = load ptr, ptr %70, align 8, !dbg !2935, !tbaa !844
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !2935
  br label %147, !dbg !2936

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.13.91, i32 noundef 5) #38, !dbg !2937
  %75 = load ptr, ptr %4, align 8, !dbg !2937, !tbaa !844
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2937
  %77 = load ptr, ptr %76, align 8, !dbg !2937, !tbaa !844
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2937
  %79 = load ptr, ptr %78, align 8, !dbg !2937, !tbaa !844
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2937
  %81 = load ptr, ptr %80, align 8, !dbg !2937, !tbaa !844
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2937
  %83 = load ptr, ptr %82, align 8, !dbg !2937, !tbaa !844
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2937
  %85 = load ptr, ptr %84, align 8, !dbg !2937, !tbaa !844
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2937
  %87 = load ptr, ptr %86, align 8, !dbg !2937, !tbaa !844
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !2937
  br label %147, !dbg !2938

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.14.92, i32 noundef 5) #38, !dbg !2939
  %91 = load ptr, ptr %4, align 8, !dbg !2939, !tbaa !844
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2939
  %93 = load ptr, ptr %92, align 8, !dbg !2939, !tbaa !844
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2939
  %95 = load ptr, ptr %94, align 8, !dbg !2939, !tbaa !844
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2939
  %97 = load ptr, ptr %96, align 8, !dbg !2939, !tbaa !844
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2939
  %99 = load ptr, ptr %98, align 8, !dbg !2939, !tbaa !844
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2939
  %101 = load ptr, ptr %100, align 8, !dbg !2939, !tbaa !844
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2939
  %103 = load ptr, ptr %102, align 8, !dbg !2939, !tbaa !844
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2939
  %105 = load ptr, ptr %104, align 8, !dbg !2939, !tbaa !844
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !2939
  br label %147, !dbg !2940

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.15.93, i32 noundef 5) #38, !dbg !2941
  %109 = load ptr, ptr %4, align 8, !dbg !2941, !tbaa !844
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2941
  %111 = load ptr, ptr %110, align 8, !dbg !2941, !tbaa !844
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2941
  %113 = load ptr, ptr %112, align 8, !dbg !2941, !tbaa !844
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2941
  %115 = load ptr, ptr %114, align 8, !dbg !2941, !tbaa !844
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2941
  %117 = load ptr, ptr %116, align 8, !dbg !2941, !tbaa !844
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2941
  %119 = load ptr, ptr %118, align 8, !dbg !2941, !tbaa !844
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2941
  %121 = load ptr, ptr %120, align 8, !dbg !2941, !tbaa !844
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2941
  %123 = load ptr, ptr %122, align 8, !dbg !2941, !tbaa !844
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2941
  %125 = load ptr, ptr %124, align 8, !dbg !2941, !tbaa !844
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !2941
  br label %147, !dbg !2942

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.16.94, i32 noundef 5) #38, !dbg !2943
  %129 = load ptr, ptr %4, align 8, !dbg !2943, !tbaa !844
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2943
  %131 = load ptr, ptr %130, align 8, !dbg !2943, !tbaa !844
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2943
  %133 = load ptr, ptr %132, align 8, !dbg !2943, !tbaa !844
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2943
  %135 = load ptr, ptr %134, align 8, !dbg !2943, !tbaa !844
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2943
  %137 = load ptr, ptr %136, align 8, !dbg !2943, !tbaa !844
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2943
  %139 = load ptr, ptr %138, align 8, !dbg !2943, !tbaa !844
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2943
  %141 = load ptr, ptr %140, align 8, !dbg !2943, !tbaa !844
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2943
  %143 = load ptr, ptr %142, align 8, !dbg !2943, !tbaa !844
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2943
  %145 = load ptr, ptr %144, align 8, !dbg !2943, !tbaa !844
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !2943
  br label %147, !dbg !2944

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2945
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2946 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2950, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %1, metadata !2951, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %3, metadata !2953, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %4, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 0, metadata !2955, metadata !DIExpression()), !dbg !2956
  br label %6, !dbg !2957

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2959
  call void @llvm.dbg.value(metadata i64 %7, metadata !2955, metadata !DIExpression()), !dbg !2956
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2960
  %9 = load ptr, ptr %8, align 8, !dbg !2960, !tbaa !844
  %10 = icmp eq ptr %9, null, !dbg !2962
  %11 = add i64 %7, 1, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %11, metadata !2955, metadata !DIExpression()), !dbg !2956
  br i1 %10, label %12, label %6, !dbg !2962, !llvm.loop !2964

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2966
  ret void, !dbg !2967
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2968 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2983, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %1, metadata !2984, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2, metadata !2985, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %3, metadata !2986, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2987, metadata !DIExpression()), !dbg !2992
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !2993
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2989, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 0, metadata !2988, metadata !DIExpression()), !dbg !2991
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2988, metadata !DIExpression()), !dbg !2991
  %10 = icmp sgt i32 %9, -1, !dbg !2995
  br i1 %10, label %18, label %11, !dbg !2995

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2995
  store i32 %12, ptr %7, align 8, !dbg !2995
  %13 = icmp ult i32 %9, -7, !dbg !2995
  br i1 %13, label %14, label %18, !dbg !2995

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2995
  %16 = sext i32 %9 to i64, !dbg !2995
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2995
  br label %22, !dbg !2995

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2995
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2995
  store ptr %21, ptr %4, align 8, !dbg !2995
  br label %22, !dbg !2995

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2995
  %25 = load ptr, ptr %24, align 8, !dbg !2995
  store ptr %25, ptr %6, align 8, !dbg !2998, !tbaa !844
  %26 = icmp eq ptr %25, null, !dbg !2999
  br i1 %26, label %197, label %27, !dbg !3000

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 1, metadata !2988, metadata !DIExpression()), !dbg !2991
  %28 = icmp sgt i32 %23, -1, !dbg !2995
  br i1 %28, label %36, label %29, !dbg !2995

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2995
  store i32 %30, ptr %7, align 8, !dbg !2995
  %31 = icmp ult i32 %23, -7, !dbg !2995
  br i1 %31, label %32, label %36, !dbg !2995

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2995
  %34 = sext i32 %23 to i64, !dbg !2995
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2995
  br label %40, !dbg !2995

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2995
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2995
  store ptr %39, ptr %4, align 8, !dbg !2995
  br label %40, !dbg !2995

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2995
  %43 = load ptr, ptr %42, align 8, !dbg !2995
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3001
  store ptr %43, ptr %44, align 8, !dbg !2998, !tbaa !844
  %45 = icmp eq ptr %43, null, !dbg !2999
  br i1 %45, label %197, label %46, !dbg !3000

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 2, metadata !2988, metadata !DIExpression()), !dbg !2991
  %47 = icmp sgt i32 %41, -1, !dbg !2995
  br i1 %47, label %55, label %48, !dbg !2995

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2995
  store i32 %49, ptr %7, align 8, !dbg !2995
  %50 = icmp ult i32 %41, -7, !dbg !2995
  br i1 %50, label %51, label %55, !dbg !2995

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2995
  %53 = sext i32 %41 to i64, !dbg !2995
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2995
  br label %59, !dbg !2995

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2995
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2995
  store ptr %58, ptr %4, align 8, !dbg !2995
  br label %59, !dbg !2995

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2995
  %62 = load ptr, ptr %61, align 8, !dbg !2995
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3001
  store ptr %62, ptr %63, align 8, !dbg !2998, !tbaa !844
  %64 = icmp eq ptr %62, null, !dbg !2999
  br i1 %64, label %197, label %65, !dbg !3000

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 3, metadata !2988, metadata !DIExpression()), !dbg !2991
  %66 = icmp sgt i32 %60, -1, !dbg !2995
  br i1 %66, label %74, label %67, !dbg !2995

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2995
  store i32 %68, ptr %7, align 8, !dbg !2995
  %69 = icmp ult i32 %60, -7, !dbg !2995
  br i1 %69, label %70, label %74, !dbg !2995

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2995
  %72 = sext i32 %60 to i64, !dbg !2995
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2995
  br label %78, !dbg !2995

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2995
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2995
  store ptr %77, ptr %4, align 8, !dbg !2995
  br label %78, !dbg !2995

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2995
  %81 = load ptr, ptr %80, align 8, !dbg !2995
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3001
  store ptr %81, ptr %82, align 8, !dbg !2998, !tbaa !844
  %83 = icmp eq ptr %81, null, !dbg !2999
  br i1 %83, label %197, label %84, !dbg !3000

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 4, metadata !2988, metadata !DIExpression()), !dbg !2991
  %85 = icmp sgt i32 %79, -1, !dbg !2995
  br i1 %85, label %93, label %86, !dbg !2995

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2995
  store i32 %87, ptr %7, align 8, !dbg !2995
  %88 = icmp ult i32 %79, -7, !dbg !2995
  br i1 %88, label %89, label %93, !dbg !2995

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2995
  %91 = sext i32 %79 to i64, !dbg !2995
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2995
  br label %97, !dbg !2995

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2995
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2995
  store ptr %96, ptr %4, align 8, !dbg !2995
  br label %97, !dbg !2995

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2995
  %100 = load ptr, ptr %99, align 8, !dbg !2995
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3001
  store ptr %100, ptr %101, align 8, !dbg !2998, !tbaa !844
  %102 = icmp eq ptr %100, null, !dbg !2999
  br i1 %102, label %197, label %103, !dbg !3000

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 5, metadata !2988, metadata !DIExpression()), !dbg !2991
  %104 = icmp sgt i32 %98, -1, !dbg !2995
  br i1 %104, label %112, label %105, !dbg !2995

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2995
  store i32 %106, ptr %7, align 8, !dbg !2995
  %107 = icmp ult i32 %98, -7, !dbg !2995
  br i1 %107, label %108, label %112, !dbg !2995

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2995
  %110 = sext i32 %98 to i64, !dbg !2995
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2995
  br label %116, !dbg !2995

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2995
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2995
  store ptr %115, ptr %4, align 8, !dbg !2995
  br label %116, !dbg !2995

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2995
  %119 = load ptr, ptr %118, align 8, !dbg !2995
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3001
  store ptr %119, ptr %120, align 8, !dbg !2998, !tbaa !844
  %121 = icmp eq ptr %119, null, !dbg !2999
  br i1 %121, label %197, label %122, !dbg !3000

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 6, metadata !2988, metadata !DIExpression()), !dbg !2991
  %123 = icmp sgt i32 %117, -1, !dbg !2995
  br i1 %123, label %131, label %124, !dbg !2995

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2995
  store i32 %125, ptr %7, align 8, !dbg !2995
  %126 = icmp ult i32 %117, -7, !dbg !2995
  br i1 %126, label %127, label %131, !dbg !2995

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2995
  %129 = sext i32 %117 to i64, !dbg !2995
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2995
  br label %135, !dbg !2995

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2995
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2995
  store ptr %134, ptr %4, align 8, !dbg !2995
  br label %135, !dbg !2995

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2995
  %138 = load ptr, ptr %137, align 8, !dbg !2995
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3001
  store ptr %138, ptr %139, align 8, !dbg !2998, !tbaa !844
  %140 = icmp eq ptr %138, null, !dbg !2999
  br i1 %140, label %197, label %141, !dbg !3000

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 7, metadata !2988, metadata !DIExpression()), !dbg !2991
  %142 = icmp sgt i32 %136, -1, !dbg !2995
  br i1 %142, label %150, label %143, !dbg !2995

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2995
  store i32 %144, ptr %7, align 8, !dbg !2995
  %145 = icmp ult i32 %136, -7, !dbg !2995
  br i1 %145, label %146, label %150, !dbg !2995

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2995
  %148 = sext i32 %136 to i64, !dbg !2995
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2995
  br label %154, !dbg !2995

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2995
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2995
  store ptr %153, ptr %4, align 8, !dbg !2995
  br label %154, !dbg !2995

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2995
  %157 = load ptr, ptr %156, align 8, !dbg !2995
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3001
  store ptr %157, ptr %158, align 8, !dbg !2998, !tbaa !844
  %159 = icmp eq ptr %157, null, !dbg !2999
  br i1 %159, label %197, label %160, !dbg !3000

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 8, metadata !2988, metadata !DIExpression()), !dbg !2991
  %161 = icmp sgt i32 %155, -1, !dbg !2995
  br i1 %161, label %169, label %162, !dbg !2995

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2995
  store i32 %163, ptr %7, align 8, !dbg !2995
  %164 = icmp ult i32 %155, -7, !dbg !2995
  br i1 %164, label %165, label %169, !dbg !2995

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2995
  %167 = sext i32 %155 to i64, !dbg !2995
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2995
  br label %173, !dbg !2995

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2995
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2995
  store ptr %172, ptr %4, align 8, !dbg !2995
  br label %173, !dbg !2995

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2995
  %176 = load ptr, ptr %175, align 8, !dbg !2995
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3001
  store ptr %176, ptr %177, align 8, !dbg !2998, !tbaa !844
  %178 = icmp eq ptr %176, null, !dbg !2999
  br i1 %178, label %197, label %179, !dbg !3000

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 9, metadata !2988, metadata !DIExpression()), !dbg !2991
  %180 = icmp sgt i32 %174, -1, !dbg !2995
  br i1 %180, label %188, label %181, !dbg !2995

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2995
  store i32 %182, ptr %7, align 8, !dbg !2995
  %183 = icmp ult i32 %174, -7, !dbg !2995
  br i1 %183, label %184, label %188, !dbg !2995

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2995
  %186 = sext i32 %174 to i64, !dbg !2995
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2995
  br label %191, !dbg !2995

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2995
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2995
  store ptr %190, ptr %4, align 8, !dbg !2995
  br label %191, !dbg !2995

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2995
  %193 = load ptr, ptr %192, align 8, !dbg !2995
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3001
  store ptr %193, ptr %194, align 8, !dbg !2998, !tbaa !844
  %195 = icmp eq ptr %193, null, !dbg !2999
  %196 = select i1 %195, i64 9, i64 10, !dbg !3000
  br label %197, !dbg !3000

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3002
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3003
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3004
  ret void, !dbg !3004
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3005 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %1, metadata !3010, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %2, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %3, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3015
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.va_start(ptr nonnull %5), !dbg !3017
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3018, !tbaa.struct !1295
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3018
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3018
  call void @llvm.va_end(ptr nonnull %5), !dbg !3019
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3020
  ret void, !dbg !3020
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3021 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3022, !tbaa !844
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %1), !dbg !3022
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.17.99, i32 noundef 5) #38, !dbg !3023
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.100) #38, !dbg !3023
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.19.101, i32 noundef 5) #38, !dbg !3024
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.102, ptr noundef nonnull @.str.21.103) #38, !dbg !3024
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.22.104, i32 noundef 5) #38, !dbg !3025
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.105) #38, !dbg !3025
  ret void, !dbg !3026
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3027 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3032, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %2, metadata !3034, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %1, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %2, metadata !3040, metadata !DIExpression()), !dbg !3041
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3043
  call void @llvm.dbg.value(metadata ptr %4, metadata !3044, metadata !DIExpression()), !dbg !3049
  %5 = icmp eq ptr %4, null, !dbg !3051
  br i1 %5, label %6, label %7, !dbg !3053

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3054
  unreachable, !dbg !3054

7:                                                ; preds = %3
  ret ptr %4, !dbg !3055
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3037 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %1, metadata !3039, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %2, metadata !3040, metadata !DIExpression()), !dbg !3056
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3057
  call void @llvm.dbg.value(metadata ptr %4, metadata !3044, metadata !DIExpression()), !dbg !3058
  %5 = icmp eq ptr %4, null, !dbg !3060
  br i1 %5, label %6, label %7, !dbg !3061

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3062
  unreachable, !dbg !3062

7:                                                ; preds = %3
  ret ptr %4, !dbg !3063
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3064 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3068, metadata !DIExpression()), !dbg !3069
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3071
  %3 = icmp eq ptr %2, null, !dbg !3073
  br i1 %3, label %4, label %5, !dbg !3074

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3075
  unreachable, !dbg !3075

5:                                                ; preds = %1
  ret ptr %2, !dbg !3076
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3077 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3078 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %0, metadata !3084, metadata !DIExpression()), !dbg !3088
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3090
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3091
  %3 = icmp eq ptr %2, null, !dbg !3093
  br i1 %3, label %4, label %5, !dbg !3094

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3095
  unreachable, !dbg !3095

5:                                                ; preds = %1
  ret ptr %2, !dbg !3096
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3097 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %0, metadata !3068, metadata !DIExpression()), !dbg !3103
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3105
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3106
  %3 = icmp eq ptr %2, null, !dbg !3108
  br i1 %3, label %4, label %5, !dbg !3109

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3110
  unreachable, !dbg !3110

5:                                                ; preds = %1
  ret ptr %2, !dbg !3111
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3112 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %0, metadata !3119, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()), !dbg !3124
  %3 = icmp eq i64 %1, 0, !dbg !3126
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3126
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3127
  call void @llvm.dbg.value(metadata ptr %5, metadata !3044, metadata !DIExpression()), !dbg !3128
  %6 = icmp eq ptr %5, null, !dbg !3130
  br i1 %6, label %7, label %8, !dbg !3131

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3132
  unreachable, !dbg !3132

8:                                                ; preds = %2
  ret ptr %5, !dbg !3133
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3134 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3135 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %0, metadata !3142, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %1, metadata !3145, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata ptr %0, metadata !3119, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()), !dbg !3148
  %3 = icmp eq i64 %1, 0, !dbg !3150
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3150
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3151
  call void @llvm.dbg.value(metadata ptr %5, metadata !3044, metadata !DIExpression()), !dbg !3152
  %6 = icmp eq ptr %5, null, !dbg !3154
  br i1 %6, label %7, label %8, !dbg !3155

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3156
  unreachable, !dbg !3156

8:                                                ; preds = %2
  ret ptr %5, !dbg !3157
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3158 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %1, metadata !3163, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %2, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %0, metadata !3166, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %1, metadata !3169, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %2, metadata !3170, metadata !DIExpression()), !dbg !3171
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3173
  call void @llvm.dbg.value(metadata ptr %4, metadata !3044, metadata !DIExpression()), !dbg !3174
  %5 = icmp eq ptr %4, null, !dbg !3176
  br i1 %5, label %6, label %7, !dbg !3177

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3178
  unreachable, !dbg !3178

7:                                                ; preds = %3
  ret ptr %4, !dbg !3179
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3180 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata ptr null, metadata !3036, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %0, metadata !3039, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3187
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %3, metadata !3044, metadata !DIExpression()), !dbg !3190
  %4 = icmp eq ptr %3, null, !dbg !3192
  br i1 %4, label %5, label %6, !dbg !3193

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3194
  unreachable, !dbg !3194

6:                                                ; preds = %2
  ret ptr %3, !dbg !3195
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3196 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr null, metadata !3162, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %0, metadata !3163, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %1, metadata !3164, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata ptr null, metadata !3166, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %0, metadata !3169, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %1, metadata !3170, metadata !DIExpression()), !dbg !3205
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %3, metadata !3044, metadata !DIExpression()), !dbg !3208
  %4 = icmp eq ptr %3, null, !dbg !3210
  br i1 %4, label %5, label %6, !dbg !3211

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3212
  unreachable, !dbg !3212

6:                                                ; preds = %2
  ret ptr %3, !dbg !3213
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3214 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata ptr %1, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata ptr %0, metadata !777, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 1, metadata !779, metadata !DIExpression()), !dbg !3221
  %3 = load i64, ptr %1, align 8, !dbg !3223, !tbaa !1132
  call void @llvm.dbg.value(metadata i64 %3, metadata !780, metadata !DIExpression()), !dbg !3221
  %4 = icmp eq ptr %0, null, !dbg !3224
  br i1 %4, label %5, label %8, !dbg !3226

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3227
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3230
  br label %15, !dbg !3230

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3231
  %10 = add nuw i64 %9, 1, !dbg !3231
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3231
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3231
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %13, metadata !780, metadata !DIExpression()), !dbg !3221
  br i1 %12, label %14, label %15, !dbg !3234

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3235
  unreachable, !dbg !3235

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3221
  call void @llvm.dbg.value(metadata i64 %16, metadata !780, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %16, metadata !3039, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 1, metadata !3040, metadata !DIExpression()), !dbg !3236
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3238
  call void @llvm.dbg.value(metadata ptr %17, metadata !3044, metadata !DIExpression()), !dbg !3239
  %18 = icmp eq ptr %17, null, !dbg !3241
  br i1 %18, label %19, label %20, !dbg !3242

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3243
  unreachable, !dbg !3243

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !777, metadata !DIExpression()), !dbg !3221
  store i64 %16, ptr %1, align 8, !dbg !3244, !tbaa !1132
  ret ptr %17, !dbg !3245
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !772 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !777, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %2, metadata !779, metadata !DIExpression()), !dbg !3246
  %4 = load i64, ptr %1, align 8, !dbg !3247, !tbaa !1132
  call void @llvm.dbg.value(metadata i64 %4, metadata !780, metadata !DIExpression()), !dbg !3246
  %5 = icmp eq ptr %0, null, !dbg !3248
  br i1 %5, label %6, label %13, !dbg !3249

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3250
  br i1 %7, label %8, label %20, !dbg !3251

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3252
  call void @llvm.dbg.value(metadata i64 %9, metadata !780, metadata !DIExpression()), !dbg !3246
  %10 = icmp ugt i64 %2, 128, !dbg !3254
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %12, metadata !780, metadata !DIExpression()), !dbg !3246
  br label %20, !dbg !3256

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3257
  %15 = add nuw i64 %14, 1, !dbg !3257
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3257
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3257
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %18, metadata !780, metadata !DIExpression()), !dbg !3246
  br i1 %17, label %19, label %20, !dbg !3258

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3259
  unreachable, !dbg !3259

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3246
  call void @llvm.dbg.value(metadata i64 %21, metadata !780, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %21, metadata !3039, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %2, metadata !3040, metadata !DIExpression()), !dbg !3260
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3262
  call void @llvm.dbg.value(metadata ptr %22, metadata !3044, metadata !DIExpression()), !dbg !3263
  %23 = icmp eq ptr %22, null, !dbg !3265
  br i1 %23, label %24, label %25, !dbg !3266

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3267
  unreachable, !dbg !3267

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !777, metadata !DIExpression()), !dbg !3246
  store i64 %21, ptr %1, align 8, !dbg !3268, !tbaa !1132
  ret ptr %22, !dbg !3269
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !784 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !792, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %1, metadata !793, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %2, metadata !794, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %3, metadata !795, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %4, metadata !796, metadata !DIExpression()), !dbg !3270
  %6 = load i64, ptr %1, align 8, !dbg !3271, !tbaa !1132
  call void @llvm.dbg.value(metadata i64 %6, metadata !797, metadata !DIExpression()), !dbg !3270
  %7 = ashr i64 %6, 1, !dbg !3272
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3272
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3272
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %10, metadata !798, metadata !DIExpression()), !dbg !3270
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %11, metadata !798, metadata !DIExpression()), !dbg !3270
  %12 = icmp sgt i64 %3, -1, !dbg !3275
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3277
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %15, metadata !798, metadata !DIExpression()), !dbg !3270
  %16 = icmp slt i64 %4, 0, !dbg !3278
  br i1 %16, label %17, label %30, !dbg !3278

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3278
  br i1 %18, label %19, label %24, !dbg !3278

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3278
  %21 = udiv i64 9223372036854775807, %20, !dbg !3278
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3278
  br i1 %23, label %46, label %43, !dbg !3278

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3278
  br i1 %25, label %43, label %26, !dbg !3278

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3278
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3278
  %29 = icmp ult i64 %28, %15, !dbg !3278
  br i1 %29, label %46, label %43, !dbg !3278

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3278
  br i1 %31, label %43, label %32, !dbg !3278

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3278
  br i1 %33, label %34, label %40, !dbg !3278

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3278
  br i1 %35, label %43, label %36, !dbg !3278

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3278
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3278
  %39 = icmp ult i64 %38, %4, !dbg !3278
  br i1 %39, label %46, label %43, !dbg !3278

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3278
  br i1 %42, label %46, label %43, !dbg !3278

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !799, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3270
  %44 = mul i64 %15, %4, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %44, metadata !799, metadata !DIExpression()), !dbg !3270
  %45 = icmp slt i64 %44, 128, !dbg !3278
  br i1 %45, label %46, label %52, !dbg !3278

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !800, metadata !DIExpression()), !dbg !3270
  %48 = sdiv i64 %47, %4, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %48, metadata !798, metadata !DIExpression()), !dbg !3270
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %51, metadata !799, metadata !DIExpression()), !dbg !3270
  br label %52, !dbg !3283

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3270
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3270
  call void @llvm.dbg.value(metadata i64 %54, metadata !799, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %53, metadata !798, metadata !DIExpression()), !dbg !3270
  %55 = icmp eq ptr %0, null, !dbg !3284
  br i1 %55, label %56, label %57, !dbg !3286

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3287, !tbaa !1132
  br label %57, !dbg !3288

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3289
  %59 = icmp slt i64 %58, %2, !dbg !3291
  br i1 %59, label %60, label %97, !dbg !3292

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3293
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3293
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %63, metadata !798, metadata !DIExpression()), !dbg !3270
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3294
  br i1 %66, label %96, label %67, !dbg !3294

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3295

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3295
  br i1 %69, label %70, label %75, !dbg !3295

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3295
  %72 = udiv i64 9223372036854775807, %71, !dbg !3295
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3295
  br i1 %74, label %96, label %94, !dbg !3295

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3295
  br i1 %76, label %94, label %77, !dbg !3295

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3295
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3295
  %80 = icmp ult i64 %79, %63, !dbg !3295
  br i1 %80, label %96, label %94, !dbg !3295

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3295
  br i1 %82, label %94, label %83, !dbg !3295

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3295
  br i1 %84, label %85, label %91, !dbg !3295

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3295
  br i1 %86, label %94, label %87, !dbg !3295

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3295
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3295
  %90 = icmp ult i64 %89, %4, !dbg !3295
  br i1 %90, label %96, label %94, !dbg !3295

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3295
  br i1 %93, label %96, label %94, !dbg !3295

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !799, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3270
  %95 = mul i64 %63, %4, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %95, metadata !799, metadata !DIExpression()), !dbg !3270
  br label %97, !dbg !3296

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !3297
  unreachable, !dbg !3297

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3270
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3270
  call void @llvm.dbg.value(metadata i64 %99, metadata !799, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %98, metadata !798, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %0, metadata !3116, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %99, metadata !3117, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %0, metadata !3119, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %99, metadata !3123, metadata !DIExpression()), !dbg !3300
  %100 = icmp eq i64 %99, 0, !dbg !3302
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3302
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %102, metadata !3044, metadata !DIExpression()), !dbg !3304
  %103 = icmp eq ptr %102, null, !dbg !3306
  br i1 %103, label %104, label %105, !dbg !3307

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !3308
  unreachable, !dbg !3308

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !792, metadata !DIExpression()), !dbg !3270
  store i64 %98, ptr %1, align 8, !dbg !3309, !tbaa !1132
  ret ptr %102, !dbg !3310
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3311 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3313, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %0, metadata !3315, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 1, metadata !3318, metadata !DIExpression()), !dbg !3319
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3321
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3322
  %3 = icmp eq ptr %2, null, !dbg !3324
  br i1 %3, label %4, label %5, !dbg !3325

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3326
  unreachable, !dbg !3326

5:                                                ; preds = %1
  ret ptr %2, !dbg !3327
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3328 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3316 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3315, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()), !dbg !3329
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3330
  call void @llvm.dbg.value(metadata ptr %3, metadata !3044, metadata !DIExpression()), !dbg !3331
  %4 = icmp eq ptr %3, null, !dbg !3333
  br i1 %4, label %5, label %6, !dbg !3334

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3335
  unreachable, !dbg !3335

6:                                                ; preds = %2
  ret ptr %3, !dbg !3336
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3337 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3339, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %0, metadata !3341, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 1, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %0, metadata !3347, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 1, metadata !3350, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %0, metadata !3347, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 1, metadata !3350, metadata !DIExpression()), !dbg !3351
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3353
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3354
  %3 = icmp eq ptr %2, null, !dbg !3356
  br i1 %3, label %4, label %5, !dbg !3357

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3358
  unreachable, !dbg !3358

5:                                                ; preds = %1
  ret ptr %2, !dbg !3359
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3342 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3341, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %0, metadata !3347, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %1, metadata !3350, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %0, metadata !3347, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %1, metadata !3350, metadata !DIExpression()), !dbg !3361
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3363
  call void @llvm.dbg.value(metadata ptr %3, metadata !3044, metadata !DIExpression()), !dbg !3364
  %4 = icmp eq ptr %3, null, !dbg !3366
  br i1 %4, label %5, label %6, !dbg !3367

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3368
  unreachable, !dbg !3368

6:                                                ; preds = %2
  ret ptr %3, !dbg !3369
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3370 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3374, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3377
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3379
  call void @llvm.dbg.value(metadata ptr %3, metadata !3044, metadata !DIExpression()), !dbg !3380
  %4 = icmp eq ptr %3, null, !dbg !3382
  br i1 %4, label %5, label %6, !dbg !3383

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3384
  unreachable, !dbg !3384

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3385, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata ptr %0, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3395
  ret ptr %3, !dbg !3396
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3397 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3401, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1, metadata !3084, metadata !DIExpression()), !dbg !3406
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %3, metadata !3044, metadata !DIExpression()), !dbg !3409
  %4 = icmp eq ptr %3, null, !dbg !3411
  br i1 %4, label %5, label %6, !dbg !3412

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3413
  unreachable, !dbg !3413

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3385, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata ptr %0, metadata !3391, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3414
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3416
  ret ptr %3, !dbg !3417
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3418 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3422, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %1, metadata !3423, metadata !DIExpression()), !dbg !3425
  %3 = add nsw i64 %1, 1, !dbg !3426
  call void @llvm.dbg.value(metadata i64 %3, metadata !3082, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %3, metadata !3084, metadata !DIExpression()), !dbg !3429
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3431
  call void @llvm.dbg.value(metadata ptr %4, metadata !3044, metadata !DIExpression()), !dbg !3432
  %5 = icmp eq ptr %4, null, !dbg !3434
  br i1 %5, label %6, label %7, !dbg !3435

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3436
  unreachable, !dbg !3436

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3424, metadata !DIExpression()), !dbg !3425
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3437
  store i8 0, ptr %8, align 1, !dbg !3438, !tbaa !924
  call void @llvm.dbg.value(metadata ptr %4, metadata !3385, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata ptr %0, metadata !3391, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3439
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3441
  ret ptr %4, !dbg !3442
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3443 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3446
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3447
  %3 = add i64 %2, 1, !dbg !3448
  call void @llvm.dbg.value(metadata ptr %0, metadata !3374, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %3, metadata !3375, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %3, metadata !3068, metadata !DIExpression()), !dbg !3451
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3453
  call void @llvm.dbg.value(metadata ptr %4, metadata !3044, metadata !DIExpression()), !dbg !3454
  %5 = icmp eq ptr %4, null, !dbg !3456
  br i1 %5, label %6, label %7, !dbg !3457

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3458
  unreachable, !dbg !3458

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3385, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %0, metadata !3391, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %3, metadata !3392, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3461
  ret ptr %4, !dbg !3462
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3463 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3467, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %1, metadata !3465, metadata !DIExpression()), !dbg !3468
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.116, ptr noundef nonnull @.str.2.117, i32 noundef 5) #38, !dbg !3467
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef %2) #38, !dbg !3467
  %3 = icmp eq i32 %1, 0, !dbg !3467
  tail call void @llvm.assume(i1 %3), !dbg !3467
  tail call void @abort() #40, !dbg !3469
  unreachable, !dbg !3469
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtol(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #34 !dbg !3470 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3476, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %1, metadata !3477, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %2, metadata !3478, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %3, metadata !3479, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %4, metadata !3480, metadata !DIExpression()), !dbg !3490
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #38, !dbg !3491
  %7 = icmp eq ptr %1, null, !dbg !3492
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !3492
  call void @llvm.dbg.value(metadata ptr %8, metadata !3482, metadata !DIExpression()), !dbg !3490
  %9 = tail call ptr @__errno_location() #41, !dbg !3493
  store i32 0, ptr %9, align 4, !dbg !3494, !tbaa !915
  %10 = call i64 @strtol(ptr noundef %0, ptr noundef %8, i32 noundef %2) #38, !dbg !3495
  call void @llvm.dbg.value(metadata i64 %10, metadata !3483, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3484, metadata !DIExpression()), !dbg !3490
  %11 = load ptr, ptr %8, align 8, !dbg !3496, !tbaa !844
  %12 = icmp eq ptr %11, %0, !dbg !3498
  br i1 %12, label %13, label %22, !dbg !3499

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !3500
  br i1 %14, label %990, label %15, !dbg !3503

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !3504, !tbaa !924
  %17 = icmp eq i8 %16, 0, !dbg !3504
  br i1 %17, label %990, label %18, !dbg !3505

18:                                               ; preds = %15
  %19 = zext i8 %16 to i32, !dbg !3504
  %20 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #39, !dbg !3506
  %21 = icmp eq ptr %20, null, !dbg !3506
  br i1 %21, label %990, label %29, !dbg !3507

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !3508, !tbaa !915
  switch i32 %23, label %990 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !3510

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !3484, metadata !DIExpression()), !dbg !3490
  br label %25, !dbg !3511

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !3490
  call void @llvm.dbg.value(metadata i32 %26, metadata !3484, metadata !DIExpression()), !dbg !3490
  %27 = icmp eq ptr %4, null, !dbg !3513
  br i1 %27, label %28, label %29, !dbg !3515

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !3483, metadata !DIExpression()), !dbg !3490
  store i64 %10, ptr %3, align 8, !dbg !3516, !tbaa !1132
  br label %990, !dbg !3518

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !3519, !tbaa !924
  %33 = icmp eq i8 %32, 0, !dbg !3520
  br i1 %33, label %987, label %34, !dbg !3521

34:                                               ; preds = %29
  %35 = zext i8 %32 to i32, !dbg !3519
  %36 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #39, !dbg !3522
  %37 = icmp eq ptr %36, null, !dbg !3522
  br i1 %37, label %38, label %40, !dbg !3524

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %10, metadata !3483, metadata !DIExpression()), !dbg !3490
  store i64 %31, ptr %3, align 8, !dbg !3525, !tbaa !1132
  %39 = or i32 %30, 2, !dbg !3527
  br label %990, !dbg !3528

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 1024, metadata !3485, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 1, metadata !3488, metadata !DIExpression()), !dbg !3529
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
  ], !dbg !3530

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #39, !dbg !3531
  %43 = icmp eq ptr %42, null, !dbg !3531
  br i1 %43, label %53, label %44, !dbg !3534

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3535
  %46 = load i8, ptr %45, align 1, !dbg !3535, !tbaa !924
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !3536

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !3537
  %49 = load i8, ptr %48, align 1, !dbg !3537, !tbaa !924
  %50 = icmp eq i8 %49, 66, !dbg !3540
  %51 = select i1 %50, i64 3, i64 1, !dbg !3541
  br label %53, !dbg !3541

52:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !3485, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 2, metadata !3488, metadata !DIExpression()), !dbg !3529
  br label %53, !dbg !3542

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ]
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3488, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 poison, metadata !3485, metadata !DIExpression()), !dbg !3529
  switch i8 %32, label %985 [
    i8 98, label %68
    i8 66, label %76
    i8 99, label %976
    i8 69, label %66
    i8 71, label %180
    i8 103, label %180
    i8 107, label %230
    i8 75, label %230
    i8 77, label %243
    i8 109, label %243
    i8 80, label %64
    i8 81, label %62
    i8 82, label %60
    i8 84, label %661
    i8 116, label %661
    i8 119, label %727
    i8 89, label %58
    i8 90, label %56
  ], !dbg !3543

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 7, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 6, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3562
  %57 = icmp slt i64 %31, 0, !dbg !3564
  br i1 %57, label %864, label %870, !dbg !3564

58:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 8, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 7, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3568
  %59 = icmp slt i64 %31, 0, !dbg !3570
  br i1 %59, label %736, label %742, !dbg !3570

60:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 9, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 8, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %61 = icmp slt i64 %31, 0, !dbg !3575
  br i1 %61, label %517, label %523, !dbg !3575

62:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 10, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 9, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %63 = icmp slt i64 %31, 0, !dbg !3580
  br i1 %63, label %357, label %363, !dbg !3580

64:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 5, metadata !3551, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 4, metadata !3551, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3583
  %65 = icmp slt i64 %31, 0, !dbg !3585
  br i1 %65, label %277, label %283, !dbg !3585

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 6, metadata !3551, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 5, metadata !3551, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3588
  %67 = icmp slt i64 %31, 0, !dbg !3590
  br i1 %67, label %84, label %90, !dbg !3590

68:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 512, metadata !3560, metadata !DIExpression()), !dbg !3591
  %69 = icmp slt i64 %31, 0, !dbg !3593
  br i1 %69, label %70, label %72, !dbg !3593

70:                                               ; preds = %68
  %71 = icmp ult i64 %31, -18014398509481984, !dbg !3593
  br i1 %71, label %976, label %74, !dbg !3593

72:                                               ; preds = %68
  %73 = icmp ugt i64 %31, 18014398509481983, !dbg !3593
  br i1 %73, label %976, label %74, !dbg !3593

74:                                               ; preds = %70, %72
  %75 = shl nsw i64 %31, 9, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %75, metadata !3561, metadata !DIExpression()), !dbg !3591
  br label %976, !dbg !3594

76:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 1024, metadata !3560, metadata !DIExpression()), !dbg !3595
  %77 = icmp slt i64 %31, 0, !dbg !3597
  br i1 %77, label %78, label %80, !dbg !3597

78:                                               ; preds = %76
  %79 = icmp ult i64 %31, -9007199254740992, !dbg !3597
  br i1 %79, label %976, label %82, !dbg !3597

80:                                               ; preds = %76
  %81 = icmp ugt i64 %31, 9007199254740991, !dbg !3597
  br i1 %81, label %976, label %82, !dbg !3597

82:                                               ; preds = %78, %80
  %83 = shl nsw i64 %31, 10, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %83, metadata !3561, metadata !DIExpression()), !dbg !3595
  br label %976, !dbg !3598

84:                                               ; preds = %66
  %85 = icmp eq i64 %31, -1, !dbg !3590
  br i1 %85, label %93, label %86, !dbg !3590

86:                                               ; preds = %84
  %87 = sub i64 0, %31, !dbg !3590
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3590
  %89 = icmp ult i64 %88, %54, !dbg !3590
  br i1 %89, label %101, label %93, !dbg !3590

90:                                               ; preds = %66
  %91 = udiv i64 9223372036854775807, %54, !dbg !3590
  %92 = icmp ult i64 %91, %31, !dbg !3590
  br i1 %92, label %96, label %93, !dbg !3590

93:                                               ; preds = %84, %86, %90
  %94 = mul i64 %31, %54, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %94, metadata !3561, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 4, metadata !3551, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3588
  %95 = icmp slt i64 %94, 0, !dbg !3590
  br i1 %95, label %101, label %96, !dbg !3590

96:                                               ; preds = %90, %93
  %97 = phi i32 [ 0, %93 ], [ 1, %90 ]
  %98 = phi i64 [ %94, %93 ], [ 9223372036854775807, %90 ]
  %99 = udiv i64 9223372036854775807, %54, !dbg !3590
  %100 = icmp ult i64 %99, %98, !dbg !3590
  br i1 %100, label %112, label %107, !dbg !3590

101:                                              ; preds = %86, %93
  %102 = phi i32 [ 0, %93 ], [ 1, %86 ]
  %103 = phi i64 [ %94, %93 ], [ -9223372036854775808, %86 ]
  %104 = sub i64 0, %103, !dbg !3590
  %105 = udiv i64 -9223372036854775808, %104, !dbg !3590
  %106 = icmp ult i64 %105, %54, !dbg !3590
  br i1 %106, label %117, label %107, !dbg !3590

107:                                              ; preds = %96, %101
  %108 = phi i32 [ %102, %101 ], [ %97, %96 ]
  %109 = phi i64 [ %103, %101 ], [ %98, %96 ]
  %110 = mul i64 %109, %54, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %110, metadata !3561, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %108, metadata !3544, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 3, metadata !3551, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3588
  %111 = icmp slt i64 %110, 0, !dbg !3590
  br i1 %111, label %117, label %112, !dbg !3590

112:                                              ; preds = %96, %107
  %113 = phi i32 [ %108, %107 ], [ 1, %96 ]
  %114 = phi i64 [ %110, %107 ], [ 9223372036854775807, %96 ]
  %115 = udiv i64 9223372036854775807, %54, !dbg !3590
  %116 = icmp ult i64 %115, %114, !dbg !3590
  br i1 %116, label %128, label %123, !dbg !3590

117:                                              ; preds = %101, %107
  %118 = phi i32 [ %108, %107 ], [ 1, %101 ]
  %119 = phi i64 [ %110, %107 ], [ -9223372036854775808, %101 ]
  %120 = sub i64 0, %119, !dbg !3590
  %121 = udiv i64 -9223372036854775808, %120, !dbg !3590
  %122 = icmp ult i64 %121, %54, !dbg !3590
  br i1 %122, label %133, label %123, !dbg !3590

123:                                              ; preds = %112, %117
  %124 = phi i32 [ %118, %117 ], [ %113, %112 ]
  %125 = phi i64 [ %119, %117 ], [ %114, %112 ]
  %126 = mul i64 %125, %54, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %126, metadata !3561, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %124, metadata !3544, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 2, metadata !3551, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3588
  %127 = icmp slt i64 %126, 0, !dbg !3590
  br i1 %127, label %133, label %128, !dbg !3590

128:                                              ; preds = %112, %123
  %129 = phi i32 [ %124, %123 ], [ 1, %112 ]
  %130 = phi i64 [ %126, %123 ], [ 9223372036854775807, %112 ]
  %131 = udiv i64 9223372036854775807, %54, !dbg !3590
  %132 = icmp ult i64 %131, %130, !dbg !3590
  br i1 %132, label %144, label %139, !dbg !3590

133:                                              ; preds = %117, %123
  %134 = phi i32 [ %124, %123 ], [ 1, %117 ]
  %135 = phi i64 [ %126, %123 ], [ -9223372036854775808, %117 ]
  %136 = sub i64 0, %135, !dbg !3590
  %137 = udiv i64 -9223372036854775808, %136, !dbg !3590
  %138 = icmp ult i64 %137, %54, !dbg !3590
  br i1 %138, label %149, label %139, !dbg !3590

139:                                              ; preds = %128, %133
  %140 = phi i32 [ %134, %133 ], [ %129, %128 ]
  %141 = phi i64 [ %135, %133 ], [ %130, %128 ]
  %142 = mul i64 %141, %54, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %142, metadata !3561, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %140, metadata !3544, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3588
  %143 = icmp slt i64 %142, 0, !dbg !3590
  br i1 %143, label %149, label %144, !dbg !3590

144:                                              ; preds = %128, %139
  %145 = phi i32 [ %140, %139 ], [ 1, %128 ]
  %146 = phi i64 [ %142, %139 ], [ 9223372036854775807, %128 ]
  %147 = udiv i64 9223372036854775807, %54, !dbg !3590
  %148 = icmp ult i64 %147, %146, !dbg !3590
  br i1 %148, label %160, label %155, !dbg !3590

149:                                              ; preds = %133, %139
  %150 = phi i32 [ %140, %139 ], [ 1, %133 ]
  %151 = phi i64 [ %142, %139 ], [ -9223372036854775808, %133 ]
  %152 = sub i64 0, %151, !dbg !3590
  %153 = udiv i64 -9223372036854775808, %152, !dbg !3590
  %154 = icmp ult i64 %153, %54, !dbg !3590
  br i1 %154, label %165, label %155, !dbg !3590

155:                                              ; preds = %144, %149
  %156 = phi i32 [ %150, %149 ], [ %145, %144 ]
  %157 = phi i64 [ %151, %149 ], [ %146, %144 ]
  %158 = mul i64 %157, %54, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %158, metadata !3561, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %156, metadata !3544, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3588
  %159 = icmp slt i64 %158, 0, !dbg !3590
  br i1 %159, label %165, label %160, !dbg !3590

160:                                              ; preds = %144, %155
  %161 = phi i32 [ %156, %155 ], [ 1, %144 ]
  %162 = phi i64 [ %158, %155 ], [ 9223372036854775807, %144 ]
  %163 = udiv i64 9223372036854775807, %54, !dbg !3590
  %164 = icmp ult i64 %163, %162, !dbg !3590
  br i1 %164, label %175, label %171, !dbg !3590

165:                                              ; preds = %149, %155
  %166 = phi i32 [ %156, %155 ], [ 1, %149 ]
  %167 = phi i64 [ %158, %155 ], [ -9223372036854775808, %149 ]
  %168 = sub i64 0, %167, !dbg !3590
  %169 = udiv i64 -9223372036854775808, %168, !dbg !3590
  %170 = icmp ult i64 %169, %54, !dbg !3590
  br i1 %170, label %175, label %171, !dbg !3590

171:                                              ; preds = %165, %160
  %172 = phi i32 [ %166, %165 ], [ %161, %160 ]
  %173 = phi i64 [ %167, %165 ], [ %162, %160 ]
  %174 = mul i64 %173, %54, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %174, metadata !3561, metadata !DIExpression()), !dbg !3588
  br label %175, !dbg !3599

175:                                              ; preds = %171, %165, %160
  %176 = phi i32 [ %172, %171 ], [ %161, %160 ], [ %166, %165 ]
  %177 = phi i64 [ %174, %171 ], [ 9223372036854775807, %160 ], [ -9223372036854775808, %165 ], !dbg !3588
  %178 = phi i32 [ 0, %171 ], [ 1, %160 ], [ 1, %165 ], !dbg !3588
  %179 = or i32 %178, %176, !dbg !3600
  call void @llvm.dbg.value(metadata i32 %179, metadata !3544, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3586
  br label %976, !dbg !3601

180:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3549, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 poison, metadata !3550, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 2, metadata !3551, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3604
  %181 = icmp slt i64 %31, 0, !dbg !3606
  br i1 %181, label %182, label %188, !dbg !3606

182:                                              ; preds = %180
  %183 = icmp eq i64 %31, -1, !dbg !3606
  br i1 %183, label %191, label %184, !dbg !3606

184:                                              ; preds = %182
  %185 = sub i64 0, %31, !dbg !3606
  %186 = udiv i64 -9223372036854775808, %185, !dbg !3606
  %187 = icmp ult i64 %186, %54, !dbg !3606
  br i1 %187, label %199, label %191, !dbg !3606

188:                                              ; preds = %180
  %189 = udiv i64 9223372036854775807, %54, !dbg !3606
  %190 = icmp ult i64 %189, %31, !dbg !3606
  br i1 %190, label %194, label %191, !dbg !3606

191:                                              ; preds = %182, %184, %188
  %192 = mul i64 %31, %54, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %192, metadata !3561, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3604
  %193 = icmp slt i64 %192, 0, !dbg !3606
  br i1 %193, label %199, label %194, !dbg !3606

194:                                              ; preds = %188, %191
  %195 = phi i32 [ 0, %191 ], [ 1, %188 ]
  %196 = phi i64 [ %192, %191 ], [ 9223372036854775807, %188 ]
  %197 = udiv i64 9223372036854775807, %54, !dbg !3606
  %198 = icmp ult i64 %197, %196, !dbg !3606
  br i1 %198, label %210, label %205, !dbg !3606

199:                                              ; preds = %184, %191
  %200 = phi i32 [ 0, %191 ], [ 1, %184 ]
  %201 = phi i64 [ %192, %191 ], [ -9223372036854775808, %184 ]
  %202 = sub i64 0, %201, !dbg !3606
  %203 = udiv i64 -9223372036854775808, %202, !dbg !3606
  %204 = icmp ult i64 %203, %54, !dbg !3606
  br i1 %204, label %215, label %205, !dbg !3606

205:                                              ; preds = %194, %199
  %206 = phi i32 [ %200, %199 ], [ %195, %194 ]
  %207 = phi i64 [ %201, %199 ], [ %196, %194 ]
  %208 = mul i64 %207, %54, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %208, metadata !3561, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %206, metadata !3544, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3604
  %209 = icmp slt i64 %208, 0, !dbg !3606
  br i1 %209, label %215, label %210, !dbg !3606

210:                                              ; preds = %194, %205
  %211 = phi i32 [ %206, %205 ], [ 1, %194 ]
  %212 = phi i64 [ %208, %205 ], [ 9223372036854775807, %194 ]
  %213 = udiv i64 9223372036854775807, %54, !dbg !3606
  %214 = icmp ult i64 %213, %212, !dbg !3606
  br i1 %214, label %225, label %221, !dbg !3606

215:                                              ; preds = %199, %205
  %216 = phi i32 [ %206, %205 ], [ 1, %199 ]
  %217 = phi i64 [ %208, %205 ], [ -9223372036854775808, %199 ]
  %218 = sub i64 0, %217, !dbg !3606
  %219 = udiv i64 -9223372036854775808, %218, !dbg !3606
  %220 = icmp ult i64 %219, %54, !dbg !3606
  br i1 %220, label %225, label %221, !dbg !3606

221:                                              ; preds = %215, %210
  %222 = phi i32 [ %216, %215 ], [ %211, %210 ]
  %223 = phi i64 [ %217, %215 ], [ %212, %210 ]
  %224 = mul i64 %223, %54, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %224, metadata !3561, metadata !DIExpression()), !dbg !3604
  br label %225, !dbg !3607

225:                                              ; preds = %221, %215, %210
  %226 = phi i32 [ %222, %221 ], [ %211, %210 ], [ %216, %215 ]
  %227 = phi i64 [ %224, %221 ], [ 9223372036854775807, %210 ], [ -9223372036854775808, %215 ], !dbg !3604
  %228 = phi i32 [ 0, %221 ], [ 1, %210 ], [ 1, %215 ], !dbg !3604
  %229 = or i32 %228, %226, !dbg !3608
  call void @llvm.dbg.value(metadata i32 %229, metadata !3544, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3602
  br label %976, !dbg !3601

230:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3549, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 poison, metadata !3550, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3611
  %231 = icmp slt i64 %31, 0, !dbg !3613
  br i1 %231, label %232, label %238, !dbg !3613

232:                                              ; preds = %230
  %233 = icmp eq i64 %31, -1, !dbg !3613
  br i1 %233, label %241, label %234, !dbg !3613

234:                                              ; preds = %232
  %235 = sub i64 0, %31, !dbg !3613
  %236 = udiv i64 -9223372036854775808, %235, !dbg !3613
  %237 = icmp ult i64 %236, %54, !dbg !3613
  br i1 %237, label %976, label %241, !dbg !3613

238:                                              ; preds = %230
  %239 = udiv i64 9223372036854775807, %54, !dbg !3613
  %240 = icmp ult i64 %239, %31, !dbg !3613
  br i1 %240, label %976, label %241, !dbg !3613

241:                                              ; preds = %238, %234, %232
  %242 = mul i64 %31, %54, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %242, metadata !3561, metadata !DIExpression()), !dbg !3611
  br label %976, !dbg !3614

243:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3549, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 poison, metadata !3550, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3617
  %244 = icmp slt i64 %31, 0, !dbg !3619
  br i1 %244, label %245, label %251, !dbg !3619

245:                                              ; preds = %243
  %246 = icmp eq i64 %31, -1, !dbg !3619
  br i1 %246, label %254, label %247, !dbg !3619

247:                                              ; preds = %245
  %248 = sub i64 0, %31, !dbg !3619
  %249 = udiv i64 -9223372036854775808, %248, !dbg !3619
  %250 = icmp ult i64 %249, %54, !dbg !3619
  br i1 %250, label %262, label %254, !dbg !3619

251:                                              ; preds = %243
  %252 = udiv i64 9223372036854775807, %54, !dbg !3619
  %253 = icmp ult i64 %252, %31, !dbg !3619
  br i1 %253, label %257, label %254, !dbg !3619

254:                                              ; preds = %245, %247, %251
  %255 = mul i64 %31, %54, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %255, metadata !3561, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3617
  %256 = icmp slt i64 %255, 0, !dbg !3619
  br i1 %256, label %262, label %257, !dbg !3619

257:                                              ; preds = %251, %254
  %258 = phi i32 [ 0, %254 ], [ 1, %251 ]
  %259 = phi i64 [ %255, %254 ], [ 9223372036854775807, %251 ]
  %260 = udiv i64 9223372036854775807, %54, !dbg !3619
  %261 = icmp ult i64 %260, %259, !dbg !3619
  br i1 %261, label %272, label %268, !dbg !3619

262:                                              ; preds = %247, %254
  %263 = phi i32 [ 0, %254 ], [ 1, %247 ]
  %264 = phi i64 [ %255, %254 ], [ -9223372036854775808, %247 ]
  %265 = sub i64 0, %264, !dbg !3619
  %266 = udiv i64 -9223372036854775808, %265, !dbg !3619
  %267 = icmp ult i64 %266, %54, !dbg !3619
  br i1 %267, label %272, label %268, !dbg !3619

268:                                              ; preds = %262, %257
  %269 = phi i32 [ %263, %262 ], [ %258, %257 ]
  %270 = phi i64 [ %264, %262 ], [ %259, %257 ]
  %271 = mul i64 %270, %54, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %271, metadata !3561, metadata !DIExpression()), !dbg !3617
  br label %272, !dbg !3620

272:                                              ; preds = %268, %262, %257
  %273 = phi i32 [ %269, %268 ], [ %258, %257 ], [ %263, %262 ]
  %274 = phi i64 [ %271, %268 ], [ 9223372036854775807, %257 ], [ -9223372036854775808, %262 ], !dbg !3617
  %275 = phi i32 [ 0, %268 ], [ 1, %257 ], [ 1, %262 ], !dbg !3617
  %276 = or i32 %275, %273, !dbg !3621
  call void @llvm.dbg.value(metadata i32 %276, metadata !3544, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3615
  br label %976, !dbg !3601

277:                                              ; preds = %64
  %278 = icmp eq i64 %31, -1, !dbg !3585
  br i1 %278, label %286, label %279, !dbg !3585

279:                                              ; preds = %277
  %280 = sub i64 0, %31, !dbg !3585
  %281 = udiv i64 -9223372036854775808, %280, !dbg !3585
  %282 = icmp ult i64 %281, %54, !dbg !3585
  br i1 %282, label %294, label %286, !dbg !3585

283:                                              ; preds = %64
  %284 = udiv i64 9223372036854775807, %54, !dbg !3585
  %285 = icmp ult i64 %284, %31, !dbg !3585
  br i1 %285, label %289, label %286, !dbg !3585

286:                                              ; preds = %277, %279, %283
  %287 = mul i64 %31, %54, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %287, metadata !3561, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 3, metadata !3551, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3583
  %288 = icmp slt i64 %287, 0, !dbg !3585
  br i1 %288, label %294, label %289, !dbg !3585

289:                                              ; preds = %283, %286
  %290 = phi i32 [ 0, %286 ], [ 1, %283 ]
  %291 = phi i64 [ %287, %286 ], [ 9223372036854775807, %283 ]
  %292 = udiv i64 9223372036854775807, %54, !dbg !3585
  %293 = icmp ult i64 %292, %291, !dbg !3585
  br i1 %293, label %305, label %300, !dbg !3585

294:                                              ; preds = %279, %286
  %295 = phi i32 [ 0, %286 ], [ 1, %279 ]
  %296 = phi i64 [ %287, %286 ], [ -9223372036854775808, %279 ]
  %297 = sub i64 0, %296, !dbg !3585
  %298 = udiv i64 -9223372036854775808, %297, !dbg !3585
  %299 = icmp ult i64 %298, %54, !dbg !3585
  br i1 %299, label %310, label %300, !dbg !3585

300:                                              ; preds = %289, %294
  %301 = phi i32 [ %295, %294 ], [ %290, %289 ]
  %302 = phi i64 [ %296, %294 ], [ %291, %289 ]
  %303 = mul i64 %302, %54, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %303, metadata !3561, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %301, metadata !3544, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 2, metadata !3551, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3583
  %304 = icmp slt i64 %303, 0, !dbg !3585
  br i1 %304, label %310, label %305, !dbg !3585

305:                                              ; preds = %289, %300
  %306 = phi i32 [ %301, %300 ], [ 1, %289 ]
  %307 = phi i64 [ %303, %300 ], [ 9223372036854775807, %289 ]
  %308 = udiv i64 9223372036854775807, %54, !dbg !3585
  %309 = icmp ult i64 %308, %307, !dbg !3585
  br i1 %309, label %321, label %316, !dbg !3585

310:                                              ; preds = %294, %300
  %311 = phi i32 [ %301, %300 ], [ 1, %294 ]
  %312 = phi i64 [ %303, %300 ], [ -9223372036854775808, %294 ]
  %313 = sub i64 0, %312, !dbg !3585
  %314 = udiv i64 -9223372036854775808, %313, !dbg !3585
  %315 = icmp ult i64 %314, %54, !dbg !3585
  br i1 %315, label %326, label %316, !dbg !3585

316:                                              ; preds = %305, %310
  %317 = phi i32 [ %311, %310 ], [ %306, %305 ]
  %318 = phi i64 [ %312, %310 ], [ %307, %305 ]
  %319 = mul i64 %318, %54, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %319, metadata !3561, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %317, metadata !3544, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3583
  %320 = icmp slt i64 %319, 0, !dbg !3585
  br i1 %320, label %326, label %321, !dbg !3585

321:                                              ; preds = %305, %316
  %322 = phi i32 [ %317, %316 ], [ 1, %305 ]
  %323 = phi i64 [ %319, %316 ], [ 9223372036854775807, %305 ]
  %324 = udiv i64 9223372036854775807, %54, !dbg !3585
  %325 = icmp ult i64 %324, %323, !dbg !3585
  br i1 %325, label %337, label %332, !dbg !3585

326:                                              ; preds = %310, %316
  %327 = phi i32 [ %317, %316 ], [ 1, %310 ]
  %328 = phi i64 [ %319, %316 ], [ -9223372036854775808, %310 ]
  %329 = sub i64 0, %328, !dbg !3585
  %330 = udiv i64 -9223372036854775808, %329, !dbg !3585
  %331 = icmp ult i64 %330, %54, !dbg !3585
  br i1 %331, label %342, label %332, !dbg !3585

332:                                              ; preds = %321, %326
  %333 = phi i32 [ %327, %326 ], [ %322, %321 ]
  %334 = phi i64 [ %328, %326 ], [ %323, %321 ]
  %335 = mul i64 %334, %54, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %335, metadata !3561, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %333, metadata !3544, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3583
  %336 = icmp slt i64 %335, 0, !dbg !3585
  br i1 %336, label %342, label %337, !dbg !3585

337:                                              ; preds = %321, %332
  %338 = phi i32 [ %333, %332 ], [ 1, %321 ]
  %339 = phi i64 [ %335, %332 ], [ 9223372036854775807, %321 ]
  %340 = udiv i64 9223372036854775807, %54, !dbg !3585
  %341 = icmp ult i64 %340, %339, !dbg !3585
  br i1 %341, label %352, label %348, !dbg !3585

342:                                              ; preds = %326, %332
  %343 = phi i32 [ %333, %332 ], [ 1, %326 ]
  %344 = phi i64 [ %335, %332 ], [ -9223372036854775808, %326 ]
  %345 = sub i64 0, %344, !dbg !3585
  %346 = udiv i64 -9223372036854775808, %345, !dbg !3585
  %347 = icmp ult i64 %346, %54, !dbg !3585
  br i1 %347, label %352, label %348, !dbg !3585

348:                                              ; preds = %342, %337
  %349 = phi i32 [ %343, %342 ], [ %338, %337 ]
  %350 = phi i64 [ %344, %342 ], [ %339, %337 ]
  %351 = mul i64 %350, %54, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %351, metadata !3561, metadata !DIExpression()), !dbg !3583
  br label %352, !dbg !3622

352:                                              ; preds = %348, %342, %337
  %353 = phi i32 [ %349, %348 ], [ %338, %337 ], [ %343, %342 ]
  %354 = phi i64 [ %351, %348 ], [ 9223372036854775807, %337 ], [ -9223372036854775808, %342 ], !dbg !3583
  %355 = phi i32 [ 0, %348 ], [ 1, %337 ], [ 1, %342 ], !dbg !3583
  %356 = or i32 %355, %353, !dbg !3623
  call void @llvm.dbg.value(metadata i32 %356, metadata !3544, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3581
  br label %976, !dbg !3601

357:                                              ; preds = %62
  %358 = icmp eq i64 %31, -1, !dbg !3580
  br i1 %358, label %366, label %359, !dbg !3580

359:                                              ; preds = %357
  %360 = sub i64 0, %31, !dbg !3580
  %361 = udiv i64 -9223372036854775808, %360, !dbg !3580
  %362 = icmp ult i64 %361, %54, !dbg !3580
  br i1 %362, label %374, label %366, !dbg !3580

363:                                              ; preds = %62
  %364 = udiv i64 9223372036854775807, %54, !dbg !3580
  %365 = icmp ult i64 %364, %31, !dbg !3580
  br i1 %365, label %369, label %366, !dbg !3580

366:                                              ; preds = %357, %359, %363
  %367 = mul i64 %31, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %367, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 8, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %368 = icmp slt i64 %367, 0, !dbg !3580
  br i1 %368, label %374, label %369, !dbg !3580

369:                                              ; preds = %363, %366
  %370 = phi i32 [ 0, %366 ], [ 1, %363 ]
  %371 = phi i64 [ %367, %366 ], [ 9223372036854775807, %363 ]
  %372 = udiv i64 9223372036854775807, %54, !dbg !3580
  %373 = icmp ult i64 %372, %371, !dbg !3580
  br i1 %373, label %385, label %380, !dbg !3580

374:                                              ; preds = %359, %366
  %375 = phi i32 [ 0, %366 ], [ 1, %359 ]
  %376 = phi i64 [ %367, %366 ], [ -9223372036854775808, %359 ]
  %377 = sub i64 0, %376, !dbg !3580
  %378 = udiv i64 -9223372036854775808, %377, !dbg !3580
  %379 = icmp ult i64 %378, %54, !dbg !3580
  br i1 %379, label %390, label %380, !dbg !3580

380:                                              ; preds = %369, %374
  %381 = phi i32 [ %375, %374 ], [ %370, %369 ]
  %382 = phi i64 [ %376, %374 ], [ %371, %369 ]
  %383 = mul i64 %382, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %383, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %381, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 7, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %384 = icmp slt i64 %383, 0, !dbg !3580
  br i1 %384, label %390, label %385, !dbg !3580

385:                                              ; preds = %369, %380
  %386 = phi i32 [ %381, %380 ], [ 1, %369 ]
  %387 = phi i64 [ %383, %380 ], [ 9223372036854775807, %369 ]
  %388 = udiv i64 9223372036854775807, %54, !dbg !3580
  %389 = icmp ult i64 %388, %387, !dbg !3580
  br i1 %389, label %401, label %396, !dbg !3580

390:                                              ; preds = %374, %380
  %391 = phi i32 [ %381, %380 ], [ 1, %374 ]
  %392 = phi i64 [ %383, %380 ], [ -9223372036854775808, %374 ]
  %393 = sub i64 0, %392, !dbg !3580
  %394 = udiv i64 -9223372036854775808, %393, !dbg !3580
  %395 = icmp ult i64 %394, %54, !dbg !3580
  br i1 %395, label %406, label %396, !dbg !3580

396:                                              ; preds = %385, %390
  %397 = phi i32 [ %391, %390 ], [ %386, %385 ]
  %398 = phi i64 [ %392, %390 ], [ %387, %385 ]
  %399 = mul i64 %398, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %399, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %397, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 6, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %400 = icmp slt i64 %399, 0, !dbg !3580
  br i1 %400, label %406, label %401, !dbg !3580

401:                                              ; preds = %385, %396
  %402 = phi i32 [ %397, %396 ], [ 1, %385 ]
  %403 = phi i64 [ %399, %396 ], [ 9223372036854775807, %385 ]
  %404 = udiv i64 9223372036854775807, %54, !dbg !3580
  %405 = icmp ult i64 %404, %403, !dbg !3580
  br i1 %405, label %417, label %412, !dbg !3580

406:                                              ; preds = %390, %396
  %407 = phi i32 [ %397, %396 ], [ 1, %390 ]
  %408 = phi i64 [ %399, %396 ], [ -9223372036854775808, %390 ]
  %409 = sub i64 0, %408, !dbg !3580
  %410 = udiv i64 -9223372036854775808, %409, !dbg !3580
  %411 = icmp ult i64 %410, %54, !dbg !3580
  br i1 %411, label %422, label %412, !dbg !3580

412:                                              ; preds = %401, %406
  %413 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %414 = phi i64 [ %408, %406 ], [ %403, %401 ]
  %415 = mul i64 %414, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %415, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %413, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 5, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %416 = icmp slt i64 %415, 0, !dbg !3580
  br i1 %416, label %422, label %417, !dbg !3580

417:                                              ; preds = %401, %412
  %418 = phi i32 [ %413, %412 ], [ 1, %401 ]
  %419 = phi i64 [ %415, %412 ], [ 9223372036854775807, %401 ]
  %420 = udiv i64 9223372036854775807, %54, !dbg !3580
  %421 = icmp ult i64 %420, %419, !dbg !3580
  br i1 %421, label %433, label %428, !dbg !3580

422:                                              ; preds = %406, %412
  %423 = phi i32 [ %413, %412 ], [ 1, %406 ]
  %424 = phi i64 [ %415, %412 ], [ -9223372036854775808, %406 ]
  %425 = sub i64 0, %424, !dbg !3580
  %426 = udiv i64 -9223372036854775808, %425, !dbg !3580
  %427 = icmp ult i64 %426, %54, !dbg !3580
  br i1 %427, label %438, label %428, !dbg !3580

428:                                              ; preds = %417, %422
  %429 = phi i32 [ %423, %422 ], [ %418, %417 ]
  %430 = phi i64 [ %424, %422 ], [ %419, %417 ]
  %431 = mul i64 %430, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %431, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %429, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 4, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %432 = icmp slt i64 %431, 0, !dbg !3580
  br i1 %432, label %438, label %433, !dbg !3580

433:                                              ; preds = %417, %428
  %434 = phi i32 [ %429, %428 ], [ 1, %417 ]
  %435 = phi i64 [ %431, %428 ], [ 9223372036854775807, %417 ]
  %436 = udiv i64 9223372036854775807, %54, !dbg !3580
  %437 = icmp ult i64 %436, %435, !dbg !3580
  br i1 %437, label %449, label %444, !dbg !3580

438:                                              ; preds = %422, %428
  %439 = phi i32 [ %429, %428 ], [ 1, %422 ]
  %440 = phi i64 [ %431, %428 ], [ -9223372036854775808, %422 ]
  %441 = sub i64 0, %440, !dbg !3580
  %442 = udiv i64 -9223372036854775808, %441, !dbg !3580
  %443 = icmp ult i64 %442, %54, !dbg !3580
  br i1 %443, label %454, label %444, !dbg !3580

444:                                              ; preds = %433, %438
  %445 = phi i32 [ %439, %438 ], [ %434, %433 ]
  %446 = phi i64 [ %440, %438 ], [ %435, %433 ]
  %447 = mul i64 %446, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %447, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %445, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 3, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %448 = icmp slt i64 %447, 0, !dbg !3580
  br i1 %448, label %454, label %449, !dbg !3580

449:                                              ; preds = %433, %444
  %450 = phi i32 [ %445, %444 ], [ 1, %433 ]
  %451 = phi i64 [ %447, %444 ], [ 9223372036854775807, %433 ]
  %452 = udiv i64 9223372036854775807, %54, !dbg !3580
  %453 = icmp ult i64 %452, %451, !dbg !3580
  br i1 %453, label %465, label %460, !dbg !3580

454:                                              ; preds = %438, %444
  %455 = phi i32 [ %445, %444 ], [ 1, %438 ]
  %456 = phi i64 [ %447, %444 ], [ -9223372036854775808, %438 ]
  %457 = sub i64 0, %456, !dbg !3580
  %458 = udiv i64 -9223372036854775808, %457, !dbg !3580
  %459 = icmp ult i64 %458, %54, !dbg !3580
  br i1 %459, label %470, label %460, !dbg !3580

460:                                              ; preds = %449, %454
  %461 = phi i32 [ %455, %454 ], [ %450, %449 ]
  %462 = phi i64 [ %456, %454 ], [ %451, %449 ]
  %463 = mul i64 %462, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %463, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %461, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 2, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %464 = icmp slt i64 %463, 0, !dbg !3580
  br i1 %464, label %470, label %465, !dbg !3580

465:                                              ; preds = %449, %460
  %466 = phi i32 [ %461, %460 ], [ 1, %449 ]
  %467 = phi i64 [ %463, %460 ], [ 9223372036854775807, %449 ]
  %468 = udiv i64 9223372036854775807, %54, !dbg !3580
  %469 = icmp ult i64 %468, %467, !dbg !3580
  br i1 %469, label %481, label %476, !dbg !3580

470:                                              ; preds = %454, %460
  %471 = phi i32 [ %461, %460 ], [ 1, %454 ]
  %472 = phi i64 [ %463, %460 ], [ -9223372036854775808, %454 ]
  %473 = sub i64 0, %472, !dbg !3580
  %474 = udiv i64 -9223372036854775808, %473, !dbg !3580
  %475 = icmp ult i64 %474, %54, !dbg !3580
  br i1 %475, label %486, label %476, !dbg !3580

476:                                              ; preds = %465, %470
  %477 = phi i32 [ %471, %470 ], [ %466, %465 ]
  %478 = phi i64 [ %472, %470 ], [ %467, %465 ]
  %479 = mul i64 %478, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %479, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %477, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %480 = icmp slt i64 %479, 0, !dbg !3580
  br i1 %480, label %486, label %481, !dbg !3580

481:                                              ; preds = %465, %476
  %482 = phi i32 [ %477, %476 ], [ 1, %465 ]
  %483 = phi i64 [ %479, %476 ], [ 9223372036854775807, %465 ]
  %484 = udiv i64 9223372036854775807, %54, !dbg !3580
  %485 = icmp ult i64 %484, %483, !dbg !3580
  br i1 %485, label %497, label %492, !dbg !3580

486:                                              ; preds = %470, %476
  %487 = phi i32 [ %477, %476 ], [ 1, %470 ]
  %488 = phi i64 [ %479, %476 ], [ -9223372036854775808, %470 ]
  %489 = sub i64 0, %488, !dbg !3580
  %490 = udiv i64 -9223372036854775808, %489, !dbg !3580
  %491 = icmp ult i64 %490, %54, !dbg !3580
  br i1 %491, label %502, label %492, !dbg !3580

492:                                              ; preds = %481, %486
  %493 = phi i32 [ %487, %486 ], [ %482, %481 ]
  %494 = phi i64 [ %488, %486 ], [ %483, %481 ]
  %495 = mul i64 %494, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %495, metadata !3561, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %493, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3578
  %496 = icmp slt i64 %495, 0, !dbg !3580
  br i1 %496, label %502, label %497, !dbg !3580

497:                                              ; preds = %481, %492
  %498 = phi i32 [ %493, %492 ], [ 1, %481 ]
  %499 = phi i64 [ %495, %492 ], [ 9223372036854775807, %481 ]
  %500 = udiv i64 9223372036854775807, %54, !dbg !3580
  %501 = icmp ult i64 %500, %499, !dbg !3580
  br i1 %501, label %512, label %508, !dbg !3580

502:                                              ; preds = %486, %492
  %503 = phi i32 [ %493, %492 ], [ 1, %486 ]
  %504 = phi i64 [ %495, %492 ], [ -9223372036854775808, %486 ]
  %505 = sub i64 0, %504, !dbg !3580
  %506 = udiv i64 -9223372036854775808, %505, !dbg !3580
  %507 = icmp ult i64 %506, %54, !dbg !3580
  br i1 %507, label %512, label %508, !dbg !3580

508:                                              ; preds = %502, %497
  %509 = phi i32 [ %503, %502 ], [ %498, %497 ]
  %510 = phi i64 [ %504, %502 ], [ %499, %497 ]
  %511 = mul i64 %510, %54, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %511, metadata !3561, metadata !DIExpression()), !dbg !3578
  br label %512, !dbg !3624

512:                                              ; preds = %508, %502, %497
  %513 = phi i32 [ %509, %508 ], [ %498, %497 ], [ %503, %502 ]
  %514 = phi i64 [ %511, %508 ], [ 9223372036854775807, %497 ], [ -9223372036854775808, %502 ], !dbg !3578
  %515 = phi i32 [ 0, %508 ], [ 1, %497 ], [ 1, %502 ], !dbg !3578
  %516 = or i32 %515, %513, !dbg !3625
  call void @llvm.dbg.value(metadata i32 %516, metadata !3544, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3576
  br label %976, !dbg !3601

517:                                              ; preds = %60
  %518 = icmp eq i64 %31, -1, !dbg !3575
  br i1 %518, label %526, label %519, !dbg !3575

519:                                              ; preds = %517
  %520 = sub i64 0, %31, !dbg !3575
  %521 = udiv i64 -9223372036854775808, %520, !dbg !3575
  %522 = icmp ult i64 %521, %54, !dbg !3575
  br i1 %522, label %534, label %526, !dbg !3575

523:                                              ; preds = %60
  %524 = udiv i64 9223372036854775807, %54, !dbg !3575
  %525 = icmp ult i64 %524, %31, !dbg !3575
  br i1 %525, label %529, label %526, !dbg !3575

526:                                              ; preds = %517, %519, %523
  %527 = mul i64 %31, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %527, metadata !3561, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 7, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %528 = icmp slt i64 %527, 0, !dbg !3575
  br i1 %528, label %534, label %529, !dbg !3575

529:                                              ; preds = %523, %526
  %530 = phi i32 [ 0, %526 ], [ 1, %523 ]
  %531 = phi i64 [ %527, %526 ], [ 9223372036854775807, %523 ]
  %532 = udiv i64 9223372036854775807, %54, !dbg !3575
  %533 = icmp ult i64 %532, %531, !dbg !3575
  br i1 %533, label %545, label %540, !dbg !3575

534:                                              ; preds = %519, %526
  %535 = phi i32 [ 0, %526 ], [ 1, %519 ]
  %536 = phi i64 [ %527, %526 ], [ -9223372036854775808, %519 ]
  %537 = sub i64 0, %536, !dbg !3575
  %538 = udiv i64 -9223372036854775808, %537, !dbg !3575
  %539 = icmp ult i64 %538, %54, !dbg !3575
  br i1 %539, label %550, label %540, !dbg !3575

540:                                              ; preds = %529, %534
  %541 = phi i32 [ %535, %534 ], [ %530, %529 ]
  %542 = phi i64 [ %536, %534 ], [ %531, %529 ]
  %543 = mul i64 %542, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %543, metadata !3561, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %541, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 6, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %544 = icmp slt i64 %543, 0, !dbg !3575
  br i1 %544, label %550, label %545, !dbg !3575

545:                                              ; preds = %529, %540
  %546 = phi i32 [ %541, %540 ], [ 1, %529 ]
  %547 = phi i64 [ %543, %540 ], [ 9223372036854775807, %529 ]
  %548 = udiv i64 9223372036854775807, %54, !dbg !3575
  %549 = icmp ult i64 %548, %547, !dbg !3575
  br i1 %549, label %561, label %556, !dbg !3575

550:                                              ; preds = %534, %540
  %551 = phi i32 [ %541, %540 ], [ 1, %534 ]
  %552 = phi i64 [ %543, %540 ], [ -9223372036854775808, %534 ]
  %553 = sub i64 0, %552, !dbg !3575
  %554 = udiv i64 -9223372036854775808, %553, !dbg !3575
  %555 = icmp ult i64 %554, %54, !dbg !3575
  br i1 %555, label %566, label %556, !dbg !3575

556:                                              ; preds = %545, %550
  %557 = phi i32 [ %551, %550 ], [ %546, %545 ]
  %558 = phi i64 [ %552, %550 ], [ %547, %545 ]
  %559 = mul i64 %558, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %559, metadata !3561, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %557, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 5, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %560 = icmp slt i64 %559, 0, !dbg !3575
  br i1 %560, label %566, label %561, !dbg !3575

561:                                              ; preds = %545, %556
  %562 = phi i32 [ %557, %556 ], [ 1, %545 ]
  %563 = phi i64 [ %559, %556 ], [ 9223372036854775807, %545 ]
  %564 = udiv i64 9223372036854775807, %54, !dbg !3575
  %565 = icmp ult i64 %564, %563, !dbg !3575
  br i1 %565, label %577, label %572, !dbg !3575

566:                                              ; preds = %550, %556
  %567 = phi i32 [ %557, %556 ], [ 1, %550 ]
  %568 = phi i64 [ %559, %556 ], [ -9223372036854775808, %550 ]
  %569 = sub i64 0, %568, !dbg !3575
  %570 = udiv i64 -9223372036854775808, %569, !dbg !3575
  %571 = icmp ult i64 %570, %54, !dbg !3575
  br i1 %571, label %582, label %572, !dbg !3575

572:                                              ; preds = %561, %566
  %573 = phi i32 [ %567, %566 ], [ %562, %561 ]
  %574 = phi i64 [ %568, %566 ], [ %563, %561 ]
  %575 = mul i64 %574, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %575, metadata !3561, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %573, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 4, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %576 = icmp slt i64 %575, 0, !dbg !3575
  br i1 %576, label %582, label %577, !dbg !3575

577:                                              ; preds = %561, %572
  %578 = phi i32 [ %573, %572 ], [ 1, %561 ]
  %579 = phi i64 [ %575, %572 ], [ 9223372036854775807, %561 ]
  %580 = udiv i64 9223372036854775807, %54, !dbg !3575
  %581 = icmp ult i64 %580, %579, !dbg !3575
  br i1 %581, label %593, label %588, !dbg !3575

582:                                              ; preds = %566, %572
  %583 = phi i32 [ %573, %572 ], [ 1, %566 ]
  %584 = phi i64 [ %575, %572 ], [ -9223372036854775808, %566 ]
  %585 = sub i64 0, %584, !dbg !3575
  %586 = udiv i64 -9223372036854775808, %585, !dbg !3575
  %587 = icmp ult i64 %586, %54, !dbg !3575
  br i1 %587, label %598, label %588, !dbg !3575

588:                                              ; preds = %577, %582
  %589 = phi i32 [ %583, %582 ], [ %578, %577 ]
  %590 = phi i64 [ %584, %582 ], [ %579, %577 ]
  %591 = mul i64 %590, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %591, metadata !3561, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %589, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 3, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %592 = icmp slt i64 %591, 0, !dbg !3575
  br i1 %592, label %598, label %593, !dbg !3575

593:                                              ; preds = %577, %588
  %594 = phi i32 [ %589, %588 ], [ 1, %577 ]
  %595 = phi i64 [ %591, %588 ], [ 9223372036854775807, %577 ]
  %596 = udiv i64 9223372036854775807, %54, !dbg !3575
  %597 = icmp ult i64 %596, %595, !dbg !3575
  br i1 %597, label %609, label %604, !dbg !3575

598:                                              ; preds = %582, %588
  %599 = phi i32 [ %589, %588 ], [ 1, %582 ]
  %600 = phi i64 [ %591, %588 ], [ -9223372036854775808, %582 ]
  %601 = sub i64 0, %600, !dbg !3575
  %602 = udiv i64 -9223372036854775808, %601, !dbg !3575
  %603 = icmp ult i64 %602, %54, !dbg !3575
  br i1 %603, label %614, label %604, !dbg !3575

604:                                              ; preds = %593, %598
  %605 = phi i32 [ %599, %598 ], [ %594, %593 ]
  %606 = phi i64 [ %600, %598 ], [ %595, %593 ]
  %607 = mul i64 %606, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %607, metadata !3561, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %605, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 2, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %608 = icmp slt i64 %607, 0, !dbg !3575
  br i1 %608, label %614, label %609, !dbg !3575

609:                                              ; preds = %593, %604
  %610 = phi i32 [ %605, %604 ], [ 1, %593 ]
  %611 = phi i64 [ %607, %604 ], [ 9223372036854775807, %593 ]
  %612 = udiv i64 9223372036854775807, %54, !dbg !3575
  %613 = icmp ult i64 %612, %611, !dbg !3575
  br i1 %613, label %625, label %620, !dbg !3575

614:                                              ; preds = %598, %604
  %615 = phi i32 [ %605, %604 ], [ 1, %598 ]
  %616 = phi i64 [ %607, %604 ], [ -9223372036854775808, %598 ]
  %617 = sub i64 0, %616, !dbg !3575
  %618 = udiv i64 -9223372036854775808, %617, !dbg !3575
  %619 = icmp ult i64 %618, %54, !dbg !3575
  br i1 %619, label %630, label %620, !dbg !3575

620:                                              ; preds = %609, %614
  %621 = phi i32 [ %615, %614 ], [ %610, %609 ]
  %622 = phi i64 [ %616, %614 ], [ %611, %609 ]
  %623 = mul i64 %622, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %623, metadata !3561, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %621, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %624 = icmp slt i64 %623, 0, !dbg !3575
  br i1 %624, label %630, label %625, !dbg !3575

625:                                              ; preds = %609, %620
  %626 = phi i32 [ %621, %620 ], [ 1, %609 ]
  %627 = phi i64 [ %623, %620 ], [ 9223372036854775807, %609 ]
  %628 = udiv i64 9223372036854775807, %54, !dbg !3575
  %629 = icmp ult i64 %628, %627, !dbg !3575
  br i1 %629, label %641, label %636, !dbg !3575

630:                                              ; preds = %614, %620
  %631 = phi i32 [ %621, %620 ], [ 1, %614 ]
  %632 = phi i64 [ %623, %620 ], [ -9223372036854775808, %614 ]
  %633 = sub i64 0, %632, !dbg !3575
  %634 = udiv i64 -9223372036854775808, %633, !dbg !3575
  %635 = icmp ult i64 %634, %54, !dbg !3575
  br i1 %635, label %646, label %636, !dbg !3575

636:                                              ; preds = %625, %630
  %637 = phi i32 [ %631, %630 ], [ %626, %625 ]
  %638 = phi i64 [ %632, %630 ], [ %627, %625 ]
  %639 = mul i64 %638, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %639, metadata !3561, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %637, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3573
  %640 = icmp slt i64 %639, 0, !dbg !3575
  br i1 %640, label %646, label %641, !dbg !3575

641:                                              ; preds = %625, %636
  %642 = phi i32 [ %637, %636 ], [ 1, %625 ]
  %643 = phi i64 [ %639, %636 ], [ 9223372036854775807, %625 ]
  %644 = udiv i64 9223372036854775807, %54, !dbg !3575
  %645 = icmp ult i64 %644, %643, !dbg !3575
  br i1 %645, label %656, label %652, !dbg !3575

646:                                              ; preds = %630, %636
  %647 = phi i32 [ %637, %636 ], [ 1, %630 ]
  %648 = phi i64 [ %639, %636 ], [ -9223372036854775808, %630 ]
  %649 = sub i64 0, %648, !dbg !3575
  %650 = udiv i64 -9223372036854775808, %649, !dbg !3575
  %651 = icmp ult i64 %650, %54, !dbg !3575
  br i1 %651, label %656, label %652, !dbg !3575

652:                                              ; preds = %646, %641
  %653 = phi i32 [ %647, %646 ], [ %642, %641 ]
  %654 = phi i64 [ %648, %646 ], [ %643, %641 ]
  %655 = mul i64 %654, %54, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %655, metadata !3561, metadata !DIExpression()), !dbg !3573
  br label %656, !dbg !3626

656:                                              ; preds = %652, %646, %641
  %657 = phi i32 [ %653, %652 ], [ %642, %641 ], [ %647, %646 ]
  %658 = phi i64 [ %655, %652 ], [ 9223372036854775807, %641 ], [ -9223372036854775808, %646 ], !dbg !3573
  %659 = phi i32 [ 0, %652 ], [ 1, %641 ], [ 1, %646 ], !dbg !3573
  %660 = or i32 %659, %657, !dbg !3627
  call void @llvm.dbg.value(metadata i32 %660, metadata !3544, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3571
  br label %976, !dbg !3601

661:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3549, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 poison, metadata !3550, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 3, metadata !3551, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3630
  %662 = icmp slt i64 %31, 0, !dbg !3632
  br i1 %662, label %663, label %669, !dbg !3632

663:                                              ; preds = %661
  %664 = icmp eq i64 %31, -1, !dbg !3632
  br i1 %664, label %672, label %665, !dbg !3632

665:                                              ; preds = %663
  %666 = sub i64 0, %31, !dbg !3632
  %667 = udiv i64 -9223372036854775808, %666, !dbg !3632
  %668 = icmp ult i64 %667, %54, !dbg !3632
  br i1 %668, label %680, label %672, !dbg !3632

669:                                              ; preds = %661
  %670 = udiv i64 9223372036854775807, %54, !dbg !3632
  %671 = icmp ult i64 %670, %31, !dbg !3632
  br i1 %671, label %675, label %672, !dbg !3632

672:                                              ; preds = %663, %665, %669
  %673 = mul i64 %31, %54, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %673, metadata !3561, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 2, metadata !3551, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3630
  %674 = icmp slt i64 %673, 0, !dbg !3632
  br i1 %674, label %680, label %675, !dbg !3632

675:                                              ; preds = %669, %672
  %676 = phi i32 [ 0, %672 ], [ 1, %669 ]
  %677 = phi i64 [ %673, %672 ], [ 9223372036854775807, %669 ]
  %678 = udiv i64 9223372036854775807, %54, !dbg !3632
  %679 = icmp ult i64 %678, %677, !dbg !3632
  br i1 %679, label %691, label %686, !dbg !3632

680:                                              ; preds = %665, %672
  %681 = phi i32 [ 0, %672 ], [ 1, %665 ]
  %682 = phi i64 [ %673, %672 ], [ -9223372036854775808, %665 ]
  %683 = sub i64 0, %682, !dbg !3632
  %684 = udiv i64 -9223372036854775808, %683, !dbg !3632
  %685 = icmp ult i64 %684, %54, !dbg !3632
  br i1 %685, label %696, label %686, !dbg !3632

686:                                              ; preds = %675, %680
  %687 = phi i32 [ %681, %680 ], [ %676, %675 ]
  %688 = phi i64 [ %682, %680 ], [ %677, %675 ]
  %689 = mul i64 %688, %54, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %689, metadata !3561, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %687, metadata !3544, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3630
  %690 = icmp slt i64 %689, 0, !dbg !3632
  br i1 %690, label %696, label %691, !dbg !3632

691:                                              ; preds = %675, %686
  %692 = phi i32 [ %687, %686 ], [ 1, %675 ]
  %693 = phi i64 [ %689, %686 ], [ 9223372036854775807, %675 ]
  %694 = udiv i64 9223372036854775807, %54, !dbg !3632
  %695 = icmp ult i64 %694, %693, !dbg !3632
  br i1 %695, label %707, label %702, !dbg !3632

696:                                              ; preds = %680, %686
  %697 = phi i32 [ %687, %686 ], [ 1, %680 ]
  %698 = phi i64 [ %689, %686 ], [ -9223372036854775808, %680 ]
  %699 = sub i64 0, %698, !dbg !3632
  %700 = udiv i64 -9223372036854775808, %699, !dbg !3632
  %701 = icmp ult i64 %700, %54, !dbg !3632
  br i1 %701, label %712, label %702, !dbg !3632

702:                                              ; preds = %691, %696
  %703 = phi i32 [ %697, %696 ], [ %692, %691 ]
  %704 = phi i64 [ %698, %696 ], [ %693, %691 ]
  %705 = mul i64 %704, %54, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %705, metadata !3561, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %703, metadata !3544, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3630
  %706 = icmp slt i64 %705, 0, !dbg !3632
  br i1 %706, label %712, label %707, !dbg !3632

707:                                              ; preds = %691, %702
  %708 = phi i32 [ %703, %702 ], [ 1, %691 ]
  %709 = phi i64 [ %705, %702 ], [ 9223372036854775807, %691 ]
  %710 = udiv i64 9223372036854775807, %54, !dbg !3632
  %711 = icmp ult i64 %710, %709, !dbg !3632
  br i1 %711, label %722, label %718, !dbg !3632

712:                                              ; preds = %696, %702
  %713 = phi i32 [ %703, %702 ], [ 1, %696 ]
  %714 = phi i64 [ %705, %702 ], [ -9223372036854775808, %696 ]
  %715 = sub i64 0, %714, !dbg !3632
  %716 = udiv i64 -9223372036854775808, %715, !dbg !3632
  %717 = icmp ult i64 %716, %54, !dbg !3632
  br i1 %717, label %722, label %718, !dbg !3632

718:                                              ; preds = %712, %707
  %719 = phi i32 [ %713, %712 ], [ %708, %707 ]
  %720 = phi i64 [ %714, %712 ], [ %709, %707 ]
  %721 = mul i64 %720, %54, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %721, metadata !3561, metadata !DIExpression()), !dbg !3630
  br label %722, !dbg !3633

722:                                              ; preds = %718, %712, %707
  %723 = phi i32 [ %719, %718 ], [ %708, %707 ], [ %713, %712 ]
  %724 = phi i64 [ %721, %718 ], [ 9223372036854775807, %707 ], [ -9223372036854775808, %712 ], !dbg !3630
  %725 = phi i32 [ 0, %718 ], [ 1, %707 ], [ 1, %712 ], !dbg !3630
  %726 = or i32 %725, %723, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %726, metadata !3544, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3628
  br label %976, !dbg !3601

727:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 2, metadata !3560, metadata !DIExpression()), !dbg !3635
  %728 = icmp slt i64 %31, 0, !dbg !3637
  br i1 %728, label %729, label %732, !dbg !3637

729:                                              ; preds = %727
  %730 = add i64 %31, -1, !dbg !3637
  %731 = icmp ult i64 %730, -4611686018427387905, !dbg !3637
  br i1 %731, label %976, label %734, !dbg !3637

732:                                              ; preds = %727
  %733 = icmp ugt i64 %31, 4611686018427387903, !dbg !3637
  br i1 %733, label %976, label %734, !dbg !3637

734:                                              ; preds = %729, %732
  %735 = shl nsw i64 %31, 1, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %735, metadata !3561, metadata !DIExpression()), !dbg !3635
  br label %976, !dbg !3638

736:                                              ; preds = %58
  %737 = icmp eq i64 %31, -1, !dbg !3570
  br i1 %737, label %745, label %738, !dbg !3570

738:                                              ; preds = %736
  %739 = sub i64 0, %31, !dbg !3570
  %740 = udiv i64 -9223372036854775808, %739, !dbg !3570
  %741 = icmp ult i64 %740, %54, !dbg !3570
  br i1 %741, label %753, label %745, !dbg !3570

742:                                              ; preds = %58
  %743 = udiv i64 9223372036854775807, %54, !dbg !3570
  %744 = icmp ult i64 %743, %31, !dbg !3570
  br i1 %744, label %748, label %745, !dbg !3570

745:                                              ; preds = %736, %738, %742
  %746 = mul i64 %31, %54, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %746, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 6, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3568
  %747 = icmp slt i64 %746, 0, !dbg !3570
  br i1 %747, label %753, label %748, !dbg !3570

748:                                              ; preds = %742, %745
  %749 = phi i32 [ 0, %745 ], [ 1, %742 ]
  %750 = phi i64 [ %746, %745 ], [ 9223372036854775807, %742 ]
  %751 = udiv i64 9223372036854775807, %54, !dbg !3570
  %752 = icmp ult i64 %751, %750, !dbg !3570
  br i1 %752, label %764, label %759, !dbg !3570

753:                                              ; preds = %738, %745
  %754 = phi i32 [ 0, %745 ], [ 1, %738 ]
  %755 = phi i64 [ %746, %745 ], [ -9223372036854775808, %738 ]
  %756 = sub i64 0, %755, !dbg !3570
  %757 = udiv i64 -9223372036854775808, %756, !dbg !3570
  %758 = icmp ult i64 %757, %54, !dbg !3570
  br i1 %758, label %769, label %759, !dbg !3570

759:                                              ; preds = %748, %753
  %760 = phi i32 [ %754, %753 ], [ %749, %748 ]
  %761 = phi i64 [ %755, %753 ], [ %750, %748 ]
  %762 = mul i64 %761, %54, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %762, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %760, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 5, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3568
  %763 = icmp slt i64 %762, 0, !dbg !3570
  br i1 %763, label %769, label %764, !dbg !3570

764:                                              ; preds = %748, %759
  %765 = phi i32 [ %760, %759 ], [ 1, %748 ]
  %766 = phi i64 [ %762, %759 ], [ 9223372036854775807, %748 ]
  %767 = udiv i64 9223372036854775807, %54, !dbg !3570
  %768 = icmp ult i64 %767, %766, !dbg !3570
  br i1 %768, label %780, label %775, !dbg !3570

769:                                              ; preds = %753, %759
  %770 = phi i32 [ %760, %759 ], [ 1, %753 ]
  %771 = phi i64 [ %762, %759 ], [ -9223372036854775808, %753 ]
  %772 = sub i64 0, %771, !dbg !3570
  %773 = udiv i64 -9223372036854775808, %772, !dbg !3570
  %774 = icmp ult i64 %773, %54, !dbg !3570
  br i1 %774, label %785, label %775, !dbg !3570

775:                                              ; preds = %764, %769
  %776 = phi i32 [ %770, %769 ], [ %765, %764 ]
  %777 = phi i64 [ %771, %769 ], [ %766, %764 ]
  %778 = mul i64 %777, %54, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %778, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %776, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 4, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3568
  %779 = icmp slt i64 %778, 0, !dbg !3570
  br i1 %779, label %785, label %780, !dbg !3570

780:                                              ; preds = %764, %775
  %781 = phi i32 [ %776, %775 ], [ 1, %764 ]
  %782 = phi i64 [ %778, %775 ], [ 9223372036854775807, %764 ]
  %783 = udiv i64 9223372036854775807, %54, !dbg !3570
  %784 = icmp ult i64 %783, %782, !dbg !3570
  br i1 %784, label %796, label %791, !dbg !3570

785:                                              ; preds = %769, %775
  %786 = phi i32 [ %776, %775 ], [ 1, %769 ]
  %787 = phi i64 [ %778, %775 ], [ -9223372036854775808, %769 ]
  %788 = sub i64 0, %787, !dbg !3570
  %789 = udiv i64 -9223372036854775808, %788, !dbg !3570
  %790 = icmp ult i64 %789, %54, !dbg !3570
  br i1 %790, label %801, label %791, !dbg !3570

791:                                              ; preds = %780, %785
  %792 = phi i32 [ %786, %785 ], [ %781, %780 ]
  %793 = phi i64 [ %787, %785 ], [ %782, %780 ]
  %794 = mul i64 %793, %54, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %794, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %792, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 3, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3568
  %795 = icmp slt i64 %794, 0, !dbg !3570
  br i1 %795, label %801, label %796, !dbg !3570

796:                                              ; preds = %780, %791
  %797 = phi i32 [ %792, %791 ], [ 1, %780 ]
  %798 = phi i64 [ %794, %791 ], [ 9223372036854775807, %780 ]
  %799 = udiv i64 9223372036854775807, %54, !dbg !3570
  %800 = icmp ult i64 %799, %798, !dbg !3570
  br i1 %800, label %812, label %807, !dbg !3570

801:                                              ; preds = %785, %791
  %802 = phi i32 [ %792, %791 ], [ 1, %785 ]
  %803 = phi i64 [ %794, %791 ], [ -9223372036854775808, %785 ]
  %804 = sub i64 0, %803, !dbg !3570
  %805 = udiv i64 -9223372036854775808, %804, !dbg !3570
  %806 = icmp ult i64 %805, %54, !dbg !3570
  br i1 %806, label %817, label %807, !dbg !3570

807:                                              ; preds = %796, %801
  %808 = phi i32 [ %802, %801 ], [ %797, %796 ]
  %809 = phi i64 [ %803, %801 ], [ %798, %796 ]
  %810 = mul i64 %809, %54, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %810, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %808, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 2, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3568
  %811 = icmp slt i64 %810, 0, !dbg !3570
  br i1 %811, label %817, label %812, !dbg !3570

812:                                              ; preds = %796, %807
  %813 = phi i32 [ %808, %807 ], [ 1, %796 ]
  %814 = phi i64 [ %810, %807 ], [ 9223372036854775807, %796 ]
  %815 = udiv i64 9223372036854775807, %54, !dbg !3570
  %816 = icmp ult i64 %815, %814, !dbg !3570
  br i1 %816, label %828, label %823, !dbg !3570

817:                                              ; preds = %801, %807
  %818 = phi i32 [ %808, %807 ], [ 1, %801 ]
  %819 = phi i64 [ %810, %807 ], [ -9223372036854775808, %801 ]
  %820 = sub i64 0, %819, !dbg !3570
  %821 = udiv i64 -9223372036854775808, %820, !dbg !3570
  %822 = icmp ult i64 %821, %54, !dbg !3570
  br i1 %822, label %833, label %823, !dbg !3570

823:                                              ; preds = %812, %817
  %824 = phi i32 [ %818, %817 ], [ %813, %812 ]
  %825 = phi i64 [ %819, %817 ], [ %814, %812 ]
  %826 = mul i64 %825, %54, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %826, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %824, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3568
  %827 = icmp slt i64 %826, 0, !dbg !3570
  br i1 %827, label %833, label %828, !dbg !3570

828:                                              ; preds = %812, %823
  %829 = phi i32 [ %824, %823 ], [ 1, %812 ]
  %830 = phi i64 [ %826, %823 ], [ 9223372036854775807, %812 ]
  %831 = udiv i64 9223372036854775807, %54, !dbg !3570
  %832 = icmp ult i64 %831, %830, !dbg !3570
  br i1 %832, label %844, label %839, !dbg !3570

833:                                              ; preds = %817, %823
  %834 = phi i32 [ %824, %823 ], [ 1, %817 ]
  %835 = phi i64 [ %826, %823 ], [ -9223372036854775808, %817 ]
  %836 = sub i64 0, %835, !dbg !3570
  %837 = udiv i64 -9223372036854775808, %836, !dbg !3570
  %838 = icmp ult i64 %837, %54, !dbg !3570
  br i1 %838, label %849, label %839, !dbg !3570

839:                                              ; preds = %828, %833
  %840 = phi i32 [ %834, %833 ], [ %829, %828 ]
  %841 = phi i64 [ %835, %833 ], [ %830, %828 ]
  %842 = mul i64 %841, %54, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %842, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %840, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3568
  %843 = icmp slt i64 %842, 0, !dbg !3570
  br i1 %843, label %849, label %844, !dbg !3570

844:                                              ; preds = %828, %839
  %845 = phi i32 [ %840, %839 ], [ 1, %828 ]
  %846 = phi i64 [ %842, %839 ], [ 9223372036854775807, %828 ]
  %847 = udiv i64 9223372036854775807, %54, !dbg !3570
  %848 = icmp ult i64 %847, %846, !dbg !3570
  br i1 %848, label %859, label %855, !dbg !3570

849:                                              ; preds = %833, %839
  %850 = phi i32 [ %840, %839 ], [ 1, %833 ]
  %851 = phi i64 [ %842, %839 ], [ -9223372036854775808, %833 ]
  %852 = sub i64 0, %851, !dbg !3570
  %853 = udiv i64 -9223372036854775808, %852, !dbg !3570
  %854 = icmp ult i64 %853, %54, !dbg !3570
  br i1 %854, label %859, label %855, !dbg !3570

855:                                              ; preds = %849, %844
  %856 = phi i32 [ %850, %849 ], [ %845, %844 ]
  %857 = phi i64 [ %851, %849 ], [ %846, %844 ]
  %858 = mul i64 %857, %54, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %858, metadata !3561, metadata !DIExpression()), !dbg !3568
  br label %859, !dbg !3639

859:                                              ; preds = %855, %849, %844
  %860 = phi i32 [ %856, %855 ], [ %845, %844 ], [ %850, %849 ]
  %861 = phi i64 [ %858, %855 ], [ 9223372036854775807, %844 ], [ -9223372036854775808, %849 ], !dbg !3568
  %862 = phi i32 [ 0, %855 ], [ 1, %844 ], [ 1, %849 ], !dbg !3568
  %863 = or i32 %862, %860, !dbg !3640
  call void @llvm.dbg.value(metadata i32 %863, metadata !3544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3566
  br label %976, !dbg !3601

864:                                              ; preds = %56
  %865 = icmp eq i64 %31, -1, !dbg !3564
  br i1 %865, label %873, label %866, !dbg !3564

866:                                              ; preds = %864
  %867 = sub i64 0, %31, !dbg !3564
  %868 = udiv i64 -9223372036854775808, %867, !dbg !3564
  %869 = icmp ult i64 %868, %54, !dbg !3564
  br i1 %869, label %881, label %873, !dbg !3564

870:                                              ; preds = %56
  %871 = udiv i64 9223372036854775807, %54, !dbg !3564
  %872 = icmp ult i64 %871, %31, !dbg !3564
  br i1 %872, label %876, label %873, !dbg !3564

873:                                              ; preds = %864, %866, %870
  %874 = mul i64 %31, %54, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %874, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 5, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3562
  %875 = icmp slt i64 %874, 0, !dbg !3564
  br i1 %875, label %881, label %876, !dbg !3564

876:                                              ; preds = %870, %873
  %877 = phi i32 [ 0, %873 ], [ 1, %870 ]
  %878 = phi i64 [ %874, %873 ], [ 9223372036854775807, %870 ]
  %879 = udiv i64 9223372036854775807, %54, !dbg !3564
  %880 = icmp ult i64 %879, %878, !dbg !3564
  br i1 %880, label %892, label %887, !dbg !3564

881:                                              ; preds = %866, %873
  %882 = phi i32 [ 0, %873 ], [ 1, %866 ]
  %883 = phi i64 [ %874, %873 ], [ -9223372036854775808, %866 ]
  %884 = sub i64 0, %883, !dbg !3564
  %885 = udiv i64 -9223372036854775808, %884, !dbg !3564
  %886 = icmp ult i64 %885, %54, !dbg !3564
  br i1 %886, label %897, label %887, !dbg !3564

887:                                              ; preds = %876, %881
  %888 = phi i32 [ %882, %881 ], [ %877, %876 ]
  %889 = phi i64 [ %883, %881 ], [ %878, %876 ]
  %890 = mul i64 %889, %54, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %890, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %888, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 4, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3562
  %891 = icmp slt i64 %890, 0, !dbg !3564
  br i1 %891, label %897, label %892, !dbg !3564

892:                                              ; preds = %876, %887
  %893 = phi i32 [ %888, %887 ], [ 1, %876 ]
  %894 = phi i64 [ %890, %887 ], [ 9223372036854775807, %876 ]
  %895 = udiv i64 9223372036854775807, %54, !dbg !3564
  %896 = icmp ult i64 %895, %894, !dbg !3564
  br i1 %896, label %908, label %903, !dbg !3564

897:                                              ; preds = %881, %887
  %898 = phi i32 [ %888, %887 ], [ 1, %881 ]
  %899 = phi i64 [ %890, %887 ], [ -9223372036854775808, %881 ]
  %900 = sub i64 0, %899, !dbg !3564
  %901 = udiv i64 -9223372036854775808, %900, !dbg !3564
  %902 = icmp ult i64 %901, %54, !dbg !3564
  br i1 %902, label %913, label %903, !dbg !3564

903:                                              ; preds = %892, %897
  %904 = phi i32 [ %898, %897 ], [ %893, %892 ]
  %905 = phi i64 [ %899, %897 ], [ %894, %892 ]
  %906 = mul i64 %905, %54, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %906, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %904, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 3, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3562
  %907 = icmp slt i64 %906, 0, !dbg !3564
  br i1 %907, label %913, label %908, !dbg !3564

908:                                              ; preds = %892, %903
  %909 = phi i32 [ %904, %903 ], [ 1, %892 ]
  %910 = phi i64 [ %906, %903 ], [ 9223372036854775807, %892 ]
  %911 = udiv i64 9223372036854775807, %54, !dbg !3564
  %912 = icmp ult i64 %911, %910, !dbg !3564
  br i1 %912, label %924, label %919, !dbg !3564

913:                                              ; preds = %897, %903
  %914 = phi i32 [ %904, %903 ], [ 1, %897 ]
  %915 = phi i64 [ %906, %903 ], [ -9223372036854775808, %897 ]
  %916 = sub i64 0, %915, !dbg !3564
  %917 = udiv i64 -9223372036854775808, %916, !dbg !3564
  %918 = icmp ult i64 %917, %54, !dbg !3564
  br i1 %918, label %929, label %919, !dbg !3564

919:                                              ; preds = %908, %913
  %920 = phi i32 [ %914, %913 ], [ %909, %908 ]
  %921 = phi i64 [ %915, %913 ], [ %910, %908 ]
  %922 = mul i64 %921, %54, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %922, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %920, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 2, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3562
  %923 = icmp slt i64 %922, 0, !dbg !3564
  br i1 %923, label %929, label %924, !dbg !3564

924:                                              ; preds = %908, %919
  %925 = phi i32 [ %920, %919 ], [ 1, %908 ]
  %926 = phi i64 [ %922, %919 ], [ 9223372036854775807, %908 ]
  %927 = udiv i64 9223372036854775807, %54, !dbg !3564
  %928 = icmp ult i64 %927, %926, !dbg !3564
  br i1 %928, label %940, label %935, !dbg !3564

929:                                              ; preds = %913, %919
  %930 = phi i32 [ %920, %919 ], [ 1, %913 ]
  %931 = phi i64 [ %922, %919 ], [ -9223372036854775808, %913 ]
  %932 = sub i64 0, %931, !dbg !3564
  %933 = udiv i64 -9223372036854775808, %932, !dbg !3564
  %934 = icmp ult i64 %933, %54, !dbg !3564
  br i1 %934, label %945, label %935, !dbg !3564

935:                                              ; preds = %924, %929
  %936 = phi i32 [ %930, %929 ], [ %925, %924 ]
  %937 = phi i64 [ %931, %929 ], [ %926, %924 ]
  %938 = mul i64 %937, %54, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %938, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %936, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 1, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3562
  %939 = icmp slt i64 %938, 0, !dbg !3564
  br i1 %939, label %945, label %940, !dbg !3564

940:                                              ; preds = %924, %935
  %941 = phi i32 [ %936, %935 ], [ 1, %924 ]
  %942 = phi i64 [ %938, %935 ], [ 9223372036854775807, %924 ]
  %943 = udiv i64 9223372036854775807, %54, !dbg !3564
  %944 = icmp ult i64 %943, %942, !dbg !3564
  br i1 %944, label %956, label %951, !dbg !3564

945:                                              ; preds = %929, %935
  %946 = phi i32 [ %936, %935 ], [ 1, %929 ]
  %947 = phi i64 [ %938, %935 ], [ -9223372036854775808, %929 ]
  %948 = sub i64 0, %947, !dbg !3564
  %949 = udiv i64 -9223372036854775808, %948, !dbg !3564
  %950 = icmp ult i64 %949, %54, !dbg !3564
  br i1 %950, label %961, label %951, !dbg !3564

951:                                              ; preds = %940, %945
  %952 = phi i32 [ %946, %945 ], [ %941, %940 ]
  %953 = phi i64 [ %947, %945 ], [ %942, %940 ]
  %954 = mul i64 %953, %54, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %954, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %952, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr undef, metadata !3555, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 poison, metadata !3560, metadata !DIExpression()), !dbg !3562
  %955 = icmp slt i64 %954, 0, !dbg !3564
  br i1 %955, label %961, label %956, !dbg !3564

956:                                              ; preds = %940, %951
  %957 = phi i32 [ %952, %951 ], [ 1, %940 ]
  %958 = phi i64 [ %954, %951 ], [ 9223372036854775807, %940 ]
  %959 = udiv i64 9223372036854775807, %54, !dbg !3564
  %960 = icmp ult i64 %959, %958, !dbg !3564
  br i1 %960, label %971, label %967, !dbg !3564

961:                                              ; preds = %945, %951
  %962 = phi i32 [ %952, %951 ], [ 1, %945 ]
  %963 = phi i64 [ %954, %951 ], [ -9223372036854775808, %945 ]
  %964 = sub i64 0, %963, !dbg !3564
  %965 = udiv i64 -9223372036854775808, %964, !dbg !3564
  %966 = icmp ult i64 %965, %54, !dbg !3564
  br i1 %966, label %971, label %967, !dbg !3564

967:                                              ; preds = %961, %956
  %968 = phi i32 [ %962, %961 ], [ %957, %956 ]
  %969 = phi i64 [ %963, %961 ], [ %958, %956 ]
  %970 = mul i64 %969, %54, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %970, metadata !3561, metadata !DIExpression()), !dbg !3562
  br label %971, !dbg !3641

971:                                              ; preds = %967, %961, %956
  %972 = phi i32 [ %968, %967 ], [ %957, %956 ], [ %962, %961 ]
  %973 = phi i64 [ %970, %967 ], [ 9223372036854775807, %956 ], [ -9223372036854775808, %961 ], !dbg !3562
  %974 = phi i32 [ 0, %967 ], [ 1, %956 ], [ 1, %961 ], !dbg !3562
  %975 = or i32 %974, %972, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %975, metadata !3544, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3552
  br label %976, !dbg !3601

976:                                              ; preds = %234, %238, %241, %971, %859, %722, %656, %512, %352, %272, %225, %175, %729, %78, %70, %53, %72, %74, %80, %82, %732, %734
  %977 = phi i64 [ %31, %53 ], [ %75, %74 ], [ 9223372036854775807, %72 ], [ %83, %82 ], [ 9223372036854775807, %80 ], [ %735, %734 ], [ 9223372036854775807, %732 ], [ -9223372036854775808, %70 ], [ -9223372036854775808, %78 ], [ -9223372036854775808, %729 ], [ %177, %175 ], [ %227, %225 ], [ %274, %272 ], [ %354, %352 ], [ %514, %512 ], [ %658, %656 ], [ %724, %722 ], [ %861, %859 ], [ %973, %971 ], [ %242, %241 ], [ 9223372036854775807, %238 ], [ -9223372036854775808, %234 ], !dbg !3490
  %978 = phi i32 [ 0, %53 ], [ 0, %74 ], [ 1, %72 ], [ 0, %82 ], [ 1, %80 ], [ 0, %734 ], [ 1, %732 ], [ 1, %70 ], [ 1, %78 ], [ 1, %729 ], [ %179, %175 ], [ %229, %225 ], [ %276, %272 ], [ %356, %352 ], [ %516, %512 ], [ %660, %656 ], [ %726, %722 ], [ %863, %859 ], [ %975, %971 ], [ 0, %241 ], [ 1, %238 ], [ 1, %234 ], !dbg !3643
  call void @llvm.dbg.value(metadata i32 %978, metadata !3489, metadata !DIExpression()), !dbg !3529
  %979 = or i32 %978, %30, !dbg !3601
  call void @llvm.dbg.value(metadata i32 %979, metadata !3484, metadata !DIExpression()), !dbg !3490
  %980 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !3644
  store ptr %980, ptr %8, align 8, !dbg !3644, !tbaa !844
  %981 = load i8, ptr %980, align 1, !dbg !3645, !tbaa !924
  %982 = icmp eq i8 %981, 0, !dbg !3645
  %983 = or i32 %979, 2
  %984 = select i1 %982, i32 %979, i32 %983, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %984, metadata !3484, metadata !DIExpression()), !dbg !3490
  br label %987

985:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i64 %10, metadata !3483, metadata !DIExpression()), !dbg !3490
  store i64 %31, ptr %3, align 8, !dbg !3648, !tbaa !1132
  %986 = or i32 %30, 2, !dbg !3649
  call void @llvm.dbg.value(metadata i32 %30, metadata !3484, metadata !DIExpression()), !dbg !3490
  br label %990

987:                                              ; preds = %976, %29
  %988 = phi i64 [ %31, %29 ], [ %977, %976 ], !dbg !3650
  %989 = phi i32 [ %30, %29 ], [ %984, %976 ], !dbg !3651
  call void @llvm.dbg.value(metadata i32 %989, metadata !3484, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %988, metadata !3483, metadata !DIExpression()), !dbg !3490
  store i64 %988, ptr %3, align 8, !dbg !3652, !tbaa !1132
  br label %990, !dbg !3653

990:                                              ; preds = %985, %22, %13, %15, %18, %987, %38, %28
  %991 = phi i32 [ %989, %987 ], [ %986, %985 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !3490
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #38, !dbg !3654
  ret i32 %991, !dbg !3654
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !3655 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #35

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3659 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3702
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3703
  call void @llvm.dbg.value(metadata i1 poison, metadata !3698, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3707
  %3 = load i32, ptr %0, align 8, !dbg !3709, !tbaa !1186
  %4 = and i32 %3, 32, !dbg !3710
  %5 = icmp eq i32 %4, 0, !dbg !3710
  call void @llvm.dbg.value(metadata i1 %5, metadata !3700, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3702
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3711
  %7 = icmp eq i32 %6, 0, !dbg !3712
  call void @llvm.dbg.value(metadata i1 %7, metadata !3701, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3702
  br i1 %5, label %8, label %18, !dbg !3713

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3715
  call void @llvm.dbg.value(metadata i1 %9, metadata !3698, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3702
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3716
  %11 = xor i1 %7, true, !dbg !3716
  %12 = sext i1 %11 to i32, !dbg !3716
  br i1 %10, label %21, label %13, !dbg !3716

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3717
  %15 = load i32, ptr %14, align 4, !dbg !3717, !tbaa !915
  %16 = icmp ne i32 %15, 9, !dbg !3718
  %17 = sext i1 %16 to i32, !dbg !3719
  br label %21, !dbg !3719

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3720

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3722
  store i32 0, ptr %20, align 4, !dbg !3724, !tbaa !915
  br label %21, !dbg !3722

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3702
  ret i32 %22, !dbg !3725
}

; Function Attrs: nounwind
declare !dbg !3726 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3730 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3768, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i32 0, metadata !3769, metadata !DIExpression()), !dbg !3772
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %2, metadata !3770, metadata !DIExpression()), !dbg !3772
  %3 = icmp slt i32 %2, 0, !dbg !3774
  br i1 %3, label %4, label %6, !dbg !3776

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3777
  br label %24, !dbg !3778

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3779
  %8 = icmp eq i32 %7, 0, !dbg !3779
  br i1 %8, label %13, label %9, !dbg !3781

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3782
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3783
  %12 = icmp eq i64 %11, -1, !dbg !3784
  br i1 %12, label %16, label %13, !dbg !3785

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3786
  %15 = icmp eq i32 %14, 0, !dbg !3786
  br i1 %15, label %16, label %18, !dbg !3787

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3769, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i32 0, metadata !3771, metadata !DIExpression()), !dbg !3772
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3788
  call void @llvm.dbg.value(metadata i32 %17, metadata !3771, metadata !DIExpression()), !dbg !3772
  br label %24, !dbg !3789

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3790
  %20 = load i32, ptr %19, align 4, !dbg !3790, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %20, metadata !3769, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i32 0, metadata !3771, metadata !DIExpression()), !dbg !3772
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3788
  call void @llvm.dbg.value(metadata i32 %21, metadata !3771, metadata !DIExpression()), !dbg !3772
  %22 = icmp eq i32 %20, 0, !dbg !3791
  br i1 %22, label %24, label %23, !dbg !3789

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3793, !tbaa !915
  call void @llvm.dbg.value(metadata i32 -1, metadata !3771, metadata !DIExpression()), !dbg !3772
  br label %24, !dbg !3795

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3772
  ret i32 %25, !dbg !3796
}

; Function Attrs: nofree nounwind
declare !dbg !3797 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3798 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3799 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3800 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3803 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3841, metadata !DIExpression()), !dbg !3842
  %2 = icmp eq ptr %0, null, !dbg !3843
  br i1 %2, label %6, label %3, !dbg !3845

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3846
  %5 = icmp eq i32 %4, 0, !dbg !3846
  br i1 %5, label %6, label %8, !dbg !3847

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3848
  br label %16, !dbg !3849

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3850, metadata !DIExpression()), !dbg !3855
  %9 = load i32, ptr %0, align 8, !dbg !3857, !tbaa !1186
  %10 = and i32 %9, 256, !dbg !3859
  %11 = icmp eq i32 %10, 0, !dbg !3859
  br i1 %11, label %14, label %12, !dbg !3860

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3861
  br label %14, !dbg !3861

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3862
  br label %16, !dbg !3863

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3842
  ret i32 %17, !dbg !3864
}

; Function Attrs: nofree nounwind
declare !dbg !3865 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3866 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3905, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %1, metadata !3906, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i32 %2, metadata !3907, metadata !DIExpression()), !dbg !3911
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3912
  %5 = load ptr, ptr %4, align 8, !dbg !3912, !tbaa !3913
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3914
  %7 = load ptr, ptr %6, align 8, !dbg !3914, !tbaa !3915
  %8 = icmp eq ptr %5, %7, !dbg !3916
  br i1 %8, label %9, label %27, !dbg !3917

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3918
  %11 = load ptr, ptr %10, align 8, !dbg !3918, !tbaa !1409
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3919
  %13 = load ptr, ptr %12, align 8, !dbg !3919, !tbaa !3920
  %14 = icmp eq ptr %11, %13, !dbg !3921
  br i1 %14, label %15, label %27, !dbg !3922

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3923
  %17 = load ptr, ptr %16, align 8, !dbg !3923, !tbaa !3924
  %18 = icmp eq ptr %17, null, !dbg !3925
  br i1 %18, label %19, label %27, !dbg !3926

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3927
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %21, metadata !3908, metadata !DIExpression()), !dbg !3929
  %22 = icmp eq i64 %21, -1, !dbg !3930
  br i1 %22, label %29, label %23, !dbg !3932

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3933, !tbaa !1186
  %25 = and i32 %24, -17, !dbg !3933
  store i32 %25, ptr %0, align 8, !dbg !3933, !tbaa !1186
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3934
  store i64 %21, ptr %26, align 8, !dbg !3935, !tbaa !3936
  br label %29, !dbg !3937

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3938
  br label %29, !dbg !3939

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3911
  ret i32 %30, !dbg !3940
}

; Function Attrs: nofree nounwind
declare !dbg !3941 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3944 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3949, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %1, metadata !3950, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i64 %2, metadata !3951, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %3, metadata !3952, metadata !DIExpression()), !dbg !3954
  %5 = icmp eq ptr %1, null, !dbg !3955
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3957
  %7 = select i1 %5, ptr @.str.131, ptr %1, !dbg !3957
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3957
  call void @llvm.dbg.value(metadata i64 %8, metadata !3951, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %7, metadata !3950, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %6, metadata !3949, metadata !DIExpression()), !dbg !3954
  %9 = icmp eq ptr %3, null, !dbg !3958
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3960
  call void @llvm.dbg.value(metadata ptr %10, metadata !3952, metadata !DIExpression()), !dbg !3954
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %11, metadata !3953, metadata !DIExpression()), !dbg !3954
  %12 = icmp ult i64 %11, -3, !dbg !3962
  br i1 %12, label %13, label %17, !dbg !3964

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !3965
  %15 = icmp eq i32 %14, 0, !dbg !3965
  br i1 %15, label %16, label %29, !dbg !3966

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3967, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata ptr %10, metadata !3974, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 8, metadata !3978, metadata !DIExpression()), !dbg !3979
  store i64 0, ptr %10, align 1, !dbg !3981
  br label %29, !dbg !3982

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3983
  br i1 %18, label %19, label %20, !dbg !3985

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !3986
  unreachable, !dbg !3986

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3987

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !3989
  br i1 %23, label %29, label %24, !dbg !3990

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3991
  br i1 %25, label %29, label %26, !dbg !3994

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3995, !tbaa !924
  %28 = zext i8 %27 to i32, !dbg !3996
  store i32 %28, ptr %6, align 4, !dbg !3997, !tbaa !915
  br label %29, !dbg !3998

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3954
  ret i64 %30, !dbg !3999
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4000 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4006 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4008, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %1, metadata !4009, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %2, metadata !4010, metadata !DIExpression()), !dbg !4012
  %4 = icmp eq i64 %2, 0, !dbg !4013
  br i1 %4, label %8, label %5, !dbg !4013

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4013
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4013
  br i1 %7, label %13, label %8, !dbg !4013

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4011, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4012
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4011, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4012
  %9 = mul i64 %2, %1, !dbg !4013
  call void @llvm.dbg.value(metadata i64 %9, metadata !4011, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata ptr %0, metadata !4015, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %9, metadata !4018, metadata !DIExpression()), !dbg !4019
  %10 = icmp eq i64 %9, 0, !dbg !4021
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4021
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4022
  br label %15, !dbg !4023

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4011, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4012
  %14 = tail call ptr @__errno_location() #41, !dbg !4024
  store i32 12, ptr %14, align 4, !dbg !4026, !tbaa !915
  br label %15, !dbg !4027

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4012
  ret ptr %16, !dbg !4028
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4029 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4031, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4032, metadata !DIExpression()), !dbg !4038
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4039
  %4 = icmp eq i32 %3, 0, !dbg !4039
  br i1 %4, label %5, label %12, !dbg !4041

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4042, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr @.str.136, metadata !4045, metadata !DIExpression()), !dbg !4046
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.136, i64 2), !dbg !4049
  %7 = icmp eq i32 %6, 0, !dbg !4050
  br i1 %7, label %11, label %8, !dbg !4051

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4042, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr @.str.1.137, metadata !4045, metadata !DIExpression()), !dbg !4052
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.137, i64 6), !dbg !4054
  %10 = icmp eq i32 %9, 0, !dbg !4055
  br i1 %10, label %11, label %12, !dbg !4056

11:                                               ; preds = %8, %5
  br label %12, !dbg !4057

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4036
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4058
  ret i1 %13, !dbg !4058
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4059 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %1, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %2, metadata !4065, metadata !DIExpression()), !dbg !4066
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4067
  ret i32 %4, !dbg !4068
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4069 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4073, metadata !DIExpression()), !dbg !4074
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4075
  ret ptr %2, !dbg !4076
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4077 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression()), !dbg !4081
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4082
  call void @llvm.dbg.value(metadata ptr %2, metadata !4080, metadata !DIExpression()), !dbg !4081
  ret ptr %2, !dbg !4083
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4084 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4086, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata ptr %1, metadata !4087, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %2, metadata !4088, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression()), !dbg !4094
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4096
  call void @llvm.dbg.value(metadata ptr %4, metadata !4080, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr %4, metadata !4089, metadata !DIExpression()), !dbg !4093
  %5 = icmp eq ptr %4, null, !dbg !4097
  br i1 %5, label %6, label %9, !dbg !4098

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4099
  br i1 %7, label %19, label %8, !dbg !4102

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4103, !tbaa !924
  br label %19, !dbg !4104

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %10, metadata !4090, metadata !DIExpression()), !dbg !4106
  %11 = icmp ult i64 %10, %2, !dbg !4107
  br i1 %11, label %12, label %14, !dbg !4109

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4110
  call void @llvm.dbg.value(metadata ptr %1, metadata !4112, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %4, metadata !4115, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %13, metadata !4116, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4119
  br label %19, !dbg !4120

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4121
  br i1 %15, label %19, label %16, !dbg !4124

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4125
  call void @llvm.dbg.value(metadata ptr %1, metadata !4112, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %4, metadata !4115, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 %17, metadata !4116, metadata !DIExpression()), !dbg !4127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4129
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4130
  store i8 0, ptr %18, align 1, !dbg !4131, !tbaa !924
  br label %19, !dbg !4132

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4133
  ret i32 %20, !dbg !4134
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!61, !404, !408, !423, !725, !759, !480, !494, !545, !761, !717, !768, !802, !804, !808, !810, !812, !814, !741, !816, !819, !821, !823}
!llvm.ident = !{!825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825, !825}
!llvm.module.flags = !{!826, !827, !828, !829, !830, !831, !832}

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
!422 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !423, file: !424, line: 66, type: !475, isLocal: false, isDefinition: true)
!423 = distinct !DICompileUnit(language: DW_LANG_C11, file: !424, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !425, globals: !426, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!425 = !{!145, !150}
!426 = !{!427, !429, !454, !456, !458, !460, !421, !462, !464, !466, !468, !473}
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !424, line: 272, type: !16, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "old_file_name", scope: !431, file: !424, line: 304, type: !96, isLocal: true, isDefinition: true)
!431 = distinct !DISubprogram(name: "verror_at_line", scope: !424, file: !424, line: 298, type: !432, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !447)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !72, !72, !96, !65, !96, !434}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !435, line: 52, baseType: !436)
!435 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !437, line: 14, baseType: !438)
!437 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !439, baseType: !440)
!439 = !DIFile(filename: "lib/error.c", directory: "/src")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !441)
!441 = !{!442, !443, !444, !445, !446}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !440, file: !439, baseType: !145, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !440, file: !439, baseType: !145, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !440, file: !439, baseType: !145, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !440, file: !439, baseType: !72, size: 32, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !440, file: !439, baseType: !72, size: 32, offset: 224)
!447 = !{!448, !449, !450, !451, !452, !453}
!448 = !DILocalVariable(name: "status", arg: 1, scope: !431, file: !424, line: 298, type: !72)
!449 = !DILocalVariable(name: "errnum", arg: 2, scope: !431, file: !424, line: 298, type: !72)
!450 = !DILocalVariable(name: "file_name", arg: 3, scope: !431, file: !424, line: 298, type: !96)
!451 = !DILocalVariable(name: "line_number", arg: 4, scope: !431, file: !424, line: 298, type: !65)
!452 = !DILocalVariable(name: "message", arg: 5, scope: !431, file: !424, line: 298, type: !96)
!453 = !DILocalVariable(name: "args", arg: 6, scope: !431, file: !424, line: 298, type: !434)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "old_line_number", scope: !431, file: !424, line: 305, type: !65, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !424, line: 338, type: !56, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !424, line: 346, type: !304, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !424, line: 346, type: !282, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "error_message_count", scope: !423, file: !424, line: 69, type: !65, isLocal: false, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !423, file: !424, line: 295, type: !72, isLocal: false, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !424, line: 208, type: !299, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !424, line: 208, type: !470, isLocal: true, isDefinition: true)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 21)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !424, line: 214, type: !16, isLocal: true, isDefinition: true)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null}
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "program_name", scope: !480, file: !481, line: 31, type: !96, isLocal: false, isDefinition: true)
!480 = distinct !DICompileUnit(language: DW_LANG_C11, file: !481, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !482, globals: !483, splitDebugInlining: false, nameTableKind: None)
!481 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!482 = !{!89}
!483 = !{!478, !484, !486}
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !481, line: 46, type: !304, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !481, line: 49, type: !56, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "utf07FF", scope: !490, file: !491, line: 46, type: !518, isLocal: true, isDefinition: true)
!490 = distinct !DISubprogram(name: "proper_name_lite", scope: !491, file: !491, line: 38, type: !492, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !496)
!491 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!492 = !DISubroutineType(types: !493)
!493 = !{!96, !96, !96}
!494 = distinct !DICompileUnit(language: DW_LANG_C11, file: !491, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !495, splitDebugInlining: false, nameTableKind: None)
!495 = !{!488}
!496 = !{!497, !498, !499, !500, !505}
!497 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !490, file: !491, line: 38, type: !96)
!498 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !490, file: !491, line: 38, type: !96)
!499 = !DILocalVariable(name: "translation", scope: !490, file: !491, line: 40, type: !96)
!500 = !DILocalVariable(name: "w", scope: !490, file: !491, line: 47, type: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !502, line: 37, baseType: !503)
!502 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !242, line: 57, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !242, line: 42, baseType: !65)
!505 = !DILocalVariable(name: "mbs", scope: !490, file: !491, line: 48, type: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !507, line: 6, baseType: !508)
!507 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !509, line: 21, baseType: !510)
!509 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 13, size: 64, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !510, file: !509, line: 15, baseType: !72, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !510, file: !509, line: 20, baseType: !514, size: 32, offset: 32)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !509, line: 16, size: 32, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !514, file: !509, line: 18, baseType: !65, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !514, file: !509, line: 19, baseType: !56, size: 32)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16, elements: !283)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !521, line: 78, type: !304, isLocal: true, isDefinition: true)
!521 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !521, line: 79, type: !277, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !521, line: 80, type: !526, isLocal: true, isDefinition: true)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 13)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !521, line: 81, type: !526, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !521, line: 82, type: !174, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !521, line: 83, type: !282, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !521, line: 84, type: !304, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !521, line: 85, type: !299, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !521, line: 86, type: !299, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !521, line: 87, type: !304, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !545, file: !521, line: 76, type: !631, isLocal: false, isDefinition: true)
!545 = distinct !DICompileUnit(language: DW_LANG_C11, file: !521, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !546, retainedTypes: !566, globals: !567, splitDebugInlining: false, nameTableKind: None)
!546 = !{!547, !561, !129}
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !548, line: 42, baseType: !65, size: 32, elements: !549)
!548 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!550 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!551 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!552 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!553 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!554 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!555 = !DIEnumerator(name: "c_quoting_style", value: 5)
!556 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!557 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!558 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!559 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!560 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!561 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !548, line: 254, baseType: !65, size: 32, elements: !562)
!562 = !{!563, !564, !565}
!563 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!564 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!565 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!566 = !{!72, !146, !147}
!567 = !{!519, !522, !524, !529, !531, !533, !535, !537, !539, !541, !543, !568, !572, !582, !584, !589, !591, !593, !595, !597, !620, !627, !629}
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !545, file: !521, line: 92, type: !570, isLocal: false, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 320, elements: !47)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !545, file: !521, line: 1040, type: !574, isLocal: false, isDefinition: true)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !521, line: 56, size: 448, elements: !575)
!575 = !{!576, !577, !578, !580, !581}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !574, file: !521, line: 59, baseType: !547, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !521, line: 62, baseType: !72, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !574, file: !521, line: 66, baseType: !579, size: 256, offset: 64)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !305)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !574, file: !521, line: 69, baseType: !96, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !574, file: !521, line: 72, baseType: !96, size: 64, offset: 384)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !545, file: !521, line: 107, type: !574, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "slot0", scope: !545, file: !521, line: 831, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 256)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !521, line: 321, type: !282, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !521, line: 357, type: !282, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !521, line: 358, type: !282, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !521, line: 199, type: !299, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "quote", scope: !599, file: !521, line: 228, type: !618, isLocal: true, isDefinition: true)
!599 = distinct !DISubprogram(name: "gettext_quote", scope: !521, file: !521, line: 197, type: !600, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!96, !96, !547}
!602 = !{!603, !604, !605, !606, !607}
!603 = !DILocalVariable(name: "msgid", arg: 1, scope: !599, file: !521, line: 197, type: !96)
!604 = !DILocalVariable(name: "s", arg: 2, scope: !599, file: !521, line: 197, type: !547)
!605 = !DILocalVariable(name: "translation", scope: !599, file: !521, line: 199, type: !96)
!606 = !DILocalVariable(name: "w", scope: !599, file: !521, line: 229, type: !501)
!607 = !DILocalVariable(name: "mbs", scope: !599, file: !521, line: 230, type: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !507, line: 6, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !509, line: 21, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 13, size: 64, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !610, file: !509, line: 15, baseType: !72, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !610, file: !509, line: 20, baseType: !614, size: 32, offset: 32)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !509, line: 16, size: 32, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !614, file: !509, line: 18, baseType: !65, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !614, file: !509, line: 19, baseType: !56, size: 32)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !619)
!619 = !{!284, !58}
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "slotvec", scope: !545, file: !521, line: 834, type: !622, isLocal: true, isDefinition: true)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !521, line: 823, size: 128, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !623, file: !521, line: 825, baseType: !147, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !623, file: !521, line: 826, baseType: !89, size: 64, offset: 64)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "nslots", scope: !545, file: !521, line: 832, type: !72, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "slotvec0", scope: !545, file: !521, line: 833, type: !623, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 704, elements: !383)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !635, line: 67, type: !377, isLocal: true, isDefinition: true)
!635 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !635, line: 69, type: !299, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !635, line: 83, type: !299, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !635, line: 83, type: !56, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !635, line: 85, type: !282, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !635, line: 88, type: !646, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 171)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !635, line: 88, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 34)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !635, line: 105, type: !159, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !635, line: 109, type: !658, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 23)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !635, line: 113, type: !663, isLocal: true, isDefinition: true)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 28)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !635, line: 120, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 32)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !635, line: 127, type: !673, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 36)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !635, line: 134, type: !326, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !635, line: 142, type: !680, isLocal: true, isDefinition: true)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 44)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !635, line: 150, type: !685, isLocal: true, isDefinition: true)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 48)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !635, line: 159, type: !690, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 52)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !635, line: 170, type: !695, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 60)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !635, line: 248, type: !174, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !635, line: 248, type: !164, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !635, line: 254, type: !174, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !635, line: 254, type: !154, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !635, line: 254, type: !326, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !635, line: 259, type: !3, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !635, line: 259, type: !712, isLocal: true, isDefinition: true)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 29)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !717, file: !718, line: 26, type: !720, isLocal: false, isDefinition: true)
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !719, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!719 = !{!715}
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 376, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 47)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(name: "exit_failure", scope: !725, file: !726, line: 24, type: !728, isLocal: false, isDefinition: true)
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !727, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!727 = !{!723}
!728 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !183, isLocal: true, isDefinition: true)
!731 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !299, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !321, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !738, line: 108, type: !41, isLocal: true, isDefinition: true)
!738 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "internal_state", scope: !741, file: !738, line: 97, type: !744, isLocal: true, isDefinition: true)
!741 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !742, globals: !743, splitDebugInlining: false, nameTableKind: None)
!742 = !{!145, !147, !150}
!743 = !{!736, !739}
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !507, line: 6, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !509, line: 21, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 13, size: 64, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !746, file: !509, line: 15, baseType: !72, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !746, file: !509, line: 20, baseType: !750, size: 32, offset: 32)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !509, line: 16, size: 32, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !750, file: !509, line: 18, baseType: !65, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !750, file: !509, line: 19, baseType: !56, size: 32)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !756, line: 35, type: !282, isLocal: true, isDefinition: true)
!756 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !756, line: 35, type: !277, isLocal: true, isDefinition: true)
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !635, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !762, retainedTypes: !766, globals: !767, splitDebugInlining: false, nameTableKind: None)
!762 = !{!763}
!763 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !635, line: 40, baseType: !65, size: 32, elements: !764)
!764 = !{!765}
!765 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!766 = !{!145}
!767 = !{!633, !636, !638, !640, !642, !644, !649, !654, !656, !661, !666, !671, !676, !678, !683, !688, !693, !698, !700, !702, !704, !706, !708, !710}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !770, retainedTypes: !801, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!770 = !{!771, !783}
!771 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !772, file: !769, line: 188, baseType: !65, size: 32, elements: !781)
!772 = distinct !DISubprogram(name: "x2nrealloc", scope: !769, file: !769, line: 176, type: !773, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !776)
!773 = !DISubroutineType(types: !774)
!774 = !{!145, !145, !775, !147}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!776 = !{!777, !778, !779, !780}
!777 = !DILocalVariable(name: "p", arg: 1, scope: !772, file: !769, line: 176, type: !145)
!778 = !DILocalVariable(name: "pn", arg: 2, scope: !772, file: !769, line: 176, type: !775)
!779 = !DILocalVariable(name: "s", arg: 3, scope: !772, file: !769, line: 176, type: !147)
!780 = !DILocalVariable(name: "n", scope: !772, file: !769, line: 178, type: !147)
!781 = !{!782}
!782 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!783 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !784, file: !769, line: 228, baseType: !65, size: 32, elements: !781)
!784 = distinct !DISubprogram(name: "xpalloc", scope: !769, file: !769, line: 223, type: !785, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !791)
!785 = !DISubroutineType(types: !786)
!786 = !{!145, !145, !787, !788, !790, !788}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !789, line: 130, baseType: !790)
!789 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !148, line: 35, baseType: !113)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800}
!792 = !DILocalVariable(name: "pa", arg: 1, scope: !784, file: !769, line: 223, type: !145)
!793 = !DILocalVariable(name: "pn", arg: 2, scope: !784, file: !769, line: 223, type: !787)
!794 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !784, file: !769, line: 223, type: !788)
!795 = !DILocalVariable(name: "n_max", arg: 4, scope: !784, file: !769, line: 223, type: !790)
!796 = !DILocalVariable(name: "s", arg: 5, scope: !784, file: !769, line: 223, type: !788)
!797 = !DILocalVariable(name: "n0", scope: !784, file: !769, line: 230, type: !788)
!798 = !DILocalVariable(name: "n", scope: !784, file: !769, line: 237, type: !788)
!799 = !DILocalVariable(name: "nbytes", scope: !784, file: !769, line: 248, type: !788)
!800 = !DILocalVariable(name: "adjusted_nbytes", scope: !784, file: !769, line: 252, type: !788)
!801 = !{!89, !145, !99, !113, !149}
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !803, splitDebugInlining: false, nameTableKind: None)
!803 = !{!729, !732, !734}
!804 = distinct !DICompileUnit(language: DW_LANG_C11, file: !805, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !806, retainedTypes: !807, splitDebugInlining: false, nameTableKind: None)
!805 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!806 = !{!76}
!807 = !{!99, !113, !149}
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!809 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !813, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!813 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !818, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!818 = !{!99, !149, !145}
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !820, splitDebugInlining: false, nameTableKind: None)
!820 = !{!754, !757}
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!825 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!826 = !{i32 7, !"Dwarf Version", i32 5}
!827 = !{i32 2, !"Debug Info Version", i32 3}
!828 = !{i32 1, !"wchar_size", i32 4}
!829 = !{i32 8, !"PIC Level", i32 2}
!830 = !{i32 7, !"PIE Level", i32 2}
!831 = !{i32 7, !"uwtable", i32 2}
!832 = !{i32 7, !"frame-pointer", i32 1}
!833 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 66, type: !834, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !72}
!836 = !{!837}
!837 = !DILocalVariable(name: "status", arg: 1, scope: !833, file: !2, line: 66, type: !72)
!838 = !DILocation(line: 0, scope: !833)
!839 = !DILocation(line: 68, column: 14, scope: !840)
!840 = distinct !DILexicalBlock(scope: !833, file: !2, line: 68, column: 7)
!841 = !DILocation(line: 68, column: 7, scope: !833)
!842 = !DILocation(line: 69, column: 5, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !2, line: 69, column: 5)
!844 = !{!845, !845, i64 0}
!845 = !{!"any pointer", !846, i64 0}
!846 = !{!"omnipotent char", !847, i64 0}
!847 = !{!"Simple C/C++ TBAA"}
!848 = !DILocation(line: 72, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !840, file: !2, line: 71, column: 5)
!850 = !DILocation(line: 73, column: 7, scope: !849)
!851 = !DILocation(line: 736, column: 3, scope: !852, inlinedAt: !854)
!852 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !64, file: !64, line: 734, type: !476, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !853)
!853 = !{}
!854 = distinct !DILocation(line: 80, column: 7, scope: !849)
!855 = !DILocation(line: 82, column: 7, scope: !849)
!856 = !DILocation(line: 86, column: 7, scope: !849)
!857 = !DILocation(line: 87, column: 7, scope: !849)
!858 = !DILocation(line: 88, column: 7, scope: !849)
!859 = !DILocalVariable(name: "program", arg: 1, scope: !860, file: !64, line: 824, type: !96)
!860 = distinct !DISubprogram(name: "emit_exec_status", scope: !64, file: !64, line: 824, type: !861, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !96}
!863 = !{!859}
!864 = !DILocation(line: 0, scope: !860, inlinedAt: !865)
!865 = distinct !DILocation(line: 89, column: 7, scope: !849)
!866 = !DILocation(line: 826, column: 7, scope: !860, inlinedAt: !865)
!867 = !DILocalVariable(name: "program", arg: 1, scope: !868, file: !64, line: 836, type: !96)
!868 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !64, file: !64, line: 836, type: !861, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !869)
!869 = !{!867, !870, !877, !878, !880, !881}
!870 = !DILocalVariable(name: "infomap", scope: !868, file: !64, line: 838, type: !871)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 896, elements: !300)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !868, file: !64, line: 838, size: 128, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !873, file: !64, line: 838, baseType: !96, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !873, file: !64, line: 838, baseType: !96, size: 64, offset: 64)
!877 = !DILocalVariable(name: "node", scope: !868, file: !64, line: 848, type: !96)
!878 = !DILocalVariable(name: "map_prog", scope: !868, file: !64, line: 849, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!880 = !DILocalVariable(name: "lc_messages", scope: !868, file: !64, line: 861, type: !96)
!881 = !DILocalVariable(name: "url_program", scope: !868, file: !64, line: 874, type: !96)
!882 = !DILocation(line: 0, scope: !868, inlinedAt: !883)
!883 = distinct !DILocation(line: 90, column: 7, scope: !849)
!884 = !DILocation(line: 857, column: 3, scope: !868, inlinedAt: !883)
!885 = !DILocation(line: 861, column: 29, scope: !868, inlinedAt: !883)
!886 = !DILocation(line: 862, column: 7, scope: !887, inlinedAt: !883)
!887 = distinct !DILexicalBlock(scope: !868, file: !64, line: 862, column: 7)
!888 = !DILocation(line: 862, column: 19, scope: !887, inlinedAt: !883)
!889 = !DILocation(line: 862, column: 22, scope: !887, inlinedAt: !883)
!890 = !DILocation(line: 862, column: 7, scope: !868, inlinedAt: !883)
!891 = !DILocation(line: 868, column: 7, scope: !892, inlinedAt: !883)
!892 = distinct !DILexicalBlock(scope: !887, file: !64, line: 863, column: 5)
!893 = !DILocation(line: 870, column: 5, scope: !892, inlinedAt: !883)
!894 = !DILocation(line: 875, column: 3, scope: !868, inlinedAt: !883)
!895 = !DILocation(line: 877, column: 3, scope: !868, inlinedAt: !883)
!896 = !DILocation(line: 92, column: 3, scope: !833)
!897 = !DISubprogram(name: "dcgettext", scope: !898, file: !898, line: 51, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!898 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!899 = !DISubroutineType(types: !900)
!900 = !{!89, !96, !96, !72}
!901 = !DISubprogram(name: "__fprintf_chk", scope: !902, file: !902, line: 93, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!902 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!903 = !DISubroutineType(types: !904)
!904 = !{!72, !905, !72, !906, null}
!905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!906 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!907 = !DISubprogram(name: "__printf_chk", scope: !902, file: !902, line: 95, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!908 = !DISubroutineType(types: !909)
!909 = !{!72, !72, !906, null}
!910 = !DISubprogram(name: "fputs_unlocked", scope: !435, file: !435, line: 691, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!911 = !DISubroutineType(types: !912)
!912 = !{!72, !906, !905}
!913 = !DILocation(line: 0, scope: !193)
!914 = !DILocation(line: 581, column: 7, scope: !201)
!915 = !{!916, !916, i64 0}
!916 = !{!"int", !846, i64 0}
!917 = !DILocation(line: 581, column: 19, scope: !201)
!918 = !DILocation(line: 581, column: 7, scope: !193)
!919 = !DILocation(line: 585, column: 26, scope: !200)
!920 = !DILocation(line: 0, scope: !200)
!921 = !DILocation(line: 586, column: 23, scope: !200)
!922 = !DILocation(line: 586, column: 28, scope: !200)
!923 = !DILocation(line: 586, column: 32, scope: !200)
!924 = !{!846, !846, i64 0}
!925 = !DILocation(line: 586, column: 38, scope: !200)
!926 = !DILocalVariable(name: "__s1", arg: 1, scope: !927, file: !928, line: 1359, type: !96)
!927 = distinct !DISubprogram(name: "streq", scope: !928, file: !928, line: 1359, type: !929, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !931)
!928 = !DIFile(filename: "./lib/string.h", directory: "/src")
!929 = !DISubroutineType(types: !930)
!930 = !{!99, !96, !96}
!931 = !{!926, !932}
!932 = !DILocalVariable(name: "__s2", arg: 2, scope: !927, file: !928, line: 1359, type: !96)
!933 = !DILocation(line: 0, scope: !927, inlinedAt: !934)
!934 = distinct !DILocation(line: 586, column: 41, scope: !200)
!935 = !DILocation(line: 1361, column: 11, scope: !927, inlinedAt: !934)
!936 = !DILocation(line: 1361, column: 10, scope: !927, inlinedAt: !934)
!937 = !DILocation(line: 586, column: 19, scope: !200)
!938 = !DILocation(line: 587, column: 5, scope: !200)
!939 = !DILocation(line: 588, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !193, file: !64, line: 588, column: 7)
!941 = !DILocation(line: 588, column: 7, scope: !193)
!942 = !DILocation(line: 590, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !64, line: 589, column: 5)
!944 = !DILocation(line: 591, column: 7, scope: !943)
!945 = !DILocation(line: 595, column: 37, scope: !193)
!946 = !DILocation(line: 595, column: 35, scope: !193)
!947 = !DILocation(line: 596, column: 29, scope: !193)
!948 = !DILocation(line: 597, column: 8, scope: !208)
!949 = !DILocation(line: 597, column: 7, scope: !193)
!950 = !DILocation(line: 604, column: 24, scope: !207)
!951 = !DILocation(line: 604, column: 12, scope: !208)
!952 = !DILocation(line: 0, scope: !206)
!953 = !DILocation(line: 610, column: 16, scope: !206)
!954 = !DILocation(line: 610, column: 7, scope: !206)
!955 = !DILocation(line: 611, column: 21, scope: !206)
!956 = !{!957, !957, i64 0}
!957 = !{!"short", !846, i64 0}
!958 = !DILocation(line: 611, column: 19, scope: !206)
!959 = !DILocation(line: 611, column: 16, scope: !206)
!960 = !DILocation(line: 610, column: 30, scope: !206)
!961 = distinct !{!961, !954, !955, !962}
!962 = !{!"llvm.loop.mustprogress"}
!963 = !DILocation(line: 612, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !206, file: !64, line: 612, column: 11)
!965 = !DILocation(line: 612, column: 11, scope: !206)
!966 = !DILocation(line: 620, column: 23, scope: !193)
!967 = !DILocation(line: 625, column: 39, scope: !193)
!968 = !DILocation(line: 626, column: 3, scope: !193)
!969 = !DILocation(line: 626, column: 10, scope: !193)
!970 = !DILocation(line: 626, column: 21, scope: !193)
!971 = !DILocation(line: 628, column: 44, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !64, line: 628, column: 11)
!973 = distinct !DILexicalBlock(scope: !193, file: !64, line: 627, column: 5)
!974 = !DILocation(line: 628, column: 32, scope: !972)
!975 = !DILocation(line: 628, column: 49, scope: !972)
!976 = !DILocation(line: 628, column: 11, scope: !973)
!977 = !DILocation(line: 630, column: 11, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !64, line: 630, column: 11)
!979 = !DILocation(line: 630, column: 11, scope: !973)
!980 = !DILocation(line: 632, column: 26, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !64, line: 632, column: 15)
!982 = distinct !DILexicalBlock(scope: !978, file: !64, line: 631, column: 9)
!983 = !DILocation(line: 632, column: 34, scope: !981)
!984 = !DILocation(line: 632, column: 37, scope: !981)
!985 = !DILocation(line: 632, column: 15, scope: !982)
!986 = !DILocation(line: 640, column: 16, scope: !973)
!987 = distinct !{!987, !968, !988, !962}
!988 = !DILocation(line: 641, column: 5, scope: !193)
!989 = !DILocation(line: 644, column: 3, scope: !193)
!990 = !DILocation(line: 0, scope: !927, inlinedAt: !991)
!991 = distinct !DILocation(line: 648, column: 31, scope: !193)
!992 = !DILocation(line: 0, scope: !927, inlinedAt: !993)
!993 = distinct !DILocation(line: 649, column: 31, scope: !193)
!994 = !DILocation(line: 0, scope: !927, inlinedAt: !995)
!995 = distinct !DILocation(line: 650, column: 31, scope: !193)
!996 = !DILocation(line: 0, scope: !927, inlinedAt: !997)
!997 = distinct !DILocation(line: 651, column: 31, scope: !193)
!998 = !DILocation(line: 0, scope: !927, inlinedAt: !999)
!999 = distinct !DILocation(line: 652, column: 31, scope: !193)
!1000 = !DILocation(line: 0, scope: !927, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 653, column: 31, scope: !193)
!1002 = !DILocation(line: 0, scope: !927, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 654, column: 31, scope: !193)
!1004 = !DILocation(line: 0, scope: !927, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 655, column: 31, scope: !193)
!1006 = !DILocation(line: 0, scope: !927, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 656, column: 31, scope: !193)
!1008 = !DILocation(line: 0, scope: !927, inlinedAt: !1009)
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
!1027 = !DISubprogram(name: "setlocale", scope: !1028, file: !1028, line: 122, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1028 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!89, !72, !96}
!1031 = !DISubprogram(name: "strncmp", scope: !1032, file: !1032, line: 159, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1032 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!72, !96, !96, !147}
!1035 = !DISubprogram(name: "exit", scope: !1036, file: !1036, line: 624, type: !834, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1036 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1037 = !DISubprogram(name: "getenv", scope: !1036, file: !1036, line: 641, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!89, !96}
!1040 = !DISubprogram(name: "strcmp", scope: !1032, file: !1032, line: 156, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!72, !96, !96}
!1043 = !DISubprogram(name: "strspn", scope: !1032, file: !1032, line: 297, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!149, !96, !96}
!1046 = !DISubprogram(name: "strchr", scope: !1032, file: !1032, line: 246, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!89, !96, !72}
!1049 = !DISubprogram(name: "__ctype_b_loc", scope: !130, file: !130, line: 79, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1055 = !DISubprogram(name: "strcspn", scope: !1032, file: !1032, line: 293, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1056 = !DISubprogram(name: "fwrite_unlocked", scope: !435, file: !435, line: 704, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!147, !1059, !147, !147, !905}
!1059 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1062 = !DILocation(line: 0, scope: !85)
!1063 = !DILocation(line: 111, column: 21, scope: !85)
!1064 = !DILocation(line: 111, column: 3, scope: !85)
!1065 = !DILocation(line: 112, column: 3, scope: !85)
!1066 = !DILocation(line: 113, column: 3, scope: !85)
!1067 = !DILocation(line: 114, column: 3, scope: !85)
!1068 = !DILocalVariable(name: "status", arg: 1, scope: !1069, file: !64, line: 102, type: !72)
!1069 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !64, file: !64, line: 102, type: !834, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1070)
!1070 = !{!1068}
!1071 = !DILocation(line: 0, scope: !1069, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 116, column: 3, scope: !85)
!1073 = !DILocation(line: 105, column: 18, scope: !1074, inlinedAt: !1072)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !64, line: 104, column: 7)
!1075 = !DILocation(line: 117, column: 3, scope: !85)
!1076 = !DILocation(line: 119, column: 17, scope: !103)
!1077 = !DILocation(line: 119, column: 3, scope: !104)
!1078 = !DILocation(line: 121, column: 23, scope: !102)
!1079 = !DILocation(line: 0, scope: !102)
!1080 = !DILocation(line: 123, column: 11, scope: !107)
!1081 = !DILocation(line: 123, column: 16, scope: !107)
!1082 = !DILocation(line: 123, column: 23, scope: !107)
!1083 = !DILocation(line: 123, column: 44, scope: !107)
!1084 = !DILocation(line: 123, column: 49, scope: !107)
!1085 = !DILocation(line: 123, column: 56, scope: !107)
!1086 = !DILocation(line: 123, column: 41, scope: !107)
!1087 = !DILocation(line: 123, column: 37, scope: !107)
!1088 = !DILocalVariable(name: "c", arg: 1, scope: !1089, file: !1090, line: 233, type: !72)
!1089 = distinct !DISubprogram(name: "c_isdigit", scope: !1090, file: !1090, line: 233, type: !1091, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1093)
!1090 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!99, !72}
!1093 = !{!1088}
!1094 = !DILocation(line: 0, scope: !1089, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 123, column: 26, scope: !107)
!1096 = !DILocation(line: 235, column: 3, scope: !1089, inlinedAt: !1095)
!1097 = !DILocation(line: 123, column: 11, scope: !102)
!1098 = !DILocation(line: 126, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !107, file: !2, line: 124, column: 9)
!1100 = !DILocation(line: 127, column: 9, scope: !1099)
!1101 = !DILocation(line: 131, column: 37, scope: !106)
!1102 = !DILocation(line: 131, column: 32, scope: !106)
!1103 = !DILocation(line: 0, scope: !106)
!1104 = !DILocation(line: 132, column: 35, scope: !106)
!1105 = !DILocation(line: 135, column: 26, scope: !106)
!1106 = !DILocation(line: 135, column: 24, scope: !106)
!1107 = !DILocation(line: 138, column: 18, scope: !106)
!1108 = !DILocation(line: 140, column: 15, scope: !106)
!1109 = !DILocation(line: 141, column: 16, scope: !106)
!1110 = !DILocation(line: 141, column: 13, scope: !106)
!1111 = !DILocation(line: 143, column: 11, scope: !106)
!1112 = !DILocation(line: 152, column: 13, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !106, file: !2, line: 144, column: 13)
!1114 = !DILocation(line: 154, column: 13, scope: !1113)
!1115 = !DILocation(line: 157, column: 15, scope: !1113)
!1116 = !DILocation(line: 146, column: 34, scope: !1113)
!1117 = !DILocation(line: 0, scope: !107)
!1118 = !DILocation(line: 0, scope: !104)
!1119 = !DILocation(line: 166, column: 7, scope: !112)
!1120 = !DILocation(line: 166, column: 7, scope: !85)
!1121 = !DILocation(line: 179, column: 7, scope: !111)
!1122 = !DILocation(line: 0, scope: !111)
!1123 = !DILocation(line: 180, column: 30, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !111, file: !2, line: 180, column: 11)
!1125 = !DILocation(line: 180, column: 28, scope: !1124)
!1126 = !DILocation(line: 180, column: 11, scope: !111)
!1127 = !DILocation(line: 181, column: 9, scope: !1124)
!1128 = !DILocation(line: 213, column: 9, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !85, file: !2, line: 213, column: 7)
!1130 = !DILocation(line: 213, column: 7, scope: !85)
!1131 = !DILocation(line: 209, column: 20, scope: !111)
!1132 = !{!1133, !1133, i64 0}
!1133 = !{!"long", !846, i64 0}
!1134 = !DILocation(line: 211, column: 5, scope: !112)
!1135 = !DILocation(line: 217, column: 11, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 216, column: 9)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 215, column: 11)
!1138 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 214, column: 5)
!1139 = !DILocation(line: 218, column: 11, scope: !1136)
!1140 = !DILocation(line: 221, column: 7, scope: !1138)
!1141 = !DILocation(line: 221, column: 13, scope: !1138)
!1142 = !DILocation(line: 222, column: 26, scope: !1138)
!1143 = !DILocation(line: 223, column: 28, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 223, column: 11)
!1145 = !DILocation(line: 223, column: 34, scope: !1144)
!1146 = !DILocation(line: 223, column: 37, scope: !1144)
!1147 = !DILocation(line: 223, column: 43, scope: !1144)
!1148 = !DILocation(line: 223, column: 11, scope: !1138)
!1149 = !DILocation(line: 224, column: 9, scope: !1144)
!1150 = !DILocation(line: 225, column: 7, scope: !1138)
!1151 = !DILocation(line: 226, column: 7, scope: !1138)
!1152 = !DILocation(line: 229, column: 3, scope: !85)
!1153 = !DILocation(line: 229, column: 9, scope: !85)
!1154 = !DILocation(line: 233, column: 22, scope: !85)
!1155 = !DILocation(line: 234, column: 24, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !85, file: !2, line: 234, column: 7)
!1157 = !DILocation(line: 234, column: 30, scope: !1156)
!1158 = !DILocation(line: 234, column: 33, scope: !1156)
!1159 = !DILocation(line: 234, column: 39, scope: !1156)
!1160 = !DILocation(line: 234, column: 7, scope: !85)
!1161 = !DILocation(line: 235, column: 5, scope: !1156)
!1162 = !DILocation(line: 236, column: 56, scope: !85)
!1163 = !DILocation(line: 236, column: 9, scope: !85)
!1164 = !DILocation(line: 236, column: 70, scope: !85)
!1165 = !DILocation(line: 238, column: 7, scope: !85)
!1166 = !DILocation(line: 240, column: 7, scope: !115)
!1167 = !DILocalVariable(name: "err", arg: 1, scope: !1168, file: !2, line: 96, type: !72)
!1168 = distinct !DISubprogram(name: "perm_related_errno", scope: !2, file: !2, line: 96, type: !1091, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1169)
!1169 = !{!1167}
!1170 = !DILocation(line: 0, scope: !1168, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 240, column: 7, scope: !115)
!1172 = !DILocation(line: 98, column: 14, scope: !1168, inlinedAt: !1171)
!1173 = !DILocation(line: 98, column: 24, scope: !1168, inlinedAt: !1171)
!1174 = !DILocation(line: 0, scope: !115)
!1175 = !DILocation(line: 247, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !116, file: !2, line: 247, column: 11)
!1177 = !DILocalVariable(name: "__stream", arg: 1, scope: !1178, file: !1179, line: 135, type: !215)
!1178 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1179, file: !1179, line: 135, type: !1180, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1182)
!1179 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!72, !215}
!1182 = !{!1177}
!1183 = !DILocation(line: 0, scope: !1178, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 247, column: 11, scope: !1176)
!1185 = !DILocation(line: 137, column: 10, scope: !1178, inlinedAt: !1184)
!1186 = !{!1187, !916, i64 0}
!1187 = !{!"_IO_FILE", !916, i64 0, !845, i64 8, !845, i64 16, !845, i64 24, !845, i64 32, !845, i64 40, !845, i64 48, !845, i64 56, !845, i64 64, !845, i64 72, !845, i64 80, !845, i64 88, !845, i64 96, !845, i64 104, !916, i64 112, !916, i64 116, !1133, i64 120, !957, i64 128, !846, i64 130, !846, i64 131, !845, i64 136, !1133, i64 144, !845, i64 152, !845, i64 160, !845, i64 168, !845, i64 176, !1133, i64 184, !916, i64 192, !846, i64 196}
!1188 = !DILocation(line: 247, column: 11, scope: !116)
!1189 = !DILocation(line: 251, column: 11, scope: !85)
!1190 = !DILocation(line: 251, column: 3, scope: !85)
!1191 = !DILocation(line: 253, column: 21, scope: !85)
!1192 = !DILocation(line: 253, column: 27, scope: !85)
!1193 = !DILocation(line: 254, column: 3, scope: !85)
!1194 = !DILocation(line: 256, column: 1, scope: !85)
!1195 = !DISubprogram(name: "bindtextdomain", scope: !898, file: !898, line: 86, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!89, !96, !96}
!1198 = !DISubprogram(name: "textdomain", scope: !898, file: !898, line: 82, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1199 = !DISubprogram(name: "atexit", scope: !1036, file: !1036, line: 602, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!72, !475}
!1202 = !DISubprogram(name: "getopt_long", scope: !392, file: !392, line: 66, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!72, !72, !1205, !96, !1207, !397}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1208 = !DISubprogram(name: "__errno_location", scope: !1209, file: !1209, line: 37, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1209 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!397}
!1212 = !DISubprogram(name: "getpriority", scope: !1213, file: !1213, line: 105, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1213 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "e55940cb1bf33174af2c45f02cd69e8a")
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!72, !1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__priority_which_t", file: !1213, line: 40, baseType: !123)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "id_t", file: !1218, line: 103, baseType: !1219)
!1218 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__id_t", file: !242, line: 159, baseType: !65)
!1220 = !DISubprogram(name: "setpriority", scope: !1213, file: !1213, line: 109, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!72, !1216, !1217, !72}
!1223 = !DISubprogram(name: "execvp", scope: !1224, file: !1224, line: 599, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1224 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!72, !96, !1205}
!1227 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !409, file: !409, line: 50, type: !861, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1228)
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
!1241 = !{!"_Bool", !846, i64 0}
!1242 = !DILocation(line: 90, column: 1, scope: !1233)
!1243 = distinct !DISubprogram(name: "close_stdout", scope: !409, file: !409, line: 116, type: !476, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1244)
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
!1276 = !DISubprogram(name: "_exit", scope: !1224, file: !1224, line: 624, type: !834, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1277 = distinct !DISubprogram(name: "verror", scope: !424, file: !424, line: 251, type: !1278, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !72, !72, !96, !434}
!1280 = !{!1281, !1282, !1283, !1284}
!1281 = !DILocalVariable(name: "status", arg: 1, scope: !1277, file: !424, line: 251, type: !72)
!1282 = !DILocalVariable(name: "errnum", arg: 2, scope: !1277, file: !424, line: 251, type: !72)
!1283 = !DILocalVariable(name: "message", arg: 3, scope: !1277, file: !424, line: 251, type: !96)
!1284 = !DILocalVariable(name: "args", arg: 4, scope: !1277, file: !424, line: 251, type: !434)
!1285 = !DILocation(line: 0, scope: !1277)
!1286 = !DILocation(line: 251, column: 1, scope: !1277)
!1287 = !DILocation(line: 261, column: 3, scope: !1277)
!1288 = !DILocation(line: 265, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1277, file: !424, line: 265, column: 7)
!1290 = !DILocation(line: 265, column: 7, scope: !1277)
!1291 = !DILocation(line: 266, column: 5, scope: !1289)
!1292 = !DILocation(line: 272, column: 7, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !424, line: 268, column: 5)
!1294 = !DILocation(line: 276, column: 3, scope: !1277)
!1295 = !{i64 0, i64 8, !844, i64 8, i64 8, !844, i64 16, i64 8, !844, i64 24, i64 4, !915, i64 28, i64 4, !915}
!1296 = !DILocation(line: 282, column: 1, scope: !1277)
!1297 = distinct !DISubprogram(name: "flush_stdout", scope: !424, file: !424, line: 163, type: !476, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1298)
!1298 = !{!1299}
!1299 = !DILocalVariable(name: "stdout_fd", scope: !1297, file: !424, line: 166, type: !72)
!1300 = !DILocation(line: 0, scope: !1297)
!1301 = !DILocalVariable(name: "fd", arg: 1, scope: !1302, file: !424, line: 145, type: !72)
!1302 = distinct !DISubprogram(name: "is_open", scope: !424, file: !424, line: 145, type: !1303, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!72, !72}
!1305 = !{!1301}
!1306 = !DILocation(line: 0, scope: !1302, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 182, column: 25, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1297, file: !424, line: 182, column: 7)
!1309 = !DILocation(line: 157, column: 15, scope: !1302, inlinedAt: !1307)
!1310 = !DILocation(line: 157, column: 12, scope: !1302, inlinedAt: !1307)
!1311 = !DILocation(line: 182, column: 7, scope: !1297)
!1312 = !DILocation(line: 184, column: 5, scope: !1308)
!1313 = !DILocation(line: 185, column: 1, scope: !1297)
!1314 = distinct !DISubprogram(name: "error_tail", scope: !424, file: !424, line: 219, type: !1278, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1315)
!1315 = !{!1316, !1317, !1318, !1319}
!1316 = !DILocalVariable(name: "status", arg: 1, scope: !1314, file: !424, line: 219, type: !72)
!1317 = !DILocalVariable(name: "errnum", arg: 2, scope: !1314, file: !424, line: 219, type: !72)
!1318 = !DILocalVariable(name: "message", arg: 3, scope: !1314, file: !424, line: 219, type: !96)
!1319 = !DILocalVariable(name: "args", arg: 4, scope: !1314, file: !424, line: 219, type: !434)
!1320 = !DILocation(line: 0, scope: !1314)
!1321 = !DILocation(line: 219, column: 1, scope: !1314)
!1322 = !DILocation(line: 229, column: 13, scope: !1314)
!1323 = !DILocation(line: 135, column: 10, scope: !1324, inlinedAt: !1366)
!1324 = distinct !DISubprogram(name: "vfprintf", scope: !902, file: !902, line: 132, type: !1325, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1362)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!72, !1327, !906, !436}
!1327 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1330, file: !219, line: 51, baseType: !72, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1330, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1330, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1330, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1330, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1330, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1330, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1330, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1330, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1330, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1330, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1330, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1330, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1330, file: !219, line: 70, baseType: !1346, size: 64, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1330, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1330, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1330, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1330, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1330, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1330, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1330, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1330, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1330, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1330, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1330, file: !219, line: 93, baseType: !1346, size: 64, offset: 1344)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1330, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1330, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1330, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1330, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!1362 = !{!1363, !1364, !1365}
!1363 = !DILocalVariable(name: "__stream", arg: 1, scope: !1324, file: !902, line: 132, type: !1327)
!1364 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1324, file: !902, line: 133, type: !906)
!1365 = !DILocalVariable(name: "__ap", arg: 3, scope: !1324, file: !902, line: 133, type: !436)
!1366 = distinct !DILocation(line: 229, column: 3, scope: !1314)
!1367 = !{!1368, !1370}
!1368 = distinct !{!1368, !1369, !"vfprintf.inline: argument 0"}
!1369 = distinct !{!1369, !"vfprintf.inline"}
!1370 = distinct !{!1370, !1369, !"vfprintf.inline: argument 1"}
!1371 = !DILocation(line: 229, column: 3, scope: !1314)
!1372 = !DILocation(line: 0, scope: !1324, inlinedAt: !1366)
!1373 = !DILocation(line: 133, column: 49, scope: !1324, inlinedAt: !1366)
!1374 = !DILocation(line: 232, column: 3, scope: !1314)
!1375 = !DILocation(line: 233, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1314, file: !424, line: 233, column: 7)
!1377 = !DILocation(line: 233, column: 7, scope: !1314)
!1378 = !DILocalVariable(name: "errnum", arg: 1, scope: !1379, file: !424, line: 188, type: !72)
!1379 = distinct !DISubprogram(name: "print_errno_message", scope: !424, file: !424, line: 188, type: !834, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1380)
!1380 = !{!1378, !1381, !1382}
!1381 = !DILocalVariable(name: "s", scope: !1379, file: !424, line: 190, type: !96)
!1382 = !DILocalVariable(name: "errbuf", scope: !1379, file: !424, line: 193, type: !1383)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 1024)
!1386 = !DILocation(line: 0, scope: !1379, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 234, column: 5, scope: !1376)
!1388 = !DILocation(line: 193, column: 3, scope: !1379, inlinedAt: !1387)
!1389 = !DILocation(line: 193, column: 8, scope: !1379, inlinedAt: !1387)
!1390 = !DILocation(line: 195, column: 7, scope: !1379, inlinedAt: !1387)
!1391 = !DILocation(line: 207, column: 9, scope: !1392, inlinedAt: !1387)
!1392 = distinct !DILexicalBlock(scope: !1379, file: !424, line: 207, column: 7)
!1393 = !DILocation(line: 207, column: 7, scope: !1379, inlinedAt: !1387)
!1394 = !DILocation(line: 208, column: 9, scope: !1392, inlinedAt: !1387)
!1395 = !DILocation(line: 208, column: 5, scope: !1392, inlinedAt: !1387)
!1396 = !DILocation(line: 214, column: 3, scope: !1379, inlinedAt: !1387)
!1397 = !DILocation(line: 216, column: 1, scope: !1379, inlinedAt: !1387)
!1398 = !DILocation(line: 234, column: 5, scope: !1376)
!1399 = !DILocation(line: 238, column: 3, scope: !1314)
!1400 = !DILocalVariable(name: "__c", arg: 1, scope: !1401, file: !1179, line: 101, type: !72)
!1401 = distinct !DISubprogram(name: "putc_unlocked", scope: !1179, file: !1179, line: 101, type: !1402, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!72, !72, !1328}
!1404 = !{!1400, !1405}
!1405 = !DILocalVariable(name: "__stream", arg: 2, scope: !1401, file: !1179, line: 101, type: !1328)
!1406 = !DILocation(line: 0, scope: !1401, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 238, column: 3, scope: !1314)
!1408 = !DILocation(line: 103, column: 10, scope: !1401, inlinedAt: !1407)
!1409 = !{!1187, !845, i64 40}
!1410 = !{!1187, !845, i64 48}
!1411 = !{!"branch_weights", i32 2000, i32 1}
!1412 = !DILocation(line: 240, column: 3, scope: !1314)
!1413 = !DILocation(line: 241, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1314, file: !424, line: 241, column: 7)
!1415 = !DILocation(line: 241, column: 7, scope: !1314)
!1416 = !DILocation(line: 242, column: 5, scope: !1414)
!1417 = !DILocation(line: 243, column: 1, scope: !1314)
!1418 = !DISubprogram(name: "__vfprintf_chk", scope: !902, file: !902, line: 96, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!72, !1327, !72, !906, !436}
!1421 = !DISubprogram(name: "strerror_r", scope: !1032, file: !1032, line: 444, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!89, !72, !89, !147}
!1424 = !DISubprogram(name: "__overflow", scope: !435, file: !435, line: 886, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!72, !1328, !72}
!1427 = !DISubprogram(name: "fflush_unlocked", scope: !435, file: !435, line: 239, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!72, !1328}
!1430 = !DISubprogram(name: "fcntl", scope: !1431, file: !1431, line: 149, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1431 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!72, !72, !72, null}
!1434 = distinct !DISubprogram(name: "error", scope: !424, file: !424, line: 285, type: !1435, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !72, !72, !96, null}
!1437 = !{!1438, !1439, !1440, !1441}
!1438 = !DILocalVariable(name: "status", arg: 1, scope: !1434, file: !424, line: 285, type: !72)
!1439 = !DILocalVariable(name: "errnum", arg: 2, scope: !1434, file: !424, line: 285, type: !72)
!1440 = !DILocalVariable(name: "message", arg: 3, scope: !1434, file: !424, line: 285, type: !96)
!1441 = !DILocalVariable(name: "ap", scope: !1434, file: !424, line: 287, type: !434)
!1442 = !DILocation(line: 0, scope: !1434)
!1443 = !DILocation(line: 287, column: 3, scope: !1434)
!1444 = !DILocation(line: 287, column: 11, scope: !1434)
!1445 = !DILocation(line: 288, column: 3, scope: !1434)
!1446 = !DILocation(line: 289, column: 3, scope: !1434)
!1447 = !DILocation(line: 290, column: 3, scope: !1434)
!1448 = !DILocation(line: 291, column: 1, scope: !1434)
!1449 = !DILocation(line: 0, scope: !431)
!1450 = !DILocation(line: 298, column: 1, scope: !431)
!1451 = !DILocation(line: 302, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !431, file: !424, line: 302, column: 7)
!1453 = !DILocation(line: 302, column: 7, scope: !431)
!1454 = !DILocation(line: 307, column: 11, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !424, line: 307, column: 11)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !424, line: 303, column: 5)
!1457 = !DILocation(line: 307, column: 27, scope: !1455)
!1458 = !DILocation(line: 308, column: 11, scope: !1455)
!1459 = !DILocation(line: 308, column: 28, scope: !1455)
!1460 = !DILocation(line: 308, column: 25, scope: !1455)
!1461 = !DILocation(line: 309, column: 15, scope: !1455)
!1462 = !DILocation(line: 309, column: 33, scope: !1455)
!1463 = !DILocation(line: 310, column: 19, scope: !1455)
!1464 = !DILocation(line: 311, column: 22, scope: !1455)
!1465 = !DILocation(line: 311, column: 56, scope: !1455)
!1466 = !DILocation(line: 307, column: 11, scope: !1456)
!1467 = !DILocation(line: 316, column: 21, scope: !1456)
!1468 = !DILocation(line: 317, column: 23, scope: !1456)
!1469 = !DILocation(line: 318, column: 5, scope: !1456)
!1470 = !DILocation(line: 327, column: 3, scope: !431)
!1471 = !DILocation(line: 331, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !431, file: !424, line: 331, column: 7)
!1473 = !DILocation(line: 331, column: 7, scope: !431)
!1474 = !DILocation(line: 332, column: 5, scope: !1472)
!1475 = !DILocation(line: 338, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !424, line: 334, column: 5)
!1477 = !DILocation(line: 346, column: 3, scope: !431)
!1478 = !DILocation(line: 350, column: 3, scope: !431)
!1479 = !DILocation(line: 356, column: 1, scope: !431)
!1480 = distinct !DISubprogram(name: "error_at_line", scope: !424, file: !424, line: 359, type: !1481, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !72, !72, !96, !65, !96, null}
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489}
!1484 = !DILocalVariable(name: "status", arg: 1, scope: !1480, file: !424, line: 359, type: !72)
!1485 = !DILocalVariable(name: "errnum", arg: 2, scope: !1480, file: !424, line: 359, type: !72)
!1486 = !DILocalVariable(name: "file_name", arg: 3, scope: !1480, file: !424, line: 359, type: !96)
!1487 = !DILocalVariable(name: "line_number", arg: 4, scope: !1480, file: !424, line: 360, type: !65)
!1488 = !DILocalVariable(name: "message", arg: 5, scope: !1480, file: !424, line: 360, type: !96)
!1489 = !DILocalVariable(name: "ap", scope: !1480, file: !424, line: 362, type: !434)
!1490 = !DILocation(line: 0, scope: !1480)
!1491 = !DILocation(line: 362, column: 3, scope: !1480)
!1492 = !DILocation(line: 362, column: 11, scope: !1480)
!1493 = !DILocation(line: 363, column: 3, scope: !1480)
!1494 = !DILocation(line: 364, column: 3, scope: !1480)
!1495 = !DILocation(line: 366, column: 3, scope: !1480)
!1496 = !DILocation(line: 367, column: 1, scope: !1480)
!1497 = distinct !DISubprogram(name: "getprogname", scope: !760, file: !760, line: 54, type: !1498, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !853)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!96}
!1500 = !DILocation(line: 58, column: 10, scope: !1497)
!1501 = !DILocation(line: 58, column: 3, scope: !1497)
!1502 = distinct !DISubprogram(name: "set_program_name", scope: !481, file: !481, line: 37, type: !861, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1503)
!1503 = !{!1504, !1505, !1506}
!1504 = !DILocalVariable(name: "argv0", arg: 1, scope: !1502, file: !481, line: 37, type: !96)
!1505 = !DILocalVariable(name: "slash", scope: !1502, file: !481, line: 44, type: !96)
!1506 = !DILocalVariable(name: "base", scope: !1502, file: !481, line: 45, type: !96)
!1507 = !DILocation(line: 0, scope: !1502)
!1508 = !DILocation(line: 44, column: 23, scope: !1502)
!1509 = !DILocation(line: 45, column: 22, scope: !1502)
!1510 = !DILocation(line: 46, column: 17, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1502, file: !481, line: 46, column: 7)
!1512 = !DILocation(line: 46, column: 9, scope: !1511)
!1513 = !DILocation(line: 46, column: 25, scope: !1511)
!1514 = !DILocation(line: 46, column: 40, scope: !1511)
!1515 = !DILocalVariable(name: "__s1", arg: 1, scope: !1516, file: !928, line: 974, type: !1060)
!1516 = distinct !DISubprogram(name: "memeq", scope: !928, file: !928, line: 974, type: !1517, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!99, !1060, !1060, !147}
!1519 = !{!1515, !1520, !1521}
!1520 = !DILocalVariable(name: "__s2", arg: 2, scope: !1516, file: !928, line: 974, type: !1060)
!1521 = !DILocalVariable(name: "__n", arg: 3, scope: !1516, file: !928, line: 974, type: !147)
!1522 = !DILocation(line: 0, scope: !1516, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 46, column: 28, scope: !1511)
!1524 = !DILocation(line: 976, column: 11, scope: !1516, inlinedAt: !1523)
!1525 = !DILocation(line: 976, column: 10, scope: !1516, inlinedAt: !1523)
!1526 = !DILocation(line: 46, column: 7, scope: !1502)
!1527 = !DILocation(line: 49, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !481, line: 49, column: 11)
!1529 = distinct !DILexicalBlock(scope: !1511, file: !481, line: 47, column: 5)
!1530 = !DILocation(line: 49, column: 36, scope: !1528)
!1531 = !DILocation(line: 49, column: 11, scope: !1529)
!1532 = !DILocation(line: 65, column: 16, scope: !1502)
!1533 = !DILocation(line: 71, column: 27, scope: !1502)
!1534 = !DILocation(line: 74, column: 33, scope: !1502)
!1535 = !DILocation(line: 76, column: 1, scope: !1502)
!1536 = !DISubprogram(name: "strrchr", scope: !1032, file: !1032, line: 273, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1537 = !DILocation(line: 0, scope: !490)
!1538 = !DILocation(line: 40, column: 29, scope: !490)
!1539 = !DILocation(line: 41, column: 19, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !490, file: !491, line: 41, column: 7)
!1541 = !DILocation(line: 41, column: 7, scope: !490)
!1542 = !DILocation(line: 47, column: 3, scope: !490)
!1543 = !DILocation(line: 48, column: 3, scope: !490)
!1544 = !DILocation(line: 48, column: 13, scope: !490)
!1545 = !DILocalVariable(name: "ps", arg: 1, scope: !1546, file: !1547, line: 1135, type: !1550)
!1546 = distinct !DISubprogram(name: "mbszero", scope: !1547, file: !1547, line: 1135, type: !1548, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1551)
!1547 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !1550}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1551 = !{!1545}
!1552 = !DILocation(line: 0, scope: !1546, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 48, column: 18, scope: !490)
!1554 = !DILocalVariable(name: "__dest", arg: 1, scope: !1555, file: !1556, line: 57, type: !145)
!1555 = distinct !DISubprogram(name: "memset", scope: !1556, file: !1556, line: 57, type: !1557, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1559)
!1556 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!145, !145, !72, !147}
!1559 = !{!1554, !1560, !1561}
!1560 = !DILocalVariable(name: "__ch", arg: 2, scope: !1555, file: !1556, line: 57, type: !72)
!1561 = !DILocalVariable(name: "__len", arg: 3, scope: !1555, file: !1556, line: 57, type: !147)
!1562 = !DILocation(line: 0, scope: !1555, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 1137, column: 3, scope: !1546, inlinedAt: !1553)
!1564 = !DILocation(line: 59, column: 10, scope: !1555, inlinedAt: !1563)
!1565 = !DILocation(line: 49, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !490, file: !491, line: 49, column: 7)
!1567 = !DILocation(line: 49, column: 39, scope: !1566)
!1568 = !DILocation(line: 49, column: 44, scope: !1566)
!1569 = !DILocation(line: 54, column: 1, scope: !490)
!1570 = !DISubprogram(name: "mbrtoc32", scope: !502, file: !502, line: 57, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!147, !1573, !906, !147, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1574)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1550)
!1576 = distinct !DISubprogram(name: "clone_quoting_options", scope: !521, file: !521, line: 113, type: !1577, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1580)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1579, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!1580 = !{!1581, !1582, !1583}
!1581 = !DILocalVariable(name: "o", arg: 1, scope: !1576, file: !521, line: 113, type: !1579)
!1582 = !DILocalVariable(name: "saved_errno", scope: !1576, file: !521, line: 115, type: !72)
!1583 = !DILocalVariable(name: "p", scope: !1576, file: !521, line: 116, type: !1579)
!1584 = !DILocation(line: 0, scope: !1576)
!1585 = !DILocation(line: 115, column: 21, scope: !1576)
!1586 = !DILocation(line: 116, column: 40, scope: !1576)
!1587 = !DILocation(line: 116, column: 31, scope: !1576)
!1588 = !DILocation(line: 118, column: 9, scope: !1576)
!1589 = !DILocation(line: 119, column: 3, scope: !1576)
!1590 = distinct !DISubprogram(name: "get_quoting_style", scope: !521, file: !521, line: 124, type: !1591, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1595)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!547, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!1595 = !{!1596}
!1596 = !DILocalVariable(name: "o", arg: 1, scope: !1590, file: !521, line: 124, type: !1593)
!1597 = !DILocation(line: 0, scope: !1590)
!1598 = !DILocation(line: 126, column: 11, scope: !1590)
!1599 = !DILocation(line: 126, column: 46, scope: !1590)
!1600 = !{!1601, !846, i64 0}
!1601 = !{!"quoting_options", !846, i64 0, !916, i64 4, !846, i64 8, !845, i64 40, !845, i64 48}
!1602 = !DILocation(line: 126, column: 3, scope: !1590)
!1603 = distinct !DISubprogram(name: "set_quoting_style", scope: !521, file: !521, line: 132, type: !1604, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1579, !547}
!1606 = !{!1607, !1608}
!1607 = !DILocalVariable(name: "o", arg: 1, scope: !1603, file: !521, line: 132, type: !1579)
!1608 = !DILocalVariable(name: "s", arg: 2, scope: !1603, file: !521, line: 132, type: !547)
!1609 = !DILocation(line: 0, scope: !1603)
!1610 = !DILocation(line: 134, column: 4, scope: !1603)
!1611 = !DILocation(line: 134, column: 45, scope: !1603)
!1612 = !DILocation(line: 135, column: 1, scope: !1603)
!1613 = distinct !DISubprogram(name: "set_char_quoting", scope: !521, file: !521, line: 143, type: !1614, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1616)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!72, !1579, !4, !72}
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1623, !1624}
!1617 = !DILocalVariable(name: "o", arg: 1, scope: !1613, file: !521, line: 143, type: !1579)
!1618 = !DILocalVariable(name: "c", arg: 2, scope: !1613, file: !521, line: 143, type: !4)
!1619 = !DILocalVariable(name: "i", arg: 3, scope: !1613, file: !521, line: 143, type: !72)
!1620 = !DILocalVariable(name: "uc", scope: !1613, file: !521, line: 145, type: !150)
!1621 = !DILocalVariable(name: "p", scope: !1613, file: !521, line: 146, type: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1623 = !DILocalVariable(name: "shift", scope: !1613, file: !521, line: 148, type: !72)
!1624 = !DILocalVariable(name: "r", scope: !1613, file: !521, line: 149, type: !65)
!1625 = !DILocation(line: 0, scope: !1613)
!1626 = !DILocation(line: 147, column: 6, scope: !1613)
!1627 = !DILocation(line: 147, column: 41, scope: !1613)
!1628 = !DILocation(line: 147, column: 62, scope: !1613)
!1629 = !DILocation(line: 147, column: 57, scope: !1613)
!1630 = !DILocation(line: 148, column: 15, scope: !1613)
!1631 = !DILocation(line: 149, column: 21, scope: !1613)
!1632 = !DILocation(line: 149, column: 24, scope: !1613)
!1633 = !DILocation(line: 149, column: 34, scope: !1613)
!1634 = !DILocation(line: 150, column: 19, scope: !1613)
!1635 = !DILocation(line: 150, column: 24, scope: !1613)
!1636 = !DILocation(line: 150, column: 6, scope: !1613)
!1637 = !DILocation(line: 151, column: 3, scope: !1613)
!1638 = distinct !DISubprogram(name: "set_quoting_flags", scope: !521, file: !521, line: 159, type: !1639, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!72, !1579, !72}
!1641 = !{!1642, !1643, !1644}
!1642 = !DILocalVariable(name: "o", arg: 1, scope: !1638, file: !521, line: 159, type: !1579)
!1643 = !DILocalVariable(name: "i", arg: 2, scope: !1638, file: !521, line: 159, type: !72)
!1644 = !DILocalVariable(name: "r", scope: !1638, file: !521, line: 163, type: !72)
!1645 = !DILocation(line: 0, scope: !1638)
!1646 = !DILocation(line: 161, column: 8, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1638, file: !521, line: 161, column: 7)
!1648 = !DILocation(line: 161, column: 7, scope: !1638)
!1649 = !DILocation(line: 163, column: 14, scope: !1638)
!1650 = !{!1601, !916, i64 4}
!1651 = !DILocation(line: 164, column: 12, scope: !1638)
!1652 = !DILocation(line: 165, column: 3, scope: !1638)
!1653 = distinct !DISubprogram(name: "set_custom_quoting", scope: !521, file: !521, line: 169, type: !1654, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1579, !96, !96}
!1656 = !{!1657, !1658, !1659}
!1657 = !DILocalVariable(name: "o", arg: 1, scope: !1653, file: !521, line: 169, type: !1579)
!1658 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1653, file: !521, line: 170, type: !96)
!1659 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1653, file: !521, line: 170, type: !96)
!1660 = !DILocation(line: 0, scope: !1653)
!1661 = !DILocation(line: 172, column: 8, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1653, file: !521, line: 172, column: 7)
!1663 = !DILocation(line: 172, column: 7, scope: !1653)
!1664 = !DILocation(line: 174, column: 12, scope: !1653)
!1665 = !DILocation(line: 175, column: 8, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1653, file: !521, line: 175, column: 7)
!1667 = !DILocation(line: 175, column: 19, scope: !1666)
!1668 = !DILocation(line: 176, column: 5, scope: !1666)
!1669 = !DILocation(line: 177, column: 6, scope: !1653)
!1670 = !DILocation(line: 177, column: 17, scope: !1653)
!1671 = !{!1601, !845, i64 40}
!1672 = !DILocation(line: 178, column: 6, scope: !1653)
!1673 = !DILocation(line: 178, column: 18, scope: !1653)
!1674 = !{!1601, !845, i64 48}
!1675 = !DILocation(line: 179, column: 1, scope: !1653)
!1676 = !DISubprogram(name: "abort", scope: !1036, file: !1036, line: 598, type: !476, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1677 = distinct !DISubprogram(name: "quotearg_buffer", scope: !521, file: !521, line: 774, type: !1678, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1680)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!147, !89, !147, !96, !147, !1593}
!1680 = !{!1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1681 = !DILocalVariable(name: "buffer", arg: 1, scope: !1677, file: !521, line: 774, type: !89)
!1682 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1677, file: !521, line: 774, type: !147)
!1683 = !DILocalVariable(name: "arg", arg: 3, scope: !1677, file: !521, line: 775, type: !96)
!1684 = !DILocalVariable(name: "argsize", arg: 4, scope: !1677, file: !521, line: 775, type: !147)
!1685 = !DILocalVariable(name: "o", arg: 5, scope: !1677, file: !521, line: 776, type: !1593)
!1686 = !DILocalVariable(name: "p", scope: !1677, file: !521, line: 778, type: !1593)
!1687 = !DILocalVariable(name: "saved_errno", scope: !1677, file: !521, line: 779, type: !72)
!1688 = !DILocalVariable(name: "r", scope: !1677, file: !521, line: 780, type: !147)
!1689 = !DILocation(line: 0, scope: !1677)
!1690 = !DILocation(line: 778, column: 37, scope: !1677)
!1691 = !DILocation(line: 779, column: 21, scope: !1677)
!1692 = !DILocation(line: 781, column: 43, scope: !1677)
!1693 = !DILocation(line: 781, column: 53, scope: !1677)
!1694 = !DILocation(line: 781, column: 63, scope: !1677)
!1695 = !DILocation(line: 782, column: 43, scope: !1677)
!1696 = !DILocation(line: 782, column: 58, scope: !1677)
!1697 = !DILocation(line: 780, column: 14, scope: !1677)
!1698 = !DILocation(line: 783, column: 9, scope: !1677)
!1699 = !DILocation(line: 784, column: 3, scope: !1677)
!1700 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !521, file: !521, line: 251, type: !1701, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1705)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!147, !89, !147, !96, !147, !547, !72, !1703, !96, !96}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1730, !1732, !1735, !1736, !1737, !1738, !1741, !1742, !1745, !1749, !1750, !1758, !1761, !1762, !1764, !1765, !1766, !1767}
!1706 = !DILocalVariable(name: "buffer", arg: 1, scope: !1700, file: !521, line: 251, type: !89)
!1707 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1700, file: !521, line: 251, type: !147)
!1708 = !DILocalVariable(name: "arg", arg: 3, scope: !1700, file: !521, line: 252, type: !96)
!1709 = !DILocalVariable(name: "argsize", arg: 4, scope: !1700, file: !521, line: 252, type: !147)
!1710 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1700, file: !521, line: 253, type: !547)
!1711 = !DILocalVariable(name: "flags", arg: 6, scope: !1700, file: !521, line: 253, type: !72)
!1712 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1700, file: !521, line: 254, type: !1703)
!1713 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1700, file: !521, line: 255, type: !96)
!1714 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1700, file: !521, line: 256, type: !96)
!1715 = !DILocalVariable(name: "unibyte_locale", scope: !1700, file: !521, line: 258, type: !99)
!1716 = !DILocalVariable(name: "len", scope: !1700, file: !521, line: 260, type: !147)
!1717 = !DILocalVariable(name: "orig_buffersize", scope: !1700, file: !521, line: 261, type: !147)
!1718 = !DILocalVariable(name: "quote_string", scope: !1700, file: !521, line: 262, type: !96)
!1719 = !DILocalVariable(name: "quote_string_len", scope: !1700, file: !521, line: 263, type: !147)
!1720 = !DILocalVariable(name: "backslash_escapes", scope: !1700, file: !521, line: 264, type: !99)
!1721 = !DILocalVariable(name: "elide_outer_quotes", scope: !1700, file: !521, line: 265, type: !99)
!1722 = !DILocalVariable(name: "encountered_single_quote", scope: !1700, file: !521, line: 266, type: !99)
!1723 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1700, file: !521, line: 267, type: !99)
!1724 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1700, file: !521, line: 309, type: !99)
!1725 = !DILocalVariable(name: "lq", scope: !1726, file: !521, line: 361, type: !96)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !521, line: 361, column: 11)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !521, line: 360, column: 13)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !521, line: 333, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1700, file: !521, line: 312, column: 5)
!1730 = !DILocalVariable(name: "i", scope: !1731, file: !521, line: 395, type: !147)
!1731 = distinct !DILexicalBlock(scope: !1700, file: !521, line: 395, column: 3)
!1732 = !DILocalVariable(name: "is_right_quote", scope: !1733, file: !521, line: 397, type: !99)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !521, line: 396, column: 5)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !521, line: 395, column: 3)
!1735 = !DILocalVariable(name: "escaping", scope: !1733, file: !521, line: 398, type: !99)
!1736 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1733, file: !521, line: 399, type: !99)
!1737 = !DILocalVariable(name: "c", scope: !1733, file: !521, line: 417, type: !150)
!1738 = !DILocalVariable(name: "m", scope: !1739, file: !521, line: 598, type: !147)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !521, line: 596, column: 11)
!1740 = distinct !DILexicalBlock(scope: !1733, file: !521, line: 419, column: 9)
!1741 = !DILocalVariable(name: "printable", scope: !1739, file: !521, line: 600, type: !99)
!1742 = !DILocalVariable(name: "mbs", scope: !1743, file: !521, line: 609, type: !608)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !521, line: 608, column: 15)
!1744 = distinct !DILexicalBlock(scope: !1739, file: !521, line: 602, column: 17)
!1745 = !DILocalVariable(name: "w", scope: !1746, file: !521, line: 618, type: !501)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !521, line: 617, column: 19)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !521, line: 616, column: 17)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !521, line: 616, column: 17)
!1749 = !DILocalVariable(name: "bytes", scope: !1746, file: !521, line: 619, type: !147)
!1750 = !DILocalVariable(name: "j", scope: !1751, file: !521, line: 648, type: !147)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !521, line: 648, column: 29)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !521, line: 647, column: 27)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !521, line: 645, column: 29)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !521, line: 636, column: 23)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !521, line: 628, column: 30)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !521, line: 623, column: 30)
!1757 = distinct !DILexicalBlock(scope: !1746, file: !521, line: 621, column: 25)
!1758 = !DILocalVariable(name: "ilim", scope: !1759, file: !521, line: 674, type: !147)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !521, line: 671, column: 15)
!1760 = distinct !DILexicalBlock(scope: !1739, file: !521, line: 670, column: 17)
!1761 = !DILabel(scope: !1700, name: "process_input", file: !521, line: 308)
!1762 = !DILabel(scope: !1763, name: "c_and_shell_escape", file: !521, line: 502)
!1763 = distinct !DILexicalBlock(scope: !1740, file: !521, line: 478, column: 9)
!1764 = !DILabel(scope: !1763, name: "c_escape", file: !521, line: 507)
!1765 = !DILabel(scope: !1733, name: "store_escape", file: !521, line: 709)
!1766 = !DILabel(scope: !1733, name: "store_c", file: !521, line: 712)
!1767 = !DILabel(scope: !1700, name: "force_outer_quoting_style", file: !521, line: 753)
!1768 = !DILocation(line: 0, scope: !1700)
!1769 = !DILocation(line: 258, column: 25, scope: !1700)
!1770 = !DILocation(line: 258, column: 36, scope: !1700)
!1771 = !DILocation(line: 267, column: 3, scope: !1700)
!1772 = !DILocation(line: 261, column: 10, scope: !1700)
!1773 = !DILocation(line: 262, column: 15, scope: !1700)
!1774 = !DILocation(line: 263, column: 10, scope: !1700)
!1775 = !DILocation(line: 308, column: 2, scope: !1700)
!1776 = !DILocation(line: 311, column: 3, scope: !1700)
!1777 = !DILocation(line: 318, column: 11, scope: !1729)
!1778 = !DILocation(line: 319, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !521, line: 319, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !521, line: 319, column: 9)
!1781 = distinct !DILexicalBlock(scope: !1729, file: !521, line: 318, column: 11)
!1782 = !DILocation(line: 319, column: 9, scope: !1780)
!1783 = !DILocation(line: 0, scope: !599, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 357, column: 26, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !521, line: 335, column: 11)
!1786 = distinct !DILexicalBlock(scope: !1728, file: !521, line: 334, column: 13)
!1787 = !DILocation(line: 199, column: 29, scope: !599, inlinedAt: !1784)
!1788 = !DILocation(line: 201, column: 19, scope: !1789, inlinedAt: !1784)
!1789 = distinct !DILexicalBlock(scope: !599, file: !521, line: 201, column: 7)
!1790 = !DILocation(line: 201, column: 7, scope: !599, inlinedAt: !1784)
!1791 = !DILocation(line: 229, column: 3, scope: !599, inlinedAt: !1784)
!1792 = !DILocation(line: 230, column: 3, scope: !599, inlinedAt: !1784)
!1793 = !DILocation(line: 230, column: 13, scope: !599, inlinedAt: !1784)
!1794 = !DILocalVariable(name: "ps", arg: 1, scope: !1795, file: !1547, line: 1135, type: !1798)
!1795 = distinct !DISubprogram(name: "mbszero", scope: !1547, file: !1547, line: 1135, type: !1796, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1799)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!1799 = !{!1794}
!1800 = !DILocation(line: 0, scope: !1795, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 230, column: 18, scope: !599, inlinedAt: !1784)
!1802 = !DILocalVariable(name: "__dest", arg: 1, scope: !1803, file: !1556, line: 57, type: !145)
!1803 = distinct !DISubprogram(name: "memset", scope: !1556, file: !1556, line: 57, type: !1557, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1804)
!1804 = !{!1802, !1805, !1806}
!1805 = !DILocalVariable(name: "__ch", arg: 2, scope: !1803, file: !1556, line: 57, type: !72)
!1806 = !DILocalVariable(name: "__len", arg: 3, scope: !1803, file: !1556, line: 57, type: !147)
!1807 = !DILocation(line: 0, scope: !1803, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 1137, column: 3, scope: !1795, inlinedAt: !1801)
!1809 = !DILocation(line: 59, column: 10, scope: !1803, inlinedAt: !1808)
!1810 = !DILocation(line: 231, column: 7, scope: !1811, inlinedAt: !1784)
!1811 = distinct !DILexicalBlock(scope: !599, file: !521, line: 231, column: 7)
!1812 = !DILocation(line: 231, column: 40, scope: !1811, inlinedAt: !1784)
!1813 = !DILocation(line: 231, column: 45, scope: !1811, inlinedAt: !1784)
!1814 = !DILocation(line: 235, column: 1, scope: !599, inlinedAt: !1784)
!1815 = !DILocation(line: 0, scope: !599, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 358, column: 27, scope: !1785)
!1817 = !DILocation(line: 199, column: 29, scope: !599, inlinedAt: !1816)
!1818 = !DILocation(line: 201, column: 19, scope: !1789, inlinedAt: !1816)
!1819 = !DILocation(line: 201, column: 7, scope: !599, inlinedAt: !1816)
!1820 = !DILocation(line: 229, column: 3, scope: !599, inlinedAt: !1816)
!1821 = !DILocation(line: 230, column: 3, scope: !599, inlinedAt: !1816)
!1822 = !DILocation(line: 230, column: 13, scope: !599, inlinedAt: !1816)
!1823 = !DILocation(line: 0, scope: !1795, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 230, column: 18, scope: !599, inlinedAt: !1816)
!1825 = !DILocation(line: 0, scope: !1803, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 1137, column: 3, scope: !1795, inlinedAt: !1824)
!1827 = !DILocation(line: 59, column: 10, scope: !1803, inlinedAt: !1826)
!1828 = !DILocation(line: 231, column: 7, scope: !1811, inlinedAt: !1816)
!1829 = !DILocation(line: 231, column: 40, scope: !1811, inlinedAt: !1816)
!1830 = !DILocation(line: 231, column: 45, scope: !1811, inlinedAt: !1816)
!1831 = !DILocation(line: 235, column: 1, scope: !599, inlinedAt: !1816)
!1832 = !DILocation(line: 360, column: 13, scope: !1728)
!1833 = !DILocation(line: 0, scope: !1726)
!1834 = !DILocation(line: 361, column: 45, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1726, file: !521, line: 361, column: 11)
!1836 = !DILocation(line: 361, column: 11, scope: !1726)
!1837 = !DILocation(line: 362, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !521, line: 362, column: 13)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !521, line: 362, column: 13)
!1840 = !DILocation(line: 362, column: 13, scope: !1839)
!1841 = !DILocation(line: 361, column: 52, scope: !1835)
!1842 = distinct !{!1842, !1836, !1843, !962}
!1843 = !DILocation(line: 362, column: 13, scope: !1726)
!1844 = !DILocation(line: 260, column: 10, scope: !1700)
!1845 = !DILocation(line: 365, column: 28, scope: !1728)
!1846 = !DILocation(line: 367, column: 7, scope: !1729)
!1847 = !DILocation(line: 370, column: 7, scope: !1729)
!1848 = !DILocation(line: 376, column: 11, scope: !1729)
!1849 = !DILocation(line: 381, column: 11, scope: !1729)
!1850 = !DILocation(line: 382, column: 9, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !521, line: 382, column: 9)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !521, line: 382, column: 9)
!1853 = distinct !DILexicalBlock(scope: !1729, file: !521, line: 381, column: 11)
!1854 = !DILocation(line: 382, column: 9, scope: !1852)
!1855 = !DILocation(line: 389, column: 7, scope: !1729)
!1856 = !DILocation(line: 392, column: 7, scope: !1729)
!1857 = !DILocation(line: 0, scope: !1731)
!1858 = !DILocation(line: 395, column: 8, scope: !1731)
!1859 = !DILocation(line: 395, scope: !1731)
!1860 = !DILocation(line: 395, column: 34, scope: !1734)
!1861 = !DILocation(line: 395, column: 26, scope: !1734)
!1862 = !DILocation(line: 395, column: 48, scope: !1734)
!1863 = !DILocation(line: 395, column: 55, scope: !1734)
!1864 = !DILocation(line: 395, column: 3, scope: !1731)
!1865 = !DILocation(line: 395, column: 67, scope: !1734)
!1866 = !DILocation(line: 0, scope: !1733)
!1867 = !DILocation(line: 402, column: 11, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1733, file: !521, line: 401, column: 11)
!1869 = !DILocation(line: 404, column: 17, scope: !1868)
!1870 = !DILocation(line: 405, column: 39, scope: !1868)
!1871 = !DILocation(line: 409, column: 32, scope: !1868)
!1872 = !DILocation(line: 405, column: 19, scope: !1868)
!1873 = !DILocation(line: 405, column: 15, scope: !1868)
!1874 = !DILocation(line: 410, column: 11, scope: !1868)
!1875 = !DILocation(line: 410, column: 25, scope: !1868)
!1876 = !DILocalVariable(name: "__s1", arg: 1, scope: !1877, file: !928, line: 974, type: !1060)
!1877 = distinct !DISubprogram(name: "memeq", scope: !928, file: !928, line: 974, type: !1517, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !1878)
!1878 = !{!1876, !1879, !1880}
!1879 = !DILocalVariable(name: "__s2", arg: 2, scope: !1877, file: !928, line: 974, type: !1060)
!1880 = !DILocalVariable(name: "__n", arg: 3, scope: !1877, file: !928, line: 974, type: !147)
!1881 = !DILocation(line: 0, scope: !1877, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 410, column: 14, scope: !1868)
!1883 = !DILocation(line: 976, column: 11, scope: !1877, inlinedAt: !1882)
!1884 = !DILocation(line: 976, column: 10, scope: !1877, inlinedAt: !1882)
!1885 = !DILocation(line: 401, column: 11, scope: !1733)
!1886 = !DILocation(line: 417, column: 25, scope: !1733)
!1887 = !DILocation(line: 418, column: 7, scope: !1733)
!1888 = !DILocation(line: 421, column: 15, scope: !1740)
!1889 = !DILocation(line: 423, column: 15, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !521, line: 423, column: 15)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !521, line: 422, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1740, file: !521, line: 421, column: 15)
!1893 = !DILocation(line: 423, column: 15, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !521, line: 423, column: 15)
!1895 = !DILocation(line: 423, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !521, line: 423, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !521, line: 423, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !521, line: 423, column: 15)
!1899 = !DILocation(line: 423, column: 15, scope: !1897)
!1900 = !DILocation(line: 423, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !521, line: 423, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !521, line: 423, column: 15)
!1903 = !DILocation(line: 423, column: 15, scope: !1902)
!1904 = !DILocation(line: 423, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !521, line: 423, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1898, file: !521, line: 423, column: 15)
!1907 = !DILocation(line: 423, column: 15, scope: !1906)
!1908 = !DILocation(line: 423, column: 15, scope: !1898)
!1909 = !DILocation(line: 423, column: 15, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !521, line: 423, column: 15)
!1911 = distinct !DILexicalBlock(scope: !1890, file: !521, line: 423, column: 15)
!1912 = !DILocation(line: 423, column: 15, scope: !1911)
!1913 = !DILocation(line: 431, column: 19, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1891, file: !521, line: 430, column: 19)
!1915 = !DILocation(line: 431, column: 24, scope: !1914)
!1916 = !DILocation(line: 431, column: 28, scope: !1914)
!1917 = !DILocation(line: 431, column: 38, scope: !1914)
!1918 = !DILocation(line: 431, column: 48, scope: !1914)
!1919 = !DILocation(line: 431, column: 59, scope: !1914)
!1920 = !DILocation(line: 433, column: 19, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !521, line: 433, column: 19)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !521, line: 433, column: 19)
!1923 = distinct !DILexicalBlock(scope: !1914, file: !521, line: 432, column: 17)
!1924 = !DILocation(line: 433, column: 19, scope: !1922)
!1925 = !DILocation(line: 434, column: 19, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !521, line: 434, column: 19)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !521, line: 434, column: 19)
!1928 = !DILocation(line: 434, column: 19, scope: !1927)
!1929 = !DILocation(line: 435, column: 17, scope: !1923)
!1930 = !DILocation(line: 442, column: 20, scope: !1892)
!1931 = !DILocation(line: 447, column: 11, scope: !1740)
!1932 = !DILocation(line: 450, column: 19, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1740, file: !521, line: 448, column: 13)
!1934 = !DILocation(line: 456, column: 19, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1933, file: !521, line: 455, column: 19)
!1936 = !DILocation(line: 456, column: 24, scope: !1935)
!1937 = !DILocation(line: 456, column: 28, scope: !1935)
!1938 = !DILocation(line: 456, column: 38, scope: !1935)
!1939 = !DILocation(line: 456, column: 47, scope: !1935)
!1940 = !DILocation(line: 456, column: 41, scope: !1935)
!1941 = !DILocation(line: 456, column: 52, scope: !1935)
!1942 = !DILocation(line: 455, column: 19, scope: !1933)
!1943 = !DILocation(line: 457, column: 25, scope: !1935)
!1944 = !DILocation(line: 457, column: 17, scope: !1935)
!1945 = !DILocation(line: 464, column: 25, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1935, file: !521, line: 458, column: 19)
!1947 = !DILocation(line: 468, column: 21, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !521, line: 468, column: 21)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !521, line: 468, column: 21)
!1950 = !DILocation(line: 468, column: 21, scope: !1949)
!1951 = !DILocation(line: 469, column: 21, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !521, line: 469, column: 21)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !521, line: 469, column: 21)
!1954 = !DILocation(line: 469, column: 21, scope: !1953)
!1955 = !DILocation(line: 470, column: 21, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !521, line: 470, column: 21)
!1957 = distinct !DILexicalBlock(scope: !1946, file: !521, line: 470, column: 21)
!1958 = !DILocation(line: 470, column: 21, scope: !1957)
!1959 = !DILocation(line: 471, column: 21, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !521, line: 471, column: 21)
!1961 = distinct !DILexicalBlock(scope: !1946, file: !521, line: 471, column: 21)
!1962 = !DILocation(line: 471, column: 21, scope: !1961)
!1963 = !DILocation(line: 472, column: 21, scope: !1946)
!1964 = !DILocation(line: 482, column: 33, scope: !1763)
!1965 = !DILocation(line: 483, column: 33, scope: !1763)
!1966 = !DILocation(line: 485, column: 33, scope: !1763)
!1967 = !DILocation(line: 486, column: 33, scope: !1763)
!1968 = !DILocation(line: 487, column: 33, scope: !1763)
!1969 = !DILocation(line: 490, column: 17, scope: !1763)
!1970 = !DILocation(line: 492, column: 21, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !521, line: 491, column: 15)
!1972 = distinct !DILexicalBlock(scope: !1763, file: !521, line: 490, column: 17)
!1973 = !DILocation(line: 499, column: 35, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1763, file: !521, line: 499, column: 17)
!1975 = !DILocation(line: 0, scope: !1763)
!1976 = !DILocation(line: 502, column: 11, scope: !1763)
!1977 = !DILocation(line: 504, column: 17, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1763, file: !521, line: 503, column: 17)
!1979 = !DILocation(line: 507, column: 11, scope: !1763)
!1980 = !DILocation(line: 508, column: 17, scope: !1763)
!1981 = !DILocation(line: 517, column: 15, scope: !1740)
!1982 = !DILocation(line: 517, column: 40, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1740, file: !521, line: 517, column: 15)
!1984 = !DILocation(line: 517, column: 47, scope: !1983)
!1985 = !DILocation(line: 517, column: 18, scope: !1983)
!1986 = !DILocation(line: 521, column: 17, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1740, file: !521, line: 521, column: 15)
!1988 = !DILocation(line: 521, column: 15, scope: !1740)
!1989 = !DILocation(line: 525, column: 11, scope: !1740)
!1990 = !DILocation(line: 537, column: 15, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1740, file: !521, line: 536, column: 15)
!1992 = !DILocation(line: 536, column: 15, scope: !1740)
!1993 = !DILocation(line: 544, column: 15, scope: !1740)
!1994 = !DILocation(line: 546, column: 19, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !521, line: 545, column: 13)
!1996 = distinct !DILexicalBlock(scope: !1740, file: !521, line: 544, column: 15)
!1997 = !DILocation(line: 549, column: 19, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !521, line: 549, column: 19)
!1999 = !DILocation(line: 549, column: 30, scope: !1998)
!2000 = !DILocation(line: 558, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !521, line: 558, column: 15)
!2002 = distinct !DILexicalBlock(scope: !1995, file: !521, line: 558, column: 15)
!2003 = !DILocation(line: 558, column: 15, scope: !2002)
!2004 = !DILocation(line: 559, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !521, line: 559, column: 15)
!2006 = distinct !DILexicalBlock(scope: !1995, file: !521, line: 559, column: 15)
!2007 = !DILocation(line: 559, column: 15, scope: !2006)
!2008 = !DILocation(line: 560, column: 15, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !521, line: 560, column: 15)
!2010 = distinct !DILexicalBlock(scope: !1995, file: !521, line: 560, column: 15)
!2011 = !DILocation(line: 560, column: 15, scope: !2010)
!2012 = !DILocation(line: 562, column: 13, scope: !1995)
!2013 = !DILocation(line: 602, column: 17, scope: !1739)
!2014 = !DILocation(line: 0, scope: !1739)
!2015 = !DILocation(line: 605, column: 29, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1744, file: !521, line: 603, column: 15)
!2017 = !DILocation(line: 605, column: 41, scope: !2016)
!2018 = !DILocation(line: 606, column: 15, scope: !2016)
!2019 = !DILocation(line: 609, column: 17, scope: !1743)
!2020 = !DILocation(line: 609, column: 27, scope: !1743)
!2021 = !DILocation(line: 0, scope: !1795, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 609, column: 32, scope: !1743)
!2023 = !DILocation(line: 0, scope: !1803, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 1137, column: 3, scope: !1795, inlinedAt: !2022)
!2025 = !DILocation(line: 59, column: 10, scope: !1803, inlinedAt: !2024)
!2026 = !DILocation(line: 613, column: 29, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1743, file: !521, line: 613, column: 21)
!2028 = !DILocation(line: 613, column: 21, scope: !1743)
!2029 = !DILocation(line: 614, column: 29, scope: !2027)
!2030 = !DILocation(line: 614, column: 19, scope: !2027)
!2031 = !DILocation(line: 618, column: 21, scope: !1746)
!2032 = !DILocation(line: 620, column: 54, scope: !1746)
!2033 = !DILocation(line: 0, scope: !1746)
!2034 = !DILocation(line: 619, column: 36, scope: !1746)
!2035 = !DILocation(line: 621, column: 25, scope: !1746)
!2036 = !DILocation(line: 631, column: 38, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1755, file: !521, line: 629, column: 23)
!2038 = !DILocation(line: 631, column: 48, scope: !2037)
!2039 = !DILocation(line: 626, column: 25, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1756, file: !521, line: 624, column: 23)
!2041 = !DILocation(line: 631, column: 51, scope: !2037)
!2042 = !DILocation(line: 631, column: 25, scope: !2037)
!2043 = !DILocation(line: 632, column: 28, scope: !2037)
!2044 = !DILocation(line: 631, column: 34, scope: !2037)
!2045 = distinct !{!2045, !2042, !2043, !962}
!2046 = !DILocation(line: 646, column: 29, scope: !1753)
!2047 = !DILocation(line: 0, scope: !1751)
!2048 = !DILocation(line: 649, column: 49, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1751, file: !521, line: 648, column: 29)
!2050 = !DILocation(line: 649, column: 39, scope: !2049)
!2051 = !DILocation(line: 649, column: 31, scope: !2049)
!2052 = !DILocation(line: 648, column: 60, scope: !2049)
!2053 = !DILocation(line: 648, column: 50, scope: !2049)
!2054 = !DILocation(line: 648, column: 29, scope: !1751)
!2055 = distinct !{!2055, !2054, !2056, !962}
!2056 = !DILocation(line: 654, column: 33, scope: !1751)
!2057 = !DILocation(line: 657, column: 43, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1754, file: !521, line: 657, column: 29)
!2059 = !DILocalVariable(name: "wc", arg: 1, scope: !2060, file: !2061, line: 865, type: !2064)
!2060 = distinct !DISubprogram(name: "c32isprint", scope: !2061, file: !2061, line: 865, type: !2062, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2066)
!2061 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!72, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2065, line: 20, baseType: !65)
!2065 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2066 = !{!2059}
!2067 = !DILocation(line: 0, scope: !2060, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 657, column: 31, scope: !2058)
!2069 = !DILocation(line: 871, column: 10, scope: !2060, inlinedAt: !2068)
!2070 = !DILocation(line: 657, column: 31, scope: !2058)
!2071 = !DILocation(line: 664, column: 23, scope: !1746)
!2072 = !DILocation(line: 665, column: 19, scope: !1747)
!2073 = !DILocation(line: 666, column: 15, scope: !1744)
!2074 = !DILocation(line: 753, column: 2, scope: !1700)
!2075 = !DILocation(line: 756, column: 51, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1700, file: !521, line: 756, column: 7)
!2077 = !DILocation(line: 0, scope: !1744)
!2078 = !DILocation(line: 670, column: 19, scope: !1760)
!2079 = !DILocation(line: 670, column: 23, scope: !1760)
!2080 = !DILocation(line: 674, column: 33, scope: !1759)
!2081 = !DILocation(line: 0, scope: !1759)
!2082 = !DILocation(line: 676, column: 17, scope: !1759)
!2083 = !DILocation(line: 398, column: 12, scope: !1733)
!2084 = !DILocation(line: 678, column: 43, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !521, line: 678, column: 25)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !521, line: 677, column: 19)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !521, line: 676, column: 17)
!2088 = distinct !DILexicalBlock(scope: !1759, file: !521, line: 676, column: 17)
!2089 = !DILocation(line: 680, column: 25, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !521, line: 680, column: 25)
!2091 = distinct !DILexicalBlock(scope: !2085, file: !521, line: 679, column: 23)
!2092 = !DILocation(line: 680, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !521, line: 680, column: 25)
!2094 = !DILocation(line: 680, column: 25, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !521, line: 680, column: 25)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !521, line: 680, column: 25)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !521, line: 680, column: 25)
!2098 = !DILocation(line: 680, column: 25, scope: !2096)
!2099 = !DILocation(line: 680, column: 25, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !521, line: 680, column: 25)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !521, line: 680, column: 25)
!2102 = !DILocation(line: 680, column: 25, scope: !2101)
!2103 = !DILocation(line: 680, column: 25, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !521, line: 680, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2097, file: !521, line: 680, column: 25)
!2106 = !DILocation(line: 680, column: 25, scope: !2105)
!2107 = !DILocation(line: 680, column: 25, scope: !2097)
!2108 = !DILocation(line: 680, column: 25, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !521, line: 680, column: 25)
!2110 = distinct !DILexicalBlock(scope: !2090, file: !521, line: 680, column: 25)
!2111 = !DILocation(line: 680, column: 25, scope: !2110)
!2112 = !DILocation(line: 681, column: 25, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !521, line: 681, column: 25)
!2114 = distinct !DILexicalBlock(scope: !2091, file: !521, line: 681, column: 25)
!2115 = !DILocation(line: 681, column: 25, scope: !2114)
!2116 = !DILocation(line: 682, column: 25, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !521, line: 682, column: 25)
!2118 = distinct !DILexicalBlock(scope: !2091, file: !521, line: 682, column: 25)
!2119 = !DILocation(line: 682, column: 25, scope: !2118)
!2120 = !DILocation(line: 683, column: 38, scope: !2091)
!2121 = !DILocation(line: 683, column: 33, scope: !2091)
!2122 = !DILocation(line: 684, column: 23, scope: !2091)
!2123 = !DILocation(line: 685, column: 30, scope: !2085)
!2124 = !DILocation(line: 687, column: 25, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !521, line: 687, column: 25)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !521, line: 687, column: 25)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !521, line: 686, column: 23)
!2128 = distinct !DILexicalBlock(scope: !2085, file: !521, line: 685, column: 30)
!2129 = !DILocation(line: 687, column: 25, scope: !2126)
!2130 = !DILocation(line: 689, column: 23, scope: !2127)
!2131 = !DILocation(line: 690, column: 35, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2086, file: !521, line: 690, column: 25)
!2133 = !DILocation(line: 690, column: 30, scope: !2132)
!2134 = !DILocation(line: 690, column: 25, scope: !2086)
!2135 = !DILocation(line: 692, column: 21, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !521, line: 692, column: 21)
!2137 = distinct !DILexicalBlock(scope: !2086, file: !521, line: 692, column: 21)
!2138 = !DILocation(line: 692, column: 21, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !521, line: 692, column: 21)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !521, line: 692, column: 21)
!2141 = distinct !DILexicalBlock(scope: !2136, file: !521, line: 692, column: 21)
!2142 = !DILocation(line: 692, column: 21, scope: !2140)
!2143 = !DILocation(line: 692, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !521, line: 692, column: 21)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !521, line: 692, column: 21)
!2146 = !DILocation(line: 692, column: 21, scope: !2145)
!2147 = !DILocation(line: 692, column: 21, scope: !2141)
!2148 = !DILocation(line: 0, scope: !2086)
!2149 = !DILocation(line: 693, column: 21, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !521, line: 693, column: 21)
!2151 = distinct !DILexicalBlock(scope: !2086, file: !521, line: 693, column: 21)
!2152 = !DILocation(line: 693, column: 21, scope: !2151)
!2153 = !DILocation(line: 694, column: 25, scope: !2086)
!2154 = !DILocation(line: 676, column: 17, scope: !2087)
!2155 = distinct !{!2155, !2156, !2157}
!2156 = !DILocation(line: 676, column: 17, scope: !2088)
!2157 = !DILocation(line: 695, column: 19, scope: !2088)
!2158 = !DILocation(line: 409, column: 30, scope: !1868)
!2159 = !DILocation(line: 702, column: 34, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1733, file: !521, line: 702, column: 11)
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
!2172 = distinct !DILexicalBlock(scope: !1733, file: !521, line: 710, column: 7)
!2173 = !DILocation(line: 710, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2172, file: !521, line: 710, column: 7)
!2175 = !DILocation(line: 710, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !521, line: 710, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !521, line: 710, column: 7)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !521, line: 710, column: 7)
!2179 = !DILocation(line: 710, column: 7, scope: !2177)
!2180 = !DILocation(line: 710, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !521, line: 710, column: 7)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !521, line: 710, column: 7)
!2183 = !DILocation(line: 710, column: 7, scope: !2182)
!2184 = !DILocation(line: 710, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !521, line: 710, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2178, file: !521, line: 710, column: 7)
!2187 = !DILocation(line: 710, column: 7, scope: !2186)
!2188 = !DILocation(line: 710, column: 7, scope: !2178)
!2189 = !DILocation(line: 710, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !521, line: 710, column: 7)
!2191 = distinct !DILexicalBlock(scope: !2172, file: !521, line: 710, column: 7)
!2192 = !DILocation(line: 710, column: 7, scope: !2191)
!2193 = !DILocation(line: 712, column: 5, scope: !1733)
!2194 = !DILocation(line: 713, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !521, line: 713, column: 7)
!2196 = distinct !DILexicalBlock(scope: !1733, file: !521, line: 713, column: 7)
!2197 = !DILocation(line: 417, column: 21, scope: !1733)
!2198 = !DILocation(line: 713, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !521, line: 713, column: 7)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !521, line: 713, column: 7)
!2201 = distinct !DILexicalBlock(scope: !2195, file: !521, line: 713, column: 7)
!2202 = !DILocation(line: 713, column: 7, scope: !2200)
!2203 = !DILocation(line: 713, column: 7, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !521, line: 713, column: 7)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !521, line: 713, column: 7)
!2206 = !DILocation(line: 713, column: 7, scope: !2205)
!2207 = !DILocation(line: 713, column: 7, scope: !2201)
!2208 = !DILocation(line: 714, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !521, line: 714, column: 7)
!2210 = distinct !DILexicalBlock(scope: !1733, file: !521, line: 714, column: 7)
!2211 = !DILocation(line: 714, column: 7, scope: !2210)
!2212 = !DILocation(line: 716, column: 11, scope: !1733)
!2213 = !DILocation(line: 718, column: 5, scope: !1734)
!2214 = !DILocation(line: 395, column: 82, scope: !1734)
!2215 = !DILocation(line: 395, column: 3, scope: !1734)
!2216 = distinct !{!2216, !1864, !2217, !962}
!2217 = !DILocation(line: 718, column: 5, scope: !1731)
!2218 = !DILocation(line: 720, column: 11, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1700, file: !521, line: 720, column: 7)
!2220 = !DILocation(line: 720, column: 16, scope: !2219)
!2221 = !DILocation(line: 728, column: 51, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1700, file: !521, line: 728, column: 7)
!2223 = !DILocation(line: 731, column: 11, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2222, file: !521, line: 730, column: 5)
!2225 = !DILocation(line: 732, column: 16, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2224, file: !521, line: 731, column: 11)
!2227 = !DILocation(line: 732, column: 9, scope: !2226)
!2228 = !DILocation(line: 736, column: 18, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !521, line: 736, column: 16)
!2230 = !DILocation(line: 736, column: 29, scope: !2229)
!2231 = !DILocation(line: 745, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1700, file: !521, line: 745, column: 7)
!2233 = !DILocation(line: 745, column: 20, scope: !2232)
!2234 = !DILocation(line: 746, column: 12, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !521, line: 746, column: 5)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !521, line: 746, column: 5)
!2237 = !DILocation(line: 746, column: 5, scope: !2236)
!2238 = !DILocation(line: 747, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !521, line: 747, column: 7)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !521, line: 747, column: 7)
!2241 = !DILocation(line: 747, column: 7, scope: !2240)
!2242 = !DILocation(line: 746, column: 39, scope: !2235)
!2243 = distinct !{!2243, !2237, !2244, !962}
!2244 = !DILocation(line: 747, column: 7, scope: !2236)
!2245 = !DILocation(line: 749, column: 11, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !1700, file: !521, line: 749, column: 7)
!2247 = !DILocation(line: 749, column: 7, scope: !1700)
!2248 = !DILocation(line: 750, column: 5, scope: !2246)
!2249 = !DILocation(line: 750, column: 17, scope: !2246)
!2250 = !DILocation(line: 756, column: 21, scope: !2076)
!2251 = !DILocation(line: 760, column: 42, scope: !1700)
!2252 = !DILocation(line: 758, column: 10, scope: !1700)
!2253 = !DILocation(line: 758, column: 3, scope: !1700)
!2254 = !DILocation(line: 762, column: 1, scope: !1700)
!2255 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1036, file: !1036, line: 98, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!147}
!2258 = !DISubprogram(name: "strlen", scope: !1032, file: !1032, line: 407, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!149, !96}
!2261 = !DISubprogram(name: "iswprint", scope: !2262, file: !2262, line: 120, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2262 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2263 = distinct !DISubprogram(name: "quotearg_alloc", scope: !521, file: !521, line: 788, type: !2264, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!89, !96, !147, !1593}
!2266 = !{!2267, !2268, !2269}
!2267 = !DILocalVariable(name: "arg", arg: 1, scope: !2263, file: !521, line: 788, type: !96)
!2268 = !DILocalVariable(name: "argsize", arg: 2, scope: !2263, file: !521, line: 788, type: !147)
!2269 = !DILocalVariable(name: "o", arg: 3, scope: !2263, file: !521, line: 789, type: !1593)
!2270 = !DILocation(line: 0, scope: !2263)
!2271 = !DILocalVariable(name: "arg", arg: 1, scope: !2272, file: !521, line: 801, type: !96)
!2272 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !521, file: !521, line: 801, type: !2273, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!89, !96, !147, !775, !1593}
!2275 = !{!2271, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2276 = !DILocalVariable(name: "argsize", arg: 2, scope: !2272, file: !521, line: 801, type: !147)
!2277 = !DILocalVariable(name: "size", arg: 3, scope: !2272, file: !521, line: 801, type: !775)
!2278 = !DILocalVariable(name: "o", arg: 4, scope: !2272, file: !521, line: 802, type: !1593)
!2279 = !DILocalVariable(name: "p", scope: !2272, file: !521, line: 804, type: !1593)
!2280 = !DILocalVariable(name: "saved_errno", scope: !2272, file: !521, line: 805, type: !72)
!2281 = !DILocalVariable(name: "flags", scope: !2272, file: !521, line: 807, type: !72)
!2282 = !DILocalVariable(name: "bufsize", scope: !2272, file: !521, line: 808, type: !147)
!2283 = !DILocalVariable(name: "buf", scope: !2272, file: !521, line: 812, type: !89)
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
!2323 = distinct !DILexicalBlock(scope: !2272, file: !521, line: 817, column: 7)
!2324 = !DILocation(line: 818, column: 5, scope: !2323)
!2325 = !DILocation(line: 819, column: 3, scope: !2272)
!2326 = distinct !DISubprogram(name: "quotearg_free", scope: !521, file: !521, line: 837, type: !476, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2327)
!2327 = !{!2328, !2329}
!2328 = !DILocalVariable(name: "sv", scope: !2326, file: !521, line: 839, type: !622)
!2329 = !DILocalVariable(name: "i", scope: !2330, file: !521, line: 840, type: !72)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !521, line: 840, column: 3)
!2331 = !DILocation(line: 839, column: 24, scope: !2326)
!2332 = !DILocation(line: 0, scope: !2326)
!2333 = !DILocation(line: 0, scope: !2330)
!2334 = !DILocation(line: 840, column: 21, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2330, file: !521, line: 840, column: 3)
!2336 = !DILocation(line: 840, column: 3, scope: !2330)
!2337 = !DILocation(line: 842, column: 13, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2326, file: !521, line: 842, column: 7)
!2339 = !{!2340, !845, i64 8}
!2340 = !{!"slotvec", !1133, i64 0, !845, i64 8}
!2341 = !DILocation(line: 842, column: 17, scope: !2338)
!2342 = !DILocation(line: 842, column: 7, scope: !2326)
!2343 = !DILocation(line: 841, column: 17, scope: !2335)
!2344 = !DILocation(line: 841, column: 5, scope: !2335)
!2345 = !DILocation(line: 840, column: 32, scope: !2335)
!2346 = distinct !{!2346, !2336, !2347, !962}
!2347 = !DILocation(line: 841, column: 20, scope: !2330)
!2348 = !DILocation(line: 844, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2338, file: !521, line: 843, column: 5)
!2350 = !DILocation(line: 845, column: 21, scope: !2349)
!2351 = !{!2340, !1133, i64 0}
!2352 = !DILocation(line: 846, column: 20, scope: !2349)
!2353 = !DILocation(line: 847, column: 5, scope: !2349)
!2354 = !DILocation(line: 848, column: 10, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2326, file: !521, line: 848, column: 7)
!2356 = !DILocation(line: 848, column: 7, scope: !2326)
!2357 = !DILocation(line: 850, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !521, line: 849, column: 5)
!2359 = !DILocation(line: 851, column: 15, scope: !2358)
!2360 = !DILocation(line: 852, column: 5, scope: !2358)
!2361 = !DILocation(line: 853, column: 10, scope: !2326)
!2362 = !DILocation(line: 854, column: 1, scope: !2326)
!2363 = !DISubprogram(name: "free", scope: !1547, file: !1547, line: 786, type: !2364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !145}
!2366 = distinct !DISubprogram(name: "quotearg_n", scope: !521, file: !521, line: 919, type: !1029, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2367)
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "n", arg: 1, scope: !2366, file: !521, line: 919, type: !72)
!2369 = !DILocalVariable(name: "arg", arg: 2, scope: !2366, file: !521, line: 919, type: !96)
!2370 = !DILocation(line: 0, scope: !2366)
!2371 = !DILocation(line: 921, column: 10, scope: !2366)
!2372 = !DILocation(line: 921, column: 3, scope: !2366)
!2373 = distinct !DISubprogram(name: "quotearg_n_options", scope: !521, file: !521, line: 866, type: !2374, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!89, !72, !96, !147, !1593}
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2387, !2388, !2390, !2391, !2392}
!2377 = !DILocalVariable(name: "n", arg: 1, scope: !2373, file: !521, line: 866, type: !72)
!2378 = !DILocalVariable(name: "arg", arg: 2, scope: !2373, file: !521, line: 866, type: !96)
!2379 = !DILocalVariable(name: "argsize", arg: 3, scope: !2373, file: !521, line: 866, type: !147)
!2380 = !DILocalVariable(name: "options", arg: 4, scope: !2373, file: !521, line: 867, type: !1593)
!2381 = !DILocalVariable(name: "saved_errno", scope: !2373, file: !521, line: 869, type: !72)
!2382 = !DILocalVariable(name: "sv", scope: !2373, file: !521, line: 871, type: !622)
!2383 = !DILocalVariable(name: "nslots_max", scope: !2373, file: !521, line: 873, type: !72)
!2384 = !DILocalVariable(name: "preallocated", scope: !2385, file: !521, line: 879, type: !99)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !521, line: 878, column: 5)
!2386 = distinct !DILexicalBlock(scope: !2373, file: !521, line: 877, column: 7)
!2387 = !DILocalVariable(name: "new_nslots", scope: !2385, file: !521, line: 880, type: !788)
!2388 = !DILocalVariable(name: "size", scope: !2389, file: !521, line: 891, type: !147)
!2389 = distinct !DILexicalBlock(scope: !2373, file: !521, line: 890, column: 3)
!2390 = !DILocalVariable(name: "val", scope: !2389, file: !521, line: 892, type: !89)
!2391 = !DILocalVariable(name: "flags", scope: !2389, file: !521, line: 894, type: !72)
!2392 = !DILocalVariable(name: "qsize", scope: !2389, file: !521, line: 895, type: !147)
!2393 = !DILocation(line: 0, scope: !2373)
!2394 = !DILocation(line: 869, column: 21, scope: !2373)
!2395 = !DILocation(line: 871, column: 24, scope: !2373)
!2396 = !DILocation(line: 874, column: 17, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2373, file: !521, line: 874, column: 7)
!2398 = !DILocation(line: 875, column: 5, scope: !2397)
!2399 = !DILocation(line: 877, column: 7, scope: !2386)
!2400 = !DILocation(line: 877, column: 14, scope: !2386)
!2401 = !DILocation(line: 877, column: 7, scope: !2373)
!2402 = !DILocation(line: 879, column: 31, scope: !2385)
!2403 = !DILocation(line: 0, scope: !2385)
!2404 = !DILocation(line: 880, column: 7, scope: !2385)
!2405 = !DILocation(line: 880, column: 26, scope: !2385)
!2406 = !DILocation(line: 880, column: 13, scope: !2385)
!2407 = !DILocation(line: 882, column: 31, scope: !2385)
!2408 = !DILocation(line: 883, column: 33, scope: !2385)
!2409 = !DILocation(line: 883, column: 42, scope: !2385)
!2410 = !DILocation(line: 883, column: 31, scope: !2385)
!2411 = !DILocation(line: 882, column: 22, scope: !2385)
!2412 = !DILocation(line: 882, column: 15, scope: !2385)
!2413 = !DILocation(line: 884, column: 11, scope: !2385)
!2414 = !DILocation(line: 885, column: 15, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2385, file: !521, line: 884, column: 11)
!2416 = !{i64 0, i64 8, !1132, i64 8, i64 8, !844}
!2417 = !DILocation(line: 885, column: 9, scope: !2415)
!2418 = !DILocation(line: 886, column: 20, scope: !2385)
!2419 = !DILocation(line: 886, column: 18, scope: !2385)
!2420 = !DILocation(line: 886, column: 32, scope: !2385)
!2421 = !DILocation(line: 886, column: 43, scope: !2385)
!2422 = !DILocation(line: 886, column: 53, scope: !2385)
!2423 = !DILocation(line: 0, scope: !1803, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 886, column: 7, scope: !2385)
!2425 = !DILocation(line: 59, column: 10, scope: !1803, inlinedAt: !2424)
!2426 = !DILocation(line: 887, column: 16, scope: !2385)
!2427 = !DILocation(line: 887, column: 14, scope: !2385)
!2428 = !DILocation(line: 888, column: 5, scope: !2386)
!2429 = !DILocation(line: 888, column: 5, scope: !2385)
!2430 = !DILocation(line: 891, column: 19, scope: !2389)
!2431 = !DILocation(line: 891, column: 25, scope: !2389)
!2432 = !DILocation(line: 0, scope: !2389)
!2433 = !DILocation(line: 892, column: 23, scope: !2389)
!2434 = !DILocation(line: 894, column: 26, scope: !2389)
!2435 = !DILocation(line: 894, column: 32, scope: !2389)
!2436 = !DILocation(line: 896, column: 55, scope: !2389)
!2437 = !DILocation(line: 897, column: 55, scope: !2389)
!2438 = !DILocation(line: 898, column: 55, scope: !2389)
!2439 = !DILocation(line: 899, column: 55, scope: !2389)
!2440 = !DILocation(line: 895, column: 20, scope: !2389)
!2441 = !DILocation(line: 901, column: 14, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2389, file: !521, line: 901, column: 9)
!2443 = !DILocation(line: 901, column: 9, scope: !2389)
!2444 = !DILocation(line: 903, column: 35, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !521, line: 902, column: 7)
!2446 = !DILocation(line: 903, column: 20, scope: !2445)
!2447 = !DILocation(line: 904, column: 17, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !521, line: 904, column: 13)
!2449 = !DILocation(line: 904, column: 13, scope: !2445)
!2450 = !DILocation(line: 905, column: 11, scope: !2448)
!2451 = !DILocation(line: 906, column: 27, scope: !2445)
!2452 = !DILocation(line: 906, column: 19, scope: !2445)
!2453 = !DILocation(line: 907, column: 69, scope: !2445)
!2454 = !DILocation(line: 909, column: 44, scope: !2445)
!2455 = !DILocation(line: 910, column: 44, scope: !2445)
!2456 = !DILocation(line: 907, column: 9, scope: !2445)
!2457 = !DILocation(line: 911, column: 7, scope: !2445)
!2458 = !DILocation(line: 913, column: 11, scope: !2389)
!2459 = !DILocation(line: 914, column: 5, scope: !2389)
!2460 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !521, file: !521, line: 925, type: !2461, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!89, !72, !96, !147}
!2463 = !{!2464, !2465, !2466}
!2464 = !DILocalVariable(name: "n", arg: 1, scope: !2460, file: !521, line: 925, type: !72)
!2465 = !DILocalVariable(name: "arg", arg: 2, scope: !2460, file: !521, line: 925, type: !96)
!2466 = !DILocalVariable(name: "argsize", arg: 3, scope: !2460, file: !521, line: 925, type: !147)
!2467 = !DILocation(line: 0, scope: !2460)
!2468 = !DILocation(line: 927, column: 10, scope: !2460)
!2469 = !DILocation(line: 927, column: 3, scope: !2460)
!2470 = distinct !DISubprogram(name: "quotearg", scope: !521, file: !521, line: 931, type: !1038, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2471)
!2471 = !{!2472}
!2472 = !DILocalVariable(name: "arg", arg: 1, scope: !2470, file: !521, line: 931, type: !96)
!2473 = !DILocation(line: 0, scope: !2470)
!2474 = !DILocation(line: 0, scope: !2366, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 933, column: 10, scope: !2470)
!2476 = !DILocation(line: 921, column: 10, scope: !2366, inlinedAt: !2475)
!2477 = !DILocation(line: 933, column: 3, scope: !2470)
!2478 = distinct !DISubprogram(name: "quotearg_mem", scope: !521, file: !521, line: 937, type: !2479, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!89, !96, !147}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "arg", arg: 1, scope: !2478, file: !521, line: 937, type: !96)
!2483 = !DILocalVariable(name: "argsize", arg: 2, scope: !2478, file: !521, line: 937, type: !147)
!2484 = !DILocation(line: 0, scope: !2478)
!2485 = !DILocation(line: 0, scope: !2460, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 939, column: 10, scope: !2478)
!2487 = !DILocation(line: 927, column: 10, scope: !2460, inlinedAt: !2486)
!2488 = !DILocation(line: 939, column: 3, scope: !2478)
!2489 = distinct !DISubprogram(name: "quotearg_n_style", scope: !521, file: !521, line: 943, type: !2490, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!89, !72, !547, !96}
!2492 = !{!2493, !2494, !2495, !2496}
!2493 = !DILocalVariable(name: "n", arg: 1, scope: !2489, file: !521, line: 943, type: !72)
!2494 = !DILocalVariable(name: "s", arg: 2, scope: !2489, file: !521, line: 943, type: !547)
!2495 = !DILocalVariable(name: "arg", arg: 3, scope: !2489, file: !521, line: 943, type: !96)
!2496 = !DILocalVariable(name: "o", scope: !2489, file: !521, line: 945, type: !1594)
!2497 = !DILocation(line: 0, scope: !2489)
!2498 = !DILocation(line: 945, column: 3, scope: !2489)
!2499 = !DILocation(line: 945, column: 32, scope: !2489)
!2500 = !{!2501}
!2501 = distinct !{!2501, !2502, !"quoting_options_from_style: argument 0"}
!2502 = distinct !{!2502, !"quoting_options_from_style"}
!2503 = !DILocation(line: 945, column: 36, scope: !2489)
!2504 = !DILocalVariable(name: "style", arg: 1, scope: !2505, file: !521, line: 183, type: !547)
!2505 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !521, file: !521, line: 183, type: !2506, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!574, !547}
!2508 = !{!2504, !2509}
!2509 = !DILocalVariable(name: "o", scope: !2505, file: !521, line: 185, type: !574)
!2510 = !DILocation(line: 0, scope: !2505, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 945, column: 36, scope: !2489)
!2512 = !DILocation(line: 185, column: 26, scope: !2505, inlinedAt: !2511)
!2513 = !DILocation(line: 186, column: 13, scope: !2514, inlinedAt: !2511)
!2514 = distinct !DILexicalBlock(scope: !2505, file: !521, line: 186, column: 7)
!2515 = !DILocation(line: 186, column: 7, scope: !2505, inlinedAt: !2511)
!2516 = !DILocation(line: 187, column: 5, scope: !2514, inlinedAt: !2511)
!2517 = !DILocation(line: 188, column: 11, scope: !2505, inlinedAt: !2511)
!2518 = !DILocation(line: 946, column: 10, scope: !2489)
!2519 = !DILocation(line: 947, column: 1, scope: !2489)
!2520 = !DILocation(line: 946, column: 3, scope: !2489)
!2521 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !521, file: !521, line: 950, type: !2522, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!89, !72, !547, !96, !147}
!2524 = !{!2525, !2526, !2527, !2528, !2529}
!2525 = !DILocalVariable(name: "n", arg: 1, scope: !2521, file: !521, line: 950, type: !72)
!2526 = !DILocalVariable(name: "s", arg: 2, scope: !2521, file: !521, line: 950, type: !547)
!2527 = !DILocalVariable(name: "arg", arg: 3, scope: !2521, file: !521, line: 951, type: !96)
!2528 = !DILocalVariable(name: "argsize", arg: 4, scope: !2521, file: !521, line: 951, type: !147)
!2529 = !DILocalVariable(name: "o", scope: !2521, file: !521, line: 953, type: !1594)
!2530 = !DILocation(line: 0, scope: !2521)
!2531 = !DILocation(line: 953, column: 3, scope: !2521)
!2532 = !DILocation(line: 953, column: 32, scope: !2521)
!2533 = !{!2534}
!2534 = distinct !{!2534, !2535, !"quoting_options_from_style: argument 0"}
!2535 = distinct !{!2535, !"quoting_options_from_style"}
!2536 = !DILocation(line: 953, column: 36, scope: !2521)
!2537 = !DILocation(line: 0, scope: !2505, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 953, column: 36, scope: !2521)
!2539 = !DILocation(line: 185, column: 26, scope: !2505, inlinedAt: !2538)
!2540 = !DILocation(line: 186, column: 13, scope: !2514, inlinedAt: !2538)
!2541 = !DILocation(line: 186, column: 7, scope: !2505, inlinedAt: !2538)
!2542 = !DILocation(line: 187, column: 5, scope: !2514, inlinedAt: !2538)
!2543 = !DILocation(line: 188, column: 11, scope: !2505, inlinedAt: !2538)
!2544 = !DILocation(line: 954, column: 10, scope: !2521)
!2545 = !DILocation(line: 955, column: 1, scope: !2521)
!2546 = !DILocation(line: 954, column: 3, scope: !2521)
!2547 = distinct !DISubprogram(name: "quotearg_style", scope: !521, file: !521, line: 958, type: !2548, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!89, !547, !96}
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "s", arg: 1, scope: !2547, file: !521, line: 958, type: !547)
!2552 = !DILocalVariable(name: "arg", arg: 2, scope: !2547, file: !521, line: 958, type: !96)
!2553 = !DILocation(line: 0, scope: !2547)
!2554 = !DILocation(line: 0, scope: !2489, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 960, column: 10, scope: !2547)
!2556 = !DILocation(line: 945, column: 3, scope: !2489, inlinedAt: !2555)
!2557 = !DILocation(line: 945, column: 32, scope: !2489, inlinedAt: !2555)
!2558 = !{!2559}
!2559 = distinct !{!2559, !2560, !"quoting_options_from_style: argument 0"}
!2560 = distinct !{!2560, !"quoting_options_from_style"}
!2561 = !DILocation(line: 945, column: 36, scope: !2489, inlinedAt: !2555)
!2562 = !DILocation(line: 0, scope: !2505, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 945, column: 36, scope: !2489, inlinedAt: !2555)
!2564 = !DILocation(line: 185, column: 26, scope: !2505, inlinedAt: !2563)
!2565 = !DILocation(line: 186, column: 13, scope: !2514, inlinedAt: !2563)
!2566 = !DILocation(line: 186, column: 7, scope: !2505, inlinedAt: !2563)
!2567 = !DILocation(line: 187, column: 5, scope: !2514, inlinedAt: !2563)
!2568 = !DILocation(line: 188, column: 11, scope: !2505, inlinedAt: !2563)
!2569 = !DILocation(line: 946, column: 10, scope: !2489, inlinedAt: !2555)
!2570 = !DILocation(line: 947, column: 1, scope: !2489, inlinedAt: !2555)
!2571 = !DILocation(line: 960, column: 3, scope: !2547)
!2572 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !521, file: !521, line: 964, type: !2573, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!89, !547, !96, !147}
!2575 = !{!2576, !2577, !2578}
!2576 = !DILocalVariable(name: "s", arg: 1, scope: !2572, file: !521, line: 964, type: !547)
!2577 = !DILocalVariable(name: "arg", arg: 2, scope: !2572, file: !521, line: 964, type: !96)
!2578 = !DILocalVariable(name: "argsize", arg: 3, scope: !2572, file: !521, line: 964, type: !147)
!2579 = !DILocation(line: 0, scope: !2572)
!2580 = !DILocation(line: 0, scope: !2521, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 966, column: 10, scope: !2572)
!2582 = !DILocation(line: 953, column: 3, scope: !2521, inlinedAt: !2581)
!2583 = !DILocation(line: 953, column: 32, scope: !2521, inlinedAt: !2581)
!2584 = !{!2585}
!2585 = distinct !{!2585, !2586, !"quoting_options_from_style: argument 0"}
!2586 = distinct !{!2586, !"quoting_options_from_style"}
!2587 = !DILocation(line: 953, column: 36, scope: !2521, inlinedAt: !2581)
!2588 = !DILocation(line: 0, scope: !2505, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 953, column: 36, scope: !2521, inlinedAt: !2581)
!2590 = !DILocation(line: 185, column: 26, scope: !2505, inlinedAt: !2589)
!2591 = !DILocation(line: 186, column: 13, scope: !2514, inlinedAt: !2589)
!2592 = !DILocation(line: 186, column: 7, scope: !2505, inlinedAt: !2589)
!2593 = !DILocation(line: 187, column: 5, scope: !2514, inlinedAt: !2589)
!2594 = !DILocation(line: 188, column: 11, scope: !2505, inlinedAt: !2589)
!2595 = !DILocation(line: 954, column: 10, scope: !2521, inlinedAt: !2581)
!2596 = !DILocation(line: 955, column: 1, scope: !2521, inlinedAt: !2581)
!2597 = !DILocation(line: 966, column: 3, scope: !2572)
!2598 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !521, file: !521, line: 970, type: !2599, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!89, !96, !147, !4}
!2601 = !{!2602, !2603, !2604, !2605}
!2602 = !DILocalVariable(name: "arg", arg: 1, scope: !2598, file: !521, line: 970, type: !96)
!2603 = !DILocalVariable(name: "argsize", arg: 2, scope: !2598, file: !521, line: 970, type: !147)
!2604 = !DILocalVariable(name: "ch", arg: 3, scope: !2598, file: !521, line: 970, type: !4)
!2605 = !DILocalVariable(name: "options", scope: !2598, file: !521, line: 972, type: !574)
!2606 = !DILocation(line: 0, scope: !2598)
!2607 = !DILocation(line: 972, column: 3, scope: !2598)
!2608 = !DILocation(line: 972, column: 26, scope: !2598)
!2609 = !DILocation(line: 973, column: 13, scope: !2598)
!2610 = !{i64 0, i64 4, !924, i64 4, i64 4, !915, i64 8, i64 32, !924, i64 40, i64 8, !844, i64 48, i64 8, !844}
!2611 = !DILocation(line: 0, scope: !1613, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 974, column: 3, scope: !2598)
!2613 = !DILocation(line: 147, column: 41, scope: !1613, inlinedAt: !2612)
!2614 = !DILocation(line: 147, column: 62, scope: !1613, inlinedAt: !2612)
!2615 = !DILocation(line: 147, column: 57, scope: !1613, inlinedAt: !2612)
!2616 = !DILocation(line: 148, column: 15, scope: !1613, inlinedAt: !2612)
!2617 = !DILocation(line: 149, column: 21, scope: !1613, inlinedAt: !2612)
!2618 = !DILocation(line: 149, column: 24, scope: !1613, inlinedAt: !2612)
!2619 = !DILocation(line: 150, column: 19, scope: !1613, inlinedAt: !2612)
!2620 = !DILocation(line: 150, column: 24, scope: !1613, inlinedAt: !2612)
!2621 = !DILocation(line: 150, column: 6, scope: !1613, inlinedAt: !2612)
!2622 = !DILocation(line: 975, column: 10, scope: !2598)
!2623 = !DILocation(line: 976, column: 1, scope: !2598)
!2624 = !DILocation(line: 975, column: 3, scope: !2598)
!2625 = distinct !DISubprogram(name: "quotearg_char", scope: !521, file: !521, line: 979, type: !2626, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!89, !96, !4}
!2628 = !{!2629, !2630}
!2629 = !DILocalVariable(name: "arg", arg: 1, scope: !2625, file: !521, line: 979, type: !96)
!2630 = !DILocalVariable(name: "ch", arg: 2, scope: !2625, file: !521, line: 979, type: !4)
!2631 = !DILocation(line: 0, scope: !2625)
!2632 = !DILocation(line: 0, scope: !2598, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 981, column: 10, scope: !2625)
!2634 = !DILocation(line: 972, column: 3, scope: !2598, inlinedAt: !2633)
!2635 = !DILocation(line: 972, column: 26, scope: !2598, inlinedAt: !2633)
!2636 = !DILocation(line: 973, column: 13, scope: !2598, inlinedAt: !2633)
!2637 = !DILocation(line: 0, scope: !1613, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 974, column: 3, scope: !2598, inlinedAt: !2633)
!2639 = !DILocation(line: 147, column: 41, scope: !1613, inlinedAt: !2638)
!2640 = !DILocation(line: 147, column: 62, scope: !1613, inlinedAt: !2638)
!2641 = !DILocation(line: 147, column: 57, scope: !1613, inlinedAt: !2638)
!2642 = !DILocation(line: 148, column: 15, scope: !1613, inlinedAt: !2638)
!2643 = !DILocation(line: 149, column: 21, scope: !1613, inlinedAt: !2638)
!2644 = !DILocation(line: 149, column: 24, scope: !1613, inlinedAt: !2638)
!2645 = !DILocation(line: 150, column: 19, scope: !1613, inlinedAt: !2638)
!2646 = !DILocation(line: 150, column: 24, scope: !1613, inlinedAt: !2638)
!2647 = !DILocation(line: 150, column: 6, scope: !1613, inlinedAt: !2638)
!2648 = !DILocation(line: 975, column: 10, scope: !2598, inlinedAt: !2633)
!2649 = !DILocation(line: 976, column: 1, scope: !2598, inlinedAt: !2633)
!2650 = !DILocation(line: 981, column: 3, scope: !2625)
!2651 = distinct !DISubprogram(name: "quotearg_colon", scope: !521, file: !521, line: 985, type: !1038, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2652)
!2652 = !{!2653}
!2653 = !DILocalVariable(name: "arg", arg: 1, scope: !2651, file: !521, line: 985, type: !96)
!2654 = !DILocation(line: 0, scope: !2651)
!2655 = !DILocation(line: 0, scope: !2625, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 987, column: 10, scope: !2651)
!2657 = !DILocation(line: 0, scope: !2598, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 981, column: 10, scope: !2625, inlinedAt: !2656)
!2659 = !DILocation(line: 972, column: 3, scope: !2598, inlinedAt: !2658)
!2660 = !DILocation(line: 972, column: 26, scope: !2598, inlinedAt: !2658)
!2661 = !DILocation(line: 973, column: 13, scope: !2598, inlinedAt: !2658)
!2662 = !DILocation(line: 0, scope: !1613, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 974, column: 3, scope: !2598, inlinedAt: !2658)
!2664 = !DILocation(line: 147, column: 57, scope: !1613, inlinedAt: !2663)
!2665 = !DILocation(line: 149, column: 21, scope: !1613, inlinedAt: !2663)
!2666 = !DILocation(line: 150, column: 6, scope: !1613, inlinedAt: !2663)
!2667 = !DILocation(line: 975, column: 10, scope: !2598, inlinedAt: !2658)
!2668 = !DILocation(line: 976, column: 1, scope: !2598, inlinedAt: !2658)
!2669 = !DILocation(line: 987, column: 3, scope: !2651)
!2670 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !521, file: !521, line: 991, type: !2479, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2671)
!2671 = !{!2672, !2673}
!2672 = !DILocalVariable(name: "arg", arg: 1, scope: !2670, file: !521, line: 991, type: !96)
!2673 = !DILocalVariable(name: "argsize", arg: 2, scope: !2670, file: !521, line: 991, type: !147)
!2674 = !DILocation(line: 0, scope: !2670)
!2675 = !DILocation(line: 0, scope: !2598, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 993, column: 10, scope: !2670)
!2677 = !DILocation(line: 972, column: 3, scope: !2598, inlinedAt: !2676)
!2678 = !DILocation(line: 972, column: 26, scope: !2598, inlinedAt: !2676)
!2679 = !DILocation(line: 973, column: 13, scope: !2598, inlinedAt: !2676)
!2680 = !DILocation(line: 0, scope: !1613, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 974, column: 3, scope: !2598, inlinedAt: !2676)
!2682 = !DILocation(line: 147, column: 57, scope: !1613, inlinedAt: !2681)
!2683 = !DILocation(line: 149, column: 21, scope: !1613, inlinedAt: !2681)
!2684 = !DILocation(line: 150, column: 6, scope: !1613, inlinedAt: !2681)
!2685 = !DILocation(line: 975, column: 10, scope: !2598, inlinedAt: !2676)
!2686 = !DILocation(line: 976, column: 1, scope: !2598, inlinedAt: !2676)
!2687 = !DILocation(line: 993, column: 3, scope: !2670)
!2688 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !521, file: !521, line: 997, type: !2490, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2689)
!2689 = !{!2690, !2691, !2692, !2693}
!2690 = !DILocalVariable(name: "n", arg: 1, scope: !2688, file: !521, line: 997, type: !72)
!2691 = !DILocalVariable(name: "s", arg: 2, scope: !2688, file: !521, line: 997, type: !547)
!2692 = !DILocalVariable(name: "arg", arg: 3, scope: !2688, file: !521, line: 997, type: !96)
!2693 = !DILocalVariable(name: "options", scope: !2688, file: !521, line: 999, type: !574)
!2694 = !DILocation(line: 185, column: 26, scope: !2505, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1000, column: 13, scope: !2688)
!2696 = !DILocation(line: 0, scope: !2688)
!2697 = !DILocation(line: 999, column: 3, scope: !2688)
!2698 = !DILocation(line: 999, column: 26, scope: !2688)
!2699 = !DILocation(line: 0, scope: !2505, inlinedAt: !2695)
!2700 = !DILocation(line: 186, column: 13, scope: !2514, inlinedAt: !2695)
!2701 = !DILocation(line: 186, column: 7, scope: !2505, inlinedAt: !2695)
!2702 = !DILocation(line: 187, column: 5, scope: !2514, inlinedAt: !2695)
!2703 = !{!2704}
!2704 = distinct !{!2704, !2705, !"quoting_options_from_style: argument 0"}
!2705 = distinct !{!2705, !"quoting_options_from_style"}
!2706 = !DILocation(line: 1000, column: 13, scope: !2688)
!2707 = !DILocation(line: 0, scope: !1613, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1001, column: 3, scope: !2688)
!2709 = !DILocation(line: 147, column: 57, scope: !1613, inlinedAt: !2708)
!2710 = !DILocation(line: 149, column: 21, scope: !1613, inlinedAt: !2708)
!2711 = !DILocation(line: 150, column: 6, scope: !1613, inlinedAt: !2708)
!2712 = !DILocation(line: 1002, column: 10, scope: !2688)
!2713 = !DILocation(line: 1003, column: 1, scope: !2688)
!2714 = !DILocation(line: 1002, column: 3, scope: !2688)
!2715 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !521, file: !521, line: 1006, type: !2716, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!89, !72, !96, !96, !96}
!2718 = !{!2719, !2720, !2721, !2722}
!2719 = !DILocalVariable(name: "n", arg: 1, scope: !2715, file: !521, line: 1006, type: !72)
!2720 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2715, file: !521, line: 1006, type: !96)
!2721 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2715, file: !521, line: 1007, type: !96)
!2722 = !DILocalVariable(name: "arg", arg: 4, scope: !2715, file: !521, line: 1007, type: !96)
!2723 = !DILocation(line: 0, scope: !2715)
!2724 = !DILocalVariable(name: "n", arg: 1, scope: !2725, file: !521, line: 1014, type: !72)
!2725 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !521, file: !521, line: 1014, type: !2726, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!89, !72, !96, !96, !96, !147}
!2728 = !{!2724, !2729, !2730, !2731, !2732, !2733}
!2729 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2725, file: !521, line: 1014, type: !96)
!2730 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2725, file: !521, line: 1015, type: !96)
!2731 = !DILocalVariable(name: "arg", arg: 4, scope: !2725, file: !521, line: 1016, type: !96)
!2732 = !DILocalVariable(name: "argsize", arg: 5, scope: !2725, file: !521, line: 1016, type: !147)
!2733 = !DILocalVariable(name: "o", scope: !2725, file: !521, line: 1018, type: !574)
!2734 = !DILocation(line: 0, scope: !2725, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1009, column: 10, scope: !2715)
!2736 = !DILocation(line: 1018, column: 3, scope: !2725, inlinedAt: !2735)
!2737 = !DILocation(line: 1018, column: 26, scope: !2725, inlinedAt: !2735)
!2738 = !DILocation(line: 1018, column: 30, scope: !2725, inlinedAt: !2735)
!2739 = !DILocation(line: 0, scope: !1653, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1019, column: 3, scope: !2725, inlinedAt: !2735)
!2741 = !DILocation(line: 174, column: 12, scope: !1653, inlinedAt: !2740)
!2742 = !DILocation(line: 175, column: 8, scope: !1666, inlinedAt: !2740)
!2743 = !DILocation(line: 175, column: 19, scope: !1666, inlinedAt: !2740)
!2744 = !DILocation(line: 176, column: 5, scope: !1666, inlinedAt: !2740)
!2745 = !DILocation(line: 177, column: 6, scope: !1653, inlinedAt: !2740)
!2746 = !DILocation(line: 177, column: 17, scope: !1653, inlinedAt: !2740)
!2747 = !DILocation(line: 178, column: 6, scope: !1653, inlinedAt: !2740)
!2748 = !DILocation(line: 178, column: 18, scope: !1653, inlinedAt: !2740)
!2749 = !DILocation(line: 1020, column: 10, scope: !2725, inlinedAt: !2735)
!2750 = !DILocation(line: 1021, column: 1, scope: !2725, inlinedAt: !2735)
!2751 = !DILocation(line: 1009, column: 3, scope: !2715)
!2752 = !DILocation(line: 0, scope: !2725)
!2753 = !DILocation(line: 1018, column: 3, scope: !2725)
!2754 = !DILocation(line: 1018, column: 26, scope: !2725)
!2755 = !DILocation(line: 1018, column: 30, scope: !2725)
!2756 = !DILocation(line: 0, scope: !1653, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1019, column: 3, scope: !2725)
!2758 = !DILocation(line: 174, column: 12, scope: !1653, inlinedAt: !2757)
!2759 = !DILocation(line: 175, column: 8, scope: !1666, inlinedAt: !2757)
!2760 = !DILocation(line: 175, column: 19, scope: !1666, inlinedAt: !2757)
!2761 = !DILocation(line: 176, column: 5, scope: !1666, inlinedAt: !2757)
!2762 = !DILocation(line: 177, column: 6, scope: !1653, inlinedAt: !2757)
!2763 = !DILocation(line: 177, column: 17, scope: !1653, inlinedAt: !2757)
!2764 = !DILocation(line: 178, column: 6, scope: !1653, inlinedAt: !2757)
!2765 = !DILocation(line: 178, column: 18, scope: !1653, inlinedAt: !2757)
!2766 = !DILocation(line: 1020, column: 10, scope: !2725)
!2767 = !DILocation(line: 1021, column: 1, scope: !2725)
!2768 = !DILocation(line: 1020, column: 3, scope: !2725)
!2769 = distinct !DISubprogram(name: "quotearg_custom", scope: !521, file: !521, line: 1024, type: !2770, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!89, !96, !96, !96}
!2772 = !{!2773, !2774, !2775}
!2773 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2769, file: !521, line: 1024, type: !96)
!2774 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2769, file: !521, line: 1024, type: !96)
!2775 = !DILocalVariable(name: "arg", arg: 3, scope: !2769, file: !521, line: 1025, type: !96)
!2776 = !DILocation(line: 0, scope: !2769)
!2777 = !DILocation(line: 0, scope: !2715, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1027, column: 10, scope: !2769)
!2779 = !DILocation(line: 0, scope: !2725, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1009, column: 10, scope: !2715, inlinedAt: !2778)
!2781 = !DILocation(line: 1018, column: 3, scope: !2725, inlinedAt: !2780)
!2782 = !DILocation(line: 1018, column: 26, scope: !2725, inlinedAt: !2780)
!2783 = !DILocation(line: 1018, column: 30, scope: !2725, inlinedAt: !2780)
!2784 = !DILocation(line: 0, scope: !1653, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 1019, column: 3, scope: !2725, inlinedAt: !2780)
!2786 = !DILocation(line: 174, column: 12, scope: !1653, inlinedAt: !2785)
!2787 = !DILocation(line: 175, column: 8, scope: !1666, inlinedAt: !2785)
!2788 = !DILocation(line: 175, column: 19, scope: !1666, inlinedAt: !2785)
!2789 = !DILocation(line: 176, column: 5, scope: !1666, inlinedAt: !2785)
!2790 = !DILocation(line: 177, column: 6, scope: !1653, inlinedAt: !2785)
!2791 = !DILocation(line: 177, column: 17, scope: !1653, inlinedAt: !2785)
!2792 = !DILocation(line: 178, column: 6, scope: !1653, inlinedAt: !2785)
!2793 = !DILocation(line: 178, column: 18, scope: !1653, inlinedAt: !2785)
!2794 = !DILocation(line: 1020, column: 10, scope: !2725, inlinedAt: !2780)
!2795 = !DILocation(line: 1021, column: 1, scope: !2725, inlinedAt: !2780)
!2796 = !DILocation(line: 1027, column: 3, scope: !2769)
!2797 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !521, file: !521, line: 1031, type: !2798, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!89, !96, !96, !96, !147}
!2800 = !{!2801, !2802, !2803, !2804}
!2801 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2797, file: !521, line: 1031, type: !96)
!2802 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2797, file: !521, line: 1031, type: !96)
!2803 = !DILocalVariable(name: "arg", arg: 3, scope: !2797, file: !521, line: 1032, type: !96)
!2804 = !DILocalVariable(name: "argsize", arg: 4, scope: !2797, file: !521, line: 1032, type: !147)
!2805 = !DILocation(line: 0, scope: !2797)
!2806 = !DILocation(line: 0, scope: !2725, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1034, column: 10, scope: !2797)
!2808 = !DILocation(line: 1018, column: 3, scope: !2725, inlinedAt: !2807)
!2809 = !DILocation(line: 1018, column: 26, scope: !2725, inlinedAt: !2807)
!2810 = !DILocation(line: 1018, column: 30, scope: !2725, inlinedAt: !2807)
!2811 = !DILocation(line: 0, scope: !1653, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1019, column: 3, scope: !2725, inlinedAt: !2807)
!2813 = !DILocation(line: 174, column: 12, scope: !1653, inlinedAt: !2812)
!2814 = !DILocation(line: 175, column: 8, scope: !1666, inlinedAt: !2812)
!2815 = !DILocation(line: 175, column: 19, scope: !1666, inlinedAt: !2812)
!2816 = !DILocation(line: 176, column: 5, scope: !1666, inlinedAt: !2812)
!2817 = !DILocation(line: 177, column: 6, scope: !1653, inlinedAt: !2812)
!2818 = !DILocation(line: 177, column: 17, scope: !1653, inlinedAt: !2812)
!2819 = !DILocation(line: 178, column: 6, scope: !1653, inlinedAt: !2812)
!2820 = !DILocation(line: 178, column: 18, scope: !1653, inlinedAt: !2812)
!2821 = !DILocation(line: 1020, column: 10, scope: !2725, inlinedAt: !2807)
!2822 = !DILocation(line: 1021, column: 1, scope: !2725, inlinedAt: !2807)
!2823 = !DILocation(line: 1034, column: 3, scope: !2797)
!2824 = distinct !DISubprogram(name: "quote_n_mem", scope: !521, file: !521, line: 1049, type: !2825, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!96, !72, !96, !147}
!2827 = !{!2828, !2829, !2830}
!2828 = !DILocalVariable(name: "n", arg: 1, scope: !2824, file: !521, line: 1049, type: !72)
!2829 = !DILocalVariable(name: "arg", arg: 2, scope: !2824, file: !521, line: 1049, type: !96)
!2830 = !DILocalVariable(name: "argsize", arg: 3, scope: !2824, file: !521, line: 1049, type: !147)
!2831 = !DILocation(line: 0, scope: !2824)
!2832 = !DILocation(line: 1051, column: 10, scope: !2824)
!2833 = !DILocation(line: 1051, column: 3, scope: !2824)
!2834 = distinct !DISubprogram(name: "quote_mem", scope: !521, file: !521, line: 1055, type: !2835, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!96, !96, !147}
!2837 = !{!2838, !2839}
!2838 = !DILocalVariable(name: "arg", arg: 1, scope: !2834, file: !521, line: 1055, type: !96)
!2839 = !DILocalVariable(name: "argsize", arg: 2, scope: !2834, file: !521, line: 1055, type: !147)
!2840 = !DILocation(line: 0, scope: !2834)
!2841 = !DILocation(line: 0, scope: !2824, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 1057, column: 10, scope: !2834)
!2843 = !DILocation(line: 1051, column: 10, scope: !2824, inlinedAt: !2842)
!2844 = !DILocation(line: 1057, column: 3, scope: !2834)
!2845 = distinct !DISubprogram(name: "quote_n", scope: !521, file: !521, line: 1061, type: !2846, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!96, !72, !96}
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "n", arg: 1, scope: !2845, file: !521, line: 1061, type: !72)
!2850 = !DILocalVariable(name: "arg", arg: 2, scope: !2845, file: !521, line: 1061, type: !96)
!2851 = !DILocation(line: 0, scope: !2845)
!2852 = !DILocation(line: 0, scope: !2824, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 1063, column: 10, scope: !2845)
!2854 = !DILocation(line: 1051, column: 10, scope: !2824, inlinedAt: !2853)
!2855 = !DILocation(line: 1063, column: 3, scope: !2845)
!2856 = distinct !DISubprogram(name: "quote", scope: !521, file: !521, line: 1067, type: !2857, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!96, !96}
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "arg", arg: 1, scope: !2856, file: !521, line: 1067, type: !96)
!2861 = !DILocation(line: 0, scope: !2856)
!2862 = !DILocation(line: 0, scope: !2845, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1069, column: 10, scope: !2856)
!2864 = !DILocation(line: 0, scope: !2824, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1063, column: 10, scope: !2845, inlinedAt: !2863)
!2866 = !DILocation(line: 1051, column: 10, scope: !2824, inlinedAt: !2865)
!2867 = !DILocation(line: 1069, column: 3, scope: !2856)
!2868 = distinct !DISubprogram(name: "version_etc_arn", scope: !635, file: !635, line: 61, type: !2869, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !2906)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !2871, !96, !96, !96, !2905, !147}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !2873)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !2874)
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2873, file: !219, line: 51, baseType: !72, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2873, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2873, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2873, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2873, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2873, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2873, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2873, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2873, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2873, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2873, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2873, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2873, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2873, file: !219, line: 70, baseType: !2889, size: 64, offset: 832)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2873, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2873, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2873, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2873, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2873, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2873, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2873, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2873, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2873, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2873, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2873, file: !219, line: 93, baseType: !2889, size: 64, offset: 1344)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2873, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2873, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2873, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2873, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912}
!2907 = !DILocalVariable(name: "stream", arg: 1, scope: !2868, file: !635, line: 61, type: !2871)
!2908 = !DILocalVariable(name: "command_name", arg: 2, scope: !2868, file: !635, line: 62, type: !96)
!2909 = !DILocalVariable(name: "package", arg: 3, scope: !2868, file: !635, line: 62, type: !96)
!2910 = !DILocalVariable(name: "version", arg: 4, scope: !2868, file: !635, line: 63, type: !96)
!2911 = !DILocalVariable(name: "authors", arg: 5, scope: !2868, file: !635, line: 64, type: !2905)
!2912 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2868, file: !635, line: 64, type: !147)
!2913 = !DILocation(line: 0, scope: !2868)
!2914 = !DILocation(line: 66, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2868, file: !635, line: 66, column: 7)
!2916 = !DILocation(line: 66, column: 7, scope: !2868)
!2917 = !DILocation(line: 67, column: 5, scope: !2915)
!2918 = !DILocation(line: 69, column: 5, scope: !2915)
!2919 = !DILocation(line: 83, column: 3, scope: !2868)
!2920 = !DILocation(line: 85, column: 3, scope: !2868)
!2921 = !DILocation(line: 88, column: 3, scope: !2868)
!2922 = !DILocation(line: 95, column: 3, scope: !2868)
!2923 = !DILocation(line: 97, column: 3, scope: !2868)
!2924 = !DILocation(line: 105, column: 7, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2868, file: !635, line: 98, column: 5)
!2926 = !DILocation(line: 106, column: 7, scope: !2925)
!2927 = !DILocation(line: 109, column: 7, scope: !2925)
!2928 = !DILocation(line: 110, column: 7, scope: !2925)
!2929 = !DILocation(line: 113, column: 7, scope: !2925)
!2930 = !DILocation(line: 115, column: 7, scope: !2925)
!2931 = !DILocation(line: 120, column: 7, scope: !2925)
!2932 = !DILocation(line: 122, column: 7, scope: !2925)
!2933 = !DILocation(line: 127, column: 7, scope: !2925)
!2934 = !DILocation(line: 129, column: 7, scope: !2925)
!2935 = !DILocation(line: 134, column: 7, scope: !2925)
!2936 = !DILocation(line: 137, column: 7, scope: !2925)
!2937 = !DILocation(line: 142, column: 7, scope: !2925)
!2938 = !DILocation(line: 145, column: 7, scope: !2925)
!2939 = !DILocation(line: 150, column: 7, scope: !2925)
!2940 = !DILocation(line: 154, column: 7, scope: !2925)
!2941 = !DILocation(line: 159, column: 7, scope: !2925)
!2942 = !DILocation(line: 163, column: 7, scope: !2925)
!2943 = !DILocation(line: 170, column: 7, scope: !2925)
!2944 = !DILocation(line: 174, column: 7, scope: !2925)
!2945 = !DILocation(line: 176, column: 1, scope: !2868)
!2946 = distinct !DISubprogram(name: "version_etc_ar", scope: !635, file: !635, line: 183, type: !2947, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2871, !96, !96, !96, !2905}
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955}
!2950 = !DILocalVariable(name: "stream", arg: 1, scope: !2946, file: !635, line: 183, type: !2871)
!2951 = !DILocalVariable(name: "command_name", arg: 2, scope: !2946, file: !635, line: 184, type: !96)
!2952 = !DILocalVariable(name: "package", arg: 3, scope: !2946, file: !635, line: 184, type: !96)
!2953 = !DILocalVariable(name: "version", arg: 4, scope: !2946, file: !635, line: 185, type: !96)
!2954 = !DILocalVariable(name: "authors", arg: 5, scope: !2946, file: !635, line: 185, type: !2905)
!2955 = !DILocalVariable(name: "n_authors", scope: !2946, file: !635, line: 187, type: !147)
!2956 = !DILocation(line: 0, scope: !2946)
!2957 = !DILocation(line: 189, column: 8, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2946, file: !635, line: 189, column: 3)
!2959 = !DILocation(line: 189, scope: !2958)
!2960 = !DILocation(line: 189, column: 23, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !635, line: 189, column: 3)
!2962 = !DILocation(line: 189, column: 3, scope: !2958)
!2963 = !DILocation(line: 189, column: 52, scope: !2961)
!2964 = distinct !{!2964, !2962, !2965, !962}
!2965 = !DILocation(line: 190, column: 5, scope: !2958)
!2966 = !DILocation(line: 191, column: 3, scope: !2946)
!2967 = !DILocation(line: 192, column: 1, scope: !2946)
!2968 = distinct !DISubprogram(name: "version_etc_va", scope: !635, file: !635, line: 199, type: !2969, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !2982)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{null, !2871, !96, !96, !96, !2971}
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !435, line: 52, baseType: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !437, line: 14, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2974, baseType: !2975)
!2974 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2981}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2975, file: !2974, line: 192, baseType: !145, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2975, file: !2974, line: 192, baseType: !145, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2975, file: !2974, line: 192, baseType: !145, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2975, file: !2974, line: 192, baseType: !72, size: 32, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2975, file: !2974, line: 192, baseType: !72, size: 32, offset: 224)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2983 = !DILocalVariable(name: "stream", arg: 1, scope: !2968, file: !635, line: 199, type: !2871)
!2984 = !DILocalVariable(name: "command_name", arg: 2, scope: !2968, file: !635, line: 200, type: !96)
!2985 = !DILocalVariable(name: "package", arg: 3, scope: !2968, file: !635, line: 200, type: !96)
!2986 = !DILocalVariable(name: "version", arg: 4, scope: !2968, file: !635, line: 201, type: !96)
!2987 = !DILocalVariable(name: "authors", arg: 5, scope: !2968, file: !635, line: 201, type: !2971)
!2988 = !DILocalVariable(name: "n_authors", scope: !2968, file: !635, line: 203, type: !147)
!2989 = !DILocalVariable(name: "authtab", scope: !2968, file: !635, line: 204, type: !2990)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !47)
!2991 = !DILocation(line: 0, scope: !2968)
!2992 = !DILocation(line: 201, column: 46, scope: !2968)
!2993 = !DILocation(line: 204, column: 3, scope: !2968)
!2994 = !DILocation(line: 204, column: 15, scope: !2968)
!2995 = !DILocation(line: 208, column: 35, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !635, line: 206, column: 3)
!2997 = distinct !DILexicalBlock(scope: !2968, file: !635, line: 206, column: 3)
!2998 = !DILocation(line: 208, column: 33, scope: !2996)
!2999 = !DILocation(line: 208, column: 67, scope: !2996)
!3000 = !DILocation(line: 206, column: 3, scope: !2997)
!3001 = !DILocation(line: 208, column: 14, scope: !2996)
!3002 = !DILocation(line: 0, scope: !2997)
!3003 = !DILocation(line: 211, column: 3, scope: !2968)
!3004 = !DILocation(line: 213, column: 1, scope: !2968)
!3005 = distinct !DISubprogram(name: "version_etc", scope: !635, file: !635, line: 230, type: !3006, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !2871, !96, !96, !96, null}
!3008 = !{!3009, !3010, !3011, !3012, !3013}
!3009 = !DILocalVariable(name: "stream", arg: 1, scope: !3005, file: !635, line: 230, type: !2871)
!3010 = !DILocalVariable(name: "command_name", arg: 2, scope: !3005, file: !635, line: 231, type: !96)
!3011 = !DILocalVariable(name: "package", arg: 3, scope: !3005, file: !635, line: 231, type: !96)
!3012 = !DILocalVariable(name: "version", arg: 4, scope: !3005, file: !635, line: 232, type: !96)
!3013 = !DILocalVariable(name: "authors", scope: !3005, file: !635, line: 234, type: !2971)
!3014 = !DILocation(line: 0, scope: !3005)
!3015 = !DILocation(line: 234, column: 3, scope: !3005)
!3016 = !DILocation(line: 234, column: 11, scope: !3005)
!3017 = !DILocation(line: 235, column: 3, scope: !3005)
!3018 = !DILocation(line: 236, column: 3, scope: !3005)
!3019 = !DILocation(line: 237, column: 3, scope: !3005)
!3020 = !DILocation(line: 238, column: 1, scope: !3005)
!3021 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !635, file: !635, line: 241, type: !476, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !853)
!3022 = !DILocation(line: 243, column: 3, scope: !3021)
!3023 = !DILocation(line: 248, column: 3, scope: !3021)
!3024 = !DILocation(line: 254, column: 3, scope: !3021)
!3025 = !DILocation(line: 259, column: 3, scope: !3021)
!3026 = !DILocation(line: 261, column: 1, scope: !3021)
!3027 = distinct !DISubprogram(name: "xnrealloc", scope: !3028, file: !3028, line: 147, type: !3029, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3031)
!3028 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!145, !145, !147, !147}
!3031 = !{!3032, !3033, !3034}
!3032 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !3028, line: 147, type: !145)
!3033 = !DILocalVariable(name: "n", arg: 2, scope: !3027, file: !3028, line: 147, type: !147)
!3034 = !DILocalVariable(name: "s", arg: 3, scope: !3027, file: !3028, line: 147, type: !147)
!3035 = !DILocation(line: 0, scope: !3027)
!3036 = !DILocalVariable(name: "p", arg: 1, scope: !3037, file: !769, line: 83, type: !145)
!3037 = distinct !DISubprogram(name: "xreallocarray", scope: !769, file: !769, line: 83, type: !3029, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3038)
!3038 = !{!3036, !3039, !3040}
!3039 = !DILocalVariable(name: "n", arg: 2, scope: !3037, file: !769, line: 83, type: !147)
!3040 = !DILocalVariable(name: "s", arg: 3, scope: !3037, file: !769, line: 83, type: !147)
!3041 = !DILocation(line: 0, scope: !3037, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 149, column: 10, scope: !3027)
!3043 = !DILocation(line: 85, column: 25, scope: !3037, inlinedAt: !3042)
!3044 = !DILocalVariable(name: "p", arg: 1, scope: !3045, file: !769, line: 37, type: !145)
!3045 = distinct !DISubprogram(name: "check_nonnull", scope: !769, file: !769, line: 37, type: !3046, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!145, !145}
!3048 = !{!3044}
!3049 = !DILocation(line: 0, scope: !3045, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 85, column: 10, scope: !3037, inlinedAt: !3042)
!3051 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3050)
!3052 = distinct !DILexicalBlock(scope: !3045, file: !769, line: 39, column: 7)
!3053 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3050)
!3054 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3050)
!3055 = !DILocation(line: 149, column: 3, scope: !3027)
!3056 = !DILocation(line: 0, scope: !3037)
!3057 = !DILocation(line: 85, column: 25, scope: !3037)
!3058 = !DILocation(line: 0, scope: !3045, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 85, column: 10, scope: !3037)
!3060 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3059)
!3061 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3059)
!3062 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3059)
!3063 = !DILocation(line: 85, column: 3, scope: !3037)
!3064 = distinct !DISubprogram(name: "xmalloc", scope: !769, file: !769, line: 47, type: !3065, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!145, !147}
!3067 = !{!3068}
!3068 = !DILocalVariable(name: "s", arg: 1, scope: !3064, file: !769, line: 47, type: !147)
!3069 = !DILocation(line: 0, scope: !3064)
!3070 = !DILocation(line: 49, column: 25, scope: !3064)
!3071 = !DILocation(line: 0, scope: !3045, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 49, column: 10, scope: !3064)
!3073 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3072)
!3074 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3072)
!3075 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3072)
!3076 = !DILocation(line: 49, column: 3, scope: !3064)
!3077 = !DISubprogram(name: "malloc", scope: !1036, file: !1036, line: 540, type: !3065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3078 = distinct !DISubprogram(name: "ximalloc", scope: !769, file: !769, line: 53, type: !3079, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!145, !788}
!3081 = !{!3082}
!3082 = !DILocalVariable(name: "s", arg: 1, scope: !3078, file: !769, line: 53, type: !788)
!3083 = !DILocation(line: 0, scope: !3078)
!3084 = !DILocalVariable(name: "s", arg: 1, scope: !3085, file: !3086, line: 55, type: !788)
!3085 = distinct !DISubprogram(name: "imalloc", scope: !3086, file: !3086, line: 55, type: !3079, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3087)
!3086 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3087 = !{!3084}
!3088 = !DILocation(line: 0, scope: !3085, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 55, column: 25, scope: !3078)
!3090 = !DILocation(line: 57, column: 26, scope: !3085, inlinedAt: !3089)
!3091 = !DILocation(line: 0, scope: !3045, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 55, column: 10, scope: !3078)
!3093 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3092)
!3094 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3092)
!3095 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3092)
!3096 = !DILocation(line: 55, column: 3, scope: !3078)
!3097 = distinct !DISubprogram(name: "xcharalloc", scope: !769, file: !769, line: 59, type: !3098, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!89, !147}
!3100 = !{!3101}
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !769, line: 59, type: !147)
!3102 = !DILocation(line: 0, scope: !3097)
!3103 = !DILocation(line: 0, scope: !3064, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 61, column: 10, scope: !3097)
!3105 = !DILocation(line: 49, column: 25, scope: !3064, inlinedAt: !3104)
!3106 = !DILocation(line: 0, scope: !3045, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 49, column: 10, scope: !3064, inlinedAt: !3104)
!3108 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3107)
!3109 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3107)
!3110 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3107)
!3111 = !DILocation(line: 61, column: 3, scope: !3097)
!3112 = distinct !DISubprogram(name: "xrealloc", scope: !769, file: !769, line: 68, type: !3113, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!145, !145, !147}
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "p", arg: 1, scope: !3112, file: !769, line: 68, type: !145)
!3117 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !769, line: 68, type: !147)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocalVariable(name: "ptr", arg: 1, scope: !3120, file: !3121, line: 2057, type: !145)
!3120 = distinct !DISubprogram(name: "rpl_realloc", scope: !3121, file: !3121, line: 2057, type: !3113, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3122)
!3121 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3122 = !{!3119, !3123}
!3123 = !DILocalVariable(name: "size", arg: 2, scope: !3120, file: !3121, line: 2057, type: !147)
!3124 = !DILocation(line: 0, scope: !3120, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 70, column: 25, scope: !3112)
!3126 = !DILocation(line: 2059, column: 24, scope: !3120, inlinedAt: !3125)
!3127 = !DILocation(line: 2059, column: 10, scope: !3120, inlinedAt: !3125)
!3128 = !DILocation(line: 0, scope: !3045, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 70, column: 10, scope: !3112)
!3130 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3129)
!3131 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3129)
!3132 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3129)
!3133 = !DILocation(line: 70, column: 3, scope: !3112)
!3134 = !DISubprogram(name: "realloc", scope: !1036, file: !1036, line: 551, type: !3113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3135 = distinct !DISubprogram(name: "xirealloc", scope: !769, file: !769, line: 74, type: !3136, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!145, !145, !788}
!3138 = !{!3139, !3140}
!3139 = !DILocalVariable(name: "p", arg: 1, scope: !3135, file: !769, line: 74, type: !145)
!3140 = !DILocalVariable(name: "s", arg: 2, scope: !3135, file: !769, line: 74, type: !788)
!3141 = !DILocation(line: 0, scope: !3135)
!3142 = !DILocalVariable(name: "p", arg: 1, scope: !3143, file: !3086, line: 66, type: !145)
!3143 = distinct !DISubprogram(name: "irealloc", scope: !3086, file: !3086, line: 66, type: !3136, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3144)
!3144 = !{!3142, !3145}
!3145 = !DILocalVariable(name: "s", arg: 2, scope: !3143, file: !3086, line: 66, type: !788)
!3146 = !DILocation(line: 0, scope: !3143, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 76, column: 25, scope: !3135)
!3148 = !DILocation(line: 0, scope: !3120, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 68, column: 26, scope: !3143, inlinedAt: !3147)
!3150 = !DILocation(line: 2059, column: 24, scope: !3120, inlinedAt: !3149)
!3151 = !DILocation(line: 2059, column: 10, scope: !3120, inlinedAt: !3149)
!3152 = !DILocation(line: 0, scope: !3045, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 76, column: 10, scope: !3135)
!3154 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3153)
!3155 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3153)
!3156 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3153)
!3157 = !DILocation(line: 76, column: 3, scope: !3135)
!3158 = distinct !DISubprogram(name: "xireallocarray", scope: !769, file: !769, line: 89, type: !3159, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!145, !145, !788, !788}
!3161 = !{!3162, !3163, !3164}
!3162 = !DILocalVariable(name: "p", arg: 1, scope: !3158, file: !769, line: 89, type: !145)
!3163 = !DILocalVariable(name: "n", arg: 2, scope: !3158, file: !769, line: 89, type: !788)
!3164 = !DILocalVariable(name: "s", arg: 3, scope: !3158, file: !769, line: 89, type: !788)
!3165 = !DILocation(line: 0, scope: !3158)
!3166 = !DILocalVariable(name: "p", arg: 1, scope: !3167, file: !3086, line: 98, type: !145)
!3167 = distinct !DISubprogram(name: "ireallocarray", scope: !3086, file: !3086, line: 98, type: !3159, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3168)
!3168 = !{!3166, !3169, !3170}
!3169 = !DILocalVariable(name: "n", arg: 2, scope: !3167, file: !3086, line: 98, type: !788)
!3170 = !DILocalVariable(name: "s", arg: 3, scope: !3167, file: !3086, line: 98, type: !788)
!3171 = !DILocation(line: 0, scope: !3167, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 91, column: 25, scope: !3158)
!3173 = !DILocation(line: 101, column: 13, scope: !3167, inlinedAt: !3172)
!3174 = !DILocation(line: 0, scope: !3045, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 91, column: 10, scope: !3158)
!3176 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3175)
!3177 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3175)
!3178 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3175)
!3179 = !DILocation(line: 91, column: 3, scope: !3158)
!3180 = distinct !DISubprogram(name: "xnmalloc", scope: !769, file: !769, line: 98, type: !3181, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!145, !147, !147}
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "n", arg: 1, scope: !3180, file: !769, line: 98, type: !147)
!3185 = !DILocalVariable(name: "s", arg: 2, scope: !3180, file: !769, line: 98, type: !147)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 0, scope: !3037, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 100, column: 10, scope: !3180)
!3189 = !DILocation(line: 85, column: 25, scope: !3037, inlinedAt: !3188)
!3190 = !DILocation(line: 0, scope: !3045, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 85, column: 10, scope: !3037, inlinedAt: !3188)
!3192 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3191)
!3193 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3191)
!3194 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3191)
!3195 = !DILocation(line: 100, column: 3, scope: !3180)
!3196 = distinct !DISubprogram(name: "xinmalloc", scope: !769, file: !769, line: 104, type: !3197, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!145, !788, !788}
!3199 = !{!3200, !3201}
!3200 = !DILocalVariable(name: "n", arg: 1, scope: !3196, file: !769, line: 104, type: !788)
!3201 = !DILocalVariable(name: "s", arg: 2, scope: !3196, file: !769, line: 104, type: !788)
!3202 = !DILocation(line: 0, scope: !3196)
!3203 = !DILocation(line: 0, scope: !3158, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 106, column: 10, scope: !3196)
!3205 = !DILocation(line: 0, scope: !3167, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 91, column: 25, scope: !3158, inlinedAt: !3204)
!3207 = !DILocation(line: 101, column: 13, scope: !3167, inlinedAt: !3206)
!3208 = !DILocation(line: 0, scope: !3045, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 91, column: 10, scope: !3158, inlinedAt: !3204)
!3210 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3209)
!3211 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3209)
!3212 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3209)
!3213 = !DILocation(line: 106, column: 3, scope: !3196)
!3214 = distinct !DISubprogram(name: "x2realloc", scope: !769, file: !769, line: 116, type: !3215, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!145, !145, !775}
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "p", arg: 1, scope: !3214, file: !769, line: 116, type: !145)
!3219 = !DILocalVariable(name: "ps", arg: 2, scope: !3214, file: !769, line: 116, type: !775)
!3220 = !DILocation(line: 0, scope: !3214)
!3221 = !DILocation(line: 0, scope: !772, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 118, column: 10, scope: !3214)
!3223 = !DILocation(line: 178, column: 14, scope: !772, inlinedAt: !3222)
!3224 = !DILocation(line: 180, column: 9, scope: !3225, inlinedAt: !3222)
!3225 = distinct !DILexicalBlock(scope: !772, file: !769, line: 180, column: 7)
!3226 = !DILocation(line: 180, column: 7, scope: !772, inlinedAt: !3222)
!3227 = !DILocation(line: 182, column: 13, scope: !3228, inlinedAt: !3222)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !769, line: 182, column: 11)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !769, line: 181, column: 5)
!3230 = !DILocation(line: 182, column: 11, scope: !3229, inlinedAt: !3222)
!3231 = !DILocation(line: 197, column: 11, scope: !3232, inlinedAt: !3222)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !769, line: 197, column: 11)
!3233 = distinct !DILexicalBlock(scope: !3225, file: !769, line: 195, column: 5)
!3234 = !DILocation(line: 197, column: 11, scope: !3233, inlinedAt: !3222)
!3235 = !DILocation(line: 198, column: 9, scope: !3232, inlinedAt: !3222)
!3236 = !DILocation(line: 0, scope: !3037, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 201, column: 7, scope: !772, inlinedAt: !3222)
!3238 = !DILocation(line: 85, column: 25, scope: !3037, inlinedAt: !3237)
!3239 = !DILocation(line: 0, scope: !3045, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 85, column: 10, scope: !3037, inlinedAt: !3237)
!3241 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3240)
!3242 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3240)
!3243 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3240)
!3244 = !DILocation(line: 202, column: 7, scope: !772, inlinedAt: !3222)
!3245 = !DILocation(line: 118, column: 3, scope: !3214)
!3246 = !DILocation(line: 0, scope: !772)
!3247 = !DILocation(line: 178, column: 14, scope: !772)
!3248 = !DILocation(line: 180, column: 9, scope: !3225)
!3249 = !DILocation(line: 180, column: 7, scope: !772)
!3250 = !DILocation(line: 182, column: 13, scope: !3228)
!3251 = !DILocation(line: 182, column: 11, scope: !3229)
!3252 = !DILocation(line: 190, column: 30, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3228, file: !769, line: 183, column: 9)
!3254 = !DILocation(line: 191, column: 16, scope: !3253)
!3255 = !DILocation(line: 191, column: 13, scope: !3253)
!3256 = !DILocation(line: 192, column: 9, scope: !3253)
!3257 = !DILocation(line: 197, column: 11, scope: !3232)
!3258 = !DILocation(line: 197, column: 11, scope: !3233)
!3259 = !DILocation(line: 198, column: 9, scope: !3232)
!3260 = !DILocation(line: 0, scope: !3037, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 201, column: 7, scope: !772)
!3262 = !DILocation(line: 85, column: 25, scope: !3037, inlinedAt: !3261)
!3263 = !DILocation(line: 0, scope: !3045, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 85, column: 10, scope: !3037, inlinedAt: !3261)
!3265 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3264)
!3266 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3264)
!3267 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3264)
!3268 = !DILocation(line: 202, column: 7, scope: !772)
!3269 = !DILocation(line: 203, column: 3, scope: !772)
!3270 = !DILocation(line: 0, scope: !784)
!3271 = !DILocation(line: 230, column: 14, scope: !784)
!3272 = !DILocation(line: 238, column: 7, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !784, file: !769, line: 238, column: 7)
!3274 = !DILocation(line: 238, column: 7, scope: !784)
!3275 = !DILocation(line: 240, column: 9, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !784, file: !769, line: 240, column: 7)
!3277 = !DILocation(line: 240, column: 18, scope: !3276)
!3278 = !DILocation(line: 253, column: 8, scope: !784)
!3279 = !DILocation(line: 258, column: 27, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !769, line: 257, column: 5)
!3281 = distinct !DILexicalBlock(scope: !784, file: !769, line: 256, column: 7)
!3282 = !DILocation(line: 259, column: 32, scope: !3280)
!3283 = !DILocation(line: 260, column: 5, scope: !3280)
!3284 = !DILocation(line: 262, column: 9, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !784, file: !769, line: 262, column: 7)
!3286 = !DILocation(line: 262, column: 7, scope: !784)
!3287 = !DILocation(line: 263, column: 9, scope: !3285)
!3288 = !DILocation(line: 263, column: 5, scope: !3285)
!3289 = !DILocation(line: 264, column: 9, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !784, file: !769, line: 264, column: 7)
!3291 = !DILocation(line: 264, column: 14, scope: !3290)
!3292 = !DILocation(line: 265, column: 7, scope: !3290)
!3293 = !DILocation(line: 265, column: 11, scope: !3290)
!3294 = !DILocation(line: 266, column: 11, scope: !3290)
!3295 = !DILocation(line: 267, column: 14, scope: !3290)
!3296 = !DILocation(line: 264, column: 7, scope: !784)
!3297 = !DILocation(line: 268, column: 5, scope: !3290)
!3298 = !DILocation(line: 0, scope: !3112, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 269, column: 8, scope: !784)
!3300 = !DILocation(line: 0, scope: !3120, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 70, column: 25, scope: !3112, inlinedAt: !3299)
!3302 = !DILocation(line: 2059, column: 24, scope: !3120, inlinedAt: !3301)
!3303 = !DILocation(line: 2059, column: 10, scope: !3120, inlinedAt: !3301)
!3304 = !DILocation(line: 0, scope: !3045, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 70, column: 10, scope: !3112, inlinedAt: !3299)
!3306 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3305)
!3307 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3305)
!3308 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3305)
!3309 = !DILocation(line: 270, column: 7, scope: !784)
!3310 = !DILocation(line: 271, column: 3, scope: !784)
!3311 = distinct !DISubprogram(name: "xzalloc", scope: !769, file: !769, line: 279, type: !3065, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3312)
!3312 = !{!3313}
!3313 = !DILocalVariable(name: "s", arg: 1, scope: !3311, file: !769, line: 279, type: !147)
!3314 = !DILocation(line: 0, scope: !3311)
!3315 = !DILocalVariable(name: "n", arg: 1, scope: !3316, file: !769, line: 294, type: !147)
!3316 = distinct !DISubprogram(name: "xcalloc", scope: !769, file: !769, line: 294, type: !3181, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3317)
!3317 = !{!3315, !3318}
!3318 = !DILocalVariable(name: "s", arg: 2, scope: !3316, file: !769, line: 294, type: !147)
!3319 = !DILocation(line: 0, scope: !3316, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 281, column: 10, scope: !3311)
!3321 = !DILocation(line: 296, column: 25, scope: !3316, inlinedAt: !3320)
!3322 = !DILocation(line: 0, scope: !3045, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 296, column: 10, scope: !3316, inlinedAt: !3320)
!3324 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3323)
!3325 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3323)
!3326 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3323)
!3327 = !DILocation(line: 281, column: 3, scope: !3311)
!3328 = !DISubprogram(name: "calloc", scope: !1036, file: !1036, line: 543, type: !3181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3329 = !DILocation(line: 0, scope: !3316)
!3330 = !DILocation(line: 296, column: 25, scope: !3316)
!3331 = !DILocation(line: 0, scope: !3045, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 296, column: 10, scope: !3316)
!3333 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3332)
!3334 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3332)
!3335 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3332)
!3336 = !DILocation(line: 296, column: 3, scope: !3316)
!3337 = distinct !DISubprogram(name: "xizalloc", scope: !769, file: !769, line: 285, type: !3079, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3338)
!3338 = !{!3339}
!3339 = !DILocalVariable(name: "s", arg: 1, scope: !3337, file: !769, line: 285, type: !788)
!3340 = !DILocation(line: 0, scope: !3337)
!3341 = !DILocalVariable(name: "n", arg: 1, scope: !3342, file: !769, line: 300, type: !788)
!3342 = distinct !DISubprogram(name: "xicalloc", scope: !769, file: !769, line: 300, type: !3197, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3343)
!3343 = !{!3341, !3344}
!3344 = !DILocalVariable(name: "s", arg: 2, scope: !3342, file: !769, line: 300, type: !788)
!3345 = !DILocation(line: 0, scope: !3342, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 287, column: 10, scope: !3337)
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3348, file: !3086, line: 77, type: !788)
!3348 = distinct !DISubprogram(name: "icalloc", scope: !3086, file: !3086, line: 77, type: !3197, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3349)
!3349 = !{!3347, !3350}
!3350 = !DILocalVariable(name: "s", arg: 2, scope: !3348, file: !3086, line: 77, type: !788)
!3351 = !DILocation(line: 0, scope: !3348, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 302, column: 25, scope: !3342, inlinedAt: !3346)
!3353 = !DILocation(line: 91, column: 10, scope: !3348, inlinedAt: !3352)
!3354 = !DILocation(line: 0, scope: !3045, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 302, column: 10, scope: !3342, inlinedAt: !3346)
!3356 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3355)
!3357 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3355)
!3358 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3355)
!3359 = !DILocation(line: 287, column: 3, scope: !3337)
!3360 = !DILocation(line: 0, scope: !3342)
!3361 = !DILocation(line: 0, scope: !3348, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 302, column: 25, scope: !3342)
!3363 = !DILocation(line: 91, column: 10, scope: !3348, inlinedAt: !3362)
!3364 = !DILocation(line: 0, scope: !3045, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 302, column: 10, scope: !3342)
!3366 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3365)
!3367 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3365)
!3368 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3365)
!3369 = !DILocation(line: 302, column: 3, scope: !3342)
!3370 = distinct !DISubprogram(name: "xmemdup", scope: !769, file: !769, line: 310, type: !3371, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!145, !1060, !147}
!3373 = !{!3374, !3375}
!3374 = !DILocalVariable(name: "p", arg: 1, scope: !3370, file: !769, line: 310, type: !1060)
!3375 = !DILocalVariable(name: "s", arg: 2, scope: !3370, file: !769, line: 310, type: !147)
!3376 = !DILocation(line: 0, scope: !3370)
!3377 = !DILocation(line: 0, scope: !3064, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 312, column: 18, scope: !3370)
!3379 = !DILocation(line: 49, column: 25, scope: !3064, inlinedAt: !3378)
!3380 = !DILocation(line: 0, scope: !3045, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 49, column: 10, scope: !3064, inlinedAt: !3378)
!3382 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3381)
!3383 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3381)
!3384 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3381)
!3385 = !DILocalVariable(name: "__dest", arg: 1, scope: !3386, file: !1556, line: 26, type: !3389)
!3386 = distinct !DISubprogram(name: "memcpy", scope: !1556, file: !1556, line: 26, type: !3387, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3390)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!145, !3389, !1059, !147}
!3389 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!3390 = !{!3385, !3391, !3392}
!3391 = !DILocalVariable(name: "__src", arg: 2, scope: !3386, file: !1556, line: 26, type: !1059)
!3392 = !DILocalVariable(name: "__len", arg: 3, scope: !3386, file: !1556, line: 26, type: !147)
!3393 = !DILocation(line: 0, scope: !3386, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 312, column: 10, scope: !3370)
!3395 = !DILocation(line: 29, column: 10, scope: !3386, inlinedAt: !3394)
!3396 = !DILocation(line: 312, column: 3, scope: !3370)
!3397 = distinct !DISubprogram(name: "ximemdup", scope: !769, file: !769, line: 316, type: !3398, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!145, !1060, !788}
!3400 = !{!3401, !3402}
!3401 = !DILocalVariable(name: "p", arg: 1, scope: !3397, file: !769, line: 316, type: !1060)
!3402 = !DILocalVariable(name: "s", arg: 2, scope: !3397, file: !769, line: 316, type: !788)
!3403 = !DILocation(line: 0, scope: !3397)
!3404 = !DILocation(line: 0, scope: !3078, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 318, column: 18, scope: !3397)
!3406 = !DILocation(line: 0, scope: !3085, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 55, column: 25, scope: !3078, inlinedAt: !3405)
!3408 = !DILocation(line: 57, column: 26, scope: !3085, inlinedAt: !3407)
!3409 = !DILocation(line: 0, scope: !3045, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 55, column: 10, scope: !3078, inlinedAt: !3405)
!3411 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3410)
!3412 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3410)
!3413 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3410)
!3414 = !DILocation(line: 0, scope: !3386, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 318, column: 10, scope: !3397)
!3416 = !DILocation(line: 29, column: 10, scope: !3386, inlinedAt: !3415)
!3417 = !DILocation(line: 318, column: 3, scope: !3397)
!3418 = distinct !DISubprogram(name: "ximemdup0", scope: !769, file: !769, line: 325, type: !3419, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!89, !1060, !788}
!3421 = !{!3422, !3423, !3424}
!3422 = !DILocalVariable(name: "p", arg: 1, scope: !3418, file: !769, line: 325, type: !1060)
!3423 = !DILocalVariable(name: "s", arg: 2, scope: !3418, file: !769, line: 325, type: !788)
!3424 = !DILocalVariable(name: "result", scope: !3418, file: !769, line: 327, type: !89)
!3425 = !DILocation(line: 0, scope: !3418)
!3426 = !DILocation(line: 327, column: 30, scope: !3418)
!3427 = !DILocation(line: 0, scope: !3078, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 327, column: 18, scope: !3418)
!3429 = !DILocation(line: 0, scope: !3085, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 55, column: 25, scope: !3078, inlinedAt: !3428)
!3431 = !DILocation(line: 57, column: 26, scope: !3085, inlinedAt: !3430)
!3432 = !DILocation(line: 0, scope: !3045, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 55, column: 10, scope: !3078, inlinedAt: !3428)
!3434 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3433)
!3435 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3433)
!3436 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3433)
!3437 = !DILocation(line: 328, column: 3, scope: !3418)
!3438 = !DILocation(line: 328, column: 13, scope: !3418)
!3439 = !DILocation(line: 0, scope: !3386, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 329, column: 10, scope: !3418)
!3441 = !DILocation(line: 29, column: 10, scope: !3386, inlinedAt: !3440)
!3442 = !DILocation(line: 329, column: 3, scope: !3418)
!3443 = distinct !DISubprogram(name: "xstrdup", scope: !769, file: !769, line: 335, type: !1038, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3444)
!3444 = !{!3445}
!3445 = !DILocalVariable(name: "string", arg: 1, scope: !3443, file: !769, line: 335, type: !96)
!3446 = !DILocation(line: 0, scope: !3443)
!3447 = !DILocation(line: 337, column: 27, scope: !3443)
!3448 = !DILocation(line: 337, column: 43, scope: !3443)
!3449 = !DILocation(line: 0, scope: !3370, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 337, column: 10, scope: !3443)
!3451 = !DILocation(line: 0, scope: !3064, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 312, column: 18, scope: !3370, inlinedAt: !3450)
!3453 = !DILocation(line: 49, column: 25, scope: !3064, inlinedAt: !3452)
!3454 = !DILocation(line: 0, scope: !3045, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 49, column: 10, scope: !3064, inlinedAt: !3452)
!3456 = !DILocation(line: 39, column: 8, scope: !3052, inlinedAt: !3455)
!3457 = !DILocation(line: 39, column: 7, scope: !3045, inlinedAt: !3455)
!3458 = !DILocation(line: 40, column: 5, scope: !3052, inlinedAt: !3455)
!3459 = !DILocation(line: 0, scope: !3386, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 312, column: 10, scope: !3370, inlinedAt: !3450)
!3461 = !DILocation(line: 29, column: 10, scope: !3386, inlinedAt: !3460)
!3462 = !DILocation(line: 337, column: 3, scope: !3443)
!3463 = distinct !DISubprogram(name: "xalloc_die", scope: !731, file: !731, line: 32, type: !476, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3464)
!3464 = !{!3465}
!3465 = !DILocalVariable(name: "__errstatus", scope: !3466, file: !731, line: 34, type: !118)
!3466 = distinct !DILexicalBlock(scope: !3463, file: !731, line: 34, column: 3)
!3467 = !DILocation(line: 34, column: 3, scope: !3466)
!3468 = !DILocation(line: 0, scope: !3466)
!3469 = !DILocation(line: 40, column: 3, scope: !3463)
!3470 = distinct !DISubprogram(name: "xstrtol", scope: !805, file: !805, line: 71, type: !3471, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3475)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!3473, !96, !88, !72, !3474, !96}
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3488, !3489}
!3476 = !DILocalVariable(name: "nptr", arg: 1, scope: !3470, file: !805, line: 71, type: !96)
!3477 = !DILocalVariable(name: "endptr", arg: 2, scope: !3470, file: !805, line: 71, type: !88)
!3478 = !DILocalVariable(name: "base", arg: 3, scope: !3470, file: !805, line: 71, type: !72)
!3479 = !DILocalVariable(name: "val", arg: 4, scope: !3470, file: !805, line: 72, type: !3474)
!3480 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3470, file: !805, line: 72, type: !96)
!3481 = !DILocalVariable(name: "t_ptr", scope: !3470, file: !805, line: 74, type: !89)
!3482 = !DILocalVariable(name: "p", scope: !3470, file: !805, line: 75, type: !88)
!3483 = !DILocalVariable(name: "tmp", scope: !3470, file: !805, line: 91, type: !113)
!3484 = !DILocalVariable(name: "err", scope: !3470, file: !805, line: 92, type: !3473)
!3485 = !DILocalVariable(name: "xbase", scope: !3486, file: !805, line: 126, type: !72)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !805, line: 119, column: 5)
!3487 = distinct !DILexicalBlock(scope: !3470, file: !805, line: 118, column: 7)
!3488 = !DILocalVariable(name: "suffixes", scope: !3486, file: !805, line: 127, type: !72)
!3489 = !DILocalVariable(name: "overflow", scope: !3486, file: !805, line: 156, type: !3473)
!3490 = !DILocation(line: 0, scope: !3470)
!3491 = !DILocation(line: 74, column: 3, scope: !3470)
!3492 = !DILocation(line: 75, column: 14, scope: !3470)
!3493 = !DILocation(line: 90, column: 3, scope: !3470)
!3494 = !DILocation(line: 90, column: 9, scope: !3470)
!3495 = !DILocation(line: 91, column: 20, scope: !3470)
!3496 = !DILocation(line: 94, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3470, file: !805, line: 94, column: 7)
!3498 = !DILocation(line: 94, column: 10, scope: !3497)
!3499 = !DILocation(line: 94, column: 7, scope: !3470)
!3500 = !DILocation(line: 98, column: 14, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !805, line: 98, column: 11)
!3502 = distinct !DILexicalBlock(scope: !3497, file: !805, line: 95, column: 5)
!3503 = !DILocation(line: 98, column: 29, scope: !3501)
!3504 = !DILocation(line: 98, column: 32, scope: !3501)
!3505 = !DILocation(line: 98, column: 38, scope: !3501)
!3506 = !DILocation(line: 98, column: 41, scope: !3501)
!3507 = !DILocation(line: 98, column: 11, scope: !3502)
!3508 = !DILocation(line: 102, column: 12, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3497, file: !805, line: 102, column: 12)
!3510 = !DILocation(line: 102, column: 12, scope: !3497)
!3511 = !DILocation(line: 107, column: 5, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3509, file: !805, line: 103, column: 5)
!3513 = !DILocation(line: 112, column: 8, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3470, file: !805, line: 112, column: 7)
!3515 = !DILocation(line: 112, column: 7, scope: !3470)
!3516 = !DILocation(line: 114, column: 12, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !805, line: 113, column: 5)
!3518 = !DILocation(line: 115, column: 7, scope: !3517)
!3519 = !DILocation(line: 118, column: 7, scope: !3487)
!3520 = !DILocation(line: 118, column: 11, scope: !3487)
!3521 = !DILocation(line: 118, column: 7, scope: !3470)
!3522 = !DILocation(line: 120, column: 12, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3486, file: !805, line: 120, column: 11)
!3524 = !DILocation(line: 120, column: 11, scope: !3486)
!3525 = !DILocation(line: 122, column: 16, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !805, line: 121, column: 9)
!3527 = !DILocation(line: 123, column: 22, scope: !3526)
!3528 = !DILocation(line: 123, column: 11, scope: !3526)
!3529 = !DILocation(line: 0, scope: !3486)
!3530 = !DILocation(line: 128, column: 7, scope: !3486)
!3531 = !DILocation(line: 140, column: 15, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !805, line: 140, column: 15)
!3533 = distinct !DILexicalBlock(scope: !3486, file: !805, line: 129, column: 9)
!3534 = !DILocation(line: 140, column: 15, scope: !3533)
!3535 = !DILocation(line: 141, column: 21, scope: !3532)
!3536 = !DILocation(line: 141, column: 13, scope: !3532)
!3537 = !DILocation(line: 144, column: 21, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !805, line: 144, column: 21)
!3539 = distinct !DILexicalBlock(scope: !3532, file: !805, line: 142, column: 15)
!3540 = !DILocation(line: 144, column: 29, scope: !3538)
!3541 = !DILocation(line: 144, column: 21, scope: !3539)
!3542 = !DILocation(line: 152, column: 17, scope: !3539)
!3543 = !DILocation(line: 157, column: 7, scope: !3486)
!3544 = !DILocalVariable(name: "err", scope: !3545, file: !805, line: 64, type: !3473)
!3545 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !805, file: !805, line: 62, type: !3546, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!3473, !3474, !72, !72}
!3548 = !{!3549, !3550, !3551, !3544}
!3549 = !DILocalVariable(name: "x", arg: 1, scope: !3545, file: !805, line: 62, type: !3474)
!3550 = !DILocalVariable(name: "base", arg: 2, scope: !3545, file: !805, line: 62, type: !72)
!3551 = !DILocalVariable(name: "power", arg: 3, scope: !3545, file: !805, line: 62, type: !72)
!3552 = !DILocation(line: 0, scope: !3545, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 219, column: 22, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3486, file: !805, line: 158, column: 9)
!3555 = !DILocalVariable(name: "x", arg: 1, scope: !3556, file: !805, line: 47, type: !3474)
!3556 = distinct !DISubprogram(name: "bkm_scale", scope: !805, file: !805, line: 47, type: !3557, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!3473, !3474, !72}
!3559 = !{!3555, !3560, !3561}
!3560 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3556, file: !805, line: 47, type: !72)
!3561 = !DILocalVariable(name: "scaled", scope: !3556, file: !805, line: 49, type: !113)
!3562 = !DILocation(line: 0, scope: !3556, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3553)
!3564 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3563)
!3565 = distinct !DILexicalBlock(scope: !3556, file: !805, line: 50, column: 7)
!3566 = !DILocation(line: 0, scope: !3545, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 215, column: 22, scope: !3554)
!3568 = !DILocation(line: 0, scope: !3556, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3567)
!3570 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3569)
!3571 = !DILocation(line: 0, scope: !3545, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 202, column: 22, scope: !3554)
!3573 = !DILocation(line: 0, scope: !3556, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3572)
!3575 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3574)
!3576 = !DILocation(line: 0, scope: !3545, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 198, column: 22, scope: !3554)
!3578 = !DILocation(line: 0, scope: !3556, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3577)
!3580 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3579)
!3581 = !DILocation(line: 0, scope: !3545, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 194, column: 22, scope: !3554)
!3583 = !DILocation(line: 0, scope: !3556, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3582)
!3585 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3584)
!3586 = !DILocation(line: 0, scope: !3545, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 175, column: 22, scope: !3554)
!3588 = !DILocation(line: 0, scope: !3556, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3587)
!3590 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3589)
!3591 = !DILocation(line: 0, scope: !3556, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 160, column: 22, scope: !3554)
!3593 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3592)
!3594 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3592)
!3595 = !DILocation(line: 0, scope: !3556, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 167, column: 22, scope: !3554)
!3597 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3596)
!3598 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3596)
!3599 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3589)
!3600 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3587)
!3601 = !DILocation(line: 227, column: 11, scope: !3486)
!3602 = !DILocation(line: 0, scope: !3545, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 180, column: 22, scope: !3554)
!3604 = !DILocation(line: 0, scope: !3556, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3603)
!3606 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3605)
!3607 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3605)
!3608 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3603)
!3609 = !DILocation(line: 0, scope: !3545, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 185, column: 22, scope: !3554)
!3611 = !DILocation(line: 0, scope: !3556, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3610)
!3613 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3612)
!3614 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3612)
!3615 = !DILocation(line: 0, scope: !3545, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 190, column: 22, scope: !3554)
!3617 = !DILocation(line: 0, scope: !3556, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3616)
!3619 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3618)
!3620 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3618)
!3621 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3616)
!3622 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3584)
!3623 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3582)
!3624 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3579)
!3625 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3577)
!3626 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3574)
!3627 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3572)
!3628 = !DILocation(line: 0, scope: !3545, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 207, column: 22, scope: !3554)
!3630 = !DILocation(line: 0, scope: !3556, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 66, column: 12, scope: !3545, inlinedAt: !3629)
!3632 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3631)
!3633 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3631)
!3634 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3629)
!3635 = !DILocation(line: 0, scope: !3556, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 211, column: 22, scope: !3554)
!3637 = !DILocation(line: 50, column: 7, scope: !3565, inlinedAt: !3636)
!3638 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3636)
!3639 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3569)
!3640 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3567)
!3641 = !DILocation(line: 50, column: 7, scope: !3556, inlinedAt: !3563)
!3642 = !DILocation(line: 66, column: 9, scope: !3545, inlinedAt: !3553)
!3643 = !DILocation(line: 0, scope: !3554)
!3644 = !DILocation(line: 228, column: 10, scope: !3486)
!3645 = !DILocation(line: 229, column: 11, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3486, file: !805, line: 229, column: 11)
!3647 = !DILocation(line: 229, column: 11, scope: !3486)
!3648 = !DILocation(line: 223, column: 16, scope: !3554)
!3649 = !DILocation(line: 224, column: 22, scope: !3554)
!3650 = !DILocation(line: 100, column: 11, scope: !3502)
!3651 = !DILocation(line: 92, column: 16, scope: !3470)
!3652 = !DILocation(line: 233, column: 8, scope: !3470)
!3653 = !DILocation(line: 234, column: 3, scope: !3470)
!3654 = !DILocation(line: 235, column: 1, scope: !3470)
!3655 = !DISubprogram(name: "strtol", scope: !1036, file: !1036, line: 177, type: !3656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!113, !906, !3658, !72}
!3658 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3659 = distinct !DISubprogram(name: "close_stream", scope: !809, file: !809, line: 55, type: !3660, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !3696)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!72, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3664, file: !219, line: 51, baseType: !72, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3664, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3664, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3664, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3664, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3664, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3664, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3664, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3664, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3664, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3664, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3664, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3664, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3664, file: !219, line: 70, baseType: !3680, size: 64, offset: 832)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3664, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3664, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3664, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3664, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3664, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3664, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3664, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3664, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3664, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3664, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3664, file: !219, line: 93, baseType: !3680, size: 64, offset: 1344)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3664, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3664, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3664, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3664, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3696 = !{!3697, !3698, !3700, !3701}
!3697 = !DILocalVariable(name: "stream", arg: 1, scope: !3659, file: !809, line: 55, type: !3662)
!3698 = !DILocalVariable(name: "some_pending", scope: !3659, file: !809, line: 57, type: !3699)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3700 = !DILocalVariable(name: "prev_fail", scope: !3659, file: !809, line: 58, type: !3699)
!3701 = !DILocalVariable(name: "fclose_fail", scope: !3659, file: !809, line: 59, type: !3699)
!3702 = !DILocation(line: 0, scope: !3659)
!3703 = !DILocation(line: 57, column: 30, scope: !3659)
!3704 = !DILocalVariable(name: "__stream", arg: 1, scope: !3705, file: !1179, line: 135, type: !3662)
!3705 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1179, file: !1179, line: 135, type: !3660, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !3706)
!3706 = !{!3704}
!3707 = !DILocation(line: 0, scope: !3705, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 58, column: 27, scope: !3659)
!3709 = !DILocation(line: 137, column: 10, scope: !3705, inlinedAt: !3708)
!3710 = !DILocation(line: 58, column: 43, scope: !3659)
!3711 = !DILocation(line: 59, column: 29, scope: !3659)
!3712 = !DILocation(line: 59, column: 45, scope: !3659)
!3713 = !DILocation(line: 69, column: 17, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3659, file: !809, line: 69, column: 7)
!3715 = !DILocation(line: 57, column: 50, scope: !3659)
!3716 = !DILocation(line: 69, column: 33, scope: !3714)
!3717 = !DILocation(line: 69, column: 53, scope: !3714)
!3718 = !DILocation(line: 69, column: 59, scope: !3714)
!3719 = !DILocation(line: 69, column: 7, scope: !3659)
!3720 = !DILocation(line: 71, column: 11, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3714, file: !809, line: 70, column: 5)
!3722 = !DILocation(line: 72, column: 9, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3721, file: !809, line: 71, column: 11)
!3724 = !DILocation(line: 72, column: 15, scope: !3723)
!3725 = !DILocation(line: 77, column: 1, scope: !3659)
!3726 = !DISubprogram(name: "__fpending", scope: !3727, file: !3727, line: 75, type: !3728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3727 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!147, !3662}
!3730 = distinct !DISubprogram(name: "rpl_fclose", scope: !811, file: !811, line: 58, type: !3731, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3767)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!72, !3733}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3735)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3735, file: !219, line: 51, baseType: !72, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3735, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3735, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3735, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3735, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3735, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3735, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3735, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3735, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3735, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3735, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3735, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3735, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3735, file: !219, line: 70, baseType: !3751, size: 64, offset: 832)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3735, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3735, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3735, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3735, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3735, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3735, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3735, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3735, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3735, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3735, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3735, file: !219, line: 93, baseType: !3751, size: 64, offset: 1344)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3735, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3735, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3735, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3735, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3767 = !{!3768, !3769, !3770, !3771}
!3768 = !DILocalVariable(name: "fp", arg: 1, scope: !3730, file: !811, line: 58, type: !3733)
!3769 = !DILocalVariable(name: "saved_errno", scope: !3730, file: !811, line: 60, type: !72)
!3770 = !DILocalVariable(name: "fd", scope: !3730, file: !811, line: 63, type: !72)
!3771 = !DILocalVariable(name: "result", scope: !3730, file: !811, line: 74, type: !72)
!3772 = !DILocation(line: 0, scope: !3730)
!3773 = !DILocation(line: 63, column: 12, scope: !3730)
!3774 = !DILocation(line: 64, column: 10, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3730, file: !811, line: 64, column: 7)
!3776 = !DILocation(line: 64, column: 7, scope: !3730)
!3777 = !DILocation(line: 65, column: 12, scope: !3775)
!3778 = !DILocation(line: 65, column: 5, scope: !3775)
!3779 = !DILocation(line: 70, column: 9, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3730, file: !811, line: 70, column: 7)
!3781 = !DILocation(line: 70, column: 23, scope: !3780)
!3782 = !DILocation(line: 70, column: 33, scope: !3780)
!3783 = !DILocation(line: 70, column: 26, scope: !3780)
!3784 = !DILocation(line: 70, column: 59, scope: !3780)
!3785 = !DILocation(line: 71, column: 7, scope: !3780)
!3786 = !DILocation(line: 71, column: 10, scope: !3780)
!3787 = !DILocation(line: 70, column: 7, scope: !3730)
!3788 = !DILocation(line: 100, column: 12, scope: !3730)
!3789 = !DILocation(line: 105, column: 7, scope: !3730)
!3790 = !DILocation(line: 72, column: 19, scope: !3780)
!3791 = !DILocation(line: 105, column: 19, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3730, file: !811, line: 105, column: 7)
!3793 = !DILocation(line: 107, column: 13, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3792, file: !811, line: 106, column: 5)
!3795 = !DILocation(line: 109, column: 5, scope: !3794)
!3796 = !DILocation(line: 112, column: 1, scope: !3730)
!3797 = !DISubprogram(name: "fileno", scope: !435, file: !435, line: 809, type: !3731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3798 = !DISubprogram(name: "fclose", scope: !435, file: !435, line: 178, type: !3731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3799 = !DISubprogram(name: "__freading", scope: !3727, file: !3727, line: 51, type: !3731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3800 = !DISubprogram(name: "lseek", scope: !1224, file: !1224, line: 339, type: !3801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!241, !72, !241, !72}
!3803 = distinct !DISubprogram(name: "rpl_fflush", scope: !813, file: !813, line: 130, type: !3804, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3840)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!72, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3808)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3808, file: !219, line: 51, baseType: !72, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3808, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3808, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3808, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3808, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3808, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3808, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3808, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3808, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3808, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3808, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3808, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3808, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3808, file: !219, line: 70, baseType: !3824, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3808, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3808, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3808, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3808, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3808, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3808, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3808, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3808, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3808, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3808, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3808, file: !219, line: 93, baseType: !3824, size: 64, offset: 1344)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3808, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3808, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3808, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3808, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3840 = !{!3841}
!3841 = !DILocalVariable(name: "stream", arg: 1, scope: !3803, file: !813, line: 130, type: !3806)
!3842 = !DILocation(line: 0, scope: !3803)
!3843 = !DILocation(line: 151, column: 14, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3803, file: !813, line: 151, column: 7)
!3845 = !DILocation(line: 151, column: 22, scope: !3844)
!3846 = !DILocation(line: 151, column: 27, scope: !3844)
!3847 = !DILocation(line: 151, column: 7, scope: !3803)
!3848 = !DILocation(line: 152, column: 12, scope: !3844)
!3849 = !DILocation(line: 152, column: 5, scope: !3844)
!3850 = !DILocalVariable(name: "fp", arg: 1, scope: !3851, file: !813, line: 42, type: !3806)
!3851 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !813, file: !813, line: 42, type: !3852, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3806}
!3854 = !{!3850}
!3855 = !DILocation(line: 0, scope: !3851, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 157, column: 3, scope: !3803)
!3857 = !DILocation(line: 44, column: 12, scope: !3858, inlinedAt: !3856)
!3858 = distinct !DILexicalBlock(scope: !3851, file: !813, line: 44, column: 7)
!3859 = !DILocation(line: 44, column: 19, scope: !3858, inlinedAt: !3856)
!3860 = !DILocation(line: 44, column: 7, scope: !3851, inlinedAt: !3856)
!3861 = !DILocation(line: 46, column: 5, scope: !3858, inlinedAt: !3856)
!3862 = !DILocation(line: 159, column: 10, scope: !3803)
!3863 = !DILocation(line: 159, column: 3, scope: !3803)
!3864 = !DILocation(line: 236, column: 1, scope: !3803)
!3865 = !DISubprogram(name: "fflush", scope: !435, file: !435, line: 230, type: !3804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3866 = distinct !DISubprogram(name: "rpl_fseeko", scope: !815, file: !815, line: 28, type: !3867, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3904)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!72, !3869, !3903, !72}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3871, file: !219, line: 51, baseType: !72, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3871, file: !219, line: 54, baseType: !89, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3871, file: !219, line: 55, baseType: !89, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3871, file: !219, line: 56, baseType: !89, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3871, file: !219, line: 57, baseType: !89, size: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3871, file: !219, line: 58, baseType: !89, size: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3871, file: !219, line: 59, baseType: !89, size: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3871, file: !219, line: 60, baseType: !89, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3871, file: !219, line: 61, baseType: !89, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3871, file: !219, line: 64, baseType: !89, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3871, file: !219, line: 65, baseType: !89, size: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3871, file: !219, line: 66, baseType: !89, size: 64, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3871, file: !219, line: 68, baseType: !234, size: 64, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3871, file: !219, line: 70, baseType: !3887, size: 64, offset: 832)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3871, file: !219, line: 72, baseType: !72, size: 32, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3871, file: !219, line: 73, baseType: !72, size: 32, offset: 928)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3871, file: !219, line: 74, baseType: !241, size: 64, offset: 960)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3871, file: !219, line: 77, baseType: !146, size: 16, offset: 1024)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3871, file: !219, line: 78, baseType: !245, size: 8, offset: 1040)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3871, file: !219, line: 79, baseType: !41, size: 8, offset: 1048)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3871, file: !219, line: 81, baseType: !248, size: 64, offset: 1088)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3871, file: !219, line: 89, baseType: !251, size: 64, offset: 1152)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3871, file: !219, line: 91, baseType: !253, size: 64, offset: 1216)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3871, file: !219, line: 92, baseType: !256, size: 64, offset: 1280)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3871, file: !219, line: 93, baseType: !3887, size: 64, offset: 1344)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3871, file: !219, line: 94, baseType: !145, size: 64, offset: 1408)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3871, file: !219, line: 95, baseType: !147, size: 64, offset: 1472)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3871, file: !219, line: 96, baseType: !72, size: 32, offset: 1536)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3871, file: !219, line: 98, baseType: !174, size: 160, offset: 1568)
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !435, line: 63, baseType: !241)
!3904 = !{!3905, !3906, !3907, !3908}
!3905 = !DILocalVariable(name: "fp", arg: 1, scope: !3866, file: !815, line: 28, type: !3869)
!3906 = !DILocalVariable(name: "offset", arg: 2, scope: !3866, file: !815, line: 28, type: !3903)
!3907 = !DILocalVariable(name: "whence", arg: 3, scope: !3866, file: !815, line: 28, type: !72)
!3908 = !DILocalVariable(name: "pos", scope: !3909, file: !815, line: 123, type: !3903)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !815, line: 119, column: 5)
!3910 = distinct !DILexicalBlock(scope: !3866, file: !815, line: 55, column: 7)
!3911 = !DILocation(line: 0, scope: !3866)
!3912 = !DILocation(line: 55, column: 12, scope: !3910)
!3913 = !{!1187, !845, i64 16}
!3914 = !DILocation(line: 55, column: 33, scope: !3910)
!3915 = !{!1187, !845, i64 8}
!3916 = !DILocation(line: 55, column: 25, scope: !3910)
!3917 = !DILocation(line: 56, column: 7, scope: !3910)
!3918 = !DILocation(line: 56, column: 15, scope: !3910)
!3919 = !DILocation(line: 56, column: 37, scope: !3910)
!3920 = !{!1187, !845, i64 32}
!3921 = !DILocation(line: 56, column: 29, scope: !3910)
!3922 = !DILocation(line: 57, column: 7, scope: !3910)
!3923 = !DILocation(line: 57, column: 15, scope: !3910)
!3924 = !{!1187, !845, i64 72}
!3925 = !DILocation(line: 57, column: 29, scope: !3910)
!3926 = !DILocation(line: 55, column: 7, scope: !3866)
!3927 = !DILocation(line: 123, column: 26, scope: !3909)
!3928 = !DILocation(line: 123, column: 19, scope: !3909)
!3929 = !DILocation(line: 0, scope: !3909)
!3930 = !DILocation(line: 124, column: 15, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3909, file: !815, line: 124, column: 11)
!3932 = !DILocation(line: 124, column: 11, scope: !3909)
!3933 = !DILocation(line: 135, column: 19, scope: !3909)
!3934 = !DILocation(line: 136, column: 12, scope: !3909)
!3935 = !DILocation(line: 136, column: 20, scope: !3909)
!3936 = !{!1187, !1133, i64 144}
!3937 = !DILocation(line: 167, column: 7, scope: !3909)
!3938 = !DILocation(line: 169, column: 10, scope: !3866)
!3939 = !DILocation(line: 169, column: 3, scope: !3866)
!3940 = !DILocation(line: 170, column: 1, scope: !3866)
!3941 = !DISubprogram(name: "fseeko", scope: !435, file: !435, line: 736, type: !3942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!72, !3869, !241, !72}
!3944 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !738, file: !738, line: 100, type: !3945, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3948)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!147, !1574, !96, !147, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!3948 = !{!3949, !3950, !3951, !3952, !3953}
!3949 = !DILocalVariable(name: "pwc", arg: 1, scope: !3944, file: !738, line: 100, type: !1574)
!3950 = !DILocalVariable(name: "s", arg: 2, scope: !3944, file: !738, line: 100, type: !96)
!3951 = !DILocalVariable(name: "n", arg: 3, scope: !3944, file: !738, line: 100, type: !147)
!3952 = !DILocalVariable(name: "ps", arg: 4, scope: !3944, file: !738, line: 100, type: !3947)
!3953 = !DILocalVariable(name: "ret", scope: !3944, file: !738, line: 130, type: !147)
!3954 = !DILocation(line: 0, scope: !3944)
!3955 = !DILocation(line: 105, column: 9, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3944, file: !738, line: 105, column: 7)
!3957 = !DILocation(line: 105, column: 7, scope: !3944)
!3958 = !DILocation(line: 117, column: 10, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3944, file: !738, line: 117, column: 7)
!3960 = !DILocation(line: 117, column: 7, scope: !3944)
!3961 = !DILocation(line: 130, column: 16, scope: !3944)
!3962 = !DILocation(line: 135, column: 11, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3944, file: !738, line: 135, column: 7)
!3964 = !DILocation(line: 135, column: 25, scope: !3963)
!3965 = !DILocation(line: 135, column: 30, scope: !3963)
!3966 = !DILocation(line: 135, column: 7, scope: !3944)
!3967 = !DILocalVariable(name: "ps", arg: 1, scope: !3968, file: !1547, line: 1135, type: !3947)
!3968 = distinct !DISubprogram(name: "mbszero", scope: !1547, file: !1547, line: 1135, type: !3969, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !3947}
!3971 = !{!3967}
!3972 = !DILocation(line: 0, scope: !3968, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 137, column: 5, scope: !3963)
!3974 = !DILocalVariable(name: "__dest", arg: 1, scope: !3975, file: !1556, line: 57, type: !145)
!3975 = distinct !DISubprogram(name: "memset", scope: !1556, file: !1556, line: 57, type: !1557, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3976)
!3976 = !{!3974, !3977, !3978}
!3977 = !DILocalVariable(name: "__ch", arg: 2, scope: !3975, file: !1556, line: 57, type: !72)
!3978 = !DILocalVariable(name: "__len", arg: 3, scope: !3975, file: !1556, line: 57, type: !147)
!3979 = !DILocation(line: 0, scope: !3975, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 1137, column: 3, scope: !3968, inlinedAt: !3973)
!3981 = !DILocation(line: 59, column: 10, scope: !3975, inlinedAt: !3980)
!3982 = !DILocation(line: 137, column: 5, scope: !3963)
!3983 = !DILocation(line: 138, column: 11, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3944, file: !738, line: 138, column: 7)
!3985 = !DILocation(line: 138, column: 7, scope: !3944)
!3986 = !DILocation(line: 139, column: 5, scope: !3984)
!3987 = !DILocation(line: 143, column: 26, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3944, file: !738, line: 143, column: 7)
!3989 = !DILocation(line: 143, column: 41, scope: !3988)
!3990 = !DILocation(line: 143, column: 7, scope: !3944)
!3991 = !DILocation(line: 145, column: 15, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !738, line: 145, column: 11)
!3993 = distinct !DILexicalBlock(scope: !3988, file: !738, line: 144, column: 5)
!3994 = !DILocation(line: 145, column: 11, scope: !3993)
!3995 = !DILocation(line: 146, column: 32, scope: !3992)
!3996 = !DILocation(line: 146, column: 16, scope: !3992)
!3997 = !DILocation(line: 146, column: 14, scope: !3992)
!3998 = !DILocation(line: 146, column: 9, scope: !3992)
!3999 = !DILocation(line: 286, column: 1, scope: !3944)
!4000 = !DISubprogram(name: "mbsinit", scope: !4001, file: !4001, line: 293, type: !4002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!4001 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!72, !4004}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!4006 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !817, file: !817, line: 27, type: !3029, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4007)
!4007 = !{!4008, !4009, !4010, !4011}
!4008 = !DILocalVariable(name: "ptr", arg: 1, scope: !4006, file: !817, line: 27, type: !145)
!4009 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4006, file: !817, line: 27, type: !147)
!4010 = !DILocalVariable(name: "size", arg: 3, scope: !4006, file: !817, line: 27, type: !147)
!4011 = !DILocalVariable(name: "nbytes", scope: !4006, file: !817, line: 29, type: !147)
!4012 = !DILocation(line: 0, scope: !4006)
!4013 = !DILocation(line: 30, column: 7, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4006, file: !817, line: 30, column: 7)
!4015 = !DILocalVariable(name: "ptr", arg: 1, scope: !4016, file: !3121, line: 2057, type: !145)
!4016 = distinct !DISubprogram(name: "rpl_realloc", scope: !3121, file: !3121, line: 2057, type: !3113, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4017)
!4017 = !{!4015, !4018}
!4018 = !DILocalVariable(name: "size", arg: 2, scope: !4016, file: !3121, line: 2057, type: !147)
!4019 = !DILocation(line: 0, scope: !4016, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 37, column: 10, scope: !4006)
!4021 = !DILocation(line: 2059, column: 24, scope: !4016, inlinedAt: !4020)
!4022 = !DILocation(line: 2059, column: 10, scope: !4016, inlinedAt: !4020)
!4023 = !DILocation(line: 37, column: 3, scope: !4006)
!4024 = !DILocation(line: 32, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4014, file: !817, line: 31, column: 5)
!4026 = !DILocation(line: 32, column: 13, scope: !4025)
!4027 = !DILocation(line: 33, column: 7, scope: !4025)
!4028 = !DILocation(line: 38, column: 1, scope: !4006)
!4029 = distinct !DISubprogram(name: "hard_locale", scope: !756, file: !756, line: 28, type: !1091, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4030)
!4030 = !{!4031, !4032}
!4031 = !DILocalVariable(name: "category", arg: 1, scope: !4029, file: !756, line: 28, type: !72)
!4032 = !DILocalVariable(name: "locale", scope: !4029, file: !756, line: 30, type: !4033)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4034)
!4034 = !{!4035}
!4035 = !DISubrange(count: 257)
!4036 = !DILocation(line: 0, scope: !4029)
!4037 = !DILocation(line: 30, column: 3, scope: !4029)
!4038 = !DILocation(line: 30, column: 8, scope: !4029)
!4039 = !DILocation(line: 32, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4029, file: !756, line: 32, column: 7)
!4041 = !DILocation(line: 32, column: 7, scope: !4029)
!4042 = !DILocalVariable(name: "__s1", arg: 1, scope: !4043, file: !928, line: 1359, type: !96)
!4043 = distinct !DISubprogram(name: "streq", scope: !928, file: !928, line: 1359, type: !929, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4044)
!4044 = !{!4042, !4045}
!4045 = !DILocalVariable(name: "__s2", arg: 2, scope: !4043, file: !928, line: 1359, type: !96)
!4046 = !DILocation(line: 0, scope: !4043, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 35, column: 9, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4029, file: !756, line: 35, column: 7)
!4049 = !DILocation(line: 1361, column: 11, scope: !4043, inlinedAt: !4047)
!4050 = !DILocation(line: 1361, column: 10, scope: !4043, inlinedAt: !4047)
!4051 = !DILocation(line: 35, column: 29, scope: !4048)
!4052 = !DILocation(line: 0, scope: !4043, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 35, column: 32, scope: !4048)
!4054 = !DILocation(line: 1361, column: 11, scope: !4043, inlinedAt: !4053)
!4055 = !DILocation(line: 1361, column: 10, scope: !4043, inlinedAt: !4053)
!4056 = !DILocation(line: 35, column: 7, scope: !4029)
!4057 = !DILocation(line: 46, column: 3, scope: !4029)
!4058 = !DILocation(line: 47, column: 1, scope: !4029)
!4059 = distinct !DISubprogram(name: "setlocale_null_r", scope: !822, file: !822, line: 154, type: !4060, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!72, !72, !89, !147}
!4062 = !{!4063, !4064, !4065}
!4063 = !DILocalVariable(name: "category", arg: 1, scope: !4059, file: !822, line: 154, type: !72)
!4064 = !DILocalVariable(name: "buf", arg: 2, scope: !4059, file: !822, line: 154, type: !89)
!4065 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4059, file: !822, line: 154, type: !147)
!4066 = !DILocation(line: 0, scope: !4059)
!4067 = !DILocation(line: 159, column: 10, scope: !4059)
!4068 = !DILocation(line: 159, column: 3, scope: !4059)
!4069 = distinct !DISubprogram(name: "setlocale_null", scope: !822, file: !822, line: 186, type: !4070, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!96, !72}
!4072 = !{!4073}
!4073 = !DILocalVariable(name: "category", arg: 1, scope: !4069, file: !822, line: 186, type: !72)
!4074 = !DILocation(line: 0, scope: !4069)
!4075 = !DILocation(line: 189, column: 10, scope: !4069)
!4076 = !DILocation(line: 189, column: 3, scope: !4069)
!4077 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !824, file: !824, line: 35, type: !4070, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4078)
!4078 = !{!4079, !4080}
!4079 = !DILocalVariable(name: "category", arg: 1, scope: !4077, file: !824, line: 35, type: !72)
!4080 = !DILocalVariable(name: "result", scope: !4077, file: !824, line: 37, type: !96)
!4081 = !DILocation(line: 0, scope: !4077)
!4082 = !DILocation(line: 37, column: 24, scope: !4077)
!4083 = !DILocation(line: 62, column: 3, scope: !4077)
!4084 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !824, file: !824, line: 66, type: !4060, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4085)
!4085 = !{!4086, !4087, !4088, !4089, !4090}
!4086 = !DILocalVariable(name: "category", arg: 1, scope: !4084, file: !824, line: 66, type: !72)
!4087 = !DILocalVariable(name: "buf", arg: 2, scope: !4084, file: !824, line: 66, type: !89)
!4088 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4084, file: !824, line: 66, type: !147)
!4089 = !DILocalVariable(name: "result", scope: !4084, file: !824, line: 111, type: !96)
!4090 = !DILocalVariable(name: "length", scope: !4091, file: !824, line: 125, type: !147)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !824, line: 124, column: 5)
!4092 = distinct !DILexicalBlock(scope: !4084, file: !824, line: 113, column: 7)
!4093 = !DILocation(line: 0, scope: !4084)
!4094 = !DILocation(line: 0, scope: !4077, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 111, column: 24, scope: !4084)
!4096 = !DILocation(line: 37, column: 24, scope: !4077, inlinedAt: !4095)
!4097 = !DILocation(line: 113, column: 14, scope: !4092)
!4098 = !DILocation(line: 113, column: 7, scope: !4084)
!4099 = !DILocation(line: 116, column: 19, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !824, line: 116, column: 11)
!4101 = distinct !DILexicalBlock(scope: !4092, file: !824, line: 114, column: 5)
!4102 = !DILocation(line: 116, column: 11, scope: !4101)
!4103 = !DILocation(line: 120, column: 16, scope: !4100)
!4104 = !DILocation(line: 120, column: 9, scope: !4100)
!4105 = !DILocation(line: 125, column: 23, scope: !4091)
!4106 = !DILocation(line: 0, scope: !4091)
!4107 = !DILocation(line: 126, column: 18, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4091, file: !824, line: 126, column: 11)
!4109 = !DILocation(line: 126, column: 11, scope: !4091)
!4110 = !DILocation(line: 128, column: 39, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4108, file: !824, line: 127, column: 9)
!4112 = !DILocalVariable(name: "__dest", arg: 1, scope: !4113, file: !1556, line: 26, type: !3389)
!4113 = distinct !DISubprogram(name: "memcpy", scope: !1556, file: !1556, line: 26, type: !3387, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4114)
!4114 = !{!4112, !4115, !4116}
!4115 = !DILocalVariable(name: "__src", arg: 2, scope: !4113, file: !1556, line: 26, type: !1059)
!4116 = !DILocalVariable(name: "__len", arg: 3, scope: !4113, file: !1556, line: 26, type: !147)
!4117 = !DILocation(line: 0, scope: !4113, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 128, column: 11, scope: !4111)
!4119 = !DILocation(line: 29, column: 10, scope: !4113, inlinedAt: !4118)
!4120 = !DILocation(line: 129, column: 11, scope: !4111)
!4121 = !DILocation(line: 133, column: 23, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4123, file: !824, line: 133, column: 15)
!4123 = distinct !DILexicalBlock(scope: !4108, file: !824, line: 132, column: 9)
!4124 = !DILocation(line: 133, column: 15, scope: !4123)
!4125 = !DILocation(line: 138, column: 44, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4122, file: !824, line: 134, column: 13)
!4127 = !DILocation(line: 0, scope: !4113, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 138, column: 15, scope: !4126)
!4129 = !DILocation(line: 29, column: 10, scope: !4113, inlinedAt: !4128)
!4130 = !DILocation(line: 139, column: 15, scope: !4126)
!4131 = !DILocation(line: 139, column: 32, scope: !4126)
!4132 = !DILocation(line: 140, column: 13, scope: !4126)
!4133 = !DILocation(line: 0, scope: !4092)
!4134 = !DILocation(line: 145, column: 1, scope: !4084)
