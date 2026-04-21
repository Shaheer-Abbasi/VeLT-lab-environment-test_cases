; ModuleID = 'src/nproc.bc'
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
%struct.mntent = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.cpu_set_t = type { [16 x i64] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [285 x i8] c"Print the number of processing units available to the current process,\0Awhich may be less than the number of online processors.\0AIf the 'OMP_NUM_THREADS' or 'OMP_THREAD_LIMIT' environment variables are set,\0Athen they will determine the minimum and maximum returned value respectively.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"nproc\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [135 x i8] c"      --all\0A         print the number of installed processors,\0A         disregarding any OpenMP environment variables, or CPU quotas.\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [120 x i8] c"      --ignore=N\0A         if possible, exclude N processing units.\0A         The result is guaranteed to be at least 1.\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.51, i32 0, ptr null, i32 256 }, %struct.option { ptr @.str.52, i32 1, ptr null, i32 257 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !57
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !111
@.str.12 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1, !dbg !116
@optarg = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1, !dbg !121
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !126
@.str.15 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !131
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !136
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !219
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !221
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !223
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !228
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !268
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !270
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !272
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !274
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !279
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !281
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !286
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !288
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !290
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !292
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !306
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !308
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !313
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !318
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !323
@.str.51 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !328
@.str.52 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1, !dbg !330
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !332
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !334
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !346
@Version = dso_local local_unnamed_addr global ptr @.str.20, align 8, !dbg !349
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !353
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !366
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !358
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !360
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !362
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !364
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !368
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !374
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !410
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !400
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !402
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !404
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !406
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !408
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !412
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !414
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !419
@.str.43 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1, !dbg !424
@.str.1.44 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1, !dbg !427
@.str.2.45 = private unnamed_addr constant [18 x i8] c"/proc/self/cgroup\00", align 1, !dbg !429
@.str.3.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !431
@.str.4.47 = private unnamed_addr constant [5 x i8] c"0::/\00", align 1, !dbg !433
@.str.5.52 = private unnamed_addr constant [13 x i8] c"%s%s/cpu.max\00", align 1, !dbg !435
@.str.6.53 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !440
@.str.7.54 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1, !dbg !442
@.str.8.48 = private unnamed_addr constant [34 x i8] c"/sys/fs/cgroup/cgroup.controllers\00", align 1, !dbg !444
@.str.9.49 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1, !dbg !449
@.str.10.50 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1, !dbg !451
@.str.11.51 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1, !dbg !453
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !455
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !461
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !463
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !465
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !496
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !499
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !501
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !503
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !505
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !507
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !509
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !511
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !513
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !515
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.63, ptr @.str.1.64, ptr @.str.2.65, ptr @.str.3.66, ptr @.str.4.67, ptr @.str.5.68, ptr @.str.6.69, ptr @.str.7.70, ptr @.str.8.71, ptr @.str.9.72, ptr null], align 8, !dbg !517
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !542
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !556
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !594
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !601
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !558
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !603
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !546
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !563
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !565
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !567
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !569
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !571
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !609
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !612
@.str.2.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !614
@.str.3.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !616
@.str.4.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !618
@.str.5.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !620
@.str.6.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !625
@.str.7.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !627
@.str.8.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !629
@.str.9.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !631
@.str.10.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !636
@.str.11.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !641
@.str.12.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !646
@.str.13.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !648
@.str.14.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !653
@.str.15.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !658
@.str.16.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !663
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.102 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !668
@.str.18.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !670
@.str.19.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !672
@.str.20.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !674
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !676
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !678
@.str.23.106 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !680
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !685
@exit_failure = dso_local global i32 1, align 4, !dbg !693
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !699
@.str.1.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !702
@.str.2.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !704
@.str.122 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !706
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !709
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !712
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !727
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !730

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1055 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1059, metadata !DIExpression()), !dbg !1060
  %2 = icmp eq i32 %0, 0, !dbg !1061
  br i1 %2, label %8, label %3, !dbg !1063

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1064, !tbaa !1066
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !1064
  %6 = load ptr, ptr @program_name, align 8, !dbg !1064, !tbaa !1066
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !1064
  br label %33, !dbg !1064

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !1070
  %10 = load ptr, ptr @program_name, align 8, !dbg !1070, !tbaa !1066
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !1070
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1072
  %13 = load ptr, ptr @stdout, align 8, !dbg !1072, !tbaa !1066
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1072
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1073
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1073
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1074
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1074
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1075
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1075
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1076
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1076
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1077, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata !1096, metadata !1090, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr poison, metadata !1089, metadata !DIExpression()), !dbg !1094
  tail call void @emit_bug_reporting_address() #40, !dbg !1097
  %19 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %19, metadata !1092, metadata !DIExpression()), !dbg !1094
  %20 = icmp eq ptr %19, null, !dbg !1099
  br i1 %20, label %28, label %21, !dbg !1101

21:                                               ; preds = %8
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #41, !dbg !1102
  %23 = icmp eq i32 %22, 0, !dbg !1102
  br i1 %23, label %28, label %24, !dbg !1103

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #40, !dbg !1104
  %26 = load ptr, ptr @stdout, align 8, !dbg !1104, !tbaa !1066
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !1104
  br label %28, !dbg !1106

28:                                               ; preds = %8, %21, %24
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1089, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1093, metadata !DIExpression()), !dbg !1094
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #40, !dbg !1107
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #40, !dbg !1107
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #40, !dbg !1108
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #40, !dbg !1108
  br label %33

33:                                               ; preds = %28, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1109
  unreachable, !dbg !1109
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1110 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1114 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1120 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1123 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !138 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !142, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !1126
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1127, !tbaa !1128
  %3 = icmp eq i32 %2, -1, !dbg !1130
  br i1 %3, label %4, label %16, !dbg !1131

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #40, !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !144, metadata !DIExpression()), !dbg !1133
  %6 = icmp eq ptr %5, null, !dbg !1134
  br i1 %6, label %14, label %7, !dbg !1135

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1136, !tbaa !1137
  %9 = icmp eq i8 %8, 0, !dbg !1136
  br i1 %9, label %14, label %10, !dbg !1138

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1139, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !1145, metadata !DIExpression()), !dbg !1146
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #41, !dbg !1148
  %12 = icmp eq i32 %11, 0, !dbg !1149
  %13 = zext i1 %12 to i32, !dbg !1138
  br label %14, !dbg !1138

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1150, !tbaa !1128
  br label %16, !dbg !1151

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1152
  %18 = icmp eq i32 %17, 0, !dbg !1152
  br i1 %18, label %22, label %19, !dbg !1154

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1155, !tbaa !1066
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1155
  br label %121, !dbg !1157

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !147, metadata !DIExpression()), !dbg !1126
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #41, !dbg !1158
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1159
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !149, metadata !DIExpression()), !dbg !1126
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1160
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !150, metadata !DIExpression()), !dbg !1126
  %26 = icmp eq ptr %25, null, !dbg !1161
  br i1 %26, label %53, label %27, !dbg !1162

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1163
  br i1 %28, label %53, label %29, !dbg !1164

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !151, metadata !DIExpression()), !dbg !1165
  tail call void @llvm.dbg.value(metadata i64 0, metadata !155, metadata !DIExpression()), !dbg !1165
  %30 = icmp ult ptr %24, %25, !dbg !1166
  br i1 %30, label %31, label %53, !dbg !1167

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1126
  %33 = load ptr, ptr %32, align 8, !tbaa !1066
  br label %34, !dbg !1167

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !151, metadata !DIExpression()), !dbg !1165
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !155, metadata !DIExpression()), !dbg !1165
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1168
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !151, metadata !DIExpression()), !dbg !1165
  %38 = load i8, ptr %35, align 1, !dbg !1168, !tbaa !1137
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1168
  %41 = load i16, ptr %40, align 2, !dbg !1168, !tbaa !1169
  %42 = freeze i16 %41, !dbg !1171
  %43 = lshr i16 %42, 13, !dbg !1171
  %44 = and i16 %43, 1, !dbg !1171
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !155, metadata !DIExpression()), !dbg !1165
  %47 = icmp ult ptr %37, %25, !dbg !1166
  %48 = icmp ult i64 %46, 2, !dbg !1173
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1173
  br i1 %49, label %34, label %50, !dbg !1167, !llvm.loop !1174

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1172
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1176
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1178
  br label %53, !dbg !1178

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1126
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !147, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !150, metadata !DIExpression()), !dbg !1126
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.19) #41, !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !156, metadata !DIExpression()), !dbg !1126
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1180
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !157, metadata !DIExpression()), !dbg !1126
  br label %58, !dbg !1181

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1126
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !147, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !157, metadata !DIExpression()), !dbg !1126
  %61 = load i8, ptr %59, align 1, !dbg !1182, !tbaa !1137
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1183

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1184
  %64 = load i8, ptr %63, align 1, !dbg !1187, !tbaa !1137
  %65 = icmp ne i8 %64, 45, !dbg !1188
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1189
  br label %67, !dbg !1189

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !147, metadata !DIExpression()), !dbg !1126
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !1190
  %70 = load ptr, ptr %69, align 8, !dbg !1190, !tbaa !1066
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1190
  %73 = load i16, ptr %72, align 2, !dbg !1190, !tbaa !1169
  %74 = and i16 %73, 8192, !dbg !1190
  %75 = icmp eq i16 %74, 0, !dbg !1190
  br i1 %75, label %89, label %76, !dbg !1192

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1193
  br i1 %77, label %91, label %78, !dbg !1196

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1197
  %80 = load i8, ptr %79, align 1, !dbg !1197, !tbaa !1137
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1197
  %83 = load i16, ptr %82, align 2, !dbg !1197, !tbaa !1169
  %84 = and i16 %83, 8192, !dbg !1197
  %85 = icmp eq i16 %84, 0, !dbg !1197
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1198
  br i1 %88, label %89, label %91, !dbg !1198

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1199
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !157, metadata !DIExpression()), !dbg !1126
  br label %58, !dbg !1181, !llvm.loop !1200

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1126
  %92 = ptrtoint ptr %24 to i64, !dbg !1202
  %93 = load ptr, ptr @stdout, align 8, !dbg !1202, !tbaa !1066
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1202
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1139, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata !1096, metadata !1145, metadata !DIExpression()), !dbg !1221
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !214, metadata !DIExpression()), !dbg !1126
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #41, !dbg !1223
  %96 = icmp eq i32 %95, 0, !dbg !1223
  br i1 %96, label %100, label %97, !dbg !1225

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #41, !dbg !1226
  %99 = icmp eq i32 %98, 0, !dbg !1226
  br i1 %99, label %100, label %103, !dbg !1227

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1228
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #40, !dbg !1228
  br label %106, !dbg !1230

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1231
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #40, !dbg !1231
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1233, !tbaa !1066
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %107), !dbg !1233
  %109 = load ptr, ptr @stdout, align 8, !dbg !1234, !tbaa !1066
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %109), !dbg !1234
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1235
  %112 = sub i64 %111, %92, !dbg !1235
  %113 = load ptr, ptr @stdout, align 8, !dbg !1235, !tbaa !1066
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1235
  %115 = load ptr, ptr @stdout, align 8, !dbg !1236, !tbaa !1066
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %115), !dbg !1236
  %117 = load ptr, ptr @stdout, align 8, !dbg !1237, !tbaa !1066
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %117), !dbg !1237
  %119 = load ptr, ptr @stdout, align 8, !dbg !1238, !tbaa !1066
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1238
  br label %121, !dbg !1239

121:                                              ; preds = %106, %19
  ret void, !dbg !1239
}

; Function Attrs: nounwind
declare !dbg !1240 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1244 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1248 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1250 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1253 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1256 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1259 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1262 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1268 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1269 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1275 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1280, metadata !DIExpression()), !dbg !1287
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1281, metadata !DIExpression()), !dbg !1287
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1282, metadata !DIExpression()), !dbg !1287
  %3 = load ptr, ptr %1, align 8, !dbg !1288, !tbaa !1066
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1289
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #40, !dbg !1290
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #40, !dbg !1291
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #40, !dbg !1292
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1293
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1283, metadata !DIExpression()), !dbg !1287
  br label %8, !dbg !1294

8:                                                ; preds = %19, %2
  %9 = phi i64 [ %23, %19 ], [ 0, %2 ]
  %10 = phi i32 [ %20, %19 ], [ 2, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1283, metadata !DIExpression()), !dbg !1287
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1282, metadata !DIExpression()), !dbg !1287
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1295
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1284, metadata !DIExpression()), !dbg !1296
  switch i32 %11, label %.loopexit5 [
    i32 -1, label %.loopexit6
    i32 -2, label %.loopexit7
    i32 -3, label %.loopexit8
    i32 256, label %.preheader
    i32 257, label %19
  ], !dbg !1297

.preheader:                                       ; preds = %8
  br label %12, !dbg !1297

12:                                               ; preds = %.preheader, %12
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1283, metadata !DIExpression()), !dbg !1287
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1282, metadata !DIExpression()), !dbg !1287
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1295
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1284, metadata !DIExpression()), !dbg !1296
  switch i32 %13, label %.loopexit [
    i32 -1, label %.loopexit1
    i32 -2, label %.loopexit2
    i32 -3, label %.loopexit3
    i32 256, label %12
    i32 257, label %.loopexit4
  ], !dbg !1297, !llvm.loop !1298

.loopexit2:                                       ; preds = %12
  br label %14, !dbg !1300

.loopexit7:                                       ; preds = %8
  br label %14, !dbg !1300

14:                                               ; preds = %.loopexit7, %.loopexit2
  tail call void @usage(i32 noundef 0) #44, !dbg !1300
  unreachable, !dbg !1300

.loopexit3:                                       ; preds = %12
  br label %15, !dbg !1302

.loopexit8:                                       ; preds = %8
  br label %15, !dbg !1302

15:                                               ; preds = %.loopexit8, %.loopexit3
  %16 = load ptr, ptr @stdout, align 8, !dbg !1302, !tbaa !1066
  %17 = load ptr, ptr @Version, align 8, !dbg !1302, !tbaa !1066
  %18 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #40, !dbg !1302
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %17, ptr noundef %18, ptr noundef null) #40, !dbg !1302
  tail call void @exit(i32 noundef 0) #42, !dbg !1302
  unreachable, !dbg !1302

.loopexit4:                                       ; preds = %12
  br label %19, !dbg !1303

19:                                               ; preds = %.loopexit4, %8
  %20 = phi i32 [ %10, %8 ], [ 0, %.loopexit4 ], !dbg !1304
  %21 = load ptr, ptr @optarg, align 8, !dbg !1303, !tbaa !1066
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1305
  %23 = tail call i64 @xnumtoumax(ptr noundef %21, i32 noundef 10, i64 noundef 0, i64 noundef -1, ptr noundef nonnull @.str.8, ptr noundef %22, i32 noundef 0, i32 noundef 2) #40, !dbg !1306
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1282, metadata !DIExpression()), !dbg !1287
  br label %8, !dbg !1307

.loopexit:                                        ; preds = %12
  br label %24, !dbg !1308

.loopexit5:                                       ; preds = %8
  br label %24, !dbg !1308

24:                                               ; preds = %.loopexit5, %.loopexit
  tail call void @usage(i32 noundef 1) #44, !dbg !1308
  unreachable, !dbg !1308

.loopexit1:                                       ; preds = %12
  %.lcssa21 = phi i64 [ %9, %12 ]
  br label %25, !dbg !1309

.loopexit6:                                       ; preds = %8
  %.lcssa17 = phi i64 [ %9, %8 ]
  %.lcssa9 = phi i32 [ %10, %8 ]
  br label %25, !dbg !1309

25:                                               ; preds = %.loopexit6, %.loopexit1
  %26 = phi i64 [ %.lcssa21, %.loopexit1 ], [ %.lcssa17, %.loopexit6 ]
  %27 = phi i32 [ 0, %.loopexit1 ], [ %.lcssa9, %.loopexit6 ], !dbg !1304
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1283, metadata !DIExpression()), !dbg !1287
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !1282, metadata !DIExpression()), !dbg !1287
  %28 = load i32, ptr @optind, align 4, !dbg !1309, !tbaa !1128
  %29 = icmp eq i32 %28, %0, !dbg !1311
  br i1 %29, label %37, label %30, !dbg !1312

30:                                               ; preds = %25
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1313
  %32 = load i32, ptr @optind, align 4, !dbg !1313, !tbaa !1128
  %33 = sext i32 %32 to i64, !dbg !1313
  %34 = getelementptr inbounds ptr, ptr %1, i64 %33, !dbg !1313
  %35 = load ptr, ptr %34, align 8, !dbg !1313, !tbaa !1066
  %36 = tail call ptr @quote(ptr noundef %35) #40, !dbg !1313
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %31, ptr noundef %36) #40, !dbg !1313
  tail call void @usage(i32 noundef 1) #44, !dbg !1315
  unreachable, !dbg !1315

37:                                               ; preds = %25
  %38 = tail call i64 @num_processors(i32 noundef %27) #40, !dbg !1316
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !1286, metadata !DIExpression()), !dbg !1287
  %39 = icmp ult i64 %26, %38, !dbg !1317
  %40 = sub i64 %38, %26, !dbg !1319
  %41 = select i1 %39, i64 %40, i64 1, !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !1286, metadata !DIExpression()), !dbg !1287
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.15, i64 noundef %41) #40, !dbg !1320
  ret i32 0, !dbg !1321
}

; Function Attrs: nounwind
declare !dbg !1322 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1325 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1326 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1329 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1335 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1337, metadata !DIExpression()), !dbg !1338
  store ptr %0, ptr @file_name, align 8, !dbg !1339, !tbaa !1066
  ret void, !dbg !1340
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1341 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1345, metadata !DIExpression()), !dbg !1346
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1347, !tbaa !1348
  ret void, !dbg !1350
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1351 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1356, !tbaa !1066
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1357
  %3 = icmp eq i32 %2, 0, !dbg !1358
  br i1 %3, label %22, label %4, !dbg !1359

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1360, !tbaa !1348, !range !1361, !noundef !1096
  %6 = icmp eq i8 %5, 0, !dbg !1360
  br i1 %6, label %11, label %7, !dbg !1362

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1363
  %9 = load i32, ptr %8, align 4, !dbg !1363, !tbaa !1128
  %10 = icmp eq i32 %9, 32, !dbg !1364
  br i1 %10, label %22, label %11, !dbg !1365

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #40, !dbg !1366
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1353, metadata !DIExpression()), !dbg !1367
  %13 = load ptr, ptr @file_name, align 8, !dbg !1368, !tbaa !1066
  %14 = icmp eq ptr %13, null, !dbg !1368
  %15 = tail call ptr @__errno_location() #43, !dbg !1370
  %16 = load i32, ptr %15, align 4, !dbg !1370, !tbaa !1128
  br i1 %14, label %19, label %17, !dbg !1371

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1372
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #40, !dbg !1372
  br label %20, !dbg !1372

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #40, !dbg !1373
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1374, !tbaa !1128
  tail call void @_exit(i32 noundef %21) #42, !dbg !1375
  unreachable, !dbg !1375

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1376, !tbaa !1066
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1378
  %25 = icmp eq i32 %24, 0, !dbg !1379
  br i1 %25, label %28, label %26, !dbg !1380

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1381, !tbaa !1128
  tail call void @_exit(i32 noundef %27) #42, !dbg !1382
  unreachable, !dbg !1382

28:                                               ; preds = %22
  ret void, !dbg !1383
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1384 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1388 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1390 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1394, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1395, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1396, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1397, metadata !DIExpression(DW_OP_deref)), !dbg !1398
  tail call fastcc void @flush_stdout(), !dbg !1399
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1400, !tbaa !1066
  %7 = icmp eq ptr %6, null, !dbg !1400
  br i1 %7, label %9, label %8, !dbg !1402

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !1403
  br label %13, !dbg !1403

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1404, !tbaa !1066
  %11 = tail call ptr @getprogname() #41, !dbg !1404
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %11) #40, !dbg !1404
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1406, !tbaa.struct !1407
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1406
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1406
  ret void, !dbg !1408
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1409 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 1, metadata !1413, metadata !DIExpression()), !dbg !1418
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1421
  %2 = icmp slt i32 %1, 0, !dbg !1422
  br i1 %2, label %6, label %3, !dbg !1423

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1424, !tbaa !1066
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1424
  br label %6, !dbg !1424

6:                                                ; preds = %3, %0
  ret void, !dbg !1425
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1426 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1432
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1428, metadata !DIExpression()), !dbg !1433
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1429, metadata !DIExpression()), !dbg !1433
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1430, metadata !DIExpression()), !dbg !1433
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1431, metadata !DIExpression(DW_OP_deref)), !dbg !1433
  %7 = load ptr, ptr @stderr, align 8, !dbg !1434, !tbaa !1066
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1435, !noalias !1479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1483
  call void @llvm.dbg.value(metadata ptr %7, metadata !1475, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata ptr %2, metadata !1476, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata ptr poison, metadata !1477, metadata !DIExpression(DW_OP_deref)), !dbg !1484
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1435, !noalias !1479
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1485, !tbaa !1128
  %10 = add i32 %9, 1, !dbg !1485
  store i32 %10, ptr @error_message_count, align 4, !dbg !1485, !tbaa !1128
  %11 = icmp eq i32 %1, 0, !dbg !1486
  br i1 %11, label %21, label %12, !dbg !1488

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1489, metadata !DIExpression(), metadata !1432, metadata ptr %5, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %1, metadata !1492, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1499
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %13, metadata !1493, metadata !DIExpression()), !dbg !1497
  %14 = icmp eq ptr %13, null, !dbg !1501
  br i1 %14, label %15, label %17, !dbg !1503

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #40, !dbg !1504
  call void @llvm.dbg.value(metadata ptr %16, metadata !1493, metadata !DIExpression()), !dbg !1497
  br label %17, !dbg !1505

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1497
  call void @llvm.dbg.value(metadata ptr %18, metadata !1493, metadata !DIExpression()), !dbg !1497
  %19 = load ptr, ptr @stderr, align 8, !dbg !1506, !tbaa !1066
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %18) #40, !dbg !1506
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1507
  br label %21, !dbg !1508

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1509, !tbaa !1066
  call void @llvm.dbg.value(metadata i32 10, metadata !1510, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata ptr %22, metadata !1516, metadata !DIExpression()), !dbg !1517
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1519
  %24 = load ptr, ptr %23, align 8, !dbg !1519, !tbaa !1520
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1519
  %26 = load ptr, ptr %25, align 8, !dbg !1519, !tbaa !1523
  %27 = icmp ult ptr %24, %26, !dbg !1519
  br i1 %27, label %30, label %28, !dbg !1519, !prof !1524

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !1519
  br label %32, !dbg !1519

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1519
  store ptr %31, ptr %23, align 8, !dbg !1519, !tbaa !1520
  store i8 10, ptr %24, align 1, !dbg !1519, !tbaa !1137
  br label %32, !dbg !1519

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1525, !tbaa !1066
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !1525
  %35 = icmp eq i32 %0, 0, !dbg !1526
  br i1 %35, label %37, label %36, !dbg !1528

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !1529
  unreachable, !dbg !1529

37:                                               ; preds = %32
  ret void, !dbg !1530
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1531 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1534 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1537 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1540 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1543 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1547 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1555
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1554, metadata !DIExpression(), metadata !1555, metadata ptr %4, metadata !DIExpression()), !dbg !1556
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1551, metadata !DIExpression()), !dbg !1556
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1552, metadata !DIExpression()), !dbg !1556
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1553, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !1557
  call void @llvm.va_start(ptr nonnull %4), !dbg !1558
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1559, !tbaa.struct !1407
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1559
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1559
  call void @llvm.va_end(ptr nonnull %4), !dbg !1560
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !1561
  ret void, !dbg !1561
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !378 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !394, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !395, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !396, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !397, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !398, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !399, metadata !DIExpression(DW_OP_deref)), !dbg !1562
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1563, !tbaa !1128
  %9 = icmp eq i32 %8, 0, !dbg !1563
  br i1 %9, label %24, label %10, !dbg !1565

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1566, !tbaa !1128
  %12 = icmp eq i32 %11, %3, !dbg !1569
  br i1 %12, label %13, label %23, !dbg !1570

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1571, !tbaa !1066
  %15 = icmp eq ptr %14, %2, !dbg !1572
  br i1 %15, label %37, label %16, !dbg !1573

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1574
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1575
  br i1 %19, label %20, label %23, !dbg !1575

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1576
  %22 = icmp eq i32 %21, 0, !dbg !1577
  br i1 %22, label %37, label %23, !dbg !1578

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1579, !tbaa !1066
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1580, !tbaa !1128
  br label %24, !dbg !1581

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1582
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1583, !tbaa !1066
  %26 = icmp eq ptr %25, null, !dbg !1583
  br i1 %26, label %28, label %27, !dbg !1585

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !1586
  br label %32, !dbg !1586

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1587, !tbaa !1066
  %30 = tail call ptr @getprogname() #41, !dbg !1587
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %30) #40, !dbg !1587
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1589, !tbaa !1066
  %34 = icmp eq ptr %2, null, !dbg !1589
  %35 = select i1 %34, ptr @.str.3.34, ptr @.str.2.35, !dbg !1589
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !1589
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1590, !tbaa.struct !1407
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1590
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1590
  br label %37, !dbg !1591

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1591
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1592 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1601, metadata !DIExpression(), metadata !1602, metadata ptr %6, metadata !DIExpression()), !dbg !1603
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1596, metadata !DIExpression()), !dbg !1603
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1597, metadata !DIExpression()), !dbg !1603
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1598, metadata !DIExpression()), !dbg !1603
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1599, metadata !DIExpression()), !dbg !1603
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1600, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1604
  call void @llvm.va_start(ptr nonnull %6), !dbg !1605
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1606, !tbaa.struct !1407
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1606
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1606
  call void @llvm.va_end(ptr nonnull %6), !dbg !1607
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1608
  ret void, !dbg !1608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1609 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1612, !tbaa !1066
  ret ptr %1, !dbg !1613
}

; Function Attrs: nounwind uwtable
define dso_local i64 @num_processors(i32 noundef %0) local_unnamed_addr #10 !dbg !1614 {
  %2 = alloca ptr, align 8, !DIAssignID !1630
  %3 = alloca i64, align 8, !DIAssignID !1631
  %4 = alloca ptr, align 8, !DIAssignID !1632
  %5 = alloca i64, align 8, !DIAssignID !1633
  %6 = alloca [4096 x i8], align 1, !DIAssignID !1634
  %7 = alloca i64, align 8, !DIAssignID !1635
  %8 = alloca i64, align 8, !DIAssignID !1636
  %9 = alloca ptr, align 8, !DIAssignID !1637
  %10 = alloca ptr, align 8, !DIAssignID !1638
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1618, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1619, metadata !DIExpression()), !dbg !1639
  %11 = icmp eq i32 %0, 2, !dbg !1640
  br i1 %11, label %12, label %69, !dbg !1641

12:                                               ; preds = %1
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.43) #40, !dbg !1642
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1643, metadata !DIExpression(), metadata !1638, metadata ptr %10, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata ptr %13, metadata !1650, metadata !DIExpression()), !dbg !1654
  %14 = icmp eq ptr %13, null, !dbg !1655
  br i1 %14, label %36, label %.preheader5, !dbg !1657

.preheader5:                                      ; preds = %12
  br label %15, !dbg !1658

15:                                               ; preds = %.preheader5, %18
  %16 = phi ptr [ %19, %18 ], [ %13, %.preheader5 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1650, metadata !DIExpression()), !dbg !1654
  %17 = load i8, ptr %16, align 1, !dbg !1659, !tbaa !1137
  switch i8 %17, label %20 [
    i8 0, label %.loopexit6
    i8 32, label %18
    i8 9, label %18
    i8 10, label %18
    i8 11, label %18
    i8 12, label %18
    i8 13, label %18
  ], !dbg !1660

18:                                               ; preds = %15, %15, %15, %15, %15, %15
  %19 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1661
  call void @llvm.dbg.value(metadata ptr %19, metadata !1650, metadata !DIExpression()), !dbg !1654
  br label %15, !dbg !1658, !llvm.loop !1662

20:                                               ; preds = %15
  %.lcssa23 = phi ptr [ %16, %15 ]
  %.lcssa21 = phi i8 [ %17, %15 ], !dbg !1659
  %21 = zext i8 %.lcssa21 to i32, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %21, metadata !1664, metadata !DIExpression()), !dbg !1670
  %22 = add nsw i32 %21, -48, !dbg !1672
  %23 = icmp ult i32 %22, 10, !dbg !1672
  br i1 %23, label %24, label %35, !dbg !1673

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #40, !dbg !1674
  %25 = call i64 @strtoul(ptr noundef nonnull %.lcssa23, ptr noundef nonnull %10, i32 noundef 10) #40, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %25, metadata !1651, metadata !DIExpression()), !dbg !1652
  %26 = load ptr, ptr %10, align 8, !tbaa !1066
  br label %27, !dbg !1676

27:                                               ; preds = %31, %24
  %28 = phi ptr [ %32, %31 ], [ %26, %24 ]
  %29 = load i8, ptr %28, align 1, !dbg !1677, !tbaa !1137
  switch i8 %29, label %33 [
    i8 0, label %30
    i8 32, label %31
    i8 9, label %31
    i8 10, label %31
    i8 11, label %31
    i8 12, label %31
    i8 13, label %31
  ], !dbg !1678

30:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #40, !dbg !1679
  br label %36

31:                                               ; preds = %27, %27, %27, %27, %27, %27
  %32 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1680
  call void @llvm.dbg.assign(metadata ptr %32, metadata !1643, metadata !DIExpression(), metadata !1681, metadata ptr %10, metadata !DIExpression()), !dbg !1652
  br label %27, !dbg !1676, !llvm.loop !1682

33:                                               ; preds = %27
  %.lcssa19 = phi i8 [ %29, %27 ], !dbg !1677
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #40, !dbg !1679
  %34 = icmp eq i8 %.lcssa19, 44
  br i1 %34, label %36, label %35

.loopexit6:                                       ; preds = %15
  br label %35, !dbg !1683

35:                                               ; preds = %.loopexit6, %33, %20
  br label %36, !dbg !1683

36:                                               ; preds = %12, %30, %33, %35
  %37 = phi i64 [ 0, %35 ], [ 0, %12 ], [ %25, %30 ], [ %25, %33 ], !dbg !1654
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1620, metadata !DIExpression()), !dbg !1684
  %38 = tail call ptr @getenv(ptr noundef nonnull @.str.1.44) #40, !dbg !1685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1643, metadata !DIExpression(), metadata !1637, metadata ptr %9, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata ptr %38, metadata !1650, metadata !DIExpression()), !dbg !1688
  %39 = icmp eq ptr %38, null, !dbg !1689
  br i1 %39, label %64, label %.preheader3, !dbg !1690

.preheader3:                                      ; preds = %36
  br label %40, !dbg !1691

40:                                               ; preds = %.preheader3, %43
  %41 = phi ptr [ %44, %43 ], [ %38, %.preheader3 ]
  call void @llvm.dbg.value(metadata ptr %41, metadata !1650, metadata !DIExpression()), !dbg !1688
  %42 = load i8, ptr %41, align 1, !dbg !1692, !tbaa !1137
  switch i8 %42, label %45 [
    i8 0, label %.loopexit4
    i8 32, label %43
    i8 9, label %43
    i8 10, label %43
    i8 11, label %43
    i8 12, label %43
    i8 13, label %43
  ], !dbg !1693

43:                                               ; preds = %40, %40, %40, %40, %40, %40
  %44 = getelementptr inbounds i8, ptr %41, i64 1, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %44, metadata !1650, metadata !DIExpression()), !dbg !1688
  br label %40, !dbg !1691, !llvm.loop !1695

45:                                               ; preds = %40
  %.lcssa17 = phi ptr [ %41, %40 ]
  %.lcssa15 = phi i8 [ %42, %40 ], !dbg !1692
  %46 = zext i8 %.lcssa15 to i32, !dbg !1696
  call void @llvm.dbg.value(metadata i32 %46, metadata !1664, metadata !DIExpression()), !dbg !1697
  %47 = add nsw i32 %46, -48, !dbg !1699
  %48 = icmp ult i32 %47, 10, !dbg !1699
  br i1 %48, label %49, label %64, !dbg !1700

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40, !dbg !1701
  %50 = call i64 @strtoul(ptr noundef nonnull %.lcssa17, ptr noundef nonnull %9, i32 noundef 10) #40, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %50, metadata !1651, metadata !DIExpression()), !dbg !1686
  %51 = freeze i64 %50, !dbg !1703
  %52 = load ptr, ptr %9, align 8, !tbaa !1066
  br label %53, !dbg !1705

53:                                               ; preds = %58, %49
  %54 = phi ptr [ %59, %58 ], [ %52, %49 ]
  %55 = load i8, ptr %54, align 1, !dbg !1706, !tbaa !1137
  switch i8 %55, label %60 [
    i8 0, label %56
    i8 32, label %58
    i8 9, label %58
    i8 10, label %58
    i8 11, label %58
    i8 12, label %58
    i8 13, label %58
  ], !dbg !1707

56:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !1708
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1623, metadata !DIExpression()), !dbg !1684
  %57 = icmp eq i64 %51, 0, !dbg !1703
  br i1 %57, label %64, label %65, !dbg !1709

58:                                               ; preds = %53, %53, %53, %53, %53, %53
  %59 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1710
  call void @llvm.dbg.assign(metadata ptr %59, metadata !1643, metadata !DIExpression(), metadata !1711, metadata ptr %9, metadata !DIExpression()), !dbg !1686
  br label %53, !dbg !1705, !llvm.loop !1712

60:                                               ; preds = %53
  %.lcssa13 = phi i8 [ %55, %53 ], !dbg !1706
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !1708
  %61 = icmp ne i8 %.lcssa13, 44
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1623, metadata !DIExpression()), !dbg !1684
  %62 = icmp eq i64 %51, 0
  %63 = or i1 %62, %61
  br i1 %63, label %64, label %65

.loopexit4:                                       ; preds = %40
  br label %64, !dbg !1709

64:                                               ; preds = %.loopexit4, %45, %60, %36, %56
  br label %65, !dbg !1709

65:                                               ; preds = %60, %56, %64
  %66 = phi i64 [ -1, %64 ], [ %51, %56 ], [ %51, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !1623, metadata !DIExpression()), !dbg !1684
  %67 = icmp eq i64 %37, 0, !dbg !1713
  %68 = tail call i64 @llvm.umin.i64(i64 %37, i64 %66), !dbg !1715
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !1618, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1619, metadata !DIExpression()), !dbg !1639
  br i1 %67, label %69, label %223

69:                                               ; preds = %65, %1
  %70 = phi i64 [ %66, %65 ], [ -1, %1 ], !dbg !1716
  %71 = phi i32 [ 1, %65 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !1618, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !1619, metadata !DIExpression()), !dbg !1639
  %72 = icmp eq i32 %71, 1, !dbg !1717
  %73 = icmp ugt i64 %70, 1
  %74 = and i1 %73, %72, !dbg !1718
  br i1 %74, label %75, label %199, !dbg !1718

75:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i64 -1, metadata !1719, metadata !DIExpression()), !dbg !1724
  %76 = tail call i32 @sched_getscheduler(i32 noundef 0) #40, !dbg !1726
  %77 = add i32 %76, 1, !dbg !1727
  %78 = icmp ult i32 %77, 8, !dbg !1727
  br i1 %78, label %191, label %79, !dbg !1727

79:                                               ; preds = %191, %75
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1728, metadata !DIExpression(), metadata !1630, metadata ptr %2, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1768, metadata !DIExpression(), metadata !1631, metadata ptr %3, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1778, metadata !DIExpression(), metadata !1632, metadata ptr %4, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1779, metadata !DIExpression(), metadata !1633, metadata ptr %5, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1780, metadata !DIExpression(), metadata !1634, metadata ptr %6, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1785, metadata !DIExpression(), metadata !1635, metadata ptr %7, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1788, metadata !DIExpression(), metadata !1636, metadata ptr %8, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i64 -1, metadata !1731, metadata !DIExpression()), !dbg !1793
  %80 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.2.45, ptr noundef nonnull @.str.3.46) #40, !dbg !1798
  call void @llvm.dbg.value(metadata ptr %80, metadata !1732, metadata !DIExpression()), !dbg !1793
  %81 = icmp eq ptr %80, null, !dbg !1799
  br i1 %81, label %196, label %82, !dbg !1801

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata ptr null, metadata !1767, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #40, !dbg !1802
  store ptr null, ptr %2, align 8, !dbg !1803, !tbaa !1066, !DIAssignID !1804
  call void @llvm.dbg.assign(metadata ptr null, metadata !1728, metadata !DIExpression(), metadata !1804, metadata ptr %2, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1805
  store i64 0, ptr %3, align 8, !dbg !1806, !tbaa !1807, !DIAssignID !1808
  call void @llvm.dbg.assign(metadata i64 0, metadata !1768, metadata !DIExpression(), metadata !1808, metadata ptr %3, metadata !DIExpression()), !dbg !1793
  br label %83, !dbg !1809

83:                                               ; preds = %88, %82
  call void @llvm.dbg.value(metadata ptr %2, metadata !1810, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %3, metadata !1815, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %80, metadata !1816, metadata !DIExpression()), !dbg !1817
  %84 = call i64 @__getdelim(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 10, ptr noundef nonnull %80) #40, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %84, metadata !1769, metadata !DIExpression()), !dbg !1793
  %85 = icmp eq i64 %84, -1, !dbg !1820
  br i1 %85, label %86, label %88, !dbg !1809

86:                                               ; preds = %83
  call void @llvm.dbg.value(metadata ptr null, metadata !1767, metadata !DIExpression()), !dbg !1793
  %87 = call i32 @rpl_fclose(ptr noundef nonnull %80) #40, !dbg !1821
  call void @llvm.dbg.value(metadata ptr null, metadata !1777, metadata !DIExpression()), !dbg !1793
  br label %128, !dbg !1822

88:                                               ; preds = %83
  %89 = load ptr, ptr %2, align 8, !dbg !1824, !tbaa !1066
  %90 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(5) @.str.4.47, i64 noundef 4) #41, !dbg !1825
  %91 = icmp eq i32 %90, 0, !dbg !1826
  br i1 %91, label %92, label %83, !dbg !1827, !llvm.loop !1828

92:                                               ; preds = %88
  %.lcssa12 = phi ptr [ %89, %88 ], !dbg !1824
  %.lcssa11 = phi i64 [ %84, %88 ], !dbg !1819
  %93 = getelementptr inbounds i8, ptr %.lcssa12, i64 %.lcssa11, !dbg !1830
  %94 = getelementptr inbounds i8, ptr %93, i64 -1, !dbg !1831
  call void @llvm.dbg.value(metadata ptr %94, metadata !1773, metadata !DIExpression()), !dbg !1832
  %95 = load i8, ptr %94, align 1, !dbg !1833, !tbaa !1137
  %96 = icmp eq i8 %95, 10, !dbg !1835
  br i1 %96, label %97, label %99, !dbg !1836

97:                                               ; preds = %92
  store i8 0, ptr %94, align 1, !dbg !1837, !tbaa !1137
  %98 = load ptr, ptr %2, align 8, !dbg !1838, !tbaa !1066
  br label %99, !dbg !1839

99:                                               ; preds = %97, %92
  %100 = phi ptr [ %98, %97 ], [ %.lcssa12, %92 ], !dbg !1838
  %101 = getelementptr inbounds i8, ptr %100, i64 3, !dbg !1840
  call void @llvm.dbg.value(metadata ptr %101, metadata !1767, metadata !DIExpression()), !dbg !1793
  %102 = call i32 @rpl_fclose(ptr noundef nonnull %80) #40, !dbg !1821
  call void @llvm.dbg.value(metadata ptr null, metadata !1777, metadata !DIExpression()), !dbg !1793
  %103 = call i32 @access(ptr noundef nonnull @.str.8.48, i32 noundef 0) #40, !dbg !1841
  %104 = icmp eq i32 %103, 0, !dbg !1861
  br i1 %104, label %105, label %107, !dbg !1862

105:                                              ; preds = %99
  %106 = call noalias dereferenceable_or_null(15) ptr @strdup(ptr noundef nonnull @.str.9.49) #40, !dbg !1863
  br label %125, !dbg !1864

107:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr null, metadata !1847, metadata !DIExpression()), !dbg !1865
  %108 = call ptr @setmntent(ptr noundef nonnull @.str.10.50, ptr noundef nonnull @.str.3.46) #40, !dbg !1866
  call void @llvm.dbg.value(metadata ptr %108, metadata !1848, metadata !DIExpression()), !dbg !1865
  %109 = icmp eq ptr %108, null, !dbg !1867
  br i1 %109, label %128, label %.preheader1, !dbg !1869

.preheader1:                                      ; preds = %107
  br label %110, !dbg !1870

110:                                              ; preds = %.preheader1, %113
  %111 = call ptr @getmntent(ptr noundef nonnull %108) #40, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %111, metadata !1849, metadata !DIExpression()), !dbg !1865
  %112 = icmp eq ptr %111, null, !dbg !1872
  br i1 %112, label %.loopexit2, label %113, !dbg !1870

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mntent, ptr %111, i64 0, i32 2, !dbg !1873
  %115 = load ptr, ptr %114, align 8, !dbg !1873, !tbaa !1876
  call void @llvm.dbg.value(metadata ptr %115, metadata !1878, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr @.str.11.51, metadata !1881, metadata !DIExpression()), !dbg !1882
  %116 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull dereferenceable(8) @.str.11.51) #41, !dbg !1884
  %117 = icmp eq i32 %116, 0, !dbg !1885
  br i1 %117, label %118, label %110, !dbg !1886, !llvm.loop !1887

118:                                              ; preds = %113
  %.lcssa9 = phi ptr [ %111, %113 ], !dbg !1871
  %119 = getelementptr inbounds %struct.mntent, ptr %.lcssa9, i64 0, i32 1, !dbg !1889
  %120 = load ptr, ptr %119, align 8, !dbg !1889, !tbaa !1891
  %121 = call noalias ptr @strdup(ptr noundef %120) #40, !dbg !1892
  call void @llvm.dbg.value(metadata ptr %121, metadata !1847, metadata !DIExpression()), !dbg !1865
  br label %122, !dbg !1893

.loopexit2:                                       ; preds = %110
  br label %122, !dbg !1894

122:                                              ; preds = %.loopexit2, %118
  %123 = phi ptr [ %121, %118 ], [ null, %.loopexit2 ], !dbg !1865
  call void @llvm.dbg.value(metadata ptr %123, metadata !1847, metadata !DIExpression()), !dbg !1865
  %124 = call i32 @endmntent(ptr noundef nonnull %108) #40, !dbg !1894
  br label %125

125:                                              ; preds = %122, %105
  %126 = phi ptr [ %106, %105 ], [ %123, %122 ], !dbg !1865
  call void @llvm.dbg.value(metadata ptr %126, metadata !1777, metadata !DIExpression()), !dbg !1793
  %127 = icmp eq ptr %126, null, !dbg !1895
  br i1 %127, label %128, label %129, !dbg !1896

128:                                              ; preds = %125, %107, %86
  call void @llvm.dbg.value(metadata ptr null, metadata !1777, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr null, metadata !1767, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1897
  store ptr null, ptr %4, align 8, !dbg !1898, !tbaa !1066, !DIAssignID !1899
  call void @llvm.dbg.assign(metadata ptr null, metadata !1778, metadata !DIExpression(), metadata !1899, metadata ptr %4, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !1900
  store i64 0, ptr %5, align 8, !dbg !1901, !tbaa !1807, !DIAssignID !1902
  call void @llvm.dbg.assign(metadata i64 0, metadata !1779, metadata !DIExpression(), metadata !1902, metadata ptr %5, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 -1, metadata !1731, metadata !DIExpression()), !dbg !1793
  br label %186, !dbg !1903

129:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr %126, metadata !1777, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %101, metadata !1767, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1897
  store ptr null, ptr %4, align 8, !dbg !1898, !tbaa !1066, !DIAssignID !1899
  call void @llvm.dbg.assign(metadata ptr null, metadata !1778, metadata !DIExpression(), metadata !1899, metadata ptr %4, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !1900
  store i64 0, ptr %5, align 8, !dbg !1901, !tbaa !1807, !DIAssignID !1902
  call void @llvm.dbg.assign(metadata i64 0, metadata !1779, metadata !DIExpression(), metadata !1902, metadata ptr %5, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 -1, metadata !1731, metadata !DIExpression()), !dbg !1793
  %130 = getelementptr inbounds i8, ptr %100, i64 4
  %131 = load i8, ptr %101, align 1, !dbg !1904, !tbaa !1137
  %132 = icmp eq i8 %131, 0, !dbg !1903
  br i1 %132, label %186, label %.preheader, !dbg !1905

.preheader:                                       ; preds = %129
  br label %133, !dbg !1906

133:                                              ; preds = %.preheader, %182
  %134 = phi i64 [ %172, %182 ], [ -1, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !1731, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #40, !dbg !1907
  %135 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %6, i64 noundef 4096, i32 noundef 1, i64 noundef 4096, ptr noundef nonnull @.str.5.52, ptr noundef nonnull %126, ptr noundef nonnull %101) #40, !dbg !1908
  %136 = call noalias ptr @rpl_fopen(ptr noundef nonnull %6, ptr noundef nonnull @.str.3.46) #40, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %136, metadata !1732, metadata !DIExpression()), !dbg !1793
  %137 = icmp eq ptr %136, null, !dbg !1910
  br i1 %137, label %171, label %138, !dbg !1906

138:                                              ; preds = %133
  call void @llvm.dbg.value(metadata ptr %4, metadata !1810, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %5, metadata !1815, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %136, metadata !1816, metadata !DIExpression()), !dbg !1911
  %139 = call i64 @__getdelim(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull %136) #40, !dbg !1913
  %140 = icmp eq i64 %139, -1, !dbg !1914
  br i1 %140, label %168, label %141, !dbg !1915

141:                                              ; preds = %138
  %142 = load ptr, ptr %4, align 8, !dbg !1916, !tbaa !1066
  %143 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(4) @.str.6.53, i64 noundef 3) #41, !dbg !1917
  %144 = icmp eq i32 %143, 0, !dbg !1918
  br i1 %144, label %168, label %145, !dbg !1919

145:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !1920
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #40, !dbg !1920
  %146 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %142, ptr noundef nonnull @.str.7.54, ptr noundef nonnull %7, ptr noundef nonnull %8) #40, !dbg !1921
  %147 = icmp eq i32 %146, 2, !dbg !1922
  %148 = load i64, ptr %8, align 8
  %149 = icmp ne i64 %148, 0
  %150 = select i1 %147, i1 %149, i1 false, !dbg !1923
  br i1 %150, label %151, label %166, !dbg !1923

151:                                              ; preds = %145
  %152 = load i64, ptr %7, align 8, !dbg !1924, !tbaa !1807
  %153 = sitofp i64 %152 to double, !dbg !1925
  %154 = sitofp i64 %148 to double, !dbg !1926
  %155 = fdiv double %153, %154, !dbg !1927
  call void @llvm.dbg.value(metadata double %155, metadata !1789, metadata !DIExpression()), !dbg !1928
  %156 = icmp eq i64 %134, -1, !dbg !1929
  %157 = uitofp i64 %134 to double
  %158 = fcmp olt double %155, %157
  %159 = select i1 %156, i1 true, i1 %158, !dbg !1931
  br i1 %159, label %160, label %166, !dbg !1931

160:                                              ; preds = %151
  %161 = fadd double %155, 5.000000e-01, !dbg !1932
  %162 = fptosi double %161 to i64, !dbg !1932
  %163 = call i64 @llvm.smax.i64(i64 %162, i64 1), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %163, metadata !1731, metadata !DIExpression()), !dbg !1793
  %164 = icmp slt i64 %162, 2, !dbg !1934
  br i1 %164, label %165, label %166, !dbg !1936

165:                                              ; preds = %160
  store i8 0, ptr %101, align 1, !dbg !1937, !tbaa !1137
  br label %166, !dbg !1938

166:                                              ; preds = %165, %160, %151, %145
  %167 = phi i64 [ %134, %145 ], [ 1, %165 ], [ %163, %160 ], [ %134, %151 ], !dbg !1793
  call void @llvm.dbg.value(metadata i64 %167, metadata !1731, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #40, !dbg !1939
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !1939
  br label %168, !dbg !1940

168:                                              ; preds = %166, %141, %138
  %169 = phi i64 [ %134, %138 ], [ %134, %141 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !1731, metadata !DIExpression()), !dbg !1793
  %170 = call i32 @rpl_fclose(ptr noundef nonnull %136) #40, !dbg !1941
  br label %171, !dbg !1941

171:                                              ; preds = %168, %133
  %172 = phi i64 [ %169, %168 ], [ %134, %133 ]
  %173 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %101, i32 noundef 47) #41, !dbg !1943
  call void @llvm.dbg.value(metadata ptr %173, metadata !1792, metadata !DIExpression()), !dbg !1796
  %174 = icmp eq ptr %173, null, !dbg !1944
  br i1 %174, label %175, label %176, !dbg !1946

175:                                              ; preds = %171
  %.lcssa = phi i64 [ %172, %171 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #40, !dbg !1947
  br label %186

176:                                              ; preds = %171
  %177 = icmp eq ptr %173, %101, !dbg !1948
  br i1 %177, label %178, label %181, !dbg !1950

178:                                              ; preds = %176
  %179 = load i8, ptr %130, align 1, !dbg !1951, !tbaa !1137
  %180 = icmp eq i8 %179, 0, !dbg !1951
  br i1 %180, label %181, label %182, !dbg !1952

181:                                              ; preds = %178, %176
  br label %182

182:                                              ; preds = %181, %178
  %183 = phi ptr [ %173, %181 ], [ %130, %178 ]
  store i8 0, ptr %183, align 1, !dbg !1953, !tbaa !1137
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #40, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %172, metadata !1731, metadata !DIExpression()), !dbg !1793
  %184 = load i8, ptr %101, align 1, !dbg !1904, !tbaa !1137
  %185 = icmp eq i8 %184, 0, !dbg !1903
  br i1 %185, label %.loopexit, label %133, !dbg !1905

.loopexit:                                        ; preds = %182
  %.lcssa7 = phi i64 [ %172, %182 ]
  br label %186, !dbg !1954

186:                                              ; preds = %.loopexit, %175, %129, %128
  %187 = phi ptr [ %126, %175 ], [ null, %128 ], [ %126, %129 ], [ %126, %.loopexit ]
  %188 = phi i64 [ %.lcssa, %175 ], [ -1, %128 ], [ -1, %129 ], [ %.lcssa7, %.loopexit ], !dbg !1793
  call void @llvm.dbg.value(metadata i64 %188, metadata !1731, metadata !DIExpression()), !dbg !1793
  %189 = load ptr, ptr %4, align 8, !dbg !1954, !tbaa !1066
  call void @free(ptr noundef %189) #40, !dbg !1955
  call void @free(ptr noundef %187) #40, !dbg !1956
  %190 = load ptr, ptr %2, align 8, !dbg !1957, !tbaa !1066
  call void @free(ptr noundef %190) #40, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #40, !dbg !1959
  br label %196

191:                                              ; preds = %75
  %192 = trunc i32 %77 to i8, !dbg !1727
  %193 = lshr i8 -115, %192, !dbg !1727
  %194 = and i8 %193, 1, !dbg !1727
  %195 = icmp eq i8 %194, 0, !dbg !1727
  br i1 %195, label %79, label %196, !dbg !1727

196:                                              ; preds = %191, %79, %186
  %197 = phi i64 [ %188, %186 ], [ -1, %79 ], [ -1, %191 ], !dbg !1960
  call void @llvm.dbg.value(metadata i64 %197, metadata !1719, metadata !DIExpression()), !dbg !1724
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1624, metadata !DIExpression()), !dbg !1961
  %198 = call i64 @llvm.umin.i64(i64 %197, i64 %70), !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !1619, metadata !DIExpression()), !dbg !1639
  br label %199, !dbg !1963

199:                                              ; preds = %196, %69
  %200 = phi i64 [ %198, %196 ], [ %70, %69 ], !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !1619, metadata !DIExpression()), !dbg !1639
  %201 = icmp ugt i64 %200, 1, !dbg !1964
  br i1 %201, label %202, label %223, !dbg !1965

202:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i32 %71, metadata !1966, metadata !DIExpression()), !dbg !1981
  br i1 %72, label %203, label %209, !dbg !1983

203:                                              ; preds = %202
  %204 = call fastcc i64 @num_processors_via_affinity_mask(), !dbg !1984
  call void @llvm.dbg.value(metadata i64 %204, metadata !1969, metadata !DIExpression()), !dbg !1985
  %205 = icmp eq i64 %204, 0, !dbg !1986
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = call i64 @sysconf(i32 noundef 84) #40, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %207, metadata !1973, metadata !DIExpression()), !dbg !1989
  %208 = icmp slt i64 %207, 1, !dbg !1990
  br i1 %208, label %219, label %220

209:                                              ; preds = %202
  %210 = call i64 @sysconf(i32 noundef 83) #40, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %210, metadata !1975, metadata !DIExpression()), !dbg !1993
  %211 = add i64 %210, -1, !dbg !1994
  %212 = icmp ult i64 %211, 2, !dbg !1994
  br i1 %212, label %213, label %216, !dbg !1994

213:                                              ; preds = %209
  %214 = call fastcc i64 @num_processors_via_affinity_mask(), !dbg !1995
  call void @llvm.dbg.value(metadata i64 %214, metadata !1978, metadata !DIExpression()), !dbg !1996
  %215 = call i64 @llvm.umax.i64(i64 %214, i64 %210), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %215, metadata !1975, metadata !DIExpression()), !dbg !1993
  br label %216, !dbg !1998

216:                                              ; preds = %213, %209
  %217 = phi i64 [ %215, %213 ], [ %210, %209 ], !dbg !1993
  call void @llvm.dbg.value(metadata i64 %217, metadata !1975, metadata !DIExpression()), !dbg !1993
  %218 = icmp slt i64 %217, 1, !dbg !1999
  br i1 %218, label %219, label %220

219:                                              ; preds = %216, %206
  br label %220, !dbg !2001

220:                                              ; preds = %203, %206, %216, %219
  %221 = phi i64 [ %204, %203 ], [ %207, %206 ], [ 1, %219 ], [ %217, %216 ], !dbg !1981
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !1627, metadata !DIExpression()), !dbg !2002
  %222 = call i64 @llvm.umin.i64(i64 %221, i64 %200), !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !1619, metadata !DIExpression()), !dbg !1639
  br label %223, !dbg !2004

223:                                              ; preds = %199, %220, %65
  %224 = phi i64 [ %68, %65 ], [ %222, %220 ], [ %200, %199 ], !dbg !1639
  ret i64 %224, !dbg !2005
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2006 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !2010 i32 @sched_getscheduler(i32 noundef) local_unnamed_addr #2

declare !dbg !2015 i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2020 noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2023 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nounwind
declare !dbg !2024 ptr @setmntent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2027 ptr @getmntent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2030 i32 @endmntent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2033 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare !dbg !2037 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2040 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2041 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define internal fastcc i64 @num_processors_via_affinity_mask() unnamed_addr #10 !dbg !2044 {
  %1 = alloca %struct.cpu_set_t, align 8, !DIAssignID !2069
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2064, metadata !DIExpression(), metadata !2069, metadata ptr %1, metadata !DIExpression()), !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !2046, metadata !DIExpression()), !dbg !2071
  br label %2, !dbg !2072

2:                                                ; preds = %14, %0
  %3 = phi i32 [ 1024, %0 ], [ %18, %14 ], !dbg !2073
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2046, metadata !DIExpression()), !dbg !2071
  %4 = zext i32 %3 to i64, !dbg !2074
  %5 = tail call ptr @__sched_cpualloc(i64 noundef %4) #40, !dbg !2074
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2048, metadata !DIExpression()), !dbg !2075
  %6 = icmp eq ptr %5, null, !dbg !2076
  br i1 %6, label %21, label %7, !dbg !2078

7:                                                ; preds = %2
  %8 = lshr exact i64 %4, 3, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !2060, metadata !DIExpression()), !dbg !2075
  %9 = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef %8, ptr noundef nonnull %5) #40, !dbg !2080
  %10 = icmp eq i32 %9, 0, !dbg !2081
  br i1 %10, label %11, label %14, !dbg !2082

11:                                               ; preds = %7
  %.lcssa3 = phi i64 [ %8, %7 ], !dbg !2079
  %.lcssa1 = phi ptr [ %5, %7 ], !dbg !2074
  %12 = tail call i32 @__sched_cpucount(i64 noundef %.lcssa3, ptr noundef nonnull %.lcssa1) #40, !dbg !2083
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2061, metadata !DIExpression()), !dbg !2084
  tail call void @__sched_cpufree(ptr noundef nonnull %.lcssa1) #40, !dbg !2085
  %13 = zext i32 %12 to i64, !dbg !2086
  br label %30

14:                                               ; preds = %7
  %15 = tail call ptr @__errno_location() #43, !dbg !2087
  %16 = load i32, ptr %15, align 4, !dbg !2087, !tbaa !1128
  %17 = icmp ne i32 %16, 22, !dbg !2089
  tail call void @__sched_cpufree(ptr noundef nonnull %5) #40, !dbg !2075
  %18 = shl i32 %3, 1
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !2046, metadata !DIExpression()), !dbg !2071
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19, !dbg !2090
  br i1 %20, label %.loopexit, label %2, !dbg !2090

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #40, !dbg !2091
  %22 = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #40, !dbg !2092
  %23 = icmp eq i32 %22, 0, !dbg !2093
  br i1 %23, label %24, label %29, !dbg !2094

24:                                               ; preds = %21
  %25 = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %1) #40, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !2066, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !2096
  %26 = icmp eq i32 %25, 0, !dbg !2097
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = sext i32 %25 to i64, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #40, !dbg !2100
  br label %30

29:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #40, !dbg !2100
  br label %30

.loopexit:                                        ; preds = %14
  br label %30, !dbg !2101

30:                                               ; preds = %.loopexit, %29, %27, %11
  %31 = phi i64 [ %13, %11 ], [ 0, %29 ], [ %28, %27 ], [ 0, %.loopexit ]
  ret i64 %31, !dbg !2101
}

; Function Attrs: nounwind
declare !dbg !2102 i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !2105 ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2108 i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2111 i32 @__sched_cpucount(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2116 void @__sched_cpufree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !2119 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2121, metadata !DIExpression()), !dbg !2124
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2125
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2122, metadata !DIExpression()), !dbg !2124
  %3 = icmp eq ptr %2, null, !dbg !2126
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2126
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2126
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2123, metadata !DIExpression()), !dbg !2124
  %6 = ptrtoint ptr %5 to i64, !dbg !2127
  %7 = ptrtoint ptr %0 to i64, !dbg !2127
  %8 = sub i64 %6, %7, !dbg !2127
  %9 = icmp sgt i64 %8, 6, !dbg !2129
  br i1 %9, label %10, label %19, !dbg !2130

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2131
  call void @llvm.dbg.value(metadata ptr %11, metadata !2132, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 7, metadata !2138, metadata !DIExpression()), !dbg !2139
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.59, i64 7), !dbg !2141
  %13 = icmp eq i32 %12, 0, !dbg !2142
  br i1 %13, label %14, label %19, !dbg !2143

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2121, metadata !DIExpression()), !dbg !2124
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.60, i64 noundef 3) #41, !dbg !2144
  %16 = icmp eq i32 %15, 0, !dbg !2147
  %17 = select i1 %16, i64 3, i64 0, !dbg !2148
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2148
  br label %19, !dbg !2148

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2124
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2123, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2121, metadata !DIExpression()), !dbg !2124
  store ptr %20, ptr @program_name, align 8, !dbg !2149, !tbaa !1066
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2150, !tbaa !1066
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2151, !tbaa !1066
  ret void, !dbg !2152
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !467 {
  %3 = alloca i32, align 4, !DIAssignID !2153
  call void @llvm.dbg.assign(metadata i1 undef, metadata !477, metadata !DIExpression(), metadata !2153, metadata ptr %3, metadata !DIExpression()), !dbg !2154
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2155
  call void @llvm.dbg.assign(metadata i1 undef, metadata !482, metadata !DIExpression(), metadata !2155, metadata ptr %4, metadata !DIExpression()), !dbg !2154
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !474, metadata !DIExpression()), !dbg !2154
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !475, metadata !DIExpression()), !dbg !2154
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2156
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !476, metadata !DIExpression()), !dbg !2154
  %6 = icmp eq ptr %5, %0, !dbg !2157
  br i1 %6, label %7, label %14, !dbg !2159

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2161
  call void @llvm.dbg.value(metadata ptr %4, metadata !2162, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata ptr %4, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 0, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 8, metadata !2178, metadata !DIExpression()), !dbg !2179
  store i64 0, ptr %4, align 8, !dbg !2181
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2182
  %9 = icmp eq i64 %8, 2, !dbg !2184
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2185
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2186
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2186
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2154
  ret ptr %15, !dbg !2186
}

; Function Attrs: nounwind
declare !dbg !2187 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2193 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2198, metadata !DIExpression()), !dbg !2201
  %2 = tail call ptr @__errno_location() #43, !dbg !2202
  %3 = load i32, ptr %2, align 4, !dbg !2202, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2199, metadata !DIExpression()), !dbg !2201
  %4 = icmp eq ptr %0, null, !dbg !2203
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2203
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !2204
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2200, metadata !DIExpression()), !dbg !2201
  store i32 %3, ptr %2, align 4, !dbg !2205, !tbaa !1128
  ret ptr %6, !dbg !2206
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2207 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2213, metadata !DIExpression()), !dbg !2214
  %2 = icmp eq ptr %0, null, !dbg !2215
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2215
  %4 = load i32, ptr %3, align 8, !dbg !2216, !tbaa !2217
  ret i32 %4, !dbg !2219
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2220 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2224, metadata !DIExpression()), !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2225, metadata !DIExpression()), !dbg !2226
  %3 = icmp eq ptr %0, null, !dbg !2227
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2227
  store i32 %1, ptr %4, align 8, !dbg !2228, !tbaa !2217
  ret void, !dbg !2229
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2230 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2234, metadata !DIExpression()), !dbg !2242
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2235, metadata !DIExpression()), !dbg !2242
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2236, metadata !DIExpression()), !dbg !2242
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2237, metadata !DIExpression()), !dbg !2242
  %4 = icmp eq ptr %0, null, !dbg !2243
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2243
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2244
  %7 = lshr i8 %1, 5, !dbg !2245
  %8 = zext nneg i8 %7 to i64, !dbg !2245
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2238, metadata !DIExpression()), !dbg !2242
  %10 = and i8 %1, 31, !dbg !2247
  %11 = zext nneg i8 %10 to i32, !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2240, metadata !DIExpression()), !dbg !2242
  %12 = load i32, ptr %9, align 4, !dbg !2248, !tbaa !1128
  %13 = lshr i32 %12, %11, !dbg !2249
  %14 = and i32 %13, 1, !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2241, metadata !DIExpression()), !dbg !2242
  %15 = xor i32 %13, %2, !dbg !2251
  %16 = and i32 %15, 1, !dbg !2251
  %17 = shl nuw i32 %16, %11, !dbg !2252
  %18 = xor i32 %17, %12, !dbg !2253
  store i32 %18, ptr %9, align 4, !dbg !2253, !tbaa !1128
  ret i32 %14, !dbg !2254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2255 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2259, metadata !DIExpression()), !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2260, metadata !DIExpression()), !dbg !2262
  %3 = icmp eq ptr %0, null, !dbg !2263
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2265
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2259, metadata !DIExpression()), !dbg !2262
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2266
  %6 = load i32, ptr %5, align 4, !dbg !2266, !tbaa !2267
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2261, metadata !DIExpression()), !dbg !2262
  store i32 %1, ptr %5, align 4, !dbg !2268, !tbaa !2267
  ret i32 %6, !dbg !2269
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2270 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2274, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2275, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2276, metadata !DIExpression()), !dbg !2277
  %4 = icmp eq ptr %0, null, !dbg !2278
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2280
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2274, metadata !DIExpression()), !dbg !2277
  store i32 10, ptr %5, align 8, !dbg !2281, !tbaa !2217
  %6 = icmp ne ptr %1, null, !dbg !2282
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2284
  br i1 %8, label %10, label %9, !dbg !2284

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2285
  unreachable, !dbg !2285

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2286
  store ptr %1, ptr %11, align 8, !dbg !2287, !tbaa !2288
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2289
  store ptr %2, ptr %12, align 8, !dbg !2290, !tbaa !2291
  ret void, !dbg !2292
}

; Function Attrs: noreturn nounwind
declare !dbg !2293 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2294 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2298, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2299, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2300, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2301, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2302, metadata !DIExpression()), !dbg !2306
  %6 = icmp eq ptr %4, null, !dbg !2307
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2307
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2303, metadata !DIExpression()), !dbg !2306
  %8 = tail call ptr @__errno_location() #43, !dbg !2308
  %9 = load i32, ptr %8, align 4, !dbg !2308, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2304, metadata !DIExpression()), !dbg !2306
  %10 = load i32, ptr %7, align 8, !dbg !2309, !tbaa !2217
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2310
  %12 = load i32, ptr %11, align 4, !dbg !2310, !tbaa !2267
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2311
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2312
  %15 = load ptr, ptr %14, align 8, !dbg !2312, !tbaa !2288
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2313
  %17 = load ptr, ptr %16, align 8, !dbg !2313, !tbaa !2291
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2314
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2305, metadata !DIExpression()), !dbg !2306
  store i32 %9, ptr %8, align 4, !dbg !2315, !tbaa !1128
  ret i64 %18, !dbg !2316
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2317 {
  %10 = alloca i32, align 4, !DIAssignID !2385
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2386
  %12 = alloca i32, align 4, !DIAssignID !2387
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2388
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2363, metadata !DIExpression(), metadata !2389, metadata ptr %14, metadata !DIExpression()), !dbg !2390
  %15 = alloca i32, align 4, !DIAssignID !2391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2366, metadata !DIExpression(), metadata !2391, metadata ptr %15, metadata !DIExpression()), !dbg !2392
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2323, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2325, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2326, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2327, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2328, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2329, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2330, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2331, metadata !DIExpression()), !dbg !2393
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2394
  %17 = icmp eq i64 %16, 1, !dbg !2395
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2332, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2335, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2336, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2337, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2338, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2340, metadata !DIExpression()), !dbg !2393
  %18 = and i32 %5, 2, !dbg !2396
  %19 = icmp ne i32 %18, 0, !dbg !2396
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2396

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2397
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2398
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2399
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2340, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2336, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2335, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2326, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2331, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2330, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2327, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.label(metadata !2341), !dbg !2400
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2393
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
  ], !dbg !2401

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2327, metadata !DIExpression()), !dbg !2393
  br label %101, !dbg !2402

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2327, metadata !DIExpression()), !dbg !2393
  br i1 %36, label %101, label %42, !dbg !2402

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2403
  br i1 %43, label %101, label %44, !dbg !2407

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2403, !tbaa !1137
  br label %101, !dbg !2403

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !580, metadata !DIExpression(), metadata !2387, metadata ptr %12, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.assign(metadata i1 undef, metadata !581, metadata !DIExpression(), metadata !2388, metadata ptr %13, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata ptr @.str.11.73, metadata !577, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %28, metadata !578, metadata !DIExpression()), !dbg !2408
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.11.73, i32 noundef 5) #40, !dbg !2412
  call void @llvm.dbg.value(metadata ptr %46, metadata !579, metadata !DIExpression()), !dbg !2408
  %47 = icmp eq ptr %46, @.str.11.73, !dbg !2413
  br i1 %47, label %48, label %57, !dbg !2415

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2416
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2417
  call void @llvm.dbg.value(metadata ptr %13, metadata !2418, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %13, metadata !2426, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 0, metadata !2429, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 8, metadata !2430, metadata !DIExpression()), !dbg !2431
  store i64 0, ptr %13, align 8, !dbg !2433
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2434
  %50 = icmp eq i64 %49, 3, !dbg !2436
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2437
  %54 = icmp eq i32 %28, 9, !dbg !2437
  %55 = select i1 %54, ptr @.str.10.75, ptr @.str.12.76, !dbg !2437
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2437
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2438
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2438
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2408
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2330, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.assign(metadata i1 undef, metadata !580, metadata !DIExpression(), metadata !2385, metadata ptr %10, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.assign(metadata i1 undef, metadata !581, metadata !DIExpression(), metadata !2386, metadata ptr %11, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata ptr @.str.12.76, metadata !577, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %28, metadata !578, metadata !DIExpression()), !dbg !2439
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.12.76, i32 noundef 5) #40, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %59, metadata !579, metadata !DIExpression()), !dbg !2439
  %60 = icmp eq ptr %59, @.str.12.76, !dbg !2442
  br i1 %60, label %61, label %70, !dbg !2443

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2445
  call void @llvm.dbg.value(metadata ptr %11, metadata !2418, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata ptr %11, metadata !2426, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 0, metadata !2429, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 8, metadata !2430, metadata !DIExpression()), !dbg !2448
  store i64 0, ptr %11, align 8, !dbg !2450
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2451
  %63 = icmp eq i64 %62, 3, !dbg !2452
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2453
  %67 = icmp eq i32 %28, 9, !dbg !2453
  %68 = select i1 %67, ptr @.str.10.75, ptr @.str.12.76, !dbg !2453
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2453
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2454
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2454
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2331, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2330, metadata !DIExpression()), !dbg !2393
  br i1 %36, label %88, label %73, !dbg !2455

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2343, metadata !DIExpression()), !dbg !2456
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2333, metadata !DIExpression()), !dbg !2393
  %74 = load i8, ptr %71, align 1, !dbg !2457, !tbaa !1137
  %75 = icmp eq i8 %74, 0, !dbg !2459
  br i1 %75, label %88, label %.preheader11, !dbg !2459

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2459

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2343, metadata !DIExpression()), !dbg !2456
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2333, metadata !DIExpression()), !dbg !2393
  %80 = icmp ult i64 %79, %39, !dbg !2460
  br i1 %80, label %81, label %83, !dbg !2463

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2460
  store i8 %77, ptr %82, align 1, !dbg !2460, !tbaa !1137
  br label %83, !dbg !2460

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2333, metadata !DIExpression()), !dbg !2393
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2464
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2343, metadata !DIExpression()), !dbg !2456
  %86 = load i8, ptr %85, align 1, !dbg !2457, !tbaa !1137
  %87 = icmp eq i8 %86, 0, !dbg !2459
  br i1 %87, label %.loopexit12, label %76, !dbg !2459, !llvm.loop !2465

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2463
  br label %88, !dbg !2467

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2337, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2335, metadata !DIExpression()), !dbg !2393
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2336, metadata !DIExpression()), !dbg !2393
  br label %101, !dbg !2469

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2338, metadata !DIExpression()), !dbg !2393
  br label %101, !dbg !2470

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2327, metadata !DIExpression()), !dbg !2393
  br label %101, !dbg !2471

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2393
  br i1 %36, label %101, label %95, !dbg !2472

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2327, metadata !DIExpression()), !dbg !2393
  br i1 %36, label %101, label %95, !dbg !2471

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2473
  br i1 %97, label %101, label %98, !dbg !2477

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2473, !tbaa !1137
  br label %101, !dbg !2473

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2338, metadata !DIExpression()), !dbg !2393
  br label %101, !dbg !2478

100:                                              ; preds = %27
  call void @abort() #42, !dbg !2479
  unreachable, !dbg !2479

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2468
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.75, %42 ], [ @.str.10.75, %44 ], [ @.str.10.75, %41 ], [ %33, %27 ], [ @.str.12.76, %95 ], [ @.str.12.76, %98 ], [ @.str.12.76, %94 ], [ @.str.10.75, %40 ], [ @.str.12.76, %91 ], [ @.str.12.76, %92 ], [ @.str.12.76, %93 ], !dbg !2393
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2393
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2336, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2335, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2331, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2330, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2327, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2348, metadata !DIExpression()), !dbg !2480
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
  br label %121, !dbg !2481

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2468
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2397
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2482
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2348, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2340, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2326, metadata !DIExpression()), !dbg !2393
  %130 = icmp eq i64 %122, -1, !dbg !2483
  br i1 %130, label %131, label %135, !dbg !2484

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2485
  %133 = load i8, ptr %132, align 1, !dbg !2485, !tbaa !1137
  %134 = icmp eq i8 %133, 0, !dbg !2486
  br i1 %134, label %573, label %137, !dbg !2487

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2488
  br i1 %136, label %573, label %137, !dbg !2487

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2353, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2354, metadata !DIExpression()), !dbg !2489
  br i1 %113, label %138, label %151, !dbg !2490

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2492
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2493
  br i1 %140, label %141, label %143, !dbg !2493

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2326, metadata !DIExpression()), !dbg !2393
  br label %143, !dbg !2495

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2326, metadata !DIExpression()), !dbg !2393
  %145 = icmp ugt i64 %139, %144, !dbg !2496
  br i1 %145, label %151, label %146, !dbg !2497

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2498
  call void @llvm.dbg.value(metadata ptr %147, metadata !2499, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata ptr %106, metadata !2502, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i64 %107, metadata !2503, metadata !DIExpression()), !dbg !2504
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2506
  %149 = icmp eq i32 %148, 0, !dbg !2507
  %150 = and i1 %149, %109, !dbg !2508
  br i1 %150, label %.loopexit7, label %151, !dbg !2508

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2350, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2326, metadata !DIExpression()), !dbg !2393
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2509
  %155 = load i8, ptr %154, align 1, !dbg !2509, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2355, metadata !DIExpression()), !dbg !2489
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
  ], !dbg !2510

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2511

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2512

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2353, metadata !DIExpression()), !dbg !2489
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2516
  br i1 %159, label %176, label %160, !dbg !2516

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2518
  br i1 %161, label %162, label %164, !dbg !2522

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2518
  store i8 39, ptr %163, align 1, !dbg !2518, !tbaa !1137
  br label %164, !dbg !2518

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2522
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2333, metadata !DIExpression()), !dbg !2393
  %166 = icmp ult i64 %165, %129, !dbg !2523
  br i1 %166, label %167, label %169, !dbg !2526

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2523
  store i8 36, ptr %168, align 1, !dbg !2523, !tbaa !1137
  br label %169, !dbg !2523

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2333, metadata !DIExpression()), !dbg !2393
  %171 = icmp ult i64 %170, %129, !dbg !2527
  br i1 %171, label %172, label %174, !dbg !2530

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2527
  store i8 39, ptr %173, align 1, !dbg !2527, !tbaa !1137
  br label %174, !dbg !2527

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2530
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2342, metadata !DIExpression()), !dbg !2393
  br label %176, !dbg !2531

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2393
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2333, metadata !DIExpression()), !dbg !2393
  %179 = icmp ult i64 %177, %129, !dbg !2532
  br i1 %179, label %180, label %182, !dbg !2535

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2532
  store i8 92, ptr %181, align 1, !dbg !2532, !tbaa !1137
  br label %182, !dbg !2532

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2333, metadata !DIExpression()), !dbg !2393
  br i1 %110, label %184, label %476, !dbg !2536

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2538
  %186 = icmp ult i64 %185, %152, !dbg !2539
  br i1 %186, label %187, label %433, !dbg !2540

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2541
  %189 = load i8, ptr %188, align 1, !dbg !2541, !tbaa !1137
  %190 = add i8 %189, -48, !dbg !2542
  %191 = icmp ult i8 %190, 10, !dbg !2542
  br i1 %191, label %192, label %433, !dbg !2542

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2543
  br i1 %193, label %194, label %196, !dbg !2547

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2543
  store i8 48, ptr %195, align 1, !dbg !2543, !tbaa !1137
  br label %196, !dbg !2543

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2547
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2333, metadata !DIExpression()), !dbg !2393
  %198 = icmp ult i64 %197, %129, !dbg !2548
  br i1 %198, label %199, label %201, !dbg !2551

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2548
  store i8 48, ptr %200, align 1, !dbg !2548, !tbaa !1137
  br label %201, !dbg !2548

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2551
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2333, metadata !DIExpression()), !dbg !2393
  br label %433, !dbg !2552

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2553

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2554

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2555

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2557

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2559
  %209 = icmp ult i64 %208, %152, !dbg !2560
  br i1 %209, label %210, label %433, !dbg !2561

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2562
  %212 = load i8, ptr %211, align 1, !dbg !2562, !tbaa !1137
  %213 = icmp eq i8 %212, 63, !dbg !2563
  br i1 %213, label %214, label %433, !dbg !2564

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2565
  %216 = load i8, ptr %215, align 1, !dbg !2565, !tbaa !1137
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
  ], !dbg !2566

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2567

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2355, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2348, metadata !DIExpression()), !dbg !2480
  %219 = icmp ult i64 %123, %129, !dbg !2569
  br i1 %219, label %220, label %222, !dbg !2572

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2569
  store i8 63, ptr %221, align 1, !dbg !2569, !tbaa !1137
  br label %222, !dbg !2569

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2572
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2333, metadata !DIExpression()), !dbg !2393
  %224 = icmp ult i64 %223, %129, !dbg !2573
  br i1 %224, label %225, label %227, !dbg !2576

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2573
  store i8 34, ptr %226, align 1, !dbg !2573, !tbaa !1137
  br label %227, !dbg !2573

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2333, metadata !DIExpression()), !dbg !2393
  %229 = icmp ult i64 %228, %129, !dbg !2577
  br i1 %229, label %230, label %232, !dbg !2580

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2577
  store i8 34, ptr %231, align 1, !dbg !2577, !tbaa !1137
  br label %232, !dbg !2577

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2580
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2333, metadata !DIExpression()), !dbg !2393
  %234 = icmp ult i64 %233, %129, !dbg !2581
  br i1 %234, label %235, label %237, !dbg !2584

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2581
  store i8 63, ptr %236, align 1, !dbg !2581, !tbaa !1137
  br label %237, !dbg !2581

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2584
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2333, metadata !DIExpression()), !dbg !2393
  br label %433, !dbg !2585

239:                                              ; preds = %151
  br label %249, !dbg !2586

240:                                              ; preds = %151
  br label %249, !dbg !2587

241:                                              ; preds = %151
  br label %247, !dbg !2588

242:                                              ; preds = %151
  br label %247, !dbg !2589

243:                                              ; preds = %151
  br label %249, !dbg !2590

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2591

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2592

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2595

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2597
  call void @llvm.dbg.label(metadata !2356), !dbg !2598
  br i1 %118, label %.loopexit8, label %249, !dbg !2599

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2597
  call void @llvm.dbg.label(metadata !2359), !dbg !2601
  br i1 %108, label %487, label %444, !dbg !2602

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2603

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2604, !tbaa !1137
  %254 = icmp eq i8 %253, 0, !dbg !2606
  br i1 %254, label %255, label %433, !dbg !2607

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2608
  br i1 %256, label %257, label %433, !dbg !2610

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2354, metadata !DIExpression()), !dbg !2489
  br label %258, !dbg !2611

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2354, metadata !DIExpression()), !dbg !2489
  br i1 %115, label %260, label %433, !dbg !2612

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2614

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2354, metadata !DIExpression()), !dbg !2489
  br i1 %115, label %262, label %433, !dbg !2615

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2616

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2619
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2621
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2621
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2334, metadata !DIExpression()), !dbg !2393
  %269 = icmp ult i64 %123, %268, !dbg !2622
  br i1 %269, label %270, label %272, !dbg !2625

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2622
  store i8 39, ptr %271, align 1, !dbg !2622, !tbaa !1137
  br label %272, !dbg !2622

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2625
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2333, metadata !DIExpression()), !dbg !2393
  %274 = icmp ult i64 %273, %268, !dbg !2626
  br i1 %274, label %275, label %277, !dbg !2629

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2626
  store i8 92, ptr %276, align 1, !dbg !2626, !tbaa !1137
  br label %277, !dbg !2626

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2333, metadata !DIExpression()), !dbg !2393
  %279 = icmp ult i64 %278, %268, !dbg !2630
  br i1 %279, label %280, label %282, !dbg !2633

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2630
  store i8 39, ptr %281, align 1, !dbg !2630, !tbaa !1137
  br label %282, !dbg !2630

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2633
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2393
  br label %433, !dbg !2634

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2635

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2360, metadata !DIExpression()), !dbg !2636
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !2637
  %287 = load ptr, ptr %286, align 8, !dbg !2637, !tbaa !1066
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2637
  %290 = load i16, ptr %289, align 2, !dbg !2637, !tbaa !1169
  %291 = and i16 %290, 16384, !dbg !2637
  %292 = icmp ne i16 %291, 0, !dbg !2639
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2636
  br label %334, !dbg !2640

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2641
  call void @llvm.dbg.value(metadata ptr %14, metadata !2418, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %14, metadata !2426, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 0, metadata !2429, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i64 8, metadata !2430, metadata !DIExpression()), !dbg !2644
  store i64 0, ptr %14, align 8, !dbg !2646
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2360, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2362, metadata !DIExpression()), !dbg !2636
  %294 = icmp eq i64 %152, -1, !dbg !2647
  br i1 %294, label %295, label %297, !dbg !2649

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2326, metadata !DIExpression()), !dbg !2393
  br label %297, !dbg !2651

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2326, metadata !DIExpression()), !dbg !2393
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2652
  %299 = sub i64 %298, %128, !dbg !2653
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !2654
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2370, metadata !DIExpression()), !dbg !2392
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2655

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2360, metadata !DIExpression()), !dbg !2636
  %302 = icmp ult i64 %128, %298, !dbg !2656
  br i1 %302, label %.preheader5, label %329, !dbg !2658

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2659

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2636
  br label %329, !dbg !2660

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2360, metadata !DIExpression()), !dbg !2636
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2662
  %308 = load i8, ptr %307, align 1, !dbg !2662, !tbaa !1137
  %309 = icmp eq i8 %308, 0, !dbg !2658
  br i1 %309, label %.loopexit6, label %310, !dbg !2659

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2360, metadata !DIExpression()), !dbg !2636
  %312 = add i64 %311, %128, !dbg !2664
  %313 = icmp eq i64 %311, %299, !dbg !2656
  br i1 %313, label %.loopexit6, label %304, !dbg !2658, !llvm.loop !2665

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2371, metadata !DIExpression()), !dbg !2666
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2667
  %317 = and i1 %316, %109, !dbg !2667
  br i1 %317, label %.preheader3, label %325, !dbg !2667

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2668

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2371, metadata !DIExpression()), !dbg !2666
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2669
  %321 = load i8, ptr %320, align 1, !dbg !2669, !tbaa !1137
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2671

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2371, metadata !DIExpression()), !dbg !2666
  %324 = icmp eq i64 %323, %300, !dbg !2673
  br i1 %324, label %.loopexit4, label %318, !dbg !2668, !llvm.loop !2674

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2676

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2676, !tbaa !1128
  call void @llvm.dbg.value(metadata i32 %326, metadata !2678, metadata !DIExpression()), !dbg !2686
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !2688
  %328 = icmp ne i32 %327, 0, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2362, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2360, metadata !DIExpression()), !dbg !2636
  br label %329, !dbg !2690

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2691

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2362, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2360, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2692
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2362, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2360, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2692
  call void @llvm.dbg.label(metadata !2384), !dbg !2693
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2694
  br label %624, !dbg !2694

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2489
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2696
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2362, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2360, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2326, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2489
  %338 = icmp ult i64 %336, 2, !dbg !2697
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2698
  br i1 %340, label %433, label %341, !dbg !2698

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2379, metadata !DIExpression()), !dbg !2700
  br label %343, !dbg !2701

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2393
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2480
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2355, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2353, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2350, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2348, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2333, metadata !DIExpression()), !dbg !2393
  br i1 %339, label %394, label %350, !dbg !2702

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2707

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2353, metadata !DIExpression()), !dbg !2489
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2710
  br i1 %352, label %369, label %353, !dbg !2710

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2712
  br i1 %354, label %355, label %357, !dbg !2716

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2712
  store i8 39, ptr %356, align 1, !dbg !2712, !tbaa !1137
  br label %357, !dbg !2712

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2333, metadata !DIExpression()), !dbg !2393
  %359 = icmp ult i64 %358, %129, !dbg !2717
  br i1 %359, label %360, label %362, !dbg !2720

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2717
  store i8 36, ptr %361, align 1, !dbg !2717, !tbaa !1137
  br label %362, !dbg !2717

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2333, metadata !DIExpression()), !dbg !2393
  %364 = icmp ult i64 %363, %129, !dbg !2721
  br i1 %364, label %365, label %367, !dbg !2724

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2721
  store i8 39, ptr %366, align 1, !dbg !2721, !tbaa !1137
  br label %367, !dbg !2721

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2342, metadata !DIExpression()), !dbg !2393
  br label %369, !dbg !2725

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2393
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2333, metadata !DIExpression()), !dbg !2393
  %372 = icmp ult i64 %370, %129, !dbg !2726
  br i1 %372, label %373, label %375, !dbg !2729

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2726
  store i8 92, ptr %374, align 1, !dbg !2726, !tbaa !1137
  br label %375, !dbg !2726

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2333, metadata !DIExpression()), !dbg !2393
  %377 = icmp ult i64 %376, %129, !dbg !2730
  br i1 %377, label %378, label %382, !dbg !2733

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2730
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2730
  store i8 %380, ptr %381, align 1, !dbg !2730, !tbaa !1137
  br label %382, !dbg !2730

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2733
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2333, metadata !DIExpression()), !dbg !2393
  %384 = icmp ult i64 %383, %129, !dbg !2734
  br i1 %384, label %385, label %390, !dbg !2737

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2734
  %388 = or disjoint i8 %387, 48, !dbg !2734
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2734
  store i8 %388, ptr %389, align 1, !dbg !2734, !tbaa !1137
  br label %390, !dbg !2734

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2333, metadata !DIExpression()), !dbg !2393
  %392 = and i8 %349, 7, !dbg !2738
  %393 = or disjoint i8 %392, 48, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2355, metadata !DIExpression()), !dbg !2489
  br label %401, !dbg !2740

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2741

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2742
  br i1 %396, label %397, label %399, !dbg !2747

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2742
  store i8 92, ptr %398, align 1, !dbg !2742, !tbaa !1137
  br label %399, !dbg !2742

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2489
  br label %401, !dbg !2748

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2393
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2355, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2353, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2350, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2333, metadata !DIExpression()), !dbg !2393
  %407 = add i64 %346, 1, !dbg !2749
  %408 = icmp ugt i64 %342, %407, !dbg !2751
  br i1 %408, label %409, label %.loopexit2, !dbg !2752

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2753
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2753
  br i1 %411, label %423, label %412, !dbg !2753

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2756
  br i1 %413, label %414, label %416, !dbg !2760

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2756
  store i8 39, ptr %415, align 1, !dbg !2756, !tbaa !1137
  br label %416, !dbg !2756

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2760
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2333, metadata !DIExpression()), !dbg !2393
  %418 = icmp ult i64 %417, %129, !dbg !2761
  br i1 %418, label %419, label %421, !dbg !2764

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2761
  store i8 39, ptr %420, align 1, !dbg !2761, !tbaa !1137
  br label %421, !dbg !2761

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2393
  br label %423, !dbg !2765

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2766
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2333, metadata !DIExpression()), !dbg !2393
  %426 = icmp ult i64 %424, %129, !dbg !2767
  br i1 %426, label %427, label %429, !dbg !2770

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2767
  store i8 %406, ptr %428, align 1, !dbg !2767, !tbaa !1137
  br label %429, !dbg !2767

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2348, metadata !DIExpression()), !dbg !2480
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2771
  %432 = load i8, ptr %431, align 1, !dbg !2771, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2355, metadata !DIExpression()), !dbg !2489
  br label %343, !dbg !2772, !llvm.loop !2773

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2776
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2393
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2397
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2480
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2489
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2355, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2354, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2353, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2350, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2348, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2326, metadata !DIExpression()), !dbg !2393
  br i1 %111, label %455, label %444, !dbg !2777

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
  br i1 %120, label %456, label %476, !dbg !2779

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2780

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
  %467 = lshr i8 %458, 5, !dbg !2781
  %468 = zext nneg i8 %467 to i64, !dbg !2781
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2782
  %470 = load i32, ptr %469, align 4, !dbg !2782, !tbaa !1128
  %471 = and i8 %458, 31, !dbg !2783
  %472 = zext nneg i8 %471 to i32, !dbg !2783
  %473 = shl nuw i32 1, %472, !dbg !2784
  %474 = and i32 %470, %473, !dbg !2784
  %475 = icmp eq i32 %474, 0, !dbg !2784
  br i1 %475, label %476, label %487, !dbg !2785

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
  br i1 %153, label %487, label %523, !dbg !2786

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2776
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2393
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2397
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2787
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2489
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2355, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2354, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2348, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2326, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.label(metadata !2382), !dbg !2788
  br i1 %109, label %.loopexit8, label %497, !dbg !2789

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2353, metadata !DIExpression()), !dbg !2489
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2791
  br i1 %498, label %515, label %499, !dbg !2791

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2793
  br i1 %500, label %501, label %503, !dbg !2797

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2793
  store i8 39, ptr %502, align 1, !dbg !2793, !tbaa !1137
  br label %503, !dbg !2793

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2333, metadata !DIExpression()), !dbg !2393
  %505 = icmp ult i64 %504, %496, !dbg !2798
  br i1 %505, label %506, label %508, !dbg !2801

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2798
  store i8 36, ptr %507, align 1, !dbg !2798, !tbaa !1137
  br label %508, !dbg !2798

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2333, metadata !DIExpression()), !dbg !2393
  %510 = icmp ult i64 %509, %496, !dbg !2802
  br i1 %510, label %511, label %513, !dbg !2805

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2802
  store i8 39, ptr %512, align 1, !dbg !2802, !tbaa !1137
  br label %513, !dbg !2802

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2805
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2342, metadata !DIExpression()), !dbg !2393
  br label %515, !dbg !2806

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2489
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2333, metadata !DIExpression()), !dbg !2393
  %518 = icmp ult i64 %516, %496, !dbg !2807
  br i1 %518, label %519, label %521, !dbg !2810

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2807
  store i8 92, ptr %520, align 1, !dbg !2807, !tbaa !1137
  br label %521, !dbg !2807

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2355, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2354, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2353, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2348, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2326, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.label(metadata !2383), !dbg !2811
  br label %547, !dbg !2812

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2393
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2489
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2480
  br label %523, !dbg !2812

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2776
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2393
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2397
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2787
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2815
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2355, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2354, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2353, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2348, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2326, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.label(metadata !2383), !dbg !2811
  %534 = xor i1 %528, true, !dbg !2812
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2812
  br i1 %535, label %547, label %536, !dbg !2812

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2816
  br i1 %537, label %538, label %540, !dbg !2820

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2816
  store i8 39, ptr %539, align 1, !dbg !2816, !tbaa !1137
  br label %540, !dbg !2816

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2820
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2333, metadata !DIExpression()), !dbg !2393
  %542 = icmp ult i64 %541, %533, !dbg !2821
  br i1 %542, label %543, label %545, !dbg !2824

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2821
  store i8 39, ptr %544, align 1, !dbg !2821, !tbaa !1137
  br label %545, !dbg !2821

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2393
  br label %547, !dbg !2825

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2489
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2333, metadata !DIExpression()), !dbg !2393
  %557 = icmp ult i64 %555, %548, !dbg !2826
  br i1 %557, label %558, label %560, !dbg !2829

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2826
  store i8 %549, ptr %559, align 1, !dbg !2826, !tbaa !1137
  br label %560, !dbg !2826

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2333, metadata !DIExpression()), !dbg !2393
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2830
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2340, metadata !DIExpression()), !dbg !2393
  br label %563, !dbg !2831

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2776
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2393
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2397
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2787
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2348, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2342, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2340, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2326, metadata !DIExpression()), !dbg !2393
  %572 = add i64 %570, 1, !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2348, metadata !DIExpression()), !dbg !2480
  br label %121, !dbg !2833, !llvm.loop !2834

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2468
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2397
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2324, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2340, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2334, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2333, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2326, metadata !DIExpression()), !dbg !2393
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2836
  %575 = xor i1 %109, true, !dbg !2838
  %576 = or i1 %574, %575, !dbg !2838
  %577 = or i1 %576, %110, !dbg !2838
  br i1 %577, label %578, label %.loopexit13, !dbg !2838

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2839
  %580 = xor i1 %.lcssa38, true, !dbg !2839
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2839
  br i1 %581, label %589, label %582, !dbg !2839

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2841

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2397
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2843
  br label %638, !dbg !2845

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2846
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2848
  br i1 %588, label %27, label %589, !dbg !2848

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2393
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2468
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2849
  %592 = or i1 %591, %590, !dbg !2851
  br i1 %592, label %608, label %593, !dbg !2851

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2335, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2333, metadata !DIExpression()), !dbg !2393
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2852, !tbaa !1137
  %595 = icmp eq i8 %594, 0, !dbg !2855
  br i1 %595, label %608, label %.preheader, !dbg !2855

.preheader:                                       ; preds = %593
  br label %596, !dbg !2855

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2335, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2333, metadata !DIExpression()), !dbg !2393
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2856
  br i1 %600, label %601, label %603, !dbg !2859

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2856
  store i8 %597, ptr %602, align 1, !dbg !2856, !tbaa !1137
  br label %603, !dbg !2856

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2333, metadata !DIExpression()), !dbg !2393
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2860
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2335, metadata !DIExpression()), !dbg !2393
  %606 = load i8, ptr %605, align 1, !dbg !2852, !tbaa !1137
  %607 = icmp eq i8 %606, 0, !dbg !2855
  br i1 %607, label %.loopexit, label %596, !dbg !2855, !llvm.loop !2861

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2859
  br label %608, !dbg !2863

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2333, metadata !DIExpression()), !dbg !2393
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2863
  br i1 %610, label %611, label %638, !dbg !2865

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2866
  store i8 0, ptr %612, align 1, !dbg !2867, !tbaa !1137
  br label %638, !dbg !2866

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2384), !dbg !2693
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2868
  br i1 %614, label %624, label %630, !dbg !2694

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2489
  br label %615, !dbg !2868

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2868

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2868

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2384), !dbg !2693
  %622 = icmp eq i32 %616, 2, !dbg !2868
  %623 = select i1 %619, i32 4, i32 2, !dbg !2694
  br i1 %622, label %624, label %630, !dbg !2694

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2694

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2495
  br label %630, !dbg !2869

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2327, metadata !DIExpression()), !dbg !2393
  %636 = and i32 %5, -3, !dbg !2869
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2870
  br label %638, !dbg !2871

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2872
}

; Function Attrs: nounwind
declare !dbg !2873 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2876 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2877 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2879 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2883, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2884, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2885, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata ptr %0, metadata !2887, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2892, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr null, metadata !2893, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %2, metadata !2894, metadata !DIExpression()), !dbg !2900
  %4 = icmp eq ptr %2, null, !dbg !2902
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %5, metadata !2895, metadata !DIExpression()), !dbg !2900
  %6 = tail call ptr @__errno_location() #43, !dbg !2903
  %7 = load i32, ptr %6, align 4, !dbg !2903, !tbaa !1128
  call void @llvm.dbg.value(metadata i32 %7, metadata !2896, metadata !DIExpression()), !dbg !2900
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2904
  %9 = load i32, ptr %8, align 4, !dbg !2904, !tbaa !2267
  %10 = or i32 %9, 1, !dbg !2905
  call void @llvm.dbg.value(metadata i32 %10, metadata !2897, metadata !DIExpression()), !dbg !2900
  %11 = load i32, ptr %5, align 8, !dbg !2906, !tbaa !2217
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2907
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2908
  %14 = load ptr, ptr %13, align 8, !dbg !2908, !tbaa !2288
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2909
  %16 = load ptr, ptr %15, align 8, !dbg !2909, !tbaa !2291
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2910
  %18 = add i64 %17, 1, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %18, metadata !2898, metadata !DIExpression()), !dbg !2900
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !2912
  call void @llvm.dbg.value(metadata ptr %19, metadata !2899, metadata !DIExpression()), !dbg !2900
  %20 = load i32, ptr %5, align 8, !dbg !2913, !tbaa !2217
  %21 = load ptr, ptr %13, align 8, !dbg !2914, !tbaa !2288
  %22 = load ptr, ptr %15, align 8, !dbg !2915, !tbaa !2291
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2916
  store i32 %7, ptr %6, align 4, !dbg !2917, !tbaa !1128
  ret ptr %19, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2888 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2887, metadata !DIExpression()), !dbg !2919
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2892, metadata !DIExpression()), !dbg !2919
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2893, metadata !DIExpression()), !dbg !2919
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2894, metadata !DIExpression()), !dbg !2919
  %5 = icmp eq ptr %3, null, !dbg !2920
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2895, metadata !DIExpression()), !dbg !2919
  %7 = tail call ptr @__errno_location() #43, !dbg !2921
  %8 = load i32, ptr %7, align 4, !dbg !2921, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2896, metadata !DIExpression()), !dbg !2919
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2922
  %10 = load i32, ptr %9, align 4, !dbg !2922, !tbaa !2267
  %11 = icmp eq ptr %2, null, !dbg !2923
  %12 = zext i1 %11 to i32, !dbg !2923
  %13 = or i32 %10, %12, !dbg !2924
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2897, metadata !DIExpression()), !dbg !2919
  %14 = load i32, ptr %6, align 8, !dbg !2925, !tbaa !2217
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2926
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2927
  %17 = load ptr, ptr %16, align 8, !dbg !2927, !tbaa !2288
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2928
  %19 = load ptr, ptr %18, align 8, !dbg !2928, !tbaa !2291
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2929
  %21 = add i64 %20, 1, !dbg !2930
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2898, metadata !DIExpression()), !dbg !2919
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !2931
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2899, metadata !DIExpression()), !dbg !2919
  %23 = load i32, ptr %6, align 8, !dbg !2932, !tbaa !2217
  %24 = load ptr, ptr %16, align 8, !dbg !2933, !tbaa !2288
  %25 = load ptr, ptr %18, align 8, !dbg !2934, !tbaa !2291
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2935
  store i32 %8, ptr %7, align 4, !dbg !2936, !tbaa !1128
  br i1 %11, label %28, label %27, !dbg !2937

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2938, !tbaa !1807
  br label %28, !dbg !2940

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2941
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2942 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2947, !tbaa !1066
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2944, metadata !DIExpression()), !dbg !2948
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2945, metadata !DIExpression()), !dbg !2949
  %2 = load i32, ptr @nslots, align 4, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2945, metadata !DIExpression()), !dbg !2949
  %3 = icmp sgt i32 %2, 1, !dbg !2950
  br i1 %3, label %4, label %6, !dbg !2952

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2950
  br label %10, !dbg !2952

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2953

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2953
  %8 = load ptr, ptr %7, align 8, !dbg !2953, !tbaa !2955
  %9 = icmp eq ptr %8, @slot0, !dbg !2957
  br i1 %9, label %17, label %16, !dbg !2958

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2945, metadata !DIExpression()), !dbg !2949
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2959
  %13 = load ptr, ptr %12, align 8, !dbg !2959, !tbaa !2955
  tail call void @free(ptr noundef %13) #40, !dbg !2960
  %14 = add nuw nsw i64 %11, 1, !dbg !2961
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2945, metadata !DIExpression()), !dbg !2949
  %15 = icmp eq i64 %14, %5, !dbg !2950
  br i1 %15, label %.loopexit, label %10, !dbg !2952, !llvm.loop !2962

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2964
  store i64 256, ptr @slotvec0, align 8, !dbg !2966, !tbaa !2967
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2968, !tbaa !2955
  br label %17, !dbg !2969

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2970
  br i1 %18, label %20, label %19, !dbg !2972

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2973
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2975, !tbaa !1066
  br label %20, !dbg !2976

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2977, !tbaa !1128
  ret void, !dbg !2978
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2979 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !2983
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2982, metadata !DIExpression()), !dbg !2983
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2984
  ret ptr %3, !dbg !2985
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2986 {
  %5 = alloca i64, align 8, !DIAssignID !3006
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3000, metadata !DIExpression(), metadata !3006, metadata ptr %5, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2990, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2991, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2992, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !3008
  %6 = tail call ptr @__errno_location() #43, !dbg !3009
  %7 = load i32, ptr %6, align 4, !dbg !3009, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2994, metadata !DIExpression()), !dbg !3008
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3010, !tbaa !1066
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2995, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2996, metadata !DIExpression()), !dbg !3008
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3011
  br i1 %9, label %10, label %11, !dbg !3011

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3013
  unreachable, !dbg !3013

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3014, !tbaa !1128
  %13 = icmp sgt i32 %12, %0, !dbg !3015
  br i1 %13, label %32, label %14, !dbg !3016

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3017
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3007
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3018
  %16 = sext i32 %12 to i64, !dbg !3019
  store i64 %16, ptr %5, align 8, !dbg !3020, !tbaa !1807, !DIAssignID !3021
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3000, metadata !DIExpression(), metadata !3021, metadata ptr %5, metadata !DIExpression()), !dbg !3007
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3022
  %18 = add nuw nsw i32 %0, 1, !dbg !3023
  %19 = sub i32 %18, %12, !dbg !3024
  %20 = sext i32 %19 to i64, !dbg !3025
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2995, metadata !DIExpression()), !dbg !3008
  store ptr %21, ptr @slotvec, align 8, !dbg !3027, !tbaa !1066
  br i1 %15, label %22, label %23, !dbg !3028

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3029, !tbaa.struct !3031
  br label %23, !dbg !3032

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3033, !tbaa !1128
  %25 = sext i32 %24 to i64, !dbg !3034
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3034
  %27 = load i64, ptr %5, align 8, !dbg !3035, !tbaa !1807
  %28 = sub nsw i64 %27, %25, !dbg !3036
  %29 = shl i64 %28, 4, !dbg !3037
  call void @llvm.dbg.value(metadata ptr %26, metadata !2426, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 0, metadata !2429, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %29, metadata !2430, metadata !DIExpression()), !dbg !3038
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3040
  %30 = load i64, ptr %5, align 8, !dbg !3041, !tbaa !1807
  %31 = trunc i64 %30 to i32, !dbg !3041
  store i32 %31, ptr @nslots, align 4, !dbg !3042, !tbaa !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3043
  br label %32, !dbg !3044

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3008
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2995, metadata !DIExpression()), !dbg !3008
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3045
  %36 = load i64, ptr %35, align 8, !dbg !3046, !tbaa !2967
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3001, metadata !DIExpression()), !dbg !3047
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3048
  %38 = load ptr, ptr %37, align 8, !dbg !3048, !tbaa !2955
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3003, metadata !DIExpression()), !dbg !3047
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3049
  %40 = load i32, ptr %39, align 4, !dbg !3049, !tbaa !2267
  %41 = or i32 %40, 1, !dbg !3050
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3004, metadata !DIExpression()), !dbg !3047
  %42 = load i32, ptr %3, align 8, !dbg !3051, !tbaa !2217
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3052
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3053
  %45 = load ptr, ptr %44, align 8, !dbg !3053, !tbaa !2288
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3054
  %47 = load ptr, ptr %46, align 8, !dbg !3054, !tbaa !2291
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3005, metadata !DIExpression()), !dbg !3047
  %49 = icmp ugt i64 %36, %48, !dbg !3056
  br i1 %49, label %60, label %50, !dbg !3058

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3059
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3001, metadata !DIExpression()), !dbg !3047
  store i64 %51, ptr %35, align 8, !dbg !3061, !tbaa !2967
  %52 = icmp eq ptr %38, @slot0, !dbg !3062
  br i1 %52, label %54, label %53, !dbg !3064

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3065
  br label %54, !dbg !3065

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3066
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3003, metadata !DIExpression()), !dbg !3047
  store ptr %55, ptr %37, align 8, !dbg !3067, !tbaa !2955
  %56 = load i32, ptr %3, align 8, !dbg !3068, !tbaa !2217
  %57 = load ptr, ptr %44, align 8, !dbg !3069, !tbaa !2288
  %58 = load ptr, ptr %46, align 8, !dbg !3070, !tbaa !2291
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3071
  br label %60, !dbg !3072

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3047
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3003, metadata !DIExpression()), !dbg !3047
  store i32 %7, ptr %6, align 4, !dbg !3073, !tbaa !1128
  ret ptr %61, !dbg !3074
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3079, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3080, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3081, metadata !DIExpression()), !dbg !3082
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3083
  ret ptr %4, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3085 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 0, metadata !2981, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %0, metadata !2982, metadata !DIExpression()), !dbg !3089
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3091
  ret ptr %2, !dbg !3092
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3093 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3097, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 0, metadata !3079, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %0, metadata !3080, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3100
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3102
  ret ptr %3, !dbg !3103
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3104 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3112
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3111, metadata !DIExpression(), metadata !3112, metadata ptr %4, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3108, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3109, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3110, metadata !DIExpression()), !dbg !3113
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %1, metadata !3119, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3127, !alias.scope !3115, !DIAssignID !3128
  call void @llvm.dbg.assign(metadata i8 0, metadata !3111, metadata !DIExpression(), metadata !3128, metadata ptr %4, metadata !DIExpression()), !dbg !3113
  %5 = icmp eq i32 %1, 10, !dbg !3129
  br i1 %5, label %6, label %7, !dbg !3131

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3132, !noalias !3115
  unreachable, !dbg !3132

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3133, !tbaa !2217, !alias.scope !3115, !DIAssignID !3134
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3111, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3134, metadata ptr %4, metadata !DIExpression()), !dbg !3113
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3135
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3136
  ret ptr %8, !dbg !3137
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3138 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3147
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3146, metadata !DIExpression(), metadata !3147, metadata ptr %5, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3143, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3144, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3145, metadata !DIExpression()), !dbg !3148
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %1, metadata !3119, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3124, metadata !DIExpression()), !dbg !3156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3156, !alias.scope !3150, !DIAssignID !3157
  call void @llvm.dbg.assign(metadata i8 0, metadata !3146, metadata !DIExpression(), metadata !3157, metadata ptr %5, metadata !DIExpression()), !dbg !3148
  %6 = icmp eq i32 %1, 10, !dbg !3158
  br i1 %6, label %7, label %8, !dbg !3159

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3160, !noalias !3150
  unreachable, !dbg !3160

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3161, !tbaa !2217, !alias.scope !3150, !DIAssignID !3162
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3146, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3162, metadata ptr %5, metadata !DIExpression()), !dbg !3148
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3163
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3164
  ret ptr %9, !dbg !3165
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3166 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3172
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3170, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3171, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3111, metadata !DIExpression(), metadata !3172, metadata ptr %3, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i32 0, metadata !3108, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i32 %0, metadata !3109, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %1, metadata !3110, metadata !DIExpression()), !dbg !3174
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3177), !dbg !3180
  call void @llvm.dbg.value(metadata i32 %0, metadata !3119, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3124, metadata !DIExpression()), !dbg !3183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3183, !alias.scope !3177, !DIAssignID !3184
  call void @llvm.dbg.assign(metadata i8 0, metadata !3111, metadata !DIExpression(), metadata !3184, metadata ptr %3, metadata !DIExpression()), !dbg !3174
  %4 = icmp eq i32 %0, 10, !dbg !3185
  br i1 %4, label %5, label %6, !dbg !3186

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3187, !noalias !3177
  unreachable, !dbg !3187

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3188, !tbaa !2217, !alias.scope !3177, !DIAssignID !3189
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3111, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3189, metadata ptr %3, metadata !DIExpression()), !dbg !3174
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3190
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3191
  ret ptr %7, !dbg !3192
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3193 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3200
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3197, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3198, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3199, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3146, metadata !DIExpression(), metadata !3200, metadata ptr %4, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i32 %0, metadata !3143, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr %1, metadata !3144, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %2, metadata !3145, metadata !DIExpression()), !dbg !3202
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3205), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %0, metadata !3119, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3124, metadata !DIExpression()), !dbg !3211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3211, !alias.scope !3205, !DIAssignID !3212
  call void @llvm.dbg.assign(metadata i8 0, metadata !3146, metadata !DIExpression(), metadata !3212, metadata ptr %4, metadata !DIExpression()), !dbg !3202
  %5 = icmp eq i32 %0, 10, !dbg !3213
  br i1 %5, label %6, label %7, !dbg !3214

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3215, !noalias !3205
  unreachable, !dbg !3215

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3216, !tbaa !2217, !alias.scope !3205, !DIAssignID !3217
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3146, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3217, metadata ptr %4, metadata !DIExpression()), !dbg !3202
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3218
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3219
  ret ptr %8, !dbg !3220
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3221 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3229
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3229, metadata ptr %4, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3226, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3227, metadata !DIExpression()), !dbg !3230
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3232, !tbaa.struct !3233, !DIAssignID !3234
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3234, metadata ptr %4, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2234, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2235, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2237, metadata !DIExpression()), !dbg !3235
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3237
  %6 = lshr i8 %2, 5, !dbg !3238
  %7 = zext nneg i8 %6 to i64, !dbg !3238
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3239
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2238, metadata !DIExpression()), !dbg !3235
  %9 = and i8 %2, 31, !dbg !3240
  %10 = zext nneg i8 %9 to i32, !dbg !3240
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2240, metadata !DIExpression()), !dbg !3235
  %11 = load i32, ptr %8, align 4, !dbg !3241, !tbaa !1128
  %12 = lshr i32 %11, %10, !dbg !3242
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2241, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3235
  %13 = and i32 %12, 1, !dbg !3243
  %14 = xor i32 %13, 1, !dbg !3243
  %15 = shl nuw i32 %14, %10, !dbg !3244
  %16 = xor i32 %15, %11, !dbg !3245
  store i32 %16, ptr %8, align 4, !dbg !3245, !tbaa !1128
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3246
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3247
  ret ptr %17, !dbg !3248
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3249 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3255
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3254, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3255, metadata ptr %3, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 -1, metadata !3226, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 %1, metadata !3227, metadata !DIExpression()), !dbg !3257
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3260, !tbaa.struct !3233, !DIAssignID !3261
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3261, metadata ptr %3, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %3, metadata !2234, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %1, metadata !2235, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %1, metadata !2237, metadata !DIExpression()), !dbg !3262
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3264
  %5 = lshr i8 %1, 5, !dbg !3265
  %6 = zext nneg i8 %5 to i64, !dbg !3265
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %7, metadata !2238, metadata !DIExpression()), !dbg !3262
  %8 = and i8 %1, 31, !dbg !3267
  %9 = zext nneg i8 %8 to i32, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %9, metadata !2240, metadata !DIExpression()), !dbg !3262
  %10 = load i32, ptr %7, align 4, !dbg !3268, !tbaa !1128
  %11 = lshr i32 %10, %9, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %11, metadata !2241, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3262
  %12 = and i32 %11, 1, !dbg !3270
  %13 = xor i32 %12, 1, !dbg !3270
  %14 = shl nuw i32 %13, %9, !dbg !3271
  %15 = xor i32 %14, %10, !dbg !3272
  store i32 %15, ptr %7, align 4, !dbg !3272, !tbaa !1128
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3273
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3274
  ret ptr %16, !dbg !3275
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3276 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3279
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 58, metadata !3254, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3279, metadata ptr %2, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 -1, metadata !3226, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 58, metadata !3227, metadata !DIExpression()), !dbg !3283
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3286, !tbaa.struct !3233, !DIAssignID !3287
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3287, metadata ptr %2, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %2, metadata !2234, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 58, metadata !2235, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 58, metadata !2237, metadata !DIExpression()), !dbg !3288
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3290
  call void @llvm.dbg.value(metadata ptr %3, metadata !2238, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 26, metadata !2240, metadata !DIExpression()), !dbg !3288
  %4 = load i32, ptr %3, align 4, !dbg !3291, !tbaa !1128
  call void @llvm.dbg.value(metadata i32 %4, metadata !2241, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3288
  %5 = or i32 %4, 67108864, !dbg !3292
  store i32 %5, ptr %3, align 4, !dbg !3292, !tbaa !1128
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3293
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3294
  ret ptr %6, !dbg !3295
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3296 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3300
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3298, metadata !DIExpression()), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3299, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3300, metadata ptr %3, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3226, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 58, metadata !3227, metadata !DIExpression()), !dbg !3302
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3305, !tbaa.struct !3233, !DIAssignID !3306
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3306, metadata ptr %3, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %3, metadata !2234, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 58, metadata !2235, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 58, metadata !2237, metadata !DIExpression()), !dbg !3307
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %4, metadata !2238, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i32 26, metadata !2240, metadata !DIExpression()), !dbg !3307
  %5 = load i32, ptr %4, align 4, !dbg !3310, !tbaa !1128
  call void @llvm.dbg.value(metadata i32 %5, metadata !2241, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3307
  %6 = or i32 %5, 67108864, !dbg !3311
  store i32 %6, ptr %4, align 4, !dbg !3311, !tbaa !1128
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3312
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3313
  ret ptr %7, !dbg !3314
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3315 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3321
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3320, metadata !DIExpression(), metadata !3321, metadata ptr %4, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3124, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3323
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3317, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3318, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %1, metadata !3119, metadata !DIExpression()), !dbg !3326
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3326
  %5 = icmp eq i32 %1, 10, !dbg !3327
  br i1 %5, label %6, label %7, !dbg !3328

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3329, !noalias !3330
  unreachable, !dbg !3329

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3326
  store i32 %1, ptr %4, align 8, !dbg !3333, !tbaa.struct !3233, !DIAssignID !3334
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3333
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3320, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3334, metadata ptr %4, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3320, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3335, metadata ptr %8, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2234, metadata !DIExpression()), !dbg !3336
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2235, metadata !DIExpression()), !dbg !3336
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !3336
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2237, metadata !DIExpression()), !dbg !3336
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3338
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2238, metadata !DIExpression()), !dbg !3336
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2240, metadata !DIExpression()), !dbg !3336
  %10 = load i32, ptr %9, align 4, !dbg !3339, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2241, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3336
  %11 = or i32 %10, 67108864, !dbg !3340
  store i32 %11, ptr %9, align 4, !dbg !3340, !tbaa !1128, !DIAssignID !3341
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3341, metadata ptr %9, metadata !DIExpression()), !dbg !3322
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3342
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3343
  ret ptr %12, !dbg !3344
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3345 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3353
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3349, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3350, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3351, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(), metadata !3353, metadata ptr %5, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 %0, metadata !3360, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %1, metadata !3361, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %2, metadata !3362, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i64 -1, metadata !3364, metadata !DIExpression()), !dbg !3365
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3368, !tbaa.struct !3233, !DIAssignID !3369
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(), metadata !3369, metadata ptr %5, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3370, metadata ptr undef, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %5, metadata !2274, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %1, metadata !2275, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %2, metadata !2276, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %5, metadata !2274, metadata !DIExpression()), !dbg !3371
  store i32 10, ptr %5, align 8, !dbg !3373, !tbaa !2217, !DIAssignID !3374
  call void @llvm.dbg.assign(metadata i32 10, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3374, metadata ptr %5, metadata !DIExpression()), !dbg !3365
  %6 = icmp ne ptr %1, null, !dbg !3375
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3376
  br i1 %8, label %10, label %9, !dbg !3376

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3377
  unreachable, !dbg !3377

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3378
  store ptr %1, ptr %11, align 8, !dbg !3379, !tbaa !2288, !DIAssignID !3380
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3380, metadata ptr %11, metadata !DIExpression()), !dbg !3365
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3381
  store ptr %2, ptr %12, align 8, !dbg !3382, !tbaa !2291, !DIAssignID !3383
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3383, metadata ptr %12, metadata !DIExpression()), !dbg !3365
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3384
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3385
  ret ptr %13, !dbg !3386
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3356 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3387
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(), metadata !3387, metadata ptr %6, metadata !DIExpression()), !dbg !3388
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3360, metadata !DIExpression()), !dbg !3388
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3361, metadata !DIExpression()), !dbg !3388
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3362, metadata !DIExpression()), !dbg !3388
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3364, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3390, !tbaa.struct !3233, !DIAssignID !3391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(), metadata !3391, metadata ptr %6, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3392, metadata ptr undef, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata ptr %6, metadata !2274, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata ptr %1, metadata !2275, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata ptr %2, metadata !2276, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata ptr %6, metadata !2274, metadata !DIExpression()), !dbg !3393
  store i32 10, ptr %6, align 8, !dbg !3395, !tbaa !2217, !DIAssignID !3396
  call void @llvm.dbg.assign(metadata i32 10, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3396, metadata ptr %6, metadata !DIExpression()), !dbg !3388
  %7 = icmp ne ptr %1, null, !dbg !3397
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3398
  br i1 %9, label %11, label %10, !dbg !3398

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3399
  unreachable, !dbg !3399

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3400
  store ptr %1, ptr %12, align 8, !dbg !3401, !tbaa !2288, !DIAssignID !3402
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3402, metadata ptr %12, metadata !DIExpression()), !dbg !3388
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3403
  store ptr %2, ptr %13, align 8, !dbg !3404, !tbaa !2291, !DIAssignID !3405
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3405, metadata ptr %13, metadata !DIExpression()), !dbg !3388
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3406
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3407
  ret ptr %14, !dbg !3408
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3409 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3416
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3413, metadata !DIExpression()), !dbg !3417
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3414, metadata !DIExpression()), !dbg !3417
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata ptr %0, metadata !3350, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata ptr %1, metadata !3351, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(), metadata !3416, metadata ptr %4, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 0, metadata !3360, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %0, metadata !3361, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %1, metadata !3362, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %2, metadata !3363, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 -1, metadata !3364, metadata !DIExpression()), !dbg !3420
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3423, !tbaa.struct !3233, !DIAssignID !3424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(), metadata !3424, metadata ptr %4, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3425, metadata ptr undef, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %4, metadata !2274, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %0, metadata !2275, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %1, metadata !2276, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %4, metadata !2274, metadata !DIExpression()), !dbg !3426
  store i32 10, ptr %4, align 8, !dbg !3428, !tbaa !2217, !DIAssignID !3429
  call void @llvm.dbg.assign(metadata i32 10, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3429, metadata ptr %4, metadata !DIExpression()), !dbg !3420
  %5 = icmp ne ptr %0, null, !dbg !3430
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3431
  br i1 %7, label %9, label %8, !dbg !3431

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3432
  unreachable, !dbg !3432

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3433
  store ptr %0, ptr %10, align 8, !dbg !3434, !tbaa !2288, !DIAssignID !3435
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3435, metadata ptr %10, metadata !DIExpression()), !dbg !3420
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3436
  store ptr %1, ptr %11, align 8, !dbg !3437, !tbaa !2291, !DIAssignID !3438
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3438, metadata ptr %11, metadata !DIExpression()), !dbg !3420
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3439
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3440
  ret ptr %12, !dbg !3441
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3442 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3450
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3451
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3447, metadata !DIExpression()), !dbg !3451
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3449, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(), metadata !3450, metadata ptr %5, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 0, metadata !3360, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %0, metadata !3361, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %1, metadata !3362, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %2, metadata !3363, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i64 %3, metadata !3364, metadata !DIExpression()), !dbg !3452
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3455, !tbaa.struct !3233, !DIAssignID !3456
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(), metadata !3456, metadata ptr %5, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3457, metadata ptr undef, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata ptr %5, metadata !2274, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata ptr %0, metadata !2275, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata ptr %1, metadata !2276, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata ptr %5, metadata !2274, metadata !DIExpression()), !dbg !3458
  store i32 10, ptr %5, align 8, !dbg !3460, !tbaa !2217, !DIAssignID !3461
  call void @llvm.dbg.assign(metadata i32 10, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3461, metadata ptr %5, metadata !DIExpression()), !dbg !3452
  %6 = icmp ne ptr %0, null, !dbg !3462
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3463
  br i1 %8, label %10, label %9, !dbg !3463

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3464
  unreachable, !dbg !3464

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3465
  store ptr %0, ptr %11, align 8, !dbg !3466, !tbaa !2288, !DIAssignID !3467
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3467, metadata ptr %11, metadata !DIExpression()), !dbg !3452
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3468
  store ptr %1, ptr %12, align 8, !dbg !3469, !tbaa !2291, !DIAssignID !3470
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3355, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3470, metadata ptr %12, metadata !DIExpression()), !dbg !3452
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3471
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3472
  ret ptr %13, !dbg !3473
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3474 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3478, metadata !DIExpression()), !dbg !3481
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3479, metadata !DIExpression()), !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3480, metadata !DIExpression()), !dbg !3481
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3482
  ret ptr %4, !dbg !3483
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3484 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3488, metadata !DIExpression()), !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3478, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %1, metadata !3480, metadata !DIExpression()), !dbg !3491
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3493
  ret ptr %3, !dbg !3494
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3495 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3499, metadata !DIExpression()), !dbg !3501
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 %0, metadata !3478, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %1, metadata !3479, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 -1, metadata !3480, metadata !DIExpression()), !dbg !3502
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3504
  ret ptr %3, !dbg !3505
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3506 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3510, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 0, metadata !3499, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata ptr %0, metadata !3500, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i32 0, metadata !3478, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 -1, metadata !3480, metadata !DIExpression()), !dbg !3514
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3516
  ret ptr %2, !dbg !3517
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3518 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3558, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3559, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3560, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3561, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3562, metadata !DIExpression()), !dbg !3563
  %7 = icmp eq ptr %1, null, !dbg !3564
  br i1 %7, label %10, label %8, !dbg !3566

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3567
  br label %12, !dbg !3567

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.82, ptr noundef %2, ptr noundef %3) #40, !dbg !3568
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.3.84, i32 noundef 5) #40, !dbg !3569
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3569
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !3570
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.5.86, i32 noundef 5) #40, !dbg !3571
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.87) #40, !dbg !3571
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !3572
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
  ], !dbg !3573

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.7.88, i32 noundef 5) #40, !dbg !3574
  %21 = load ptr, ptr %4, align 8, !dbg !3574, !tbaa !1066
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3574
  br label %147, !dbg !3576

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.8.89, i32 noundef 5) #40, !dbg !3577
  %25 = load ptr, ptr %4, align 8, !dbg !3577, !tbaa !1066
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3577
  %27 = load ptr, ptr %26, align 8, !dbg !3577, !tbaa !1066
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3577
  br label %147, !dbg !3578

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.9.90, i32 noundef 5) #40, !dbg !3579
  %31 = load ptr, ptr %4, align 8, !dbg !3579, !tbaa !1066
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3579
  %33 = load ptr, ptr %32, align 8, !dbg !3579, !tbaa !1066
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3579
  %35 = load ptr, ptr %34, align 8, !dbg !3579, !tbaa !1066
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3579
  br label %147, !dbg !3580

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.10.91, i32 noundef 5) #40, !dbg !3581
  %39 = load ptr, ptr %4, align 8, !dbg !3581, !tbaa !1066
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3581
  %41 = load ptr, ptr %40, align 8, !dbg !3581, !tbaa !1066
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3581
  %43 = load ptr, ptr %42, align 8, !dbg !3581, !tbaa !1066
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3581
  %45 = load ptr, ptr %44, align 8, !dbg !3581, !tbaa !1066
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3581
  br label %147, !dbg !3582

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.11.92, i32 noundef 5) #40, !dbg !3583
  %49 = load ptr, ptr %4, align 8, !dbg !3583, !tbaa !1066
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3583
  %51 = load ptr, ptr %50, align 8, !dbg !3583, !tbaa !1066
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3583
  %53 = load ptr, ptr %52, align 8, !dbg !3583, !tbaa !1066
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3583
  %55 = load ptr, ptr %54, align 8, !dbg !3583, !tbaa !1066
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3583
  %57 = load ptr, ptr %56, align 8, !dbg !3583, !tbaa !1066
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3583
  br label %147, !dbg !3584

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.12.93, i32 noundef 5) #40, !dbg !3585
  %61 = load ptr, ptr %4, align 8, !dbg !3585, !tbaa !1066
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3585
  %63 = load ptr, ptr %62, align 8, !dbg !3585, !tbaa !1066
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3585
  %65 = load ptr, ptr %64, align 8, !dbg !3585, !tbaa !1066
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3585
  %67 = load ptr, ptr %66, align 8, !dbg !3585, !tbaa !1066
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3585
  %69 = load ptr, ptr %68, align 8, !dbg !3585, !tbaa !1066
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3585
  %71 = load ptr, ptr %70, align 8, !dbg !3585, !tbaa !1066
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3585
  br label %147, !dbg !3586

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.13.94, i32 noundef 5) #40, !dbg !3587
  %75 = load ptr, ptr %4, align 8, !dbg !3587, !tbaa !1066
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3587
  %77 = load ptr, ptr %76, align 8, !dbg !3587, !tbaa !1066
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3587
  %79 = load ptr, ptr %78, align 8, !dbg !3587, !tbaa !1066
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3587
  %81 = load ptr, ptr %80, align 8, !dbg !3587, !tbaa !1066
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3587
  %83 = load ptr, ptr %82, align 8, !dbg !3587, !tbaa !1066
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3587
  %85 = load ptr, ptr %84, align 8, !dbg !3587, !tbaa !1066
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3587
  %87 = load ptr, ptr %86, align 8, !dbg !3587, !tbaa !1066
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3587
  br label %147, !dbg !3588

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.14.95, i32 noundef 5) #40, !dbg !3589
  %91 = load ptr, ptr %4, align 8, !dbg !3589, !tbaa !1066
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3589
  %93 = load ptr, ptr %92, align 8, !dbg !3589, !tbaa !1066
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3589
  %95 = load ptr, ptr %94, align 8, !dbg !3589, !tbaa !1066
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3589
  %97 = load ptr, ptr %96, align 8, !dbg !3589, !tbaa !1066
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3589
  %99 = load ptr, ptr %98, align 8, !dbg !3589, !tbaa !1066
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3589
  %101 = load ptr, ptr %100, align 8, !dbg !3589, !tbaa !1066
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3589
  %103 = load ptr, ptr %102, align 8, !dbg !3589, !tbaa !1066
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3589
  %105 = load ptr, ptr %104, align 8, !dbg !3589, !tbaa !1066
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3589
  br label %147, !dbg !3590

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.15.96, i32 noundef 5) #40, !dbg !3591
  %109 = load ptr, ptr %4, align 8, !dbg !3591, !tbaa !1066
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3591
  %111 = load ptr, ptr %110, align 8, !dbg !3591, !tbaa !1066
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3591
  %113 = load ptr, ptr %112, align 8, !dbg !3591, !tbaa !1066
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3591
  %115 = load ptr, ptr %114, align 8, !dbg !3591, !tbaa !1066
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3591
  %117 = load ptr, ptr %116, align 8, !dbg !3591, !tbaa !1066
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3591
  %119 = load ptr, ptr %118, align 8, !dbg !3591, !tbaa !1066
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3591
  %121 = load ptr, ptr %120, align 8, !dbg !3591, !tbaa !1066
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3591
  %123 = load ptr, ptr %122, align 8, !dbg !3591, !tbaa !1066
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3591
  %125 = load ptr, ptr %124, align 8, !dbg !3591, !tbaa !1066
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3591
  br label %147, !dbg !3592

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.16.97, i32 noundef 5) #40, !dbg !3593
  %129 = load ptr, ptr %4, align 8, !dbg !3593, !tbaa !1066
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3593
  %131 = load ptr, ptr %130, align 8, !dbg !3593, !tbaa !1066
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3593
  %133 = load ptr, ptr %132, align 8, !dbg !3593, !tbaa !1066
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3593
  %135 = load ptr, ptr %134, align 8, !dbg !3593, !tbaa !1066
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3593
  %137 = load ptr, ptr %136, align 8, !dbg !3593, !tbaa !1066
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3593
  %139 = load ptr, ptr %138, align 8, !dbg !3593, !tbaa !1066
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3593
  %141 = load ptr, ptr %140, align 8, !dbg !3593, !tbaa !1066
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3593
  %143 = load ptr, ptr %142, align 8, !dbg !3593, !tbaa !1066
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3593
  %145 = load ptr, ptr %144, align 8, !dbg !3593, !tbaa !1066
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3593
  br label %147, !dbg !3594

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3595
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3596 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3606
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3601, metadata !DIExpression()), !dbg !3606
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3602, metadata !DIExpression()), !dbg !3606
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3603, metadata !DIExpression()), !dbg !3606
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3604, metadata !DIExpression()), !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3605, metadata !DIExpression()), !dbg !3606
  br label %6, !dbg !3607

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3606
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3610
  %9 = load ptr, ptr %8, align 8, !dbg !3610, !tbaa !1066
  %10 = icmp eq ptr %9, null, !dbg !3612
  %11 = add i64 %7, 1, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3605, metadata !DIExpression()), !dbg !3606
  br i1 %10, label %12, label %6, !dbg !3612, !llvm.loop !3614

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3609
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3616
  ret void, !dbg !3617
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3618 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3640
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3638, metadata !DIExpression(), metadata !3640, metadata ptr %6, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3633, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3634, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3635, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3636, metadata !DIExpression(DW_OP_deref)), !dbg !3641
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3637, metadata !DIExpression()), !dbg !3641
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3637, metadata !DIExpression()), !dbg !3641
  %10 = icmp sgt i32 %9, -1, !dbg !3643
  br i1 %10, label %18, label %11, !dbg !3643

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3643
  store i32 %12, ptr %7, align 8, !dbg !3643
  %13 = icmp ult i32 %9, -7, !dbg !3643
  br i1 %13, label %14, label %18, !dbg !3643

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3643
  %16 = sext i32 %9 to i64, !dbg !3643
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3643
  br label %22, !dbg !3643

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3643
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3643
  store ptr %21, ptr %4, align 8, !dbg !3643
  br label %22, !dbg !3643

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3643
  %25 = load ptr, ptr %24, align 8, !dbg !3643
  store ptr %25, ptr %6, align 8, !dbg !3646, !tbaa !1066
  %26 = icmp eq ptr %25, null, !dbg !3647
  br i1 %26, label %197, label %27, !dbg !3648

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3637, metadata !DIExpression()), !dbg !3641
  %28 = icmp sgt i32 %23, -1, !dbg !3643
  br i1 %28, label %36, label %29, !dbg !3643

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3643
  store i32 %30, ptr %7, align 8, !dbg !3643
  %31 = icmp ult i32 %23, -7, !dbg !3643
  br i1 %31, label %32, label %36, !dbg !3643

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3643
  %34 = sext i32 %23 to i64, !dbg !3643
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3643
  br label %40, !dbg !3643

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3643
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3643
  store ptr %39, ptr %4, align 8, !dbg !3643
  br label %40, !dbg !3643

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3643
  %43 = load ptr, ptr %42, align 8, !dbg !3643
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3649
  store ptr %43, ptr %44, align 8, !dbg !3646, !tbaa !1066
  %45 = icmp eq ptr %43, null, !dbg !3647
  br i1 %45, label %197, label %46, !dbg !3648

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3637, metadata !DIExpression()), !dbg !3641
  %47 = icmp sgt i32 %41, -1, !dbg !3643
  br i1 %47, label %55, label %48, !dbg !3643

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3643
  store i32 %49, ptr %7, align 8, !dbg !3643
  %50 = icmp ult i32 %41, -7, !dbg !3643
  br i1 %50, label %51, label %55, !dbg !3643

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3643
  %53 = sext i32 %41 to i64, !dbg !3643
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3643
  br label %59, !dbg !3643

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3643
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3643
  store ptr %58, ptr %4, align 8, !dbg !3643
  br label %59, !dbg !3643

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3643
  %62 = load ptr, ptr %61, align 8, !dbg !3643
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3649
  store ptr %62, ptr %63, align 8, !dbg !3646, !tbaa !1066
  %64 = icmp eq ptr %62, null, !dbg !3647
  br i1 %64, label %197, label %65, !dbg !3648

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3637, metadata !DIExpression()), !dbg !3641
  %66 = icmp sgt i32 %60, -1, !dbg !3643
  br i1 %66, label %74, label %67, !dbg !3643

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3643
  store i32 %68, ptr %7, align 8, !dbg !3643
  %69 = icmp ult i32 %60, -7, !dbg !3643
  br i1 %69, label %70, label %74, !dbg !3643

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3643
  %72 = sext i32 %60 to i64, !dbg !3643
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3643
  br label %78, !dbg !3643

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3643
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3643
  store ptr %77, ptr %4, align 8, !dbg !3643
  br label %78, !dbg !3643

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3643
  %81 = load ptr, ptr %80, align 8, !dbg !3643
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3649
  store ptr %81, ptr %82, align 8, !dbg !3646, !tbaa !1066
  %83 = icmp eq ptr %81, null, !dbg !3647
  br i1 %83, label %197, label %84, !dbg !3648

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3637, metadata !DIExpression()), !dbg !3641
  %85 = icmp sgt i32 %79, -1, !dbg !3643
  br i1 %85, label %93, label %86, !dbg !3643

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3643
  store i32 %87, ptr %7, align 8, !dbg !3643
  %88 = icmp ult i32 %79, -7, !dbg !3643
  br i1 %88, label %89, label %93, !dbg !3643

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3643
  %91 = sext i32 %79 to i64, !dbg !3643
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3643
  br label %97, !dbg !3643

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3643
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3643
  store ptr %96, ptr %4, align 8, !dbg !3643
  br label %97, !dbg !3643

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3643
  %100 = load ptr, ptr %99, align 8, !dbg !3643
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3649
  store ptr %100, ptr %101, align 8, !dbg !3646, !tbaa !1066
  %102 = icmp eq ptr %100, null, !dbg !3647
  br i1 %102, label %197, label %103, !dbg !3648

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3637, metadata !DIExpression()), !dbg !3641
  %104 = icmp sgt i32 %98, -1, !dbg !3643
  br i1 %104, label %112, label %105, !dbg !3643

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3643
  store i32 %106, ptr %7, align 8, !dbg !3643
  %107 = icmp ult i32 %98, -7, !dbg !3643
  br i1 %107, label %108, label %112, !dbg !3643

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3643
  %110 = sext i32 %98 to i64, !dbg !3643
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3643
  br label %116, !dbg !3643

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3643
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3643
  store ptr %115, ptr %4, align 8, !dbg !3643
  br label %116, !dbg !3643

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3643
  %119 = load ptr, ptr %118, align 8, !dbg !3643
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3649
  store ptr %119, ptr %120, align 8, !dbg !3646, !tbaa !1066
  %121 = icmp eq ptr %119, null, !dbg !3647
  br i1 %121, label %197, label %122, !dbg !3648

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3637, metadata !DIExpression()), !dbg !3641
  %123 = icmp sgt i32 %117, -1, !dbg !3643
  br i1 %123, label %131, label %124, !dbg !3643

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3643
  store i32 %125, ptr %7, align 8, !dbg !3643
  %126 = icmp ult i32 %117, -7, !dbg !3643
  br i1 %126, label %127, label %131, !dbg !3643

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3643
  %129 = sext i32 %117 to i64, !dbg !3643
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3643
  br label %135, !dbg !3643

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3643
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3643
  store ptr %134, ptr %4, align 8, !dbg !3643
  br label %135, !dbg !3643

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3643
  %138 = load ptr, ptr %137, align 8, !dbg !3643
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3649
  store ptr %138, ptr %139, align 8, !dbg !3646, !tbaa !1066
  %140 = icmp eq ptr %138, null, !dbg !3647
  br i1 %140, label %197, label %141, !dbg !3648

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3637, metadata !DIExpression()), !dbg !3641
  %142 = icmp sgt i32 %136, -1, !dbg !3643
  br i1 %142, label %150, label %143, !dbg !3643

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3643
  store i32 %144, ptr %7, align 8, !dbg !3643
  %145 = icmp ult i32 %136, -7, !dbg !3643
  br i1 %145, label %146, label %150, !dbg !3643

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3643
  %148 = sext i32 %136 to i64, !dbg !3643
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3643
  br label %154, !dbg !3643

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3643
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3643
  store ptr %153, ptr %4, align 8, !dbg !3643
  br label %154, !dbg !3643

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3643
  %157 = load ptr, ptr %156, align 8, !dbg !3643
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3649
  store ptr %157, ptr %158, align 8, !dbg !3646, !tbaa !1066
  %159 = icmp eq ptr %157, null, !dbg !3647
  br i1 %159, label %197, label %160, !dbg !3648

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3637, metadata !DIExpression()), !dbg !3641
  %161 = icmp sgt i32 %155, -1, !dbg !3643
  br i1 %161, label %169, label %162, !dbg !3643

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3643
  store i32 %163, ptr %7, align 8, !dbg !3643
  %164 = icmp ult i32 %155, -7, !dbg !3643
  br i1 %164, label %165, label %169, !dbg !3643

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3643
  %167 = sext i32 %155 to i64, !dbg !3643
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3643
  br label %173, !dbg !3643

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3643
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3643
  store ptr %172, ptr %4, align 8, !dbg !3643
  br label %173, !dbg !3643

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3643
  %176 = load ptr, ptr %175, align 8, !dbg !3643
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3649
  store ptr %176, ptr %177, align 8, !dbg !3646, !tbaa !1066
  %178 = icmp eq ptr %176, null, !dbg !3647
  br i1 %178, label %197, label %179, !dbg !3648

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3637, metadata !DIExpression()), !dbg !3641
  %180 = icmp sgt i32 %174, -1, !dbg !3643
  br i1 %180, label %188, label %181, !dbg !3643

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3643
  store i32 %182, ptr %7, align 8, !dbg !3643
  %183 = icmp ult i32 %174, -7, !dbg !3643
  br i1 %183, label %184, label %188, !dbg !3643

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3643
  %186 = sext i32 %174 to i64, !dbg !3643
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3643
  br label %191, !dbg !3643

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3643
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3643
  store ptr %190, ptr %4, align 8, !dbg !3643
  br label %191, !dbg !3643

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3643
  %193 = load ptr, ptr %192, align 8, !dbg !3643
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3649
  store ptr %193, ptr %194, align 8, !dbg !3646, !tbaa !1066
  %195 = icmp eq ptr %193, null, !dbg !3647
  %196 = select i1 %195, i64 9, i64 10, !dbg !3648
  br label %197, !dbg !3648

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3650
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3651
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3652
  ret void, !dbg !3652
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3653 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3661, metadata !DIExpression(), metadata !3662, metadata ptr %5, metadata !DIExpression()), !dbg !3663
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3657, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3658, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3659, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3660, metadata !DIExpression()), !dbg !3663
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !3664
  call void @llvm.va_start(ptr nonnull %5), !dbg !3665
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !3666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3666, !tbaa.struct !1407
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3666
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !3666
  call void @llvm.va_end(ptr nonnull %5), !dbg !3667
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !3668
  ret void, !dbg !3668
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3669 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3670, !tbaa !1066
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %1), !dbg !3670
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.17.102, i32 noundef 5) #40, !dbg !3671
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.103) #40, !dbg !3671
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.19.104, i32 noundef 5) #40, !dbg !3672
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.105, ptr noundef nonnull @.str.21) #40, !dbg !3672
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !3673
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.106) #40, !dbg !3673
  ret void, !dbg !3674
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3675 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3680, metadata !DIExpression()), !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %0, metadata !3684, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %2, metadata !3688, metadata !DIExpression()), !dbg !3689
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3691
  call void @llvm.dbg.value(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !3697
  %5 = icmp eq ptr %4, null, !dbg !3699
  br i1 %5, label %6, label %7, !dbg !3701

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3702
  unreachable, !dbg !3702

7:                                                ; preds = %3
  ret ptr %4, !dbg !3703
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3685 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3684, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3688, metadata !DIExpression()), !dbg !3704
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3705
  call void @llvm.dbg.value(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !3706
  %5 = icmp eq ptr %4, null, !dbg !3708
  br i1 %5, label %6, label %7, !dbg !3709

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3710
  unreachable, !dbg !3710

7:                                                ; preds = %3
  ret ptr %4, !dbg !3711
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3712 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3716, metadata !DIExpression()), !dbg !3717
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3718
  call void @llvm.dbg.value(metadata ptr %2, metadata !3692, metadata !DIExpression()), !dbg !3719
  %3 = icmp eq ptr %2, null, !dbg !3721
  br i1 %3, label %4, label %5, !dbg !3722

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3723
  unreachable, !dbg !3723

5:                                                ; preds = %1
  ret ptr %2, !dbg !3724
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3725 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3726 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3730, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i64 %0, metadata !3732, metadata !DIExpression()), !dbg !3736
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3738
  call void @llvm.dbg.value(metadata ptr %2, metadata !3692, metadata !DIExpression()), !dbg !3739
  %3 = icmp eq ptr %2, null, !dbg !3741
  br i1 %3, label %4, label %5, !dbg !3742

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3743
  unreachable, !dbg !3743

5:                                                ; preds = %1
  ret ptr %2, !dbg !3744
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3745 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3749, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %0, metadata !3716, metadata !DIExpression()), !dbg !3751
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3753
  call void @llvm.dbg.value(metadata ptr %2, metadata !3692, metadata !DIExpression()), !dbg !3754
  %3 = icmp eq ptr %2, null, !dbg !3756
  br i1 %3, label %4, label %5, !dbg !3757

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3758
  unreachable, !dbg !3758

5:                                                ; preds = %1
  ret ptr %2, !dbg !3759
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3764, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3765, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i64 %1, metadata !3771, metadata !DIExpression()), !dbg !3772
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3774
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3775
  call void @llvm.dbg.value(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !3776
  %5 = icmp eq ptr %4, null, !dbg !3778
  br i1 %5, label %6, label %7, !dbg !3779

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3780
  unreachable, !dbg !3780

7:                                                ; preds = %2
  ret ptr %4, !dbg !3781
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3782 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3783 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3787, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %0, metadata !3790, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i64 %1, metadata !3793, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 %1, metadata !3771, metadata !DIExpression()), !dbg !3796
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3798
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3799
  call void @llvm.dbg.value(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !3800
  %5 = icmp eq ptr %4, null, !dbg !3802
  br i1 %5, label %6, label %7, !dbg !3803

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3804
  unreachable, !dbg !3804

7:                                                ; preds = %2
  ret ptr %4, !dbg !3805
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3806 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3811, metadata !DIExpression()), !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3812, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %0, metadata !3814, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %1, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %2, metadata !3818, metadata !DIExpression()), !dbg !3819
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3821
  call void @llvm.dbg.value(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !3822
  %5 = icmp eq ptr %4, null, !dbg !3824
  br i1 %5, label %6, label %7, !dbg !3825

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3826
  unreachable, !dbg !3826

7:                                                ; preds = %3
  ret ptr %4, !dbg !3827
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3828 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3832, metadata !DIExpression()), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3833, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata ptr null, metadata !3684, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %0, metadata !3687, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %1, metadata !3688, metadata !DIExpression()), !dbg !3835
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3837
  call void @llvm.dbg.value(metadata ptr %3, metadata !3692, metadata !DIExpression()), !dbg !3838
  %4 = icmp eq ptr %3, null, !dbg !3840
  br i1 %4, label %5, label %6, !dbg !3841

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3842
  unreachable, !dbg !3842

6:                                                ; preds = %2
  ret ptr %3, !dbg !3843
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3844 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3848, metadata !DIExpression()), !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata ptr null, metadata !3810, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %0, metadata !3811, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %1, metadata !3812, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata ptr null, metadata !3814, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 %0, metadata !3817, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 %1, metadata !3818, metadata !DIExpression()), !dbg !3853
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %3, metadata !3692, metadata !DIExpression()), !dbg !3856
  %4 = icmp eq ptr %3, null, !dbg !3858
  br i1 %4, label %5, label %6, !dbg !3859

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3860
  unreachable, !dbg !3860

6:                                                ; preds = %2
  ret ptr %3, !dbg !3861
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3862 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3866, metadata !DIExpression()), !dbg !3868
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3867, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %0, metadata !977, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %1, metadata !978, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 1, metadata !979, metadata !DIExpression()), !dbg !3869
  %3 = load i64, ptr %1, align 8, !dbg !3871, !tbaa !1807
  call void @llvm.dbg.value(metadata i64 %3, metadata !980, metadata !DIExpression()), !dbg !3869
  %4 = icmp eq ptr %0, null, !dbg !3872
  br i1 %4, label %5, label %8, !dbg !3874

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3875
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3878
  br label %15, !dbg !3878

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3879
  %10 = add nuw i64 %9, 1, !dbg !3879
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3879
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3879
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %13, metadata !980, metadata !DIExpression()), !dbg !3869
  br i1 %12, label %14, label %15, !dbg !3882

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !3883
  unreachable, !dbg !3883

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3869
  call void @llvm.dbg.value(metadata i64 %16, metadata !980, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %0, metadata !3684, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %16, metadata !3687, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 1, metadata !3688, metadata !DIExpression()), !dbg !3884
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !3886
  call void @llvm.dbg.value(metadata ptr %17, metadata !3692, metadata !DIExpression()), !dbg !3887
  %18 = icmp eq ptr %17, null, !dbg !3889
  br i1 %18, label %19, label %20, !dbg !3890

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !3891
  unreachable, !dbg !3891

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !977, metadata !DIExpression()), !dbg !3869
  store i64 %16, ptr %1, align 8, !dbg !3892, !tbaa !1807
  ret ptr %17, !dbg !3893
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !972 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !977, metadata !DIExpression()), !dbg !3894
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !978, metadata !DIExpression()), !dbg !3894
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !979, metadata !DIExpression()), !dbg !3894
  %4 = load i64, ptr %1, align 8, !dbg !3895, !tbaa !1807
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !980, metadata !DIExpression()), !dbg !3894
  %5 = icmp eq ptr %0, null, !dbg !3896
  br i1 %5, label %6, label %13, !dbg !3897

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3898
  br i1 %7, label %8, label %20, !dbg !3899

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3900
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !980, metadata !DIExpression()), !dbg !3894
  %10 = icmp ugt i64 %2, 128, !dbg !3902
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !980, metadata !DIExpression()), !dbg !3894
  br label %20, !dbg !3904

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3905
  %15 = add nuw i64 %14, 1, !dbg !3905
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3905
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3905
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3905
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !980, metadata !DIExpression()), !dbg !3894
  br i1 %17, label %19, label %20, !dbg !3906

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !3907
  unreachable, !dbg !3907

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3894
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !980, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr %0, metadata !3684, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %21, metadata !3687, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %2, metadata !3688, metadata !DIExpression()), !dbg !3908
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !3910
  call void @llvm.dbg.value(metadata ptr %22, metadata !3692, metadata !DIExpression()), !dbg !3911
  %23 = icmp eq ptr %22, null, !dbg !3913
  br i1 %23, label %24, label %25, !dbg !3914

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !3915
  unreachable, !dbg !3915

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !977, metadata !DIExpression()), !dbg !3894
  store i64 %21, ptr %1, align 8, !dbg !3916, !tbaa !1807
  ret ptr %22, !dbg !3917
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !984 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !993, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !994, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !995, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !996, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !997, metadata !DIExpression()), !dbg !3918
  %6 = load i64, ptr %1, align 8, !dbg !3919, !tbaa !1807
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !998, metadata !DIExpression()), !dbg !3918
  %7 = ashr i64 %6, 1, !dbg !3920
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3920
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3920
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3920
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !999, metadata !DIExpression()), !dbg !3918
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3922
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !999, metadata !DIExpression()), !dbg !3918
  %12 = icmp sgt i64 %3, -1, !dbg !3923
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3925
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3925
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !999, metadata !DIExpression()), !dbg !3918
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3926
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3926
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3926
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1000, metadata !DIExpression()), !dbg !3918
  %18 = icmp slt i64 %17, 128, !dbg !3926
  %19 = select i1 %18, i64 128, i64 0, !dbg !3926
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3926
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1001, metadata !DIExpression()), !dbg !3918
  %21 = icmp eq i64 %20, 0, !dbg !3927
  br i1 %21, label %28, label %22, !dbg !3929

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !999, metadata !DIExpression()), !dbg !3918
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1000, metadata !DIExpression()), !dbg !3918
  br label %28, !dbg !3933

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3918
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1000, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !999, metadata !DIExpression()), !dbg !3918
  %31 = icmp eq ptr %0, null, !dbg !3934
  br i1 %31, label %32, label %33, !dbg !3936

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3937, !tbaa !1807
  br label %33, !dbg !3938

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3939
  %35 = icmp slt i64 %34, %2, !dbg !3941
  br i1 %35, label %36, label %48, !dbg !3942

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3943
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3943
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3943
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !999, metadata !DIExpression()), !dbg !3918
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3944
  br i1 %42, label %47, label %43, !dbg !3944

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3945
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3945
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1000, metadata !DIExpression()), !dbg !3918
  br i1 %45, label %47, label %48, !dbg !3946

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !3947
  unreachable, !dbg !3947

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3918
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1000, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !999, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr %0, metadata !3764, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %50, metadata !3765, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %50, metadata !3771, metadata !DIExpression()), !dbg !3950
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3952
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #46, !dbg !3953
  call void @llvm.dbg.value(metadata ptr %52, metadata !3692, metadata !DIExpression()), !dbg !3954
  %53 = icmp eq ptr %52, null, !dbg !3956
  br i1 %53, label %54, label %55, !dbg !3957

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !3958
  unreachable, !dbg !3958

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !993, metadata !DIExpression()), !dbg !3918
  store i64 %49, ptr %1, align 8, !dbg !3959, !tbaa !1807
  ret ptr %52, !dbg !3960
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3961 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %0, metadata !3965, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 1, metadata !3968, metadata !DIExpression()), !dbg !3969
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3971
  call void @llvm.dbg.value(metadata ptr %2, metadata !3692, metadata !DIExpression()), !dbg !3972
  %3 = icmp eq ptr %2, null, !dbg !3974
  br i1 %3, label %4, label %5, !dbg !3975

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3976
  unreachable, !dbg !3976

5:                                                ; preds = %1
  ret ptr %2, !dbg !3977
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3978 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3966 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3965, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3968, metadata !DIExpression()), !dbg !3979
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %3, metadata !3692, metadata !DIExpression()), !dbg !3981
  %4 = icmp eq ptr %3, null, !dbg !3983
  br i1 %4, label %5, label %6, !dbg !3984

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3985
  unreachable, !dbg !3985

6:                                                ; preds = %2
  ret ptr %3, !dbg !3986
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3987 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3989, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 1, metadata !3994, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 1, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 1, metadata !4000, metadata !DIExpression()), !dbg !4001
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4003
  call void @llvm.dbg.value(metadata ptr %2, metadata !3692, metadata !DIExpression()), !dbg !4004
  %3 = icmp eq ptr %2, null, !dbg !4006
  br i1 %3, label %4, label %5, !dbg !4007

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4008
  unreachable, !dbg !4008

5:                                                ; preds = %1
  ret ptr %2, !dbg !4009
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3992 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()), !dbg !4011
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4013
  call void @llvm.dbg.value(metadata ptr %3, metadata !3692, metadata !DIExpression()), !dbg !4014
  %4 = icmp eq ptr %3, null, !dbg !4016
  br i1 %4, label %5, label %6, !dbg !4017

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4018
  unreachable, !dbg !4018

6:                                                ; preds = %2
  ret ptr %3, !dbg !4019
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4020 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4026
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3716, metadata !DIExpression()), !dbg !4027
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4029
  call void @llvm.dbg.value(metadata ptr %3, metadata !3692, metadata !DIExpression()), !dbg !4030
  %4 = icmp eq ptr %3, null, !dbg !4032
  br i1 %4, label %5, label %6, !dbg !4033

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4034
  unreachable, !dbg !4034

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4035, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %0, metadata !4041, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()), !dbg !4043
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4045
  ret ptr %3, !dbg !4046
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4047 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4051, metadata !DIExpression()), !dbg !4053
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4052, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3730, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !3732, metadata !DIExpression()), !dbg !4056
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4058
  call void @llvm.dbg.value(metadata ptr %3, metadata !3692, metadata !DIExpression()), !dbg !4059
  %4 = icmp eq ptr %3, null, !dbg !4061
  br i1 %4, label %5, label %6, !dbg !4062

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4063
  unreachable, !dbg !4063

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4035, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %0, metadata !4041, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4066
  ret ptr %3, !dbg !4067
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4068 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4072, metadata !DIExpression()), !dbg !4075
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4073, metadata !DIExpression()), !dbg !4075
  %3 = add nsw i64 %1, 1, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %3, metadata !3730, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %3, metadata !3732, metadata !DIExpression()), !dbg !4079
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4081
  call void @llvm.dbg.value(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !4082
  %5 = icmp eq ptr %4, null, !dbg !4084
  br i1 %5, label %6, label %7, !dbg !4085

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4086
  unreachable, !dbg !4086

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4074, metadata !DIExpression()), !dbg !4075
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4087
  store i8 0, ptr %8, align 1, !dbg !4088, !tbaa !1137
  call void @llvm.dbg.value(metadata ptr %4, metadata !4035, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %0, metadata !4041, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()), !dbg !4089
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4091
  ret ptr %4, !dbg !4092
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4093 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4095, metadata !DIExpression()), !dbg !4096
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4097
  %3 = add i64 %2, 1, !dbg !4098
  call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %3, metadata !4025, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %3, metadata !3716, metadata !DIExpression()), !dbg !4101
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4103
  call void @llvm.dbg.value(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !4104
  %5 = icmp eq ptr %4, null, !dbg !4106
  br i1 %5, label %6, label %7, !dbg !4107

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4108
  unreachable, !dbg !4108

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4035, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr %0, metadata !4041, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %3, metadata !4042, metadata !DIExpression()), !dbg !4109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4111
  ret ptr %4, !dbg !4112
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4113 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4118, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4115, metadata !DIExpression()), !dbg !4119
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.117, ptr noundef nonnull @.str.2.118, i32 noundef 5) #40, !dbg !4118
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef %2) #40, !dbg !4118
  %3 = icmp eq i32 %1, 0, !dbg !4118
  tail call void @llvm.assume(i1 %3), !dbg !4118
  tail call void @abort() #42, !dbg !4120
  unreachable, !dbg !4120
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4121 {
  %9 = alloca i64, align 8, !DIAssignID !4142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4133, metadata !DIExpression(), metadata !4142, metadata ptr %9, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4125, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4126, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4127, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4128, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !4130, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !4131, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4132, metadata !DIExpression()), !dbg !4143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40, !dbg !4144
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #40, !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4135, metadata !DIExpression()), !dbg !4143
  %11 = icmp eq i32 %10, 4, !dbg !4146
  br i1 %11, label %27, label %12, !dbg !4148

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4149, !tbaa !1807
  %14 = icmp ult i64 %13, %2, !dbg !4152
  br i1 %14, label %15, label %20, !dbg !4153

15:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4134, metadata !DIExpression()), !dbg !4143
  %16 = and i32 %7, 4, !dbg !4154
  %17 = icmp eq i32 %16, 0, !dbg !4156
  %18 = select i1 %17, i32 75, i32 34, !dbg !4156
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !4137, metadata !DIExpression()), !dbg !4143
  %19 = call i32 @llvm.umax.i32(i32 %10, i32 1), !dbg !4157
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !4135, metadata !DIExpression()), !dbg !4143
  br label %27, !dbg !4158

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4159
  br i1 %21, label %22, label %33, !dbg !4161

22:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4134, metadata !DIExpression()), !dbg !4143
  %23 = and i32 %7, 8, !dbg !4162
  %24 = icmp eq i32 %23, 0, !dbg !4164
  %25 = select i1 %24, i32 75, i32 34, !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !4137, metadata !DIExpression()), !dbg !4143
  %26 = call i32 @llvm.umax.i32(i32 %10, i32 1), !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4135, metadata !DIExpression()), !dbg !4143
  br label %27, !dbg !4166

27:                                               ; preds = %15, %22, %8
  %28 = phi i32 [ undef, %8 ], [ %25, %22 ], [ %18, %15 ]
  %29 = phi i32 [ 4, %8 ], [ %26, %22 ], [ %19, %15 ]
  %30 = phi i64 [ undef, %8 ], [ %3, %22 ], [ %2, %15 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !4134, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !4135, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !4137, metadata !DIExpression()), !dbg !4143
  %31 = icmp eq i32 %29, 1, !dbg !4167
  %32 = select i1 %31, i32 %28, i32 0, !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !4138, metadata !DIExpression()), !dbg !4143
  br label %37, !dbg !4169

33:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !4134, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4135, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 75, metadata !4137, metadata !DIExpression()), !dbg !4143
  %34 = icmp eq i32 %10, 1, !dbg !4167
  %35 = select i1 %34, i32 75, i32 0, !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4138, metadata !DIExpression()), !dbg !4143
  %36 = icmp eq i32 %10, 0, !dbg !4170
  br i1 %36, label %47, label %37, !dbg !4169

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %32, %27 ], [ %35, %33 ]
  %39 = phi i1 [ %31, %27 ], [ %34, %33 ]
  %40 = phi i64 [ %30, %27 ], [ %13, %33 ]
  %41 = and i32 %7, 2
  %42 = icmp ne i32 %41, 0
  %43 = and i1 %42, %39, !dbg !4171
  br i1 %43, label %47, label %44, !dbg !4171

44:                                               ; preds = %37
  %45 = call i32 @llvm.umax.i32(i32 %6, i32 1), !dbg !4172
  %46 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !4172
  call void (i32, i32, ptr, ...) @error(i32 noundef %45, i32 noundef %38, ptr noundef nonnull @.str.122, ptr noundef nonnull %5, ptr noundef %46) #40, !dbg !4172
  unreachable, !dbg !4172

47:                                               ; preds = %37, %33
  %48 = phi i32 [ %38, %37 ], [ %35, %33 ]
  %49 = phi i64 [ %40, %37 ], [ %13, %33 ]
  %50 = tail call ptr @__errno_location() #43, !dbg !4173
  store i32 %48, ptr %50, align 4, !dbg !4174, !tbaa !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !4175
  ret i64 %49, !dbg !4176
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4177 {
  %7 = alloca i64, align 8, !DIAssignID !4187
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4182, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4183, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4184, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4185, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4186, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4133, metadata !DIExpression(), metadata !4187, metadata ptr %7, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata ptr %0, metadata !4125, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 10, metadata !4126, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 %1, metadata !4127, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 %2, metadata !4128, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata ptr %4, metadata !4130, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 %5, metadata !4131, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 0, metadata !4132, metadata !DIExpression()), !dbg !4189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !4191
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #40, !dbg !4192
  call void @llvm.dbg.value(metadata i32 %8, metadata !4135, metadata !DIExpression()), !dbg !4189
  %9 = freeze i32 %8, !dbg !4193
  %10 = icmp eq i32 %9, 4, !dbg !4194
  br i1 %10, label %23, label %11, !dbg !4195

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8, !dbg !4196, !tbaa !1807
  %13 = icmp ult i64 %12, %1, !dbg !4197
  %14 = icmp ugt i64 %12, %2
  %15 = or i1 %13, %14, !dbg !4198
  br i1 %15, label %16, label %19, !dbg !4198

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 poison, metadata !4134, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 poison, metadata !4135, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 75, metadata !4137, metadata !DIExpression()), !dbg !4189
  %17 = icmp ult i32 %9, 2, !dbg !4199
  %18 = select i1 %17, i32 75, i32 0, !dbg !4200
  br label %23, !dbg !4200

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %12, metadata !4134, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 %8, metadata !4135, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 75, metadata !4137, metadata !DIExpression()), !dbg !4189
  %20 = icmp eq i32 %9, 1, !dbg !4199
  %21 = select i1 %20, i32 75, i32 0, !dbg !4200
  call void @llvm.dbg.value(metadata i32 %21, metadata !4138, metadata !DIExpression()), !dbg !4189
  %22 = icmp eq i32 %9, 0, !dbg !4201
  br i1 %22, label %27, label %23, !dbg !4202

23:                                               ; preds = %16, %6, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %6 ], [ %18, %16 ]
  %25 = call i32 @llvm.umax.i32(i32 %5, i32 1), !dbg !4203
  %26 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !4203
  call void (i32, i32, ptr, ...) @error(i32 noundef %25, i32 noundef %24, ptr noundef nonnull @.str.122, ptr noundef nonnull %4, ptr noundef %26) #40, !dbg !4203
  unreachable, !dbg !4203

27:                                               ; preds = %19
  %28 = tail call ptr @__errno_location() #43, !dbg !4204
  store i32 0, ptr %28, align 4, !dbg !4205, !tbaa !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !4206
  ret i64 %12, !dbg !4207
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4208 {
  %6 = alloca ptr, align 8, !DIAssignID !4233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4220, metadata !DIExpression(), metadata !4233, metadata ptr %6, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4215, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4216, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4217, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4218, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4219, metadata !DIExpression()), !dbg !4234
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !4235
  %7 = icmp eq ptr %1, null, !dbg !4236
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4221, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4222, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4225, metadata !DIExpression()), !dbg !4237
  %8 = tail call ptr @__ctype_b_loc() #43, !dbg !4234
  %9 = load ptr, ptr %8, align 8, !tbaa !1066
  br label %10, !dbg !4238

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4237
  %12 = load i8, ptr %11, align 1, !dbg !4237, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !4225, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !4222, metadata !DIExpression()), !dbg !4237
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4239
  %15 = load i16, ptr %14, align 2, !dbg !4239, !tbaa !1169
  %16 = and i16 %15, 8192, !dbg !4239
  %17 = icmp eq i16 %16, 0, !dbg !4238
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4240
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !4222, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4225, metadata !DIExpression()), !dbg !4237
  br i1 %17, label %19, label %10, !dbg !4238, !llvm.loop !4241

19:                                               ; preds = %10
  %.lcssa = phi i8 [ %12, %10 ], !dbg !4237
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4236
  %21 = icmp eq i8 %.lcssa, 45, !dbg !4243
  br i1 %21, label %22, label %23, !dbg !4245

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4246, !tbaa !1066
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #43, !dbg !4248
  store i32 0, ptr %24, align 4, !dbg !4249, !tbaa !1128
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2) #40, !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4226, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4227, metadata !DIExpression()), !dbg !4234
  %26 = load ptr, ptr %20, align 8, !dbg !4251, !tbaa !1066
  %27 = icmp eq ptr %26, %0, !dbg !4253
  br i1 %27, label %28, label %37, !dbg !4254

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4255
  br i1 %29, label %386, label %30, !dbg !4258

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4259, !tbaa !1137
  %32 = icmp eq i8 %31, 0, !dbg !4259
  br i1 %32, label %386, label %33, !dbg !4260

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !4259
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #41, !dbg !4261
  %36 = icmp eq ptr %35, null, !dbg !4261
  br i1 %36, label %386, label %44, !dbg !4262

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4263, !tbaa !1128
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4265

39:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4227, metadata !DIExpression()), !dbg !4234
  br label %40, !dbg !4266

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4234
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4226, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !4227, metadata !DIExpression()), !dbg !4234
  %42 = icmp eq ptr %4, null, !dbg !4268
  br i1 %42, label %43, label %44, !dbg !4270

43:                                               ; preds = %40
  store i64 %25, ptr %3, align 8, !dbg !4271, !tbaa !1807
  br label %386, !dbg !4273

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4274, !tbaa !1137
  %48 = icmp eq i8 %47, 0, !dbg !4275
  br i1 %48, label %383, label %49, !dbg !4276

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !4274
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #41, !dbg !4277
  %52 = icmp eq ptr %51, null, !dbg !4277
  br i1 %52, label %53, label %55, !dbg !4279

53:                                               ; preds = %49
  store i64 %46, ptr %3, align 8, !dbg !4280, !tbaa !1807
  %54 = or disjoint i32 %45, 2, !dbg !4282
  br label %386, !dbg !4283

55:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4228, metadata !DIExpression()), !dbg !4284
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4231, metadata !DIExpression()), !dbg !4284
  switch i8 %47, label %68 [
    i8 69, label %56
    i8 71, label %56
    i8 103, label %56
    i8 107, label %56
    i8 75, label %56
    i8 77, label %56
    i8 109, label %56
    i8 80, label %56
    i8 81, label %56
    i8 82, label %56
    i8 84, label %56
    i8 116, label %56
    i8 89, label %56
    i8 90, label %56
  ], !dbg !4285

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #41, !dbg !4286
  %58 = icmp eq ptr %57, null, !dbg !4286
  br i1 %58, label %68, label %59, !dbg !4289

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4290
  %61 = load i8, ptr %60, align 1, !dbg !4290, !tbaa !1137
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4291

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4292
  %64 = load i8, ptr %63, align 1, !dbg !4292, !tbaa !1137
  %65 = icmp eq i8 %64, 66, !dbg !4295
  %66 = select i1 %65, i64 3, i64 1, !dbg !4296
  br label %68, !dbg !4296

67:                                               ; preds = %59, %59
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4228, metadata !DIExpression()), !dbg !4284
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4231, metadata !DIExpression()), !dbg !4284
  br label %68, !dbg !4297

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ], !dbg !4284
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ], !dbg !4284
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !4231, metadata !DIExpression()), !dbg !4284
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !4228, metadata !DIExpression()), !dbg !4284
  switch i8 %47, label %381 [
    i8 98, label %302
    i8 66, label %307
    i8 99, label %372
    i8 69, label %271
    i8 71, label %312
    i8 103, label %312
    i8 107, label %328
    i8 75, label %328
    i8 77, label %334
    i8 109, label %334
    i8 80, label %245
    i8 81, label %194
    i8 82, label %148
    i8 84, label %345
    i8 116, label %345
    i8 119, label %366
    i8 89, label %107
    i8 90, label %71
  ], !dbg !4298

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4317
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4319
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4319
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4317
  %74 = extractvalue { i64, i1 } %72, 0, !dbg !4321
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4321
  call void @llvm.dbg.value(metadata i1 %73, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i1 %73, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4317
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4319
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4319
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4317
  %78 = extractvalue { i64, i1 } %76, 0, !dbg !4321
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4321
  %80 = or i1 %73, %77, !dbg !4322
  call void @llvm.dbg.value(metadata i1 %80, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i1 %80, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4317
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4319
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4319
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4317
  %83 = extractvalue { i64, i1 } %81, 0, !dbg !4321
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4321
  %85 = or i1 %80, %82, !dbg !4322
  call void @llvm.dbg.value(metadata i1 %85, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i1 %85, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4317
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4319
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4319
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4317
  %88 = extractvalue { i64, i1 } %86, 0, !dbg !4321
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4321
  %90 = or i1 %85, %87, !dbg !4322
  call void @llvm.dbg.value(metadata i1 %90, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i1 %90, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4317
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4319
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4319
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4317
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4321
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4321
  %95 = or i1 %90, %92, !dbg !4322
  call void @llvm.dbg.value(metadata i1 %95, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i1 %95, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4317
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4319
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4319
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4317
  %98 = extractvalue { i64, i1 } %96, 0, !dbg !4321
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4321
  %100 = or i1 %95, %97, !dbg !4322
  call void @llvm.dbg.value(metadata i1 %100, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i1 %100, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4307
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4317
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4319
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4319
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4317
  %103 = extractvalue { i64, i1 } %101, 0, !dbg !4321
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4321
  %105 = or i1 %100, %102, !dbg !4322
  %106 = zext i1 %105 to i32, !dbg !4322
  call void @llvm.dbg.value(metadata i32 %106, metadata !4299, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4307
  br label %372, !dbg !4323

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 8, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4326
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4328
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4328
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4326
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !4329
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4329
  call void @llvm.dbg.value(metadata i1 %109, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i1 %109, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4326
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4328
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4328
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4326
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !4329
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4329
  %116 = or i1 %109, %113, !dbg !4330
  call void @llvm.dbg.value(metadata i1 %116, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i1 %116, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4326
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4328
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4328
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4326
  %119 = extractvalue { i64, i1 } %117, 0, !dbg !4329
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4329
  %121 = or i1 %116, %118, !dbg !4330
  call void @llvm.dbg.value(metadata i1 %121, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i1 %121, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4326
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4328
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4328
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4326
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !4329
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4329
  %126 = or i1 %121, %123, !dbg !4330
  call void @llvm.dbg.value(metadata i1 %126, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i1 %126, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4326
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4328
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4328
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4326
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4329
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4329
  %131 = or i1 %126, %128, !dbg !4330
  call void @llvm.dbg.value(metadata i1 %131, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i1 %131, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4326
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4328
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4328
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4326
  %134 = extractvalue { i64, i1 } %132, 0, !dbg !4329
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4329
  %136 = or i1 %131, %133, !dbg !4330
  call void @llvm.dbg.value(metadata i1 %136, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i1 %136, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4326
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4328
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4328
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4326
  %139 = extractvalue { i64, i1 } %137, 0, !dbg !4329
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4329
  %141 = or i1 %136, %138, !dbg !4330
  call void @llvm.dbg.value(metadata i1 %141, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i1 %141, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4326
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4328
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4328
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4326
  %144 = extractvalue { i64, i1 } %142, 0, !dbg !4329
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4329
  %146 = or i1 %141, %143, !dbg !4330
  %147 = zext i1 %146 to i32, !dbg !4330
  call void @llvm.dbg.value(metadata i32 %147, metadata !4299, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4324
  br label %372, !dbg !4323

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 9, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 8, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4335
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %151 = extractvalue { i64, i1 } %149, 0, !dbg !4336
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4336
  call void @llvm.dbg.value(metadata i1 %150, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 8, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i1 %150, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 8, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4335
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %155 = extractvalue { i64, i1 } %153, 0, !dbg !4336
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4336
  %157 = or i1 %150, %154, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %157, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i1 %157, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4335
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %160 = extractvalue { i64, i1 } %158, 0, !dbg !4336
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4336
  %162 = or i1 %157, %159, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %162, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i1 %162, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4335
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %165 = extractvalue { i64, i1 } %163, 0, !dbg !4336
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4336
  %167 = or i1 %162, %164, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %167, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i1 %167, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4335
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %170 = extractvalue { i64, i1 } %168, 0, !dbg !4336
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4336
  %172 = or i1 %167, %169, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %172, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i1 %172, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4335
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %175 = extractvalue { i64, i1 } %173, 0, !dbg !4336
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4336
  %177 = or i1 %172, %174, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %177, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i1 %177, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4335
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %180 = extractvalue { i64, i1 } %178, 0, !dbg !4336
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4336
  %182 = or i1 %177, %179, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %182, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i1 %182, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4335
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %185 = extractvalue { i64, i1 } %183, 0, !dbg !4336
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4336
  %187 = or i1 %182, %184, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %187, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i1 %187, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4331
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4333
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4335
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4333
  %190 = extractvalue { i64, i1 } %188, 0, !dbg !4336
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4336
  %192 = or i1 %187, %189, !dbg !4337
  %193 = zext i1 %192 to i32, !dbg !4337
  call void @llvm.dbg.value(metadata i32 %193, metadata !4299, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4331
  br label %372, !dbg !4323

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 10, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 9, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4342
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %197 = extractvalue { i64, i1 } %195, 0, !dbg !4343
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4343
  call void @llvm.dbg.value(metadata i1 %196, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 9, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %196, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 9, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 8, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4342
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !4343
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4343
  %203 = or i1 %196, %200, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %203, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 8, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %203, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 8, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4342
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %206 = extractvalue { i64, i1 } %204, 0, !dbg !4343
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4343
  %208 = or i1 %203, %205, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %208, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %208, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 7, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4342
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %211 = extractvalue { i64, i1 } %209, 0, !dbg !4343
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4343
  %213 = or i1 %208, %210, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %213, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %213, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4342
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %216 = extractvalue { i64, i1 } %214, 0, !dbg !4343
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4343
  %218 = or i1 %213, %215, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %218, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %218, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4342
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4343
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4343
  %223 = or i1 %218, %220, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %223, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %223, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4342
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %226 = extractvalue { i64, i1 } %224, 0, !dbg !4343
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4343
  %228 = or i1 %223, %225, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %228, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %228, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4342
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %231 = extractvalue { i64, i1 } %229, 0, !dbg !4343
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4343
  %233 = or i1 %228, %230, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %233, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %233, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4342
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4343
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4343
  %238 = or i1 %233, %235, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %238, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i1 %238, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4338
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4340
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4342
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4342
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4340
  %241 = extractvalue { i64, i1 } %239, 0, !dbg !4343
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4343
  %243 = or i1 %238, %240, !dbg !4344
  %244 = zext i1 %243 to i32, !dbg !4344
  call void @llvm.dbg.value(metadata i32 %244, metadata !4299, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  br label %372, !dbg !4323

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4347
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4349
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4349
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4347
  %248 = extractvalue { i64, i1 } %246, 0, !dbg !4350
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4350
  call void @llvm.dbg.value(metadata i1 %247, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i1 %247, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4347
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4349
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4349
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4347
  %252 = extractvalue { i64, i1 } %250, 0, !dbg !4350
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4350
  %254 = or i1 %247, %251, !dbg !4351
  call void @llvm.dbg.value(metadata i1 %254, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i1 %254, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4347
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4349
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4349
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4347
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4350
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4350
  %259 = or i1 %254, %256, !dbg !4351
  call void @llvm.dbg.value(metadata i1 %259, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i1 %259, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4347
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4349
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4349
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4347
  %262 = extractvalue { i64, i1 } %260, 0, !dbg !4350
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4350
  %264 = or i1 %259, %261, !dbg !4351
  call void @llvm.dbg.value(metadata i1 %264, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i1 %264, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4347
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4349
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4349
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4347
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !4350
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4350
  %269 = or i1 %264, %266, !dbg !4351
  %270 = zext i1 %269 to i32, !dbg !4351
  call void @llvm.dbg.value(metadata i32 %270, metadata !4299, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4345
  br label %372, !dbg !4323

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 6, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4354
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4356
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4356
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4354
  %274 = extractvalue { i64, i1 } %272, 0, !dbg !4357
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4357
  call void @llvm.dbg.value(metadata i1 %273, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i1 %273, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 5, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4354
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4356
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4356
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4354
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4357
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4357
  %280 = or i1 %273, %277, !dbg !4358
  call void @llvm.dbg.value(metadata i1 %280, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i1 %280, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4354
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4356
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4356
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4354
  %283 = extractvalue { i64, i1 } %281, 0, !dbg !4357
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4357
  %285 = or i1 %280, %282, !dbg !4358
  call void @llvm.dbg.value(metadata i1 %285, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i1 %285, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4354
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4356
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4356
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4354
  %288 = extractvalue { i64, i1 } %286, 0, !dbg !4357
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4357
  %290 = or i1 %285, %287, !dbg !4358
  call void @llvm.dbg.value(metadata i1 %290, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i1 %290, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4354
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4356
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4356
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4354
  %293 = extractvalue { i64, i1 } %291, 0, !dbg !4357
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4357
  %295 = or i1 %290, %292, !dbg !4358
  call void @llvm.dbg.value(metadata i1 %295, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i1 %295, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4352
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4354
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4356
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4356
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4354
  %298 = extractvalue { i64, i1 } %296, 0, !dbg !4357
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4357
  %300 = or i1 %295, %297, !dbg !4358
  %301 = zext i1 %300 to i32, !dbg !4358
  call void @llvm.dbg.value(metadata i32 %301, metadata !4299, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4352
  br label %372, !dbg !4323

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i32 512, metadata !4315, metadata !DIExpression()), !dbg !4359
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4361
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4359
  %304 = shl i64 %46, 9, !dbg !4362
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4362
  %306 = zext i1 %303 to i32, !dbg !4362
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !4226, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !4232, metadata !DIExpression()), !dbg !4284
  br label %372, !dbg !4363

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 1024, metadata !4315, metadata !DIExpression()), !dbg !4364
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4366
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4364
  %309 = shl i64 %46, 10, !dbg !4367
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4367
  %311 = zext i1 %308 to i32, !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !4226, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %311, metadata !4232, metadata !DIExpression()), !dbg !4284
  br label %372, !dbg !4368

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4304, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %69, metadata !4305, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4369
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4371
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4373
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4373
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4371
  %315 = extractvalue { i64, i1 } %313, 0, !dbg !4374
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4374
  call void @llvm.dbg.value(metadata i1 %314, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4369
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4369
  call void @llvm.dbg.value(metadata i1 %314, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4369
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4371
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4373
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4373
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4371
  %319 = extractvalue { i64, i1 } %317, 0, !dbg !4374
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4374
  %321 = or i1 %314, %318, !dbg !4375
  call void @llvm.dbg.value(metadata i1 %321, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4369
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4369
  call void @llvm.dbg.value(metadata i1 %321, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4369
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4371
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4373
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4373
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4371
  %324 = extractvalue { i64, i1 } %322, 0, !dbg !4374
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4374
  %326 = or i1 %321, %323, !dbg !4375
  %327 = zext i1 %326 to i32, !dbg !4375
  call void @llvm.dbg.value(metadata i32 %327, metadata !4299, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4369
  br label %372, !dbg !4323

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4304, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i64 %69, metadata !4305, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4376
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4378
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4378
  %331 = extractvalue { i64, i1 } %329, 0, !dbg !4380
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4380
  %333 = zext i1 %330 to i32, !dbg !4380
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4381
  br label %372, !dbg !4323

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4304, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %69, metadata !4305, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4382
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4384
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4386
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4384
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4387
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4387
  call void @llvm.dbg.value(metadata i1 %336, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4382
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4382
  call void @llvm.dbg.value(metadata i1 %336, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4382
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4384
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4386
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4384
  %341 = extractvalue { i64, i1 } %339, 0, !dbg !4387
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4387
  %343 = or i1 %336, %340, !dbg !4388
  %344 = zext i1 %343 to i32, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %344, metadata !4299, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4382
  br label %372, !dbg !4323

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4304, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i64 %69, metadata !4305, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 4, metadata !4306, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4391
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4393
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4393
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4391
  %348 = extractvalue { i64, i1 } %346, 0, !dbg !4394
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4394
  call void @llvm.dbg.value(metadata i1 %347, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i1 %347, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i32 3, metadata !4306, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4391
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4393
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4393
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4391
  %352 = extractvalue { i64, i1 } %350, 0, !dbg !4394
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4394
  %354 = or i1 %347, %351, !dbg !4395
  call void @llvm.dbg.value(metadata i1 %354, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i1 %354, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4391
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4393
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4393
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4391
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4394
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4394
  %359 = or i1 %354, %356, !dbg !4395
  call void @llvm.dbg.value(metadata i1 %359, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i1 %359, metadata !4299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4389
  call void @llvm.dbg.value(metadata i32 1, metadata !4306, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %69, metadata !4315, metadata !DIExpression()), !dbg !4391
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4393
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4393
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4391
  %362 = extractvalue { i64, i1 } %360, 0, !dbg !4394
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4394
  %364 = or i1 %359, %361, !dbg !4395
  %365 = zext i1 %364 to i32, !dbg !4395
  call void @llvm.dbg.value(metadata i32 %365, metadata !4299, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4389
  br label %372, !dbg !4323

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4310, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i32 2, metadata !4315, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 poison, metadata !4316, metadata !DIExpression()), !dbg !4396
  %367 = shl i64 %46, 1, !dbg !4398
  %368 = icmp sgt i64 %46, -1, !dbg !4398
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4398
  %370 = lshr i64 %46, 63, !dbg !4398
  %371 = trunc i64 %370 to i32, !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !4226, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !4232, metadata !DIExpression()), !dbg !4284
  br label %372, !dbg !4399

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4234
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4400
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !4226, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !4232, metadata !DIExpression()), !dbg !4284
  %375 = or i32 %374, %45, !dbg !4323
  tail call void @llvm.dbg.value(metadata i32 %375, metadata !4227, metadata !DIExpression()), !dbg !4234
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4401
  store ptr %376, ptr %20, align 8, !dbg !4401, !tbaa !1066
  %377 = load i8, ptr %376, align 1, !dbg !4402, !tbaa !1137
  %378 = icmp eq i8 %377, 0, !dbg !4402
  %379 = or disjoint i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4404
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !4227, metadata !DIExpression()), !dbg !4234
  br label %383

381:                                              ; preds = %68
  store i64 %46, ptr %3, align 8, !dbg !4405, !tbaa !1807
  %382 = or disjoint i32 %45, 2, !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !4226, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !4227, metadata !DIExpression()), !dbg !4234
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4407
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4408
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !4226, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !4227, metadata !DIExpression()), !dbg !4234
  store i64 %384, ptr %3, align 8, !dbg !4409, !tbaa !1807
  br label %386, !dbg !4410

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4234
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40, !dbg !4411
  ret i32 %387, !dbg !4411
}

; Function Attrs: nounwind
declare !dbg !4412 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4416 {
  %3 = alloca [81 x i8], align 1, !DIAssignID !4478
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4459, metadata !DIExpression(), metadata !4478, metadata ptr %3, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4454, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4455, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4456, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4457, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4458, metadata !DIExpression()), !dbg !4479
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #40, !dbg !4480
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4463, metadata !DIExpression()), !dbg !4481
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4465, metadata !DIExpression()), !dbg !4481
  br label %4, !dbg !4482

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4481
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4479
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4483
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4484
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4456, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4457, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4465, metadata !DIExpression()), !dbg !4481
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4463, metadata !DIExpression()), !dbg !4481
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4458, metadata !DIExpression()), !dbg !4479
  %11 = load i8, ptr %6, align 1, !dbg !4484, !tbaa !1137
  switch i8 %11, label %38 [
    i8 0, label %.loopexit
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4485

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4456, metadata !DIExpression()), !dbg !4479
  %13 = icmp slt i64 %7, 80, !dbg !4486
  br i1 %13, label %14, label %43, !dbg !4489

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4490
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4481
  store i8 114, ptr %10, align 1, !dbg !4491, !tbaa !1137
  br label %43, !dbg !4492

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4456, metadata !DIExpression()), !dbg !4479
  %17 = or i32 %8, 576, !dbg !4493
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4457, metadata !DIExpression()), !dbg !4479
  %18 = icmp slt i64 %7, 80, !dbg !4494
  br i1 %18, label %19, label %43, !dbg !4496

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4497
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4481
  store i8 119, ptr %10, align 1, !dbg !4498, !tbaa !1137
  br label %43, !dbg !4499

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4456, metadata !DIExpression()), !dbg !4479
  %22 = or i32 %8, 1088, !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4457, metadata !DIExpression()), !dbg !4479
  %23 = icmp slt i64 %7, 80, !dbg !4501
  br i1 %23, label %24, label %43, !dbg !4503

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4504
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4481
  store i8 97, ptr %10, align 1, !dbg !4505, !tbaa !1137
  br label %43, !dbg !4506

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4457, metadata !DIExpression()), !dbg !4479
  %27 = icmp slt i64 %7, 80, !dbg !4507
  br i1 %27, label %28, label %43, !dbg !4509

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4510
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4481
  store i8 98, ptr %10, align 1, !dbg !4511, !tbaa !1137
  br label %43, !dbg !4512

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4456, metadata !DIExpression()), !dbg !4479
  %31 = icmp slt i64 %7, 80, !dbg !4513
  br i1 %31, label %32, label %43, !dbg !4515

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4516
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4481
  store i8 43, ptr %10, align 1, !dbg !4517, !tbaa !1137
  br label %43, !dbg !4518

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4519
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4457, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4458, metadata !DIExpression()), !dbg !4479
  br label %43, !dbg !4520

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4521
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4457, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4458, metadata !DIExpression()), !dbg !4479
  br label %43, !dbg !4522

38:                                               ; preds = %4
  %.lcssa10 = phi i1 [ %5, %4 ]
  %.lcssa8 = phi ptr [ %6, %4 ], !dbg !4481
  %.lcssa6 = phi i64 [ %7, %4 ]
  %.lcssa4 = phi i32 [ %8, %4 ], !dbg !4479
  %.lcssa2 = phi i32 [ %9, %4 ], !dbg !4483
  %.lcssa = phi ptr [ %10, %4 ], !dbg !4484
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #41, !dbg !4523
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4466, metadata !DIExpression()), !dbg !4524
  %40 = sub nsw i64 80, %.lcssa6, !dbg !4525
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4527
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4466, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !4528, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata ptr %.lcssa8, metadata !4531, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %41, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.lcssa, ptr noundef nonnull align 1 %.lcssa8, i64 noundef %41, i1 noundef false) #40, !dbg !4535
  %42 = getelementptr inbounds i8, ptr %.lcssa, i64 %41, !dbg !4536
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4465, metadata !DIExpression()), !dbg !4481
  br label %49, !dbg !4537

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4479
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4456, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4457, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4481
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4458, metadata !DIExpression()), !dbg !4479
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4538
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4463, metadata !DIExpression()), !dbg !4481
  br label %4, !dbg !4539, !llvm.loop !4540

.loopexit:                                        ; preds = %4
  %.lcssa11 = phi i1 [ %5, %4 ]
  %.lcssa5 = phi i32 [ %8, %4 ], !dbg !4479
  %.lcssa3 = phi i32 [ %9, %4 ], !dbg !4483
  %.lcssa1 = phi ptr [ %10, %4 ], !dbg !4484
  br label %49, !dbg !4542

49:                                               ; preds = %.loopexit, %38
  %50 = phi i1 [ %.lcssa10, %38 ], [ %.lcssa11, %.loopexit ]
  %51 = phi i32 [ %.lcssa4, %38 ], [ %.lcssa5, %.loopexit ]
  %52 = phi i32 [ %.lcssa2, %38 ], [ %.lcssa3, %.loopexit ]
  %53 = phi ptr [ %42, %38 ], [ %.lcssa1, %.loopexit ], !dbg !4481
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !4465, metadata !DIExpression()), !dbg !4481
  store i8 0, ptr %53, align 1, !dbg !4542, !tbaa !1137
  br i1 %50, label %54, label %65, !dbg !4543

54:                                               ; preds = %49
  %55 = or i32 %52, %51, !dbg !4544
  %56 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %55, i32 noundef 438) #40, !dbg !4545
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !4471, metadata !DIExpression()), !dbg !4546
  %57 = icmp slt i32 %56, 0, !dbg !4547
  br i1 %57, label %67, label %58, !dbg !4549

58:                                               ; preds = %54
  %59 = call noalias ptr @fdopen(i32 noundef %56, ptr noundef nonnull %3) #40, !dbg !4550
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !4474, metadata !DIExpression()), !dbg !4546
  %60 = icmp eq ptr %59, null, !dbg !4551
  br i1 %60, label %61, label %67, !dbg !4552

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #43, !dbg !4553
  %63 = load i32, ptr %62, align 4, !dbg !4553, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !4475, metadata !DIExpression()), !dbg !4554
  %64 = tail call i32 @close(i32 noundef %56) #40, !dbg !4555
  store i32 %63, ptr %62, align 4, !dbg !4556, !tbaa !1128
  br label %67, !dbg !4557

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4558, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata ptr %1, metadata !4561, metadata !DIExpression()), !dbg !4562
  %66 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4564
  br label %67, !dbg !4565

67:                                               ; preds = %54, %61, %58, %65
  %68 = phi ptr [ %66, %65 ], [ null, %54 ], [ null, %61 ], [ %59, %58 ], !dbg !4479
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #40, !dbg !4566
  ret ptr %68, !dbg !4566
}

; Function Attrs: nofree
declare !dbg !4567 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare !dbg !4570 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4573 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4574 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4577 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4615, metadata !DIExpression()), !dbg !4620
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4621
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4616, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4620
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4622, metadata !DIExpression()), !dbg !4625
  %3 = load i32, ptr %0, align 8, !dbg !4627, !tbaa !4628
  %4 = and i32 %3, 32, !dbg !4629
  %5 = icmp eq i32 %4, 0, !dbg !4629
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4618, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4620
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4630
  %7 = icmp eq i32 %6, 0, !dbg !4631
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4619, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4620
  br i1 %5, label %8, label %18, !dbg !4632

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4634
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4616, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4620
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4635
  %11 = xor i1 %7, true, !dbg !4635
  %12 = sext i1 %11 to i32, !dbg !4635
  br i1 %10, label %21, label %13, !dbg !4635

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4636
  %15 = load i32, ptr %14, align 4, !dbg !4636, !tbaa !1128
  %16 = icmp ne i32 %15, 9, !dbg !4637
  %17 = sext i1 %16 to i32, !dbg !4638
  br label %21, !dbg !4638

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4639

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4641
  store i32 0, ptr %20, align 4, !dbg !4643, !tbaa !1128
  br label %21, !dbg !4641

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4620
  ret i32 %22, !dbg !4644
}

; Function Attrs: nounwind
declare !dbg !4645 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4649 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4687, metadata !DIExpression()), !dbg !4691
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4688, metadata !DIExpression()), !dbg !4691
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4692
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4689, metadata !DIExpression()), !dbg !4691
  %3 = icmp slt i32 %2, 0, !dbg !4693
  br i1 %3, label %4, label %6, !dbg !4695

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4696
  br label %24, !dbg !4697

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4698
  %8 = icmp eq i32 %7, 0, !dbg !4698
  br i1 %8, label %13, label %9, !dbg !4700

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4701
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4702
  %12 = icmp eq i64 %11, -1, !dbg !4703
  br i1 %12, label %16, label %13, !dbg !4704

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4705
  %15 = icmp eq i32 %14, 0, !dbg !4705
  br i1 %15, label %16, label %18, !dbg !4706

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4688, metadata !DIExpression()), !dbg !4691
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4690, metadata !DIExpression()), !dbg !4691
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4690, metadata !DIExpression()), !dbg !4691
  br label %24, !dbg !4708

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4709
  %20 = load i32, ptr %19, align 4, !dbg !4709, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4688, metadata !DIExpression()), !dbg !4691
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4690, metadata !DIExpression()), !dbg !4691
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4690, metadata !DIExpression()), !dbg !4691
  %22 = icmp eq i32 %20, 0, !dbg !4710
  br i1 %22, label %24, label %23, !dbg !4708

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4712, !tbaa !1128
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4690, metadata !DIExpression()), !dbg !4691
  br label %24, !dbg !4714

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4691
  ret i32 %25, !dbg !4715
}

; Function Attrs: nofree nounwind
declare !dbg !4716 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4717 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4718 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4719 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4722 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4760, metadata !DIExpression()), !dbg !4761
  %2 = icmp eq ptr %0, null, !dbg !4762
  br i1 %2, label %6, label %3, !dbg !4764

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4765
  %5 = icmp eq i32 %4, 0, !dbg !4765
  br i1 %5, label %6, label %8, !dbg !4766

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4767
  br label %16, !dbg !4768

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4769, metadata !DIExpression()), !dbg !4774
  %9 = load i32, ptr %0, align 8, !dbg !4776, !tbaa !4628
  %10 = and i32 %9, 256, !dbg !4778
  %11 = icmp eq i32 %10, 0, !dbg !4778
  br i1 %11, label %14, label %12, !dbg !4779

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4780
  br label %14, !dbg !4780

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4781
  br label %16, !dbg !4782

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4761
  ret i32 %17, !dbg !4783
}

; Function Attrs: nofree nounwind
declare !dbg !4784 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4785 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4824, metadata !DIExpression()), !dbg !4830
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4825, metadata !DIExpression()), !dbg !4830
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4826, metadata !DIExpression()), !dbg !4830
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4831
  %5 = load ptr, ptr %4, align 8, !dbg !4831, !tbaa !4832
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4833
  %7 = load ptr, ptr %6, align 8, !dbg !4833, !tbaa !4834
  %8 = icmp eq ptr %5, %7, !dbg !4835
  br i1 %8, label %9, label %27, !dbg !4836

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4837
  %11 = load ptr, ptr %10, align 8, !dbg !4837, !tbaa !1520
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4838
  %13 = load ptr, ptr %12, align 8, !dbg !4838, !tbaa !4839
  %14 = icmp eq ptr %11, %13, !dbg !4840
  br i1 %14, label %15, label %27, !dbg !4841

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4842
  %17 = load ptr, ptr %16, align 8, !dbg !4842, !tbaa !4843
  %18 = icmp eq ptr %17, null, !dbg !4844
  br i1 %18, label %19, label %27, !dbg !4845

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4846
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4847
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4827, metadata !DIExpression()), !dbg !4848
  %22 = icmp eq i64 %21, -1, !dbg !4849
  br i1 %22, label %29, label %23, !dbg !4851

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4852, !tbaa !4628
  %25 = and i32 %24, -17, !dbg !4852
  store i32 %25, ptr %0, align 8, !dbg !4852, !tbaa !4628
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4853
  store i64 %21, ptr %26, align 8, !dbg !4854, !tbaa !4855
  br label %29, !dbg !4856

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4857
  br label %29, !dbg !4858

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4830
  ret i32 %30, !dbg !4859
}

; Function Attrs: nofree nounwind
declare !dbg !4860 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4863 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4868, metadata !DIExpression()), !dbg !4873
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4869, metadata !DIExpression()), !dbg !4873
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4870, metadata !DIExpression()), !dbg !4873
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4871, metadata !DIExpression()), !dbg !4873
  %5 = icmp eq ptr %1, null, !dbg !4874
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4876
  %7 = select i1 %5, ptr @.str.137, ptr %1, !dbg !4876
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4876
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4870, metadata !DIExpression()), !dbg !4873
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4869, metadata !DIExpression()), !dbg !4873
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4868, metadata !DIExpression()), !dbg !4873
  %9 = icmp eq ptr %3, null, !dbg !4877
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4879
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4871, metadata !DIExpression()), !dbg !4873
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4880
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4872, metadata !DIExpression()), !dbg !4873
  %12 = icmp ult i64 %11, -3, !dbg !4881
  br i1 %12, label %13, label %17, !dbg !4883

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4884
  %15 = icmp eq i32 %14, 0, !dbg !4884
  br i1 %15, label %16, label %29, !dbg !4885

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4886, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata ptr %10, metadata !4893, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 0, metadata !4896, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i64 8, metadata !4897, metadata !DIExpression()), !dbg !4898
  store i64 0, ptr %10, align 1, !dbg !4900
  br label %29, !dbg !4901

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4902
  br i1 %18, label %19, label %20, !dbg !4904

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4905
  unreachable, !dbg !4905

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4906

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4908
  br i1 %23, label %29, label %24, !dbg !4909

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4910
  br i1 %25, label %29, label %26, !dbg !4913

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4914, !tbaa !1137
  %28 = zext i8 %27 to i32, !dbg !4915
  store i32 %28, ptr %6, align 4, !dbg !4916, !tbaa !1128
  br label %29, !dbg !4917

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4873
  ret i64 %30, !dbg !4918
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4919 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4925 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4927, metadata !DIExpression()), !dbg !4931
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4928, metadata !DIExpression()), !dbg !4931
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4929, metadata !DIExpression()), !dbg !4931
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4932
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4932
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4930, metadata !DIExpression()), !dbg !4931
  br i1 %5, label %6, label %8, !dbg !4934

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4935
  store i32 12, ptr %7, align 4, !dbg !4937, !tbaa !1128
  br label %12, !dbg !4938

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4932
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.value(metadata ptr %0, metadata !4939, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i64 %9, metadata !4942, metadata !DIExpression()), !dbg !4943
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4945
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4946
  br label %12, !dbg !4947

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4931
  ret ptr %13, !dbg !4948
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4949 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4956
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4952, metadata !DIExpression(), metadata !4956, metadata ptr %2, metadata !DIExpression()), !dbg !4957
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4951, metadata !DIExpression()), !dbg !4957
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4958
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4959
  %4 = icmp eq i32 %3, 0, !dbg !4959
  br i1 %4, label %5, label %12, !dbg !4961

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4962, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.value(metadata ptr @.str.142, metadata !4965, metadata !DIExpression()), !dbg !4966
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.142, i64 2), !dbg !4969
  %7 = icmp eq i32 %6, 0, !dbg !4970
  br i1 %7, label %11, label %8, !dbg !4971

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4962, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata ptr @.str.1.143, metadata !4965, metadata !DIExpression()), !dbg !4972
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.143, i64 6), !dbg !4974
  %10 = icmp eq i32 %9, 0, !dbg !4975
  br i1 %10, label %11, label %12, !dbg !4976

11:                                               ; preds = %8, %5
  br label %12, !dbg !4977

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4957
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4978
  ret i1 %13, !dbg !4978
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4979 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4983, metadata !DIExpression()), !dbg !4986
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4984, metadata !DIExpression()), !dbg !4986
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4985, metadata !DIExpression()), !dbg !4986
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4987
  ret i32 %4, !dbg !4988
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4989 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4993, metadata !DIExpression()), !dbg !4994
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4995
  ret ptr %2, !dbg !4996
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4997 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4999, metadata !DIExpression()), !dbg !5001
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5002
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5000, metadata !DIExpression()), !dbg !5001
  ret ptr %2, !dbg !5003
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5004 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5006, metadata !DIExpression()), !dbg !5013
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5007, metadata !DIExpression()), !dbg !5013
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5008, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i32 %0, metadata !4999, metadata !DIExpression()), !dbg !5014
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5016
  call void @llvm.dbg.value(metadata ptr %4, metadata !5000, metadata !DIExpression()), !dbg !5014
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5009, metadata !DIExpression()), !dbg !5013
  %5 = icmp eq ptr %4, null, !dbg !5017
  br i1 %5, label %6, label %9, !dbg !5018

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5019
  br i1 %7, label %19, label %8, !dbg !5022

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5023, !tbaa !1137
  br label %19, !dbg !5024

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5025
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5010, metadata !DIExpression()), !dbg !5026
  %11 = icmp ult i64 %10, %2, !dbg !5027
  br i1 %11, label %12, label %14, !dbg !5029

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5030
  call void @llvm.dbg.value(metadata ptr %1, metadata !5032, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %4, metadata !5035, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i64 %13, metadata !5036, metadata !DIExpression()), !dbg !5037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5039
  br label %19, !dbg !5040

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5041
  br i1 %15, label %19, label %16, !dbg !5044

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5045
  call void @llvm.dbg.value(metadata ptr %1, metadata !5032, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata ptr %4, metadata !5035, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 %17, metadata !5036, metadata !DIExpression()), !dbg !5047
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5049
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5050
  store i8 0, ptr %18, align 1, !dbg !5051, !tbaa !1137
  br label %19, !dbg !5052

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5053
  ret i32 %20, !dbg !5054
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
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !351, !355, !370, !695, !732, !734, !457, !471, !519, !961, !687, !968, !1003, !1005, !1019, !1028, !1030, !1032, !1034, !1036, !714, !1038, !1040, !1042, !1044}
!llvm.ident = !{!1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046}
!llvm.module.flags = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9be389db91a894f809edad2807c32835")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2280, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 285)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1080, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 135)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 960, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 120)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 50)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 62)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "longopts", scope: !59, file: !2, line: 40, type: !336, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/nproc.o -MD -MP -MF src/.deps/nproc.Tpo -c src/nproc.c -o src/.nproc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !100, globals: !110, splitDebugInlining: false, nameTableKind: None)
!60 = !{!61, !68, !74, !78, !85}
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !62, line: 32, baseType: !63, size: 32, elements: !64)
!62 = !DIFile(filename: "./lib/nproc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dd1b9803a99598e46cd95fdfb7d0bf6e")
!63 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "NPROC_ALL", value: 0)
!66 = !DIEnumerator(name: "NPROC_CURRENT", value: 1)
!67 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 337, baseType: !70, size: 32, elements: !71)
!69 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!73 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 34, baseType: !63, size: 32, elements: !75)
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "ALL_OPTION", value: 256)
!77 = !DIEnumerator(name: "IGNORE_OPTION", value: 257)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 24, baseType: !63, size: 32, elements: !80)
!79 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!82 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!83 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!84 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 46, baseType: !63, size: 32, elements: !87)
!86 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!88 = !DIEnumerator(name: "_ISupper", value: 256)
!89 = !DIEnumerator(name: "_ISlower", value: 512)
!90 = !DIEnumerator(name: "_ISalpha", value: 1024)
!91 = !DIEnumerator(name: "_ISdigit", value: 2048)
!92 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!93 = !DIEnumerator(name: "_ISspace", value: 8192)
!94 = !DIEnumerator(name: "_ISprint", value: 16384)
!95 = !DIEnumerator(name: "_ISgraph", value: 32768)
!96 = !DIEnumerator(name: "_ISblank", value: 1)
!97 = !DIEnumerator(name: "_IScntrl", value: 2)
!98 = !DIEnumerator(name: "_ISpunct", value: 4)
!99 = !DIEnumerator(name: "_ISalnum", value: 8)
!100 = !{!101, !102, !70, !103, !104, !107, !109}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 18, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !111, !116, !121, !126, !131, !136, !219, !221, !223, !228, !230, !235, !237, !239, !244, !246, !248, !250, !255, !260, !262, !264, !266, !268, !270, !272, !274, !279, !281, !286, !288, !290, !292, !294, !299, !304, !306, !308, !313, !318, !323, !328, !330, !332, !334, !57}
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 14)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 18)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 15)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 17)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 5)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !138, file: !69, line: 575, type: !70, isLocal: true, isDefinition: true)
!138 = distinct !DISubprogram(name: "oputs_", scope: !69, file: !69, line: 573, type: !139, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !141)
!139 = !DISubroutineType(cc: DW_CC_nocall, types: !140)
!140 = !{null, !107, !107}
!141 = !{!142, !143, !144, !147, !149, !150, !151, !155, !156, !157, !158, !160, !213, !214, !215, !217, !218}
!142 = !DILocalVariable(name: "program", arg: 1, scope: !138, file: !69, line: 573, type: !107)
!143 = !DILocalVariable(name: "option", arg: 2, scope: !138, file: !69, line: 573, type: !107)
!144 = !DILocalVariable(name: "term", scope: !145, file: !69, line: 585, type: !107)
!145 = distinct !DILexicalBlock(scope: !146, file: !69, line: 582, column: 5)
!146 = distinct !DILexicalBlock(scope: !138, file: !69, line: 581, column: 7)
!147 = !DILocalVariable(name: "double_space", scope: !138, file: !69, line: 594, type: !148)
!148 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!149 = !DILocalVariable(name: "first_word", scope: !138, file: !69, line: 595, type: !107)
!150 = !DILocalVariable(name: "option_text", scope: !138, file: !69, line: 596, type: !107)
!151 = !DILocalVariable(name: "s", scope: !152, file: !69, line: 608, type: !107)
!152 = distinct !DILexicalBlock(scope: !153, file: !69, line: 605, column: 5)
!153 = distinct !DILexicalBlock(scope: !154, file: !69, line: 604, column: 12)
!154 = distinct !DILexicalBlock(scope: !138, file: !69, line: 597, column: 7)
!155 = !DILocalVariable(name: "spaces", scope: !152, file: !69, line: 609, type: !104)
!156 = !DILocalVariable(name: "anchor_len", scope: !138, file: !69, line: 620, type: !104)
!157 = !DILocalVariable(name: "desc_text", scope: !138, file: !69, line: 625, type: !107)
!158 = !DILocalVariable(name: "__ptr", scope: !159, file: !69, line: 644, type: !107)
!159 = distinct !DILexicalBlock(scope: !138, file: !69, line: 644, column: 3)
!160 = !DILocalVariable(name: "__stream", scope: !159, file: !69, line: 644, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !164)
!163 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !166)
!165 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !182, !184, !185, !186, !190, !191, !193, !194, !197, !199, !202, !205, !206, !207, !208, !209}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !164, file: !165, line: 51, baseType: !70, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !164, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !164, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !164, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !164, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !164, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !164, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !164, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !164, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !164, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !164, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !164, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !164, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !165, line: 36, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !164, file: !165, line: 70, baseType: !183, size: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !164, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !164, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !164, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !188, line: 152, baseType: !189)
!188 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!189 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !164, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !164, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!192 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !164, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !164, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !165, line: 43, baseType: null)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !164, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !188, line: 153, baseType: !189)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !164, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !165, line: 37, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !164, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !165, line: 38, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !164, file: !165, line: 93, baseType: !183, size: 64, offset: 1344)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !164, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !164, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !164, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !164, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 20)
!213 = !DILocalVariable(name: "__cnt", scope: !159, file: !69, line: 644, type: !104)
!214 = !DILocalVariable(name: "url_program", scope: !138, file: !69, line: 648, type: !107)
!215 = !DILocalVariable(name: "__ptr", scope: !216, file: !69, line: 686, type: !107)
!216 = distinct !DILexicalBlock(scope: !138, file: !69, line: 686, column: 3)
!217 = !DILocalVariable(name: "__stream", scope: !216, file: !69, line: 686, type: !161)
!218 = !DILocalVariable(name: "__cnt", scope: !216, file: !69, line: 686, type: !104)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !69, line: 585, type: !133, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !69, line: 586, type: !133, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !69, line: 595, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 4)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !69, line: 620, type: !19, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 2)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !133, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !225, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 3)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !69, line: 650, type: !133, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !19, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !19, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !69, line: 652, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 7)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !69, line: 653, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 8)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !69, line: 654, type: !49, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !69, line: 655, type: !49, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !69, line: 656, type: !49, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !69, line: 657, type: !49, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !69, line: 663, type: !252, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !69, line: 664, type: !49, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !128, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 40)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !123, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 61)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !69, line: 679, type: !241, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !69, line: 683, type: !133, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !69, line: 688, type: !133, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !69, line: 691, type: !257, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !69, line: 839, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 16)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !69, line: 840, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 22)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !69, line: 841, type: !123, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !69, line: 862, type: !225, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !69, line: 868, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 71)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !69, line: 875, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 27)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 51)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 12)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !225, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !252, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !133, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !257, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 1280, elements: !134)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !339, line: 50, size: 256, elements: !340)
!339 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!340 = !{!341, !342, !343, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !339, line: 52, baseType: !107, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !338, file: !339, line: 55, baseType: !70, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !338, file: !339, line: 56, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !338, file: !339, line: 57, baseType: !70, size: 32, offset: 192)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !348, line: 3, type: !123, isLocal: true, isDefinition: true)
!348 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "Version", scope: !351, file: !348, line: 3, type: !107, isLocal: false, isDefinition: true)
!351 = distinct !DICompileUnit(language: DW_LANG_C11, file: !348, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !352, splitDebugInlining: false, nameTableKind: None)
!352 = !{!346, !349}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "file_name", scope: !355, file: !356, line: 45, type: !107, isLocal: true, isDefinition: true)
!355 = distinct !DICompileUnit(language: DW_LANG_C11, file: !356, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !357, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!357 = !{!358, !360, !362, !364, !353, !366}
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !356, line: 121, type: !252, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !356, line: 121, type: !325, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !356, line: 123, type: !252, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !356, line: 126, type: !241, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !355, file: !356, line: 55, type: !148, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !370, file: !371, line: 66, type: !421, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!372 = !{!102, !109}
!373 = !{!374, !376, !400, !402, !404, !406, !368, !408, !410, !412, !414, !419}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 272, type: !133, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "old_file_name", scope: !378, file: !371, line: 304, type: !107, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "verror_at_line", scope: !371, file: !371, line: 298, type: !379, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !393)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !70, !70, !107, !63, !107, !381}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !382, line: 52, baseType: !383)
!382 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !384, line: 12, baseType: !385)
!384 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !371, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !387)
!387 = !{!388, !389, !390, !391, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !386, file: !371, baseType: !102, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !386, file: !371, baseType: !102, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !386, file: !371, baseType: !102, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !386, file: !371, baseType: !70, size: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !386, file: !371, baseType: !70, size: 32, offset: 224)
!393 = !{!394, !395, !396, !397, !398, !399}
!394 = !DILocalVariable(name: "status", arg: 1, scope: !378, file: !371, line: 298, type: !70)
!395 = !DILocalVariable(name: "errnum", arg: 2, scope: !378, file: !371, line: 298, type: !70)
!396 = !DILocalVariable(name: "file_name", arg: 3, scope: !378, file: !371, line: 298, type: !107)
!397 = !DILocalVariable(name: "line_number", arg: 4, scope: !378, file: !371, line: 298, type: !63)
!398 = !DILocalVariable(name: "message", arg: 5, scope: !378, file: !371, line: 298, type: !107)
!399 = !DILocalVariable(name: "args", arg: 6, scope: !378, file: !371, line: 298, type: !381)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "old_line_number", scope: !378, file: !371, line: 305, type: !63, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !371, line: 338, type: !225, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !257, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !232, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "error_message_count", scope: !370, file: !371, line: 69, type: !63, isLocal: false, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !370, file: !371, line: 295, type: !70, isLocal: false, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !252, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !416, isLocal: true, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 21)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !371, line: 214, type: !133, isLocal: true, isDefinition: true)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null}
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !426, line: 553, type: !296, isLocal: true, isDefinition: true)
!426 = !DIFile(filename: "lib/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8ed3d3246f48dd170075371c80925eac")
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !426, line: 556, type: !128, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !426, line: 404, type: !118, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !426, line: 404, type: !232, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !426, line: 415, type: !133, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !426, line: 441, type: !437, isLocal: true, isDefinition: true)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 13)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !426, line: 446, type: !225, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !426, line: 449, type: !257, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !426, line: 371, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 34)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !426, line: 372, type: !123, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !426, line: 378, type: !437, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !426, line: 384, type: !257, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "program_name", scope: !457, file: !458, line: 31, type: !107, isLocal: false, isDefinition: true)
!457 = distinct !DICompileUnit(language: DW_LANG_C11, file: !458, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !459, globals: !460, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!459 = !{!102, !101}
!460 = !{!455, !461, !463}
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !458, line: 46, type: !257, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !458, line: 49, type: !225, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "utf07FF", scope: !467, file: !468, line: 46, type: !495, isLocal: true, isDefinition: true)
!467 = distinct !DISubprogram(name: "proper_name_lite", scope: !468, file: !468, line: 38, type: !469, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !473)
!468 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!469 = !DISubroutineType(types: !470)
!470 = !{!107, !107, !107}
!471 = distinct !DICompileUnit(language: DW_LANG_C11, file: !468, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !472, splitDebugInlining: false, nameTableKind: None)
!472 = !{!465}
!473 = !{!474, !475, !476, !477, !482}
!474 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !467, file: !468, line: 38, type: !107)
!475 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !467, file: !468, line: 38, type: !107)
!476 = !DILocalVariable(name: "translation", scope: !467, file: !468, line: 40, type: !107)
!477 = !DILocalVariable(name: "w", scope: !467, file: !468, line: 47, type: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !479, line: 37, baseType: !480)
!479 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !188, line: 57, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !188, line: 42, baseType: !63)
!482 = !DILocalVariable(name: "mbs", scope: !467, file: !468, line: 48, type: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !484, line: 6, baseType: !485)
!484 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !486, line: 21, baseType: !487)
!486 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 13, size: 64, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !487, file: !486, line: 15, baseType: !70, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !487, file: !486, line: 20, baseType: !491, size: 32, offset: 32)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !486, line: 16, size: 32, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !491, file: !486, line: 18, baseType: !63, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !491, file: !486, line: 19, baseType: !225, size: 32)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16, elements: !233)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !498, line: 78, type: !257, isLocal: true, isDefinition: true)
!498 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !498, line: 79, type: !19, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !498, line: 80, type: !437, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !498, line: 81, type: !437, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !498, line: 82, type: !210, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !498, line: 83, type: !232, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !498, line: 84, type: !257, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !498, line: 85, type: !252, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !498, line: 86, type: !252, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !498, line: 87, type: !257, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !519, file: !498, line: 76, type: !605, isLocal: false, isDefinition: true)
!519 = distinct !DICompileUnit(language: DW_LANG_C11, file: !498, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !520, retainedTypes: !540, globals: !541, splitDebugInlining: false, nameTableKind: None)
!520 = !{!521, !535, !85}
!521 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !522, line: 42, baseType: !63, size: 32, elements: !523)
!522 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!524 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!525 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!526 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!527 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!528 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!529 = !DIEnumerator(name: "c_quoting_style", value: 5)
!530 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!531 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!532 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!533 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!534 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!535 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !522, line: 254, baseType: !63, size: 32, elements: !536)
!536 = !{!537, !538, !539}
!537 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!538 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!539 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!540 = !{!102, !70, !103, !104}
!541 = !{!496, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !542, !546, !556, !558, !563, !565, !567, !569, !571, !594, !601, !603}
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !519, file: !498, line: 92, type: !544, isLocal: false, isDefinition: true)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 320, elements: !50)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !519, file: !498, line: 1040, type: !548, isLocal: false, isDefinition: true)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !498, line: 56, size: 448, elements: !549)
!549 = !{!550, !551, !552, !554, !555}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !548, file: !498, line: 59, baseType: !521, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !498, line: 62, baseType: !70, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !548, file: !498, line: 66, baseType: !553, size: 256, offset: 64)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !258)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !548, file: !498, line: 69, baseType: !107, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !548, file: !498, line: 72, baseType: !107, size: 64, offset: 384)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !519, file: !498, line: 107, type: !548, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "slot0", scope: !519, file: !498, line: 831, type: !560, isLocal: true, isDefinition: true)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 256)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !498, line: 321, type: !232, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !498, line: 357, type: !232, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !498, line: 358, type: !232, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !498, line: 199, type: !252, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "quote", scope: !573, file: !498, line: 228, type: !592, isLocal: true, isDefinition: true)
!573 = distinct !DISubprogram(name: "gettext_quote", scope: !498, file: !498, line: 197, type: !574, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!107, !107, !521}
!576 = !{!577, !578, !579, !580, !581}
!577 = !DILocalVariable(name: "msgid", arg: 1, scope: !573, file: !498, line: 197, type: !107)
!578 = !DILocalVariable(name: "s", arg: 2, scope: !573, file: !498, line: 197, type: !521)
!579 = !DILocalVariable(name: "translation", scope: !573, file: !498, line: 199, type: !107)
!580 = !DILocalVariable(name: "w", scope: !573, file: !498, line: 229, type: !478)
!581 = !DILocalVariable(name: "mbs", scope: !573, file: !498, line: 230, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !484, line: 6, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !486, line: 21, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 13, size: 64, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !584, file: !486, line: 15, baseType: !70, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !584, file: !486, line: 20, baseType: !588, size: 32, offset: 32)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !584, file: !486, line: 16, size: 32, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !588, file: !486, line: 18, baseType: !63, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !588, file: !486, line: 19, baseType: !225, size: 32)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !593)
!593 = !{!234, !227}
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "slotvec", scope: !519, file: !498, line: 834, type: !596, isLocal: true, isDefinition: true)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !498, line: 823, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !597, file: !498, line: 825, baseType: !104, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !597, file: !498, line: 826, baseType: !101, size: 64, offset: 64)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "nslots", scope: !519, file: !498, line: 832, type: !70, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "slotvec0", scope: !519, file: !498, line: 833, type: !597, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 704, elements: !607)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!607 = !{!608}
!608 = !DISubrange(count: 11)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !611, line: 67, type: !325, isLocal: true, isDefinition: true)
!611 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !611, line: 69, type: !252, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !611, line: 83, type: !252, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !611, line: 83, type: !225, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !611, line: 85, type: !232, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !611, line: 88, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 171)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !611, line: 88, type: !446, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !611, line: 105, type: !296, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !611, line: 109, type: !9, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !611, line: 113, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 28)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !611, line: 120, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 32)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !611, line: 127, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 36)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !611, line: 134, type: !276, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !611, line: 142, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 44)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !611, line: 150, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 48)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !611, line: 159, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 52)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !611, line: 170, type: !665, isLocal: true, isDefinition: true)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 60)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !611, line: 248, type: !210, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !611, line: 248, type: !301, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !611, line: 254, type: !210, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !611, line: 254, type: !113, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !611, line: 254, type: !276, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !611, line: 259, type: !3, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !611, line: 259, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 29)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !687, file: !688, line: 26, type: !690, isLocal: false, isDefinition: true)
!687 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !689, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!689 = !{!685}
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 376, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 47)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "exit_failure", scope: !695, file: !696, line: 24, type: !698, isLocal: false, isDefinition: true)
!695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !696, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !697, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!697 = !{!693}
!698 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !701, line: 34, type: !241, isLocal: true, isDefinition: true)
!701 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !701, line: 34, type: !252, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !701, line: 34, type: !128, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !708, line: 80, type: !252, isLocal: true, isDefinition: true)
!708 = !DIFile(filename: "lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !711, line: 108, type: !44, isLocal: true, isDefinition: true)
!711 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "internal_state", scope: !714, file: !711, line: 97, type: !717, isLocal: true, isDefinition: true)
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !715, globals: !716, splitDebugInlining: false, nameTableKind: None)
!715 = !{!102, !104, !109}
!716 = !{!709, !712}
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !484, line: 6, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !486, line: 21, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 13, size: 64, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !719, file: !486, line: 15, baseType: !70, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !719, file: !486, line: 20, baseType: !723, size: 32, offset: 32)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !486, line: 16, size: 32, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !723, file: !486, line: 18, baseType: !63, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !723, file: !486, line: 19, baseType: !225, size: 32)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !729, line: 35, type: !232, isLocal: true, isDefinition: true)
!729 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !729, line: 35, type: !19, isLocal: true, isDefinition: true)
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !426, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-nproc.o -MD -MP -MF lib/.deps/libcoreutils_a-nproc.Tpo -c lib/nproc.c -o lib/.libcoreutils_a-nproc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !735, retainedTypes: !958, globals: !960, splitDebugInlining: false, nameTableKind: None)
!735 = !{!736, !738}
!736 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !737, line: 32, baseType: !63, size: 32, elements: !64)
!737 = !DIFile(filename: "lib/nproc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dd1b9803a99598e46cd95fdfb7d0bf6e")
!738 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !739, line: 71, baseType: !63, size: 32, elements: !740)
!739 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957}
!741 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!742 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!743 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!744 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!745 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!746 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!747 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!748 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!749 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!750 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!751 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!752 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!753 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!754 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!755 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!756 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!757 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!758 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!759 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!760 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!761 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!762 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!763 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!764 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!765 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!766 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!767 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!768 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!769 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!770 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!771 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!772 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!773 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!774 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!775 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!776 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!777 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!778 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!779 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!780 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!781 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!782 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!783 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!784 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!785 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!786 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!787 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!788 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!789 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!790 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!791 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!792 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!793 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!794 = !DIEnumerator(name: "_SC_PII", value: 53)
!795 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!796 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!797 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!798 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!799 = !DIEnumerator(name: "_SC_POLL", value: 58)
!800 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!801 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!802 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!803 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!804 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!805 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!806 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!807 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!808 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!809 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!810 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!811 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!812 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!813 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!814 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!815 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!816 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!817 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!818 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!819 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!820 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!821 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!822 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!823 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!824 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!825 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!826 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!827 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!828 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!829 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!830 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!831 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!832 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!833 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!834 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!835 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!836 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!837 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!838 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!839 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!840 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!841 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!842 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!843 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!844 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!845 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!846 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!847 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!848 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!849 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!850 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!851 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!852 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!853 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!854 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!855 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!856 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!857 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!858 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!859 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!860 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!861 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!862 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!863 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!864 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!865 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!866 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!867 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!868 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!869 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!870 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!871 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!872 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!873 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!874 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!875 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!876 = !DIEnumerator(name: "_SC_BASE", value: 134)
!877 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!878 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!879 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!880 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!881 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!882 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!883 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!884 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!885 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!886 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!887 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!888 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!889 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!890 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!891 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!892 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!893 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!894 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!895 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!896 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!897 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!898 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!899 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!900 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!901 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!902 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!903 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!904 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!905 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!906 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!907 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!908 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!909 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!910 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!911 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!912 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!913 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!914 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!915 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!916 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!917 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!918 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!919 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!920 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!921 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!922 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!923 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!924 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!925 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!926 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!927 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!928 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!929 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!930 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!931 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!932 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!933 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!934 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!935 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!936 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!937 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!938 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!939 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!940 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!941 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!942 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!943 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!944 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!945 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!946 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!947 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!948 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!949 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!950 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!951 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!952 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!953 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!954 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!955 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!956 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!957 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!958 = !{!102, !959, !189}
!959 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!960 = !{!424, !427, !429, !431, !433, !435, !440, !442, !444, !449, !451, !453}
!961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !611, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !962, retainedTypes: !966, globals: !967, splitDebugInlining: false, nameTableKind: None)
!962 = !{!963}
!963 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !611, line: 40, baseType: !63, size: 32, elements: !964)
!964 = !{!965}
!965 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!966 = !{!102}
!967 = !{!609, !612, !614, !616, !618, !620, !625, !627, !629, !631, !636, !641, !646, !648, !653, !658, !663, !668, !670, !672, !674, !676, !678, !680}
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !969, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !970, retainedTypes: !1002, splitDebugInlining: false, nameTableKind: None)
!969 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!970 = !{!971, !983}
!971 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !972, file: !969, line: 188, baseType: !63, size: 32, elements: !981)
!972 = distinct !DISubprogram(name: "x2nrealloc", scope: !969, file: !969, line: 176, type: !973, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !976)
!973 = !DISubroutineType(types: !974)
!974 = !{!102, !102, !975, !104}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!976 = !{!977, !978, !979, !980}
!977 = !DILocalVariable(name: "p", arg: 1, scope: !972, file: !969, line: 176, type: !102)
!978 = !DILocalVariable(name: "pn", arg: 2, scope: !972, file: !969, line: 176, type: !975)
!979 = !DILocalVariable(name: "s", arg: 3, scope: !972, file: !969, line: 176, type: !104)
!980 = !DILocalVariable(name: "n", scope: !972, file: !969, line: 178, type: !104)
!981 = !{!982}
!982 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!983 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !984, file: !969, line: 228, baseType: !63, size: 32, elements: !981)
!984 = distinct !DISubprogram(name: "xpalloc", scope: !969, file: !969, line: 223, type: !985, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !992)
!985 = !DISubroutineType(types: !986)
!986 = !{!102, !102, !987, !988, !990, !988}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !989, line: 130, baseType: !990)
!989 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !991, line: 18, baseType: !189)
!991 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!993 = !DILocalVariable(name: "pa", arg: 1, scope: !984, file: !969, line: 223, type: !102)
!994 = !DILocalVariable(name: "pn", arg: 2, scope: !984, file: !969, line: 223, type: !987)
!995 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !984, file: !969, line: 223, type: !988)
!996 = !DILocalVariable(name: "n_max", arg: 4, scope: !984, file: !969, line: 223, type: !990)
!997 = !DILocalVariable(name: "s", arg: 5, scope: !984, file: !969, line: 223, type: !988)
!998 = !DILocalVariable(name: "n0", scope: !984, file: !969, line: 230, type: !988)
!999 = !DILocalVariable(name: "n", scope: !984, file: !969, line: 237, type: !988)
!1000 = !DILocalVariable(name: "nbytes", scope: !984, file: !969, line: 248, type: !988)
!1001 = !DILocalVariable(name: "adjusted_nbytes", scope: !984, file: !969, line: 252, type: !988)
!1002 = !{!101, !102}
!1003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1004, splitDebugInlining: false, nameTableKind: None)
!1004 = !{!699, !702, !704}
!1005 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1006, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xdectoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xdectoumax.Tpo -c lib/xdectoumax.c -o lib/.libcoreutils_a-xdectoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1007, globals: !1018, splitDebugInlining: false, nameTableKind: None)
!1006 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!1007 = !{!1008, !1016}
!1008 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1009, line: 30, baseType: !63, size: 32, elements: !1010)
!1009 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1010 = !{!1011, !1012, !1013, !1014, !1015}
!1011 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!1012 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!1013 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!1014 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!1015 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!1016 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1017, line: 24, baseType: !63, size: 32, elements: !80)
!1017 = !DIFile(filename: "lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!1018 = !{!706}
!1019 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1020, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoumax.Tpo -c lib/xstrtoumax.c -o lib/.libcoreutils_a-xstrtoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1021, retainedTypes: !1024, splitDebugInlining: false, nameTableKind: None)
!1020 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!1021 = !{!1022, !85}
!1022 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1023, line: 30, baseType: !63, size: 32, elements: !1010)
!1023 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1024 = !{!70, !103, !101, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1026, line: 102, baseType: !1027)
!1026 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !188, line: 73, baseType: !106)
!1028 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1029, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!1029 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1030 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1031, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1031 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1032 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1033, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1033 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1034 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1035, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1036 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1037, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!1037 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1038 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1039, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!1039 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1040 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1041, splitDebugInlining: false, nameTableKind: None)
!1041 = !{!727, !730}
!1042 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1043, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1043 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1044 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1045, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!1045 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1046 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1047 = !{i32 7, !"Dwarf Version", i32 5}
!1048 = !{i32 2, !"Debug Info Version", i32 3}
!1049 = !{i32 1, !"wchar_size", i32 4}
!1050 = !{i32 8, !"PIC Level", i32 2}
!1051 = !{i32 7, !"PIE Level", i32 2}
!1052 = !{i32 7, !"uwtable", i32 2}
!1053 = !{i32 7, !"frame-pointer", i32 1}
!1054 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1055 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 50, type: !1056, scopeLine: 51, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !70}
!1058 = !{!1059}
!1059 = !DILocalVariable(name: "status", arg: 1, scope: !1055, file: !2, line: 50, type: !70)
!1060 = !DILocation(line: 0, scope: !1055)
!1061 = !DILocation(line: 52, column: 14, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 52, column: 7)
!1063 = !DILocation(line: 52, column: 7, scope: !1055)
!1064 = !DILocation(line: 53, column: 5, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 53, column: 5)
!1066 = !{!1067, !1067, i64 0}
!1067 = !{!"any pointer", !1068, i64 0}
!1068 = !{!"omnipotent char", !1069, i64 0}
!1069 = !{!"Simple C/C++ TBAA"}
!1070 = !DILocation(line: 56, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 55, column: 5)
!1072 = !DILocation(line: 57, column: 7, scope: !1071)
!1073 = !DILocation(line: 64, column: 7, scope: !1071)
!1074 = !DILocation(line: 69, column: 7, scope: !1071)
!1075 = !DILocation(line: 75, column: 7, scope: !1071)
!1076 = !DILocation(line: 76, column: 7, scope: !1071)
!1077 = !DILocalVariable(name: "program", arg: 1, scope: !1078, file: !69, line: 836, type: !107)
!1078 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !1079, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !107}
!1081 = !{!1077, !1082, !1089, !1090, !1092, !1093}
!1082 = !DILocalVariable(name: "infomap", scope: !1078, file: !69, line: 838, type: !1083)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, size: 896, elements: !253)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1078, file: !69, line: 838, size: 128, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1085, file: !69, line: 838, baseType: !107, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1085, file: !69, line: 838, baseType: !107, size: 64, offset: 64)
!1089 = !DILocalVariable(name: "node", scope: !1078, file: !69, line: 848, type: !107)
!1090 = !DILocalVariable(name: "map_prog", scope: !1078, file: !69, line: 849, type: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1092 = !DILocalVariable(name: "lc_messages", scope: !1078, file: !69, line: 861, type: !107)
!1093 = !DILocalVariable(name: "url_program", scope: !1078, file: !69, line: 874, type: !107)
!1094 = !DILocation(line: 0, scope: !1078, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 77, column: 7, scope: !1071)
!1096 = !{}
!1097 = !DILocation(line: 857, column: 3, scope: !1078, inlinedAt: !1095)
!1098 = !DILocation(line: 861, column: 29, scope: !1078, inlinedAt: !1095)
!1099 = !DILocation(line: 862, column: 7, scope: !1100, inlinedAt: !1095)
!1100 = distinct !DILexicalBlock(scope: !1078, file: !69, line: 862, column: 7)
!1101 = !DILocation(line: 862, column: 19, scope: !1100, inlinedAt: !1095)
!1102 = !DILocation(line: 862, column: 22, scope: !1100, inlinedAt: !1095)
!1103 = !DILocation(line: 862, column: 7, scope: !1078, inlinedAt: !1095)
!1104 = !DILocation(line: 868, column: 7, scope: !1105, inlinedAt: !1095)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !69, line: 863, column: 5)
!1106 = !DILocation(line: 870, column: 5, scope: !1105, inlinedAt: !1095)
!1107 = !DILocation(line: 875, column: 3, scope: !1078, inlinedAt: !1095)
!1108 = !DILocation(line: 877, column: 3, scope: !1078, inlinedAt: !1095)
!1109 = !DILocation(line: 79, column: 3, scope: !1055)
!1110 = !DISubprogram(name: "dcgettext", scope: !1111, file: !1111, line: 51, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!101, !107, !107, !70}
!1114 = !DISubprogram(name: "__fprintf_chk", scope: !1115, file: !1115, line: 93, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!70, !1118, !70, !1119, null}
!1118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!1119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!1120 = !DISubprogram(name: "__printf_chk", scope: !1115, file: !1115, line: 95, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!70, !70, !1119, null}
!1123 = !DISubprogram(name: "fputs_unlocked", scope: !382, file: !382, line: 691, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!70, !1119, !1118}
!1126 = !DILocation(line: 0, scope: !138)
!1127 = !DILocation(line: 581, column: 7, scope: !146)
!1128 = !{!1129, !1129, i64 0}
!1129 = !{!"int", !1068, i64 0}
!1130 = !DILocation(line: 581, column: 19, scope: !146)
!1131 = !DILocation(line: 581, column: 7, scope: !138)
!1132 = !DILocation(line: 585, column: 26, scope: !145)
!1133 = !DILocation(line: 0, scope: !145)
!1134 = !DILocation(line: 586, column: 23, scope: !145)
!1135 = !DILocation(line: 586, column: 28, scope: !145)
!1136 = !DILocation(line: 586, column: 32, scope: !145)
!1137 = !{!1068, !1068, i64 0}
!1138 = !DILocation(line: 586, column: 38, scope: !145)
!1139 = !DILocalVariable(name: "__s1", arg: 1, scope: !1140, file: !1141, line: 1359, type: !107)
!1140 = distinct !DISubprogram(name: "streq", scope: !1141, file: !1141, line: 1359, type: !1142, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1144)
!1141 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!148, !107, !107}
!1144 = !{!1139, !1145}
!1145 = !DILocalVariable(name: "__s2", arg: 2, scope: !1140, file: !1141, line: 1359, type: !107)
!1146 = !DILocation(line: 0, scope: !1140, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 586, column: 41, scope: !145)
!1148 = !DILocation(line: 1361, column: 11, scope: !1140, inlinedAt: !1147)
!1149 = !DILocation(line: 1361, column: 10, scope: !1140, inlinedAt: !1147)
!1150 = !DILocation(line: 586, column: 19, scope: !145)
!1151 = !DILocation(line: 587, column: 5, scope: !145)
!1152 = !DILocation(line: 588, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !138, file: !69, line: 588, column: 7)
!1154 = !DILocation(line: 588, column: 7, scope: !138)
!1155 = !DILocation(line: 590, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !69, line: 589, column: 5)
!1157 = !DILocation(line: 591, column: 7, scope: !1156)
!1158 = !DILocation(line: 595, column: 37, scope: !138)
!1159 = !DILocation(line: 595, column: 35, scope: !138)
!1160 = !DILocation(line: 596, column: 29, scope: !138)
!1161 = !DILocation(line: 597, column: 8, scope: !154)
!1162 = !DILocation(line: 597, column: 7, scope: !138)
!1163 = !DILocation(line: 604, column: 24, scope: !153)
!1164 = !DILocation(line: 604, column: 12, scope: !154)
!1165 = !DILocation(line: 0, scope: !152)
!1166 = !DILocation(line: 610, column: 16, scope: !152)
!1167 = !DILocation(line: 610, column: 7, scope: !152)
!1168 = !DILocation(line: 611, column: 21, scope: !152)
!1169 = !{!1170, !1170, i64 0}
!1170 = !{!"short", !1068, i64 0}
!1171 = !DILocation(line: 611, column: 19, scope: !152)
!1172 = !DILocation(line: 611, column: 16, scope: !152)
!1173 = !DILocation(line: 610, column: 30, scope: !152)
!1174 = distinct !{!1174, !1167, !1168, !1175}
!1175 = !{!"llvm.loop.mustprogress"}
!1176 = !DILocation(line: 612, column: 18, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !152, file: !69, line: 612, column: 11)
!1178 = !DILocation(line: 612, column: 11, scope: !152)
!1179 = !DILocation(line: 620, column: 23, scope: !138)
!1180 = !DILocation(line: 625, column: 39, scope: !138)
!1181 = !DILocation(line: 626, column: 3, scope: !138)
!1182 = !DILocation(line: 626, column: 10, scope: !138)
!1183 = !DILocation(line: 626, column: 21, scope: !138)
!1184 = !DILocation(line: 628, column: 44, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !69, line: 628, column: 11)
!1186 = distinct !DILexicalBlock(scope: !138, file: !69, line: 627, column: 5)
!1187 = !DILocation(line: 628, column: 32, scope: !1185)
!1188 = !DILocation(line: 628, column: 49, scope: !1185)
!1189 = !DILocation(line: 628, column: 11, scope: !1186)
!1190 = !DILocation(line: 630, column: 11, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !69, line: 630, column: 11)
!1192 = !DILocation(line: 630, column: 11, scope: !1186)
!1193 = !DILocation(line: 632, column: 26, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !69, line: 632, column: 15)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !69, line: 631, column: 9)
!1196 = !DILocation(line: 632, column: 34, scope: !1194)
!1197 = !DILocation(line: 632, column: 37, scope: !1194)
!1198 = !DILocation(line: 632, column: 15, scope: !1195)
!1199 = !DILocation(line: 640, column: 16, scope: !1186)
!1200 = distinct !{!1200, !1181, !1201, !1175}
!1201 = !DILocation(line: 641, column: 5, scope: !138)
!1202 = !DILocation(line: 644, column: 3, scope: !138)
!1203 = !DILocation(line: 0, scope: !1140, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 648, column: 31, scope: !138)
!1205 = !DILocation(line: 0, scope: !1140, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 649, column: 31, scope: !138)
!1207 = !DILocation(line: 0, scope: !1140, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 650, column: 31, scope: !138)
!1209 = !DILocation(line: 0, scope: !1140, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 651, column: 31, scope: !138)
!1211 = !DILocation(line: 0, scope: !1140, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 652, column: 31, scope: !138)
!1213 = !DILocation(line: 0, scope: !1140, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 653, column: 31, scope: !138)
!1215 = !DILocation(line: 0, scope: !1140, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 654, column: 31, scope: !138)
!1217 = !DILocation(line: 0, scope: !1140, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 655, column: 31, scope: !138)
!1219 = !DILocation(line: 0, scope: !1140, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 656, column: 31, scope: !138)
!1221 = !DILocation(line: 0, scope: !1140, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 657, column: 31, scope: !138)
!1223 = !DILocation(line: 663, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !138, file: !69, line: 663, column: 7)
!1225 = !DILocation(line: 664, column: 7, scope: !1224)
!1226 = !DILocation(line: 664, column: 10, scope: !1224)
!1227 = !DILocation(line: 663, column: 7, scope: !138)
!1228 = !DILocation(line: 669, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !69, line: 665, column: 5)
!1230 = !DILocation(line: 671, column: 5, scope: !1229)
!1231 = !DILocation(line: 676, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !69, line: 673, column: 5)
!1233 = !DILocation(line: 679, column: 3, scope: !138)
!1234 = !DILocation(line: 683, column: 3, scope: !138)
!1235 = !DILocation(line: 686, column: 3, scope: !138)
!1236 = !DILocation(line: 688, column: 3, scope: !138)
!1237 = !DILocation(line: 691, column: 3, scope: !138)
!1238 = !DILocation(line: 695, column: 3, scope: !138)
!1239 = !DILocation(line: 696, column: 1, scope: !138)
!1240 = !DISubprogram(name: "setlocale", scope: !1241, file: !1241, line: 122, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1241 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!101, !70, !107}
!1244 = !DISubprogram(name: "strncmp", scope: !1245, file: !1245, line: 159, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!70, !107, !107, !104}
!1248 = !DISubprogram(name: "exit", scope: !1249, file: !1249, line: 624, type: !1056, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1249 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1250 = !DISubprogram(name: "getenv", scope: !1249, file: !1249, line: 641, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!101, !107}
!1253 = !DISubprogram(name: "strcmp", scope: !1245, file: !1245, line: 156, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!70, !107, !107}
!1256 = !DISubprogram(name: "strspn", scope: !1245, file: !1245, line: 297, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!106, !107, !107}
!1259 = !DISubprogram(name: "strchr", scope: !1245, file: !1245, line: 246, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!101, !107, !70}
!1262 = !DISubprogram(name: "__ctype_b_loc", scope: !86, file: !86, line: 79, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1268 = !DISubprogram(name: "strcspn", scope: !1245, file: !1245, line: 293, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1269 = !DISubprogram(name: "fwrite_unlocked", scope: !382, file: !382, line: 704, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!104, !1272, !104, !104, !1118}
!1272 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1275 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 83, type: !1276, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1279)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!70, !70, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1286}
!1280 = !DILocalVariable(name: "argc", arg: 1, scope: !1275, file: !2, line: 83, type: !70)
!1281 = !DILocalVariable(name: "argv", arg: 2, scope: !1275, file: !2, line: 83, type: !1278)
!1282 = !DILocalVariable(name: "ignore", scope: !1275, file: !2, line: 85, type: !106)
!1283 = !DILocalVariable(name: "mode", scope: !1275, file: !2, line: 94, type: !61)
!1284 = !DILocalVariable(name: "c", scope: !1285, file: !2, line: 98, type: !70)
!1285 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 97, column: 5)
!1286 = !DILocalVariable(name: "nproc", scope: !1275, file: !2, line: 127, type: !106)
!1287 = !DILocation(line: 0, scope: !1275)
!1288 = !DILocation(line: 87, column: 21, scope: !1275)
!1289 = !DILocation(line: 87, column: 3, scope: !1275)
!1290 = !DILocation(line: 88, column: 3, scope: !1275)
!1291 = !DILocation(line: 89, column: 3, scope: !1275)
!1292 = !DILocation(line: 90, column: 3, scope: !1275)
!1293 = !DILocation(line: 92, column: 3, scope: !1275)
!1294 = !DILocation(line: 96, column: 3, scope: !1275)
!1295 = !DILocation(line: 98, column: 15, scope: !1285)
!1296 = !DILocation(line: 0, scope: !1285)
!1297 = !DILocation(line: 99, column: 11, scope: !1285)
!1298 = distinct !{!1298, !1299}
!1299 = !{!"llvm.loop.peeled.count", i32 1}
!1300 = !DILocation(line: 103, column: 9, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 102, column: 9)
!1302 = !DILocation(line: 105, column: 9, scope: !1301)
!1303 = !DILocation(line: 112, column: 32, scope: !1301)
!1304 = !DILocation(line: 94, column: 20, scope: !1275)
!1305 = !DILocation(line: 113, column: 32, scope: !1301)
!1306 = !DILocation(line: 112, column: 20, scope: !1301)
!1307 = !DILocation(line: 114, column: 11, scope: !1301)
!1308 = !DILocation(line: 117, column: 11, scope: !1301)
!1309 = !DILocation(line: 121, column: 15, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 121, column: 7)
!1311 = !DILocation(line: 121, column: 12, scope: !1310)
!1312 = !DILocation(line: 121, column: 7, scope: !1275)
!1313 = !DILocation(line: 123, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 122, column: 5)
!1315 = !DILocation(line: 124, column: 7, scope: !1314)
!1316 = !DILocation(line: 127, column: 25, scope: !1275)
!1317 = !DILocation(line: 129, column: 14, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 129, column: 7)
!1319 = !DILocation(line: 129, column: 7, scope: !1275)
!1320 = !DILocation(line: 134, column: 3, scope: !1275)
!1321 = !DILocation(line: 137, column: 1, scope: !1275)
!1322 = !DISubprogram(name: "bindtextdomain", scope: !1111, file: !1111, line: 86, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!101, !107, !107}
!1325 = !DISubprogram(name: "textdomain", scope: !1111, file: !1111, line: 82, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1326 = !DISubprogram(name: "atexit", scope: !1249, file: !1249, line: 602, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!70, !421}
!1329 = !DISubprogram(name: "getopt_long", scope: !339, file: !339, line: 66, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!70, !70, !1332, !107, !1334, !344}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1335 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !356, file: !356, line: 50, type: !1079, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1336)
!1336 = !{!1337}
!1337 = !DILocalVariable(name: "file", arg: 1, scope: !1335, file: !356, line: 50, type: !107)
!1338 = !DILocation(line: 0, scope: !1335)
!1339 = !DILocation(line: 52, column: 13, scope: !1335)
!1340 = !DILocation(line: 53, column: 1, scope: !1335)
!1341 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !356, file: !356, line: 87, type: !1342, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !148}
!1344 = !{!1345}
!1345 = !DILocalVariable(name: "ignore", arg: 1, scope: !1341, file: !356, line: 87, type: !148)
!1346 = !DILocation(line: 0, scope: !1341)
!1347 = !DILocation(line: 89, column: 16, scope: !1341)
!1348 = !{!1349, !1349, i64 0}
!1349 = !{!"_Bool", !1068, i64 0}
!1350 = !DILocation(line: 90, column: 1, scope: !1341)
!1351 = distinct !DISubprogram(name: "close_stdout", scope: !356, file: !356, line: 116, type: !422, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1352)
!1352 = !{!1353}
!1353 = !DILocalVariable(name: "write_error", scope: !1354, file: !356, line: 121, type: !107)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !356, line: 120, column: 5)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !356, line: 118, column: 7)
!1356 = !DILocation(line: 118, column: 21, scope: !1355)
!1357 = !DILocation(line: 118, column: 7, scope: !1355)
!1358 = !DILocation(line: 118, column: 29, scope: !1355)
!1359 = !DILocation(line: 119, column: 7, scope: !1355)
!1360 = !DILocation(line: 119, column: 12, scope: !1355)
!1361 = !{i8 0, i8 2}
!1362 = !DILocation(line: 119, column: 25, scope: !1355)
!1363 = !DILocation(line: 119, column: 28, scope: !1355)
!1364 = !DILocation(line: 119, column: 34, scope: !1355)
!1365 = !DILocation(line: 118, column: 7, scope: !1351)
!1366 = !DILocation(line: 121, column: 33, scope: !1354)
!1367 = !DILocation(line: 0, scope: !1354)
!1368 = !DILocation(line: 122, column: 11, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1354, file: !356, line: 122, column: 11)
!1370 = !DILocation(line: 0, scope: !1369)
!1371 = !DILocation(line: 122, column: 11, scope: !1354)
!1372 = !DILocation(line: 123, column: 9, scope: !1369)
!1373 = !DILocation(line: 126, column: 9, scope: !1369)
!1374 = !DILocation(line: 128, column: 14, scope: !1354)
!1375 = !DILocation(line: 128, column: 7, scope: !1354)
!1376 = !DILocation(line: 133, column: 42, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1351, file: !356, line: 133, column: 7)
!1378 = !DILocation(line: 133, column: 28, scope: !1377)
!1379 = !DILocation(line: 133, column: 50, scope: !1377)
!1380 = !DILocation(line: 133, column: 7, scope: !1351)
!1381 = !DILocation(line: 134, column: 12, scope: !1377)
!1382 = !DILocation(line: 134, column: 5, scope: !1377)
!1383 = !DILocation(line: 135, column: 1, scope: !1351)
!1384 = !DISubprogram(name: "__errno_location", scope: !1385, file: !1385, line: 37, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!344}
!1388 = !DISubprogram(name: "_exit", scope: !1389, file: !1389, line: 624, type: !1056, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1389 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1390 = distinct !DISubprogram(name: "verror", scope: !371, file: !371, line: 251, type: !1391, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !70, !70, !107, !381}
!1393 = !{!1394, !1395, !1396, !1397}
!1394 = !DILocalVariable(name: "status", arg: 1, scope: !1390, file: !371, line: 251, type: !70)
!1395 = !DILocalVariable(name: "errnum", arg: 2, scope: !1390, file: !371, line: 251, type: !70)
!1396 = !DILocalVariable(name: "message", arg: 3, scope: !1390, file: !371, line: 251, type: !107)
!1397 = !DILocalVariable(name: "args", arg: 4, scope: !1390, file: !371, line: 251, type: !381)
!1398 = !DILocation(line: 0, scope: !1390)
!1399 = !DILocation(line: 261, column: 3, scope: !1390)
!1400 = !DILocation(line: 265, column: 7, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1390, file: !371, line: 265, column: 7)
!1402 = !DILocation(line: 265, column: 7, scope: !1390)
!1403 = !DILocation(line: 266, column: 5, scope: !1401)
!1404 = !DILocation(line: 272, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !371, line: 268, column: 5)
!1406 = !DILocation(line: 276, column: 3, scope: !1390)
!1407 = !{i64 0, i64 8, !1066, i64 8, i64 8, !1066, i64 16, i64 8, !1066, i64 24, i64 4, !1128, i64 28, i64 4, !1128}
!1408 = !DILocation(line: 282, column: 1, scope: !1390)
!1409 = distinct !DISubprogram(name: "flush_stdout", scope: !371, file: !371, line: 163, type: !422, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1410)
!1410 = !{!1411}
!1411 = !DILocalVariable(name: "stdout_fd", scope: !1409, file: !371, line: 166, type: !70)
!1412 = !DILocation(line: 0, scope: !1409)
!1413 = !DILocalVariable(name: "fd", arg: 1, scope: !1414, file: !371, line: 145, type: !70)
!1414 = distinct !DISubprogram(name: "is_open", scope: !371, file: !371, line: 145, type: !1415, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!70, !70}
!1417 = !{!1413}
!1418 = !DILocation(line: 0, scope: !1414, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 182, column: 25, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1409, file: !371, line: 182, column: 7)
!1421 = !DILocation(line: 157, column: 15, scope: !1414, inlinedAt: !1419)
!1422 = !DILocation(line: 157, column: 12, scope: !1414, inlinedAt: !1419)
!1423 = !DILocation(line: 182, column: 7, scope: !1409)
!1424 = !DILocation(line: 184, column: 5, scope: !1420)
!1425 = !DILocation(line: 185, column: 1, scope: !1409)
!1426 = distinct !DISubprogram(name: "error_tail", scope: !371, file: !371, line: 219, type: !1391, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1427)
!1427 = !{!1428, !1429, !1430, !1431}
!1428 = !DILocalVariable(name: "status", arg: 1, scope: !1426, file: !371, line: 219, type: !70)
!1429 = !DILocalVariable(name: "errnum", arg: 2, scope: !1426, file: !371, line: 219, type: !70)
!1430 = !DILocalVariable(name: "message", arg: 3, scope: !1426, file: !371, line: 219, type: !107)
!1431 = !DILocalVariable(name: "args", arg: 4, scope: !1426, file: !371, line: 219, type: !381)
!1432 = distinct !DIAssignID()
!1433 = !DILocation(line: 0, scope: !1426)
!1434 = !DILocation(line: 229, column: 13, scope: !1426)
!1435 = !DILocation(line: 135, column: 10, scope: !1436, inlinedAt: !1478)
!1436 = distinct !DISubprogram(name: "vfprintf", scope: !1115, file: !1115, line: 132, type: !1437, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1474)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!70, !1439, !1119, !383}
!1439 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1442, file: !165, line: 51, baseType: !70, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1442, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1442, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1442, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1442, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1442, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1442, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1442, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1442, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1442, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1442, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1442, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1442, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1442, file: !165, line: 70, baseType: !1458, size: 64, offset: 832)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1442, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1442, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1442, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1442, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1442, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1442, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1442, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1442, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1442, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1442, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1442, file: !165, line: 93, baseType: !1458, size: 64, offset: 1344)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1442, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1442, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1442, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1442, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!1474 = !{!1475, !1476, !1477}
!1475 = !DILocalVariable(name: "__stream", arg: 1, scope: !1436, file: !1115, line: 132, type: !1439)
!1476 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1436, file: !1115, line: 133, type: !1119)
!1477 = !DILocalVariable(name: "__ap", arg: 3, scope: !1436, file: !1115, line: 133, type: !383)
!1478 = distinct !DILocation(line: 229, column: 3, scope: !1426)
!1479 = !{!1480, !1482}
!1480 = distinct !{!1480, !1481, !"vfprintf.inline: argument 0"}
!1481 = distinct !{!1481, !"vfprintf.inline"}
!1482 = distinct !{!1482, !1481, !"vfprintf.inline: argument 1"}
!1483 = !DILocation(line: 229, column: 3, scope: !1426)
!1484 = !DILocation(line: 0, scope: !1436, inlinedAt: !1478)
!1485 = !DILocation(line: 232, column: 3, scope: !1426)
!1486 = !DILocation(line: 233, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1426, file: !371, line: 233, column: 7)
!1488 = !DILocation(line: 233, column: 7, scope: !1426)
!1489 = !DILocalVariable(name: "errbuf", scope: !1490, file: !371, line: 193, type: !1494)
!1490 = distinct !DISubprogram(name: "print_errno_message", scope: !371, file: !371, line: 188, type: !1056, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1491)
!1491 = !{!1492, !1493, !1489}
!1492 = !DILocalVariable(name: "errnum", arg: 1, scope: !1490, file: !371, line: 188, type: !70)
!1493 = !DILocalVariable(name: "s", scope: !1490, file: !371, line: 190, type: !107)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1495)
!1495 = !{!1496}
!1496 = !DISubrange(count: 1024)
!1497 = !DILocation(line: 0, scope: !1490, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 234, column: 5, scope: !1487)
!1499 = !DILocation(line: 193, column: 3, scope: !1490, inlinedAt: !1498)
!1500 = !DILocation(line: 195, column: 7, scope: !1490, inlinedAt: !1498)
!1501 = !DILocation(line: 207, column: 9, scope: !1502, inlinedAt: !1498)
!1502 = distinct !DILexicalBlock(scope: !1490, file: !371, line: 207, column: 7)
!1503 = !DILocation(line: 207, column: 7, scope: !1490, inlinedAt: !1498)
!1504 = !DILocation(line: 208, column: 9, scope: !1502, inlinedAt: !1498)
!1505 = !DILocation(line: 208, column: 5, scope: !1502, inlinedAt: !1498)
!1506 = !DILocation(line: 214, column: 3, scope: !1490, inlinedAt: !1498)
!1507 = !DILocation(line: 216, column: 1, scope: !1490, inlinedAt: !1498)
!1508 = !DILocation(line: 234, column: 5, scope: !1487)
!1509 = !DILocation(line: 238, column: 3, scope: !1426)
!1510 = !DILocalVariable(name: "__c", arg: 1, scope: !1511, file: !1512, line: 101, type: !70)
!1511 = distinct !DISubprogram(name: "putc_unlocked", scope: !1512, file: !1512, line: 101, type: !1513, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1515)
!1512 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!70, !70, !1440}
!1515 = !{!1510, !1516}
!1516 = !DILocalVariable(name: "__stream", arg: 2, scope: !1511, file: !1512, line: 101, type: !1440)
!1517 = !DILocation(line: 0, scope: !1511, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 238, column: 3, scope: !1426)
!1519 = !DILocation(line: 103, column: 10, scope: !1511, inlinedAt: !1518)
!1520 = !{!1521, !1067, i64 40}
!1521 = !{!"_IO_FILE", !1129, i64 0, !1067, i64 8, !1067, i64 16, !1067, i64 24, !1067, i64 32, !1067, i64 40, !1067, i64 48, !1067, i64 56, !1067, i64 64, !1067, i64 72, !1067, i64 80, !1067, i64 88, !1067, i64 96, !1067, i64 104, !1129, i64 112, !1129, i64 116, !1522, i64 120, !1170, i64 128, !1068, i64 130, !1068, i64 131, !1067, i64 136, !1522, i64 144, !1067, i64 152, !1067, i64 160, !1067, i64 168, !1067, i64 176, !1522, i64 184, !1129, i64 192, !1068, i64 196}
!1522 = !{!"long", !1068, i64 0}
!1523 = !{!1521, !1067, i64 48}
!1524 = !{!"branch_weights", i32 2000, i32 1}
!1525 = !DILocation(line: 240, column: 3, scope: !1426)
!1526 = !DILocation(line: 241, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1426, file: !371, line: 241, column: 7)
!1528 = !DILocation(line: 241, column: 7, scope: !1426)
!1529 = !DILocation(line: 242, column: 5, scope: !1527)
!1530 = !DILocation(line: 243, column: 1, scope: !1426)
!1531 = !DISubprogram(name: "__vfprintf_chk", scope: !1115, file: !1115, line: 96, type: !1532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!70, !1439, !70, !1119, !383}
!1534 = !DISubprogram(name: "strerror_r", scope: !1245, file: !1245, line: 444, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!101, !70, !101, !104}
!1537 = !DISubprogram(name: "__overflow", scope: !382, file: !382, line: 886, type: !1538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!70, !1440, !70}
!1540 = !DISubprogram(name: "fflush_unlocked", scope: !382, file: !382, line: 239, type: !1541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!70, !1440}
!1543 = !DISubprogram(name: "fcntl", scope: !1544, file: !1544, line: 149, type: !1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1544 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!70, !70, !70, null}
!1547 = distinct !DISubprogram(name: "error", scope: !371, file: !371, line: 285, type: !1548, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !70, !70, !107, null}
!1550 = !{!1551, !1552, !1553, !1554}
!1551 = !DILocalVariable(name: "status", arg: 1, scope: !1547, file: !371, line: 285, type: !70)
!1552 = !DILocalVariable(name: "errnum", arg: 2, scope: !1547, file: !371, line: 285, type: !70)
!1553 = !DILocalVariable(name: "message", arg: 3, scope: !1547, file: !371, line: 285, type: !107)
!1554 = !DILocalVariable(name: "ap", scope: !1547, file: !371, line: 287, type: !381)
!1555 = distinct !DIAssignID()
!1556 = !DILocation(line: 0, scope: !1547)
!1557 = !DILocation(line: 287, column: 3, scope: !1547)
!1558 = !DILocation(line: 288, column: 3, scope: !1547)
!1559 = !DILocation(line: 289, column: 3, scope: !1547)
!1560 = !DILocation(line: 290, column: 3, scope: !1547)
!1561 = !DILocation(line: 291, column: 1, scope: !1547)
!1562 = !DILocation(line: 0, scope: !378)
!1563 = !DILocation(line: 302, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !378, file: !371, line: 302, column: 7)
!1565 = !DILocation(line: 302, column: 7, scope: !378)
!1566 = !DILocation(line: 307, column: 11, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !371, line: 307, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !371, line: 303, column: 5)
!1569 = !DILocation(line: 307, column: 27, scope: !1567)
!1570 = !DILocation(line: 308, column: 11, scope: !1567)
!1571 = !DILocation(line: 308, column: 28, scope: !1567)
!1572 = !DILocation(line: 308, column: 25, scope: !1567)
!1573 = !DILocation(line: 309, column: 15, scope: !1567)
!1574 = !DILocation(line: 309, column: 33, scope: !1567)
!1575 = !DILocation(line: 310, column: 19, scope: !1567)
!1576 = !DILocation(line: 311, column: 22, scope: !1567)
!1577 = !DILocation(line: 311, column: 56, scope: !1567)
!1578 = !DILocation(line: 307, column: 11, scope: !1568)
!1579 = !DILocation(line: 316, column: 21, scope: !1568)
!1580 = !DILocation(line: 317, column: 23, scope: !1568)
!1581 = !DILocation(line: 318, column: 5, scope: !1568)
!1582 = !DILocation(line: 327, column: 3, scope: !378)
!1583 = !DILocation(line: 331, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !378, file: !371, line: 331, column: 7)
!1585 = !DILocation(line: 331, column: 7, scope: !378)
!1586 = !DILocation(line: 332, column: 5, scope: !1584)
!1587 = !DILocation(line: 338, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !371, line: 334, column: 5)
!1589 = !DILocation(line: 346, column: 3, scope: !378)
!1590 = !DILocation(line: 350, column: 3, scope: !378)
!1591 = !DILocation(line: 356, column: 1, scope: !378)
!1592 = distinct !DISubprogram(name: "error_at_line", scope: !371, file: !371, line: 359, type: !1593, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !70, !70, !107, !63, !107, null}
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601}
!1596 = !DILocalVariable(name: "status", arg: 1, scope: !1592, file: !371, line: 359, type: !70)
!1597 = !DILocalVariable(name: "errnum", arg: 2, scope: !1592, file: !371, line: 359, type: !70)
!1598 = !DILocalVariable(name: "file_name", arg: 3, scope: !1592, file: !371, line: 359, type: !107)
!1599 = !DILocalVariable(name: "line_number", arg: 4, scope: !1592, file: !371, line: 360, type: !63)
!1600 = !DILocalVariable(name: "message", arg: 5, scope: !1592, file: !371, line: 360, type: !107)
!1601 = !DILocalVariable(name: "ap", scope: !1592, file: !371, line: 362, type: !381)
!1602 = distinct !DIAssignID()
!1603 = !DILocation(line: 0, scope: !1592)
!1604 = !DILocation(line: 362, column: 3, scope: !1592)
!1605 = !DILocation(line: 363, column: 3, scope: !1592)
!1606 = !DILocation(line: 364, column: 3, scope: !1592)
!1607 = !DILocation(line: 366, column: 3, scope: !1592)
!1608 = !DILocation(line: 367, column: 1, scope: !1592)
!1609 = distinct !DISubprogram(name: "getprogname", scope: !733, file: !733, line: 54, type: !1610, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!107}
!1612 = !DILocation(line: 58, column: 10, scope: !1609)
!1613 = !DILocation(line: 58, column: 3, scope: !1609)
!1614 = distinct !DISubprogram(name: "num_processors", scope: !426, file: !426, line: 544, type: !1615, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!106, !736}
!1617 = !{!1618, !1619, !1620, !1623, !1624, !1627}
!1618 = !DILocalVariable(name: "query", arg: 1, scope: !1614, file: !426, line: 544, type: !736)
!1619 = !DILocalVariable(name: "nproc_limit", scope: !1614, file: !426, line: 546, type: !106)
!1620 = !DILocalVariable(name: "omp_env_threads", scope: !1621, file: !426, line: 552, type: !106)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !426, line: 551, column: 5)
!1622 = distinct !DILexicalBlock(scope: !1614, file: !426, line: 550, column: 7)
!1623 = !DILocalVariable(name: "omp_env_limit", scope: !1621, file: !426, line: 555, type: !106)
!1624 = !DILocalVariable(name: "quota", scope: !1625, file: !426, line: 570, type: !106)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !426, line: 569, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1614, file: !426, line: 568, column: 7)
!1627 = !DILocalVariable(name: "nprocs", scope: !1628, file: !426, line: 576, type: !106)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !426, line: 575, column: 5)
!1629 = distinct !DILexicalBlock(scope: !1614, file: !426, line: 574, column: 7)
!1630 = distinct !DIAssignID()
!1631 = distinct !DIAssignID()
!1632 = distinct !DIAssignID()
!1633 = distinct !DIAssignID()
!1634 = distinct !DIAssignID()
!1635 = distinct !DIAssignID()
!1636 = distinct !DIAssignID()
!1637 = distinct !DIAssignID()
!1638 = distinct !DIAssignID()
!1639 = !DILocation(line: 0, scope: !1614)
!1640 = !DILocation(line: 550, column: 13, scope: !1622)
!1641 = !DILocation(line: 550, column: 7, scope: !1614)
!1642 = !DILocation(line: 553, column: 28, scope: !1621)
!1643 = !DILocalVariable(name: "endptr", scope: !1644, file: !426, line: 528, type: !101)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !426, line: 527, column: 5)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !426, line: 526, column: 7)
!1646 = distinct !DISubprogram(name: "parse_omp_threads", scope: !426, file: !426, line: 515, type: !1647, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1649)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!106, !107}
!1649 = !{!1650, !1643, !1651}
!1650 = !DILocalVariable(name: "threads", arg: 1, scope: !1646, file: !426, line: 515, type: !107)
!1651 = !DILocalVariable(name: "value", scope: !1644, file: !426, line: 529, type: !106)
!1652 = !DILocation(line: 0, scope: !1644, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 553, column: 9, scope: !1621)
!1654 = !DILocation(line: 0, scope: !1646, inlinedAt: !1653)
!1655 = !DILocation(line: 517, column: 15, scope: !1656, inlinedAt: !1653)
!1656 = distinct !DILexicalBlock(scope: !1646, file: !426, line: 517, column: 7)
!1657 = !DILocation(line: 517, column: 7, scope: !1646, inlinedAt: !1653)
!1658 = !DILocation(line: 522, column: 3, scope: !1646, inlinedAt: !1653)
!1659 = !DILocation(line: 522, column: 10, scope: !1646, inlinedAt: !1653)
!1660 = !DILocation(line: 522, column: 27, scope: !1646, inlinedAt: !1653)
!1661 = !DILocation(line: 523, column: 12, scope: !1646, inlinedAt: !1653)
!1662 = distinct !{!1662, !1658, !1661, !1175}
!1663 = !DILocation(line: 526, column: 18, scope: !1645, inlinedAt: !1653)
!1664 = !DILocalVariable(name: "c", arg: 1, scope: !1665, file: !1666, line: 233, type: !70)
!1665 = distinct !DISubprogram(name: "c_isdigit", scope: !1666, file: !1666, line: 233, type: !1667, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1669)
!1666 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!148, !70}
!1669 = !{!1664}
!1670 = !DILocation(line: 0, scope: !1665, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 526, column: 7, scope: !1645, inlinedAt: !1653)
!1672 = !DILocation(line: 235, column: 3, scope: !1665, inlinedAt: !1671)
!1673 = !DILocation(line: 526, column: 7, scope: !1646, inlinedAt: !1653)
!1674 = !DILocation(line: 528, column: 7, scope: !1644, inlinedAt: !1653)
!1675 = !DILocation(line: 529, column: 33, scope: !1644, inlinedAt: !1653)
!1676 = !DILocation(line: 530, column: 7, scope: !1644, inlinedAt: !1653)
!1677 = !DILocation(line: 530, column: 14, scope: !1644, inlinedAt: !1653)
!1678 = !DILocation(line: 530, column: 30, scope: !1644, inlinedAt: !1653)
!1679 = !DILocation(line: 538, column: 5, scope: !1645, inlinedAt: !1653)
!1680 = !DILocation(line: 531, column: 15, scope: !1644, inlinedAt: !1653)
!1681 = distinct !DIAssignID()
!1682 = distinct !{!1682, !1676, !1680, !1175}
!1683 = !DILocation(line: 540, column: 3, scope: !1646, inlinedAt: !1653)
!1684 = !DILocation(line: 0, scope: !1621)
!1685 = !DILocation(line: 556, column: 28, scope: !1621)
!1686 = !DILocation(line: 0, scope: !1644, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 556, column: 9, scope: !1621)
!1688 = !DILocation(line: 0, scope: !1646, inlinedAt: !1687)
!1689 = !DILocation(line: 517, column: 15, scope: !1656, inlinedAt: !1687)
!1690 = !DILocation(line: 517, column: 7, scope: !1646, inlinedAt: !1687)
!1691 = !DILocation(line: 522, column: 3, scope: !1646, inlinedAt: !1687)
!1692 = !DILocation(line: 522, column: 10, scope: !1646, inlinedAt: !1687)
!1693 = !DILocation(line: 522, column: 27, scope: !1646, inlinedAt: !1687)
!1694 = !DILocation(line: 523, column: 12, scope: !1646, inlinedAt: !1687)
!1695 = distinct !{!1695, !1691, !1694, !1175}
!1696 = !DILocation(line: 526, column: 18, scope: !1645, inlinedAt: !1687)
!1697 = !DILocation(line: 0, scope: !1665, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 526, column: 7, scope: !1645, inlinedAt: !1687)
!1699 = !DILocation(line: 235, column: 3, scope: !1665, inlinedAt: !1698)
!1700 = !DILocation(line: 526, column: 7, scope: !1646, inlinedAt: !1687)
!1701 = !DILocation(line: 528, column: 7, scope: !1644, inlinedAt: !1687)
!1702 = !DILocation(line: 529, column: 33, scope: !1644, inlinedAt: !1687)
!1703 = !DILocation(line: 557, column: 13, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1621, file: !426, line: 557, column: 11)
!1705 = !DILocation(line: 530, column: 7, scope: !1644, inlinedAt: !1687)
!1706 = !DILocation(line: 530, column: 14, scope: !1644, inlinedAt: !1687)
!1707 = !DILocation(line: 530, column: 30, scope: !1644, inlinedAt: !1687)
!1708 = !DILocation(line: 538, column: 5, scope: !1645, inlinedAt: !1687)
!1709 = !DILocation(line: 557, column: 11, scope: !1621)
!1710 = !DILocation(line: 531, column: 15, scope: !1644, inlinedAt: !1687)
!1711 = distinct !DIAssignID()
!1712 = distinct !{!1712, !1705, !1710, !1175}
!1713 = !DILocation(line: 560, column: 11, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1621, file: !426, line: 560, column: 11)
!1715 = !DILocation(line: 560, column: 11, scope: !1621)
!1716 = !DILocation(line: 546, column: 21, scope: !1614)
!1717 = !DILocation(line: 568, column: 13, scope: !1626)
!1718 = !DILocation(line: 568, column: 30, scope: !1626)
!1719 = !DILocalVariable(name: "quota", scope: !1720, file: !426, line: 489, type: !106)
!1720 = distinct !DISubprogram(name: "cpu_quota", scope: !426, file: !426, line: 487, type: !1721, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1723)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!106}
!1723 = !{!1719}
!1724 = !DILocation(line: 0, scope: !1720, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 570, column: 33, scope: !1625)
!1726 = !DILocation(line: 494, column: 11, scope: !1720, inlinedAt: !1725)
!1727 = !DILocation(line: 494, column: 3, scope: !1720, inlinedAt: !1725)
!1728 = !DILocalVariable(name: "cgroup_str", scope: !1729, file: !426, line: 410, type: !101)
!1729 = distinct !DISubprogram(name: "get_cgroup2_cpu_quota", scope: !426, file: !426, line: 400, type: !1721, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1730)
!1730 = !{!1731, !1732, !1767, !1728, !1768, !1769, !1773, !1777, !1778, !1779, !1780, !1785, !1788, !1789, !1792}
!1731 = !DILocalVariable(name: "cpu_quota", scope: !1729, file: !426, line: 402, type: !106)
!1732 = !DILocalVariable(name: "fp", scope: !1729, file: !426, line: 404, type: !1733)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !1735)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1735, file: !165, line: 51, baseType: !70, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1735, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1735, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1735, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1735, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1735, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1735, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1735, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1735, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1735, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1735, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1735, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1735, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1735, file: !165, line: 70, baseType: !1751, size: 64, offset: 832)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1735, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1735, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1735, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1735, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1735, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1735, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1735, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1735, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1735, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1735, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1735, file: !165, line: 93, baseType: !1751, size: 64, offset: 1344)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1735, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1735, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1735, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1735, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!1767 = !DILocalVariable(name: "cgroup", scope: !1729, file: !426, line: 409, type: !101)
!1768 = !DILocalVariable(name: "cgroup_size", scope: !1729, file: !426, line: 411, type: !104)
!1769 = !DILocalVariable(name: "read", scope: !1729, file: !426, line: 412, type: !1770)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1771, line: 108, baseType: !1772)
!1771 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !188, line: 194, baseType: !189)
!1773 = !DILocalVariable(name: "end", scope: !1774, file: !426, line: 417, type: !101)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !426, line: 416, column: 9)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !426, line: 415, column: 11)
!1776 = distinct !DILexicalBlock(scope: !1729, file: !426, line: 414, column: 5)
!1777 = !DILocalVariable(name: "mount", scope: !1729, file: !426, line: 426, type: !101)
!1778 = !DILocalVariable(name: "quota_str", scope: !1729, file: !426, line: 431, type: !101)
!1779 = !DILocalVariable(name: "quota_size", scope: !1729, file: !426, line: 432, type: !104)
!1780 = !DILocalVariable(name: "cpu_max_file", scope: !1781, file: !426, line: 440, type: !1782)
!1781 = distinct !DILexicalBlock(scope: !1729, file: !426, line: 434, column: 5)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !1783)
!1783 = !{!1784}
!1784 = !DISubrange(count: 4096)
!1785 = !DILocalVariable(name: "quota", scope: !1786, file: !426, line: 448, type: !189)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !426, line: 447, column: 9)
!1787 = distinct !DILexicalBlock(scope: !1781, file: !426, line: 444, column: 11)
!1788 = !DILocalVariable(name: "period", scope: !1786, file: !426, line: 448, type: !189)
!1789 = !DILocalVariable(name: "ncpus", scope: !1790, file: !426, line: 451, type: !959)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !426, line: 450, column: 13)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !426, line: 449, column: 15)
!1792 = !DILocalVariable(name: "last_sep", scope: !1781, file: !426, line: 465, type: !101)
!1793 = !DILocation(line: 0, scope: !1729, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 503, column: 17, scope: !1795, inlinedAt: !1725)
!1795 = distinct !DILexicalBlock(scope: !1720, file: !426, line: 495, column: 5)
!1796 = !DILocation(line: 0, scope: !1781, inlinedAt: !1794)
!1797 = !DILocation(line: 0, scope: !1786, inlinedAt: !1794)
!1798 = !DILocation(line: 404, column: 14, scope: !1729, inlinedAt: !1794)
!1799 = !DILocation(line: 405, column: 9, scope: !1800, inlinedAt: !1794)
!1800 = distinct !DILexicalBlock(scope: !1729, file: !426, line: 405, column: 7)
!1801 = !DILocation(line: 405, column: 7, scope: !1729, inlinedAt: !1794)
!1802 = !DILocation(line: 410, column: 3, scope: !1729, inlinedAt: !1794)
!1803 = !DILocation(line: 410, column: 9, scope: !1729, inlinedAt: !1794)
!1804 = distinct !DIAssignID()
!1805 = !DILocation(line: 411, column: 3, scope: !1729, inlinedAt: !1794)
!1806 = !DILocation(line: 411, column: 10, scope: !1729, inlinedAt: !1794)
!1807 = !{!1522, !1522, i64 0}
!1808 = distinct !DIAssignID()
!1809 = !DILocation(line: 413, column: 3, scope: !1729, inlinedAt: !1794)
!1810 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1811, file: !1512, line: 118, type: !1278)
!1811 = distinct !DISubprogram(name: "getline", scope: !1512, file: !1512, line: 118, type: !1812, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!1772, !1278, !975, !1733}
!1814 = !{!1810, !1815, !1816}
!1815 = !DILocalVariable(name: "__n", arg: 2, scope: !1811, file: !1512, line: 118, type: !975)
!1816 = !DILocalVariable(name: "__stream", arg: 3, scope: !1811, file: !1512, line: 118, type: !1733)
!1817 = !DILocation(line: 0, scope: !1811, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 413, column: 18, scope: !1729, inlinedAt: !1794)
!1819 = !DILocation(line: 120, column: 10, scope: !1811, inlinedAt: !1818)
!1820 = !DILocation(line: 413, column: 59, scope: !1729, inlinedAt: !1794)
!1821 = !DILocation(line: 424, column: 3, scope: !1729, inlinedAt: !1794)
!1822 = !DILocation(line: 427, column: 14, scope: !1823, inlinedAt: !1794)
!1823 = distinct !DILexicalBlock(scope: !1729, file: !426, line: 427, column: 7)
!1824 = !DILocation(line: 415, column: 20, scope: !1775, inlinedAt: !1794)
!1825 = !DILocation(line: 415, column: 11, scope: !1775, inlinedAt: !1794)
!1826 = !DILocation(line: 415, column: 43, scope: !1775, inlinedAt: !1794)
!1827 = !DILocation(line: 415, column: 11, scope: !1776, inlinedAt: !1794)
!1828 = distinct !{!1828, !1809, !1829, !1175}
!1829 = !DILocation(line: 423, column: 5, scope: !1729, inlinedAt: !1794)
!1830 = !DILocation(line: 417, column: 34, scope: !1774, inlinedAt: !1794)
!1831 = !DILocation(line: 417, column: 41, scope: !1774, inlinedAt: !1794)
!1832 = !DILocation(line: 0, scope: !1774, inlinedAt: !1794)
!1833 = !DILocation(line: 418, column: 15, scope: !1834, inlinedAt: !1794)
!1834 = distinct !DILexicalBlock(scope: !1774, file: !426, line: 418, column: 15)
!1835 = !DILocation(line: 418, column: 20, scope: !1834, inlinedAt: !1794)
!1836 = !DILocation(line: 418, column: 15, scope: !1774, inlinedAt: !1794)
!1837 = !DILocation(line: 419, column: 18, scope: !1834, inlinedAt: !1794)
!1838 = !DILocation(line: 420, column: 20, scope: !1774, inlinedAt: !1794)
!1839 = !DILocation(line: 419, column: 13, scope: !1834, inlinedAt: !1794)
!1840 = !DILocation(line: 420, column: 31, scope: !1774, inlinedAt: !1794)
!1841 = !DILocation(line: 371, column: 7, scope: !1842, inlinedAt: !1860)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !426, line: 371, column: 7)
!1843 = distinct !DISubprogram(name: "cgroup2_mount", scope: !426, file: !426, line: 367, type: !1844, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!101}
!1846 = !{!1847, !1848, !1849}
!1847 = !DILocalVariable(name: "ret", scope: !1843, file: !426, line: 374, type: !101)
!1848 = !DILocalVariable(name: "fp", scope: !1843, file: !426, line: 378, type: !1733)
!1849 = !DILocalVariable(name: "mnt", scope: !1843, file: !426, line: 381, type: !1850)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1852, line: 51, size: 320, elements: !1853)
!1852 = !DIFile(filename: "/usr/include/mntent.h", directory: "", checksumkind: CSK_MD5, checksum: "0070e4c80f74d781196301da01c9ab34")
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1851, file: !1852, line: 53, baseType: !101, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1851, file: !1852, line: 54, baseType: !101, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1851, file: !1852, line: 55, baseType: !101, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1851, file: !1852, line: 56, baseType: !101, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1851, file: !1852, line: 57, baseType: !70, size: 32, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1851, file: !1852, line: 58, baseType: !70, size: 32, offset: 288)
!1860 = distinct !DILocation(line: 427, column: 28, scope: !1823, inlinedAt: !1794)
!1861 = !DILocation(line: 371, column: 58, scope: !1842, inlinedAt: !1860)
!1862 = !DILocation(line: 371, column: 7, scope: !1843, inlinedAt: !1860)
!1863 = !DILocation(line: 372, column: 12, scope: !1842, inlinedAt: !1860)
!1864 = !DILocation(line: 372, column: 5, scope: !1842, inlinedAt: !1860)
!1865 = !DILocation(line: 0, scope: !1843, inlinedAt: !1860)
!1866 = !DILocation(line: 378, column: 14, scope: !1843, inlinedAt: !1860)
!1867 = !DILocation(line: 379, column: 9, scope: !1868, inlinedAt: !1860)
!1868 = distinct !DILexicalBlock(scope: !1843, file: !426, line: 379, column: 7)
!1869 = !DILocation(line: 379, column: 7, scope: !1843, inlinedAt: !1860)
!1870 = !DILocation(line: 382, column: 3, scope: !1843, inlinedAt: !1860)
!1871 = !DILocation(line: 382, column: 17, scope: !1843, inlinedAt: !1860)
!1872 = !DILocation(line: 382, column: 33, scope: !1843, inlinedAt: !1860)
!1873 = !DILocation(line: 384, column: 23, scope: !1874, inlinedAt: !1860)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !426, line: 384, column: 11)
!1875 = distinct !DILexicalBlock(scope: !1843, file: !426, line: 383, column: 5)
!1876 = !{!1877, !1067, i64 16}
!1877 = !{!"mntent", !1067, i64 0, !1067, i64 8, !1067, i64 16, !1067, i64 24, !1129, i64 32, !1129, i64 36}
!1878 = !DILocalVariable(name: "__s1", arg: 1, scope: !1879, file: !1141, line: 1359, type: !107)
!1879 = distinct !DISubprogram(name: "streq", scope: !1141, file: !1141, line: 1359, type: !1142, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1880)
!1880 = !{!1878, !1881}
!1881 = !DILocalVariable(name: "__s2", arg: 2, scope: !1879, file: !1141, line: 1359, type: !107)
!1882 = !DILocation(line: 0, scope: !1879, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 384, column: 11, scope: !1874, inlinedAt: !1860)
!1884 = !DILocation(line: 1361, column: 11, scope: !1879, inlinedAt: !1883)
!1885 = !DILocation(line: 1361, column: 10, scope: !1879, inlinedAt: !1883)
!1886 = !DILocation(line: 384, column: 11, scope: !1875, inlinedAt: !1860)
!1887 = distinct !{!1887, !1870, !1888, !1175}
!1888 = !DILocation(line: 389, column: 5, scope: !1843, inlinedAt: !1860)
!1889 = !DILocation(line: 386, column: 30, scope: !1890, inlinedAt: !1860)
!1890 = distinct !DILexicalBlock(scope: !1874, file: !426, line: 385, column: 9)
!1891 = !{!1877, !1067, i64 8}
!1892 = !DILocation(line: 386, column: 17, scope: !1890, inlinedAt: !1860)
!1893 = !DILocation(line: 387, column: 11, scope: !1890, inlinedAt: !1860)
!1894 = !DILocation(line: 390, column: 3, scope: !1843, inlinedAt: !1860)
!1895 = !DILocation(line: 427, column: 26, scope: !1823, inlinedAt: !1794)
!1896 = !DILocation(line: 427, column: 7, scope: !1729, inlinedAt: !1794)
!1897 = !DILocation(line: 431, column: 3, scope: !1729, inlinedAt: !1794)
!1898 = !DILocation(line: 431, column: 9, scope: !1729, inlinedAt: !1794)
!1899 = distinct !DIAssignID()
!1900 = !DILocation(line: 432, column: 3, scope: !1729, inlinedAt: !1794)
!1901 = !DILocation(line: 432, column: 10, scope: !1729, inlinedAt: !1794)
!1902 = distinct !DIAssignID()
!1903 = !DILocation(line: 433, column: 17, scope: !1729, inlinedAt: !1794)
!1904 = !DILocation(line: 433, column: 20, scope: !1729, inlinedAt: !1794)
!1905 = !DILocation(line: 433, column: 3, scope: !1729, inlinedAt: !1794)
!1906 = !DILocation(line: 445, column: 11, scope: !1787, inlinedAt: !1794)
!1907 = !DILocation(line: 440, column: 7, scope: !1781, inlinedAt: !1794)
!1908 = !DILocation(line: 441, column: 7, scope: !1781, inlinedAt: !1794)
!1909 = !DILocation(line: 444, column: 17, scope: !1787, inlinedAt: !1794)
!1910 = !DILocation(line: 444, column: 15, scope: !1787, inlinedAt: !1794)
!1911 = !DILocation(line: 0, scope: !1811, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 445, column: 14, scope: !1787, inlinedAt: !1794)
!1913 = !DILocation(line: 120, column: 10, scope: !1811, inlinedAt: !1912)
!1914 = !DILocation(line: 445, column: 52, scope: !1787, inlinedAt: !1794)
!1915 = !DILocation(line: 446, column: 11, scope: !1787, inlinedAt: !1794)
!1916 = !DILocation(line: 446, column: 23, scope: !1787, inlinedAt: !1794)
!1917 = !DILocation(line: 446, column: 14, scope: !1787, inlinedAt: !1794)
!1918 = !DILocation(line: 446, column: 44, scope: !1787, inlinedAt: !1794)
!1919 = !DILocation(line: 444, column: 11, scope: !1781, inlinedAt: !1794)
!1920 = !DILocation(line: 448, column: 11, scope: !1786, inlinedAt: !1794)
!1921 = !DILocation(line: 449, column: 15, scope: !1791, inlinedAt: !1794)
!1922 = !DILocation(line: 449, column: 62, scope: !1791, inlinedAt: !1794)
!1923 = !DILocation(line: 449, column: 67, scope: !1791, inlinedAt: !1794)
!1924 = !DILocation(line: 451, column: 38, scope: !1790, inlinedAt: !1794)
!1925 = !DILocation(line: 451, column: 30, scope: !1790, inlinedAt: !1794)
!1926 = !DILocation(line: 451, column: 46, scope: !1790, inlinedAt: !1794)
!1927 = !DILocation(line: 451, column: 44, scope: !1790, inlinedAt: !1794)
!1928 = !DILocation(line: 0, scope: !1790, inlinedAt: !1794)
!1929 = !DILocation(line: 452, column: 29, scope: !1930, inlinedAt: !1794)
!1930 = distinct !DILexicalBlock(scope: !1790, file: !426, line: 452, column: 19)
!1931 = !DILocation(line: 452, column: 42, scope: !1930, inlinedAt: !1794)
!1932 = !DILocation(line: 454, column: 31, scope: !1933, inlinedAt: !1794)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !426, line: 453, column: 17)
!1934 = !DILocation(line: 456, column: 33, scope: !1935, inlinedAt: !1794)
!1935 = distinct !DILexicalBlock(scope: !1933, file: !426, line: 456, column: 23)
!1936 = !DILocation(line: 456, column: 23, scope: !1933, inlinedAt: !1794)
!1937 = !DILocation(line: 457, column: 29, scope: !1935, inlinedAt: !1794)
!1938 = !DILocation(line: 457, column: 21, scope: !1935, inlinedAt: !1794)
!1939 = !DILocation(line: 460, column: 9, scope: !1787, inlinedAt: !1794)
!1940 = !DILocation(line: 460, column: 9, scope: !1786, inlinedAt: !1794)
!1941 = !DILocation(line: 463, column: 9, scope: !1942, inlinedAt: !1794)
!1942 = distinct !DILexicalBlock(scope: !1781, file: !426, line: 462, column: 11)
!1943 = !DILocation(line: 465, column: 24, scope: !1781, inlinedAt: !1794)
!1944 = !DILocation(line: 466, column: 13, scope: !1945, inlinedAt: !1794)
!1945 = distinct !DILexicalBlock(scope: !1781, file: !426, line: 466, column: 11)
!1946 = !DILocation(line: 466, column: 11, scope: !1781, inlinedAt: !1794)
!1947 = !DILocation(line: 472, column: 5, scope: !1729, inlinedAt: !1794)
!1948 = !DILocation(line: 468, column: 20, scope: !1949, inlinedAt: !1794)
!1949 = distinct !DILexicalBlock(scope: !1781, file: !426, line: 468, column: 11)
!1950 = !DILocation(line: 468, column: 30, scope: !1949, inlinedAt: !1794)
!1951 = !DILocation(line: 468, column: 33, scope: !1949, inlinedAt: !1794)
!1952 = !DILocation(line: 468, column: 11, scope: !1781, inlinedAt: !1794)
!1953 = !DILocation(line: 0, scope: !1949, inlinedAt: !1794)
!1954 = !DILocation(line: 474, column: 9, scope: !1729, inlinedAt: !1794)
!1955 = !DILocation(line: 474, column: 3, scope: !1729, inlinedAt: !1794)
!1956 = !DILocation(line: 475, column: 3, scope: !1729, inlinedAt: !1794)
!1957 = !DILocation(line: 476, column: 9, scope: !1729, inlinedAt: !1794)
!1958 = !DILocation(line: 476, column: 3, scope: !1729, inlinedAt: !1794)
!1959 = !DILocation(line: 479, column: 1, scope: !1729, inlinedAt: !1794)
!1960 = !DILocation(line: 0, scope: !1795, inlinedAt: !1725)
!1961 = !DILocation(line: 0, scope: !1625)
!1962 = !DILocation(line: 571, column: 21, scope: !1625)
!1963 = !DILocation(line: 572, column: 5, scope: !1625)
!1964 = !DILocation(line: 574, column: 19, scope: !1629)
!1965 = !DILocation(line: 574, column: 7, scope: !1614)
!1966 = !DILocalVariable(name: "query", arg: 1, scope: !1967, file: !426, line: 238, type: !736)
!1967 = distinct !DISubprogram(name: "num_processors_available", scope: !426, file: !426, line: 238, type: !1615, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !1968)
!1968 = !{!1966, !1969, !1973, !1975, !1978}
!1969 = !DILocalVariable(name: "nprocs", scope: !1970, file: !426, line: 259, type: !106)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !426, line: 258, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !426, line: 256, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !426, line: 255, column: 7)
!1973 = !DILocalVariable(name: "nprocs", scope: !1974, file: !426, line: 268, type: !189)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !426, line: 266, column: 7)
!1975 = !DILocalVariable(name: "nprocs", scope: !1976, file: !426, line: 279, type: !189)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !426, line: 277, column: 7)
!1977 = distinct !DILexicalBlock(scope: !1972, file: !426, line: 275, column: 5)
!1978 = !DILocalVariable(name: "nprocs_current", scope: !1979, file: !426, line: 289, type: !106)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !426, line: 288, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !426, line: 287, column: 13)
!1981 = !DILocation(line: 0, scope: !1967, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 576, column: 30, scope: !1628)
!1983 = !DILocation(line: 255, column: 7, scope: !1967, inlinedAt: !1982)
!1984 = !DILocation(line: 259, column: 32, scope: !1970, inlinedAt: !1982)
!1985 = !DILocation(line: 0, scope: !1970, inlinedAt: !1982)
!1986 = !DILocation(line: 261, column: 20, scope: !1987, inlinedAt: !1982)
!1987 = distinct !DILexicalBlock(scope: !1970, file: !426, line: 261, column: 13)
!1988 = !DILocation(line: 268, column: 27, scope: !1974, inlinedAt: !1982)
!1989 = !DILocation(line: 0, scope: !1974, inlinedAt: !1982)
!1990 = !DILocation(line: 269, column: 20, scope: !1991, inlinedAt: !1982)
!1991 = distinct !DILexicalBlock(scope: !1974, file: !426, line: 269, column: 13)
!1992 = !DILocation(line: 279, column: 27, scope: !1976, inlinedAt: !1982)
!1993 = !DILocation(line: 0, scope: !1976, inlinedAt: !1982)
!1994 = !DILocation(line: 287, column: 25, scope: !1980, inlinedAt: !1982)
!1995 = !DILocation(line: 289, column: 44, scope: !1979, inlinedAt: !1982)
!1996 = !DILocation(line: 0, scope: !1979, inlinedAt: !1982)
!1997 = !DILocation(line: 291, column: 45, scope: !1979, inlinedAt: !1982)
!1998 = !DILocation(line: 293, column: 11, scope: !1979, inlinedAt: !1982)
!1999 = !DILocation(line: 296, column: 20, scope: !2000, inlinedAt: !1982)
!2000 = distinct !DILexicalBlock(scope: !1976, file: !426, line: 296, column: 13)
!2001 = !DILocation(line: 357, column: 3, scope: !1967, inlinedAt: !1982)
!2002 = !DILocation(line: 0, scope: !1628)
!2003 = !DILocation(line: 577, column: 21, scope: !1628)
!2004 = !DILocation(line: 578, column: 5, scope: !1628)
!2005 = !DILocation(line: 581, column: 1, scope: !1614)
!2006 = !DISubprogram(name: "strtoul", scope: !1249, file: !1249, line: 181, type: !2007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!106, !1119, !2009, !70}
!2009 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1278)
!2010 = !DISubprogram(name: "sched_getscheduler", scope: !2011, file: !2011, line: 65, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2011 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!70, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !188, line: 154, baseType: !70)
!2015 = !DISubprogram(name: "__getdelim", scope: !382, file: !382, line: 632, type: !2016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!1772, !2009, !2018, !70, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !975)
!2019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1733)
!2020 = !DISubprogram(name: "access", scope: !1389, file: !1389, line: 287, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!70, !107, !70}
!2023 = !DISubprogram(name: "strdup", scope: !1245, file: !1245, line: 187, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2024 = !DISubprogram(name: "setmntent", scope: !1852, file: !1852, line: 64, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!1733, !107, !107}
!2027 = !DISubprogram(name: "getmntent", scope: !1852, file: !1852, line: 69, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!1850, !1733}
!2030 = !DISubprogram(name: "endmntent", scope: !1852, file: !1852, line: 85, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!70, !1733}
!2033 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !426, file: !426, line: 441, type: !2034, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!70, !2036, !106, !70, !106, !1119, null}
!2036 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!2037 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !382, file: !382, line: 439, type: !2038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!70, !1119, !1119, null}
!2040 = !DISubprogram(name: "strrchr", scope: !1245, file: !1245, line: 273, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2041 = !DISubprogram(name: "free", scope: !1141, file: !1141, line: 752, type: !2042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !102}
!2044 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !426, file: !426, line: 73, type: !1721, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !2045)
!2045 = !{!2046, !2048, !2060, !2061, !2064, !2066}
!2046 = !DILocalVariable(name: "alloc_count", scope: !2047, file: !426, line: 137, type: !63)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !426, line: 136, column: 3)
!2048 = !DILocalVariable(name: "set", scope: !2049, file: !426, line: 140, type: !2052)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !426, line: 139, column: 7)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !426, line: 138, column: 5)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !426, line: 138, column: 5)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !2054, line: 42, baseType: !2055)
!2054 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/cpu-set.h", directory: "", checksumkind: CSK_MD5, checksum: "9b78eb5e247ecb71c5de90bcf65db505")
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2054, line: 39, size: 1024, elements: !2056)
!2056 = !{!2057}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !2055, file: !2054, line: 41, baseType: !2058, size: 1024)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2059, size: 1024, elements: !297)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !2054, line: 32, baseType: !106)
!2060 = !DILocalVariable(name: "size", scope: !2049, file: !426, line: 144, type: !63)
!2061 = !DILocalVariable(name: "count", scope: !2062, file: !426, line: 147, type: !63)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !426, line: 146, column: 11)
!2063 = distinct !DILexicalBlock(scope: !2049, file: !426, line: 145, column: 13)
!2064 = !DILocalVariable(name: "set", scope: !2065, file: !426, line: 167, type: !2053)
!2065 = distinct !DILexicalBlock(scope: !2044, file: !426, line: 166, column: 3)
!2066 = !DILocalVariable(name: "count", scope: !2067, file: !426, line: 171, type: !106)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !426, line: 170, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !426, line: 169, column: 9)
!2069 = distinct !DIAssignID()
!2070 = !DILocation(line: 0, scope: !2065)
!2071 = !DILocation(line: 0, scope: !2047)
!2072 = !DILocation(line: 138, column: 5, scope: !2047)
!2073 = !DILocation(line: 137, column: 18, scope: !2047)
!2074 = !DILocation(line: 140, column: 26, scope: !2049)
!2075 = !DILocation(line: 0, scope: !2049)
!2076 = !DILocation(line: 141, column: 17, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2049, file: !426, line: 141, column: 13)
!2078 = !DILocation(line: 141, column: 13, scope: !2049)
!2079 = !DILocation(line: 144, column: 29, scope: !2049)
!2080 = !DILocation(line: 145, column: 13, scope: !2063)
!2081 = !DILocation(line: 145, column: 46, scope: !2063)
!2082 = !DILocation(line: 145, column: 13, scope: !2049)
!2083 = !DILocation(line: 147, column: 34, scope: !2062)
!2084 = !DILocation(line: 0, scope: !2062)
!2085 = !DILocation(line: 148, column: 13, scope: !2062)
!2086 = !DILocation(line: 149, column: 20, scope: !2062)
!2087 = !DILocation(line: 151, column: 13, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2049, file: !426, line: 151, column: 13)
!2089 = !DILocation(line: 151, column: 19, scope: !2088)
!2090 = !DILocation(line: 151, column: 13, scope: !2049)
!2091 = !DILocation(line: 167, column: 5, scope: !2065)
!2092 = !DILocation(line: 169, column: 9, scope: !2068)
!2093 = !DILocation(line: 169, column: 51, scope: !2068)
!2094 = !DILocation(line: 169, column: 9, scope: !2065)
!2095 = !DILocation(line: 175, column: 17, scope: !2067)
!2096 = !DILocation(line: 0, scope: !2067)
!2097 = !DILocation(line: 182, column: 19, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2067, file: !426, line: 182, column: 13)
!2099 = !DILocation(line: 182, column: 13, scope: !2067)
!2100 = !DILocation(line: 185, column: 3, scope: !2044)
!2101 = !DILocation(line: 232, column: 1, scope: !2044)
!2102 = !DISubprogram(name: "sysconf", scope: !1389, file: !1389, line: 640, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!189, !70}
!2105 = !DISubprogram(name: "__sched_cpualloc", scope: !2054, file: !2054, line: 119, type: !2106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2052, !104}
!2108 = !DISubprogram(name: "sched_getaffinity", scope: !2011, file: !2011, line: 134, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!70, !2014, !104, !2052}
!2111 = !DISubprogram(name: "__sched_cpucount", scope: !2054, file: !2054, line: 117, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!70, !104, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2053)
!2116 = !DISubprogram(name: "__sched_cpufree", scope: !2054, file: !2054, line: 120, type: !2117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2052}
!2119 = distinct !DISubprogram(name: "set_program_name", scope: !458, file: !458, line: 37, type: !1079, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !2120)
!2120 = !{!2121, !2122, !2123}
!2121 = !DILocalVariable(name: "argv0", arg: 1, scope: !2119, file: !458, line: 37, type: !107)
!2122 = !DILocalVariable(name: "slash", scope: !2119, file: !458, line: 44, type: !107)
!2123 = !DILocalVariable(name: "base", scope: !2119, file: !458, line: 45, type: !107)
!2124 = !DILocation(line: 0, scope: !2119)
!2125 = !DILocation(line: 44, column: 23, scope: !2119)
!2126 = !DILocation(line: 45, column: 22, scope: !2119)
!2127 = !DILocation(line: 46, column: 17, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2119, file: !458, line: 46, column: 7)
!2129 = !DILocation(line: 46, column: 9, scope: !2128)
!2130 = !DILocation(line: 46, column: 25, scope: !2128)
!2131 = !DILocation(line: 46, column: 40, scope: !2128)
!2132 = !DILocalVariable(name: "__s1", arg: 1, scope: !2133, file: !1141, line: 974, type: !1273)
!2133 = distinct !DISubprogram(name: "memeq", scope: !1141, file: !1141, line: 974, type: !2134, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!148, !1273, !1273, !104}
!2136 = !{!2132, !2137, !2138}
!2137 = !DILocalVariable(name: "__s2", arg: 2, scope: !2133, file: !1141, line: 974, type: !1273)
!2138 = !DILocalVariable(name: "__n", arg: 3, scope: !2133, file: !1141, line: 974, type: !104)
!2139 = !DILocation(line: 0, scope: !2133, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 46, column: 28, scope: !2128)
!2141 = !DILocation(line: 976, column: 11, scope: !2133, inlinedAt: !2140)
!2142 = !DILocation(line: 976, column: 10, scope: !2133, inlinedAt: !2140)
!2143 = !DILocation(line: 46, column: 7, scope: !2119)
!2144 = !DILocation(line: 49, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !458, line: 49, column: 11)
!2146 = distinct !DILexicalBlock(scope: !2128, file: !458, line: 47, column: 5)
!2147 = !DILocation(line: 49, column: 36, scope: !2145)
!2148 = !DILocation(line: 49, column: 11, scope: !2146)
!2149 = !DILocation(line: 65, column: 16, scope: !2119)
!2150 = !DILocation(line: 71, column: 27, scope: !2119)
!2151 = !DILocation(line: 74, column: 33, scope: !2119)
!2152 = !DILocation(line: 76, column: 1, scope: !2119)
!2153 = distinct !DIAssignID()
!2154 = !DILocation(line: 0, scope: !467)
!2155 = distinct !DIAssignID()
!2156 = !DILocation(line: 40, column: 29, scope: !467)
!2157 = !DILocation(line: 41, column: 19, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !467, file: !468, line: 41, column: 7)
!2159 = !DILocation(line: 41, column: 7, scope: !467)
!2160 = !DILocation(line: 47, column: 3, scope: !467)
!2161 = !DILocation(line: 48, column: 3, scope: !467)
!2162 = !DILocalVariable(name: "ps", arg: 1, scope: !2163, file: !2164, line: 1135, type: !2167)
!2163 = distinct !DISubprogram(name: "mbszero", scope: !2164, file: !2164, line: 1135, type: !2165, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2168)
!2164 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2167}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!2168 = !{!2162}
!2169 = !DILocation(line: 0, scope: !2163, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 48, column: 18, scope: !467)
!2171 = !DILocalVariable(name: "__dest", arg: 1, scope: !2172, file: !2173, line: 57, type: !102)
!2172 = distinct !DISubprogram(name: "memset", scope: !2173, file: !2173, line: 57, type: !2174, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !2176)
!2173 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!102, !102, !70, !104}
!2176 = !{!2171, !2177, !2178}
!2177 = !DILocalVariable(name: "__ch", arg: 2, scope: !2172, file: !2173, line: 57, type: !70)
!2178 = !DILocalVariable(name: "__len", arg: 3, scope: !2172, file: !2173, line: 57, type: !104)
!2179 = !DILocation(line: 0, scope: !2172, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 1137, column: 3, scope: !2163, inlinedAt: !2170)
!2181 = !DILocation(line: 59, column: 10, scope: !2172, inlinedAt: !2180)
!2182 = !DILocation(line: 49, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !467, file: !468, line: 49, column: 7)
!2184 = !DILocation(line: 49, column: 39, scope: !2183)
!2185 = !DILocation(line: 49, column: 44, scope: !2183)
!2186 = !DILocation(line: 54, column: 1, scope: !467)
!2187 = !DISubprogram(name: "mbrtoc32", scope: !479, file: !479, line: 57, type: !2188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!104, !2190, !1119, !104, !2192}
!2190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2191)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2167)
!2193 = distinct !DISubprogram(name: "clone_quoting_options", scope: !498, file: !498, line: 113, type: !2194, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2197)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!2196, !2196}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2197 = !{!2198, !2199, !2200}
!2198 = !DILocalVariable(name: "o", arg: 1, scope: !2193, file: !498, line: 113, type: !2196)
!2199 = !DILocalVariable(name: "saved_errno", scope: !2193, file: !498, line: 115, type: !70)
!2200 = !DILocalVariable(name: "p", scope: !2193, file: !498, line: 116, type: !2196)
!2201 = !DILocation(line: 0, scope: !2193)
!2202 = !DILocation(line: 115, column: 21, scope: !2193)
!2203 = !DILocation(line: 116, column: 40, scope: !2193)
!2204 = !DILocation(line: 116, column: 31, scope: !2193)
!2205 = !DILocation(line: 118, column: 9, scope: !2193)
!2206 = !DILocation(line: 119, column: 3, scope: !2193)
!2207 = distinct !DISubprogram(name: "get_quoting_style", scope: !498, file: !498, line: 124, type: !2208, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2212)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!521, !2210}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!2212 = !{!2213}
!2213 = !DILocalVariable(name: "o", arg: 1, scope: !2207, file: !498, line: 124, type: !2210)
!2214 = !DILocation(line: 0, scope: !2207)
!2215 = !DILocation(line: 126, column: 11, scope: !2207)
!2216 = !DILocation(line: 126, column: 46, scope: !2207)
!2217 = !{!2218, !1129, i64 0}
!2218 = !{!"quoting_options", !1129, i64 0, !1129, i64 4, !1068, i64 8, !1067, i64 40, !1067, i64 48}
!2219 = !DILocation(line: 126, column: 3, scope: !2207)
!2220 = distinct !DISubprogram(name: "set_quoting_style", scope: !498, file: !498, line: 132, type: !2221, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !2196, !521}
!2223 = !{!2224, !2225}
!2224 = !DILocalVariable(name: "o", arg: 1, scope: !2220, file: !498, line: 132, type: !2196)
!2225 = !DILocalVariable(name: "s", arg: 2, scope: !2220, file: !498, line: 132, type: !521)
!2226 = !DILocation(line: 0, scope: !2220)
!2227 = !DILocation(line: 134, column: 4, scope: !2220)
!2228 = !DILocation(line: 134, column: 45, scope: !2220)
!2229 = !DILocation(line: 135, column: 1, scope: !2220)
!2230 = distinct !DISubprogram(name: "set_char_quoting", scope: !498, file: !498, line: 143, type: !2231, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!70, !2196, !4, !70}
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2240, !2241}
!2234 = !DILocalVariable(name: "o", arg: 1, scope: !2230, file: !498, line: 143, type: !2196)
!2235 = !DILocalVariable(name: "c", arg: 2, scope: !2230, file: !498, line: 143, type: !4)
!2236 = !DILocalVariable(name: "i", arg: 3, scope: !2230, file: !498, line: 143, type: !70)
!2237 = !DILocalVariable(name: "uc", scope: !2230, file: !498, line: 145, type: !109)
!2238 = !DILocalVariable(name: "p", scope: !2230, file: !498, line: 146, type: !2239)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!2240 = !DILocalVariable(name: "shift", scope: !2230, file: !498, line: 148, type: !70)
!2241 = !DILocalVariable(name: "r", scope: !2230, file: !498, line: 149, type: !63)
!2242 = !DILocation(line: 0, scope: !2230)
!2243 = !DILocation(line: 147, column: 6, scope: !2230)
!2244 = !DILocation(line: 147, column: 41, scope: !2230)
!2245 = !DILocation(line: 147, column: 62, scope: !2230)
!2246 = !DILocation(line: 147, column: 57, scope: !2230)
!2247 = !DILocation(line: 148, column: 15, scope: !2230)
!2248 = !DILocation(line: 149, column: 21, scope: !2230)
!2249 = !DILocation(line: 149, column: 24, scope: !2230)
!2250 = !DILocation(line: 149, column: 34, scope: !2230)
!2251 = !DILocation(line: 150, column: 19, scope: !2230)
!2252 = !DILocation(line: 150, column: 24, scope: !2230)
!2253 = !DILocation(line: 150, column: 6, scope: !2230)
!2254 = !DILocation(line: 151, column: 3, scope: !2230)
!2255 = distinct !DISubprogram(name: "set_quoting_flags", scope: !498, file: !498, line: 159, type: !2256, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!70, !2196, !70}
!2258 = !{!2259, !2260, !2261}
!2259 = !DILocalVariable(name: "o", arg: 1, scope: !2255, file: !498, line: 159, type: !2196)
!2260 = !DILocalVariable(name: "i", arg: 2, scope: !2255, file: !498, line: 159, type: !70)
!2261 = !DILocalVariable(name: "r", scope: !2255, file: !498, line: 163, type: !70)
!2262 = !DILocation(line: 0, scope: !2255)
!2263 = !DILocation(line: 161, column: 8, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2255, file: !498, line: 161, column: 7)
!2265 = !DILocation(line: 161, column: 7, scope: !2255)
!2266 = !DILocation(line: 163, column: 14, scope: !2255)
!2267 = !{!2218, !1129, i64 4}
!2268 = !DILocation(line: 164, column: 12, scope: !2255)
!2269 = !DILocation(line: 165, column: 3, scope: !2255)
!2270 = distinct !DISubprogram(name: "set_custom_quoting", scope: !498, file: !498, line: 169, type: !2271, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !2196, !107, !107}
!2273 = !{!2274, !2275, !2276}
!2274 = !DILocalVariable(name: "o", arg: 1, scope: !2270, file: !498, line: 169, type: !2196)
!2275 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2270, file: !498, line: 170, type: !107)
!2276 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2270, file: !498, line: 170, type: !107)
!2277 = !DILocation(line: 0, scope: !2270)
!2278 = !DILocation(line: 172, column: 8, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2270, file: !498, line: 172, column: 7)
!2280 = !DILocation(line: 172, column: 7, scope: !2270)
!2281 = !DILocation(line: 174, column: 12, scope: !2270)
!2282 = !DILocation(line: 175, column: 8, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2270, file: !498, line: 175, column: 7)
!2284 = !DILocation(line: 175, column: 19, scope: !2283)
!2285 = !DILocation(line: 176, column: 5, scope: !2283)
!2286 = !DILocation(line: 177, column: 6, scope: !2270)
!2287 = !DILocation(line: 177, column: 17, scope: !2270)
!2288 = !{!2218, !1067, i64 40}
!2289 = !DILocation(line: 178, column: 6, scope: !2270)
!2290 = !DILocation(line: 178, column: 18, scope: !2270)
!2291 = !{!2218, !1067, i64 48}
!2292 = !DILocation(line: 179, column: 1, scope: !2270)
!2293 = !DISubprogram(name: "abort", scope: !1249, file: !1249, line: 598, type: !422, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2294 = distinct !DISubprogram(name: "quotearg_buffer", scope: !498, file: !498, line: 774, type: !2295, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2297)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!104, !101, !104, !107, !104, !2210}
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!2298 = !DILocalVariable(name: "buffer", arg: 1, scope: !2294, file: !498, line: 774, type: !101)
!2299 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2294, file: !498, line: 774, type: !104)
!2300 = !DILocalVariable(name: "arg", arg: 3, scope: !2294, file: !498, line: 775, type: !107)
!2301 = !DILocalVariable(name: "argsize", arg: 4, scope: !2294, file: !498, line: 775, type: !104)
!2302 = !DILocalVariable(name: "o", arg: 5, scope: !2294, file: !498, line: 776, type: !2210)
!2303 = !DILocalVariable(name: "p", scope: !2294, file: !498, line: 778, type: !2210)
!2304 = !DILocalVariable(name: "saved_errno", scope: !2294, file: !498, line: 779, type: !70)
!2305 = !DILocalVariable(name: "r", scope: !2294, file: !498, line: 780, type: !104)
!2306 = !DILocation(line: 0, scope: !2294)
!2307 = !DILocation(line: 778, column: 37, scope: !2294)
!2308 = !DILocation(line: 779, column: 21, scope: !2294)
!2309 = !DILocation(line: 781, column: 43, scope: !2294)
!2310 = !DILocation(line: 781, column: 53, scope: !2294)
!2311 = !DILocation(line: 781, column: 63, scope: !2294)
!2312 = !DILocation(line: 782, column: 43, scope: !2294)
!2313 = !DILocation(line: 782, column: 58, scope: !2294)
!2314 = !DILocation(line: 780, column: 14, scope: !2294)
!2315 = !DILocation(line: 783, column: 9, scope: !2294)
!2316 = !DILocation(line: 784, column: 3, scope: !2294)
!2317 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !498, file: !498, line: 251, type: !2318, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2322)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!104, !101, !104, !107, !104, !521, !70, !2320, !107, !107}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2348, !2350, !2353, !2354, !2355, !2356, !2359, !2360, !2362, !2363, !2366, !2370, !2371, !2379, !2382, !2383, !2384}
!2323 = !DILocalVariable(name: "buffer", arg: 1, scope: !2317, file: !498, line: 251, type: !101)
!2324 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2317, file: !498, line: 251, type: !104)
!2325 = !DILocalVariable(name: "arg", arg: 3, scope: !2317, file: !498, line: 252, type: !107)
!2326 = !DILocalVariable(name: "argsize", arg: 4, scope: !2317, file: !498, line: 252, type: !104)
!2327 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2317, file: !498, line: 253, type: !521)
!2328 = !DILocalVariable(name: "flags", arg: 6, scope: !2317, file: !498, line: 253, type: !70)
!2329 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2317, file: !498, line: 254, type: !2320)
!2330 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2317, file: !498, line: 255, type: !107)
!2331 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2317, file: !498, line: 256, type: !107)
!2332 = !DILocalVariable(name: "unibyte_locale", scope: !2317, file: !498, line: 258, type: !148)
!2333 = !DILocalVariable(name: "len", scope: !2317, file: !498, line: 260, type: !104)
!2334 = !DILocalVariable(name: "orig_buffersize", scope: !2317, file: !498, line: 261, type: !104)
!2335 = !DILocalVariable(name: "quote_string", scope: !2317, file: !498, line: 262, type: !107)
!2336 = !DILocalVariable(name: "quote_string_len", scope: !2317, file: !498, line: 263, type: !104)
!2337 = !DILocalVariable(name: "backslash_escapes", scope: !2317, file: !498, line: 264, type: !148)
!2338 = !DILocalVariable(name: "elide_outer_quotes", scope: !2317, file: !498, line: 265, type: !148)
!2339 = !DILocalVariable(name: "encountered_single_quote", scope: !2317, file: !498, line: 266, type: !148)
!2340 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2317, file: !498, line: 267, type: !148)
!2341 = !DILabel(scope: !2317, name: "process_input", file: !498, line: 308)
!2342 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2317, file: !498, line: 309, type: !148)
!2343 = !DILocalVariable(name: "lq", scope: !2344, file: !498, line: 361, type: !107)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !498, line: 361, column: 11)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !498, line: 360, column: 13)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !498, line: 333, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2317, file: !498, line: 312, column: 5)
!2348 = !DILocalVariable(name: "i", scope: !2349, file: !498, line: 395, type: !104)
!2349 = distinct !DILexicalBlock(scope: !2317, file: !498, line: 395, column: 3)
!2350 = !DILocalVariable(name: "is_right_quote", scope: !2351, file: !498, line: 397, type: !148)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !498, line: 396, column: 5)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !498, line: 395, column: 3)
!2353 = !DILocalVariable(name: "escaping", scope: !2351, file: !498, line: 398, type: !148)
!2354 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2351, file: !498, line: 399, type: !148)
!2355 = !DILocalVariable(name: "c", scope: !2351, file: !498, line: 417, type: !109)
!2356 = !DILabel(scope: !2357, name: "c_and_shell_escape", file: !498, line: 502)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !498, line: 478, column: 9)
!2358 = distinct !DILexicalBlock(scope: !2351, file: !498, line: 419, column: 9)
!2359 = !DILabel(scope: !2357, name: "c_escape", file: !498, line: 507)
!2360 = !DILocalVariable(name: "m", scope: !2361, file: !498, line: 598, type: !104)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !498, line: 596, column: 11)
!2362 = !DILocalVariable(name: "printable", scope: !2361, file: !498, line: 600, type: !148)
!2363 = !DILocalVariable(name: "mbs", scope: !2364, file: !498, line: 609, type: !582)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !498, line: 608, column: 15)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !498, line: 602, column: 17)
!2366 = !DILocalVariable(name: "w", scope: !2367, file: !498, line: 618, type: !478)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !498, line: 617, column: 19)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !498, line: 616, column: 17)
!2369 = distinct !DILexicalBlock(scope: !2364, file: !498, line: 616, column: 17)
!2370 = !DILocalVariable(name: "bytes", scope: !2367, file: !498, line: 619, type: !104)
!2371 = !DILocalVariable(name: "j", scope: !2372, file: !498, line: 648, type: !104)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !498, line: 648, column: 29)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !498, line: 647, column: 27)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !498, line: 645, column: 29)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !498, line: 636, column: 23)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !498, line: 628, column: 30)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !498, line: 623, column: 30)
!2378 = distinct !DILexicalBlock(scope: !2367, file: !498, line: 621, column: 25)
!2379 = !DILocalVariable(name: "ilim", scope: !2380, file: !498, line: 674, type: !104)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !498, line: 671, column: 15)
!2381 = distinct !DILexicalBlock(scope: !2361, file: !498, line: 670, column: 17)
!2382 = !DILabel(scope: !2351, name: "store_escape", file: !498, line: 709)
!2383 = !DILabel(scope: !2351, name: "store_c", file: !498, line: 712)
!2384 = !DILabel(scope: !2317, name: "force_outer_quoting_style", file: !498, line: 753)
!2385 = distinct !DIAssignID()
!2386 = distinct !DIAssignID()
!2387 = distinct !DIAssignID()
!2388 = distinct !DIAssignID()
!2389 = distinct !DIAssignID()
!2390 = !DILocation(line: 0, scope: !2364)
!2391 = distinct !DIAssignID()
!2392 = !DILocation(line: 0, scope: !2367)
!2393 = !DILocation(line: 0, scope: !2317)
!2394 = !DILocation(line: 258, column: 25, scope: !2317)
!2395 = !DILocation(line: 258, column: 36, scope: !2317)
!2396 = !DILocation(line: 267, column: 3, scope: !2317)
!2397 = !DILocation(line: 261, column: 10, scope: !2317)
!2398 = !DILocation(line: 262, column: 15, scope: !2317)
!2399 = !DILocation(line: 263, column: 10, scope: !2317)
!2400 = !DILocation(line: 308, column: 2, scope: !2317)
!2401 = !DILocation(line: 311, column: 3, scope: !2317)
!2402 = !DILocation(line: 318, column: 11, scope: !2347)
!2403 = !DILocation(line: 319, column: 9, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !498, line: 319, column: 9)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !498, line: 319, column: 9)
!2406 = distinct !DILexicalBlock(scope: !2347, file: !498, line: 318, column: 11)
!2407 = !DILocation(line: 319, column: 9, scope: !2405)
!2408 = !DILocation(line: 0, scope: !573, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 357, column: 26, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !498, line: 335, column: 11)
!2411 = distinct !DILexicalBlock(scope: !2346, file: !498, line: 334, column: 13)
!2412 = !DILocation(line: 199, column: 29, scope: !573, inlinedAt: !2409)
!2413 = !DILocation(line: 201, column: 19, scope: !2414, inlinedAt: !2409)
!2414 = distinct !DILexicalBlock(scope: !573, file: !498, line: 201, column: 7)
!2415 = !DILocation(line: 201, column: 7, scope: !573, inlinedAt: !2409)
!2416 = !DILocation(line: 229, column: 3, scope: !573, inlinedAt: !2409)
!2417 = !DILocation(line: 230, column: 3, scope: !573, inlinedAt: !2409)
!2418 = !DILocalVariable(name: "ps", arg: 1, scope: !2419, file: !2164, line: 1135, type: !2422)
!2419 = distinct !DISubprogram(name: "mbszero", scope: !2164, file: !2164, line: 1135, type: !2420, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2423)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!2423 = !{!2418}
!2424 = !DILocation(line: 0, scope: !2419, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 230, column: 18, scope: !573, inlinedAt: !2409)
!2426 = !DILocalVariable(name: "__dest", arg: 1, scope: !2427, file: !2173, line: 57, type: !102)
!2427 = distinct !DISubprogram(name: "memset", scope: !2173, file: !2173, line: 57, type: !2174, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2428)
!2428 = !{!2426, !2429, !2430}
!2429 = !DILocalVariable(name: "__ch", arg: 2, scope: !2427, file: !2173, line: 57, type: !70)
!2430 = !DILocalVariable(name: "__len", arg: 3, scope: !2427, file: !2173, line: 57, type: !104)
!2431 = !DILocation(line: 0, scope: !2427, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1137, column: 3, scope: !2419, inlinedAt: !2425)
!2433 = !DILocation(line: 59, column: 10, scope: !2427, inlinedAt: !2432)
!2434 = !DILocation(line: 231, column: 7, scope: !2435, inlinedAt: !2409)
!2435 = distinct !DILexicalBlock(scope: !573, file: !498, line: 231, column: 7)
!2436 = !DILocation(line: 231, column: 40, scope: !2435, inlinedAt: !2409)
!2437 = !DILocation(line: 231, column: 45, scope: !2435, inlinedAt: !2409)
!2438 = !DILocation(line: 235, column: 1, scope: !573, inlinedAt: !2409)
!2439 = !DILocation(line: 0, scope: !573, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 358, column: 27, scope: !2410)
!2441 = !DILocation(line: 199, column: 29, scope: !573, inlinedAt: !2440)
!2442 = !DILocation(line: 201, column: 19, scope: !2414, inlinedAt: !2440)
!2443 = !DILocation(line: 201, column: 7, scope: !573, inlinedAt: !2440)
!2444 = !DILocation(line: 229, column: 3, scope: !573, inlinedAt: !2440)
!2445 = !DILocation(line: 230, column: 3, scope: !573, inlinedAt: !2440)
!2446 = !DILocation(line: 0, scope: !2419, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 230, column: 18, scope: !573, inlinedAt: !2440)
!2448 = !DILocation(line: 0, scope: !2427, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 1137, column: 3, scope: !2419, inlinedAt: !2447)
!2450 = !DILocation(line: 59, column: 10, scope: !2427, inlinedAt: !2449)
!2451 = !DILocation(line: 231, column: 7, scope: !2435, inlinedAt: !2440)
!2452 = !DILocation(line: 231, column: 40, scope: !2435, inlinedAt: !2440)
!2453 = !DILocation(line: 231, column: 45, scope: !2435, inlinedAt: !2440)
!2454 = !DILocation(line: 235, column: 1, scope: !573, inlinedAt: !2440)
!2455 = !DILocation(line: 360, column: 13, scope: !2346)
!2456 = !DILocation(line: 0, scope: !2344)
!2457 = !DILocation(line: 361, column: 45, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2344, file: !498, line: 361, column: 11)
!2459 = !DILocation(line: 361, column: 11, scope: !2344)
!2460 = !DILocation(line: 362, column: 13, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !498, line: 362, column: 13)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !498, line: 362, column: 13)
!2463 = !DILocation(line: 362, column: 13, scope: !2462)
!2464 = !DILocation(line: 361, column: 52, scope: !2458)
!2465 = distinct !{!2465, !2459, !2466, !1175}
!2466 = !DILocation(line: 362, column: 13, scope: !2344)
!2467 = !DILocation(line: 365, column: 28, scope: !2346)
!2468 = !DILocation(line: 260, column: 10, scope: !2317)
!2469 = !DILocation(line: 367, column: 7, scope: !2347)
!2470 = !DILocation(line: 373, column: 7, scope: !2347)
!2471 = !DILocation(line: 381, column: 11, scope: !2347)
!2472 = !DILocation(line: 376, column: 11, scope: !2347)
!2473 = !DILocation(line: 382, column: 9, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !498, line: 382, column: 9)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !498, line: 382, column: 9)
!2476 = distinct !DILexicalBlock(scope: !2347, file: !498, line: 381, column: 11)
!2477 = !DILocation(line: 382, column: 9, scope: !2475)
!2478 = !DILocation(line: 389, column: 7, scope: !2347)
!2479 = !DILocation(line: 392, column: 7, scope: !2347)
!2480 = !DILocation(line: 0, scope: !2349)
!2481 = !DILocation(line: 395, column: 8, scope: !2349)
!2482 = !DILocation(line: 395, scope: !2349)
!2483 = !DILocation(line: 395, column: 34, scope: !2352)
!2484 = !DILocation(line: 395, column: 26, scope: !2352)
!2485 = !DILocation(line: 395, column: 48, scope: !2352)
!2486 = !DILocation(line: 395, column: 55, scope: !2352)
!2487 = !DILocation(line: 395, column: 3, scope: !2349)
!2488 = !DILocation(line: 395, column: 67, scope: !2352)
!2489 = !DILocation(line: 0, scope: !2351)
!2490 = !DILocation(line: 402, column: 11, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2351, file: !498, line: 401, column: 11)
!2492 = !DILocation(line: 404, column: 17, scope: !2491)
!2493 = !DILocation(line: 405, column: 39, scope: !2491)
!2494 = !DILocation(line: 409, column: 32, scope: !2491)
!2495 = !DILocation(line: 405, column: 19, scope: !2491)
!2496 = !DILocation(line: 405, column: 15, scope: !2491)
!2497 = !DILocation(line: 410, column: 11, scope: !2491)
!2498 = !DILocation(line: 410, column: 25, scope: !2491)
!2499 = !DILocalVariable(name: "__s1", arg: 1, scope: !2500, file: !1141, line: 974, type: !1273)
!2500 = distinct !DISubprogram(name: "memeq", scope: !1141, file: !1141, line: 974, type: !2134, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2501)
!2501 = !{!2499, !2502, !2503}
!2502 = !DILocalVariable(name: "__s2", arg: 2, scope: !2500, file: !1141, line: 974, type: !1273)
!2503 = !DILocalVariable(name: "__n", arg: 3, scope: !2500, file: !1141, line: 974, type: !104)
!2504 = !DILocation(line: 0, scope: !2500, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 410, column: 14, scope: !2491)
!2506 = !DILocation(line: 976, column: 11, scope: !2500, inlinedAt: !2505)
!2507 = !DILocation(line: 976, column: 10, scope: !2500, inlinedAt: !2505)
!2508 = !DILocation(line: 401, column: 11, scope: !2351)
!2509 = !DILocation(line: 417, column: 25, scope: !2351)
!2510 = !DILocation(line: 418, column: 7, scope: !2351)
!2511 = !DILocation(line: 421, column: 15, scope: !2358)
!2512 = !DILocation(line: 423, column: 15, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !498, line: 423, column: 15)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !498, line: 422, column: 13)
!2515 = distinct !DILexicalBlock(scope: !2358, file: !498, line: 421, column: 15)
!2516 = !DILocation(line: 423, column: 15, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !498, line: 423, column: 15)
!2518 = !DILocation(line: 423, column: 15, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !498, line: 423, column: 15)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !498, line: 423, column: 15)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !498, line: 423, column: 15)
!2522 = !DILocation(line: 423, column: 15, scope: !2520)
!2523 = !DILocation(line: 423, column: 15, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !498, line: 423, column: 15)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !498, line: 423, column: 15)
!2526 = !DILocation(line: 423, column: 15, scope: !2525)
!2527 = !DILocation(line: 423, column: 15, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !498, line: 423, column: 15)
!2529 = distinct !DILexicalBlock(scope: !2521, file: !498, line: 423, column: 15)
!2530 = !DILocation(line: 423, column: 15, scope: !2529)
!2531 = !DILocation(line: 423, column: 15, scope: !2521)
!2532 = !DILocation(line: 423, column: 15, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !498, line: 423, column: 15)
!2534 = distinct !DILexicalBlock(scope: !2513, file: !498, line: 423, column: 15)
!2535 = !DILocation(line: 423, column: 15, scope: !2534)
!2536 = !DILocation(line: 431, column: 19, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2514, file: !498, line: 430, column: 19)
!2538 = !DILocation(line: 431, column: 24, scope: !2537)
!2539 = !DILocation(line: 431, column: 28, scope: !2537)
!2540 = !DILocation(line: 431, column: 38, scope: !2537)
!2541 = !DILocation(line: 431, column: 48, scope: !2537)
!2542 = !DILocation(line: 431, column: 59, scope: !2537)
!2543 = !DILocation(line: 433, column: 19, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !498, line: 433, column: 19)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !498, line: 433, column: 19)
!2546 = distinct !DILexicalBlock(scope: !2537, file: !498, line: 432, column: 17)
!2547 = !DILocation(line: 433, column: 19, scope: !2545)
!2548 = !DILocation(line: 434, column: 19, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !498, line: 434, column: 19)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !498, line: 434, column: 19)
!2551 = !DILocation(line: 434, column: 19, scope: !2550)
!2552 = !DILocation(line: 435, column: 17, scope: !2546)
!2553 = !DILocation(line: 442, column: 20, scope: !2515)
!2554 = !DILocation(line: 447, column: 11, scope: !2358)
!2555 = !DILocation(line: 450, column: 19, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2358, file: !498, line: 448, column: 13)
!2557 = !DILocation(line: 456, column: 19, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2556, file: !498, line: 455, column: 19)
!2559 = !DILocation(line: 456, column: 24, scope: !2558)
!2560 = !DILocation(line: 456, column: 28, scope: !2558)
!2561 = !DILocation(line: 456, column: 38, scope: !2558)
!2562 = !DILocation(line: 456, column: 41, scope: !2558)
!2563 = !DILocation(line: 456, column: 52, scope: !2558)
!2564 = !DILocation(line: 455, column: 19, scope: !2556)
!2565 = !DILocation(line: 457, column: 25, scope: !2558)
!2566 = !DILocation(line: 457, column: 17, scope: !2558)
!2567 = !DILocation(line: 464, column: 25, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2558, file: !498, line: 458, column: 19)
!2569 = !DILocation(line: 468, column: 21, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !498, line: 468, column: 21)
!2571 = distinct !DILexicalBlock(scope: !2568, file: !498, line: 468, column: 21)
!2572 = !DILocation(line: 468, column: 21, scope: !2571)
!2573 = !DILocation(line: 469, column: 21, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !498, line: 469, column: 21)
!2575 = distinct !DILexicalBlock(scope: !2568, file: !498, line: 469, column: 21)
!2576 = !DILocation(line: 469, column: 21, scope: !2575)
!2577 = !DILocation(line: 470, column: 21, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !498, line: 470, column: 21)
!2579 = distinct !DILexicalBlock(scope: !2568, file: !498, line: 470, column: 21)
!2580 = !DILocation(line: 470, column: 21, scope: !2579)
!2581 = !DILocation(line: 471, column: 21, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !498, line: 471, column: 21)
!2583 = distinct !DILexicalBlock(scope: !2568, file: !498, line: 471, column: 21)
!2584 = !DILocation(line: 471, column: 21, scope: !2583)
!2585 = !DILocation(line: 472, column: 21, scope: !2568)
!2586 = !DILocation(line: 482, column: 33, scope: !2357)
!2587 = !DILocation(line: 483, column: 33, scope: !2357)
!2588 = !DILocation(line: 485, column: 33, scope: !2357)
!2589 = !DILocation(line: 486, column: 33, scope: !2357)
!2590 = !DILocation(line: 487, column: 33, scope: !2357)
!2591 = !DILocation(line: 490, column: 17, scope: !2357)
!2592 = !DILocation(line: 492, column: 21, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !498, line: 491, column: 15)
!2594 = distinct !DILexicalBlock(scope: !2357, file: !498, line: 490, column: 17)
!2595 = !DILocation(line: 499, column: 35, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2357, file: !498, line: 499, column: 17)
!2597 = !DILocation(line: 0, scope: !2357)
!2598 = !DILocation(line: 502, column: 11, scope: !2357)
!2599 = !DILocation(line: 504, column: 17, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2357, file: !498, line: 503, column: 17)
!2601 = !DILocation(line: 507, column: 11, scope: !2357)
!2602 = !DILocation(line: 508, column: 17, scope: !2357)
!2603 = !DILocation(line: 517, column: 15, scope: !2358)
!2604 = !DILocation(line: 517, column: 40, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2358, file: !498, line: 517, column: 15)
!2606 = !DILocation(line: 517, column: 47, scope: !2605)
!2607 = !DILocation(line: 517, column: 18, scope: !2605)
!2608 = !DILocation(line: 521, column: 17, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2358, file: !498, line: 521, column: 15)
!2610 = !DILocation(line: 521, column: 15, scope: !2358)
!2611 = !DILocation(line: 525, column: 11, scope: !2358)
!2612 = !DILocation(line: 537, column: 15, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2358, file: !498, line: 536, column: 15)
!2614 = !DILocation(line: 536, column: 15, scope: !2358)
!2615 = !DILocation(line: 544, column: 15, scope: !2358)
!2616 = !DILocation(line: 546, column: 19, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !498, line: 545, column: 13)
!2618 = distinct !DILexicalBlock(scope: !2358, file: !498, line: 544, column: 15)
!2619 = !DILocation(line: 549, column: 19, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !498, line: 549, column: 19)
!2621 = !DILocation(line: 549, column: 30, scope: !2620)
!2622 = !DILocation(line: 558, column: 15, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !498, line: 558, column: 15)
!2624 = distinct !DILexicalBlock(scope: !2617, file: !498, line: 558, column: 15)
!2625 = !DILocation(line: 558, column: 15, scope: !2624)
!2626 = !DILocation(line: 559, column: 15, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !498, line: 559, column: 15)
!2628 = distinct !DILexicalBlock(scope: !2617, file: !498, line: 559, column: 15)
!2629 = !DILocation(line: 559, column: 15, scope: !2628)
!2630 = !DILocation(line: 560, column: 15, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !498, line: 560, column: 15)
!2632 = distinct !DILexicalBlock(scope: !2617, file: !498, line: 560, column: 15)
!2633 = !DILocation(line: 560, column: 15, scope: !2632)
!2634 = !DILocation(line: 562, column: 13, scope: !2617)
!2635 = !DILocation(line: 602, column: 17, scope: !2361)
!2636 = !DILocation(line: 0, scope: !2361)
!2637 = !DILocation(line: 605, column: 29, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2365, file: !498, line: 603, column: 15)
!2639 = !DILocation(line: 605, column: 41, scope: !2638)
!2640 = !DILocation(line: 606, column: 15, scope: !2638)
!2641 = !DILocation(line: 609, column: 17, scope: !2364)
!2642 = !DILocation(line: 0, scope: !2419, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 609, column: 32, scope: !2364)
!2644 = !DILocation(line: 0, scope: !2427, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1137, column: 3, scope: !2419, inlinedAt: !2643)
!2646 = !DILocation(line: 59, column: 10, scope: !2427, inlinedAt: !2645)
!2647 = !DILocation(line: 613, column: 29, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2364, file: !498, line: 613, column: 21)
!2649 = !DILocation(line: 613, column: 21, scope: !2364)
!2650 = !DILocation(line: 614, column: 29, scope: !2648)
!2651 = !DILocation(line: 614, column: 19, scope: !2648)
!2652 = !DILocation(line: 618, column: 21, scope: !2367)
!2653 = !DILocation(line: 620, column: 54, scope: !2367)
!2654 = !DILocation(line: 619, column: 36, scope: !2367)
!2655 = !DILocation(line: 621, column: 25, scope: !2367)
!2656 = !DILocation(line: 631, column: 38, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2376, file: !498, line: 629, column: 23)
!2658 = !DILocation(line: 631, column: 48, scope: !2657)
!2659 = !DILocation(line: 631, column: 25, scope: !2657)
!2660 = !DILocation(line: 626, column: 25, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2377, file: !498, line: 624, column: 23)
!2662 = !DILocation(line: 631, column: 51, scope: !2657)
!2663 = !DILocation(line: 632, column: 28, scope: !2657)
!2664 = !DILocation(line: 631, column: 34, scope: !2657)
!2665 = distinct !{!2665, !2659, !2663, !1175}
!2666 = !DILocation(line: 0, scope: !2372)
!2667 = !DILocation(line: 646, column: 29, scope: !2374)
!2668 = !DILocation(line: 648, column: 29, scope: !2372)
!2669 = !DILocation(line: 649, column: 39, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2372, file: !498, line: 648, column: 29)
!2671 = !DILocation(line: 649, column: 31, scope: !2670)
!2672 = !DILocation(line: 648, column: 60, scope: !2670)
!2673 = !DILocation(line: 648, column: 50, scope: !2670)
!2674 = distinct !{!2674, !2668, !2675, !1175}
!2675 = !DILocation(line: 654, column: 33, scope: !2372)
!2676 = !DILocation(line: 657, column: 43, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2375, file: !498, line: 657, column: 29)
!2678 = !DILocalVariable(name: "wc", arg: 1, scope: !2679, file: !2680, line: 865, type: !2683)
!2679 = distinct !DISubprogram(name: "c32isprint", scope: !2680, file: !2680, line: 865, type: !2681, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2685)
!2680 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!70, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2684, line: 20, baseType: !63)
!2684 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2685 = !{!2678}
!2686 = !DILocation(line: 0, scope: !2679, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 657, column: 31, scope: !2677)
!2688 = !DILocation(line: 871, column: 10, scope: !2679, inlinedAt: !2687)
!2689 = !DILocation(line: 657, column: 31, scope: !2677)
!2690 = !DILocation(line: 664, column: 23, scope: !2367)
!2691 = !DILocation(line: 665, column: 19, scope: !2368)
!2692 = !DILocation(line: 666, column: 15, scope: !2365)
!2693 = !DILocation(line: 753, column: 2, scope: !2317)
!2694 = !DILocation(line: 756, column: 51, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2317, file: !498, line: 756, column: 7)
!2696 = !DILocation(line: 0, scope: !2365)
!2697 = !DILocation(line: 670, column: 19, scope: !2381)
!2698 = !DILocation(line: 670, column: 23, scope: !2381)
!2699 = !DILocation(line: 674, column: 33, scope: !2380)
!2700 = !DILocation(line: 0, scope: !2380)
!2701 = !DILocation(line: 676, column: 17, scope: !2380)
!2702 = !DILocation(line: 678, column: 43, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !498, line: 678, column: 25)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !498, line: 677, column: 19)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !498, line: 676, column: 17)
!2706 = distinct !DILexicalBlock(scope: !2380, file: !498, line: 676, column: 17)
!2707 = !DILocation(line: 680, column: 25, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !498, line: 680, column: 25)
!2709 = distinct !DILexicalBlock(scope: !2703, file: !498, line: 679, column: 23)
!2710 = !DILocation(line: 680, column: 25, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !498, line: 680, column: 25)
!2712 = !DILocation(line: 680, column: 25, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !498, line: 680, column: 25)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !498, line: 680, column: 25)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !498, line: 680, column: 25)
!2716 = !DILocation(line: 680, column: 25, scope: !2714)
!2717 = !DILocation(line: 680, column: 25, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !498, line: 680, column: 25)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !498, line: 680, column: 25)
!2720 = !DILocation(line: 680, column: 25, scope: !2719)
!2721 = !DILocation(line: 680, column: 25, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !498, line: 680, column: 25)
!2723 = distinct !DILexicalBlock(scope: !2715, file: !498, line: 680, column: 25)
!2724 = !DILocation(line: 680, column: 25, scope: !2723)
!2725 = !DILocation(line: 680, column: 25, scope: !2715)
!2726 = !DILocation(line: 680, column: 25, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !498, line: 680, column: 25)
!2728 = distinct !DILexicalBlock(scope: !2708, file: !498, line: 680, column: 25)
!2729 = !DILocation(line: 680, column: 25, scope: !2728)
!2730 = !DILocation(line: 681, column: 25, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !498, line: 681, column: 25)
!2732 = distinct !DILexicalBlock(scope: !2709, file: !498, line: 681, column: 25)
!2733 = !DILocation(line: 681, column: 25, scope: !2732)
!2734 = !DILocation(line: 682, column: 25, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !498, line: 682, column: 25)
!2736 = distinct !DILexicalBlock(scope: !2709, file: !498, line: 682, column: 25)
!2737 = !DILocation(line: 682, column: 25, scope: !2736)
!2738 = !DILocation(line: 683, column: 38, scope: !2709)
!2739 = !DILocation(line: 683, column: 33, scope: !2709)
!2740 = !DILocation(line: 684, column: 23, scope: !2709)
!2741 = !DILocation(line: 685, column: 30, scope: !2703)
!2742 = !DILocation(line: 687, column: 25, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !498, line: 687, column: 25)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !498, line: 687, column: 25)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !498, line: 686, column: 23)
!2746 = distinct !DILexicalBlock(scope: !2703, file: !498, line: 685, column: 30)
!2747 = !DILocation(line: 687, column: 25, scope: !2744)
!2748 = !DILocation(line: 689, column: 23, scope: !2745)
!2749 = !DILocation(line: 690, column: 35, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2704, file: !498, line: 690, column: 25)
!2751 = !DILocation(line: 690, column: 30, scope: !2750)
!2752 = !DILocation(line: 690, column: 25, scope: !2704)
!2753 = !DILocation(line: 692, column: 21, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !498, line: 692, column: 21)
!2755 = distinct !DILexicalBlock(scope: !2704, file: !498, line: 692, column: 21)
!2756 = !DILocation(line: 692, column: 21, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !498, line: 692, column: 21)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !498, line: 692, column: 21)
!2759 = distinct !DILexicalBlock(scope: !2754, file: !498, line: 692, column: 21)
!2760 = !DILocation(line: 692, column: 21, scope: !2758)
!2761 = !DILocation(line: 692, column: 21, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !498, line: 692, column: 21)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !498, line: 692, column: 21)
!2764 = !DILocation(line: 692, column: 21, scope: !2763)
!2765 = !DILocation(line: 692, column: 21, scope: !2759)
!2766 = !DILocation(line: 0, scope: !2704)
!2767 = !DILocation(line: 693, column: 21, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !498, line: 693, column: 21)
!2769 = distinct !DILexicalBlock(scope: !2704, file: !498, line: 693, column: 21)
!2770 = !DILocation(line: 693, column: 21, scope: !2769)
!2771 = !DILocation(line: 694, column: 25, scope: !2704)
!2772 = !DILocation(line: 676, column: 17, scope: !2705)
!2773 = distinct !{!2773, !2774, !2775}
!2774 = !DILocation(line: 676, column: 17, scope: !2706)
!2775 = !DILocation(line: 695, column: 19, scope: !2706)
!2776 = !DILocation(line: 409, column: 30, scope: !2491)
!2777 = !DILocation(line: 702, column: 34, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2351, file: !498, line: 702, column: 11)
!2779 = !DILocation(line: 704, column: 14, scope: !2778)
!2780 = !DILocation(line: 705, column: 14, scope: !2778)
!2781 = !DILocation(line: 705, column: 35, scope: !2778)
!2782 = !DILocation(line: 705, column: 17, scope: !2778)
!2783 = !DILocation(line: 705, column: 47, scope: !2778)
!2784 = !DILocation(line: 705, column: 65, scope: !2778)
!2785 = !DILocation(line: 706, column: 11, scope: !2778)
!2786 = !DILocation(line: 702, column: 11, scope: !2351)
!2787 = !DILocation(line: 395, column: 15, scope: !2349)
!2788 = !DILocation(line: 709, column: 5, scope: !2351)
!2789 = !DILocation(line: 710, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2351, file: !498, line: 710, column: 7)
!2791 = !DILocation(line: 710, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2790, file: !498, line: 710, column: 7)
!2793 = !DILocation(line: 710, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !498, line: 710, column: 7)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !498, line: 710, column: 7)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !498, line: 710, column: 7)
!2797 = !DILocation(line: 710, column: 7, scope: !2795)
!2798 = !DILocation(line: 710, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !498, line: 710, column: 7)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !498, line: 710, column: 7)
!2801 = !DILocation(line: 710, column: 7, scope: !2800)
!2802 = !DILocation(line: 710, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !498, line: 710, column: 7)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !498, line: 710, column: 7)
!2805 = !DILocation(line: 710, column: 7, scope: !2804)
!2806 = !DILocation(line: 710, column: 7, scope: !2796)
!2807 = !DILocation(line: 710, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !498, line: 710, column: 7)
!2809 = distinct !DILexicalBlock(scope: !2790, file: !498, line: 710, column: 7)
!2810 = !DILocation(line: 710, column: 7, scope: !2809)
!2811 = !DILocation(line: 712, column: 5, scope: !2351)
!2812 = !DILocation(line: 713, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !498, line: 713, column: 7)
!2814 = distinct !DILexicalBlock(scope: !2351, file: !498, line: 713, column: 7)
!2815 = !DILocation(line: 417, column: 21, scope: !2351)
!2816 = !DILocation(line: 713, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !498, line: 713, column: 7)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !498, line: 713, column: 7)
!2819 = distinct !DILexicalBlock(scope: !2813, file: !498, line: 713, column: 7)
!2820 = !DILocation(line: 713, column: 7, scope: !2818)
!2821 = !DILocation(line: 713, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !498, line: 713, column: 7)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !498, line: 713, column: 7)
!2824 = !DILocation(line: 713, column: 7, scope: !2823)
!2825 = !DILocation(line: 713, column: 7, scope: !2819)
!2826 = !DILocation(line: 714, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !498, line: 714, column: 7)
!2828 = distinct !DILexicalBlock(scope: !2351, file: !498, line: 714, column: 7)
!2829 = !DILocation(line: 714, column: 7, scope: !2828)
!2830 = !DILocation(line: 716, column: 11, scope: !2351)
!2831 = !DILocation(line: 718, column: 5, scope: !2352)
!2832 = !DILocation(line: 395, column: 82, scope: !2352)
!2833 = !DILocation(line: 395, column: 3, scope: !2352)
!2834 = distinct !{!2834, !2487, !2835, !1175}
!2835 = !DILocation(line: 718, column: 5, scope: !2349)
!2836 = !DILocation(line: 720, column: 11, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2317, file: !498, line: 720, column: 7)
!2838 = !DILocation(line: 720, column: 16, scope: !2837)
!2839 = !DILocation(line: 728, column: 51, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2317, file: !498, line: 728, column: 7)
!2841 = !DILocation(line: 731, column: 11, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2840, file: !498, line: 730, column: 5)
!2843 = !DILocation(line: 732, column: 16, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2842, file: !498, line: 731, column: 11)
!2845 = !DILocation(line: 732, column: 9, scope: !2844)
!2846 = !DILocation(line: 736, column: 18, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !498, line: 736, column: 16)
!2848 = !DILocation(line: 736, column: 29, scope: !2847)
!2849 = !DILocation(line: 745, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2317, file: !498, line: 745, column: 7)
!2851 = !DILocation(line: 745, column: 20, scope: !2850)
!2852 = !DILocation(line: 746, column: 12, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !498, line: 746, column: 5)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !498, line: 746, column: 5)
!2855 = !DILocation(line: 746, column: 5, scope: !2854)
!2856 = !DILocation(line: 747, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !498, line: 747, column: 7)
!2858 = distinct !DILexicalBlock(scope: !2853, file: !498, line: 747, column: 7)
!2859 = !DILocation(line: 747, column: 7, scope: !2858)
!2860 = !DILocation(line: 746, column: 39, scope: !2853)
!2861 = distinct !{!2861, !2855, !2862, !1175}
!2862 = !DILocation(line: 747, column: 7, scope: !2854)
!2863 = !DILocation(line: 749, column: 11, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2317, file: !498, line: 749, column: 7)
!2865 = !DILocation(line: 749, column: 7, scope: !2317)
!2866 = !DILocation(line: 750, column: 5, scope: !2864)
!2867 = !DILocation(line: 750, column: 17, scope: !2864)
!2868 = !DILocation(line: 756, column: 21, scope: !2695)
!2869 = !DILocation(line: 760, column: 42, scope: !2317)
!2870 = !DILocation(line: 758, column: 10, scope: !2317)
!2871 = !DILocation(line: 758, column: 3, scope: !2317)
!2872 = !DILocation(line: 762, column: 1, scope: !2317)
!2873 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1249, file: !1249, line: 98, type: !2874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!104}
!2876 = !DISubprogram(name: "strlen", scope: !1245, file: !1245, line: 407, type: !1647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2877 = !DISubprogram(name: "iswprint", scope: !2878, file: !2878, line: 120, type: !2681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2878 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2879 = distinct !DISubprogram(name: "quotearg_alloc", scope: !498, file: !498, line: 788, type: !2880, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!101, !107, !104, !2210}
!2882 = !{!2883, !2884, !2885}
!2883 = !DILocalVariable(name: "arg", arg: 1, scope: !2879, file: !498, line: 788, type: !107)
!2884 = !DILocalVariable(name: "argsize", arg: 2, scope: !2879, file: !498, line: 788, type: !104)
!2885 = !DILocalVariable(name: "o", arg: 3, scope: !2879, file: !498, line: 789, type: !2210)
!2886 = !DILocation(line: 0, scope: !2879)
!2887 = !DILocalVariable(name: "arg", arg: 1, scope: !2888, file: !498, line: 801, type: !107)
!2888 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !498, file: !498, line: 801, type: !2889, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!101, !107, !104, !975, !2210}
!2891 = !{!2887, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899}
!2892 = !DILocalVariable(name: "argsize", arg: 2, scope: !2888, file: !498, line: 801, type: !104)
!2893 = !DILocalVariable(name: "size", arg: 3, scope: !2888, file: !498, line: 801, type: !975)
!2894 = !DILocalVariable(name: "o", arg: 4, scope: !2888, file: !498, line: 802, type: !2210)
!2895 = !DILocalVariable(name: "p", scope: !2888, file: !498, line: 804, type: !2210)
!2896 = !DILocalVariable(name: "saved_errno", scope: !2888, file: !498, line: 805, type: !70)
!2897 = !DILocalVariable(name: "flags", scope: !2888, file: !498, line: 807, type: !70)
!2898 = !DILocalVariable(name: "bufsize", scope: !2888, file: !498, line: 808, type: !104)
!2899 = !DILocalVariable(name: "buf", scope: !2888, file: !498, line: 812, type: !101)
!2900 = !DILocation(line: 0, scope: !2888, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 791, column: 10, scope: !2879)
!2902 = !DILocation(line: 804, column: 37, scope: !2888, inlinedAt: !2901)
!2903 = !DILocation(line: 805, column: 21, scope: !2888, inlinedAt: !2901)
!2904 = !DILocation(line: 807, column: 18, scope: !2888, inlinedAt: !2901)
!2905 = !DILocation(line: 807, column: 24, scope: !2888, inlinedAt: !2901)
!2906 = !DILocation(line: 808, column: 72, scope: !2888, inlinedAt: !2901)
!2907 = !DILocation(line: 809, column: 56, scope: !2888, inlinedAt: !2901)
!2908 = !DILocation(line: 810, column: 49, scope: !2888, inlinedAt: !2901)
!2909 = !DILocation(line: 811, column: 49, scope: !2888, inlinedAt: !2901)
!2910 = !DILocation(line: 808, column: 20, scope: !2888, inlinedAt: !2901)
!2911 = !DILocation(line: 811, column: 62, scope: !2888, inlinedAt: !2901)
!2912 = !DILocation(line: 812, column: 15, scope: !2888, inlinedAt: !2901)
!2913 = !DILocation(line: 813, column: 60, scope: !2888, inlinedAt: !2901)
!2914 = !DILocation(line: 815, column: 32, scope: !2888, inlinedAt: !2901)
!2915 = !DILocation(line: 815, column: 47, scope: !2888, inlinedAt: !2901)
!2916 = !DILocation(line: 813, column: 3, scope: !2888, inlinedAt: !2901)
!2917 = !DILocation(line: 816, column: 9, scope: !2888, inlinedAt: !2901)
!2918 = !DILocation(line: 791, column: 3, scope: !2879)
!2919 = !DILocation(line: 0, scope: !2888)
!2920 = !DILocation(line: 804, column: 37, scope: !2888)
!2921 = !DILocation(line: 805, column: 21, scope: !2888)
!2922 = !DILocation(line: 807, column: 18, scope: !2888)
!2923 = !DILocation(line: 807, column: 27, scope: !2888)
!2924 = !DILocation(line: 807, column: 24, scope: !2888)
!2925 = !DILocation(line: 808, column: 72, scope: !2888)
!2926 = !DILocation(line: 809, column: 56, scope: !2888)
!2927 = !DILocation(line: 810, column: 49, scope: !2888)
!2928 = !DILocation(line: 811, column: 49, scope: !2888)
!2929 = !DILocation(line: 808, column: 20, scope: !2888)
!2930 = !DILocation(line: 811, column: 62, scope: !2888)
!2931 = !DILocation(line: 812, column: 15, scope: !2888)
!2932 = !DILocation(line: 813, column: 60, scope: !2888)
!2933 = !DILocation(line: 815, column: 32, scope: !2888)
!2934 = !DILocation(line: 815, column: 47, scope: !2888)
!2935 = !DILocation(line: 813, column: 3, scope: !2888)
!2936 = !DILocation(line: 816, column: 9, scope: !2888)
!2937 = !DILocation(line: 817, column: 7, scope: !2888)
!2938 = !DILocation(line: 818, column: 11, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2888, file: !498, line: 817, column: 7)
!2940 = !DILocation(line: 818, column: 5, scope: !2939)
!2941 = !DILocation(line: 819, column: 3, scope: !2888)
!2942 = distinct !DISubprogram(name: "quotearg_free", scope: !498, file: !498, line: 837, type: !422, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2943)
!2943 = !{!2944, !2945}
!2944 = !DILocalVariable(name: "sv", scope: !2942, file: !498, line: 839, type: !596)
!2945 = !DILocalVariable(name: "i", scope: !2946, file: !498, line: 840, type: !70)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !498, line: 840, column: 3)
!2947 = !DILocation(line: 839, column: 24, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2942)
!2949 = !DILocation(line: 0, scope: !2946)
!2950 = !DILocation(line: 840, column: 21, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !498, line: 840, column: 3)
!2952 = !DILocation(line: 840, column: 3, scope: !2946)
!2953 = !DILocation(line: 842, column: 13, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2942, file: !498, line: 842, column: 7)
!2955 = !{!2956, !1067, i64 8}
!2956 = !{!"slotvec", !1522, i64 0, !1067, i64 8}
!2957 = !DILocation(line: 842, column: 17, scope: !2954)
!2958 = !DILocation(line: 842, column: 7, scope: !2942)
!2959 = !DILocation(line: 841, column: 17, scope: !2951)
!2960 = !DILocation(line: 841, column: 5, scope: !2951)
!2961 = !DILocation(line: 840, column: 32, scope: !2951)
!2962 = distinct !{!2962, !2952, !2963, !1175}
!2963 = !DILocation(line: 841, column: 20, scope: !2946)
!2964 = !DILocation(line: 844, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2954, file: !498, line: 843, column: 5)
!2966 = !DILocation(line: 845, column: 21, scope: !2965)
!2967 = !{!2956, !1522, i64 0}
!2968 = !DILocation(line: 846, column: 20, scope: !2965)
!2969 = !DILocation(line: 847, column: 5, scope: !2965)
!2970 = !DILocation(line: 848, column: 10, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2942, file: !498, line: 848, column: 7)
!2972 = !DILocation(line: 848, column: 7, scope: !2942)
!2973 = !DILocation(line: 850, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !498, line: 849, column: 5)
!2975 = !DILocation(line: 851, column: 15, scope: !2974)
!2976 = !DILocation(line: 852, column: 5, scope: !2974)
!2977 = !DILocation(line: 853, column: 10, scope: !2942)
!2978 = !DILocation(line: 854, column: 1, scope: !2942)
!2979 = distinct !DISubprogram(name: "quotearg_n", scope: !498, file: !498, line: 919, type: !1242, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2980)
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2979, file: !498, line: 919, type: !70)
!2982 = !DILocalVariable(name: "arg", arg: 2, scope: !2979, file: !498, line: 919, type: !107)
!2983 = !DILocation(line: 0, scope: !2979)
!2984 = !DILocation(line: 921, column: 10, scope: !2979)
!2985 = !DILocation(line: 921, column: 3, scope: !2979)
!2986 = distinct !DISubprogram(name: "quotearg_n_options", scope: !498, file: !498, line: 866, type: !2987, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!101, !70, !107, !104, !2210}
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3000, !3001, !3003, !3004, !3005}
!2990 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !498, line: 866, type: !70)
!2991 = !DILocalVariable(name: "arg", arg: 2, scope: !2986, file: !498, line: 866, type: !107)
!2992 = !DILocalVariable(name: "argsize", arg: 3, scope: !2986, file: !498, line: 866, type: !104)
!2993 = !DILocalVariable(name: "options", arg: 4, scope: !2986, file: !498, line: 867, type: !2210)
!2994 = !DILocalVariable(name: "saved_errno", scope: !2986, file: !498, line: 869, type: !70)
!2995 = !DILocalVariable(name: "sv", scope: !2986, file: !498, line: 871, type: !596)
!2996 = !DILocalVariable(name: "nslots_max", scope: !2986, file: !498, line: 873, type: !70)
!2997 = !DILocalVariable(name: "preallocated", scope: !2998, file: !498, line: 879, type: !148)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !498, line: 878, column: 5)
!2999 = distinct !DILexicalBlock(scope: !2986, file: !498, line: 877, column: 7)
!3000 = !DILocalVariable(name: "new_nslots", scope: !2998, file: !498, line: 880, type: !988)
!3001 = !DILocalVariable(name: "size", scope: !3002, file: !498, line: 891, type: !104)
!3002 = distinct !DILexicalBlock(scope: !2986, file: !498, line: 890, column: 3)
!3003 = !DILocalVariable(name: "val", scope: !3002, file: !498, line: 892, type: !101)
!3004 = !DILocalVariable(name: "flags", scope: !3002, file: !498, line: 894, type: !70)
!3005 = !DILocalVariable(name: "qsize", scope: !3002, file: !498, line: 895, type: !104)
!3006 = distinct !DIAssignID()
!3007 = !DILocation(line: 0, scope: !2998)
!3008 = !DILocation(line: 0, scope: !2986)
!3009 = !DILocation(line: 869, column: 21, scope: !2986)
!3010 = !DILocation(line: 871, column: 24, scope: !2986)
!3011 = !DILocation(line: 874, column: 17, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2986, file: !498, line: 874, column: 7)
!3013 = !DILocation(line: 875, column: 5, scope: !3012)
!3014 = !DILocation(line: 877, column: 7, scope: !2999)
!3015 = !DILocation(line: 877, column: 14, scope: !2999)
!3016 = !DILocation(line: 877, column: 7, scope: !2986)
!3017 = !DILocation(line: 879, column: 31, scope: !2998)
!3018 = !DILocation(line: 880, column: 7, scope: !2998)
!3019 = !DILocation(line: 880, column: 26, scope: !2998)
!3020 = !DILocation(line: 880, column: 13, scope: !2998)
!3021 = distinct !DIAssignID()
!3022 = !DILocation(line: 882, column: 31, scope: !2998)
!3023 = !DILocation(line: 883, column: 33, scope: !2998)
!3024 = !DILocation(line: 883, column: 42, scope: !2998)
!3025 = !DILocation(line: 883, column: 31, scope: !2998)
!3026 = !DILocation(line: 882, column: 22, scope: !2998)
!3027 = !DILocation(line: 882, column: 15, scope: !2998)
!3028 = !DILocation(line: 884, column: 11, scope: !2998)
!3029 = !DILocation(line: 885, column: 15, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2998, file: !498, line: 884, column: 11)
!3031 = !{i64 0, i64 8, !1807, i64 8, i64 8, !1066}
!3032 = !DILocation(line: 885, column: 9, scope: !3030)
!3033 = !DILocation(line: 886, column: 20, scope: !2998)
!3034 = !DILocation(line: 886, column: 18, scope: !2998)
!3035 = !DILocation(line: 886, column: 32, scope: !2998)
!3036 = !DILocation(line: 886, column: 43, scope: !2998)
!3037 = !DILocation(line: 886, column: 53, scope: !2998)
!3038 = !DILocation(line: 0, scope: !2427, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 886, column: 7, scope: !2998)
!3040 = !DILocation(line: 59, column: 10, scope: !2427, inlinedAt: !3039)
!3041 = !DILocation(line: 887, column: 16, scope: !2998)
!3042 = !DILocation(line: 887, column: 14, scope: !2998)
!3043 = !DILocation(line: 888, column: 5, scope: !2999)
!3044 = !DILocation(line: 888, column: 5, scope: !2998)
!3045 = !DILocation(line: 891, column: 19, scope: !3002)
!3046 = !DILocation(line: 891, column: 25, scope: !3002)
!3047 = !DILocation(line: 0, scope: !3002)
!3048 = !DILocation(line: 892, column: 23, scope: !3002)
!3049 = !DILocation(line: 894, column: 26, scope: !3002)
!3050 = !DILocation(line: 894, column: 32, scope: !3002)
!3051 = !DILocation(line: 896, column: 55, scope: !3002)
!3052 = !DILocation(line: 897, column: 55, scope: !3002)
!3053 = !DILocation(line: 898, column: 55, scope: !3002)
!3054 = !DILocation(line: 899, column: 55, scope: !3002)
!3055 = !DILocation(line: 895, column: 20, scope: !3002)
!3056 = !DILocation(line: 901, column: 14, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3002, file: !498, line: 901, column: 9)
!3058 = !DILocation(line: 901, column: 9, scope: !3002)
!3059 = !DILocation(line: 903, column: 35, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3057, file: !498, line: 902, column: 7)
!3061 = !DILocation(line: 903, column: 20, scope: !3060)
!3062 = !DILocation(line: 904, column: 17, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3060, file: !498, line: 904, column: 13)
!3064 = !DILocation(line: 904, column: 13, scope: !3060)
!3065 = !DILocation(line: 905, column: 11, scope: !3063)
!3066 = !DILocation(line: 906, column: 27, scope: !3060)
!3067 = !DILocation(line: 906, column: 19, scope: !3060)
!3068 = !DILocation(line: 907, column: 69, scope: !3060)
!3069 = !DILocation(line: 909, column: 44, scope: !3060)
!3070 = !DILocation(line: 910, column: 44, scope: !3060)
!3071 = !DILocation(line: 907, column: 9, scope: !3060)
!3072 = !DILocation(line: 911, column: 7, scope: !3060)
!3073 = !DILocation(line: 913, column: 11, scope: !3002)
!3074 = !DILocation(line: 914, column: 5, scope: !3002)
!3075 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !498, file: !498, line: 925, type: !3076, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!101, !70, !107, !104}
!3078 = !{!3079, !3080, !3081}
!3079 = !DILocalVariable(name: "n", arg: 1, scope: !3075, file: !498, line: 925, type: !70)
!3080 = !DILocalVariable(name: "arg", arg: 2, scope: !3075, file: !498, line: 925, type: !107)
!3081 = !DILocalVariable(name: "argsize", arg: 3, scope: !3075, file: !498, line: 925, type: !104)
!3082 = !DILocation(line: 0, scope: !3075)
!3083 = !DILocation(line: 927, column: 10, scope: !3075)
!3084 = !DILocation(line: 927, column: 3, scope: !3075)
!3085 = distinct !DISubprogram(name: "quotearg", scope: !498, file: !498, line: 931, type: !1251, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3086)
!3086 = !{!3087}
!3087 = !DILocalVariable(name: "arg", arg: 1, scope: !3085, file: !498, line: 931, type: !107)
!3088 = !DILocation(line: 0, scope: !3085)
!3089 = !DILocation(line: 0, scope: !2979, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 933, column: 10, scope: !3085)
!3091 = !DILocation(line: 921, column: 10, scope: !2979, inlinedAt: !3090)
!3092 = !DILocation(line: 933, column: 3, scope: !3085)
!3093 = distinct !DISubprogram(name: "quotearg_mem", scope: !498, file: !498, line: 937, type: !3094, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!101, !107, !104}
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "arg", arg: 1, scope: !3093, file: !498, line: 937, type: !107)
!3098 = !DILocalVariable(name: "argsize", arg: 2, scope: !3093, file: !498, line: 937, type: !104)
!3099 = !DILocation(line: 0, scope: !3093)
!3100 = !DILocation(line: 0, scope: !3075, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 939, column: 10, scope: !3093)
!3102 = !DILocation(line: 927, column: 10, scope: !3075, inlinedAt: !3101)
!3103 = !DILocation(line: 939, column: 3, scope: !3093)
!3104 = distinct !DISubprogram(name: "quotearg_n_style", scope: !498, file: !498, line: 943, type: !3105, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!101, !70, !521, !107}
!3107 = !{!3108, !3109, !3110, !3111}
!3108 = !DILocalVariable(name: "n", arg: 1, scope: !3104, file: !498, line: 943, type: !70)
!3109 = !DILocalVariable(name: "s", arg: 2, scope: !3104, file: !498, line: 943, type: !521)
!3110 = !DILocalVariable(name: "arg", arg: 3, scope: !3104, file: !498, line: 943, type: !107)
!3111 = !DILocalVariable(name: "o", scope: !3104, file: !498, line: 945, type: !2211)
!3112 = distinct !DIAssignID()
!3113 = !DILocation(line: 0, scope: !3104)
!3114 = !DILocation(line: 945, column: 3, scope: !3104)
!3115 = !{!3116}
!3116 = distinct !{!3116, !3117, !"quoting_options_from_style: argument 0"}
!3117 = distinct !{!3117, !"quoting_options_from_style"}
!3118 = !DILocation(line: 945, column: 36, scope: !3104)
!3119 = !DILocalVariable(name: "style", arg: 1, scope: !3120, file: !498, line: 183, type: !521)
!3120 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !498, file: !498, line: 183, type: !3121, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!548, !521}
!3123 = !{!3119, !3124}
!3124 = !DILocalVariable(name: "o", scope: !3120, file: !498, line: 185, type: !548)
!3125 = !DILocation(line: 0, scope: !3120, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 945, column: 36, scope: !3104)
!3127 = !DILocation(line: 185, column: 26, scope: !3120, inlinedAt: !3126)
!3128 = distinct !DIAssignID()
!3129 = !DILocation(line: 186, column: 13, scope: !3130, inlinedAt: !3126)
!3130 = distinct !DILexicalBlock(scope: !3120, file: !498, line: 186, column: 7)
!3131 = !DILocation(line: 186, column: 7, scope: !3120, inlinedAt: !3126)
!3132 = !DILocation(line: 187, column: 5, scope: !3130, inlinedAt: !3126)
!3133 = !DILocation(line: 188, column: 11, scope: !3120, inlinedAt: !3126)
!3134 = distinct !DIAssignID()
!3135 = !DILocation(line: 946, column: 10, scope: !3104)
!3136 = !DILocation(line: 947, column: 1, scope: !3104)
!3137 = !DILocation(line: 946, column: 3, scope: !3104)
!3138 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !498, file: !498, line: 950, type: !3139, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!101, !70, !521, !107, !104}
!3141 = !{!3142, !3143, !3144, !3145, !3146}
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3138, file: !498, line: 950, type: !70)
!3143 = !DILocalVariable(name: "s", arg: 2, scope: !3138, file: !498, line: 950, type: !521)
!3144 = !DILocalVariable(name: "arg", arg: 3, scope: !3138, file: !498, line: 951, type: !107)
!3145 = !DILocalVariable(name: "argsize", arg: 4, scope: !3138, file: !498, line: 951, type: !104)
!3146 = !DILocalVariable(name: "o", scope: !3138, file: !498, line: 953, type: !2211)
!3147 = distinct !DIAssignID()
!3148 = !DILocation(line: 0, scope: !3138)
!3149 = !DILocation(line: 953, column: 3, scope: !3138)
!3150 = !{!3151}
!3151 = distinct !{!3151, !3152, !"quoting_options_from_style: argument 0"}
!3152 = distinct !{!3152, !"quoting_options_from_style"}
!3153 = !DILocation(line: 953, column: 36, scope: !3138)
!3154 = !DILocation(line: 0, scope: !3120, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 953, column: 36, scope: !3138)
!3156 = !DILocation(line: 185, column: 26, scope: !3120, inlinedAt: !3155)
!3157 = distinct !DIAssignID()
!3158 = !DILocation(line: 186, column: 13, scope: !3130, inlinedAt: !3155)
!3159 = !DILocation(line: 186, column: 7, scope: !3120, inlinedAt: !3155)
!3160 = !DILocation(line: 187, column: 5, scope: !3130, inlinedAt: !3155)
!3161 = !DILocation(line: 188, column: 11, scope: !3120, inlinedAt: !3155)
!3162 = distinct !DIAssignID()
!3163 = !DILocation(line: 954, column: 10, scope: !3138)
!3164 = !DILocation(line: 955, column: 1, scope: !3138)
!3165 = !DILocation(line: 954, column: 3, scope: !3138)
!3166 = distinct !DISubprogram(name: "quotearg_style", scope: !498, file: !498, line: 958, type: !3167, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!101, !521, !107}
!3169 = !{!3170, !3171}
!3170 = !DILocalVariable(name: "s", arg: 1, scope: !3166, file: !498, line: 958, type: !521)
!3171 = !DILocalVariable(name: "arg", arg: 2, scope: !3166, file: !498, line: 958, type: !107)
!3172 = distinct !DIAssignID()
!3173 = !DILocation(line: 0, scope: !3166)
!3174 = !DILocation(line: 0, scope: !3104, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 960, column: 10, scope: !3166)
!3176 = !DILocation(line: 945, column: 3, scope: !3104, inlinedAt: !3175)
!3177 = !{!3178}
!3178 = distinct !{!3178, !3179, !"quoting_options_from_style: argument 0"}
!3179 = distinct !{!3179, !"quoting_options_from_style"}
!3180 = !DILocation(line: 945, column: 36, scope: !3104, inlinedAt: !3175)
!3181 = !DILocation(line: 0, scope: !3120, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 945, column: 36, scope: !3104, inlinedAt: !3175)
!3183 = !DILocation(line: 185, column: 26, scope: !3120, inlinedAt: !3182)
!3184 = distinct !DIAssignID()
!3185 = !DILocation(line: 186, column: 13, scope: !3130, inlinedAt: !3182)
!3186 = !DILocation(line: 186, column: 7, scope: !3120, inlinedAt: !3182)
!3187 = !DILocation(line: 187, column: 5, scope: !3130, inlinedAt: !3182)
!3188 = !DILocation(line: 188, column: 11, scope: !3120, inlinedAt: !3182)
!3189 = distinct !DIAssignID()
!3190 = !DILocation(line: 946, column: 10, scope: !3104, inlinedAt: !3175)
!3191 = !DILocation(line: 947, column: 1, scope: !3104, inlinedAt: !3175)
!3192 = !DILocation(line: 960, column: 3, scope: !3166)
!3193 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !498, file: !498, line: 964, type: !3194, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!101, !521, !107, !104}
!3196 = !{!3197, !3198, !3199}
!3197 = !DILocalVariable(name: "s", arg: 1, scope: !3193, file: !498, line: 964, type: !521)
!3198 = !DILocalVariable(name: "arg", arg: 2, scope: !3193, file: !498, line: 964, type: !107)
!3199 = !DILocalVariable(name: "argsize", arg: 3, scope: !3193, file: !498, line: 964, type: !104)
!3200 = distinct !DIAssignID()
!3201 = !DILocation(line: 0, scope: !3193)
!3202 = !DILocation(line: 0, scope: !3138, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 966, column: 10, scope: !3193)
!3204 = !DILocation(line: 953, column: 3, scope: !3138, inlinedAt: !3203)
!3205 = !{!3206}
!3206 = distinct !{!3206, !3207, !"quoting_options_from_style: argument 0"}
!3207 = distinct !{!3207, !"quoting_options_from_style"}
!3208 = !DILocation(line: 953, column: 36, scope: !3138, inlinedAt: !3203)
!3209 = !DILocation(line: 0, scope: !3120, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 953, column: 36, scope: !3138, inlinedAt: !3203)
!3211 = !DILocation(line: 185, column: 26, scope: !3120, inlinedAt: !3210)
!3212 = distinct !DIAssignID()
!3213 = !DILocation(line: 186, column: 13, scope: !3130, inlinedAt: !3210)
!3214 = !DILocation(line: 186, column: 7, scope: !3120, inlinedAt: !3210)
!3215 = !DILocation(line: 187, column: 5, scope: !3130, inlinedAt: !3210)
!3216 = !DILocation(line: 188, column: 11, scope: !3120, inlinedAt: !3210)
!3217 = distinct !DIAssignID()
!3218 = !DILocation(line: 954, column: 10, scope: !3138, inlinedAt: !3203)
!3219 = !DILocation(line: 955, column: 1, scope: !3138, inlinedAt: !3203)
!3220 = !DILocation(line: 966, column: 3, scope: !3193)
!3221 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !498, file: !498, line: 970, type: !3222, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!101, !107, !104, !4}
!3224 = !{!3225, !3226, !3227, !3228}
!3225 = !DILocalVariable(name: "arg", arg: 1, scope: !3221, file: !498, line: 970, type: !107)
!3226 = !DILocalVariable(name: "argsize", arg: 2, scope: !3221, file: !498, line: 970, type: !104)
!3227 = !DILocalVariable(name: "ch", arg: 3, scope: !3221, file: !498, line: 970, type: !4)
!3228 = !DILocalVariable(name: "options", scope: !3221, file: !498, line: 972, type: !548)
!3229 = distinct !DIAssignID()
!3230 = !DILocation(line: 0, scope: !3221)
!3231 = !DILocation(line: 972, column: 3, scope: !3221)
!3232 = !DILocation(line: 973, column: 13, scope: !3221)
!3233 = !{i64 0, i64 4, !1128, i64 4, i64 4, !1128, i64 8, i64 32, !1137, i64 40, i64 8, !1066, i64 48, i64 8, !1066}
!3234 = distinct !DIAssignID()
!3235 = !DILocation(line: 0, scope: !2230, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 974, column: 3, scope: !3221)
!3237 = !DILocation(line: 147, column: 41, scope: !2230, inlinedAt: !3236)
!3238 = !DILocation(line: 147, column: 62, scope: !2230, inlinedAt: !3236)
!3239 = !DILocation(line: 147, column: 57, scope: !2230, inlinedAt: !3236)
!3240 = !DILocation(line: 148, column: 15, scope: !2230, inlinedAt: !3236)
!3241 = !DILocation(line: 149, column: 21, scope: !2230, inlinedAt: !3236)
!3242 = !DILocation(line: 149, column: 24, scope: !2230, inlinedAt: !3236)
!3243 = !DILocation(line: 150, column: 19, scope: !2230, inlinedAt: !3236)
!3244 = !DILocation(line: 150, column: 24, scope: !2230, inlinedAt: !3236)
!3245 = !DILocation(line: 150, column: 6, scope: !2230, inlinedAt: !3236)
!3246 = !DILocation(line: 975, column: 10, scope: !3221)
!3247 = !DILocation(line: 976, column: 1, scope: !3221)
!3248 = !DILocation(line: 975, column: 3, scope: !3221)
!3249 = distinct !DISubprogram(name: "quotearg_char", scope: !498, file: !498, line: 979, type: !3250, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!101, !107, !4}
!3252 = !{!3253, !3254}
!3253 = !DILocalVariable(name: "arg", arg: 1, scope: !3249, file: !498, line: 979, type: !107)
!3254 = !DILocalVariable(name: "ch", arg: 2, scope: !3249, file: !498, line: 979, type: !4)
!3255 = distinct !DIAssignID()
!3256 = !DILocation(line: 0, scope: !3249)
!3257 = !DILocation(line: 0, scope: !3221, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 981, column: 10, scope: !3249)
!3259 = !DILocation(line: 972, column: 3, scope: !3221, inlinedAt: !3258)
!3260 = !DILocation(line: 973, column: 13, scope: !3221, inlinedAt: !3258)
!3261 = distinct !DIAssignID()
!3262 = !DILocation(line: 0, scope: !2230, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 974, column: 3, scope: !3221, inlinedAt: !3258)
!3264 = !DILocation(line: 147, column: 41, scope: !2230, inlinedAt: !3263)
!3265 = !DILocation(line: 147, column: 62, scope: !2230, inlinedAt: !3263)
!3266 = !DILocation(line: 147, column: 57, scope: !2230, inlinedAt: !3263)
!3267 = !DILocation(line: 148, column: 15, scope: !2230, inlinedAt: !3263)
!3268 = !DILocation(line: 149, column: 21, scope: !2230, inlinedAt: !3263)
!3269 = !DILocation(line: 149, column: 24, scope: !2230, inlinedAt: !3263)
!3270 = !DILocation(line: 150, column: 19, scope: !2230, inlinedAt: !3263)
!3271 = !DILocation(line: 150, column: 24, scope: !2230, inlinedAt: !3263)
!3272 = !DILocation(line: 150, column: 6, scope: !2230, inlinedAt: !3263)
!3273 = !DILocation(line: 975, column: 10, scope: !3221, inlinedAt: !3258)
!3274 = !DILocation(line: 976, column: 1, scope: !3221, inlinedAt: !3258)
!3275 = !DILocation(line: 981, column: 3, scope: !3249)
!3276 = distinct !DISubprogram(name: "quotearg_colon", scope: !498, file: !498, line: 985, type: !1251, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3277)
!3277 = !{!3278}
!3278 = !DILocalVariable(name: "arg", arg: 1, scope: !3276, file: !498, line: 985, type: !107)
!3279 = distinct !DIAssignID()
!3280 = !DILocation(line: 0, scope: !3276)
!3281 = !DILocation(line: 0, scope: !3249, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 987, column: 10, scope: !3276)
!3283 = !DILocation(line: 0, scope: !3221, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 981, column: 10, scope: !3249, inlinedAt: !3282)
!3285 = !DILocation(line: 972, column: 3, scope: !3221, inlinedAt: !3284)
!3286 = !DILocation(line: 973, column: 13, scope: !3221, inlinedAt: !3284)
!3287 = distinct !DIAssignID()
!3288 = !DILocation(line: 0, scope: !2230, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 974, column: 3, scope: !3221, inlinedAt: !3284)
!3290 = !DILocation(line: 147, column: 57, scope: !2230, inlinedAt: !3289)
!3291 = !DILocation(line: 149, column: 21, scope: !2230, inlinedAt: !3289)
!3292 = !DILocation(line: 150, column: 6, scope: !2230, inlinedAt: !3289)
!3293 = !DILocation(line: 975, column: 10, scope: !3221, inlinedAt: !3284)
!3294 = !DILocation(line: 976, column: 1, scope: !3221, inlinedAt: !3284)
!3295 = !DILocation(line: 987, column: 3, scope: !3276)
!3296 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !498, file: !498, line: 991, type: !3094, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3297)
!3297 = !{!3298, !3299}
!3298 = !DILocalVariable(name: "arg", arg: 1, scope: !3296, file: !498, line: 991, type: !107)
!3299 = !DILocalVariable(name: "argsize", arg: 2, scope: !3296, file: !498, line: 991, type: !104)
!3300 = distinct !DIAssignID()
!3301 = !DILocation(line: 0, scope: !3296)
!3302 = !DILocation(line: 0, scope: !3221, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 993, column: 10, scope: !3296)
!3304 = !DILocation(line: 972, column: 3, scope: !3221, inlinedAt: !3303)
!3305 = !DILocation(line: 973, column: 13, scope: !3221, inlinedAt: !3303)
!3306 = distinct !DIAssignID()
!3307 = !DILocation(line: 0, scope: !2230, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 974, column: 3, scope: !3221, inlinedAt: !3303)
!3309 = !DILocation(line: 147, column: 57, scope: !2230, inlinedAt: !3308)
!3310 = !DILocation(line: 149, column: 21, scope: !2230, inlinedAt: !3308)
!3311 = !DILocation(line: 150, column: 6, scope: !2230, inlinedAt: !3308)
!3312 = !DILocation(line: 975, column: 10, scope: !3221, inlinedAt: !3303)
!3313 = !DILocation(line: 976, column: 1, scope: !3221, inlinedAt: !3303)
!3314 = !DILocation(line: 993, column: 3, scope: !3296)
!3315 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !498, file: !498, line: 997, type: !3105, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3316)
!3316 = !{!3317, !3318, !3319, !3320}
!3317 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !498, line: 997, type: !70)
!3318 = !DILocalVariable(name: "s", arg: 2, scope: !3315, file: !498, line: 997, type: !521)
!3319 = !DILocalVariable(name: "arg", arg: 3, scope: !3315, file: !498, line: 997, type: !107)
!3320 = !DILocalVariable(name: "options", scope: !3315, file: !498, line: 999, type: !548)
!3321 = distinct !DIAssignID()
!3322 = !DILocation(line: 0, scope: !3315)
!3323 = !DILocation(line: 185, column: 26, scope: !3120, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 1000, column: 13, scope: !3315)
!3325 = !DILocation(line: 999, column: 3, scope: !3315)
!3326 = !DILocation(line: 0, scope: !3120, inlinedAt: !3324)
!3327 = !DILocation(line: 186, column: 13, scope: !3130, inlinedAt: !3324)
!3328 = !DILocation(line: 186, column: 7, scope: !3120, inlinedAt: !3324)
!3329 = !DILocation(line: 187, column: 5, scope: !3130, inlinedAt: !3324)
!3330 = !{!3331}
!3331 = distinct !{!3331, !3332, !"quoting_options_from_style: argument 0"}
!3332 = distinct !{!3332, !"quoting_options_from_style"}
!3333 = !DILocation(line: 1000, column: 13, scope: !3315)
!3334 = distinct !DIAssignID()
!3335 = distinct !DIAssignID()
!3336 = !DILocation(line: 0, scope: !2230, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 1001, column: 3, scope: !3315)
!3338 = !DILocation(line: 147, column: 57, scope: !2230, inlinedAt: !3337)
!3339 = !DILocation(line: 149, column: 21, scope: !2230, inlinedAt: !3337)
!3340 = !DILocation(line: 150, column: 6, scope: !2230, inlinedAt: !3337)
!3341 = distinct !DIAssignID()
!3342 = !DILocation(line: 1002, column: 10, scope: !3315)
!3343 = !DILocation(line: 1003, column: 1, scope: !3315)
!3344 = !DILocation(line: 1002, column: 3, scope: !3315)
!3345 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !498, file: !498, line: 1006, type: !3346, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!101, !70, !107, !107, !107}
!3348 = !{!3349, !3350, !3351, !3352}
!3349 = !DILocalVariable(name: "n", arg: 1, scope: !3345, file: !498, line: 1006, type: !70)
!3350 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3345, file: !498, line: 1006, type: !107)
!3351 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3345, file: !498, line: 1007, type: !107)
!3352 = !DILocalVariable(name: "arg", arg: 4, scope: !3345, file: !498, line: 1007, type: !107)
!3353 = distinct !DIAssignID()
!3354 = !DILocation(line: 0, scope: !3345)
!3355 = !DILocalVariable(name: "o", scope: !3356, file: !498, line: 1018, type: !548)
!3356 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !498, file: !498, line: 1014, type: !3357, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!101, !70, !107, !107, !107, !104}
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3355}
!3360 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !498, line: 1014, type: !70)
!3361 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3356, file: !498, line: 1014, type: !107)
!3362 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3356, file: !498, line: 1015, type: !107)
!3363 = !DILocalVariable(name: "arg", arg: 4, scope: !3356, file: !498, line: 1016, type: !107)
!3364 = !DILocalVariable(name: "argsize", arg: 5, scope: !3356, file: !498, line: 1016, type: !104)
!3365 = !DILocation(line: 0, scope: !3356, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 1009, column: 10, scope: !3345)
!3367 = !DILocation(line: 1018, column: 3, scope: !3356, inlinedAt: !3366)
!3368 = !DILocation(line: 1018, column: 30, scope: !3356, inlinedAt: !3366)
!3369 = distinct !DIAssignID()
!3370 = distinct !DIAssignID()
!3371 = !DILocation(line: 0, scope: !2270, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1019, column: 3, scope: !3356, inlinedAt: !3366)
!3373 = !DILocation(line: 174, column: 12, scope: !2270, inlinedAt: !3372)
!3374 = distinct !DIAssignID()
!3375 = !DILocation(line: 175, column: 8, scope: !2283, inlinedAt: !3372)
!3376 = !DILocation(line: 175, column: 19, scope: !2283, inlinedAt: !3372)
!3377 = !DILocation(line: 176, column: 5, scope: !2283, inlinedAt: !3372)
!3378 = !DILocation(line: 177, column: 6, scope: !2270, inlinedAt: !3372)
!3379 = !DILocation(line: 177, column: 17, scope: !2270, inlinedAt: !3372)
!3380 = distinct !DIAssignID()
!3381 = !DILocation(line: 178, column: 6, scope: !2270, inlinedAt: !3372)
!3382 = !DILocation(line: 178, column: 18, scope: !2270, inlinedAt: !3372)
!3383 = distinct !DIAssignID()
!3384 = !DILocation(line: 1020, column: 10, scope: !3356, inlinedAt: !3366)
!3385 = !DILocation(line: 1021, column: 1, scope: !3356, inlinedAt: !3366)
!3386 = !DILocation(line: 1009, column: 3, scope: !3345)
!3387 = distinct !DIAssignID()
!3388 = !DILocation(line: 0, scope: !3356)
!3389 = !DILocation(line: 1018, column: 3, scope: !3356)
!3390 = !DILocation(line: 1018, column: 30, scope: !3356)
!3391 = distinct !DIAssignID()
!3392 = distinct !DIAssignID()
!3393 = !DILocation(line: 0, scope: !2270, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 1019, column: 3, scope: !3356)
!3395 = !DILocation(line: 174, column: 12, scope: !2270, inlinedAt: !3394)
!3396 = distinct !DIAssignID()
!3397 = !DILocation(line: 175, column: 8, scope: !2283, inlinedAt: !3394)
!3398 = !DILocation(line: 175, column: 19, scope: !2283, inlinedAt: !3394)
!3399 = !DILocation(line: 176, column: 5, scope: !2283, inlinedAt: !3394)
!3400 = !DILocation(line: 177, column: 6, scope: !2270, inlinedAt: !3394)
!3401 = !DILocation(line: 177, column: 17, scope: !2270, inlinedAt: !3394)
!3402 = distinct !DIAssignID()
!3403 = !DILocation(line: 178, column: 6, scope: !2270, inlinedAt: !3394)
!3404 = !DILocation(line: 178, column: 18, scope: !2270, inlinedAt: !3394)
!3405 = distinct !DIAssignID()
!3406 = !DILocation(line: 1020, column: 10, scope: !3356)
!3407 = !DILocation(line: 1021, column: 1, scope: !3356)
!3408 = !DILocation(line: 1020, column: 3, scope: !3356)
!3409 = distinct !DISubprogram(name: "quotearg_custom", scope: !498, file: !498, line: 1024, type: !3410, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!101, !107, !107, !107}
!3412 = !{!3413, !3414, !3415}
!3413 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3409, file: !498, line: 1024, type: !107)
!3414 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3409, file: !498, line: 1024, type: !107)
!3415 = !DILocalVariable(name: "arg", arg: 3, scope: !3409, file: !498, line: 1025, type: !107)
!3416 = distinct !DIAssignID()
!3417 = !DILocation(line: 0, scope: !3409)
!3418 = !DILocation(line: 0, scope: !3345, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 1027, column: 10, scope: !3409)
!3420 = !DILocation(line: 0, scope: !3356, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 1009, column: 10, scope: !3345, inlinedAt: !3419)
!3422 = !DILocation(line: 1018, column: 3, scope: !3356, inlinedAt: !3421)
!3423 = !DILocation(line: 1018, column: 30, scope: !3356, inlinedAt: !3421)
!3424 = distinct !DIAssignID()
!3425 = distinct !DIAssignID()
!3426 = !DILocation(line: 0, scope: !2270, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 1019, column: 3, scope: !3356, inlinedAt: !3421)
!3428 = !DILocation(line: 174, column: 12, scope: !2270, inlinedAt: !3427)
!3429 = distinct !DIAssignID()
!3430 = !DILocation(line: 175, column: 8, scope: !2283, inlinedAt: !3427)
!3431 = !DILocation(line: 175, column: 19, scope: !2283, inlinedAt: !3427)
!3432 = !DILocation(line: 176, column: 5, scope: !2283, inlinedAt: !3427)
!3433 = !DILocation(line: 177, column: 6, scope: !2270, inlinedAt: !3427)
!3434 = !DILocation(line: 177, column: 17, scope: !2270, inlinedAt: !3427)
!3435 = distinct !DIAssignID()
!3436 = !DILocation(line: 178, column: 6, scope: !2270, inlinedAt: !3427)
!3437 = !DILocation(line: 178, column: 18, scope: !2270, inlinedAt: !3427)
!3438 = distinct !DIAssignID()
!3439 = !DILocation(line: 1020, column: 10, scope: !3356, inlinedAt: !3421)
!3440 = !DILocation(line: 1021, column: 1, scope: !3356, inlinedAt: !3421)
!3441 = !DILocation(line: 1027, column: 3, scope: !3409)
!3442 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !498, file: !498, line: 1031, type: !3443, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!101, !107, !107, !107, !104}
!3445 = !{!3446, !3447, !3448, !3449}
!3446 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3442, file: !498, line: 1031, type: !107)
!3447 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3442, file: !498, line: 1031, type: !107)
!3448 = !DILocalVariable(name: "arg", arg: 3, scope: !3442, file: !498, line: 1032, type: !107)
!3449 = !DILocalVariable(name: "argsize", arg: 4, scope: !3442, file: !498, line: 1032, type: !104)
!3450 = distinct !DIAssignID()
!3451 = !DILocation(line: 0, scope: !3442)
!3452 = !DILocation(line: 0, scope: !3356, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 1034, column: 10, scope: !3442)
!3454 = !DILocation(line: 1018, column: 3, scope: !3356, inlinedAt: !3453)
!3455 = !DILocation(line: 1018, column: 30, scope: !3356, inlinedAt: !3453)
!3456 = distinct !DIAssignID()
!3457 = distinct !DIAssignID()
!3458 = !DILocation(line: 0, scope: !2270, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 1019, column: 3, scope: !3356, inlinedAt: !3453)
!3460 = !DILocation(line: 174, column: 12, scope: !2270, inlinedAt: !3459)
!3461 = distinct !DIAssignID()
!3462 = !DILocation(line: 175, column: 8, scope: !2283, inlinedAt: !3459)
!3463 = !DILocation(line: 175, column: 19, scope: !2283, inlinedAt: !3459)
!3464 = !DILocation(line: 176, column: 5, scope: !2283, inlinedAt: !3459)
!3465 = !DILocation(line: 177, column: 6, scope: !2270, inlinedAt: !3459)
!3466 = !DILocation(line: 177, column: 17, scope: !2270, inlinedAt: !3459)
!3467 = distinct !DIAssignID()
!3468 = !DILocation(line: 178, column: 6, scope: !2270, inlinedAt: !3459)
!3469 = !DILocation(line: 178, column: 18, scope: !2270, inlinedAt: !3459)
!3470 = distinct !DIAssignID()
!3471 = !DILocation(line: 1020, column: 10, scope: !3356, inlinedAt: !3453)
!3472 = !DILocation(line: 1021, column: 1, scope: !3356, inlinedAt: !3453)
!3473 = !DILocation(line: 1034, column: 3, scope: !3442)
!3474 = distinct !DISubprogram(name: "quote_n_mem", scope: !498, file: !498, line: 1049, type: !3475, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!107, !70, !107, !104}
!3477 = !{!3478, !3479, !3480}
!3478 = !DILocalVariable(name: "n", arg: 1, scope: !3474, file: !498, line: 1049, type: !70)
!3479 = !DILocalVariable(name: "arg", arg: 2, scope: !3474, file: !498, line: 1049, type: !107)
!3480 = !DILocalVariable(name: "argsize", arg: 3, scope: !3474, file: !498, line: 1049, type: !104)
!3481 = !DILocation(line: 0, scope: !3474)
!3482 = !DILocation(line: 1051, column: 10, scope: !3474)
!3483 = !DILocation(line: 1051, column: 3, scope: !3474)
!3484 = distinct !DISubprogram(name: "quote_mem", scope: !498, file: !498, line: 1055, type: !3485, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!107, !107, !104}
!3487 = !{!3488, !3489}
!3488 = !DILocalVariable(name: "arg", arg: 1, scope: !3484, file: !498, line: 1055, type: !107)
!3489 = !DILocalVariable(name: "argsize", arg: 2, scope: !3484, file: !498, line: 1055, type: !104)
!3490 = !DILocation(line: 0, scope: !3484)
!3491 = !DILocation(line: 0, scope: !3474, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 1057, column: 10, scope: !3484)
!3493 = !DILocation(line: 1051, column: 10, scope: !3474, inlinedAt: !3492)
!3494 = !DILocation(line: 1057, column: 3, scope: !3484)
!3495 = distinct !DISubprogram(name: "quote_n", scope: !498, file: !498, line: 1061, type: !3496, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!107, !70, !107}
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "n", arg: 1, scope: !3495, file: !498, line: 1061, type: !70)
!3500 = !DILocalVariable(name: "arg", arg: 2, scope: !3495, file: !498, line: 1061, type: !107)
!3501 = !DILocation(line: 0, scope: !3495)
!3502 = !DILocation(line: 0, scope: !3474, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1063, column: 10, scope: !3495)
!3504 = !DILocation(line: 1051, column: 10, scope: !3474, inlinedAt: !3503)
!3505 = !DILocation(line: 1063, column: 3, scope: !3495)
!3506 = distinct !DISubprogram(name: "quote", scope: !498, file: !498, line: 1067, type: !3507, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!107, !107}
!3509 = !{!3510}
!3510 = !DILocalVariable(name: "arg", arg: 1, scope: !3506, file: !498, line: 1067, type: !107)
!3511 = !DILocation(line: 0, scope: !3506)
!3512 = !DILocation(line: 0, scope: !3495, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 1069, column: 10, scope: !3506)
!3514 = !DILocation(line: 0, scope: !3474, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 1063, column: 10, scope: !3495, inlinedAt: !3513)
!3516 = !DILocation(line: 1051, column: 10, scope: !3474, inlinedAt: !3515)
!3517 = !DILocation(line: 1069, column: 3, scope: !3506)
!3518 = distinct !DISubprogram(name: "version_etc_arn", scope: !611, file: !611, line: 61, type: !3519, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3556)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !3521, !107, !107, !107, !3555, !104}
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3523, file: !165, line: 51, baseType: !70, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3523, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3523, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3523, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3523, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3523, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3523, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3523, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3523, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3523, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3523, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3523, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3523, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3523, file: !165, line: 70, baseType: !3539, size: 64, offset: 832)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3523, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3523, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3523, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3523, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3523, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3523, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3523, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3523, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3523, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3523, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3523, file: !165, line: 93, baseType: !3539, size: 64, offset: 1344)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3523, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3523, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3523, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3523, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562}
!3557 = !DILocalVariable(name: "stream", arg: 1, scope: !3518, file: !611, line: 61, type: !3521)
!3558 = !DILocalVariable(name: "command_name", arg: 2, scope: !3518, file: !611, line: 62, type: !107)
!3559 = !DILocalVariable(name: "package", arg: 3, scope: !3518, file: !611, line: 62, type: !107)
!3560 = !DILocalVariable(name: "version", arg: 4, scope: !3518, file: !611, line: 63, type: !107)
!3561 = !DILocalVariable(name: "authors", arg: 5, scope: !3518, file: !611, line: 64, type: !3555)
!3562 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3518, file: !611, line: 64, type: !104)
!3563 = !DILocation(line: 0, scope: !3518)
!3564 = !DILocation(line: 66, column: 7, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3518, file: !611, line: 66, column: 7)
!3566 = !DILocation(line: 66, column: 7, scope: !3518)
!3567 = !DILocation(line: 67, column: 5, scope: !3565)
!3568 = !DILocation(line: 69, column: 5, scope: !3565)
!3569 = !DILocation(line: 83, column: 3, scope: !3518)
!3570 = !DILocation(line: 85, column: 3, scope: !3518)
!3571 = !DILocation(line: 88, column: 3, scope: !3518)
!3572 = !DILocation(line: 95, column: 3, scope: !3518)
!3573 = !DILocation(line: 97, column: 3, scope: !3518)
!3574 = !DILocation(line: 105, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3518, file: !611, line: 98, column: 5)
!3576 = !DILocation(line: 106, column: 7, scope: !3575)
!3577 = !DILocation(line: 109, column: 7, scope: !3575)
!3578 = !DILocation(line: 110, column: 7, scope: !3575)
!3579 = !DILocation(line: 113, column: 7, scope: !3575)
!3580 = !DILocation(line: 115, column: 7, scope: !3575)
!3581 = !DILocation(line: 120, column: 7, scope: !3575)
!3582 = !DILocation(line: 122, column: 7, scope: !3575)
!3583 = !DILocation(line: 127, column: 7, scope: !3575)
!3584 = !DILocation(line: 129, column: 7, scope: !3575)
!3585 = !DILocation(line: 134, column: 7, scope: !3575)
!3586 = !DILocation(line: 137, column: 7, scope: !3575)
!3587 = !DILocation(line: 142, column: 7, scope: !3575)
!3588 = !DILocation(line: 145, column: 7, scope: !3575)
!3589 = !DILocation(line: 150, column: 7, scope: !3575)
!3590 = !DILocation(line: 154, column: 7, scope: !3575)
!3591 = !DILocation(line: 159, column: 7, scope: !3575)
!3592 = !DILocation(line: 163, column: 7, scope: !3575)
!3593 = !DILocation(line: 170, column: 7, scope: !3575)
!3594 = !DILocation(line: 174, column: 7, scope: !3575)
!3595 = !DILocation(line: 176, column: 1, scope: !3518)
!3596 = distinct !DISubprogram(name: "version_etc_ar", scope: !611, file: !611, line: 183, type: !3597, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !3521, !107, !107, !107, !3555}
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3605}
!3600 = !DILocalVariable(name: "stream", arg: 1, scope: !3596, file: !611, line: 183, type: !3521)
!3601 = !DILocalVariable(name: "command_name", arg: 2, scope: !3596, file: !611, line: 184, type: !107)
!3602 = !DILocalVariable(name: "package", arg: 3, scope: !3596, file: !611, line: 184, type: !107)
!3603 = !DILocalVariable(name: "version", arg: 4, scope: !3596, file: !611, line: 185, type: !107)
!3604 = !DILocalVariable(name: "authors", arg: 5, scope: !3596, file: !611, line: 185, type: !3555)
!3605 = !DILocalVariable(name: "n_authors", scope: !3596, file: !611, line: 187, type: !104)
!3606 = !DILocation(line: 0, scope: !3596)
!3607 = !DILocation(line: 189, column: 8, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3596, file: !611, line: 189, column: 3)
!3609 = !DILocation(line: 189, scope: !3608)
!3610 = !DILocation(line: 189, column: 23, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3608, file: !611, line: 189, column: 3)
!3612 = !DILocation(line: 189, column: 3, scope: !3608)
!3613 = !DILocation(line: 189, column: 52, scope: !3611)
!3614 = distinct !{!3614, !3612, !3615, !1175}
!3615 = !DILocation(line: 190, column: 5, scope: !3608)
!3616 = !DILocation(line: 191, column: 3, scope: !3596)
!3617 = !DILocation(line: 192, column: 1, scope: !3596)
!3618 = distinct !DISubprogram(name: "version_etc_va", scope: !611, file: !611, line: 199, type: !3619, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3631)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3521, !107, !107, !107, !3621}
!3621 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !382, line: 52, baseType: !3622)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !384, line: 12, baseType: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !611, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3624, file: !611, line: 192, baseType: !102, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3624, file: !611, line: 192, baseType: !102, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3624, file: !611, line: 192, baseType: !102, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3624, file: !611, line: 192, baseType: !70, size: 32, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3624, file: !611, line: 192, baseType: !70, size: 32, offset: 224)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638}
!3632 = !DILocalVariable(name: "stream", arg: 1, scope: !3618, file: !611, line: 199, type: !3521)
!3633 = !DILocalVariable(name: "command_name", arg: 2, scope: !3618, file: !611, line: 200, type: !107)
!3634 = !DILocalVariable(name: "package", arg: 3, scope: !3618, file: !611, line: 200, type: !107)
!3635 = !DILocalVariable(name: "version", arg: 4, scope: !3618, file: !611, line: 201, type: !107)
!3636 = !DILocalVariable(name: "authors", arg: 5, scope: !3618, file: !611, line: 201, type: !3621)
!3637 = !DILocalVariable(name: "n_authors", scope: !3618, file: !611, line: 203, type: !104)
!3638 = !DILocalVariable(name: "authtab", scope: !3618, file: !611, line: 204, type: !3639)
!3639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 640, elements: !50)
!3640 = distinct !DIAssignID()
!3641 = !DILocation(line: 0, scope: !3618)
!3642 = !DILocation(line: 204, column: 3, scope: !3618)
!3643 = !DILocation(line: 208, column: 35, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !611, line: 206, column: 3)
!3645 = distinct !DILexicalBlock(scope: !3618, file: !611, line: 206, column: 3)
!3646 = !DILocation(line: 208, column: 33, scope: !3644)
!3647 = !DILocation(line: 208, column: 67, scope: !3644)
!3648 = !DILocation(line: 206, column: 3, scope: !3645)
!3649 = !DILocation(line: 208, column: 14, scope: !3644)
!3650 = !DILocation(line: 0, scope: !3645)
!3651 = !DILocation(line: 211, column: 3, scope: !3618)
!3652 = !DILocation(line: 213, column: 1, scope: !3618)
!3653 = distinct !DISubprogram(name: "version_etc", scope: !611, file: !611, line: 230, type: !3654, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !3521, !107, !107, !107, null}
!3656 = !{!3657, !3658, !3659, !3660, !3661}
!3657 = !DILocalVariable(name: "stream", arg: 1, scope: !3653, file: !611, line: 230, type: !3521)
!3658 = !DILocalVariable(name: "command_name", arg: 2, scope: !3653, file: !611, line: 231, type: !107)
!3659 = !DILocalVariable(name: "package", arg: 3, scope: !3653, file: !611, line: 231, type: !107)
!3660 = !DILocalVariable(name: "version", arg: 4, scope: !3653, file: !611, line: 232, type: !107)
!3661 = !DILocalVariable(name: "authors", scope: !3653, file: !611, line: 234, type: !3621)
!3662 = distinct !DIAssignID()
!3663 = !DILocation(line: 0, scope: !3653)
!3664 = !DILocation(line: 234, column: 3, scope: !3653)
!3665 = !DILocation(line: 235, column: 3, scope: !3653)
!3666 = !DILocation(line: 236, column: 3, scope: !3653)
!3667 = !DILocation(line: 237, column: 3, scope: !3653)
!3668 = !DILocation(line: 238, column: 1, scope: !3653)
!3669 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !611, file: !611, line: 241, type: !422, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961)
!3670 = !DILocation(line: 243, column: 3, scope: !3669)
!3671 = !DILocation(line: 248, column: 3, scope: !3669)
!3672 = !DILocation(line: 254, column: 3, scope: !3669)
!3673 = !DILocation(line: 259, column: 3, scope: !3669)
!3674 = !DILocation(line: 261, column: 1, scope: !3669)
!3675 = distinct !DISubprogram(name: "xnrealloc", scope: !3676, file: !3676, line: 147, type: !3677, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3679)
!3676 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!102, !102, !104, !104}
!3679 = !{!3680, !3681, !3682}
!3680 = !DILocalVariable(name: "p", arg: 1, scope: !3675, file: !3676, line: 147, type: !102)
!3681 = !DILocalVariable(name: "n", arg: 2, scope: !3675, file: !3676, line: 147, type: !104)
!3682 = !DILocalVariable(name: "s", arg: 3, scope: !3675, file: !3676, line: 147, type: !104)
!3683 = !DILocation(line: 0, scope: !3675)
!3684 = !DILocalVariable(name: "p", arg: 1, scope: !3685, file: !969, line: 83, type: !102)
!3685 = distinct !DISubprogram(name: "xreallocarray", scope: !969, file: !969, line: 83, type: !3677, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3686)
!3686 = !{!3684, !3687, !3688}
!3687 = !DILocalVariable(name: "n", arg: 2, scope: !3685, file: !969, line: 83, type: !104)
!3688 = !DILocalVariable(name: "s", arg: 3, scope: !3685, file: !969, line: 83, type: !104)
!3689 = !DILocation(line: 0, scope: !3685, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 149, column: 10, scope: !3675)
!3691 = !DILocation(line: 85, column: 25, scope: !3685, inlinedAt: !3690)
!3692 = !DILocalVariable(name: "p", arg: 1, scope: !3693, file: !969, line: 37, type: !102)
!3693 = distinct !DISubprogram(name: "check_nonnull", scope: !969, file: !969, line: 37, type: !3694, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!102, !102}
!3696 = !{!3692}
!3697 = !DILocation(line: 0, scope: !3693, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 85, column: 10, scope: !3685, inlinedAt: !3690)
!3699 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3698)
!3700 = distinct !DILexicalBlock(scope: !3693, file: !969, line: 39, column: 7)
!3701 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3698)
!3702 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3698)
!3703 = !DILocation(line: 149, column: 3, scope: !3675)
!3704 = !DILocation(line: 0, scope: !3685)
!3705 = !DILocation(line: 85, column: 25, scope: !3685)
!3706 = !DILocation(line: 0, scope: !3693, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 85, column: 10, scope: !3685)
!3708 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3707)
!3709 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3707)
!3710 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3707)
!3711 = !DILocation(line: 85, column: 3, scope: !3685)
!3712 = distinct !DISubprogram(name: "xmalloc", scope: !969, file: !969, line: 47, type: !3713, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!102, !104}
!3715 = !{!3716}
!3716 = !DILocalVariable(name: "s", arg: 1, scope: !3712, file: !969, line: 47, type: !104)
!3717 = !DILocation(line: 0, scope: !3712)
!3718 = !DILocation(line: 49, column: 25, scope: !3712)
!3719 = !DILocation(line: 0, scope: !3693, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 49, column: 10, scope: !3712)
!3721 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3720)
!3722 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3720)
!3723 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3720)
!3724 = !DILocation(line: 49, column: 3, scope: !3712)
!3725 = !DISubprogram(name: "malloc", scope: !1249, file: !1249, line: 540, type: !3713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3726 = distinct !DISubprogram(name: "ximalloc", scope: !969, file: !969, line: 53, type: !3727, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!102, !988}
!3729 = !{!3730}
!3730 = !DILocalVariable(name: "s", arg: 1, scope: !3726, file: !969, line: 53, type: !988)
!3731 = !DILocation(line: 0, scope: !3726)
!3732 = !DILocalVariable(name: "s", arg: 1, scope: !3733, file: !3734, line: 55, type: !988)
!3733 = distinct !DISubprogram(name: "imalloc", scope: !3734, file: !3734, line: 55, type: !3727, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3735)
!3734 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3735 = !{!3732}
!3736 = !DILocation(line: 0, scope: !3733, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 55, column: 25, scope: !3726)
!3738 = !DILocation(line: 57, column: 26, scope: !3733, inlinedAt: !3737)
!3739 = !DILocation(line: 0, scope: !3693, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 55, column: 10, scope: !3726)
!3741 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3740)
!3742 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3740)
!3743 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3740)
!3744 = !DILocation(line: 55, column: 3, scope: !3726)
!3745 = distinct !DISubprogram(name: "xcharalloc", scope: !969, file: !969, line: 59, type: !3746, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!101, !104}
!3748 = !{!3749}
!3749 = !DILocalVariable(name: "n", arg: 1, scope: !3745, file: !969, line: 59, type: !104)
!3750 = !DILocation(line: 0, scope: !3745)
!3751 = !DILocation(line: 0, scope: !3712, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 61, column: 10, scope: !3745)
!3753 = !DILocation(line: 49, column: 25, scope: !3712, inlinedAt: !3752)
!3754 = !DILocation(line: 0, scope: !3693, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 49, column: 10, scope: !3712, inlinedAt: !3752)
!3756 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3755)
!3757 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3755)
!3758 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3755)
!3759 = !DILocation(line: 61, column: 3, scope: !3745)
!3760 = distinct !DISubprogram(name: "xrealloc", scope: !969, file: !969, line: 68, type: !3761, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!102, !102, !104}
!3763 = !{!3764, !3765}
!3764 = !DILocalVariable(name: "p", arg: 1, scope: !3760, file: !969, line: 68, type: !102)
!3765 = !DILocalVariable(name: "s", arg: 2, scope: !3760, file: !969, line: 68, type: !104)
!3766 = !DILocation(line: 0, scope: !3760)
!3767 = !DILocalVariable(name: "ptr", arg: 1, scope: !3768, file: !3769, line: 2057, type: !102)
!3768 = distinct !DISubprogram(name: "rpl_realloc", scope: !3769, file: !3769, line: 2057, type: !3761, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3770)
!3769 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3770 = !{!3767, !3771}
!3771 = !DILocalVariable(name: "size", arg: 2, scope: !3768, file: !3769, line: 2057, type: !104)
!3772 = !DILocation(line: 0, scope: !3768, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 70, column: 25, scope: !3760)
!3774 = !DILocation(line: 2059, column: 24, scope: !3768, inlinedAt: !3773)
!3775 = !DILocation(line: 2059, column: 10, scope: !3768, inlinedAt: !3773)
!3776 = !DILocation(line: 0, scope: !3693, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 70, column: 10, scope: !3760)
!3778 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3777)
!3779 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3777)
!3780 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3777)
!3781 = !DILocation(line: 70, column: 3, scope: !3760)
!3782 = !DISubprogram(name: "realloc", scope: !1249, file: !1249, line: 551, type: !3761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3783 = distinct !DISubprogram(name: "xirealloc", scope: !969, file: !969, line: 74, type: !3784, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!102, !102, !988}
!3786 = !{!3787, !3788}
!3787 = !DILocalVariable(name: "p", arg: 1, scope: !3783, file: !969, line: 74, type: !102)
!3788 = !DILocalVariable(name: "s", arg: 2, scope: !3783, file: !969, line: 74, type: !988)
!3789 = !DILocation(line: 0, scope: !3783)
!3790 = !DILocalVariable(name: "p", arg: 1, scope: !3791, file: !3734, line: 66, type: !102)
!3791 = distinct !DISubprogram(name: "irealloc", scope: !3734, file: !3734, line: 66, type: !3784, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3792)
!3792 = !{!3790, !3793}
!3793 = !DILocalVariable(name: "s", arg: 2, scope: !3791, file: !3734, line: 66, type: !988)
!3794 = !DILocation(line: 0, scope: !3791, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 76, column: 25, scope: !3783)
!3796 = !DILocation(line: 0, scope: !3768, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 68, column: 26, scope: !3791, inlinedAt: !3795)
!3798 = !DILocation(line: 2059, column: 24, scope: !3768, inlinedAt: !3797)
!3799 = !DILocation(line: 2059, column: 10, scope: !3768, inlinedAt: !3797)
!3800 = !DILocation(line: 0, scope: !3693, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 76, column: 10, scope: !3783)
!3802 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3801)
!3803 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3801)
!3804 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3801)
!3805 = !DILocation(line: 76, column: 3, scope: !3783)
!3806 = distinct !DISubprogram(name: "xireallocarray", scope: !969, file: !969, line: 89, type: !3807, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!102, !102, !988, !988}
!3809 = !{!3810, !3811, !3812}
!3810 = !DILocalVariable(name: "p", arg: 1, scope: !3806, file: !969, line: 89, type: !102)
!3811 = !DILocalVariable(name: "n", arg: 2, scope: !3806, file: !969, line: 89, type: !988)
!3812 = !DILocalVariable(name: "s", arg: 3, scope: !3806, file: !969, line: 89, type: !988)
!3813 = !DILocation(line: 0, scope: !3806)
!3814 = !DILocalVariable(name: "p", arg: 1, scope: !3815, file: !3734, line: 98, type: !102)
!3815 = distinct !DISubprogram(name: "ireallocarray", scope: !3734, file: !3734, line: 98, type: !3807, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3816)
!3816 = !{!3814, !3817, !3818}
!3817 = !DILocalVariable(name: "n", arg: 2, scope: !3815, file: !3734, line: 98, type: !988)
!3818 = !DILocalVariable(name: "s", arg: 3, scope: !3815, file: !3734, line: 98, type: !988)
!3819 = !DILocation(line: 0, scope: !3815, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 91, column: 25, scope: !3806)
!3821 = !DILocation(line: 101, column: 13, scope: !3815, inlinedAt: !3820)
!3822 = !DILocation(line: 0, scope: !3693, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 91, column: 10, scope: !3806)
!3824 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3823)
!3825 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3823)
!3826 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3823)
!3827 = !DILocation(line: 91, column: 3, scope: !3806)
!3828 = distinct !DISubprogram(name: "xnmalloc", scope: !969, file: !969, line: 98, type: !3829, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!102, !104, !104}
!3831 = !{!3832, !3833}
!3832 = !DILocalVariable(name: "n", arg: 1, scope: !3828, file: !969, line: 98, type: !104)
!3833 = !DILocalVariable(name: "s", arg: 2, scope: !3828, file: !969, line: 98, type: !104)
!3834 = !DILocation(line: 0, scope: !3828)
!3835 = !DILocation(line: 0, scope: !3685, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 100, column: 10, scope: !3828)
!3837 = !DILocation(line: 85, column: 25, scope: !3685, inlinedAt: !3836)
!3838 = !DILocation(line: 0, scope: !3693, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 85, column: 10, scope: !3685, inlinedAt: !3836)
!3840 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3839)
!3841 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3839)
!3842 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3839)
!3843 = !DILocation(line: 100, column: 3, scope: !3828)
!3844 = distinct !DISubprogram(name: "xinmalloc", scope: !969, file: !969, line: 104, type: !3845, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!102, !988, !988}
!3847 = !{!3848, !3849}
!3848 = !DILocalVariable(name: "n", arg: 1, scope: !3844, file: !969, line: 104, type: !988)
!3849 = !DILocalVariable(name: "s", arg: 2, scope: !3844, file: !969, line: 104, type: !988)
!3850 = !DILocation(line: 0, scope: !3844)
!3851 = !DILocation(line: 0, scope: !3806, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 106, column: 10, scope: !3844)
!3853 = !DILocation(line: 0, scope: !3815, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 91, column: 25, scope: !3806, inlinedAt: !3852)
!3855 = !DILocation(line: 101, column: 13, scope: !3815, inlinedAt: !3854)
!3856 = !DILocation(line: 0, scope: !3693, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 91, column: 10, scope: !3806, inlinedAt: !3852)
!3858 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3857)
!3859 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3857)
!3860 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3857)
!3861 = !DILocation(line: 106, column: 3, scope: !3844)
!3862 = distinct !DISubprogram(name: "x2realloc", scope: !969, file: !969, line: 116, type: !3863, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!102, !102, !975}
!3865 = !{!3866, !3867}
!3866 = !DILocalVariable(name: "p", arg: 1, scope: !3862, file: !969, line: 116, type: !102)
!3867 = !DILocalVariable(name: "ps", arg: 2, scope: !3862, file: !969, line: 116, type: !975)
!3868 = !DILocation(line: 0, scope: !3862)
!3869 = !DILocation(line: 0, scope: !972, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 118, column: 10, scope: !3862)
!3871 = !DILocation(line: 178, column: 14, scope: !972, inlinedAt: !3870)
!3872 = !DILocation(line: 180, column: 9, scope: !3873, inlinedAt: !3870)
!3873 = distinct !DILexicalBlock(scope: !972, file: !969, line: 180, column: 7)
!3874 = !DILocation(line: 180, column: 7, scope: !972, inlinedAt: !3870)
!3875 = !DILocation(line: 182, column: 13, scope: !3876, inlinedAt: !3870)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !969, line: 182, column: 11)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !969, line: 181, column: 5)
!3878 = !DILocation(line: 182, column: 11, scope: !3877, inlinedAt: !3870)
!3879 = !DILocation(line: 197, column: 11, scope: !3880, inlinedAt: !3870)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !969, line: 197, column: 11)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !969, line: 195, column: 5)
!3882 = !DILocation(line: 197, column: 11, scope: !3881, inlinedAt: !3870)
!3883 = !DILocation(line: 198, column: 9, scope: !3880, inlinedAt: !3870)
!3884 = !DILocation(line: 0, scope: !3685, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 201, column: 7, scope: !972, inlinedAt: !3870)
!3886 = !DILocation(line: 85, column: 25, scope: !3685, inlinedAt: !3885)
!3887 = !DILocation(line: 0, scope: !3693, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 85, column: 10, scope: !3685, inlinedAt: !3885)
!3889 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3888)
!3890 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3888)
!3891 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3888)
!3892 = !DILocation(line: 202, column: 7, scope: !972, inlinedAt: !3870)
!3893 = !DILocation(line: 118, column: 3, scope: !3862)
!3894 = !DILocation(line: 0, scope: !972)
!3895 = !DILocation(line: 178, column: 14, scope: !972)
!3896 = !DILocation(line: 180, column: 9, scope: !3873)
!3897 = !DILocation(line: 180, column: 7, scope: !972)
!3898 = !DILocation(line: 182, column: 13, scope: !3876)
!3899 = !DILocation(line: 182, column: 11, scope: !3877)
!3900 = !DILocation(line: 190, column: 30, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3876, file: !969, line: 183, column: 9)
!3902 = !DILocation(line: 191, column: 16, scope: !3901)
!3903 = !DILocation(line: 191, column: 13, scope: !3901)
!3904 = !DILocation(line: 192, column: 9, scope: !3901)
!3905 = !DILocation(line: 197, column: 11, scope: !3880)
!3906 = !DILocation(line: 197, column: 11, scope: !3881)
!3907 = !DILocation(line: 198, column: 9, scope: !3880)
!3908 = !DILocation(line: 0, scope: !3685, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 201, column: 7, scope: !972)
!3910 = !DILocation(line: 85, column: 25, scope: !3685, inlinedAt: !3909)
!3911 = !DILocation(line: 0, scope: !3693, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 85, column: 10, scope: !3685, inlinedAt: !3909)
!3913 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3912)
!3914 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3912)
!3915 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3912)
!3916 = !DILocation(line: 202, column: 7, scope: !972)
!3917 = !DILocation(line: 203, column: 3, scope: !972)
!3918 = !DILocation(line: 0, scope: !984)
!3919 = !DILocation(line: 230, column: 14, scope: !984)
!3920 = !DILocation(line: 238, column: 7, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !984, file: !969, line: 238, column: 7)
!3922 = !DILocation(line: 238, column: 7, scope: !984)
!3923 = !DILocation(line: 240, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !984, file: !969, line: 240, column: 7)
!3925 = !DILocation(line: 240, column: 18, scope: !3924)
!3926 = !DILocation(line: 253, column: 8, scope: !984)
!3927 = !DILocation(line: 256, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !984, file: !969, line: 256, column: 7)
!3929 = !DILocation(line: 256, column: 7, scope: !984)
!3930 = !DILocation(line: 258, column: 27, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !969, line: 257, column: 5)
!3932 = !DILocation(line: 259, column: 32, scope: !3931)
!3933 = !DILocation(line: 260, column: 5, scope: !3931)
!3934 = !DILocation(line: 262, column: 9, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !984, file: !969, line: 262, column: 7)
!3936 = !DILocation(line: 262, column: 7, scope: !984)
!3937 = !DILocation(line: 263, column: 9, scope: !3935)
!3938 = !DILocation(line: 263, column: 5, scope: !3935)
!3939 = !DILocation(line: 264, column: 9, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !984, file: !969, line: 264, column: 7)
!3941 = !DILocation(line: 264, column: 14, scope: !3940)
!3942 = !DILocation(line: 265, column: 7, scope: !3940)
!3943 = !DILocation(line: 265, column: 11, scope: !3940)
!3944 = !DILocation(line: 266, column: 11, scope: !3940)
!3945 = !DILocation(line: 267, column: 14, scope: !3940)
!3946 = !DILocation(line: 264, column: 7, scope: !984)
!3947 = !DILocation(line: 268, column: 5, scope: !3940)
!3948 = !DILocation(line: 0, scope: !3760, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 269, column: 8, scope: !984)
!3950 = !DILocation(line: 0, scope: !3768, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 70, column: 25, scope: !3760, inlinedAt: !3949)
!3952 = !DILocation(line: 2059, column: 24, scope: !3768, inlinedAt: !3951)
!3953 = !DILocation(line: 2059, column: 10, scope: !3768, inlinedAt: !3951)
!3954 = !DILocation(line: 0, scope: !3693, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 70, column: 10, scope: !3760, inlinedAt: !3949)
!3956 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3955)
!3957 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3955)
!3958 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3955)
!3959 = !DILocation(line: 270, column: 7, scope: !984)
!3960 = !DILocation(line: 271, column: 3, scope: !984)
!3961 = distinct !DISubprogram(name: "xzalloc", scope: !969, file: !969, line: 279, type: !3713, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3962)
!3962 = !{!3963}
!3963 = !DILocalVariable(name: "s", arg: 1, scope: !3961, file: !969, line: 279, type: !104)
!3964 = !DILocation(line: 0, scope: !3961)
!3965 = !DILocalVariable(name: "n", arg: 1, scope: !3966, file: !969, line: 294, type: !104)
!3966 = distinct !DISubprogram(name: "xcalloc", scope: !969, file: !969, line: 294, type: !3829, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3967)
!3967 = !{!3965, !3968}
!3968 = !DILocalVariable(name: "s", arg: 2, scope: !3966, file: !969, line: 294, type: !104)
!3969 = !DILocation(line: 0, scope: !3966, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 281, column: 10, scope: !3961)
!3971 = !DILocation(line: 296, column: 25, scope: !3966, inlinedAt: !3970)
!3972 = !DILocation(line: 0, scope: !3693, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 296, column: 10, scope: !3966, inlinedAt: !3970)
!3974 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3973)
!3975 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3973)
!3976 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3973)
!3977 = !DILocation(line: 281, column: 3, scope: !3961)
!3978 = !DISubprogram(name: "calloc", scope: !1249, file: !1249, line: 543, type: !3829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3979 = !DILocation(line: 0, scope: !3966)
!3980 = !DILocation(line: 296, column: 25, scope: !3966)
!3981 = !DILocation(line: 0, scope: !3693, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 296, column: 10, scope: !3966)
!3983 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !3982)
!3984 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !3982)
!3985 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !3982)
!3986 = !DILocation(line: 296, column: 3, scope: !3966)
!3987 = distinct !DISubprogram(name: "xizalloc", scope: !969, file: !969, line: 285, type: !3727, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3988)
!3988 = !{!3989}
!3989 = !DILocalVariable(name: "s", arg: 1, scope: !3987, file: !969, line: 285, type: !988)
!3990 = !DILocation(line: 0, scope: !3987)
!3991 = !DILocalVariable(name: "n", arg: 1, scope: !3992, file: !969, line: 300, type: !988)
!3992 = distinct !DISubprogram(name: "xicalloc", scope: !969, file: !969, line: 300, type: !3845, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3993)
!3993 = !{!3991, !3994}
!3994 = !DILocalVariable(name: "s", arg: 2, scope: !3992, file: !969, line: 300, type: !988)
!3995 = !DILocation(line: 0, scope: !3992, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 287, column: 10, scope: !3987)
!3997 = !DILocalVariable(name: "n", arg: 1, scope: !3998, file: !3734, line: 77, type: !988)
!3998 = distinct !DISubprogram(name: "icalloc", scope: !3734, file: !3734, line: 77, type: !3845, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !3999)
!3999 = !{!3997, !4000}
!4000 = !DILocalVariable(name: "s", arg: 2, scope: !3998, file: !3734, line: 77, type: !988)
!4001 = !DILocation(line: 0, scope: !3998, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 302, column: 25, scope: !3992, inlinedAt: !3996)
!4003 = !DILocation(line: 91, column: 10, scope: !3998, inlinedAt: !4002)
!4004 = !DILocation(line: 0, scope: !3693, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 302, column: 10, scope: !3992, inlinedAt: !3996)
!4006 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !4005)
!4007 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !4005)
!4008 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !4005)
!4009 = !DILocation(line: 287, column: 3, scope: !3987)
!4010 = !DILocation(line: 0, scope: !3992)
!4011 = !DILocation(line: 0, scope: !3998, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 302, column: 25, scope: !3992)
!4013 = !DILocation(line: 91, column: 10, scope: !3998, inlinedAt: !4012)
!4014 = !DILocation(line: 0, scope: !3693, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 302, column: 10, scope: !3992)
!4016 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !4015)
!4017 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !4015)
!4018 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !4015)
!4019 = !DILocation(line: 302, column: 3, scope: !3992)
!4020 = distinct !DISubprogram(name: "xmemdup", scope: !969, file: !969, line: 310, type: !4021, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !4023)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!102, !1273, !104}
!4023 = !{!4024, !4025}
!4024 = !DILocalVariable(name: "p", arg: 1, scope: !4020, file: !969, line: 310, type: !1273)
!4025 = !DILocalVariable(name: "s", arg: 2, scope: !4020, file: !969, line: 310, type: !104)
!4026 = !DILocation(line: 0, scope: !4020)
!4027 = !DILocation(line: 0, scope: !3712, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 312, column: 18, scope: !4020)
!4029 = !DILocation(line: 49, column: 25, scope: !3712, inlinedAt: !4028)
!4030 = !DILocation(line: 0, scope: !3693, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 49, column: 10, scope: !3712, inlinedAt: !4028)
!4032 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !4031)
!4033 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !4031)
!4034 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !4031)
!4035 = !DILocalVariable(name: "__dest", arg: 1, scope: !4036, file: !2173, line: 26, type: !4039)
!4036 = distinct !DISubprogram(name: "memcpy", scope: !2173, file: !2173, line: 26, type: !4037, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !4040)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!102, !4039, !1272, !104}
!4039 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!4040 = !{!4035, !4041, !4042}
!4041 = !DILocalVariable(name: "__src", arg: 2, scope: !4036, file: !2173, line: 26, type: !1272)
!4042 = !DILocalVariable(name: "__len", arg: 3, scope: !4036, file: !2173, line: 26, type: !104)
!4043 = !DILocation(line: 0, scope: !4036, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 312, column: 10, scope: !4020)
!4045 = !DILocation(line: 29, column: 10, scope: !4036, inlinedAt: !4044)
!4046 = !DILocation(line: 312, column: 3, scope: !4020)
!4047 = distinct !DISubprogram(name: "ximemdup", scope: !969, file: !969, line: 316, type: !4048, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!102, !1273, !988}
!4050 = !{!4051, !4052}
!4051 = !DILocalVariable(name: "p", arg: 1, scope: !4047, file: !969, line: 316, type: !1273)
!4052 = !DILocalVariable(name: "s", arg: 2, scope: !4047, file: !969, line: 316, type: !988)
!4053 = !DILocation(line: 0, scope: !4047)
!4054 = !DILocation(line: 0, scope: !3726, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 318, column: 18, scope: !4047)
!4056 = !DILocation(line: 0, scope: !3733, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 55, column: 25, scope: !3726, inlinedAt: !4055)
!4058 = !DILocation(line: 57, column: 26, scope: !3733, inlinedAt: !4057)
!4059 = !DILocation(line: 0, scope: !3693, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 55, column: 10, scope: !3726, inlinedAt: !4055)
!4061 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !4060)
!4062 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !4060)
!4063 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !4060)
!4064 = !DILocation(line: 0, scope: !4036, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 318, column: 10, scope: !4047)
!4066 = !DILocation(line: 29, column: 10, scope: !4036, inlinedAt: !4065)
!4067 = !DILocation(line: 318, column: 3, scope: !4047)
!4068 = distinct !DISubprogram(name: "ximemdup0", scope: !969, file: !969, line: 325, type: !4069, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!101, !1273, !988}
!4071 = !{!4072, !4073, !4074}
!4072 = !DILocalVariable(name: "p", arg: 1, scope: !4068, file: !969, line: 325, type: !1273)
!4073 = !DILocalVariable(name: "s", arg: 2, scope: !4068, file: !969, line: 325, type: !988)
!4074 = !DILocalVariable(name: "result", scope: !4068, file: !969, line: 327, type: !101)
!4075 = !DILocation(line: 0, scope: !4068)
!4076 = !DILocation(line: 327, column: 30, scope: !4068)
!4077 = !DILocation(line: 0, scope: !3726, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 327, column: 18, scope: !4068)
!4079 = !DILocation(line: 0, scope: !3733, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 55, column: 25, scope: !3726, inlinedAt: !4078)
!4081 = !DILocation(line: 57, column: 26, scope: !3733, inlinedAt: !4080)
!4082 = !DILocation(line: 0, scope: !3693, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 55, column: 10, scope: !3726, inlinedAt: !4078)
!4084 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !4083)
!4085 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !4083)
!4086 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !4083)
!4087 = !DILocation(line: 328, column: 3, scope: !4068)
!4088 = !DILocation(line: 328, column: 13, scope: !4068)
!4089 = !DILocation(line: 0, scope: !4036, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 329, column: 10, scope: !4068)
!4091 = !DILocation(line: 29, column: 10, scope: !4036, inlinedAt: !4090)
!4092 = !DILocation(line: 329, column: 3, scope: !4068)
!4093 = distinct !DISubprogram(name: "xstrdup", scope: !969, file: !969, line: 335, type: !1251, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !4094)
!4094 = !{!4095}
!4095 = !DILocalVariable(name: "string", arg: 1, scope: !4093, file: !969, line: 335, type: !107)
!4096 = !DILocation(line: 0, scope: !4093)
!4097 = !DILocation(line: 337, column: 27, scope: !4093)
!4098 = !DILocation(line: 337, column: 43, scope: !4093)
!4099 = !DILocation(line: 0, scope: !4020, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 337, column: 10, scope: !4093)
!4101 = !DILocation(line: 0, scope: !3712, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 312, column: 18, scope: !4020, inlinedAt: !4100)
!4103 = !DILocation(line: 49, column: 25, scope: !3712, inlinedAt: !4102)
!4104 = !DILocation(line: 0, scope: !3693, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 49, column: 10, scope: !3712, inlinedAt: !4102)
!4106 = !DILocation(line: 39, column: 8, scope: !3700, inlinedAt: !4105)
!4107 = !DILocation(line: 39, column: 7, scope: !3693, inlinedAt: !4105)
!4108 = !DILocation(line: 40, column: 5, scope: !3700, inlinedAt: !4105)
!4109 = !DILocation(line: 0, scope: !4036, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 312, column: 10, scope: !4020, inlinedAt: !4100)
!4111 = !DILocation(line: 29, column: 10, scope: !4036, inlinedAt: !4110)
!4112 = !DILocation(line: 337, column: 3, scope: !4093)
!4113 = distinct !DISubprogram(name: "xalloc_die", scope: !701, file: !701, line: 32, type: !422, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !4114)
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "__errstatus", scope: !4116, file: !701, line: 34, type: !4117)
!4116 = distinct !DILexicalBlock(scope: !4113, file: !701, line: 34, column: 3)
!4117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4118 = !DILocation(line: 34, column: 3, scope: !4116)
!4119 = !DILocation(line: 0, scope: !4116)
!4120 = !DILocation(line: 40, column: 3, scope: !4113)
!4121 = distinct !DISubprogram(name: "xnumtoumax", scope: !708, file: !708, line: 42, type: !4122, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!1025, !107, !70, !1025, !1025, !107, !107, !70, !70}
!4124 = !{!4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4137, !4138, !4139}
!4125 = !DILocalVariable(name: "n_str", arg: 1, scope: !4121, file: !708, line: 42, type: !107)
!4126 = !DILocalVariable(name: "base", arg: 2, scope: !4121, file: !708, line: 42, type: !70)
!4127 = !DILocalVariable(name: "min", arg: 3, scope: !4121, file: !708, line: 42, type: !1025)
!4128 = !DILocalVariable(name: "max", arg: 4, scope: !4121, file: !708, line: 42, type: !1025)
!4129 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4121, file: !708, line: 43, type: !107)
!4130 = !DILocalVariable(name: "err", arg: 6, scope: !4121, file: !708, line: 43, type: !107)
!4131 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4121, file: !708, line: 43, type: !70)
!4132 = !DILocalVariable(name: "flags", arg: 8, scope: !4121, file: !708, line: 44, type: !70)
!4133 = !DILocalVariable(name: "tnum", scope: !4121, file: !708, line: 46, type: !1025)
!4134 = !DILocalVariable(name: "r", scope: !4121, file: !708, line: 46, type: !1025)
!4135 = !DILocalVariable(name: "s_err", scope: !4121, file: !708, line: 47, type: !4136)
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1009, line: 43, baseType: !1008)
!4137 = !DILocalVariable(name: "overflow_errno", scope: !4121, file: !708, line: 50, type: !70)
!4138 = !DILocalVariable(name: "e", scope: !4121, file: !708, line: 75, type: !70)
!4139 = !DILocalVariable(name: "__errstatus", scope: !4140, file: !708, line: 80, type: !4117)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !708, line: 80, column: 5)
!4141 = distinct !DILexicalBlock(scope: !4121, file: !708, line: 77, column: 7)
!4142 = distinct !DIAssignID()
!4143 = !DILocation(line: 0, scope: !4121)
!4144 = !DILocation(line: 46, column: 3, scope: !4121)
!4145 = !DILocation(line: 47, column: 24, scope: !4121)
!4146 = !DILocation(line: 52, column: 13, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4121, file: !708, line: 52, column: 7)
!4148 = !DILocation(line: 52, column: 7, scope: !4121)
!4149 = !DILocation(line: 54, column: 11, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !708, line: 54, column: 11)
!4151 = distinct !DILexicalBlock(scope: !4147, file: !708, line: 53, column: 5)
!4152 = !DILocation(line: 54, column: 16, scope: !4150)
!4153 = !DILocation(line: 54, column: 11, scope: !4151)
!4154 = !DILocation(line: 57, column: 34, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4150, file: !708, line: 55, column: 9)
!4156 = !DILocation(line: 57, column: 28, scope: !4155)
!4157 = !DILocation(line: 58, column: 15, scope: !4155)
!4158 = !DILocation(line: 60, column: 9, scope: !4155)
!4159 = !DILocation(line: 61, column: 20, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4150, file: !708, line: 61, column: 16)
!4161 = !DILocation(line: 61, column: 16, scope: !4150)
!4162 = !DILocation(line: 64, column: 34, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !708, line: 62, column: 9)
!4164 = !DILocation(line: 64, column: 28, scope: !4163)
!4165 = !DILocation(line: 65, column: 15, scope: !4163)
!4166 = !DILocation(line: 67, column: 9, scope: !4163)
!4167 = !DILocation(line: 75, column: 17, scope: !4121)
!4168 = !DILocation(line: 75, column: 11, scope: !4121)
!4169 = !DILocation(line: 78, column: 10, scope: !4141)
!4170 = !DILocation(line: 77, column: 16, scope: !4141)
!4171 = !DILocation(line: 79, column: 14, scope: !4141)
!4172 = !DILocation(line: 80, column: 5, scope: !4141)
!4173 = !DILocation(line: 82, column: 3, scope: !4121)
!4174 = !DILocation(line: 82, column: 9, scope: !4121)
!4175 = !DILocation(line: 84, column: 1, scope: !4121)
!4176 = !DILocation(line: 83, column: 3, scope: !4121)
!4177 = distinct !DISubprogram(name: "xdectoumax", scope: !708, file: !708, line: 92, type: !4178, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!1025, !107, !1025, !1025, !107, !107, !70}
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186}
!4181 = !DILocalVariable(name: "n_str", arg: 1, scope: !4177, file: !708, line: 92, type: !107)
!4182 = !DILocalVariable(name: "min", arg: 2, scope: !4177, file: !708, line: 92, type: !1025)
!4183 = !DILocalVariable(name: "max", arg: 3, scope: !4177, file: !708, line: 92, type: !1025)
!4184 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4177, file: !708, line: 93, type: !107)
!4185 = !DILocalVariable(name: "err", arg: 5, scope: !4177, file: !708, line: 93, type: !107)
!4186 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4177, file: !708, line: 93, type: !70)
!4187 = distinct !DIAssignID()
!4188 = !DILocation(line: 0, scope: !4177)
!4189 = !DILocation(line: 0, scope: !4121, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 95, column: 10, scope: !4177)
!4191 = !DILocation(line: 46, column: 3, scope: !4121, inlinedAt: !4190)
!4192 = !DILocation(line: 47, column: 24, scope: !4121, inlinedAt: !4190)
!4193 = !DILocation(line: 0, scope: !4150, inlinedAt: !4190)
!4194 = !DILocation(line: 52, column: 13, scope: !4147, inlinedAt: !4190)
!4195 = !DILocation(line: 52, column: 7, scope: !4121, inlinedAt: !4190)
!4196 = !DILocation(line: 54, column: 11, scope: !4150, inlinedAt: !4190)
!4197 = !DILocation(line: 54, column: 16, scope: !4150, inlinedAt: !4190)
!4198 = !DILocation(line: 54, column: 11, scope: !4151, inlinedAt: !4190)
!4199 = !DILocation(line: 75, column: 17, scope: !4121, inlinedAt: !4190)
!4200 = !DILocation(line: 75, column: 11, scope: !4121, inlinedAt: !4190)
!4201 = !DILocation(line: 77, column: 16, scope: !4141, inlinedAt: !4190)
!4202 = !DILocation(line: 78, column: 10, scope: !4141, inlinedAt: !4190)
!4203 = !DILocation(line: 80, column: 5, scope: !4141, inlinedAt: !4190)
!4204 = !DILocation(line: 82, column: 3, scope: !4121, inlinedAt: !4190)
!4205 = !DILocation(line: 82, column: 9, scope: !4121, inlinedAt: !4190)
!4206 = !DILocation(line: 84, column: 1, scope: !4121, inlinedAt: !4190)
!4207 = !DILocation(line: 95, column: 3, scope: !4177)
!4208 = distinct !DISubprogram(name: "xstrtoumax", scope: !4209, file: !4209, line: 71, type: !4210, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !4214)
!4209 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!4212, !107, !1278, !70, !4213, !107}
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1023, line: 43, baseType: !1022)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4225, !4226, !4227, !4228, !4231, !4232}
!4215 = !DILocalVariable(name: "nptr", arg: 1, scope: !4208, file: !4209, line: 71, type: !107)
!4216 = !DILocalVariable(name: "endptr", arg: 2, scope: !4208, file: !4209, line: 71, type: !1278)
!4217 = !DILocalVariable(name: "base", arg: 3, scope: !4208, file: !4209, line: 71, type: !70)
!4218 = !DILocalVariable(name: "val", arg: 4, scope: !4208, file: !4209, line: 72, type: !4213)
!4219 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4208, file: !4209, line: 72, type: !107)
!4220 = !DILocalVariable(name: "t_ptr", scope: !4208, file: !4209, line: 74, type: !101)
!4221 = !DILocalVariable(name: "p", scope: !4208, file: !4209, line: 75, type: !1278)
!4222 = !DILocalVariable(name: "q", scope: !4223, file: !4209, line: 79, type: !107)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !4209, line: 78, column: 5)
!4224 = distinct !DILexicalBlock(scope: !4208, file: !4209, line: 77, column: 7)
!4225 = !DILocalVariable(name: "ch", scope: !4223, file: !4209, line: 80, type: !109)
!4226 = !DILocalVariable(name: "tmp", scope: !4208, file: !4209, line: 91, type: !1025)
!4227 = !DILocalVariable(name: "err", scope: !4208, file: !4209, line: 92, type: !4212)
!4228 = !DILocalVariable(name: "xbase", scope: !4229, file: !4209, line: 126, type: !70)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !4209, line: 119, column: 5)
!4230 = distinct !DILexicalBlock(scope: !4208, file: !4209, line: 118, column: 7)
!4231 = !DILocalVariable(name: "suffixes", scope: !4229, file: !4209, line: 127, type: !70)
!4232 = !DILocalVariable(name: "overflow", scope: !4229, file: !4209, line: 156, type: !4212)
!4233 = distinct !DIAssignID()
!4234 = !DILocation(line: 0, scope: !4208)
!4235 = !DILocation(line: 74, column: 3, scope: !4208)
!4236 = !DILocation(line: 75, column: 14, scope: !4208)
!4237 = !DILocation(line: 0, scope: !4223)
!4238 = !DILocation(line: 81, column: 7, scope: !4223)
!4239 = !DILocation(line: 81, column: 14, scope: !4223)
!4240 = !DILocation(line: 82, column: 15, scope: !4223)
!4241 = distinct !{!4241, !4238, !4242, !1175}
!4242 = !DILocation(line: 82, column: 17, scope: !4223)
!4243 = !DILocation(line: 83, column: 14, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4223, file: !4209, line: 83, column: 11)
!4245 = !DILocation(line: 83, column: 11, scope: !4223)
!4246 = !DILocation(line: 85, column: 14, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !4209, line: 84, column: 9)
!4248 = !DILocation(line: 90, column: 3, scope: !4208)
!4249 = !DILocation(line: 90, column: 9, scope: !4208)
!4250 = !DILocation(line: 91, column: 20, scope: !4208)
!4251 = !DILocation(line: 94, column: 7, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4208, file: !4209, line: 94, column: 7)
!4253 = !DILocation(line: 94, column: 10, scope: !4252)
!4254 = !DILocation(line: 94, column: 7, scope: !4208)
!4255 = !DILocation(line: 98, column: 14, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !4209, line: 98, column: 11)
!4257 = distinct !DILexicalBlock(scope: !4252, file: !4209, line: 95, column: 5)
!4258 = !DILocation(line: 98, column: 29, scope: !4256)
!4259 = !DILocation(line: 98, column: 32, scope: !4256)
!4260 = !DILocation(line: 98, column: 38, scope: !4256)
!4261 = !DILocation(line: 98, column: 41, scope: !4256)
!4262 = !DILocation(line: 98, column: 11, scope: !4257)
!4263 = !DILocation(line: 102, column: 12, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4252, file: !4209, line: 102, column: 12)
!4265 = !DILocation(line: 102, column: 12, scope: !4252)
!4266 = !DILocation(line: 107, column: 5, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4264, file: !4209, line: 103, column: 5)
!4268 = !DILocation(line: 112, column: 8, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4208, file: !4209, line: 112, column: 7)
!4270 = !DILocation(line: 112, column: 7, scope: !4208)
!4271 = !DILocation(line: 114, column: 12, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4269, file: !4209, line: 113, column: 5)
!4273 = !DILocation(line: 115, column: 7, scope: !4272)
!4274 = !DILocation(line: 118, column: 7, scope: !4230)
!4275 = !DILocation(line: 118, column: 11, scope: !4230)
!4276 = !DILocation(line: 118, column: 7, scope: !4208)
!4277 = !DILocation(line: 120, column: 12, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4229, file: !4209, line: 120, column: 11)
!4279 = !DILocation(line: 120, column: 11, scope: !4229)
!4280 = !DILocation(line: 122, column: 16, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4278, file: !4209, line: 121, column: 9)
!4282 = !DILocation(line: 123, column: 22, scope: !4281)
!4283 = !DILocation(line: 123, column: 11, scope: !4281)
!4284 = !DILocation(line: 0, scope: !4229)
!4285 = !DILocation(line: 128, column: 7, scope: !4229)
!4286 = !DILocation(line: 140, column: 15, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !4209, line: 140, column: 15)
!4288 = distinct !DILexicalBlock(scope: !4229, file: !4209, line: 129, column: 9)
!4289 = !DILocation(line: 140, column: 15, scope: !4288)
!4290 = !DILocation(line: 141, column: 21, scope: !4287)
!4291 = !DILocation(line: 141, column: 13, scope: !4287)
!4292 = !DILocation(line: 144, column: 21, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !4209, line: 144, column: 21)
!4294 = distinct !DILexicalBlock(scope: !4287, file: !4209, line: 142, column: 15)
!4295 = !DILocation(line: 144, column: 29, scope: !4293)
!4296 = !DILocation(line: 144, column: 21, scope: !4294)
!4297 = !DILocation(line: 152, column: 17, scope: !4294)
!4298 = !DILocation(line: 157, column: 7, scope: !4229)
!4299 = !DILocalVariable(name: "err", scope: !4300, file: !4209, line: 64, type: !4212)
!4300 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4209, file: !4209, line: 62, type: !4301, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!4212, !4213, !70, !70}
!4303 = !{!4304, !4305, !4306, !4299}
!4304 = !DILocalVariable(name: "x", arg: 1, scope: !4300, file: !4209, line: 62, type: !4213)
!4305 = !DILocalVariable(name: "base", arg: 2, scope: !4300, file: !4209, line: 62, type: !70)
!4306 = !DILocalVariable(name: "power", arg: 3, scope: !4300, file: !4209, line: 62, type: !70)
!4307 = !DILocation(line: 0, scope: !4300, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 219, column: 22, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4229, file: !4209, line: 158, column: 9)
!4310 = !DILocalVariable(name: "x", arg: 1, scope: !4311, file: !4209, line: 47, type: !4213)
!4311 = distinct !DISubprogram(name: "bkm_scale", scope: !4209, file: !4209, line: 47, type: !4312, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !4314)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!4212, !4213, !70}
!4314 = !{!4310, !4315, !4316}
!4315 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4311, file: !4209, line: 47, type: !70)
!4316 = !DILocalVariable(name: "scaled", scope: !4311, file: !4209, line: 49, type: !1025)
!4317 = !DILocation(line: 0, scope: !4311, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4308)
!4319 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4318)
!4320 = distinct !DILexicalBlock(scope: !4311, file: !4209, line: 50, column: 7)
!4321 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4318)
!4322 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4308)
!4323 = !DILocation(line: 227, column: 11, scope: !4229)
!4324 = !DILocation(line: 0, scope: !4300, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 215, column: 22, scope: !4309)
!4326 = !DILocation(line: 0, scope: !4311, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4325)
!4328 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4327)
!4329 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4327)
!4330 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4325)
!4331 = !DILocation(line: 0, scope: !4300, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 202, column: 22, scope: !4309)
!4333 = !DILocation(line: 0, scope: !4311, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4332)
!4335 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4334)
!4336 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4334)
!4337 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4332)
!4338 = !DILocation(line: 0, scope: !4300, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 198, column: 22, scope: !4309)
!4340 = !DILocation(line: 0, scope: !4311, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4339)
!4342 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4341)
!4343 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4341)
!4344 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4339)
!4345 = !DILocation(line: 0, scope: !4300, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 194, column: 22, scope: !4309)
!4347 = !DILocation(line: 0, scope: !4311, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4346)
!4349 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4348)
!4350 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4348)
!4351 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4346)
!4352 = !DILocation(line: 0, scope: !4300, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 175, column: 22, scope: !4309)
!4354 = !DILocation(line: 0, scope: !4311, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4353)
!4356 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4355)
!4357 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4355)
!4358 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4353)
!4359 = !DILocation(line: 0, scope: !4311, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 160, column: 22, scope: !4309)
!4361 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4360)
!4362 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4360)
!4363 = !DILocation(line: 161, column: 11, scope: !4309)
!4364 = !DILocation(line: 0, scope: !4311, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 167, column: 22, scope: !4309)
!4366 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4365)
!4367 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4365)
!4368 = !DILocation(line: 168, column: 11, scope: !4309)
!4369 = !DILocation(line: 0, scope: !4300, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 180, column: 22, scope: !4309)
!4371 = !DILocation(line: 0, scope: !4311, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4370)
!4373 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4372)
!4374 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4372)
!4375 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4370)
!4376 = !DILocation(line: 0, scope: !4300, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 185, column: 22, scope: !4309)
!4378 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4379)
!4379 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4377)
!4380 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4379)
!4381 = !DILocation(line: 0, scope: !4311, inlinedAt: !4379)
!4382 = !DILocation(line: 0, scope: !4300, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 190, column: 22, scope: !4309)
!4384 = !DILocation(line: 0, scope: !4311, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4383)
!4386 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4385)
!4387 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4385)
!4388 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4383)
!4389 = !DILocation(line: 0, scope: !4300, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 207, column: 22, scope: !4309)
!4391 = !DILocation(line: 0, scope: !4311, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 66, column: 12, scope: !4300, inlinedAt: !4390)
!4393 = !DILocation(line: 50, column: 7, scope: !4320, inlinedAt: !4392)
!4394 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4392)
!4395 = !DILocation(line: 66, column: 9, scope: !4300, inlinedAt: !4390)
!4396 = !DILocation(line: 0, scope: !4311, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 211, column: 22, scope: !4309)
!4398 = !DILocation(line: 50, column: 7, scope: !4311, inlinedAt: !4397)
!4399 = !DILocation(line: 212, column: 11, scope: !4309)
!4400 = !DILocation(line: 0, scope: !4309)
!4401 = !DILocation(line: 228, column: 10, scope: !4229)
!4402 = !DILocation(line: 229, column: 11, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4229, file: !4209, line: 229, column: 11)
!4404 = !DILocation(line: 229, column: 11, scope: !4229)
!4405 = !DILocation(line: 223, column: 16, scope: !4309)
!4406 = !DILocation(line: 224, column: 22, scope: !4309)
!4407 = !DILocation(line: 100, column: 11, scope: !4257)
!4408 = !DILocation(line: 92, column: 16, scope: !4208)
!4409 = !DILocation(line: 233, column: 8, scope: !4208)
!4410 = !DILocation(line: 234, column: 3, scope: !4208)
!4411 = !DILocation(line: 235, column: 1, scope: !4208)
!4412 = !DISubprogram(name: "strtoumax", scope: !4413, file: !4413, line: 301, type: !4414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4413 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!1025, !1119, !2009, !70}
!4416 = distinct !DISubprogram(name: "rpl_fopen", scope: !1029, file: !1029, line: 46, type: !4417, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4453)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!4419, !107, !107}
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4421)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4422)
!4422 = !{!4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4421, file: !165, line: 51, baseType: !70, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4421, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4421, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4421, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4421, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4421, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4421, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4421, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4421, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4421, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4421, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4421, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4421, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4421, file: !165, line: 70, baseType: !4437, size: 64, offset: 832)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4421, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4421, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4421, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4421, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4421, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4421, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4421, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4421, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4421, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4421, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4421, file: !165, line: 93, baseType: !4437, size: 64, offset: 1344)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4421, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4421, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4421, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4421, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4453 = !{!4454, !4455, !4456, !4457, !4458, !4459, !4463, !4465, !4466, !4471, !4474, !4475}
!4454 = !DILocalVariable(name: "filename", arg: 1, scope: !4416, file: !1029, line: 46, type: !107)
!4455 = !DILocalVariable(name: "mode", arg: 2, scope: !4416, file: !1029, line: 46, type: !107)
!4456 = !DILocalVariable(name: "open_direction", scope: !4416, file: !1029, line: 54, type: !70)
!4457 = !DILocalVariable(name: "open_flags", scope: !4416, file: !1029, line: 55, type: !70)
!4458 = !DILocalVariable(name: "open_flags_gnu", scope: !4416, file: !1029, line: 57, type: !148)
!4459 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4416, file: !1029, line: 59, type: !4460)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4461)
!4461 = !{!4462}
!4462 = !DISubrange(count: 81)
!4463 = !DILocalVariable(name: "p", scope: !4464, file: !1029, line: 62, type: !107)
!4464 = distinct !DILexicalBlock(scope: !4416, file: !1029, line: 61, column: 3)
!4465 = !DILocalVariable(name: "q", scope: !4464, file: !1029, line: 64, type: !101)
!4466 = !DILocalVariable(name: "len", scope: !4467, file: !1029, line: 128, type: !104)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !1029, line: 127, column: 9)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !1029, line: 68, column: 7)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !1029, line: 67, column: 5)
!4470 = distinct !DILexicalBlock(scope: !4464, file: !1029, line: 67, column: 5)
!4471 = !DILocalVariable(name: "fd", scope: !4472, file: !1029, line: 199, type: !70)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !1029, line: 198, column: 5)
!4473 = distinct !DILexicalBlock(scope: !4416, file: !1029, line: 197, column: 7)
!4474 = !DILocalVariable(name: "fp", scope: !4472, file: !1029, line: 204, type: !4419)
!4475 = !DILocalVariable(name: "saved_errno", scope: !4476, file: !1029, line: 207, type: !70)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !1029, line: 206, column: 9)
!4477 = distinct !DILexicalBlock(scope: !4472, file: !1029, line: 205, column: 11)
!4478 = distinct !DIAssignID()
!4479 = !DILocation(line: 0, scope: !4416)
!4480 = !DILocation(line: 59, column: 3, scope: !4416)
!4481 = !DILocation(line: 0, scope: !4464)
!4482 = !DILocation(line: 67, column: 5, scope: !4464)
!4483 = !DILocation(line: 54, column: 7, scope: !4416)
!4484 = !DILocation(line: 67, column: 12, scope: !4469)
!4485 = !DILocation(line: 67, column: 5, scope: !4470)
!4486 = !DILocation(line: 74, column: 19, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !1029, line: 74, column: 17)
!4488 = distinct !DILexicalBlock(scope: !4468, file: !1029, line: 70, column: 11)
!4489 = !DILocation(line: 74, column: 17, scope: !4488)
!4490 = !DILocation(line: 75, column: 17, scope: !4487)
!4491 = !DILocation(line: 75, column: 20, scope: !4487)
!4492 = !DILocation(line: 75, column: 15, scope: !4487)
!4493 = !DILocation(line: 80, column: 24, scope: !4488)
!4494 = !DILocation(line: 82, column: 19, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4488, file: !1029, line: 82, column: 17)
!4496 = !DILocation(line: 82, column: 17, scope: !4488)
!4497 = !DILocation(line: 83, column: 17, scope: !4495)
!4498 = !DILocation(line: 83, column: 20, scope: !4495)
!4499 = !DILocation(line: 83, column: 15, scope: !4495)
!4500 = !DILocation(line: 88, column: 24, scope: !4488)
!4501 = !DILocation(line: 90, column: 19, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4488, file: !1029, line: 90, column: 17)
!4503 = !DILocation(line: 90, column: 17, scope: !4488)
!4504 = !DILocation(line: 91, column: 17, scope: !4502)
!4505 = !DILocation(line: 91, column: 20, scope: !4502)
!4506 = !DILocation(line: 91, column: 15, scope: !4502)
!4507 = !DILocation(line: 100, column: 19, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4488, file: !1029, line: 100, column: 17)
!4509 = !DILocation(line: 100, column: 17, scope: !4488)
!4510 = !DILocation(line: 101, column: 17, scope: !4508)
!4511 = !DILocation(line: 101, column: 20, scope: !4508)
!4512 = !DILocation(line: 101, column: 15, scope: !4508)
!4513 = !DILocation(line: 107, column: 19, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4488, file: !1029, line: 107, column: 17)
!4515 = !DILocation(line: 107, column: 17, scope: !4488)
!4516 = !DILocation(line: 108, column: 17, scope: !4514)
!4517 = !DILocation(line: 108, column: 20, scope: !4514)
!4518 = !DILocation(line: 108, column: 15, scope: !4514)
!4519 = !DILocation(line: 113, column: 24, scope: !4488)
!4520 = !DILocation(line: 115, column: 13, scope: !4488)
!4521 = !DILocation(line: 117, column: 24, scope: !4488)
!4522 = !DILocation(line: 119, column: 13, scope: !4488)
!4523 = !DILocation(line: 128, column: 24, scope: !4467)
!4524 = !DILocation(line: 0, scope: !4467)
!4525 = !DILocation(line: 129, column: 48, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4467, file: !1029, line: 129, column: 15)
!4527 = !DILocation(line: 129, column: 15, scope: !4467)
!4528 = !DILocalVariable(name: "__dest", arg: 1, scope: !4529, file: !2173, line: 26, type: !4039)
!4529 = distinct !DISubprogram(name: "memcpy", scope: !2173, file: !2173, line: 26, type: !4037, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4530)
!4530 = !{!4528, !4531, !4532}
!4531 = !DILocalVariable(name: "__src", arg: 2, scope: !4529, file: !2173, line: 26, type: !1272)
!4532 = !DILocalVariable(name: "__len", arg: 3, scope: !4529, file: !2173, line: 26, type: !104)
!4533 = !DILocation(line: 0, scope: !4529, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 131, column: 11, scope: !4467)
!4535 = !DILocation(line: 29, column: 10, scope: !4529, inlinedAt: !4534)
!4536 = !DILocation(line: 132, column: 13, scope: !4467)
!4537 = !DILocation(line: 135, column: 9, scope: !4468)
!4538 = !DILocation(line: 67, column: 25, scope: !4469)
!4539 = !DILocation(line: 67, column: 5, scope: !4469)
!4540 = distinct !{!4540, !4485, !4541, !1175}
!4541 = !DILocation(line: 136, column: 7, scope: !4470)
!4542 = !DILocation(line: 138, column: 8, scope: !4464)
!4543 = !DILocation(line: 197, column: 7, scope: !4416)
!4544 = !DILocation(line: 199, column: 47, scope: !4472)
!4545 = !DILocation(line: 199, column: 16, scope: !4472)
!4546 = !DILocation(line: 0, scope: !4472)
!4547 = !DILocation(line: 201, column: 14, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4472, file: !1029, line: 201, column: 11)
!4549 = !DILocation(line: 201, column: 11, scope: !4472)
!4550 = !DILocation(line: 204, column: 18, scope: !4472)
!4551 = !DILocation(line: 205, column: 14, scope: !4477)
!4552 = !DILocation(line: 205, column: 11, scope: !4472)
!4553 = !DILocation(line: 207, column: 29, scope: !4476)
!4554 = !DILocation(line: 0, scope: !4476)
!4555 = !DILocation(line: 208, column: 11, scope: !4476)
!4556 = !DILocation(line: 209, column: 17, scope: !4476)
!4557 = !DILocation(line: 210, column: 9, scope: !4476)
!4558 = !DILocalVariable(name: "filename", arg: 1, scope: !4559, file: !1029, line: 30, type: !107)
!4559 = distinct !DISubprogram(name: "orig_fopen", scope: !1029, file: !1029, line: 30, type: !4417, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4560)
!4560 = !{!4558, !4561}
!4561 = !DILocalVariable(name: "mode", arg: 2, scope: !4559, file: !1029, line: 30, type: !107)
!4562 = !DILocation(line: 0, scope: !4559, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 219, column: 10, scope: !4416)
!4564 = !DILocation(line: 32, column: 10, scope: !4559, inlinedAt: !4563)
!4565 = !DILocation(line: 219, column: 3, scope: !4416)
!4566 = !DILocation(line: 220, column: 1, scope: !4416)
!4567 = !DISubprogram(name: "open", scope: !1544, file: !1544, line: 181, type: !4568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!70, !107, !70, null}
!4570 = !DISubprogram(name: "fdopen", scope: !382, file: !382, line: 293, type: !4571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!4419, !70, !107}
!4573 = !DISubprogram(name: "close", scope: !1389, file: !1389, line: 358, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4574 = !DISubprogram(name: "fopen", scope: !382, file: !382, line: 258, type: !4575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!4419, !1119, !1119}
!4577 = distinct !DISubprogram(name: "close_stream", scope: !1031, file: !1031, line: 55, type: !4578, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4614)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!70, !4580}
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4582)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4583)
!4583 = !{!4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4582, file: !165, line: 51, baseType: !70, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4582, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4582, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4582, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4582, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4582, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4582, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4582, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4582, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4582, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4582, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4582, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4582, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4582, file: !165, line: 70, baseType: !4598, size: 64, offset: 832)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4582, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4582, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4582, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4582, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4582, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4582, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4582, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4582, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4582, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4582, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4582, file: !165, line: 93, baseType: !4598, size: 64, offset: 1344)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4582, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4582, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4582, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4582, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4614 = !{!4615, !4616, !4618, !4619}
!4615 = !DILocalVariable(name: "stream", arg: 1, scope: !4577, file: !1031, line: 55, type: !4580)
!4616 = !DILocalVariable(name: "some_pending", scope: !4577, file: !1031, line: 57, type: !4617)
!4617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!4618 = !DILocalVariable(name: "prev_fail", scope: !4577, file: !1031, line: 58, type: !4617)
!4619 = !DILocalVariable(name: "fclose_fail", scope: !4577, file: !1031, line: 59, type: !4617)
!4620 = !DILocation(line: 0, scope: !4577)
!4621 = !DILocation(line: 57, column: 30, scope: !4577)
!4622 = !DILocalVariable(name: "__stream", arg: 1, scope: !4623, file: !1512, line: 135, type: !4580)
!4623 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1512, file: !1512, line: 135, type: !4578, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4624)
!4624 = !{!4622}
!4625 = !DILocation(line: 0, scope: !4623, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 58, column: 27, scope: !4577)
!4627 = !DILocation(line: 137, column: 10, scope: !4623, inlinedAt: !4626)
!4628 = !{!1521, !1129, i64 0}
!4629 = !DILocation(line: 58, column: 43, scope: !4577)
!4630 = !DILocation(line: 59, column: 29, scope: !4577)
!4631 = !DILocation(line: 59, column: 45, scope: !4577)
!4632 = !DILocation(line: 69, column: 17, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4577, file: !1031, line: 69, column: 7)
!4634 = !DILocation(line: 57, column: 50, scope: !4577)
!4635 = !DILocation(line: 69, column: 33, scope: !4633)
!4636 = !DILocation(line: 69, column: 53, scope: !4633)
!4637 = !DILocation(line: 69, column: 59, scope: !4633)
!4638 = !DILocation(line: 69, column: 7, scope: !4577)
!4639 = !DILocation(line: 71, column: 11, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4633, file: !1031, line: 70, column: 5)
!4641 = !DILocation(line: 72, column: 9, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4640, file: !1031, line: 71, column: 11)
!4643 = !DILocation(line: 72, column: 15, scope: !4642)
!4644 = !DILocation(line: 77, column: 1, scope: !4577)
!4645 = !DISubprogram(name: "__fpending", scope: !4646, file: !4646, line: 75, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4646 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!104, !4580}
!4649 = distinct !DISubprogram(name: "rpl_fclose", scope: !1033, file: !1033, line: 58, type: !4650, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4686)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!70, !4652}
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4654)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4654, file: !165, line: 51, baseType: !70, size: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4654, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4654, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4654, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4654, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4654, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4654, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4654, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4654, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4654, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4654, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4654, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4654, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4654, file: !165, line: 70, baseType: !4670, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4654, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4654, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4654, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4654, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4654, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4654, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4654, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4654, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4654, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4654, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4654, file: !165, line: 93, baseType: !4670, size: 64, offset: 1344)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4654, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4654, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4654, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4654, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4686 = !{!4687, !4688, !4689, !4690}
!4687 = !DILocalVariable(name: "fp", arg: 1, scope: !4649, file: !1033, line: 58, type: !4652)
!4688 = !DILocalVariable(name: "saved_errno", scope: !4649, file: !1033, line: 60, type: !70)
!4689 = !DILocalVariable(name: "fd", scope: !4649, file: !1033, line: 63, type: !70)
!4690 = !DILocalVariable(name: "result", scope: !4649, file: !1033, line: 74, type: !70)
!4691 = !DILocation(line: 0, scope: !4649)
!4692 = !DILocation(line: 63, column: 12, scope: !4649)
!4693 = !DILocation(line: 64, column: 10, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4649, file: !1033, line: 64, column: 7)
!4695 = !DILocation(line: 64, column: 7, scope: !4649)
!4696 = !DILocation(line: 65, column: 12, scope: !4694)
!4697 = !DILocation(line: 65, column: 5, scope: !4694)
!4698 = !DILocation(line: 70, column: 9, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4649, file: !1033, line: 70, column: 7)
!4700 = !DILocation(line: 70, column: 23, scope: !4699)
!4701 = !DILocation(line: 70, column: 33, scope: !4699)
!4702 = !DILocation(line: 70, column: 26, scope: !4699)
!4703 = !DILocation(line: 70, column: 59, scope: !4699)
!4704 = !DILocation(line: 71, column: 7, scope: !4699)
!4705 = !DILocation(line: 71, column: 10, scope: !4699)
!4706 = !DILocation(line: 70, column: 7, scope: !4649)
!4707 = !DILocation(line: 100, column: 12, scope: !4649)
!4708 = !DILocation(line: 105, column: 7, scope: !4649)
!4709 = !DILocation(line: 72, column: 19, scope: !4699)
!4710 = !DILocation(line: 105, column: 19, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4649, file: !1033, line: 105, column: 7)
!4712 = !DILocation(line: 107, column: 13, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4711, file: !1033, line: 106, column: 5)
!4714 = !DILocation(line: 109, column: 5, scope: !4713)
!4715 = !DILocation(line: 112, column: 1, scope: !4649)
!4716 = !DISubprogram(name: "fileno", scope: !382, file: !382, line: 809, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4717 = !DISubprogram(name: "fclose", scope: !382, file: !382, line: 178, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4718 = !DISubprogram(name: "__freading", scope: !4646, file: !4646, line: 51, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4719 = !DISubprogram(name: "lseek", scope: !1389, file: !1389, line: 339, type: !4720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!187, !70, !187, !70}
!4722 = distinct !DISubprogram(name: "rpl_fflush", scope: !1035, file: !1035, line: 130, type: !4723, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4759)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!70, !4725}
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4727)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4727, file: !165, line: 51, baseType: !70, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4727, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4727, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4727, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4727, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4727, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4727, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4727, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4727, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4727, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4727, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4727, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4727, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4727, file: !165, line: 70, baseType: !4743, size: 64, offset: 832)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4727, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4727, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4727, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4727, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4727, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4727, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4727, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4727, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4727, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4727, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4727, file: !165, line: 93, baseType: !4743, size: 64, offset: 1344)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4727, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4727, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4727, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4727, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4759 = !{!4760}
!4760 = !DILocalVariable(name: "stream", arg: 1, scope: !4722, file: !1035, line: 130, type: !4725)
!4761 = !DILocation(line: 0, scope: !4722)
!4762 = !DILocation(line: 151, column: 14, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4722, file: !1035, line: 151, column: 7)
!4764 = !DILocation(line: 151, column: 22, scope: !4763)
!4765 = !DILocation(line: 151, column: 27, scope: !4763)
!4766 = !DILocation(line: 151, column: 7, scope: !4722)
!4767 = !DILocation(line: 152, column: 12, scope: !4763)
!4768 = !DILocation(line: 152, column: 5, scope: !4763)
!4769 = !DILocalVariable(name: "fp", arg: 1, scope: !4770, file: !1035, line: 42, type: !4725)
!4770 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1035, file: !1035, line: 42, type: !4771, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4773)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{null, !4725}
!4773 = !{!4769}
!4774 = !DILocation(line: 0, scope: !4770, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 157, column: 3, scope: !4722)
!4776 = !DILocation(line: 44, column: 12, scope: !4777, inlinedAt: !4775)
!4777 = distinct !DILexicalBlock(scope: !4770, file: !1035, line: 44, column: 7)
!4778 = !DILocation(line: 44, column: 19, scope: !4777, inlinedAt: !4775)
!4779 = !DILocation(line: 44, column: 7, scope: !4770, inlinedAt: !4775)
!4780 = !DILocation(line: 46, column: 5, scope: !4777, inlinedAt: !4775)
!4781 = !DILocation(line: 159, column: 10, scope: !4722)
!4782 = !DILocation(line: 159, column: 3, scope: !4722)
!4783 = !DILocation(line: 236, column: 1, scope: !4722)
!4784 = !DISubprogram(name: "fflush", scope: !382, file: !382, line: 230, type: !4723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4785 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1037, file: !1037, line: 28, type: !4786, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !4823)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!70, !4788, !4822, !70}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4790)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4791)
!4791 = !{!4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4790, file: !165, line: 51, baseType: !70, size: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4790, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4790, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4790, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4790, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4790, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4790, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4790, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4790, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4790, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4790, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4790, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4790, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4790, file: !165, line: 70, baseType: !4806, size: 64, offset: 832)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4790, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4790, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4790, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4790, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4790, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4790, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4790, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4790, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4790, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4790, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4790, file: !165, line: 93, baseType: !4806, size: 64, offset: 1344)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4790, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4790, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4790, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4790, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4822 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !382, line: 63, baseType: !187)
!4823 = !{!4824, !4825, !4826, !4827}
!4824 = !DILocalVariable(name: "fp", arg: 1, scope: !4785, file: !1037, line: 28, type: !4788)
!4825 = !DILocalVariable(name: "offset", arg: 2, scope: !4785, file: !1037, line: 28, type: !4822)
!4826 = !DILocalVariable(name: "whence", arg: 3, scope: !4785, file: !1037, line: 28, type: !70)
!4827 = !DILocalVariable(name: "pos", scope: !4828, file: !1037, line: 123, type: !4822)
!4828 = distinct !DILexicalBlock(scope: !4829, file: !1037, line: 119, column: 5)
!4829 = distinct !DILexicalBlock(scope: !4785, file: !1037, line: 55, column: 7)
!4830 = !DILocation(line: 0, scope: !4785)
!4831 = !DILocation(line: 55, column: 12, scope: !4829)
!4832 = !{!1521, !1067, i64 16}
!4833 = !DILocation(line: 55, column: 33, scope: !4829)
!4834 = !{!1521, !1067, i64 8}
!4835 = !DILocation(line: 55, column: 25, scope: !4829)
!4836 = !DILocation(line: 56, column: 7, scope: !4829)
!4837 = !DILocation(line: 56, column: 15, scope: !4829)
!4838 = !DILocation(line: 56, column: 37, scope: !4829)
!4839 = !{!1521, !1067, i64 32}
!4840 = !DILocation(line: 56, column: 29, scope: !4829)
!4841 = !DILocation(line: 57, column: 7, scope: !4829)
!4842 = !DILocation(line: 57, column: 15, scope: !4829)
!4843 = !{!1521, !1067, i64 72}
!4844 = !DILocation(line: 57, column: 29, scope: !4829)
!4845 = !DILocation(line: 55, column: 7, scope: !4785)
!4846 = !DILocation(line: 123, column: 26, scope: !4828)
!4847 = !DILocation(line: 123, column: 19, scope: !4828)
!4848 = !DILocation(line: 0, scope: !4828)
!4849 = !DILocation(line: 124, column: 15, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4828, file: !1037, line: 124, column: 11)
!4851 = !DILocation(line: 124, column: 11, scope: !4828)
!4852 = !DILocation(line: 135, column: 19, scope: !4828)
!4853 = !DILocation(line: 136, column: 12, scope: !4828)
!4854 = !DILocation(line: 136, column: 20, scope: !4828)
!4855 = !{!1521, !1522, i64 144}
!4856 = !DILocation(line: 167, column: 7, scope: !4828)
!4857 = !DILocation(line: 169, column: 10, scope: !4785)
!4858 = !DILocation(line: 169, column: 3, scope: !4785)
!4859 = !DILocation(line: 170, column: 1, scope: !4785)
!4860 = !DISubprogram(name: "fseeko", scope: !382, file: !382, line: 736, type: !4861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!70, !4788, !187, !70}
!4863 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !711, file: !711, line: 100, type: !4864, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !4867)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!104, !2191, !107, !104, !4866}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!4867 = !{!4868, !4869, !4870, !4871, !4872}
!4868 = !DILocalVariable(name: "pwc", arg: 1, scope: !4863, file: !711, line: 100, type: !2191)
!4869 = !DILocalVariable(name: "s", arg: 2, scope: !4863, file: !711, line: 100, type: !107)
!4870 = !DILocalVariable(name: "n", arg: 3, scope: !4863, file: !711, line: 100, type: !104)
!4871 = !DILocalVariable(name: "ps", arg: 4, scope: !4863, file: !711, line: 100, type: !4866)
!4872 = !DILocalVariable(name: "ret", scope: !4863, file: !711, line: 130, type: !104)
!4873 = !DILocation(line: 0, scope: !4863)
!4874 = !DILocation(line: 105, column: 9, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4863, file: !711, line: 105, column: 7)
!4876 = !DILocation(line: 105, column: 7, scope: !4863)
!4877 = !DILocation(line: 117, column: 10, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4863, file: !711, line: 117, column: 7)
!4879 = !DILocation(line: 117, column: 7, scope: !4863)
!4880 = !DILocation(line: 130, column: 16, scope: !4863)
!4881 = !DILocation(line: 135, column: 11, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4863, file: !711, line: 135, column: 7)
!4883 = !DILocation(line: 135, column: 25, scope: !4882)
!4884 = !DILocation(line: 135, column: 30, scope: !4882)
!4885 = !DILocation(line: 135, column: 7, scope: !4863)
!4886 = !DILocalVariable(name: "ps", arg: 1, scope: !4887, file: !2164, line: 1135, type: !4866)
!4887 = distinct !DISubprogram(name: "mbszero", scope: !2164, file: !2164, line: 1135, type: !4888, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !4890)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{null, !4866}
!4890 = !{!4886}
!4891 = !DILocation(line: 0, scope: !4887, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 137, column: 5, scope: !4882)
!4893 = !DILocalVariable(name: "__dest", arg: 1, scope: !4894, file: !2173, line: 57, type: !102)
!4894 = distinct !DISubprogram(name: "memset", scope: !2173, file: !2173, line: 57, type: !2174, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !4895)
!4895 = !{!4893, !4896, !4897}
!4896 = !DILocalVariable(name: "__ch", arg: 2, scope: !4894, file: !2173, line: 57, type: !70)
!4897 = !DILocalVariable(name: "__len", arg: 3, scope: !4894, file: !2173, line: 57, type: !104)
!4898 = !DILocation(line: 0, scope: !4894, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 1137, column: 3, scope: !4887, inlinedAt: !4892)
!4900 = !DILocation(line: 59, column: 10, scope: !4894, inlinedAt: !4899)
!4901 = !DILocation(line: 137, column: 5, scope: !4882)
!4902 = !DILocation(line: 138, column: 11, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4863, file: !711, line: 138, column: 7)
!4904 = !DILocation(line: 138, column: 7, scope: !4863)
!4905 = !DILocation(line: 139, column: 5, scope: !4903)
!4906 = !DILocation(line: 143, column: 26, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4863, file: !711, line: 143, column: 7)
!4908 = !DILocation(line: 143, column: 41, scope: !4907)
!4909 = !DILocation(line: 143, column: 7, scope: !4863)
!4910 = !DILocation(line: 145, column: 15, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !711, line: 145, column: 11)
!4912 = distinct !DILexicalBlock(scope: !4907, file: !711, line: 144, column: 5)
!4913 = !DILocation(line: 145, column: 11, scope: !4912)
!4914 = !DILocation(line: 146, column: 32, scope: !4911)
!4915 = !DILocation(line: 146, column: 16, scope: !4911)
!4916 = !DILocation(line: 146, column: 14, scope: !4911)
!4917 = !DILocation(line: 146, column: 9, scope: !4911)
!4918 = !DILocation(line: 286, column: 1, scope: !4863)
!4919 = !DISubprogram(name: "mbsinit", scope: !4920, file: !4920, line: 293, type: !4921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4920 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!70, !4923}
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!4925 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1039, file: !1039, line: 27, type: !3677, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !4926)
!4926 = !{!4927, !4928, !4929, !4930}
!4927 = !DILocalVariable(name: "ptr", arg: 1, scope: !4925, file: !1039, line: 27, type: !102)
!4928 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4925, file: !1039, line: 27, type: !104)
!4929 = !DILocalVariable(name: "size", arg: 3, scope: !4925, file: !1039, line: 27, type: !104)
!4930 = !DILocalVariable(name: "nbytes", scope: !4925, file: !1039, line: 29, type: !104)
!4931 = !DILocation(line: 0, scope: !4925)
!4932 = !DILocation(line: 30, column: 7, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4925, file: !1039, line: 30, column: 7)
!4934 = !DILocation(line: 30, column: 7, scope: !4925)
!4935 = !DILocation(line: 32, column: 7, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4933, file: !1039, line: 31, column: 5)
!4937 = !DILocation(line: 32, column: 13, scope: !4936)
!4938 = !DILocation(line: 33, column: 7, scope: !4936)
!4939 = !DILocalVariable(name: "ptr", arg: 1, scope: !4940, file: !3769, line: 2057, type: !102)
!4940 = distinct !DISubprogram(name: "rpl_realloc", scope: !3769, file: !3769, line: 2057, type: !3761, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !4941)
!4941 = !{!4939, !4942}
!4942 = !DILocalVariable(name: "size", arg: 2, scope: !4940, file: !3769, line: 2057, type: !104)
!4943 = !DILocation(line: 0, scope: !4940, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 37, column: 10, scope: !4925)
!4945 = !DILocation(line: 2059, column: 24, scope: !4940, inlinedAt: !4944)
!4946 = !DILocation(line: 2059, column: 10, scope: !4940, inlinedAt: !4944)
!4947 = !DILocation(line: 37, column: 3, scope: !4925)
!4948 = !DILocation(line: 38, column: 1, scope: !4925)
!4949 = distinct !DISubprogram(name: "hard_locale", scope: !729, file: !729, line: 28, type: !1667, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !4950)
!4950 = !{!4951, !4952}
!4951 = !DILocalVariable(name: "category", arg: 1, scope: !4949, file: !729, line: 28, type: !70)
!4952 = !DILocalVariable(name: "locale", scope: !4949, file: !729, line: 30, type: !4953)
!4953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4954)
!4954 = !{!4955}
!4955 = !DISubrange(count: 257)
!4956 = distinct !DIAssignID()
!4957 = !DILocation(line: 0, scope: !4949)
!4958 = !DILocation(line: 30, column: 3, scope: !4949)
!4959 = !DILocation(line: 32, column: 7, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4949, file: !729, line: 32, column: 7)
!4961 = !DILocation(line: 32, column: 7, scope: !4949)
!4962 = !DILocalVariable(name: "__s1", arg: 1, scope: !4963, file: !1141, line: 1359, type: !107)
!4963 = distinct !DISubprogram(name: "streq", scope: !1141, file: !1141, line: 1359, type: !1142, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !4964)
!4964 = !{!4962, !4965}
!4965 = !DILocalVariable(name: "__s2", arg: 2, scope: !4963, file: !1141, line: 1359, type: !107)
!4966 = !DILocation(line: 0, scope: !4963, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 35, column: 9, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4949, file: !729, line: 35, column: 7)
!4969 = !DILocation(line: 1361, column: 11, scope: !4963, inlinedAt: !4967)
!4970 = !DILocation(line: 1361, column: 10, scope: !4963, inlinedAt: !4967)
!4971 = !DILocation(line: 35, column: 29, scope: !4968)
!4972 = !DILocation(line: 0, scope: !4963, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 35, column: 32, scope: !4968)
!4974 = !DILocation(line: 1361, column: 11, scope: !4963, inlinedAt: !4973)
!4975 = !DILocation(line: 1361, column: 10, scope: !4963, inlinedAt: !4973)
!4976 = !DILocation(line: 35, column: 7, scope: !4949)
!4977 = !DILocation(line: 46, column: 3, scope: !4949)
!4978 = !DILocation(line: 47, column: 1, scope: !4949)
!4979 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1043, file: !1043, line: 154, type: !4980, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !4982)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!70, !70, !101, !104}
!4982 = !{!4983, !4984, !4985}
!4983 = !DILocalVariable(name: "category", arg: 1, scope: !4979, file: !1043, line: 154, type: !70)
!4984 = !DILocalVariable(name: "buf", arg: 2, scope: !4979, file: !1043, line: 154, type: !101)
!4985 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4979, file: !1043, line: 154, type: !104)
!4986 = !DILocation(line: 0, scope: !4979)
!4987 = !DILocation(line: 159, column: 10, scope: !4979)
!4988 = !DILocation(line: 159, column: 3, scope: !4979)
!4989 = distinct !DISubprogram(name: "setlocale_null", scope: !1043, file: !1043, line: 186, type: !4990, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !4992)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!107, !70}
!4992 = !{!4993}
!4993 = !DILocalVariable(name: "category", arg: 1, scope: !4989, file: !1043, line: 186, type: !70)
!4994 = !DILocation(line: 0, scope: !4989)
!4995 = !DILocation(line: 189, column: 10, scope: !4989)
!4996 = !DILocation(line: 189, column: 3, scope: !4989)
!4997 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1045, file: !1045, line: 35, type: !4990, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !4998)
!4998 = !{!4999, !5000}
!4999 = !DILocalVariable(name: "category", arg: 1, scope: !4997, file: !1045, line: 35, type: !70)
!5000 = !DILocalVariable(name: "result", scope: !4997, file: !1045, line: 37, type: !107)
!5001 = !DILocation(line: 0, scope: !4997)
!5002 = !DILocation(line: 37, column: 24, scope: !4997)
!5003 = !DILocation(line: 62, column: 3, scope: !4997)
!5004 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1045, file: !1045, line: 66, type: !4980, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !5005)
!5005 = !{!5006, !5007, !5008, !5009, !5010}
!5006 = !DILocalVariable(name: "category", arg: 1, scope: !5004, file: !1045, line: 66, type: !70)
!5007 = !DILocalVariable(name: "buf", arg: 2, scope: !5004, file: !1045, line: 66, type: !101)
!5008 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5004, file: !1045, line: 66, type: !104)
!5009 = !DILocalVariable(name: "result", scope: !5004, file: !1045, line: 111, type: !107)
!5010 = !DILocalVariable(name: "length", scope: !5011, file: !1045, line: 125, type: !104)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !1045, line: 124, column: 5)
!5012 = distinct !DILexicalBlock(scope: !5004, file: !1045, line: 113, column: 7)
!5013 = !DILocation(line: 0, scope: !5004)
!5014 = !DILocation(line: 0, scope: !4997, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 111, column: 24, scope: !5004)
!5016 = !DILocation(line: 37, column: 24, scope: !4997, inlinedAt: !5015)
!5017 = !DILocation(line: 113, column: 14, scope: !5012)
!5018 = !DILocation(line: 113, column: 7, scope: !5004)
!5019 = !DILocation(line: 116, column: 19, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !1045, line: 116, column: 11)
!5021 = distinct !DILexicalBlock(scope: !5012, file: !1045, line: 114, column: 5)
!5022 = !DILocation(line: 116, column: 11, scope: !5021)
!5023 = !DILocation(line: 120, column: 16, scope: !5020)
!5024 = !DILocation(line: 120, column: 9, scope: !5020)
!5025 = !DILocation(line: 125, column: 23, scope: !5011)
!5026 = !DILocation(line: 0, scope: !5011)
!5027 = !DILocation(line: 126, column: 18, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5011, file: !1045, line: 126, column: 11)
!5029 = !DILocation(line: 126, column: 11, scope: !5011)
!5030 = !DILocation(line: 128, column: 39, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5028, file: !1045, line: 127, column: 9)
!5032 = !DILocalVariable(name: "__dest", arg: 1, scope: !5033, file: !2173, line: 26, type: !4039)
!5033 = distinct !DISubprogram(name: "memcpy", scope: !2173, file: !2173, line: 26, type: !4037, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !5034)
!5034 = !{!5032, !5035, !5036}
!5035 = !DILocalVariable(name: "__src", arg: 2, scope: !5033, file: !2173, line: 26, type: !1272)
!5036 = !DILocalVariable(name: "__len", arg: 3, scope: !5033, file: !2173, line: 26, type: !104)
!5037 = !DILocation(line: 0, scope: !5033, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 128, column: 11, scope: !5031)
!5039 = !DILocation(line: 29, column: 10, scope: !5033, inlinedAt: !5038)
!5040 = !DILocation(line: 129, column: 11, scope: !5031)
!5041 = !DILocation(line: 133, column: 23, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5043, file: !1045, line: 133, column: 15)
!5043 = distinct !DILexicalBlock(scope: !5028, file: !1045, line: 132, column: 9)
!5044 = !DILocation(line: 133, column: 15, scope: !5043)
!5045 = !DILocation(line: 138, column: 44, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5042, file: !1045, line: 134, column: 13)
!5047 = !DILocation(line: 0, scope: !5033, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 138, column: 15, scope: !5046)
!5049 = !DILocation(line: 29, column: 10, scope: !5033, inlinedAt: !5048)
!5050 = !DILocation(line: 139, column: 15, scope: !5046)
!5051 = !DILocation(line: 139, column: 32, scope: !5046)
!5052 = !DILocation(line: 140, column: 13, scope: !5046)
!5053 = !DILocation(line: 0, scope: !5012)
!5054 = !DILocation(line: 145, column: 1, scope: !5004)
