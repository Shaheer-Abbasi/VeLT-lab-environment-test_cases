; ModuleID = 'src/nproc.bc'
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
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.51, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.52, i32 1, ptr null, i32 129 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !57
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !366
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !358
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !360
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !362
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !364
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !368
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !374
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !406
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !396
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !398
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !400
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !402
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !404
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !408
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !410
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !415
@.str.43 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1, !dbg !420
@.str.1.44 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1, !dbg !423
@.str.2.45 = private unnamed_addr constant [18 x i8] c"/proc/self/cgroup\00", align 1, !dbg !425
@.str.3.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !427
@.str.4.47 = private unnamed_addr constant [5 x i8] c"0::/\00", align 1, !dbg !429
@.str.5.52 = private unnamed_addr constant [13 x i8] c"%s%s/cpu.max\00", align 1, !dbg !431
@.str.6.53 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !436
@.str.7.54 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1, !dbg !438
@.str.8.48 = private unnamed_addr constant [34 x i8] c"/sys/fs/cgroup/cgroup.controllers\00", align 1, !dbg !440
@.str.9.49 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1, !dbg !445
@.str.10.50 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1, !dbg !447
@.str.11.51 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1, !dbg !449
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !451
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !457
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !459
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !461
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !492
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !495
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !497
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !499
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !501
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !503
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !505
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !507
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !509
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !511
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.63, ptr @.str.1.64, ptr @.str.2.65, ptr @.str.3.66, ptr @.str.4.67, ptr @.str.5.68, ptr @.str.6.69, ptr @.str.7.70, ptr @.str.8.71, ptr @.str.9.72, ptr null], align 16, !dbg !513
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !538
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !552
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !590
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !597
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !554
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !599
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !542
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !559
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !561
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !563
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !565
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !567
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !605
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !608
@.str.2.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !610
@.str.3.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !612
@.str.4.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !614
@.str.5.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !616
@.str.6.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !621
@.str.7.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !623
@.str.8.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !625
@.str.9.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !627
@.str.10.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !632
@.str.11.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !637
@.str.12.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !642
@.str.13.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !644
@.str.14.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !649
@.str.15.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !654
@.str.16.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !659
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.102 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !664
@.str.18.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !666
@.str.19.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !668
@.str.20.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !670
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !672
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !674
@.str.23.106 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !676
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !681
@exit_failure = dso_local global i32 1, align 4, !dbg !689
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !695
@.str.1.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !698
@.str.2.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !700
@.str.122 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !702
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !705
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !708
@.str.1.142 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !723

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1043 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1047, metadata !DIExpression()), !dbg !1048
  %2 = icmp eq i32 %0, 0, !dbg !1049
  br i1 %2, label %8, label %3, !dbg !1051

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1052, !tbaa !1054
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !1052
  %6 = load ptr, ptr @program_name, align 8, !dbg !1052, !tbaa !1054
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !1052
  br label %33, !dbg !1052

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !1058
  %10 = load ptr, ptr @program_name, align 8, !dbg !1058, !tbaa !1054
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !1058
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1060
  %13 = load ptr, ptr @stdout, align 8, !dbg !1060, !tbaa !1054
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1060
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1061
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1061
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1062
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1062
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1063
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1063
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1064
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1064
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1065, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1077, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr poison, metadata !1077, metadata !DIExpression()), !dbg !1082
  tail call void @emit_bug_reporting_address() #39, !dbg !1084
  %19 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1085
  call void @llvm.dbg.value(metadata ptr %19, metadata !1080, metadata !DIExpression()), !dbg !1082
  %20 = icmp eq ptr %19, null, !dbg !1086
  br i1 %20, label %28, label %21, !dbg !1088

21:                                               ; preds = %8
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #40, !dbg !1089
  %23 = icmp eq i32 %22, 0, !dbg !1089
  br i1 %23, label %28, label %24, !dbg !1090

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #39, !dbg !1091
  %26 = load ptr, ptr @stdout, align 8, !dbg !1091, !tbaa !1054
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !1091
  br label %28, !dbg !1093

28:                                               ; preds = %8, %21, %24
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1077, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1082
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !1094
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #39, !dbg !1094
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #39, !dbg !1095
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #39, !dbg !1095
  br label %33

33:                                               ; preds = %28, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1096
  unreachable, !dbg !1096
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1097 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1102 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1108 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1111 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !138 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !142, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !1115
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1116, !tbaa !1117
  %3 = icmp eq i32 %2, -1, !dbg !1119
  br i1 %3, label %4, label %16, !dbg !1120

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #39, !dbg !1121
  call void @llvm.dbg.value(metadata ptr %5, metadata !144, metadata !DIExpression()), !dbg !1122
  %6 = icmp eq ptr %5, null, !dbg !1123
  br i1 %6, label %14, label %7, !dbg !1124

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1125, !tbaa !1126
  %9 = icmp eq i8 %8, 0, !dbg !1125
  br i1 %9, label %14, label %10, !dbg !1127

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1128, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !1134, metadata !DIExpression()), !dbg !1135
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #40, !dbg !1137
  %12 = icmp eq i32 %11, 0, !dbg !1138
  %13 = zext i1 %12 to i32, !dbg !1127
  br label %14, !dbg !1127

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1139, !tbaa !1117
  br label %16, !dbg !1140

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1141
  %18 = icmp eq i32 %17, 0, !dbg !1141
  br i1 %18, label %22, label %19, !dbg !1143

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1144, !tbaa !1054
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1144
  br label %128, !dbg !1146

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !147, metadata !DIExpression()), !dbg !1115
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #40, !dbg !1147
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1148
  call void @llvm.dbg.value(metadata ptr %24, metadata !149, metadata !DIExpression()), !dbg !1115
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1149
  call void @llvm.dbg.value(metadata ptr %25, metadata !150, metadata !DIExpression()), !dbg !1115
  %26 = icmp eq ptr %25, null, !dbg !1150
  br i1 %26, label %58, label %27, !dbg !1151

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1152
  br i1 %28, label %58, label %29, !dbg !1153

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !151, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 0, metadata !155, metadata !DIExpression()), !dbg !1154
  %30 = icmp ult ptr %24, %25, !dbg !1155
  br i1 %30, label %31, label %52, !dbg !1156

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1115
  %33 = load ptr, ptr %32, align 8, !tbaa !1054
  br label %34, !dbg !1156

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !151, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %36, metadata !155, metadata !DIExpression()), !dbg !1154
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %37, metadata !151, metadata !DIExpression()), !dbg !1154
  %38 = load i8, ptr %35, align 1, !dbg !1157, !tbaa !1126
  %39 = sext i8 %38 to i64, !dbg !1157
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1157
  %41 = load i16, ptr %40, align 2, !dbg !1157, !tbaa !1158
  %42 = freeze i16 %41, !dbg !1160
  %43 = lshr i16 %42, 13, !dbg !1160
  %44 = and i16 %43, 1, !dbg !1160
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1161
  call void @llvm.dbg.value(metadata i64 %46, metadata !155, metadata !DIExpression()), !dbg !1154
  %47 = icmp ult ptr %37, %25, !dbg !1155
  %48 = icmp ult i64 %46, 2, !dbg !1162
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1162
  br i1 %49, label %34, label %50, !dbg !1156, !llvm.loop !1163

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1165
  br i1 %51, label %52, label %54, !dbg !1167

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1167

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1167
  call void @llvm.dbg.value(metadata i8 %57, metadata !147, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %56, metadata !150, metadata !DIExpression()), !dbg !1115
  br label %58, !dbg !1168

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1115
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %60, metadata !147, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %59, metadata !150, metadata !DIExpression()), !dbg !1115
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.19) #40, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %61, metadata !156, metadata !DIExpression()), !dbg !1115
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1170
  call void @llvm.dbg.value(metadata ptr %62, metadata !157, metadata !DIExpression()), !dbg !1115
  br label %63, !dbg !1171

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1115
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %65, metadata !147, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %64, metadata !157, metadata !DIExpression()), !dbg !1115
  %66 = load i8, ptr %64, align 1, !dbg !1172, !tbaa !1126
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1173

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1174
  %69 = load i8, ptr %68, align 1, !dbg !1177, !tbaa !1126
  %70 = icmp eq i8 %69, 45, !dbg !1178
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1179
  br label %72, !dbg !1179

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1115
  call void @llvm.dbg.value(metadata i8 %73, metadata !147, metadata !DIExpression()), !dbg !1115
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !1180
  %75 = load ptr, ptr %74, align 8, !dbg !1180, !tbaa !1054
  %76 = sext i8 %66 to i64, !dbg !1180
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1180
  %78 = load i16, ptr %77, align 2, !dbg !1180, !tbaa !1158
  %79 = and i16 %78, 8192, !dbg !1180
  %80 = icmp eq i16 %79, 0, !dbg !1180
  br i1 %80, label %96, label %81, !dbg !1182

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1183
  br i1 %82, label %98, label %83, !dbg !1186

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1187
  %85 = load i8, ptr %84, align 1, !dbg !1187, !tbaa !1126
  %86 = sext i8 %85 to i64, !dbg !1187
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1187
  %88 = load i16, ptr %87, align 2, !dbg !1187, !tbaa !1158
  %89 = and i16 %88, 8192, !dbg !1187
  %90 = icmp eq i16 %89, 0, !dbg !1187
  br i1 %90, label %91, label %98, !dbg !1188

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1189
  %93 = icmp ne i8 %92, 0, !dbg !1189
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1191
  br i1 %95, label %96, label %98, !dbg !1191

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1192
  call void @llvm.dbg.value(metadata ptr %97, metadata !157, metadata !DIExpression()), !dbg !1115
  br label %63, !dbg !1171, !llvm.loop !1193

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1195
  %100 = load ptr, ptr @stdout, align 8, !dbg !1195, !tbaa !1054
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1195
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !214, metadata !DIExpression()), !dbg !1115
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #40, !dbg !1216
  %103 = icmp eq i32 %102, 0, !dbg !1216
  br i1 %103, label %107, label %104, !dbg !1218

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #40, !dbg !1219
  %106 = icmp eq i32 %105, 0, !dbg !1219
  br i1 %106, label %107, label %110, !dbg !1220

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1221
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #39, !dbg !1221
  br label %113, !dbg !1223

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1224
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #39, !dbg !1224
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1226, !tbaa !1054
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %114), !dbg !1226
  %116 = load ptr, ptr @stdout, align 8, !dbg !1227, !tbaa !1054
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %116), !dbg !1227
  %118 = ptrtoint ptr %64 to i64, !dbg !1228
  %119 = sub i64 %118, %99, !dbg !1228
  %120 = load ptr, ptr @stdout, align 8, !dbg !1228, !tbaa !1054
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1228
  %122 = load ptr, ptr @stdout, align 8, !dbg !1229, !tbaa !1054
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %122), !dbg !1229
  %124 = load ptr, ptr @stdout, align 8, !dbg !1230, !tbaa !1054
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %124), !dbg !1230
  %126 = load ptr, ptr @stdout, align 8, !dbg !1231, !tbaa !1054
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1231
  br label %128, !dbg !1232

128:                                              ; preds = %113, %19
  ret void, !dbg !1232
}

; Function Attrs: nounwind
declare !dbg !1233 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1237 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1241 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1243 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1246 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1249 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1252 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1255 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1261 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1262 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1273, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %1, metadata !1274, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 0, metadata !1275, metadata !DIExpression()), !dbg !1280
  %3 = load ptr, ptr %1, align 8, !dbg !1281, !tbaa !1054
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1282
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1283
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1284
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1285
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1286
  call void @llvm.dbg.value(metadata i32 2, metadata !1276, metadata !DIExpression()), !dbg !1280
  br label %8, !dbg !1287

8:                                                ; preds = %19, %2
  %9 = phi i64 [ %23, %19 ], [ 0, %2 ]
  %10 = phi i32 [ %20, %19 ], [ 2, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !1276, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 %9, metadata !1275, metadata !DIExpression()), !dbg !1280
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %11, metadata !1277, metadata !DIExpression()), !dbg !1289
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %12
    i32 129, label %19
  ], !dbg !1290

12:                                               ; preds = %8, %12
  call void @llvm.dbg.value(metadata i32 0, metadata !1276, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 %9, metadata !1275, metadata !DIExpression()), !dbg !1280
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %13, metadata !1277, metadata !DIExpression()), !dbg !1289
  switch i32 %13, label %24 [
    i32 -1, label %25
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %12
    i32 129, label %19
  ], !dbg !1290, !llvm.loop !1291

14:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 0) #43, !dbg !1293
  unreachable, !dbg !1293

15:                                               ; preds = %8, %12
  %16 = load ptr, ptr @stdout, align 8, !dbg !1295, !tbaa !1054
  %17 = load ptr, ptr @Version, align 8, !dbg !1295, !tbaa !1054
  %18 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #39, !dbg !1295
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %17, ptr noundef %18, ptr noundef null) #39, !dbg !1295
  tail call void @exit(i32 noundef 0) #41, !dbg !1295
  unreachable, !dbg !1295

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %10, %8 ], [ 0, %12 ], !dbg !1296
  %21 = load ptr, ptr @optarg, align 8, !dbg !1297, !tbaa !1054
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1298
  %23 = tail call i64 @xnumtoumax(ptr noundef %21, i32 noundef 10, i64 noundef 0, i64 noundef -1, ptr noundef nonnull @.str.8, ptr noundef %22, i32 noundef 0, i32 noundef 2) #39, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %23, metadata !1275, metadata !DIExpression()), !dbg !1280
  br label %8, !dbg !1300

24:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 1) #43, !dbg !1301
  unreachable, !dbg !1301

25:                                               ; preds = %8, %12
  %26 = phi i32 [ 0, %12 ], [ %10, %8 ], !dbg !1296
  call void @llvm.dbg.value(metadata i32 %26, metadata !1276, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 %9, metadata !1275, metadata !DIExpression()), !dbg !1280
  %27 = load i32, ptr @optind, align 4, !dbg !1302, !tbaa !1117
  %28 = icmp eq i32 %27, %0, !dbg !1304
  br i1 %28, label %36, label %29, !dbg !1305

29:                                               ; preds = %25
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1306
  %31 = load i32, ptr @optind, align 4, !dbg !1306, !tbaa !1117
  %32 = sext i32 %31 to i64, !dbg !1306
  %33 = getelementptr inbounds ptr, ptr %1, i64 %32, !dbg !1306
  %34 = load ptr, ptr %33, align 8, !dbg !1306, !tbaa !1054
  %35 = tail call ptr @quote(ptr noundef %34) #39, !dbg !1306
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30, ptr noundef %35) #39, !dbg !1306
  tail call void @usage(i32 noundef 1) #43, !dbg !1308
  unreachable, !dbg !1308

36:                                               ; preds = %25
  %37 = tail call i64 @num_processors(i32 noundef %26) #39, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %37, metadata !1279, metadata !DIExpression()), !dbg !1280
  %38 = icmp ugt i64 %37, %9, !dbg !1310
  %39 = sub i64 %37, %9, !dbg !1312
  %40 = select i1 %38, i64 %39, i64 1, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %40, metadata !1279, metadata !DIExpression()), !dbg !1280
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.15, i64 noundef %40) #39, !dbg !1313
  ret i32 0, !dbg !1314
}

; Function Attrs: nounwind
declare !dbg !1315 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1318 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1319 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1322 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1328 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1330, metadata !DIExpression()), !dbg !1331
  store ptr %0, ptr @file_name, align 8, !dbg !1332, !tbaa !1054
  ret void, !dbg !1333
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1334 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1338, metadata !DIExpression()), !dbg !1339
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1340, !tbaa !1341
  ret void, !dbg !1343
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1344 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1349, !tbaa !1054
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1350
  %3 = icmp eq i32 %2, 0, !dbg !1351
  br i1 %3, label %22, label %4, !dbg !1352

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1353, !tbaa !1341, !range !1354, !noundef !1101
  %6 = icmp eq i8 %5, 0, !dbg !1353
  br i1 %6, label %11, label %7, !dbg !1355

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1356
  %9 = load i32, ptr %8, align 4, !dbg !1356, !tbaa !1117
  %10 = icmp eq i32 %9, 32, !dbg !1357
  br i1 %10, label %22, label %11, !dbg !1358

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #39, !dbg !1359
  call void @llvm.dbg.value(metadata ptr %12, metadata !1346, metadata !DIExpression()), !dbg !1360
  %13 = load ptr, ptr @file_name, align 8, !dbg !1361, !tbaa !1054
  %14 = icmp eq ptr %13, null, !dbg !1361
  %15 = tail call ptr @__errno_location() #42, !dbg !1363
  %16 = load i32, ptr %15, align 4, !dbg !1363, !tbaa !1117
  br i1 %14, label %19, label %17, !dbg !1364

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1365
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #39, !dbg !1365
  br label %20, !dbg !1365

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #39, !dbg !1366
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1367, !tbaa !1117
  tail call void @_exit(i32 noundef %21) #41, !dbg !1368
  unreachable, !dbg !1368

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1369, !tbaa !1054
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1371
  %25 = icmp eq i32 %24, 0, !dbg !1372
  br i1 %25, label %28, label %26, !dbg !1373

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1374, !tbaa !1117
  tail call void @_exit(i32 noundef %27) #41, !dbg !1375
  unreachable, !dbg !1375

28:                                               ; preds = %22
  ret void, !dbg !1376
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1377 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1381 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %1, metadata !1388, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata ptr %2, metadata !1389, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata ptr %3, metadata !1390, metadata !DIExpression()), !dbg !1391
  tail call fastcc void @flush_stdout(), !dbg !1392
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1393, !tbaa !1054
  %6 = icmp eq ptr %5, null, !dbg !1393
  br i1 %6, label %8, label %7, !dbg !1395

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1396
  br label %12, !dbg !1396

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1397, !tbaa !1054
  %10 = tail call ptr @getprogname() #40, !dbg !1397
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %10) #39, !dbg !1397
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1399
  ret void, !dbg !1400
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1401 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1403, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i32 1, metadata !1405, metadata !DIExpression()), !dbg !1410
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1413
  %2 = icmp slt i32 %1, 0, !dbg !1414
  br i1 %2, label %6, label %3, !dbg !1415

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1416, !tbaa !1054
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1416
  br label %6, !dbg !1416

6:                                                ; preds = %3, %0
  ret void, !dbg !1417
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1418 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1420, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i32 %1, metadata !1421, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata ptr %2, metadata !1422, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata ptr %3, metadata !1423, metadata !DIExpression()), !dbg !1424
  %6 = load ptr, ptr @stderr, align 8, !dbg !1425, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %6, metadata !1426, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata ptr %2, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata ptr %3, metadata !1467, metadata !DIExpression()), !dbg !1468
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1470
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1471, !tbaa !1117
  %9 = add i32 %8, 1, !dbg !1471
  store i32 %9, ptr @error_message_count, align 4, !dbg !1471, !tbaa !1117
  %10 = icmp eq i32 %1, 0, !dbg !1472
  br i1 %10, label %20, label %11, !dbg !1474

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1475, metadata !DIExpression()), !dbg !1483
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1485
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1479, metadata !DIExpression()), !dbg !1486
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1487
  call void @llvm.dbg.value(metadata ptr %12, metadata !1478, metadata !DIExpression()), !dbg !1483
  %13 = icmp eq ptr %12, null, !dbg !1488
  br i1 %13, label %14, label %16, !dbg !1490

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #39, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %15, metadata !1478, metadata !DIExpression()), !dbg !1483
  br label %16, !dbg !1492

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1483
  call void @llvm.dbg.value(metadata ptr %17, metadata !1478, metadata !DIExpression()), !dbg !1483
  %18 = load ptr, ptr @stderr, align 8, !dbg !1493, !tbaa !1054
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %17) #39, !dbg !1493
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1494
  br label %20, !dbg !1495

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1496, !tbaa !1054
  call void @llvm.dbg.value(metadata i32 10, metadata !1497, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata ptr %21, metadata !1503, metadata !DIExpression()), !dbg !1504
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1506
  %23 = load ptr, ptr %22, align 8, !dbg !1506, !tbaa !1507
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1506
  %25 = load ptr, ptr %24, align 8, !dbg !1506, !tbaa !1510
  %26 = icmp ult ptr %23, %25, !dbg !1506
  br i1 %26, label %29, label %27, !dbg !1506, !prof !1511

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1506
  br label %31, !dbg !1506

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1506
  store ptr %30, ptr %22, align 8, !dbg !1506, !tbaa !1507
  store i8 10, ptr %23, align 1, !dbg !1506, !tbaa !1126
  br label %31, !dbg !1506

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1512, !tbaa !1054
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1512
  %34 = icmp eq i32 %0, 0, !dbg !1513
  br i1 %34, label %36, label %35, !dbg !1515

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1516
  unreachable, !dbg !1516

36:                                               ; preds = %31
  ret void, !dbg !1517
}

declare !dbg !1518 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1521 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1524 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1527 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1530 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1534 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1538, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %1, metadata !1539, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr %2, metadata !1540, metadata !DIExpression()), !dbg !1547
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1548
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1541, metadata !DIExpression()), !dbg !1549
  call void @llvm.va_start(ptr nonnull %4), !dbg !1550
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1551
  call void @llvm.va_end(ptr nonnull %4), !dbg !1552
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1553
  ret void, !dbg !1553
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !378 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !390, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %1, metadata !391, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata ptr %2, metadata !392, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %3, metadata !393, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata ptr %4, metadata !394, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata ptr %5, metadata !395, metadata !DIExpression()), !dbg !1554
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1555, !tbaa !1117
  %8 = icmp eq i32 %7, 0, !dbg !1555
  br i1 %8, label %23, label %9, !dbg !1557

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1558, !tbaa !1117
  %11 = icmp eq i32 %10, %3, !dbg !1561
  br i1 %11, label %12, label %22, !dbg !1562

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1563, !tbaa !1054
  %14 = icmp eq ptr %13, %2, !dbg !1564
  br i1 %14, label %36, label %15, !dbg !1565

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1566
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1567
  br i1 %18, label %19, label %22, !dbg !1567

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1568
  %21 = icmp eq i32 %20, 0, !dbg !1569
  br i1 %21, label %36, label %22, !dbg !1570

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1571, !tbaa !1054
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1572, !tbaa !1117
  br label %23, !dbg !1573

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1574
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1575, !tbaa !1054
  %25 = icmp eq ptr %24, null, !dbg !1575
  br i1 %25, label %27, label %26, !dbg !1577

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1578
  br label %31, !dbg !1578

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1579, !tbaa !1054
  %29 = tail call ptr @getprogname() #40, !dbg !1579
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %29) #39, !dbg !1579
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1581, !tbaa !1054
  %33 = icmp eq ptr %2, null, !dbg !1581
  %34 = select i1 %33, ptr @.str.3.34, ptr @.str.2.35, !dbg !1581
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1581
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1582
  br label %36, !dbg !1583

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1583
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1584 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1588, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %1, metadata !1589, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata ptr %2, metadata !1590, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %3, metadata !1591, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata ptr %4, metadata !1592, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1595
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1593, metadata !DIExpression()), !dbg !1596
  call void @llvm.va_start(ptr nonnull %6), !dbg !1597
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1598
  call void @llvm.va_end(ptr nonnull %6), !dbg !1599
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1600
  ret void, !dbg !1600
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1601 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1604, !tbaa !1054
  ret ptr %1, !dbg !1605
}

; Function Attrs: nounwind uwtable
define dso_local i64 @num_processors(i32 noundef %0) local_unnamed_addr #10 !dbg !1606 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1610, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 -1, metadata !1611, metadata !DIExpression()), !dbg !1622
  %11 = icmp eq i32 %0, 2, !dbg !1623
  br i1 %11, label %12, label %89, !dbg !1624

12:                                               ; preds = %1
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.43) #39, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %13, metadata !1626, metadata !DIExpression()), !dbg !1635
  %14 = icmp eq ptr %13, null, !dbg !1637
  br i1 %14, label %46, label %15, !dbg !1639

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata ptr %13, metadata !1626, metadata !DIExpression()), !dbg !1635
  %16 = load i8, ptr %13, align 1, !dbg !1640, !tbaa !1126
  %17 = icmp eq i8 %16, 0, !dbg !1641
  br i1 %17, label %45, label %18, !dbg !1642

18:                                               ; preds = %15, %22
  %19 = phi i8 [ %24, %22 ], [ %16, %15 ]
  %20 = phi ptr [ %23, %22 ], [ %13, %15 ]
  call void @llvm.dbg.value(metadata ptr %20, metadata !1626, metadata !DIExpression()), !dbg !1635
  %21 = sext i8 %19 to i32, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %21, metadata !1643, metadata !DIExpression()), !dbg !1649
  switch i32 %21, label %26 [
    i32 32, label %22
    i32 9, label %22
    i32 10, label %22
    i32 11, label %22
    i32 12, label %22
    i32 13, label %22
  ], !dbg !1651

22:                                               ; preds = %18, %18, %18, %18, %18, %18
  %23 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1652
  call void @llvm.dbg.value(metadata ptr %23, metadata !1626, metadata !DIExpression()), !dbg !1635
  %24 = load i8, ptr %23, align 1, !dbg !1640, !tbaa !1126
  %25 = icmp eq i8 %24, 0, !dbg !1641
  br i1 %25, label %45, label %18, !dbg !1642, !llvm.loop !1653

26:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %21, metadata !1655, metadata !DIExpression()), !dbg !1658
  %27 = add nsw i32 %21, -48, !dbg !1660
  %28 = icmp ult i32 %27, 10, !dbg !1660
  br i1 %28, label %29, label %45, !dbg !1661

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #39, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %10, metadata !1631, metadata !DIExpression(DW_OP_deref)), !dbg !1663
  %30 = call i64 @strtoul(ptr noundef nonnull %20, ptr noundef nonnull %10, i32 noundef 10) #39, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %30, metadata !1634, metadata !DIExpression()), !dbg !1663
  %31 = load ptr, ptr %10, align 8, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %31, metadata !1631, metadata !DIExpression()), !dbg !1663
  %32 = load i8, ptr %31, align 1, !dbg !1665, !tbaa !1126
  %33 = icmp eq i8 %32, 0, !dbg !1666
  br i1 %33, label %34, label %35, !dbg !1667

34:                                               ; preds = %39, %29
  call void @llvm.dbg.value(metadata ptr undef, metadata !1631, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #39, !dbg !1668
  br label %46

35:                                               ; preds = %29, %39
  %36 = phi i8 [ %41, %39 ], [ %32, %29 ]
  %37 = phi ptr [ %40, %39 ], [ %31, %29 ]
  call void @llvm.dbg.value(metadata ptr %37, metadata !1631, metadata !DIExpression()), !dbg !1663
  %38 = sext i8 %36 to i32, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %38, metadata !1643, metadata !DIExpression()), !dbg !1669
  switch i32 %38, label %43 [
    i32 32, label %39
    i32 9, label %39
    i32 10, label %39
    i32 11, label %39
    i32 12, label %39
    i32 13, label %39
  ], !dbg !1671

39:                                               ; preds = %35, %35, %35, %35, %35, %35
  call void @llvm.dbg.value(metadata ptr %37, metadata !1631, metadata !DIExpression()), !dbg !1663
  %40 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %40, metadata !1631, metadata !DIExpression()), !dbg !1663
  %41 = load i8, ptr %40, align 1, !dbg !1665, !tbaa !1126
  %42 = icmp eq i8 %41, 0, !dbg !1666
  br i1 %42, label %34, label %35, !dbg !1667, !llvm.loop !1673

43:                                               ; preds = %35
  call void @llvm.dbg.value(metadata ptr undef, metadata !1631, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #39, !dbg !1668
  %44 = icmp eq i8 %36, 44
  br i1 %44, label %46, label %45

45:                                               ; preds = %22, %43, %26, %15
  br label %46, !dbg !1675

46:                                               ; preds = %12, %34, %43, %45
  %47 = phi i64 [ 0, %45 ], [ 0, %12 ], [ %30, %34 ], [ %30, %43 ], !dbg !1635
  call void @llvm.dbg.value(metadata i64 %47, metadata !1612, metadata !DIExpression()), !dbg !1676
  %48 = tail call ptr @getenv(ptr noundef nonnull @.str.1.44) #39, !dbg !1677
  call void @llvm.dbg.value(metadata ptr %48, metadata !1626, metadata !DIExpression()), !dbg !1678
  %49 = icmp eq ptr %48, null, !dbg !1680
  br i1 %49, label %84, label %50, !dbg !1681

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %48, metadata !1626, metadata !DIExpression()), !dbg !1678
  %51 = load i8, ptr %48, align 1, !dbg !1682, !tbaa !1126
  %52 = icmp eq i8 %51, 0, !dbg !1683
  br i1 %52, label %84, label %53, !dbg !1684

53:                                               ; preds = %50, %57
  %54 = phi i8 [ %59, %57 ], [ %51, %50 ]
  %55 = phi ptr [ %58, %57 ], [ %48, %50 ]
  call void @llvm.dbg.value(metadata ptr %55, metadata !1626, metadata !DIExpression()), !dbg !1678
  %56 = sext i8 %54 to i32, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %56, metadata !1643, metadata !DIExpression()), !dbg !1685
  switch i32 %56, label %61 [
    i32 32, label %57
    i32 9, label %57
    i32 10, label %57
    i32 11, label %57
    i32 12, label %57
    i32 13, label %57
  ], !dbg !1687

57:                                               ; preds = %53, %53, %53, %53, %53, %53
  %58 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %58, metadata !1626, metadata !DIExpression()), !dbg !1678
  %59 = load i8, ptr %58, align 1, !dbg !1682, !tbaa !1126
  %60 = icmp eq i8 %59, 0, !dbg !1683
  br i1 %60, label %84, label %53, !dbg !1684, !llvm.loop !1689

61:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 %56, metadata !1655, metadata !DIExpression()), !dbg !1691
  %62 = add nsw i32 %56, -48, !dbg !1693
  %63 = icmp ult i32 %62, 10, !dbg !1693
  br i1 %63, label %64, label %84, !dbg !1694

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #39, !dbg !1695
  call void @llvm.dbg.value(metadata ptr %9, metadata !1631, metadata !DIExpression(DW_OP_deref)), !dbg !1696
  %65 = call i64 @strtoul(ptr noundef nonnull %55, ptr noundef nonnull %9, i32 noundef 10) #39, !dbg !1697
  %66 = freeze i64 %65, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %65, metadata !1634, metadata !DIExpression()), !dbg !1696
  %67 = load ptr, ptr %9, align 8, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %67, metadata !1631, metadata !DIExpression()), !dbg !1696
  %68 = load i8, ptr %67, align 1, !dbg !1700, !tbaa !1126
  %69 = icmp eq i8 %68, 0, !dbg !1701
  br i1 %69, label %70, label %72, !dbg !1702

70:                                               ; preds = %76, %64
  call void @llvm.dbg.value(metadata ptr undef, metadata !1631, metadata !DIExpression()), !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %65, metadata !1615, metadata !DIExpression()), !dbg !1676
  %71 = icmp eq i64 %66, 0, !dbg !1698
  br i1 %71, label %84, label %85, !dbg !1704

72:                                               ; preds = %64, %76
  %73 = phi i8 [ %78, %76 ], [ %68, %64 ]
  %74 = phi ptr [ %77, %76 ], [ %67, %64 ]
  call void @llvm.dbg.value(metadata ptr %74, metadata !1631, metadata !DIExpression()), !dbg !1696
  %75 = sext i8 %73 to i32, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %75, metadata !1643, metadata !DIExpression()), !dbg !1705
  switch i32 %75, label %80 [
    i32 32, label %76
    i32 9, label %76
    i32 10, label %76
    i32 11, label %76
    i32 12, label %76
    i32 13, label %76
  ], !dbg !1707

76:                                               ; preds = %72, %72, %72, %72, %72, %72
  call void @llvm.dbg.value(metadata ptr %74, metadata !1631, metadata !DIExpression()), !dbg !1696
  %77 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !1708
  call void @llvm.dbg.value(metadata ptr %77, metadata !1631, metadata !DIExpression()), !dbg !1696
  %78 = load i8, ptr %77, align 1, !dbg !1700, !tbaa !1126
  %79 = icmp eq i8 %78, 0, !dbg !1701
  br i1 %79, label %70, label %72, !dbg !1702, !llvm.loop !1709

80:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr undef, metadata !1631, metadata !DIExpression()), !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !1703
  %81 = icmp ne i8 %73, 44
  %82 = icmp eq i64 %66, 0
  %83 = or i1 %82, %81
  call void @llvm.dbg.value(metadata i64 %65, metadata !1615, metadata !DIExpression()), !dbg !1676
  br i1 %83, label %84, label %85

84:                                               ; preds = %57, %50, %61, %80, %46, %70
  br label %85, !dbg !1704

85:                                               ; preds = %80, %70, %84
  %86 = phi i64 [ -1, %84 ], [ %66, %70 ], [ %66, %80 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !1615, metadata !DIExpression()), !dbg !1676
  %87 = icmp eq i64 %47, 0, !dbg !1711
  %88 = tail call i64 @llvm.umin.i64(i64 %47, i64 %86), !dbg !1713
  call void @llvm.dbg.value(metadata i32 poison, metadata !1610, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 poison, metadata !1611, metadata !DIExpression()), !dbg !1622
  br i1 %87, label %89, label %243

89:                                               ; preds = %85, %1
  %90 = phi i64 [ %86, %85 ], [ -1, %1 ], !dbg !1714
  %91 = phi i32 [ 1, %85 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !1610, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %90, metadata !1611, metadata !DIExpression()), !dbg !1622
  %92 = icmp eq i32 %91, 1, !dbg !1715
  %93 = icmp ugt i64 %90, 1
  %94 = and i1 %93, %92, !dbg !1716
  br i1 %94, label %95, label %219, !dbg !1716

95:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 -1, metadata !1717, metadata !DIExpression()), !dbg !1722
  %96 = tail call i32 @sched_getscheduler(i32 noundef 0) #39, !dbg !1724
  %97 = add i32 %96, 1, !dbg !1725
  %98 = icmp ult i32 %97, 8, !dbg !1725
  br i1 %98, label %211, label %99, !dbg !1725

99:                                               ; preds = %211, %95
  call void @llvm.dbg.value(metadata i64 -1, metadata !1726, metadata !DIExpression()), !dbg !1791
  %100 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.2.45, ptr noundef nonnull @.str.3.46) #39, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %100, metadata !1729, metadata !DIExpression()), !dbg !1791
  %101 = icmp eq ptr %100, null, !dbg !1795
  br i1 %101, label %216, label %102, !dbg !1797

102:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1791
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #39, !dbg !1798
  call void @llvm.dbg.value(metadata ptr null, metadata !1765, metadata !DIExpression()), !dbg !1791
  store ptr null, ptr %2, align 8, !dbg !1799, !tbaa !1054
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1800
  call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !1791
  store i64 0, ptr %3, align 8, !dbg !1801, !tbaa !1802
  br label %103, !dbg !1803

103:                                              ; preds = %108, %102
  call void @llvm.dbg.value(metadata ptr %2, metadata !1765, metadata !DIExpression(DW_OP_deref)), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %3, metadata !1766, metadata !DIExpression(DW_OP_deref)), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %2, metadata !1804, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata ptr %3, metadata !1809, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata ptr %100, metadata !1810, metadata !DIExpression()), !dbg !1811
  %104 = call i64 @__getdelim(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 10, ptr noundef nonnull %100) #39, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %104, metadata !1767, metadata !DIExpression()), !dbg !1791
  %105 = icmp eq i64 %104, -1, !dbg !1814
  br i1 %105, label %106, label %108, !dbg !1803

106:                                              ; preds = %103
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1791
  %107 = call i32 @rpl_fclose(ptr noundef nonnull %100) #39, !dbg !1815
  call void @llvm.dbg.value(metadata ptr null, metadata !1775, metadata !DIExpression()), !dbg !1791
  br label %148, !dbg !1816

108:                                              ; preds = %103
  %109 = load ptr, ptr %2, align 8, !dbg !1818, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %109, metadata !1765, metadata !DIExpression()), !dbg !1791
  %110 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %109, ptr noundef nonnull dereferenceable(5) @.str.4.47, i64 noundef 4) #40, !dbg !1819
  %111 = icmp eq i32 %110, 0, !dbg !1820
  br i1 %111, label %112, label %103, !dbg !1821, !llvm.loop !1822

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %109, i64 %104, !dbg !1824
  %114 = getelementptr inbounds i8, ptr %113, i64 -1, !dbg !1825
  call void @llvm.dbg.value(metadata ptr %114, metadata !1771, metadata !DIExpression()), !dbg !1826
  %115 = load i8, ptr %114, align 1, !dbg !1827, !tbaa !1126
  %116 = icmp eq i8 %115, 10, !dbg !1829
  br i1 %116, label %117, label %119, !dbg !1830

117:                                              ; preds = %112
  store i8 0, ptr %114, align 1, !dbg !1831, !tbaa !1126
  %118 = load ptr, ptr %2, align 8, !dbg !1832, !tbaa !1054
  br label %119, !dbg !1833

119:                                              ; preds = %117, %112
  %120 = phi ptr [ %118, %117 ], [ %109, %112 ], !dbg !1832
  call void @llvm.dbg.value(metadata ptr %120, metadata !1765, metadata !DIExpression()), !dbg !1791
  %121 = getelementptr inbounds i8, ptr %120, i64 3, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %121, metadata !1764, metadata !DIExpression()), !dbg !1791
  %122 = call i32 @rpl_fclose(ptr noundef nonnull %100) #39, !dbg !1815
  call void @llvm.dbg.value(metadata ptr null, metadata !1775, metadata !DIExpression()), !dbg !1791
  %123 = call i32 @access(ptr noundef nonnull @.str.8.48, i32 noundef 0) #39, !dbg !1835
  %124 = icmp eq i32 %123, 0, !dbg !1854
  br i1 %124, label %125, label %127, !dbg !1855

125:                                              ; preds = %119
  %126 = call noalias dereferenceable_or_null(15) ptr @strdup(ptr noundef nonnull @.str.9.49) #39, !dbg !1856
  br label %145, !dbg !1857

127:                                              ; preds = %119
  call void @llvm.dbg.value(metadata ptr null, metadata !1840, metadata !DIExpression()), !dbg !1858
  %128 = call ptr @setmntent(ptr noundef nonnull @.str.10.50, ptr noundef nonnull @.str.3.46) #39, !dbg !1859
  call void @llvm.dbg.value(metadata ptr %128, metadata !1841, metadata !DIExpression()), !dbg !1858
  %129 = icmp eq ptr %128, null, !dbg !1860
  br i1 %129, label %148, label %130, !dbg !1862

130:                                              ; preds = %127, %133
  %131 = call ptr @getmntent(ptr noundef nonnull %128) #39, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %131, metadata !1842, metadata !DIExpression()), !dbg !1858
  %132 = icmp eq ptr %131, null, !dbg !1864
  br i1 %132, label %142, label %133, !dbg !1865

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.mntent, ptr %131, i64 0, i32 2, !dbg !1866
  %135 = load ptr, ptr %134, align 8, !dbg !1866, !tbaa !1869
  call void @llvm.dbg.value(metadata ptr %135, metadata !1871, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata ptr @.str.11.51, metadata !1874, metadata !DIExpression()), !dbg !1875
  %136 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %135, ptr noundef nonnull dereferenceable(8) @.str.11.51) #40, !dbg !1877
  %137 = icmp eq i32 %136, 0, !dbg !1878
  br i1 %137, label %138, label %130, !dbg !1879, !llvm.loop !1880

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.mntent, ptr %131, i64 0, i32 1, !dbg !1882
  %140 = load ptr, ptr %139, align 8, !dbg !1882, !tbaa !1884
  %141 = call noalias ptr @strdup(ptr noundef %140) #39, !dbg !1885
  call void @llvm.dbg.value(metadata ptr %141, metadata !1840, metadata !DIExpression()), !dbg !1858
  br label %142, !dbg !1886

142:                                              ; preds = %130, %138
  %143 = phi ptr [ %141, %138 ], [ null, %130 ], !dbg !1858
  call void @llvm.dbg.value(metadata ptr %143, metadata !1840, metadata !DIExpression()), !dbg !1858
  %144 = call i32 @endmntent(ptr noundef nonnull %128) #39, !dbg !1887
  br label %145

145:                                              ; preds = %142, %125
  %146 = phi ptr [ %126, %125 ], [ %143, %142 ], !dbg !1858
  call void @llvm.dbg.value(metadata ptr %146, metadata !1775, metadata !DIExpression()), !dbg !1791
  %147 = icmp eq ptr %146, null, !dbg !1888
  br i1 %147, label %148, label %149, !dbg !1889

148:                                              ; preds = %145, %127, %106
  call void @llvm.dbg.value(metadata ptr null, metadata !1775, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1791
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1890
  call void @llvm.dbg.value(metadata ptr null, metadata !1776, metadata !DIExpression()), !dbg !1791
  store ptr null, ptr %4, align 8, !dbg !1891, !tbaa !1054
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !1892
  call void @llvm.dbg.value(metadata i64 0, metadata !1777, metadata !DIExpression()), !dbg !1791
  store i64 0, ptr %5, align 8, !dbg !1893, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 -1, metadata !1726, metadata !DIExpression()), !dbg !1791
  br label %206, !dbg !1894

149:                                              ; preds = %145
  call void @llvm.dbg.value(metadata ptr %146, metadata !1775, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %121, metadata !1764, metadata !DIExpression()), !dbg !1791
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1890
  call void @llvm.dbg.value(metadata ptr null, metadata !1776, metadata !DIExpression()), !dbg !1791
  store ptr null, ptr %4, align 8, !dbg !1891, !tbaa !1054
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !1892
  call void @llvm.dbg.value(metadata i64 0, metadata !1777, metadata !DIExpression()), !dbg !1791
  store i64 0, ptr %5, align 8, !dbg !1893, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 -1, metadata !1726, metadata !DIExpression()), !dbg !1791
  %150 = getelementptr inbounds i8, ptr %120, i64 4
  %151 = load i8, ptr %121, align 1, !dbg !1895, !tbaa !1126
  %152 = icmp eq i8 %151, 0, !dbg !1894
  br i1 %152, label %206, label %153, !dbg !1896

153:                                              ; preds = %149, %202
  %154 = phi i64 [ %192, %202 ], [ -1, %149 ]
  call void @llvm.dbg.value(metadata i64 %154, metadata !1726, metadata !DIExpression()), !dbg !1791
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #39, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1778, metadata !DIExpression()), !dbg !1898
  %155 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %6, i64 noundef 4096, i32 noundef 1, i64 noundef 4096, ptr noundef nonnull @.str.5.52, ptr noundef nonnull %146, ptr noundef nonnull %121) #39, !dbg !1899
  %156 = call noalias ptr @rpl_fopen(ptr noundef nonnull %6, ptr noundef nonnull @.str.3.46) #39, !dbg !1900
  call void @llvm.dbg.value(metadata ptr %156, metadata !1729, metadata !DIExpression()), !dbg !1791
  %157 = icmp eq ptr %156, null, !dbg !1901
  br i1 %157, label %191, label %158, !dbg !1902

158:                                              ; preds = %153
  call void @llvm.dbg.value(metadata ptr %4, metadata !1776, metadata !DIExpression(DW_OP_deref)), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %5, metadata !1777, metadata !DIExpression(DW_OP_deref)), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %4, metadata !1804, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %5, metadata !1809, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %156, metadata !1810, metadata !DIExpression()), !dbg !1903
  %159 = call i64 @__getdelim(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull %156) #39, !dbg !1905
  %160 = icmp eq i64 %159, -1, !dbg !1906
  br i1 %160, label %188, label %161, !dbg !1907

161:                                              ; preds = %158
  %162 = load ptr, ptr %4, align 8, !dbg !1908, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %162, metadata !1776, metadata !DIExpression()), !dbg !1791
  %163 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %162, ptr noundef nonnull dereferenceable(4) @.str.6.53, i64 noundef 3) #40, !dbg !1909
  %164 = icmp eq i32 %163, 0, !dbg !1910
  br i1 %164, label %188, label %165, !dbg !1911

165:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #39, !dbg !1912
  call void @llvm.dbg.value(metadata ptr %162, metadata !1776, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %7, metadata !1783, metadata !DIExpression(DW_OP_deref)), !dbg !1913
  call void @llvm.dbg.value(metadata ptr %8, metadata !1786, metadata !DIExpression(DW_OP_deref)), !dbg !1913
  %166 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %162, ptr noundef nonnull @.str.7.54, ptr noundef nonnull %7, ptr noundef nonnull %8) #39, !dbg !1914
  %167 = icmp eq i32 %166, 2, !dbg !1915
  %168 = load i64, ptr %8, align 8
  call void @llvm.dbg.value(metadata i64 %168, metadata !1786, metadata !DIExpression()), !dbg !1913
  %169 = icmp ne i64 %168, 0
  %170 = select i1 %167, i1 %169, i1 false, !dbg !1916
  br i1 %170, label %171, label %186, !dbg !1916

171:                                              ; preds = %165
  %172 = load i64, ptr %7, align 8, !dbg !1917, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %172, metadata !1783, metadata !DIExpression()), !dbg !1913
  %173 = sitofp i64 %172 to double, !dbg !1918
  %174 = sitofp i64 %168 to double, !dbg !1919
  %175 = fdiv double %173, %174, !dbg !1920
  call void @llvm.dbg.value(metadata double %175, metadata !1787, metadata !DIExpression()), !dbg !1921
  %176 = icmp eq i64 %154, -1, !dbg !1922
  %177 = uitofp i64 %154 to double
  %178 = fcmp olt double %175, %177
  %179 = select i1 %176, i1 true, i1 %178, !dbg !1924
  br i1 %179, label %180, label %186, !dbg !1924

180:                                              ; preds = %171
  %181 = fadd double %175, 5.000000e-01, !dbg !1925
  %182 = fptosi double %181 to i64, !dbg !1925
  %183 = call i64 @llvm.smax.i64(i64 %182, i64 1), !dbg !1925
  call void @llvm.dbg.value(metadata i64 %183, metadata !1726, metadata !DIExpression()), !dbg !1791
  %184 = icmp slt i64 %182, 2, !dbg !1927
  br i1 %184, label %185, label %186, !dbg !1929

185:                                              ; preds = %180
  store i8 0, ptr %121, align 1, !dbg !1930, !tbaa !1126
  br label %186, !dbg !1931

186:                                              ; preds = %185, %180, %171, %165
  %187 = phi i64 [ %154, %165 ], [ 1, %185 ], [ %183, %180 ], [ %154, %171 ], !dbg !1791
  call void @llvm.dbg.value(metadata i64 %187, metadata !1726, metadata !DIExpression()), !dbg !1791
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #39, !dbg !1932
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !1932
  br label %188, !dbg !1933

188:                                              ; preds = %186, %161, %158
  %189 = phi i64 [ %154, %158 ], [ %154, %161 ], [ %187, %186 ]
  call void @llvm.dbg.value(metadata i64 %189, metadata !1726, metadata !DIExpression()), !dbg !1791
  %190 = call i32 @rpl_fclose(ptr noundef nonnull %156) #39, !dbg !1934
  br label %191, !dbg !1934

191:                                              ; preds = %188, %153
  %192 = phi i64 [ %189, %188 ], [ %154, %153 ]
  %193 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %121, i32 noundef 47) #40, !dbg !1936
  call void @llvm.dbg.value(metadata ptr %193, metadata !1790, metadata !DIExpression()), !dbg !1937
  %194 = icmp eq ptr %193, null, !dbg !1938
  br i1 %194, label %195, label %196, !dbg !1940

195:                                              ; preds = %191
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #39, !dbg !1941
  br label %206

196:                                              ; preds = %191
  %197 = icmp eq ptr %193, %121, !dbg !1942
  br i1 %197, label %198, label %201, !dbg !1944

198:                                              ; preds = %196
  %199 = load i8, ptr %150, align 1, !dbg !1945, !tbaa !1126
  %200 = icmp eq i8 %199, 0, !dbg !1945
  br i1 %200, label %201, label %202, !dbg !1946

201:                                              ; preds = %198, %196
  br label %202

202:                                              ; preds = %201, %198
  %203 = phi ptr [ %193, %201 ], [ %150, %198 ]
  store i8 0, ptr %203, align 1, !dbg !1947, !tbaa !1126
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #39, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %192, metadata !1726, metadata !DIExpression()), !dbg !1791
  %204 = load i8, ptr %121, align 1, !dbg !1895, !tbaa !1126
  %205 = icmp eq i8 %204, 0, !dbg !1894
  br i1 %205, label %206, label %153, !dbg !1896

206:                                              ; preds = %202, %195, %149, %148
  %207 = phi ptr [ %146, %195 ], [ null, %148 ], [ %146, %149 ], [ %146, %202 ]
  %208 = phi i64 [ %192, %195 ], [ -1, %148 ], [ -1, %149 ], [ %192, %202 ], !dbg !1791
  call void @llvm.dbg.value(metadata i64 %208, metadata !1726, metadata !DIExpression()), !dbg !1791
  %209 = load ptr, ptr %4, align 8, !dbg !1948, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %209, metadata !1776, metadata !DIExpression()), !dbg !1791
  call void @free(ptr noundef %209) #39, !dbg !1949
  call void @free(ptr noundef %207) #39, !dbg !1950
  %210 = load ptr, ptr %2, align 8, !dbg !1951, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %210, metadata !1765, metadata !DIExpression()), !dbg !1791
  call void @free(ptr noundef %210) #39, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #39, !dbg !1953
  br label %216

211:                                              ; preds = %95
  %212 = trunc i32 %97 to i8, !dbg !1725
  %213 = lshr i8 -115, %212, !dbg !1725
  %214 = and i8 %213, 1, !dbg !1725
  %215 = icmp eq i8 %214, 0, !dbg !1725
  br i1 %215, label %99, label %216, !dbg !1725

216:                                              ; preds = %211, %99, %206
  %217 = phi i64 [ %208, %206 ], [ -1, %99 ], [ -1, %211 ], !dbg !1954
  call void @llvm.dbg.value(metadata i64 %217, metadata !1717, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %217, metadata !1616, metadata !DIExpression()), !dbg !1955
  %218 = call i64 @llvm.umin.i64(i64 %217, i64 %90), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %218, metadata !1611, metadata !DIExpression()), !dbg !1622
  br label %219, !dbg !1957

219:                                              ; preds = %216, %89
  %220 = phi i64 [ %218, %216 ], [ %90, %89 ], !dbg !1622
  call void @llvm.dbg.value(metadata i64 %220, metadata !1611, metadata !DIExpression()), !dbg !1622
  %221 = icmp ugt i64 %220, 1, !dbg !1958
  br i1 %221, label %222, label %243, !dbg !1959

222:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i32 %91, metadata !1960, metadata !DIExpression()), !dbg !1975
  br i1 %92, label %223, label %229, !dbg !1977

223:                                              ; preds = %222
  %224 = call fastcc i64 @num_processors_via_affinity_mask(), !dbg !1978
  call void @llvm.dbg.value(metadata i64 %224, metadata !1963, metadata !DIExpression()), !dbg !1979
  %225 = icmp eq i64 %224, 0, !dbg !1980
  br i1 %225, label %226, label %240

226:                                              ; preds = %223
  %227 = call i64 @sysconf(i32 noundef 84) #39, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %227, metadata !1967, metadata !DIExpression()), !dbg !1983
  %228 = icmp slt i64 %227, 1, !dbg !1984
  br i1 %228, label %239, label %240

229:                                              ; preds = %222
  %230 = call i64 @sysconf(i32 noundef 83) #39, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %230, metadata !1969, metadata !DIExpression()), !dbg !1987
  %231 = add i64 %230, -1, !dbg !1988
  %232 = icmp ult i64 %231, 2, !dbg !1988
  br i1 %232, label %233, label %236, !dbg !1988

233:                                              ; preds = %229
  %234 = call fastcc i64 @num_processors_via_affinity_mask(), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %234, metadata !1972, metadata !DIExpression()), !dbg !1990
  %235 = call i64 @llvm.umax.i64(i64 %234, i64 %230), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %235, metadata !1969, metadata !DIExpression()), !dbg !1987
  br label %236, !dbg !1992

236:                                              ; preds = %233, %229
  %237 = phi i64 [ %235, %233 ], [ %230, %229 ], !dbg !1987
  call void @llvm.dbg.value(metadata i64 %237, metadata !1969, metadata !DIExpression()), !dbg !1987
  %238 = icmp slt i64 %237, 1, !dbg !1993
  br i1 %238, label %239, label %240

239:                                              ; preds = %236, %226
  br label %240, !dbg !1995

240:                                              ; preds = %223, %226, %236, %239
  %241 = phi i64 [ %224, %223 ], [ %227, %226 ], [ 1, %239 ], [ %237, %236 ], !dbg !1975
  call void @llvm.dbg.value(metadata i64 %241, metadata !1619, metadata !DIExpression()), !dbg !1996
  %242 = call i64 @llvm.umin.i64(i64 %241, i64 %220), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %242, metadata !1611, metadata !DIExpression()), !dbg !1622
  br label %243, !dbg !1998

243:                                              ; preds = %219, %240, %85
  %244 = phi i64 [ %88, %85 ], [ %242, %240 ], [ %220, %219 ], !dbg !1622
  ret i64 %244, !dbg !1999
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2000 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !2004 i32 @sched_getscheduler(i32 noundef) local_unnamed_addr #2

declare !dbg !2009 i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2014 noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2017 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: nounwind
declare !dbg !2018 ptr @setmntent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2021 ptr @getmntent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2024 i32 @endmntent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2027 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare !dbg !2030 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2033 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2034 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define internal fastcc i64 @num_processors_via_affinity_mask() unnamed_addr #10 !dbg !2037 {
  %1 = alloca %struct.cpu_set_t, align 8
  call void @llvm.dbg.value(metadata i32 1024, metadata !2039, metadata !DIExpression()), !dbg !2062
  br label %2, !dbg !2063

2:                                                ; preds = %14, %0
  %3 = phi i32 [ 1024, %0 ], [ %18, %14 ], !dbg !2064
  call void @llvm.dbg.value(metadata i32 %3, metadata !2039, metadata !DIExpression()), !dbg !2062
  %4 = zext i32 %3 to i64, !dbg !2065
  %5 = tail call ptr @__sched_cpualloc(i64 noundef %4) #39, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %5, metadata !2041, metadata !DIExpression()), !dbg !2066
  %6 = icmp eq ptr %5, null, !dbg !2067
  br i1 %6, label %21, label %7, !dbg !2069

7:                                                ; preds = %2
  %8 = lshr exact i64 %4, 3, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %8, metadata !2053, metadata !DIExpression()), !dbg !2066
  %9 = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef %8, ptr noundef nonnull %5) #39, !dbg !2071
  %10 = icmp eq i32 %9, 0, !dbg !2072
  br i1 %10, label %11, label %14, !dbg !2073

11:                                               ; preds = %7
  %12 = tail call i32 @__sched_cpucount(i64 noundef %8, ptr noundef nonnull %5) #39, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %12, metadata !2054, metadata !DIExpression()), !dbg !2075
  tail call void @__sched_cpufree(ptr noundef nonnull %5) #39, !dbg !2076
  %13 = zext i32 %12 to i64, !dbg !2077
  br label %30

14:                                               ; preds = %7
  %15 = tail call ptr @__errno_location() #42, !dbg !2078
  %16 = load i32, ptr %15, align 4, !dbg !2078, !tbaa !1117
  %17 = icmp ne i32 %16, 22, !dbg !2080
  tail call void @__sched_cpufree(ptr noundef nonnull %5) #39, !dbg !2066
  %18 = shl i32 %3, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %18, metadata !2039, metadata !DIExpression()), !dbg !2062
  br i1 %20, label %30, label %2, !dbg !2081

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #39, !dbg !2082
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2057, metadata !DIExpression()), !dbg !2083
  %22 = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #39, !dbg !2084
  %23 = icmp eq i32 %22, 0, !dbg !2085
  br i1 %23, label %24, label %29, !dbg !2086

24:                                               ; preds = %21
  %25 = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %1) #39, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %25, metadata !2059, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !2088
  %26 = icmp eq i32 %25, 0, !dbg !2089
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = sext i32 %25 to i64, !dbg !2091
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #39, !dbg !2092
  br label %30

29:                                               ; preds = %21, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #39, !dbg !2092
  br label %30

30:                                               ; preds = %14, %29, %27, %11
  %31 = phi i64 [ %13, %11 ], [ 0, %29 ], [ %28, %27 ], [ 0, %14 ]
  ret i64 %31, !dbg !2093
}

; Function Attrs: nounwind
declare !dbg !2094 i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !2097 ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2100 i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2103 i32 @__sched_cpucount(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2108 void @__sched_cpufree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2113, metadata !DIExpression()), !dbg !2116
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2117
  call void @llvm.dbg.value(metadata ptr %2, metadata !2114, metadata !DIExpression()), !dbg !2116
  %3 = icmp eq ptr %2, null, !dbg !2118
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2118
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2118
  call void @llvm.dbg.value(metadata ptr %5, metadata !2115, metadata !DIExpression()), !dbg !2116
  %6 = ptrtoint ptr %5 to i64, !dbg !2119
  %7 = ptrtoint ptr %0 to i64, !dbg !2119
  %8 = sub i64 %6, %7, !dbg !2119
  %9 = icmp sgt i64 %8, 6, !dbg !2121
  br i1 %9, label %10, label %19, !dbg !2122

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %11, metadata !2124, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !2129, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 7, metadata !2130, metadata !DIExpression()), !dbg !2131
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.59, i64 7), !dbg !2133
  %13 = icmp eq i32 %12, 0, !dbg !2134
  br i1 %13, label %14, label %19, !dbg !2135

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2113, metadata !DIExpression()), !dbg !2116
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.60, i64 noundef 3) #40, !dbg !2136
  %16 = icmp eq i32 %15, 0, !dbg !2139
  %17 = select i1 %16, i64 3, i64 0, !dbg !2140
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2140
  br label %19, !dbg !2140

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2116
  call void @llvm.dbg.value(metadata ptr %21, metadata !2115, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %20, metadata !2113, metadata !DIExpression()), !dbg !2116
  store ptr %20, ptr @program_name, align 8, !dbg !2141, !tbaa !1054
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2142, !tbaa !1054
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2143, !tbaa !1054
  ret void, !dbg !2144
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !463 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !470, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata ptr %1, metadata !471, metadata !DIExpression()), !dbg !2145
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2146
  call void @llvm.dbg.value(metadata ptr %5, metadata !472, metadata !DIExpression()), !dbg !2145
  %6 = icmp eq ptr %5, %0, !dbg !2147
  br i1 %6, label %7, label %14, !dbg !2149

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2151
  call void @llvm.dbg.declare(metadata ptr %4, metadata !478, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr %4, metadata !2153, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata ptr %4, metadata !2162, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 0, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 8, metadata !2169, metadata !DIExpression()), !dbg !2170
  store i64 0, ptr %4, align 8, !dbg !2172
  call void @llvm.dbg.value(metadata ptr %3, metadata !473, metadata !DIExpression(DW_OP_deref)), !dbg !2145
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2173
  %9 = icmp eq i64 %8, 2, !dbg !2175
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !473, metadata !DIExpression()), !dbg !2145
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2176
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2177
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2145
  ret ptr %15, !dbg !2177
}

; Function Attrs: nounwind
declare !dbg !2178 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2184 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2192
  %2 = tail call ptr @__errno_location() #42, !dbg !2193
  %3 = load i32, ptr %2, align 4, !dbg !2193, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %3, metadata !2190, metadata !DIExpression()), !dbg !2192
  %4 = icmp eq ptr %0, null, !dbg !2194
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2194
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !2195
  call void @llvm.dbg.value(metadata ptr %6, metadata !2191, metadata !DIExpression()), !dbg !2192
  store i32 %3, ptr %2, align 4, !dbg !2196, !tbaa !1117
  ret ptr %6, !dbg !2197
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2198 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2204, metadata !DIExpression()), !dbg !2205
  %2 = icmp eq ptr %0, null, !dbg !2206
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2206
  %4 = load i32, ptr %3, align 8, !dbg !2207, !tbaa !2208
  ret i32 %4, !dbg !2210
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2211 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %1, metadata !2216, metadata !DIExpression()), !dbg !2217
  %3 = icmp eq ptr %0, null, !dbg !2218
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2218
  store i32 %1, ptr %4, align 8, !dbg !2219, !tbaa !2208
  ret void, !dbg !2220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2221 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2225, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8 %1, metadata !2226, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 %2, metadata !2227, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8 %1, metadata !2228, metadata !DIExpression()), !dbg !2233
  %4 = icmp eq ptr %0, null, !dbg !2234
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2234
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2235
  %7 = lshr i8 %1, 5, !dbg !2236
  %8 = zext i8 %7 to i64, !dbg !2236
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2237
  call void @llvm.dbg.value(metadata ptr %9, metadata !2229, metadata !DIExpression()), !dbg !2233
  %10 = and i8 %1, 31, !dbg !2238
  %11 = zext i8 %10 to i32, !dbg !2238
  call void @llvm.dbg.value(metadata i32 %11, metadata !2231, metadata !DIExpression()), !dbg !2233
  %12 = load i32, ptr %9, align 4, !dbg !2239, !tbaa !1117
  %13 = lshr i32 %12, %11, !dbg !2240
  %14 = and i32 %13, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %14, metadata !2232, metadata !DIExpression()), !dbg !2233
  %15 = xor i32 %13, %2, !dbg !2242
  %16 = and i32 %15, 1, !dbg !2242
  %17 = shl nuw i32 %16, %11, !dbg !2243
  %18 = xor i32 %17, %12, !dbg !2244
  store i32 %18, ptr %9, align 4, !dbg !2244, !tbaa !1117
  ret i32 %14, !dbg !2245
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2246 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2250, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 %1, metadata !2251, metadata !DIExpression()), !dbg !2253
  %3 = icmp eq ptr %0, null, !dbg !2254
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2256
  call void @llvm.dbg.value(metadata ptr %4, metadata !2250, metadata !DIExpression()), !dbg !2253
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2257
  %6 = load i32, ptr %5, align 4, !dbg !2257, !tbaa !2258
  call void @llvm.dbg.value(metadata i32 %6, metadata !2252, metadata !DIExpression()), !dbg !2253
  store i32 %1, ptr %5, align 4, !dbg !2259, !tbaa !2258
  ret i32 %6, !dbg !2260
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2261 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2265, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata ptr %1, metadata !2266, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata ptr %2, metadata !2267, metadata !DIExpression()), !dbg !2268
  %4 = icmp eq ptr %0, null, !dbg !2269
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %5, metadata !2265, metadata !DIExpression()), !dbg !2268
  store i32 10, ptr %5, align 8, !dbg !2272, !tbaa !2208
  %6 = icmp ne ptr %1, null, !dbg !2273
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2275
  br i1 %8, label %10, label %9, !dbg !2275

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2276
  unreachable, !dbg !2276

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2277
  store ptr %1, ptr %11, align 8, !dbg !2278, !tbaa !2279
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2280
  store ptr %2, ptr %12, align 8, !dbg !2281, !tbaa !2282
  ret void, !dbg !2283
}

; Function Attrs: noreturn nounwind
declare !dbg !2284 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2285 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2289, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %1, metadata !2290, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr %2, metadata !2291, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %3, metadata !2292, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr %4, metadata !2293, metadata !DIExpression()), !dbg !2297
  %6 = icmp eq ptr %4, null, !dbg !2298
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2298
  call void @llvm.dbg.value(metadata ptr %7, metadata !2294, metadata !DIExpression()), !dbg !2297
  %8 = tail call ptr @__errno_location() #42, !dbg !2299
  %9 = load i32, ptr %8, align 4, !dbg !2299, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %9, metadata !2295, metadata !DIExpression()), !dbg !2297
  %10 = load i32, ptr %7, align 8, !dbg !2300, !tbaa !2208
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2301
  %12 = load i32, ptr %11, align 4, !dbg !2301, !tbaa !2258
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2302
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2303
  %15 = load ptr, ptr %14, align 8, !dbg !2303, !tbaa !2279
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2304
  %17 = load ptr, ptr %16, align 8, !dbg !2304, !tbaa !2282
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2305
  call void @llvm.dbg.value(metadata i64 %18, metadata !2296, metadata !DIExpression()), !dbg !2297
  store i32 %9, ptr %8, align 4, !dbg !2306, !tbaa !1117
  ret i64 %18, !dbg !2307
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2308 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2314, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %1, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %2, metadata !2316, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %3, metadata !2317, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %4, metadata !2318, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %5, metadata !2319, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %6, metadata !2320, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %7, metadata !2321, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %8, metadata !2322, metadata !DIExpression()), !dbg !2376
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2377
  %17 = icmp eq i64 %16, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i1 %17, metadata !2323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2376
  call void @llvm.dbg.value(metadata i64 0, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 0, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr null, metadata !2326, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 0, metadata !2327, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2328, metadata !DIExpression()), !dbg !2376
  %18 = trunc i32 %5 to i8, !dbg !2379
  %19 = lshr i8 %18, 1, !dbg !2379
  %20 = and i8 %19, 1, !dbg !2379
  call void @llvm.dbg.value(metadata i8 %20, metadata !2329, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 1, metadata !2331, metadata !DIExpression()), !dbg !2376
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2380

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2381
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2382
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2383
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2384
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2376
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2385
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2386
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %39, metadata !2331, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %38, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %37, metadata !2329, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %36, metadata !2328, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %35, metadata !2327, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %34, metadata !2326, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %33, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 0, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %32, metadata !2317, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %31, metadata !2322, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %30, metadata !2321, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %29, metadata !2318, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.label(metadata !2369), !dbg !2387
  call void @llvm.dbg.value(metadata i8 0, metadata !2332, metadata !DIExpression()), !dbg !2376
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
  ], !dbg !2388

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2329, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 5, metadata !2318, metadata !DIExpression()), !dbg !2376
  br label %115, !dbg !2389

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2329, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 5, metadata !2318, metadata !DIExpression()), !dbg !2376
  %43 = and i8 %37, 1, !dbg !2390
  %44 = icmp eq i8 %43, 0, !dbg !2390
  br i1 %44, label %45, label %115, !dbg !2389

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2392
  br i1 %46, label %115, label %47, !dbg !2395

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2392, !tbaa !1126
  br label %115, !dbg !2392

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.73, metadata !573, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %29, metadata !574, metadata !DIExpression()), !dbg !2396
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.11.73, i32 noundef 5) #39, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %49, metadata !575, metadata !DIExpression()), !dbg !2396
  %50 = icmp eq ptr %49, @.str.11.73, !dbg !2401
  br i1 %50, label %51, label %60, !dbg !2403

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2404
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %13, metadata !577, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata ptr %13, metadata !2407, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %13, metadata !2415, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i64 8, metadata !2419, metadata !DIExpression()), !dbg !2420
  store i64 0, ptr %13, align 8, !dbg !2422
  call void @llvm.dbg.value(metadata ptr %12, metadata !576, metadata !DIExpression(DW_OP_deref)), !dbg !2396
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2423
  %53 = icmp eq i64 %52, 3, !dbg !2425
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !576, metadata !DIExpression()), !dbg !2396
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2426
  %57 = icmp eq i32 %29, 9, !dbg !2426
  %58 = select i1 %57, ptr @.str.10.75, ptr @.str.12.76, !dbg !2426
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2426
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2427
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2427
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2396
  call void @llvm.dbg.value(metadata ptr %61, metadata !2321, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr @.str.12.76, metadata !573, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %29, metadata !574, metadata !DIExpression()), !dbg !2428
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.12.76, i32 noundef 5) #39, !dbg !2430
  call void @llvm.dbg.value(metadata ptr %62, metadata !575, metadata !DIExpression()), !dbg !2428
  %63 = icmp eq ptr %62, @.str.12.76, !dbg !2431
  br i1 %63, label %64, label %73, !dbg !2432

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2434
  call void @llvm.dbg.declare(metadata ptr %11, metadata !577, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata ptr %11, metadata !2407, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %11, metadata !2415, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 8, metadata !2419, metadata !DIExpression()), !dbg !2438
  store i64 0, ptr %11, align 8, !dbg !2440
  call void @llvm.dbg.value(metadata ptr %10, metadata !576, metadata !DIExpression(DW_OP_deref)), !dbg !2428
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2441
  %66 = icmp eq i64 %65, 3, !dbg !2442
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !576, metadata !DIExpression()), !dbg !2428
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2443
  %70 = icmp eq i32 %29, 9, !dbg !2443
  %71 = select i1 %70, ptr @.str.10.75, ptr @.str.12.76, !dbg !2443
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2443
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2444
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2322, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %74, metadata !2321, metadata !DIExpression()), !dbg !2376
  %76 = and i8 %37, 1, !dbg !2445
  %77 = icmp eq i8 %76, 0, !dbg !2445
  br i1 %77, label %78, label %93, !dbg !2446

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2333, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i64 0, metadata !2324, metadata !DIExpression()), !dbg !2376
  %79 = load i8, ptr %74, align 1, !dbg !2448, !tbaa !1126
  %80 = icmp eq i8 %79, 0, !dbg !2450
  br i1 %80, label %93, label %81, !dbg !2450

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2333, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i64 %84, metadata !2324, metadata !DIExpression()), !dbg !2376
  %85 = icmp ult i64 %84, %40, !dbg !2451
  br i1 %85, label %86, label %88, !dbg !2454

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2451
  store i8 %82, ptr %87, align 1, !dbg !2451, !tbaa !1126
  br label %88, !dbg !2451

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %89, metadata !2324, metadata !DIExpression()), !dbg !2376
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2455
  call void @llvm.dbg.value(metadata ptr %90, metadata !2333, metadata !DIExpression()), !dbg !2447
  %91 = load i8, ptr %90, align 1, !dbg !2448, !tbaa !1126
  %92 = icmp eq i8 %91, 0, !dbg !2450
  br i1 %92, label %93, label %81, !dbg !2450, !llvm.loop !2456

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2458
  call void @llvm.dbg.value(metadata i64 %94, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 1, metadata !2328, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %75, metadata !2326, metadata !DIExpression()), !dbg !2376
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %95, metadata !2327, metadata !DIExpression()), !dbg !2376
  br label %115, !dbg !2460

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2328, metadata !DIExpression()), !dbg !2376
  br label %97, !dbg !2461

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8 %98, metadata !2328, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 1, metadata !2329, metadata !DIExpression()), !dbg !2376
  br label %99, !dbg !2462

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2384
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8 %101, metadata !2329, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %100, metadata !2328, metadata !DIExpression()), !dbg !2376
  %102 = and i8 %101, 1, !dbg !2463
  %103 = icmp eq i8 %102, 0, !dbg !2463
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2465
  br label %105, !dbg !2465

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2376
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2379
  call void @llvm.dbg.value(metadata i8 %107, metadata !2329, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %106, metadata !2328, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 2, metadata !2318, metadata !DIExpression()), !dbg !2376
  %108 = and i8 %107, 1, !dbg !2466
  %109 = icmp eq i8 %108, 0, !dbg !2466
  br i1 %109, label %110, label %115, !dbg !2468

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2469
  br i1 %111, label %115, label %112, !dbg !2472

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2469, !tbaa !1126
  br label %115, !dbg !2469

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2329, metadata !DIExpression()), !dbg !2376
  br label %115, !dbg !2473

114:                                              ; preds = %28
  call void @abort() #41, !dbg !2474
  unreachable, !dbg !2474

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2458
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.75, %45 ], [ @.str.10.75, %47 ], [ @.str.10.75, %42 ], [ %34, %28 ], [ @.str.12.76, %110 ], [ @.str.12.76, %112 ], [ @.str.12.76, %105 ], [ @.str.10.75, %41 ], !dbg !2376
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2376
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2376
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8 %123, metadata !2329, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %122, metadata !2328, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %121, metadata !2327, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %120, metadata !2326, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %119, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %118, metadata !2322, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %117, metadata !2321, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %116, metadata !2318, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 0, metadata !2338, metadata !DIExpression()), !dbg !2475
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
  br label %138, !dbg !2476

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2458
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2381
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2385
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2386
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2477
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2478
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %145, metadata !2338, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %144, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %143, metadata !2331, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %142, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %141, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %140, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %139, metadata !2317, metadata !DIExpression()), !dbg !2376
  %147 = icmp eq i64 %139, -1, !dbg !2479
  br i1 %147, label %148, label %152, !dbg !2480

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2481
  %150 = load i8, ptr %149, align 1, !dbg !2481, !tbaa !1126
  %151 = icmp eq i8 %150, 0, !dbg !2482
  br i1 %151, label %627, label %154, !dbg !2483

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2484
  br i1 %153, label %627, label %154, !dbg !2483

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2485
  br i1 %129, label %155, label %170, !dbg !2486

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2488
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2489
  br i1 %157, label %158, label %160, !dbg !2489

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %159, metadata !2317, metadata !DIExpression()), !dbg !2376
  br label %160, !dbg !2491

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2491
  call void @llvm.dbg.value(metadata i64 %161, metadata !2317, metadata !DIExpression()), !dbg !2376
  %162 = icmp ugt i64 %156, %161, !dbg !2492
  br i1 %162, label %170, label %163, !dbg !2493

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2494
  call void @llvm.dbg.value(metadata ptr %164, metadata !2495, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata ptr %120, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %121, metadata !2499, metadata !DIExpression()), !dbg !2500
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2502
  %166 = icmp ne i32 %165, 0, !dbg !2503
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2504
  %168 = xor i1 %166, true, !dbg !2504
  %169 = zext i1 %168 to i8, !dbg !2504
  br i1 %167, label %170, label %688, !dbg !2504

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2485
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2485
  call void @llvm.dbg.value(metadata i8 %173, metadata !2340, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %171, metadata !2317, metadata !DIExpression()), !dbg !2376
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2505
  %175 = load i8, ptr %174, align 1, !dbg !2505, !tbaa !1126
  call void @llvm.dbg.value(metadata i8 %175, metadata !2345, metadata !DIExpression()), !dbg !2485
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
  ], !dbg !2506

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2507

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2508

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2343, metadata !DIExpression()), !dbg !2485
  %179 = and i8 %144, 1, !dbg !2512
  %180 = icmp eq i8 %179, 0, !dbg !2512
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2512
  br i1 %181, label %182, label %198, !dbg !2512

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2514
  br i1 %183, label %184, label %186, !dbg !2518

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2514
  store i8 39, ptr %185, align 1, !dbg !2514, !tbaa !1126
  br label %186, !dbg !2514

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %187, metadata !2324, metadata !DIExpression()), !dbg !2376
  %188 = icmp ult i64 %187, %146, !dbg !2519
  br i1 %188, label %189, label %191, !dbg !2522

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2519
  store i8 36, ptr %190, align 1, !dbg !2519, !tbaa !1126
  br label %191, !dbg !2519

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %192, metadata !2324, metadata !DIExpression()), !dbg !2376
  %193 = icmp ult i64 %192, %146, !dbg !2523
  br i1 %193, label %194, label %196, !dbg !2526

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2523
  store i8 39, ptr %195, align 1, !dbg !2523, !tbaa !1126
  br label %196, !dbg !2523

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %197, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2376
  br label %198, !dbg !2527

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2376
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8 %200, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %199, metadata !2324, metadata !DIExpression()), !dbg !2376
  %201 = icmp ult i64 %199, %146, !dbg !2528
  br i1 %201, label %202, label %204, !dbg !2531

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2528
  store i8 92, ptr %203, align 1, !dbg !2528, !tbaa !1126
  br label %204, !dbg !2528

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %205, metadata !2324, metadata !DIExpression()), !dbg !2376
  br i1 %126, label %206, label %491, !dbg !2532

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2534
  %208 = icmp ult i64 %207, %171, !dbg !2535
  br i1 %208, label %209, label %480, !dbg !2536

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2537
  %211 = load i8, ptr %210, align 1, !dbg !2537, !tbaa !1126
  %212 = add i8 %211, -48, !dbg !2538
  %213 = icmp ult i8 %212, 10, !dbg !2538
  br i1 %213, label %214, label %480, !dbg !2538

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2539
  br i1 %215, label %216, label %218, !dbg !2543

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2539
  store i8 48, ptr %217, align 1, !dbg !2539, !tbaa !1126
  br label %218, !dbg !2539

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2543
  call void @llvm.dbg.value(metadata i64 %219, metadata !2324, metadata !DIExpression()), !dbg !2376
  %220 = icmp ult i64 %219, %146, !dbg !2544
  br i1 %220, label %221, label %223, !dbg !2547

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2544
  store i8 48, ptr %222, align 1, !dbg !2544, !tbaa !1126
  br label %223, !dbg !2544

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2547
  call void @llvm.dbg.value(metadata i64 %224, metadata !2324, metadata !DIExpression()), !dbg !2376
  br label %480, !dbg !2548

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2549

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2550

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2551

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2553

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2555
  %231 = icmp ult i64 %230, %171, !dbg !2556
  br i1 %231, label %232, label %480, !dbg !2557

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2558
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2559
  %235 = load i8, ptr %234, align 1, !dbg !2559, !tbaa !1126
  %236 = icmp eq i8 %235, 63, !dbg !2560
  br i1 %236, label %237, label %480, !dbg !2561

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2562
  %239 = load i8, ptr %238, align 1, !dbg !2562, !tbaa !1126
  %240 = sext i8 %239 to i32, !dbg !2562
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
  ], !dbg !2563

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2564

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2345, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %230, metadata !2338, metadata !DIExpression()), !dbg !2475
  %243 = icmp ult i64 %140, %146, !dbg !2566
  br i1 %243, label %244, label %246, !dbg !2569

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2566
  store i8 63, ptr %245, align 1, !dbg !2566, !tbaa !1126
  br label %246, !dbg !2566

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %247, metadata !2324, metadata !DIExpression()), !dbg !2376
  %248 = icmp ult i64 %247, %146, !dbg !2570
  br i1 %248, label %249, label %251, !dbg !2573

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2570
  store i8 34, ptr %250, align 1, !dbg !2570, !tbaa !1126
  br label %251, !dbg !2570

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %252, metadata !2324, metadata !DIExpression()), !dbg !2376
  %253 = icmp ult i64 %252, %146, !dbg !2574
  br i1 %253, label %254, label %256, !dbg !2577

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2574
  store i8 34, ptr %255, align 1, !dbg !2574, !tbaa !1126
  br label %256, !dbg !2574

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %257, metadata !2324, metadata !DIExpression()), !dbg !2376
  %258 = icmp ult i64 %257, %146, !dbg !2578
  br i1 %258, label %259, label %261, !dbg !2581

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2578
  store i8 63, ptr %260, align 1, !dbg !2578, !tbaa !1126
  br label %261, !dbg !2578

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %262, metadata !2324, metadata !DIExpression()), !dbg !2376
  br label %480, !dbg !2582

263:                                              ; preds = %170
  br label %274, !dbg !2583

264:                                              ; preds = %170
  br label %274, !dbg !2584

265:                                              ; preds = %170
  br label %272, !dbg !2585

266:                                              ; preds = %170
  br label %272, !dbg !2586

267:                                              ; preds = %170
  br label %274, !dbg !2587

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2588

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2589

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2592

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2594

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2595
  call void @llvm.dbg.label(metadata !2370), !dbg !2596
  br i1 %134, label %274, label %670, !dbg !2597

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2595
  call void @llvm.dbg.label(metadata !2372), !dbg !2599
  br i1 %125, label %535, label %491, !dbg !2600

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2601

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2602, !tbaa !1126
  %279 = icmp eq i8 %278, 0, !dbg !2604
  br i1 %279, label %280, label %480, !dbg !2605

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2606
  br i1 %281, label %282, label %480, !dbg !2608

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2485
  br label %283, !dbg !2609

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2485
  call void @llvm.dbg.value(metadata i8 %284, metadata !2344, metadata !DIExpression()), !dbg !2485
  br i1 %134, label %480, label %670, !dbg !2610

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2485
  br i1 %133, label %286, label %480, !dbg !2612

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2613

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2616
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2618
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2618
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %292, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %291, metadata !2325, metadata !DIExpression()), !dbg !2376
  %293 = icmp ult i64 %140, %292, !dbg !2619
  br i1 %293, label %294, label %296, !dbg !2622

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2619
  store i8 39, ptr %295, align 1, !dbg !2619, !tbaa !1126
  br label %296, !dbg !2619

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %297, metadata !2324, metadata !DIExpression()), !dbg !2376
  %298 = icmp ult i64 %297, %292, !dbg !2623
  br i1 %298, label %299, label %301, !dbg !2626

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2623
  store i8 92, ptr %300, align 1, !dbg !2623, !tbaa !1126
  br label %301, !dbg !2623

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %302, metadata !2324, metadata !DIExpression()), !dbg !2376
  %303 = icmp ult i64 %302, %292, !dbg !2627
  br i1 %303, label %304, label %306, !dbg !2630

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2627
  store i8 39, ptr %305, align 1, !dbg !2627, !tbaa !1126
  br label %306, !dbg !2627

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %307, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2332, metadata !DIExpression()), !dbg !2376
  br label %480, !dbg !2631

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2632

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2346, metadata !DIExpression()), !dbg !2633
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !2634
  %311 = load ptr, ptr %310, align 8, !dbg !2634, !tbaa !1054
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2634
  %314 = load i16, ptr %313, align 2, !dbg !2634, !tbaa !1158
  %315 = lshr i16 %314, 14, !dbg !2636
  %316 = trunc i16 %315 to i8, !dbg !2636
  %317 = and i8 %316, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i8 %317, metadata !2349, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %171, metadata !2317, metadata !DIExpression()), !dbg !2376
  %318 = icmp eq i8 %317, 0, !dbg !2637
  call void @llvm.dbg.value(metadata i1 %318, metadata !2344, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2485
  br label %368, !dbg !2638

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2350, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %14, metadata !2407, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %14, metadata !2415, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64 8, metadata !2419, metadata !DIExpression()), !dbg !2643
  store i64 0, ptr %14, align 8, !dbg !2645
  call void @llvm.dbg.value(metadata i64 0, metadata !2346, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 1, metadata !2349, metadata !DIExpression()), !dbg !2633
  %320 = icmp eq i64 %171, -1, !dbg !2646
  br i1 %320, label %321, label %323, !dbg !2648

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %322, metadata !2317, metadata !DIExpression()), !dbg !2376
  br label %323, !dbg !2650

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2485
  call void @llvm.dbg.value(metadata i64 %324, metadata !2317, metadata !DIExpression()), !dbg !2376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2651
  %325 = sub i64 %324, %145, !dbg !2652
  call void @llvm.dbg.value(metadata ptr %15, metadata !2353, metadata !DIExpression(DW_OP_deref)), !dbg !2653
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %326, metadata !2357, metadata !DIExpression()), !dbg !2653
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2655

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2346, metadata !DIExpression()), !dbg !2633
  %328 = icmp ugt i64 %324, %145, !dbg !2656
  br i1 %328, label %331, label %329, !dbg !2658

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2349, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 0, metadata !2346, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %324, metadata !2317, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i1 true, metadata !2344, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2485
  br label %368, !dbg !2638

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2349, metadata !DIExpression()), !dbg !2633
  br label %360, !dbg !2661

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2346, metadata !DIExpression()), !dbg !2633
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2663
  %335 = load i8, ptr %334, align 1, !dbg !2663, !tbaa !1126
  %336 = icmp eq i8 %335, 0, !dbg !2658
  br i1 %336, label %363, label %337, !dbg !2664

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %338, metadata !2346, metadata !DIExpression()), !dbg !2633
  %339 = add i64 %338, %145, !dbg !2666
  %340 = icmp eq i64 %338, %325, !dbg !2656
  br i1 %340, label %363, label %331, !dbg !2658, !llvm.loop !2667

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2668
  %344 = and i1 %343, %133, !dbg !2668
  call void @llvm.dbg.value(metadata i64 1, metadata !2358, metadata !DIExpression()), !dbg !2669
  br i1 %344, label %345, label %354, !dbg !2668

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2358, metadata !DIExpression()), !dbg !2669
  %347 = add i64 %346, %145, !dbg !2670
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2672
  %349 = load i8, ptr %348, align 1, !dbg !2672, !tbaa !1126
  %350 = sext i8 %349 to i32, !dbg !2672
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2673

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %352, metadata !2358, metadata !DIExpression()), !dbg !2669
  %353 = icmp eq i64 %352, %326, !dbg !2675
  br i1 %353, label %354, label %345, !dbg !2676, !llvm.loop !2677

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2679, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %355, metadata !2353, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %355, metadata !2681, metadata !DIExpression()), !dbg !2689
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !2691
  %357 = icmp ne i32 %356, 0, !dbg !2692
  %358 = zext i1 %357 to i8, !dbg !2693
  call void @llvm.dbg.value(metadata i8 %358, metadata !2349, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %326, metadata !2346, metadata !DIExpression()), !dbg !2633
  br label %363, !dbg !2694

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2349, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 0, metadata !2346, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2660
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2349, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 0, metadata !2346, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %324, metadata !2317, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i1 %361, metadata !2344, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2485
  br label %368, !dbg !2638

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2349, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %364, metadata !2346, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %324, metadata !2317, metadata !DIExpression()), !dbg !2376
  %366 = icmp eq i8 %365, 0, !dbg !2637
  call void @llvm.dbg.value(metadata i1 %366, metadata !2344, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2485
  %367 = icmp ugt i64 %364, 1, !dbg !2695
  br i1 %367, label %374, label %368, !dbg !2638

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2696
  br i1 %373, label %374, label %480, !dbg !2696

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %379, metadata !2366, metadata !DIExpression()), !dbg !2698
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2699

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2376
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2477
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2475
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2485
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2700
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2485
  call void @llvm.dbg.value(metadata i8 %387, metadata !2345, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %386, metadata !2343, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %385, metadata !2340, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %384, metadata !2338, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %383, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %382, metadata !2324, metadata !DIExpression()), !dbg !2376
  br i1 %380, label %388, label %434, !dbg !2701

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2706

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2343, metadata !DIExpression()), !dbg !2485
  %390 = and i8 %383, 1, !dbg !2709
  %391 = icmp eq i8 %390, 0, !dbg !2709
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2709
  br i1 %392, label %393, label %409, !dbg !2709

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2711
  br i1 %394, label %395, label %397, !dbg !2715

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2711
  store i8 39, ptr %396, align 1, !dbg !2711, !tbaa !1126
  br label %397, !dbg !2711

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %398, metadata !2324, metadata !DIExpression()), !dbg !2376
  %399 = icmp ult i64 %398, %146, !dbg !2716
  br i1 %399, label %400, label %402, !dbg !2719

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2716
  store i8 36, ptr %401, align 1, !dbg !2716, !tbaa !1126
  br label %402, !dbg !2716

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %403, metadata !2324, metadata !DIExpression()), !dbg !2376
  %404 = icmp ult i64 %403, %146, !dbg !2720
  br i1 %404, label %405, label %407, !dbg !2723

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2720
  store i8 39, ptr %406, align 1, !dbg !2720, !tbaa !1126
  br label %407, !dbg !2720

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %408, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2376
  br label %409, !dbg !2724

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2376
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8 %411, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %410, metadata !2324, metadata !DIExpression()), !dbg !2376
  %412 = icmp ult i64 %410, %146, !dbg !2725
  br i1 %412, label %413, label %415, !dbg !2728

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2725
  store i8 92, ptr %414, align 1, !dbg !2725, !tbaa !1126
  br label %415, !dbg !2725

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %416, metadata !2324, metadata !DIExpression()), !dbg !2376
  %417 = icmp ult i64 %416, %146, !dbg !2729
  br i1 %417, label %418, label %422, !dbg !2732

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2729
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2729
  store i8 %420, ptr %421, align 1, !dbg !2729, !tbaa !1126
  br label %422, !dbg !2729

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %423, metadata !2324, metadata !DIExpression()), !dbg !2376
  %424 = icmp ult i64 %423, %146, !dbg !2733
  br i1 %424, label %425, label %430, !dbg !2736

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2733
  %428 = or i8 %427, 48, !dbg !2733
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2733
  store i8 %428, ptr %429, align 1, !dbg !2733, !tbaa !1126
  br label %430, !dbg !2733

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %431, metadata !2324, metadata !DIExpression()), !dbg !2376
  %432 = and i8 %387, 7, !dbg !2737
  %433 = or i8 %432, 48, !dbg !2738
  call void @llvm.dbg.value(metadata i8 %433, metadata !2345, metadata !DIExpression()), !dbg !2485
  br label %443, !dbg !2739

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2740
  %436 = icmp eq i8 %435, 0, !dbg !2740
  br i1 %436, label %443, label %437, !dbg !2742

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2743
  br i1 %438, label %439, label %441, !dbg !2747

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2743
  store i8 92, ptr %440, align 1, !dbg !2743, !tbaa !1126
  br label %441, !dbg !2743

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %442, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2485
  br label %443, !dbg !2748

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2376
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2477
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2485
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2485
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2485
  call void @llvm.dbg.value(metadata i8 %448, metadata !2345, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %447, metadata !2343, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %446, metadata !2340, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %445, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %444, metadata !2324, metadata !DIExpression()), !dbg !2376
  %449 = add i64 %384, 1, !dbg !2749
  %450 = icmp ugt i64 %379, %449, !dbg !2751
  br i1 %450, label %451, label %478, !dbg !2752

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2753
  %453 = icmp ne i8 %452, 0, !dbg !2753
  %454 = and i8 %447, 1, !dbg !2753
  %455 = icmp eq i8 %454, 0, !dbg !2753
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2753
  br i1 %456, label %457, label %468, !dbg !2753

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2756
  br i1 %458, label %459, label %461, !dbg !2760

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2756
  store i8 39, ptr %460, align 1, !dbg !2756, !tbaa !1126
  br label %461, !dbg !2756

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %462, metadata !2324, metadata !DIExpression()), !dbg !2376
  %463 = icmp ult i64 %462, %146, !dbg !2761
  br i1 %463, label %464, label %466, !dbg !2764

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2761
  store i8 39, ptr %465, align 1, !dbg !2761, !tbaa !1126
  br label %466, !dbg !2761

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %467, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2332, metadata !DIExpression()), !dbg !2376
  br label %468, !dbg !2765

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2766
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8 %470, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %469, metadata !2324, metadata !DIExpression()), !dbg !2376
  %471 = icmp ult i64 %469, %146, !dbg !2767
  br i1 %471, label %472, label %474, !dbg !2770

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2767
  store i8 %448, ptr %473, align 1, !dbg !2767, !tbaa !1126
  br label %474, !dbg !2767

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %475, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %449, metadata !2338, metadata !DIExpression()), !dbg !2475
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2771
  %477 = load i8, ptr %476, align 1, !dbg !2771, !tbaa !1126
  call void @llvm.dbg.value(metadata i8 %477, metadata !2345, metadata !DIExpression()), !dbg !2485
  br label %381, !dbg !2772, !llvm.loop !2773

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i8 %448, metadata !2345, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %479, metadata !2344, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %447, metadata !2343, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %446, metadata !2340, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %384, metadata !2338, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %445, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %444, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %378, metadata !2317, metadata !DIExpression()), !dbg !2376
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2776
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2376
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2381
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2376
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2376
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2475
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2485
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2485
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2485
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %489, metadata !2345, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %488, metadata !2344, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %487, metadata !2343, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %173, metadata !2340, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %486, metadata !2338, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %485, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %484, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %483, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %482, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %481, metadata !2317, metadata !DIExpression()), !dbg !2376
  br i1 %127, label %502, label %491, !dbg !2777

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
  br i1 %137, label %503, label %524, !dbg !2779

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2780

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
  %514 = lshr i8 %505, 5, !dbg !2781
  %515 = zext i8 %514 to i64, !dbg !2781
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2782
  %517 = load i32, ptr %516, align 4, !dbg !2782, !tbaa !1117
  %518 = and i8 %505, 31, !dbg !2783
  %519 = zext i8 %518 to i32, !dbg !2783
  %520 = shl nuw i32 1, %519, !dbg !2784
  %521 = and i32 %517, %520, !dbg !2784
  %522 = icmp eq i32 %521, 0, !dbg !2784
  %523 = and i1 %172, %522, !dbg !2785
  br i1 %523, label %573, label %535, !dbg !2785

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
  br i1 %172, label %573, label %535, !dbg !2786

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2776
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2376
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2381
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2385
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2477
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2787
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2485
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2485
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %543, metadata !2345, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %542, metadata !2344, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %541, metadata !2338, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %540, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %539, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %538, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %537, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %536, metadata !2317, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.label(metadata !2373), !dbg !2788
  br i1 %132, label %545, label %674, !dbg !2789

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2343, metadata !DIExpression()), !dbg !2485
  %546 = and i8 %540, 1, !dbg !2791
  %547 = icmp eq i8 %546, 0, !dbg !2791
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2791
  br i1 %548, label %549, label %565, !dbg !2791

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2793
  br i1 %550, label %551, label %553, !dbg !2797

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2793
  store i8 39, ptr %552, align 1, !dbg !2793, !tbaa !1126
  br label %553, !dbg !2793

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %554, metadata !2324, metadata !DIExpression()), !dbg !2376
  %555 = icmp ult i64 %554, %544, !dbg !2798
  br i1 %555, label %556, label %558, !dbg !2801

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2798
  store i8 36, ptr %557, align 1, !dbg !2798, !tbaa !1126
  br label %558, !dbg !2798

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %559, metadata !2324, metadata !DIExpression()), !dbg !2376
  %560 = icmp ult i64 %559, %544, !dbg !2802
  br i1 %560, label %561, label %563, !dbg !2805

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2802
  store i8 39, ptr %562, align 1, !dbg !2802, !tbaa !1126
  br label %563, !dbg !2802

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %564, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2376
  br label %565, !dbg !2806

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2485
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8 %567, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %566, metadata !2324, metadata !DIExpression()), !dbg !2376
  %568 = icmp ult i64 %566, %544, !dbg !2807
  br i1 %568, label %569, label %571, !dbg !2810

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2807
  store i8 92, ptr %570, align 1, !dbg !2807, !tbaa !1126
  br label %571, !dbg !2807

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %544, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %543, metadata !2345, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %542, metadata !2344, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 1, metadata !2343, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %541, metadata !2338, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %567, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %539, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %538, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %572, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %536, metadata !2317, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.label(metadata !2374), !dbg !2811
  br label %600, !dbg !2812

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2776
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2376
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2381
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2385
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2477
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2787
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2485
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2485
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2815
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %582, metadata !2345, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %581, metadata !2344, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %580, metadata !2343, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %579, metadata !2338, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %578, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %577, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %576, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %575, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %574, metadata !2317, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.label(metadata !2374), !dbg !2811
  %584 = and i8 %578, 1, !dbg !2812
  %585 = icmp ne i8 %584, 0, !dbg !2812
  %586 = and i8 %580, 1, !dbg !2812
  %587 = icmp eq i8 %586, 0, !dbg !2812
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2812
  br i1 %588, label %589, label %600, !dbg !2812

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2816
  br i1 %590, label %591, label %593, !dbg !2820

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2816
  store i8 39, ptr %592, align 1, !dbg !2816, !tbaa !1126
  br label %593, !dbg !2816

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %594, metadata !2324, metadata !DIExpression()), !dbg !2376
  %595 = icmp ult i64 %594, %583, !dbg !2821
  br i1 %595, label %596, label %598, !dbg !2824

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2821
  store i8 39, ptr %597, align 1, !dbg !2821, !tbaa !1126
  br label %598, !dbg !2821

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %599, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2332, metadata !DIExpression()), !dbg !2376
  br label %600, !dbg !2825

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2485
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8 %609, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %608, metadata !2324, metadata !DIExpression()), !dbg !2376
  %610 = icmp ult i64 %608, %601, !dbg !2826
  br i1 %610, label %611, label %613, !dbg !2829

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2826
  store i8 %602, ptr %612, align 1, !dbg !2826, !tbaa !1126
  br label %613, !dbg !2826

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %614, metadata !2324, metadata !DIExpression()), !dbg !2376
  %615 = icmp eq i8 %603, 0, !dbg !2830
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2832
  call void @llvm.dbg.value(metadata i8 %616, metadata !2331, metadata !DIExpression()), !dbg !2376
  br label %617, !dbg !2833

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2776
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2376
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2381
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2385
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2386
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2477
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2787
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %624, metadata !2338, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %623, metadata !2332, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %622, metadata !2331, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %621, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %620, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %619, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %618, metadata !2317, metadata !DIExpression()), !dbg !2376
  %626 = add i64 %624, 1, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %626, metadata !2338, metadata !DIExpression()), !dbg !2475
  br label %138, !dbg !2835, !llvm.loop !2836

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2315, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %143, metadata !2331, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %142, metadata !2330, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %141, metadata !2325, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %140, metadata !2324, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %139, metadata !2317, metadata !DIExpression()), !dbg !2376
  %628 = icmp eq i64 %140, 0, !dbg !2838
  %629 = and i1 %133, %628, !dbg !2840
  %630 = xor i1 %629, true, !dbg !2840
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2840
  br i1 %631, label %632, label %670, !dbg !2840

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2841
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2841
  br i1 %636, label %637, label %646, !dbg !2841

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2843
  %639 = icmp eq i8 %638, 0, !dbg !2843
  br i1 %639, label %642, label %640, !dbg !2846

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2847
  br label %694, !dbg !2848

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2849
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2851
  br i1 %645, label %28, label %646, !dbg !2851

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2852
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2854
  br i1 %649, label %650, label %665, !dbg !2854

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2326, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %140, metadata !2324, metadata !DIExpression()), !dbg !2376
  %651 = load i8, ptr %120, align 1, !dbg !2855, !tbaa !1126
  %652 = icmp eq i8 %651, 0, !dbg !2858
  br i1 %652, label %665, label %653, !dbg !2858

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2326, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %656, metadata !2324, metadata !DIExpression()), !dbg !2376
  %657 = icmp ult i64 %656, %146, !dbg !2859
  br i1 %657, label %658, label %660, !dbg !2862

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2859
  store i8 %654, ptr %659, align 1, !dbg !2859, !tbaa !1126
  br label %660, !dbg !2859

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %661, metadata !2324, metadata !DIExpression()), !dbg !2376
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2863
  call void @llvm.dbg.value(metadata ptr %662, metadata !2326, metadata !DIExpression()), !dbg !2376
  %663 = load i8, ptr %662, align 1, !dbg !2855, !tbaa !1126
  %664 = icmp eq i8 %663, 0, !dbg !2858
  br i1 %664, label %665, label %653, !dbg !2858, !llvm.loop !2864

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2458
  call void @llvm.dbg.value(metadata i64 %666, metadata !2324, metadata !DIExpression()), !dbg !2376
  %667 = icmp ult i64 %666, %146, !dbg !2866
  br i1 %667, label %668, label %694, !dbg !2868

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2869
  store i8 0, ptr %669, align 1, !dbg !2870, !tbaa !1126
  br label %694, !dbg !2869

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2375), !dbg !2871
  %672 = icmp eq i8 %124, 0, !dbg !2872
  %673 = select i1 %672, i32 2, i32 4, !dbg !2872
  br label %684, !dbg !2872

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2872
  %678 = select i1 %677, i32 2, i32 4, !dbg !2872
  br label %679, !dbg !2874

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2375), !dbg !2871
  %683 = icmp eq i32 %116, 2, !dbg !2874
  br i1 %683, label %684, label %688, !dbg !2872

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2872

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2318, metadata !DIExpression()), !dbg !2376
  %692 = and i32 %5, -3, !dbg !2875
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2876
  br label %694, !dbg !2877

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2878
}

; Function Attrs: nounwind
declare !dbg !2879 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2882 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2883 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2885 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %2, metadata !2891, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2898, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr null, metadata !2899, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %2, metadata !2900, metadata !DIExpression()), !dbg !2906
  %4 = icmp eq ptr %2, null, !dbg !2908
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2908
  call void @llvm.dbg.value(metadata ptr %5, metadata !2901, metadata !DIExpression()), !dbg !2906
  %6 = tail call ptr @__errno_location() #42, !dbg !2909
  %7 = load i32, ptr %6, align 4, !dbg !2909, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %7, metadata !2902, metadata !DIExpression()), !dbg !2906
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2910
  %9 = load i32, ptr %8, align 4, !dbg !2910, !tbaa !2258
  %10 = or i32 %9, 1, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %10, metadata !2903, metadata !DIExpression()), !dbg !2906
  %11 = load i32, ptr %5, align 8, !dbg !2912, !tbaa !2208
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2913
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2914
  %14 = load ptr, ptr %13, align 8, !dbg !2914, !tbaa !2279
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2915
  %16 = load ptr, ptr %15, align 8, !dbg !2915, !tbaa !2282
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2916
  %18 = add i64 %17, 1, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %18, metadata !2904, metadata !DIExpression()), !dbg !2906
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2918
  call void @llvm.dbg.value(metadata ptr %19, metadata !2905, metadata !DIExpression()), !dbg !2906
  %20 = load i32, ptr %5, align 8, !dbg !2919, !tbaa !2208
  %21 = load ptr, ptr %13, align 8, !dbg !2920, !tbaa !2279
  %22 = load ptr, ptr %15, align 8, !dbg !2921, !tbaa !2282
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2922
  store i32 %7, ptr %6, align 4, !dbg !2923, !tbaa !1117
  ret ptr %19, !dbg !2924
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2898, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %2, metadata !2899, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %3, metadata !2900, metadata !DIExpression()), !dbg !2925
  %5 = icmp eq ptr %3, null, !dbg !2926
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2926
  call void @llvm.dbg.value(metadata ptr %6, metadata !2901, metadata !DIExpression()), !dbg !2925
  %7 = tail call ptr @__errno_location() #42, !dbg !2927
  %8 = load i32, ptr %7, align 4, !dbg !2927, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %8, metadata !2902, metadata !DIExpression()), !dbg !2925
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2928
  %10 = load i32, ptr %9, align 4, !dbg !2928, !tbaa !2258
  %11 = icmp eq ptr %2, null, !dbg !2929
  %12 = zext i1 %11 to i32, !dbg !2929
  %13 = or i32 %10, %12, !dbg !2930
  call void @llvm.dbg.value(metadata i32 %13, metadata !2903, metadata !DIExpression()), !dbg !2925
  %14 = load i32, ptr %6, align 8, !dbg !2931, !tbaa !2208
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2932
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2933
  %17 = load ptr, ptr %16, align 8, !dbg !2933, !tbaa !2279
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2934
  %19 = load ptr, ptr %18, align 8, !dbg !2934, !tbaa !2282
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2935
  %21 = add i64 %20, 1, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %21, metadata !2904, metadata !DIExpression()), !dbg !2925
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2937
  call void @llvm.dbg.value(metadata ptr %22, metadata !2905, metadata !DIExpression()), !dbg !2925
  %23 = load i32, ptr %6, align 8, !dbg !2938, !tbaa !2208
  %24 = load ptr, ptr %16, align 8, !dbg !2939, !tbaa !2279
  %25 = load ptr, ptr %18, align 8, !dbg !2940, !tbaa !2282
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2941
  store i32 %8, ptr %7, align 4, !dbg !2942, !tbaa !1117
  br i1 %11, label %28, label %27, !dbg !2943

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2944, !tbaa !1802
  br label %28, !dbg !2946

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2947
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2948 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2953, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %1, metadata !2950, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 1, metadata !2951, metadata !DIExpression()), !dbg !2955
  %2 = load i32, ptr @nslots, align 4, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 1, metadata !2951, metadata !DIExpression()), !dbg !2955
  %3 = icmp sgt i32 %2, 1, !dbg !2956
  br i1 %3, label %4, label %6, !dbg !2958

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2956
  br label %10, !dbg !2958

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2959
  %8 = load ptr, ptr %7, align 8, !dbg !2959, !tbaa !2961
  %9 = icmp eq ptr %8, @slot0, !dbg !2963
  br i1 %9, label %17, label %16, !dbg !2964

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2951, metadata !DIExpression()), !dbg !2955
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2965
  %13 = load ptr, ptr %12, align 8, !dbg !2965, !tbaa !2961
  tail call void @free(ptr noundef %13) #39, !dbg !2966
  %14 = add nuw nsw i64 %11, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %14, metadata !2951, metadata !DIExpression()), !dbg !2955
  %15 = icmp eq i64 %14, %5, !dbg !2956
  br i1 %15, label %6, label %10, !dbg !2958, !llvm.loop !2968

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2970
  store i64 256, ptr @slotvec0, align 8, !dbg !2972, !tbaa !2973
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2974, !tbaa !2961
  br label %17, !dbg !2975

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2976
  br i1 %18, label %20, label %19, !dbg !2978

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2979
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2981, !tbaa !1054
  br label %20, !dbg !2982

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2983, !tbaa !1117
  ret void, !dbg !2984
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2985 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !2989
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2990
  ret ptr %3, !dbg !2991
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2992 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %1, metadata !2997, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %2, metadata !2998, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %3, metadata !2999, metadata !DIExpression()), !dbg !3012
  %6 = tail call ptr @__errno_location() #42, !dbg !3013
  %7 = load i32, ptr %6, align 4, !dbg !3013, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %7, metadata !3000, metadata !DIExpression()), !dbg !3012
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3014, !tbaa !1054
  call void @llvm.dbg.value(metadata ptr %8, metadata !3001, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3002, metadata !DIExpression()), !dbg !3012
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3015
  br i1 %9, label %10, label %11, !dbg !3015

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3017
  unreachable, !dbg !3017

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3018, !tbaa !1117
  %13 = icmp sgt i32 %12, %0, !dbg !3019
  br i1 %13, label %32, label %14, !dbg !3020

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3021
  call void @llvm.dbg.value(metadata i1 %15, metadata !3003, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3022
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3023
  %16 = sext i32 %12 to i64, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %16, metadata !3006, metadata !DIExpression()), !dbg !3022
  store i64 %16, ptr %5, align 8, !dbg !3025, !tbaa !1802
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3026
  %18 = add nuw nsw i32 %0, 1, !dbg !3027
  %19 = sub i32 %18, %12, !dbg !3028
  %20 = sext i32 %19 to i64, !dbg !3029
  call void @llvm.dbg.value(metadata ptr %5, metadata !3006, metadata !DIExpression(DW_OP_deref)), !dbg !3022
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3030
  call void @llvm.dbg.value(metadata ptr %21, metadata !3001, metadata !DIExpression()), !dbg !3012
  store ptr %21, ptr @slotvec, align 8, !dbg !3031, !tbaa !1054
  br i1 %15, label %22, label %23, !dbg !3032

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3033, !tbaa.struct !3035
  br label %23, !dbg !3036

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3037, !tbaa !1117
  %25 = sext i32 %24 to i64, !dbg !3038
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3038
  %27 = load i64, ptr %5, align 8, !dbg !3039, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %27, metadata !3006, metadata !DIExpression()), !dbg !3022
  %28 = sub nsw i64 %27, %25, !dbg !3040
  %29 = shl i64 %28, 4, !dbg !3041
  call void @llvm.dbg.value(metadata ptr %26, metadata !2415, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %29, metadata !2419, metadata !DIExpression()), !dbg !3042
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3044
  %30 = load i64, ptr %5, align 8, !dbg !3045, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %30, metadata !3006, metadata !DIExpression()), !dbg !3022
  %31 = trunc i64 %30 to i32, !dbg !3045
  store i32 %31, ptr @nslots, align 4, !dbg !3046, !tbaa !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3047
  br label %32, !dbg !3048

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3012
  call void @llvm.dbg.value(metadata ptr %33, metadata !3001, metadata !DIExpression()), !dbg !3012
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3049
  %36 = load i64, ptr %35, align 8, !dbg !3050, !tbaa !2973
  call void @llvm.dbg.value(metadata i64 %36, metadata !3007, metadata !DIExpression()), !dbg !3051
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3052
  %38 = load ptr, ptr %37, align 8, !dbg !3052, !tbaa !2961
  call void @llvm.dbg.value(metadata ptr %38, metadata !3009, metadata !DIExpression()), !dbg !3051
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3053
  %40 = load i32, ptr %39, align 4, !dbg !3053, !tbaa !2258
  %41 = or i32 %40, 1, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %41, metadata !3010, metadata !DIExpression()), !dbg !3051
  %42 = load i32, ptr %3, align 8, !dbg !3055, !tbaa !2208
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3056
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3057
  %45 = load ptr, ptr %44, align 8, !dbg !3057, !tbaa !2279
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3058
  %47 = load ptr, ptr %46, align 8, !dbg !3058, !tbaa !2282
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %48, metadata !3011, metadata !DIExpression()), !dbg !3051
  %49 = icmp ugt i64 %36, %48, !dbg !3060
  br i1 %49, label %60, label %50, !dbg !3062

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %51, metadata !3007, metadata !DIExpression()), !dbg !3051
  store i64 %51, ptr %35, align 8, !dbg !3065, !tbaa !2973
  %52 = icmp eq ptr %38, @slot0, !dbg !3066
  br i1 %52, label %54, label %53, !dbg !3068

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3069
  br label %54, !dbg !3069

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %55, metadata !3009, metadata !DIExpression()), !dbg !3051
  store ptr %55, ptr %37, align 8, !dbg !3071, !tbaa !2961
  %56 = load i32, ptr %3, align 8, !dbg !3072, !tbaa !2208
  %57 = load ptr, ptr %44, align 8, !dbg !3073, !tbaa !2279
  %58 = load ptr, ptr %46, align 8, !dbg !3074, !tbaa !2282
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3075
  br label %60, !dbg !3076

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3051
  call void @llvm.dbg.value(metadata ptr %61, metadata !3009, metadata !DIExpression()), !dbg !3051
  store i32 %7, ptr %6, align 4, !dbg !3077, !tbaa !1117
  ret ptr %61, !dbg !3078
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3079 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3083, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata ptr %1, metadata !3084, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %2, metadata !3085, metadata !DIExpression()), !dbg !3086
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3087
  ret ptr %4, !dbg !3088
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3089 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !3093
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3095
  ret ptr %2, !dbg !3096
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3097 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3101, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %1, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 0, metadata !3083, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %0, metadata !3084, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %1, metadata !3085, metadata !DIExpression()), !dbg !3104
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3106
  ret ptr %3, !dbg !3107
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3108 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3112, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 %1, metadata !3113, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %2, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3117
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3115, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %1, metadata !3123, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3131, !alias.scope !3119
  %5 = icmp eq i32 %1, 10, !dbg !3132
  br i1 %5, label %6, label %7, !dbg !3134

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3135, !noalias !3119
  unreachable, !dbg !3135

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3136, !tbaa !2208, !alias.scope !3119
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3137
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3138
  ret ptr %8, !dbg !3139
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3140 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i32 %1, metadata !3145, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %3, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3150
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3148, metadata !DIExpression()), !dbg !3151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3152), !dbg !3155
  call void @llvm.dbg.value(metadata i32 %1, metadata !3123, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3128, metadata !DIExpression()), !dbg !3158
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3158, !alias.scope !3152
  %6 = icmp eq i32 %1, 10, !dbg !3159
  br i1 %6, label %7, label %8, !dbg !3160

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3161, !noalias !3152
  unreachable, !dbg !3161

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3162, !tbaa !2208, !alias.scope !3152
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3163
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3164
  ret ptr %9, !dbg !3165
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3166 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3170, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %1, metadata !3171, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i32 0, metadata !3112, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %0, metadata !3113, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %1, metadata !3114, metadata !DIExpression()), !dbg !3173
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3175
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3115, metadata !DIExpression()), !dbg !3176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3177), !dbg !3180
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3128, metadata !DIExpression()), !dbg !3183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3183, !alias.scope !3177
  %4 = icmp eq i32 %0, 10, !dbg !3184
  br i1 %4, label %5, label %6, !dbg !3185

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3186, !noalias !3177
  unreachable, !dbg !3186

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3187, !tbaa !2208, !alias.scope !3177
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3188
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3189
  ret ptr %7, !dbg !3190
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3191 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3195, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %1, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %2, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 0, metadata !3144, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr %1, metadata !3146, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %2, metadata !3147, metadata !DIExpression()), !dbg !3199
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3201
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3148, metadata !DIExpression()), !dbg !3202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3203), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3209, !alias.scope !3203
  %5 = icmp eq i32 %0, 10, !dbg !3210
  br i1 %5, label %6, label %7, !dbg !3211

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3212, !noalias !3203
  unreachable, !dbg !3212

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3213, !tbaa !2208, !alias.scope !3203
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3214
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3215
  ret ptr %8, !dbg !3216
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3217 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %1, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %2, metadata !3223, metadata !DIExpression()), !dbg !3225
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3226
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3224, metadata !DIExpression()), !dbg !3227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3228, !tbaa.struct !3229
  call void @llvm.dbg.value(metadata ptr %4, metadata !2225, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %2, metadata !2226, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 1, metadata !2227, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %2, metadata !2228, metadata !DIExpression()), !dbg !3230
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3232
  %6 = lshr i8 %2, 5, !dbg !3233
  %7 = zext i8 %6 to i64, !dbg !3233
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3234
  call void @llvm.dbg.value(metadata ptr %8, metadata !2229, metadata !DIExpression()), !dbg !3230
  %9 = and i8 %2, 31, !dbg !3235
  %10 = zext i8 %9 to i32, !dbg !3235
  call void @llvm.dbg.value(metadata i32 %10, metadata !2231, metadata !DIExpression()), !dbg !3230
  %11 = load i32, ptr %8, align 4, !dbg !3236, !tbaa !1117
  %12 = lshr i32 %11, %10, !dbg !3237
  call void @llvm.dbg.value(metadata i32 %12, metadata !2232, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3230
  %13 = and i32 %12, 1, !dbg !3238
  %14 = xor i32 %13, 1, !dbg !3238
  %15 = shl nuw i32 %14, %10, !dbg !3239
  %16 = xor i32 %15, %11, !dbg !3240
  store i32 %16, ptr %8, align 4, !dbg !3240, !tbaa !1117
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3241
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3242
  ret ptr %17, !dbg !3243
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3244 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3248, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8 %1, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 -1, metadata !3222, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 %1, metadata !3223, metadata !DIExpression()), !dbg !3251
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3253
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3224, metadata !DIExpression()), !dbg !3254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3255, !tbaa.struct !3229
  call void @llvm.dbg.value(metadata ptr %3, metadata !2225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8 %1, metadata !2226, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 1, metadata !2227, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8 %1, metadata !2228, metadata !DIExpression()), !dbg !3256
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3258
  %5 = lshr i8 %1, 5, !dbg !3259
  %6 = zext i8 %5 to i64, !dbg !3259
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %7, metadata !2229, metadata !DIExpression()), !dbg !3256
  %8 = and i8 %1, 31, !dbg !3261
  %9 = zext i8 %8 to i32, !dbg !3261
  call void @llvm.dbg.value(metadata i32 %9, metadata !2231, metadata !DIExpression()), !dbg !3256
  %10 = load i32, ptr %7, align 4, !dbg !3262, !tbaa !1117
  %11 = lshr i32 %10, %9, !dbg !3263
  call void @llvm.dbg.value(metadata i32 %11, metadata !2232, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3256
  %12 = and i32 %11, 1, !dbg !3264
  %13 = xor i32 %12, 1, !dbg !3264
  %14 = shl nuw i32 %13, %9, !dbg !3265
  %15 = xor i32 %14, %10, !dbg !3266
  store i32 %15, ptr %7, align 4, !dbg !3266, !tbaa !1117
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3267
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3268
  ret ptr %16, !dbg !3269
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3270 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3272, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %0, metadata !3248, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 58, metadata !3249, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 -1, metadata !3222, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 58, metadata !3223, metadata !DIExpression()), !dbg !3276
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3278
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3224, metadata !DIExpression()), !dbg !3279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3280, !tbaa.struct !3229
  call void @llvm.dbg.value(metadata ptr %2, metadata !2225, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 58, metadata !2226, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 1, metadata !2227, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 58, metadata !2228, metadata !DIExpression()), !dbg !3281
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %3, metadata !2229, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 26, metadata !2231, metadata !DIExpression()), !dbg !3281
  %4 = load i32, ptr %3, align 4, !dbg !3284, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %4, metadata !2232, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3281
  %5 = or i32 %4, 67108864, !dbg !3285
  store i32 %5, ptr %3, align 4, !dbg !3285, !tbaa !1117
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3286
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3287
  ret ptr %6, !dbg !3288
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3289 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3292, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %1, metadata !3222, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 58, metadata !3223, metadata !DIExpression()), !dbg !3294
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3296
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3224, metadata !DIExpression()), !dbg !3297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3298, !tbaa.struct !3229
  call void @llvm.dbg.value(metadata ptr %3, metadata !2225, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 58, metadata !2226, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 1, metadata !2227, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 58, metadata !2228, metadata !DIExpression()), !dbg !3299
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3301
  call void @llvm.dbg.value(metadata ptr %4, metadata !2229, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 26, metadata !2231, metadata !DIExpression()), !dbg !3299
  %5 = load i32, ptr %4, align 4, !dbg !3302, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %5, metadata !2232, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3299
  %6 = or i32 %5, 67108864, !dbg !3303
  store i32 %6, ptr %4, align 4, !dbg !3303, !tbaa !1117
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3304
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3305
  ret ptr %7, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3307 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3128, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3313
  call void @llvm.dbg.value(metadata i32 %0, metadata !3309, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 %1, metadata !3310, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %2, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3316
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3312, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %1, metadata !3123, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 0, metadata !3128, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3318
  %5 = icmp eq i32 %1, 10, !dbg !3319
  br i1 %5, label %6, label %7, !dbg !3320

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3321, !noalias !3322
  unreachable, !dbg !3321

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3128, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3318
  store i32 %1, ptr %4, align 8, !dbg !3325, !tbaa.struct !3229
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3325
  call void @llvm.dbg.value(metadata ptr %4, metadata !2225, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i8 58, metadata !2226, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 1, metadata !2227, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i8 58, metadata !2228, metadata !DIExpression()), !dbg !3326
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3328
  call void @llvm.dbg.value(metadata ptr %9, metadata !2229, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 26, metadata !2231, metadata !DIExpression()), !dbg !3326
  %10 = load i32, ptr %9, align 4, !dbg !3329, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %10, metadata !2232, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3326
  %11 = or i32 %10, 67108864, !dbg !3330
  store i32 %11, ptr %9, align 4, !dbg !3330, !tbaa !1117
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3331
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3332
  ret ptr %12, !dbg !3333
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3334 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3338, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata ptr %1, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata ptr %2, metadata !3340, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata ptr %3, metadata !3341, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 %0, metadata !3343, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %1, metadata !3348, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %2, metadata !3349, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %3, metadata !3350, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 -1, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3355
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3352, metadata !DIExpression()), !dbg !3356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3357, !tbaa.struct !3229
  call void @llvm.dbg.value(metadata ptr %5, metadata !2265, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata ptr %1, metadata !2266, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata ptr %2, metadata !2267, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata ptr %5, metadata !2265, metadata !DIExpression()), !dbg !3358
  store i32 10, ptr %5, align 8, !dbg !3360, !tbaa !2208
  %6 = icmp ne ptr %1, null, !dbg !3361
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3362
  br i1 %8, label %10, label %9, !dbg !3362

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3363
  unreachable, !dbg !3363

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3364
  store ptr %1, ptr %11, align 8, !dbg !3365, !tbaa !2279
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3366
  store ptr %2, ptr %12, align 8, !dbg !3367, !tbaa !2282
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3368
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3369
  ret ptr %13, !dbg !3370
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3344 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3343, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %1, metadata !3348, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %2, metadata !3349, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %3, metadata !3350, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %4, metadata !3351, metadata !DIExpression()), !dbg !3371
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3372
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3352, metadata !DIExpression()), !dbg !3373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3374, !tbaa.struct !3229
  call void @llvm.dbg.value(metadata ptr %6, metadata !2265, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata ptr %1, metadata !2266, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata ptr %2, metadata !2267, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata ptr %6, metadata !2265, metadata !DIExpression()), !dbg !3375
  store i32 10, ptr %6, align 8, !dbg !3377, !tbaa !2208
  %7 = icmp ne ptr %1, null, !dbg !3378
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3379
  br i1 %9, label %11, label %10, !dbg !3379

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3380
  unreachable, !dbg !3380

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3381
  store ptr %1, ptr %12, align 8, !dbg !3382, !tbaa !2279
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3383
  store ptr %2, ptr %13, align 8, !dbg !3384, !tbaa !2282
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3385
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3386
  ret ptr %14, !dbg !3387
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3388 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3392, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %1, metadata !3393, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %2, metadata !3394, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 0, metadata !3338, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata ptr %0, metadata !3339, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata ptr %1, metadata !3340, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata ptr %2, metadata !3341, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 0, metadata !3343, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %0, metadata !3348, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %1, metadata !3349, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %2, metadata !3350, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 -1, metadata !3351, metadata !DIExpression()), !dbg !3398
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3400
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3402, !tbaa.struct !3229
  call void @llvm.dbg.value(metadata ptr %4, metadata !2265, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %0, metadata !2266, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %1, metadata !2267, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %4, metadata !2265, metadata !DIExpression()), !dbg !3403
  store i32 10, ptr %4, align 8, !dbg !3405, !tbaa !2208
  %5 = icmp ne ptr %0, null, !dbg !3406
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3407
  br i1 %7, label %9, label %8, !dbg !3407

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3408
  unreachable, !dbg !3408

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3409
  store ptr %0, ptr %10, align 8, !dbg !3410, !tbaa !2279
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3411
  store ptr %1, ptr %11, align 8, !dbg !3412, !tbaa !2282
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3413
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3414
  ret ptr %12, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3416 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %1, metadata !3421, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %2, metadata !3422, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i64 %3, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 0, metadata !3343, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %0, metadata !3348, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %1, metadata !3349, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %2, metadata !3350, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %3, metadata !3351, metadata !DIExpression()), !dbg !3425
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3427
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3352, metadata !DIExpression()), !dbg !3428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3429, !tbaa.struct !3229
  call void @llvm.dbg.value(metadata ptr %5, metadata !2265, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata ptr %0, metadata !2266, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata ptr %1, metadata !2267, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata ptr %5, metadata !2265, metadata !DIExpression()), !dbg !3430
  store i32 10, ptr %5, align 8, !dbg !3432, !tbaa !2208
  %6 = icmp ne ptr %0, null, !dbg !3433
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3434
  br i1 %8, label %10, label %9, !dbg !3434

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3435
  unreachable, !dbg !3435

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3436
  store ptr %0, ptr %11, align 8, !dbg !3437, !tbaa !2279
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3438
  store ptr %1, ptr %12, align 8, !dbg !3439, !tbaa !2282
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3440
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3441
  ret ptr %13, !dbg !3442
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3443 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %1, metadata !3448, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %2, metadata !3449, metadata !DIExpression()), !dbg !3450
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3451
  ret ptr %4, !dbg !3452
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3453 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3457, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %1, metadata !3458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i32 0, metadata !3447, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata ptr %0, metadata !3448, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3460
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3462
  ret ptr %3, !dbg !3463
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3464 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3468, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata ptr %1, metadata !3469, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %1, metadata !3448, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i64 -1, metadata !3449, metadata !DIExpression()), !dbg !3471
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3473
  ret ptr %3, !dbg !3474
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3468, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %0, metadata !3469, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 0, metadata !3447, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata ptr %0, metadata !3448, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 -1, metadata !3449, metadata !DIExpression()), !dbg !3483
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3485
  ret ptr %2, !dbg !3486
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3487 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %1, metadata !3527, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %2, metadata !3528, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %3, metadata !3529, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %4, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %5, metadata !3531, metadata !DIExpression()), !dbg !3532
  %7 = icmp eq ptr %1, null, !dbg !3533
  br i1 %7, label %10, label %8, !dbg !3535

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3536
  br label %12, !dbg !3536

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.82, ptr noundef %2, ptr noundef %3) #39, !dbg !3537
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.3.84, i32 noundef 5) #39, !dbg !3538
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3538
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !3539
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.5.86, i32 noundef 5) #39, !dbg !3540
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.87) #39, !dbg !3540
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !3541
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
  ], !dbg !3542

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.7.88, i32 noundef 5) #39, !dbg !3543
  %21 = load ptr, ptr %4, align 8, !dbg !3543, !tbaa !1054
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3543
  br label %147, !dbg !3545

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.8.89, i32 noundef 5) #39, !dbg !3546
  %25 = load ptr, ptr %4, align 8, !dbg !3546, !tbaa !1054
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3546
  %27 = load ptr, ptr %26, align 8, !dbg !3546, !tbaa !1054
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3546
  br label %147, !dbg !3547

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.9.90, i32 noundef 5) #39, !dbg !3548
  %31 = load ptr, ptr %4, align 8, !dbg !3548, !tbaa !1054
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3548
  %33 = load ptr, ptr %32, align 8, !dbg !3548, !tbaa !1054
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3548
  %35 = load ptr, ptr %34, align 8, !dbg !3548, !tbaa !1054
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3548
  br label %147, !dbg !3549

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.10.91, i32 noundef 5) #39, !dbg !3550
  %39 = load ptr, ptr %4, align 8, !dbg !3550, !tbaa !1054
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3550
  %41 = load ptr, ptr %40, align 8, !dbg !3550, !tbaa !1054
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3550
  %43 = load ptr, ptr %42, align 8, !dbg !3550, !tbaa !1054
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3550
  %45 = load ptr, ptr %44, align 8, !dbg !3550, !tbaa !1054
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3550
  br label %147, !dbg !3551

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.11.92, i32 noundef 5) #39, !dbg !3552
  %49 = load ptr, ptr %4, align 8, !dbg !3552, !tbaa !1054
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3552
  %51 = load ptr, ptr %50, align 8, !dbg !3552, !tbaa !1054
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3552
  %53 = load ptr, ptr %52, align 8, !dbg !3552, !tbaa !1054
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3552
  %55 = load ptr, ptr %54, align 8, !dbg !3552, !tbaa !1054
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3552
  %57 = load ptr, ptr %56, align 8, !dbg !3552, !tbaa !1054
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3552
  br label %147, !dbg !3553

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.12.93, i32 noundef 5) #39, !dbg !3554
  %61 = load ptr, ptr %4, align 8, !dbg !3554, !tbaa !1054
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3554
  %63 = load ptr, ptr %62, align 8, !dbg !3554, !tbaa !1054
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3554
  %65 = load ptr, ptr %64, align 8, !dbg !3554, !tbaa !1054
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3554
  %67 = load ptr, ptr %66, align 8, !dbg !3554, !tbaa !1054
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3554
  %69 = load ptr, ptr %68, align 8, !dbg !3554, !tbaa !1054
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3554
  %71 = load ptr, ptr %70, align 8, !dbg !3554, !tbaa !1054
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3554
  br label %147, !dbg !3555

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.13.94, i32 noundef 5) #39, !dbg !3556
  %75 = load ptr, ptr %4, align 8, !dbg !3556, !tbaa !1054
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3556
  %77 = load ptr, ptr %76, align 8, !dbg !3556, !tbaa !1054
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3556
  %79 = load ptr, ptr %78, align 8, !dbg !3556, !tbaa !1054
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3556
  %81 = load ptr, ptr %80, align 8, !dbg !3556, !tbaa !1054
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3556
  %83 = load ptr, ptr %82, align 8, !dbg !3556, !tbaa !1054
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3556
  %85 = load ptr, ptr %84, align 8, !dbg !3556, !tbaa !1054
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3556
  %87 = load ptr, ptr %86, align 8, !dbg !3556, !tbaa !1054
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3556
  br label %147, !dbg !3557

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.14.95, i32 noundef 5) #39, !dbg !3558
  %91 = load ptr, ptr %4, align 8, !dbg !3558, !tbaa !1054
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3558
  %93 = load ptr, ptr %92, align 8, !dbg !3558, !tbaa !1054
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3558
  %95 = load ptr, ptr %94, align 8, !dbg !3558, !tbaa !1054
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3558
  %97 = load ptr, ptr %96, align 8, !dbg !3558, !tbaa !1054
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3558
  %99 = load ptr, ptr %98, align 8, !dbg !3558, !tbaa !1054
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3558
  %101 = load ptr, ptr %100, align 8, !dbg !3558, !tbaa !1054
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3558
  %103 = load ptr, ptr %102, align 8, !dbg !3558, !tbaa !1054
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3558
  %105 = load ptr, ptr %104, align 8, !dbg !3558, !tbaa !1054
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3558
  br label %147, !dbg !3559

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.15.96, i32 noundef 5) #39, !dbg !3560
  %109 = load ptr, ptr %4, align 8, !dbg !3560, !tbaa !1054
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3560
  %111 = load ptr, ptr %110, align 8, !dbg !3560, !tbaa !1054
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3560
  %113 = load ptr, ptr %112, align 8, !dbg !3560, !tbaa !1054
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3560
  %115 = load ptr, ptr %114, align 8, !dbg !3560, !tbaa !1054
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3560
  %117 = load ptr, ptr %116, align 8, !dbg !3560, !tbaa !1054
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3560
  %119 = load ptr, ptr %118, align 8, !dbg !3560, !tbaa !1054
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3560
  %121 = load ptr, ptr %120, align 8, !dbg !3560, !tbaa !1054
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3560
  %123 = load ptr, ptr %122, align 8, !dbg !3560, !tbaa !1054
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3560
  %125 = load ptr, ptr %124, align 8, !dbg !3560, !tbaa !1054
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3560
  br label %147, !dbg !3561

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.16.97, i32 noundef 5) #39, !dbg !3562
  %129 = load ptr, ptr %4, align 8, !dbg !3562, !tbaa !1054
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3562
  %131 = load ptr, ptr %130, align 8, !dbg !3562, !tbaa !1054
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3562
  %133 = load ptr, ptr %132, align 8, !dbg !3562, !tbaa !1054
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3562
  %135 = load ptr, ptr %134, align 8, !dbg !3562, !tbaa !1054
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3562
  %137 = load ptr, ptr %136, align 8, !dbg !3562, !tbaa !1054
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3562
  %139 = load ptr, ptr %138, align 8, !dbg !3562, !tbaa !1054
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3562
  %141 = load ptr, ptr %140, align 8, !dbg !3562, !tbaa !1054
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3562
  %143 = load ptr, ptr %142, align 8, !dbg !3562, !tbaa !1054
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3562
  %145 = load ptr, ptr %144, align 8, !dbg !3562, !tbaa !1054
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3562
  br label %147, !dbg !3563

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3564
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3565 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3569, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %1, metadata !3570, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %2, metadata !3571, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %3, metadata !3572, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %4, metadata !3573, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 0, metadata !3574, metadata !DIExpression()), !dbg !3575
  br label %6, !dbg !3576

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3578
  call void @llvm.dbg.value(metadata i64 %7, metadata !3574, metadata !DIExpression()), !dbg !3575
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3579
  %9 = load ptr, ptr %8, align 8, !dbg !3579, !tbaa !1054
  %10 = icmp eq ptr %9, null, !dbg !3581
  %11 = add i64 %7, 1, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %11, metadata !3574, metadata !DIExpression()), !dbg !3575
  br i1 %10, label %12, label %6, !dbg !3581, !llvm.loop !3583

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3585
  ret void, !dbg !3586
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3587 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %1, metadata !3600, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %2, metadata !3601, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %3, metadata !3602, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %4, metadata !3603, metadata !DIExpression()), !dbg !3607
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3608
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3605, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 0, metadata !3604, metadata !DIExpression()), !dbg !3607
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3604, metadata !DIExpression()), !dbg !3607
  %10 = icmp ult i32 %9, 41, !dbg !3610
  br i1 %10, label %11, label %16, !dbg !3610

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3610
  %13 = zext i32 %9 to i64, !dbg !3610
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3610
  %15 = add nuw nsw i32 %9, 8, !dbg !3610
  store i32 %15, ptr %4, align 8, !dbg !3610
  br label %19, !dbg !3610

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3610
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3610
  store ptr %18, ptr %7, align 8, !dbg !3610
  br label %19, !dbg !3610

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3610
  %22 = load ptr, ptr %21, align 8, !dbg !3610
  store ptr %22, ptr %6, align 16, !dbg !3613, !tbaa !1054
  %23 = icmp eq ptr %22, null, !dbg !3614
  br i1 %23, label %128, label %24, !dbg !3615

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 1, metadata !3604, metadata !DIExpression()), !dbg !3607
  %25 = icmp ult i32 %20, 41, !dbg !3610
  br i1 %25, label %29, label %26, !dbg !3610

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3610
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3610
  store ptr %28, ptr %7, align 8, !dbg !3610
  br label %34, !dbg !3610

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3610
  %31 = zext i32 %20 to i64, !dbg !3610
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3610
  %33 = add nuw nsw i32 %20, 8, !dbg !3610
  store i32 %33, ptr %4, align 8, !dbg !3610
  br label %34, !dbg !3610

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3610
  %37 = load ptr, ptr %36, align 8, !dbg !3610
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3616
  store ptr %37, ptr %38, align 8, !dbg !3613, !tbaa !1054
  %39 = icmp eq ptr %37, null, !dbg !3614
  br i1 %39, label %128, label %40, !dbg !3615

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 2, metadata !3604, metadata !DIExpression()), !dbg !3607
  %41 = icmp ult i32 %35, 41, !dbg !3610
  br i1 %41, label %45, label %42, !dbg !3610

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3610
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3610
  store ptr %44, ptr %7, align 8, !dbg !3610
  br label %50, !dbg !3610

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3610
  %47 = zext i32 %35 to i64, !dbg !3610
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3610
  %49 = add nuw nsw i32 %35, 8, !dbg !3610
  store i32 %49, ptr %4, align 8, !dbg !3610
  br label %50, !dbg !3610

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3610
  %53 = load ptr, ptr %52, align 8, !dbg !3610
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3616
  store ptr %53, ptr %54, align 16, !dbg !3613, !tbaa !1054
  %55 = icmp eq ptr %53, null, !dbg !3614
  br i1 %55, label %128, label %56, !dbg !3615

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 3, metadata !3604, metadata !DIExpression()), !dbg !3607
  %57 = icmp ult i32 %51, 41, !dbg !3610
  br i1 %57, label %61, label %58, !dbg !3610

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3610
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3610
  store ptr %60, ptr %7, align 8, !dbg !3610
  br label %66, !dbg !3610

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3610
  %63 = zext i32 %51 to i64, !dbg !3610
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3610
  %65 = add nuw nsw i32 %51, 8, !dbg !3610
  store i32 %65, ptr %4, align 8, !dbg !3610
  br label %66, !dbg !3610

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3610
  %69 = load ptr, ptr %68, align 8, !dbg !3610
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3616
  store ptr %69, ptr %70, align 8, !dbg !3613, !tbaa !1054
  %71 = icmp eq ptr %69, null, !dbg !3614
  br i1 %71, label %128, label %72, !dbg !3615

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 4, metadata !3604, metadata !DIExpression()), !dbg !3607
  %73 = icmp ult i32 %67, 41, !dbg !3610
  br i1 %73, label %77, label %74, !dbg !3610

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3610
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3610
  store ptr %76, ptr %7, align 8, !dbg !3610
  br label %82, !dbg !3610

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3610
  %79 = zext i32 %67 to i64, !dbg !3610
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3610
  %81 = add nuw nsw i32 %67, 8, !dbg !3610
  store i32 %81, ptr %4, align 8, !dbg !3610
  br label %82, !dbg !3610

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3610
  %85 = load ptr, ptr %84, align 8, !dbg !3610
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3616
  store ptr %85, ptr %86, align 16, !dbg !3613, !tbaa !1054
  %87 = icmp eq ptr %85, null, !dbg !3614
  br i1 %87, label %128, label %88, !dbg !3615

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 5, metadata !3604, metadata !DIExpression()), !dbg !3607
  %89 = icmp ult i32 %83, 41, !dbg !3610
  br i1 %89, label %93, label %90, !dbg !3610

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3610
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3610
  store ptr %92, ptr %7, align 8, !dbg !3610
  br label %98, !dbg !3610

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3610
  %95 = zext i32 %83 to i64, !dbg !3610
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3610
  %97 = add nuw nsw i32 %83, 8, !dbg !3610
  store i32 %97, ptr %4, align 8, !dbg !3610
  br label %98, !dbg !3610

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3610
  %100 = load ptr, ptr %99, align 8, !dbg !3610
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3616
  store ptr %100, ptr %101, align 8, !dbg !3613, !tbaa !1054
  %102 = icmp eq ptr %100, null, !dbg !3614
  br i1 %102, label %128, label %103, !dbg !3615

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3604, metadata !DIExpression()), !dbg !3607
  %104 = load ptr, ptr %7, align 8, !dbg !3610
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3610
  store ptr %105, ptr %7, align 8, !dbg !3610
  %106 = load ptr, ptr %104, align 8, !dbg !3610
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3616
  store ptr %106, ptr %107, align 16, !dbg !3613, !tbaa !1054
  %108 = icmp eq ptr %106, null, !dbg !3614
  br i1 %108, label %128, label %109, !dbg !3615

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3604, metadata !DIExpression()), !dbg !3607
  %110 = load ptr, ptr %7, align 8, !dbg !3610
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3610
  store ptr %111, ptr %7, align 8, !dbg !3610
  %112 = load ptr, ptr %110, align 8, !dbg !3610
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3616
  store ptr %112, ptr %113, align 8, !dbg !3613, !tbaa !1054
  %114 = icmp eq ptr %112, null, !dbg !3614
  br i1 %114, label %128, label %115, !dbg !3615

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3604, metadata !DIExpression()), !dbg !3607
  %116 = load ptr, ptr %7, align 8, !dbg !3610
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3610
  store ptr %117, ptr %7, align 8, !dbg !3610
  %118 = load ptr, ptr %116, align 8, !dbg !3610
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3616
  store ptr %118, ptr %119, align 16, !dbg !3613, !tbaa !1054
  %120 = icmp eq ptr %118, null, !dbg !3614
  br i1 %120, label %128, label %121, !dbg !3615

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3604, metadata !DIExpression()), !dbg !3607
  %122 = load ptr, ptr %7, align 8, !dbg !3610
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3610
  store ptr %123, ptr %7, align 8, !dbg !3610
  %124 = load ptr, ptr %122, align 8, !dbg !3610
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3616
  store ptr %124, ptr %125, align 8, !dbg !3613, !tbaa !1054
  %126 = icmp eq ptr %124, null, !dbg !3614
  %127 = select i1 %126, i64 9, i64 10, !dbg !3615
  br label %128, !dbg !3615

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3617
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3618
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3619
  ret void, !dbg !3619
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3620 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %1, metadata !3625, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %2, metadata !3626, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %3, metadata !3627, metadata !DIExpression()), !dbg !3633
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3628, metadata !DIExpression()), !dbg !3635
  call void @llvm.va_start(ptr nonnull %5), !dbg !3636
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3637
  call void @llvm.va_end(ptr nonnull %5), !dbg !3638
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3639
  ret void, !dbg !3639
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3640 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3641, !tbaa !1054
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %1), !dbg !3641
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.17.102, i32 noundef 5) #39, !dbg !3642
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.103) #39, !dbg !3642
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.19.104, i32 noundef 5) #39, !dbg !3643
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.105, ptr noundef nonnull @.str.21) #39, !dbg !3643
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !3644
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.106) #39, !dbg !3644
  ret void, !dbg !3645
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3646 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3651, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %1, metadata !3652, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %2, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %2, metadata !3659, metadata !DIExpression()), !dbg !3660
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3662
  call void @llvm.dbg.value(metadata ptr %4, metadata !3663, metadata !DIExpression()), !dbg !3668
  %5 = icmp eq ptr %4, null, !dbg !3670
  br i1 %5, label %6, label %7, !dbg !3672

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3673
  unreachable, !dbg !3673

7:                                                ; preds = %3
  ret ptr %4, !dbg !3674
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3656 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %2, metadata !3659, metadata !DIExpression()), !dbg !3675
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3676
  call void @llvm.dbg.value(metadata ptr %4, metadata !3663, metadata !DIExpression()), !dbg !3677
  %5 = icmp eq ptr %4, null, !dbg !3679
  br i1 %5, label %6, label %7, !dbg !3680

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3681
  unreachable, !dbg !3681

7:                                                ; preds = %3
  ret ptr %4, !dbg !3682
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3683 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3687, metadata !DIExpression()), !dbg !3688
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3689
  call void @llvm.dbg.value(metadata ptr %2, metadata !3663, metadata !DIExpression()), !dbg !3690
  %3 = icmp eq ptr %2, null, !dbg !3692
  br i1 %3, label %4, label %5, !dbg !3693

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3694
  unreachable, !dbg !3694

5:                                                ; preds = %1
  ret ptr %2, !dbg !3695
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3696 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3697 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3701, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %0, metadata !3703, metadata !DIExpression()), !dbg !3707
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3709
  call void @llvm.dbg.value(metadata ptr %2, metadata !3663, metadata !DIExpression()), !dbg !3710
  %3 = icmp eq ptr %2, null, !dbg !3712
  br i1 %3, label %4, label %5, !dbg !3713

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3714
  unreachable, !dbg !3714

5:                                                ; preds = %1
  ret ptr %2, !dbg !3715
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3716 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3720, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 %0, metadata !3687, metadata !DIExpression()), !dbg !3722
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3724
  call void @llvm.dbg.value(metadata ptr %2, metadata !3663, metadata !DIExpression()), !dbg !3725
  %3 = icmp eq ptr %2, null, !dbg !3727
  br i1 %3, label %4, label %5, !dbg !3728

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3729
  unreachable, !dbg !3729

5:                                                ; preds = %1
  ret ptr %2, !dbg !3730
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3731 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %1, metadata !3736, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i64 %1, metadata !3742, metadata !DIExpression()), !dbg !3743
  %3 = icmp eq i64 %1, 0, !dbg !3745
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3745
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3746
  call void @llvm.dbg.value(metadata ptr %5, metadata !3663, metadata !DIExpression()), !dbg !3747
  %6 = icmp eq ptr %5, null, !dbg !3749
  br i1 %6, label %7, label %8, !dbg !3750

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3751
  unreachable, !dbg !3751

8:                                                ; preds = %2
  ret ptr %5, !dbg !3752
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3753 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3754 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3758, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %1, metadata !3759, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %1, metadata !3764, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %1, metadata !3742, metadata !DIExpression()), !dbg !3767
  %3 = icmp eq i64 %1, 0, !dbg !3769
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3769
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3770
  call void @llvm.dbg.value(metadata ptr %5, metadata !3663, metadata !DIExpression()), !dbg !3771
  %6 = icmp eq ptr %5, null, !dbg !3773
  br i1 %6, label %7, label %8, !dbg !3774

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3775
  unreachable, !dbg !3775

8:                                                ; preds = %2
  ret ptr %5, !dbg !3776
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3777 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %1, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %2, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata ptr %0, metadata !3785, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %1, metadata !3788, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %2, metadata !3789, metadata !DIExpression()), !dbg !3790
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3792
  call void @llvm.dbg.value(metadata ptr %4, metadata !3663, metadata !DIExpression()), !dbg !3793
  %5 = icmp eq ptr %4, null, !dbg !3795
  br i1 %5, label %6, label %7, !dbg !3796

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3797
  unreachable, !dbg !3797

7:                                                ; preds = %3
  ret ptr %4, !dbg !3798
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3799 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3803, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i64 %1, metadata !3804, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata ptr null, metadata !3655, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %0, metadata !3658, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %1, metadata !3659, metadata !DIExpression()), !dbg !3806
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3808
  call void @llvm.dbg.value(metadata ptr %3, metadata !3663, metadata !DIExpression()), !dbg !3809
  %4 = icmp eq ptr %3, null, !dbg !3811
  br i1 %4, label %5, label %6, !dbg !3812

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3813
  unreachable, !dbg !3813

6:                                                ; preds = %2
  ret ptr %3, !dbg !3814
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3815 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3819, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %1, metadata !3820, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata ptr null, metadata !3781, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %0, metadata !3782, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %1, metadata !3783, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr null, metadata !3785, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %0, metadata !3788, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %1, metadata !3789, metadata !DIExpression()), !dbg !3824
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3826
  call void @llvm.dbg.value(metadata ptr %3, metadata !3663, metadata !DIExpression()), !dbg !3827
  %4 = icmp eq ptr %3, null, !dbg !3829
  br i1 %4, label %5, label %6, !dbg !3830

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3831
  unreachable, !dbg !3831

6:                                                ; preds = %2
  ret ptr %3, !dbg !3832
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3833 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3837, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %1, metadata !3838, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %0, metadata !969, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata ptr %1, metadata !970, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i64 1, metadata !971, metadata !DIExpression()), !dbg !3840
  %3 = load i64, ptr %1, align 8, !dbg !3842, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %3, metadata !972, metadata !DIExpression()), !dbg !3840
  %4 = icmp eq ptr %0, null, !dbg !3843
  br i1 %4, label %5, label %8, !dbg !3845

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3846
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3849
  br label %15, !dbg !3849

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3850
  %10 = add nuw i64 %9, 1, !dbg !3850
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3850
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3850
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3850
  call void @llvm.dbg.value(metadata i64 %13, metadata !972, metadata !DIExpression()), !dbg !3840
  br i1 %12, label %14, label %15, !dbg !3853

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3854
  unreachable, !dbg !3854

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3840
  call void @llvm.dbg.value(metadata i64 %16, metadata !972, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 %16, metadata !3658, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 1, metadata !3659, metadata !DIExpression()), !dbg !3855
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3857
  call void @llvm.dbg.value(metadata ptr %17, metadata !3663, metadata !DIExpression()), !dbg !3858
  %18 = icmp eq ptr %17, null, !dbg !3860
  br i1 %18, label %19, label %20, !dbg !3861

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3862
  unreachable, !dbg !3862

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !969, metadata !DIExpression()), !dbg !3840
  store i64 %16, ptr %1, align 8, !dbg !3863, !tbaa !1802
  ret ptr %17, !dbg !3864
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !964 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !969, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata ptr %1, metadata !970, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %2, metadata !971, metadata !DIExpression()), !dbg !3865
  %4 = load i64, ptr %1, align 8, !dbg !3866, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %4, metadata !972, metadata !DIExpression()), !dbg !3865
  %5 = icmp eq ptr %0, null, !dbg !3867
  br i1 %5, label %6, label %13, !dbg !3868

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3869
  br i1 %7, label %8, label %20, !dbg !3870

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %9, metadata !972, metadata !DIExpression()), !dbg !3865
  %10 = icmp ugt i64 %2, 128, !dbg !3873
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %12, metadata !972, metadata !DIExpression()), !dbg !3865
  br label %20, !dbg !3875

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3876
  %15 = add nuw i64 %14, 1, !dbg !3876
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3876
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3876
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %18, metadata !972, metadata !DIExpression()), !dbg !3865
  br i1 %17, label %19, label %20, !dbg !3877

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3878
  unreachable, !dbg !3878

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3865
  call void @llvm.dbg.value(metadata i64 %21, metadata !972, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 %21, metadata !3658, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 %2, metadata !3659, metadata !DIExpression()), !dbg !3879
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3881
  call void @llvm.dbg.value(metadata ptr %22, metadata !3663, metadata !DIExpression()), !dbg !3882
  %23 = icmp eq ptr %22, null, !dbg !3884
  br i1 %23, label %24, label %25, !dbg !3885

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3886
  unreachable, !dbg !3886

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !969, metadata !DIExpression()), !dbg !3865
  store i64 %21, ptr %1, align 8, !dbg !3887, !tbaa !1802
  ret ptr %22, !dbg !3888
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !976 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !984, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata ptr %1, metadata !985, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %2, metadata !986, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %3, metadata !987, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %4, metadata !988, metadata !DIExpression()), !dbg !3889
  %6 = load i64, ptr %1, align 8, !dbg !3890, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %6, metadata !989, metadata !DIExpression()), !dbg !3889
  %7 = ashr i64 %6, 1, !dbg !3891
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3891
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3891
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3891
  call void @llvm.dbg.value(metadata i64 %10, metadata !990, metadata !DIExpression()), !dbg !3889
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %11, metadata !990, metadata !DIExpression()), !dbg !3889
  %12 = icmp sgt i64 %3, -1, !dbg !3894
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3896
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %15, metadata !990, metadata !DIExpression()), !dbg !3889
  %16 = icmp slt i64 %4, 0, !dbg !3897
  br i1 %16, label %17, label %30, !dbg !3897

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3897
  br i1 %18, label %19, label %24, !dbg !3897

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3897
  %21 = udiv i64 9223372036854775807, %20, !dbg !3897
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3897
  br i1 %23, label %46, label %43, !dbg !3897

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3897
  br i1 %25, label %43, label %26, !dbg !3897

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3897
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3897
  %29 = icmp ult i64 %28, %15, !dbg !3897
  br i1 %29, label %46, label %43, !dbg !3897

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3897
  br i1 %31, label %43, label %32, !dbg !3897

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3897
  br i1 %33, label %34, label %40, !dbg !3897

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3897
  br i1 %35, label %43, label %36, !dbg !3897

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3897
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3897
  %39 = icmp ult i64 %38, %4, !dbg !3897
  br i1 %39, label %46, label %43, !dbg !3897

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3897
  br i1 %42, label %46, label %43, !dbg !3897

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !991, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3889
  %44 = mul i64 %15, %4, !dbg !3897
  call void @llvm.dbg.value(metadata i64 %44, metadata !991, metadata !DIExpression()), !dbg !3889
  %45 = icmp slt i64 %44, 128, !dbg !3897
  br i1 %45, label %46, label %51, !dbg !3897

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !992, metadata !DIExpression()), !dbg !3889
  %48 = sdiv i64 %47, %4, !dbg !3898
  call void @llvm.dbg.value(metadata i64 %48, metadata !990, metadata !DIExpression()), !dbg !3889
  %49 = srem i64 %47, %4, !dbg !3901
  %50 = sub nsw i64 %47, %49, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %50, metadata !991, metadata !DIExpression()), !dbg !3889
  br label %51, !dbg !3903

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3889
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3889
  call void @llvm.dbg.value(metadata i64 %53, metadata !991, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %52, metadata !990, metadata !DIExpression()), !dbg !3889
  %54 = icmp eq ptr %0, null, !dbg !3904
  br i1 %54, label %55, label %56, !dbg !3906

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3907, !tbaa !1802
  br label %56, !dbg !3908

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3909
  %58 = icmp slt i64 %57, %2, !dbg !3911
  br i1 %58, label %59, label %96, !dbg !3912

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3913
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3913
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %62, metadata !990, metadata !DIExpression()), !dbg !3889
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3914
  br i1 %65, label %95, label %66, !dbg !3914

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3915

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3915
  br i1 %68, label %69, label %74, !dbg !3915

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3915
  %71 = udiv i64 9223372036854775807, %70, !dbg !3915
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3915
  br i1 %73, label %95, label %93, !dbg !3915

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3915
  br i1 %75, label %93, label %76, !dbg !3915

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3915
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3915
  %79 = icmp ult i64 %78, %62, !dbg !3915
  br i1 %79, label %95, label %93, !dbg !3915

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3915
  br i1 %81, label %93, label %82, !dbg !3915

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3915
  br i1 %83, label %84, label %90, !dbg !3915

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3915
  br i1 %85, label %93, label %86, !dbg !3915

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3915
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3915
  %89 = icmp ult i64 %88, %4, !dbg !3915
  br i1 %89, label %95, label %93, !dbg !3915

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3915
  br i1 %92, label %95, label %93, !dbg !3915

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !991, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3889
  %94 = mul i64 %62, %4, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %94, metadata !991, metadata !DIExpression()), !dbg !3889
  br label %96, !dbg !3916

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !3917
  unreachable, !dbg !3917

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3889
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3889
  call void @llvm.dbg.value(metadata i64 %98, metadata !991, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %97, metadata !990, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i64 %98, metadata !3736, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %98, metadata !3742, metadata !DIExpression()), !dbg !3920
  %99 = icmp eq i64 %98, 0, !dbg !3922
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3922
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #45, !dbg !3923
  call void @llvm.dbg.value(metadata ptr %101, metadata !3663, metadata !DIExpression()), !dbg !3924
  %102 = icmp eq ptr %101, null, !dbg !3926
  br i1 %102, label %103, label %104, !dbg !3927

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !3928
  unreachable, !dbg !3928

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !984, metadata !DIExpression()), !dbg !3889
  store i64 %97, ptr %1, align 8, !dbg !3929, !tbaa !1802
  ret ptr %101, !dbg !3930
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3931 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3933, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %0, metadata !3935, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i64 1, metadata !3938, metadata !DIExpression()), !dbg !3939
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3941
  call void @llvm.dbg.value(metadata ptr %2, metadata !3663, metadata !DIExpression()), !dbg !3942
  %3 = icmp eq ptr %2, null, !dbg !3944
  br i1 %3, label %4, label %5, !dbg !3945

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3946
  unreachable, !dbg !3946

5:                                                ; preds = %1
  ret ptr %2, !dbg !3947
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3948 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3936 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3935, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %1, metadata !3938, metadata !DIExpression()), !dbg !3949
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3950
  call void @llvm.dbg.value(metadata ptr %3, metadata !3663, metadata !DIExpression()), !dbg !3951
  %4 = icmp eq ptr %3, null, !dbg !3953
  br i1 %4, label %5, label %6, !dbg !3954

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3955
  unreachable, !dbg !3955

6:                                                ; preds = %2
  ret ptr %3, !dbg !3956
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3957 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 1, metadata !3964, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %0, metadata !3967, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 1, metadata !3970, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %0, metadata !3967, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 1, metadata !3970, metadata !DIExpression()), !dbg !3971
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3973
  call void @llvm.dbg.value(metadata ptr %2, metadata !3663, metadata !DIExpression()), !dbg !3974
  %3 = icmp eq ptr %2, null, !dbg !3976
  br i1 %3, label %4, label %5, !dbg !3977

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3978
  unreachable, !dbg !3978

5:                                                ; preds = %1
  ret ptr %2, !dbg !3979
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3962 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i64 %1, metadata !3964, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i64 %0, metadata !3967, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i64 %1, metadata !3970, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i64 %0, metadata !3967, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i64 %1, metadata !3970, metadata !DIExpression()), !dbg !3981
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3983
  call void @llvm.dbg.value(metadata ptr %3, metadata !3663, metadata !DIExpression()), !dbg !3984
  %4 = icmp eq ptr %3, null, !dbg !3986
  br i1 %4, label %5, label %6, !dbg !3987

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3988
  unreachable, !dbg !3988

6:                                                ; preds = %2
  ret ptr %3, !dbg !3989
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3990 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %1, metadata !3995, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()), !dbg !3997
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3999
  call void @llvm.dbg.value(metadata ptr %3, metadata !3663, metadata !DIExpression()), !dbg !4000
  %4 = icmp eq ptr %3, null, !dbg !4002
  br i1 %4, label %5, label %6, !dbg !4003

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4004
  unreachable, !dbg !4004

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4005, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr %0, metadata !4011, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i64 %1, metadata !4012, metadata !DIExpression()), !dbg !4013
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4015
  ret ptr %3, !dbg !4016
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4017 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4021, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %1, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %1, metadata !3701, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !4026
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4028
  call void @llvm.dbg.value(metadata ptr %3, metadata !3663, metadata !DIExpression()), !dbg !4029
  %4 = icmp eq ptr %3, null, !dbg !4031
  br i1 %4, label %5, label %6, !dbg !4032

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4033
  unreachable, !dbg !4033

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4005, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %0, metadata !4011, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64 %1, metadata !4012, metadata !DIExpression()), !dbg !4034
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4036
  ret ptr %3, !dbg !4037
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4038 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i64 %1, metadata !4043, metadata !DIExpression()), !dbg !4045
  %3 = add nsw i64 %1, 1, !dbg !4046
  call void @llvm.dbg.value(metadata i64 %3, metadata !3701, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %3, metadata !3703, metadata !DIExpression()), !dbg !4049
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4051
  call void @llvm.dbg.value(metadata ptr %4, metadata !3663, metadata !DIExpression()), !dbg !4052
  %5 = icmp eq ptr %4, null, !dbg !4054
  br i1 %5, label %6, label %7, !dbg !4055

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4056
  unreachable, !dbg !4056

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4044, metadata !DIExpression()), !dbg !4045
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4057
  store i8 0, ptr %8, align 1, !dbg !4058, !tbaa !1126
  call void @llvm.dbg.value(metadata ptr %4, metadata !4005, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr %0, metadata !4011, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64 %1, metadata !4012, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4061
  ret ptr %4, !dbg !4062
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4063 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4065, metadata !DIExpression()), !dbg !4066
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4067
  %3 = add i64 %2, 1, !dbg !4068
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i64 %3, metadata !3995, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i64 %3, metadata !3687, metadata !DIExpression()), !dbg !4071
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4073
  call void @llvm.dbg.value(metadata ptr %4, metadata !3663, metadata !DIExpression()), !dbg !4074
  %5 = icmp eq ptr %4, null, !dbg !4076
  br i1 %5, label %6, label %7, !dbg !4077

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4078
  unreachable, !dbg !4078

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4005, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata ptr %0, metadata !4011, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i64 %3, metadata !4012, metadata !DIExpression()), !dbg !4079
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4081
  ret ptr %4, !dbg !4082
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4083 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4088, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %1, metadata !4085, metadata !DIExpression()), !dbg !4089
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.117, ptr noundef nonnull @.str.2.118, i32 noundef 5) #39, !dbg !4088
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef %2) #39, !dbg !4088
  %3 = icmp eq i32 %1, 0, !dbg !4088
  tail call void @llvm.assume(i1 %3), !dbg !4088
  tail call void @abort() #41, !dbg !4090
  unreachable, !dbg !4090
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4091 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4095, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 %1, metadata !4096, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %2, metadata !4097, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %3, metadata !4098, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %4, metadata !4099, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %5, metadata !4100, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 %6, metadata !4101, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 %7, metadata !4102, metadata !DIExpression()), !dbg !4112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #39, !dbg !4113
  call void @llvm.dbg.value(metadata ptr %9, metadata !4103, metadata !DIExpression(DW_OP_deref)), !dbg !4112
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #39, !dbg !4114
  call void @llvm.dbg.value(metadata i32 %10, metadata !4105, metadata !DIExpression()), !dbg !4112
  %11 = icmp eq i32 %10, 4, !dbg !4115
  br i1 %11, label %40, label %12, !dbg !4117

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4118, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %13, metadata !4103, metadata !DIExpression()), !dbg !4112
  %14 = icmp ult i64 %13, %2, !dbg !4121
  br i1 %14, label %15, label %20, !dbg !4122

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !4104, metadata !DIExpression()), !dbg !4112
  %16 = and i32 %7, 4, !dbg !4123
  %17 = icmp eq i32 %16, 0, !dbg !4125
  %18 = select i1 %17, i32 75, i32 34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 %18, metadata !4107, metadata !DIExpression()), !dbg !4112
  %19 = icmp eq i32 %10, 0, !dbg !4126
  call void @llvm.dbg.value(metadata i32 undef, metadata !4105, metadata !DIExpression()), !dbg !4112
  br i1 %19, label %33, label %27, !dbg !4128

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4129
  br i1 %21, label %22, label %27, !dbg !4131

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !4104, metadata !DIExpression()), !dbg !4112
  %23 = and i32 %7, 8, !dbg !4132
  %24 = icmp eq i32 %23, 0, !dbg !4134
  %25 = select i1 %24, i32 75, i32 34, !dbg !4134
  call void @llvm.dbg.value(metadata i32 %25, metadata !4107, metadata !DIExpression()), !dbg !4112
  %26 = icmp eq i32 %10, 0, !dbg !4135
  call void @llvm.dbg.value(metadata i32 undef, metadata !4105, metadata !DIExpression()), !dbg !4112
  br i1 %26, label %33, label %27, !dbg !4137

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !4104, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 %10, metadata !4105, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 %28, metadata !4107, metadata !DIExpression()), !dbg !4112
  %30 = icmp eq i32 %10, 1, !dbg !4138
  %31 = select i1 %30, i32 %28, i32 0, !dbg !4139
  call void @llvm.dbg.value(metadata i32 %31, metadata !4108, metadata !DIExpression()), !dbg !4112
  %32 = icmp eq i32 %10, 0, !dbg !4140
  br i1 %32, label %45, label %33, !dbg !4141

33:                                               ; preds = %22, %15, %27
  %34 = phi i32 [ %31, %27 ], [ %18, %15 ], [ %25, %22 ]
  %35 = phi i1 [ %30, %27 ], [ true, %15 ], [ true, %22 ]
  %36 = phi i64 [ %29, %27 ], [ %2, %15 ], [ %3, %22 ]
  %37 = and i32 %7, 2
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %38, %35, !dbg !4112
  call void @llvm.dbg.value(metadata i64 poison, metadata !4103, metadata !DIExpression()), !dbg !4112
  br i1 %39, label %45, label %40, !dbg !4142

40:                                               ; preds = %8, %33
  %41 = phi i32 [ %34, %33 ], [ 0, %8 ]
  %42 = icmp eq i32 %6, 0, !dbg !4143
  %43 = select i1 %42, i32 1, i32 %6, !dbg !4143
  %44 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !4143
  call void (i32, i32, ptr, ...) @error(i32 noundef %43, i32 noundef %41, ptr noundef nonnull @.str.122, ptr noundef nonnull %5, ptr noundef %44) #39, !dbg !4143
  unreachable, !dbg !4143

45:                                               ; preds = %33, %27
  %46 = phi i32 [ %34, %33 ], [ %31, %27 ]
  %47 = phi i64 [ %36, %33 ], [ %29, %27 ]
  %48 = tail call ptr @__errno_location() #42, !dbg !4144
  store i32 %46, ptr %48, align 4, !dbg !4145, !tbaa !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !4146
  ret i64 %47, !dbg !4147
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4148 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4152, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %1, metadata !4153, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %2, metadata !4154, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %3, metadata !4155, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %4, metadata !4156, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i32 %5, metadata !4157, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %0, metadata !4095, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 10, metadata !4096, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %2, metadata !4098, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %3, metadata !4099, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %4, metadata !4100, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 %5, metadata !4101, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 0, metadata !4102, metadata !DIExpression()), !dbg !4159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !4161
  call void @llvm.dbg.value(metadata ptr %7, metadata !4103, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #39, !dbg !4162
  call void @llvm.dbg.value(metadata i32 %8, metadata !4105, metadata !DIExpression()), !dbg !4159
  %9 = icmp eq i32 %8, 4, !dbg !4163
  br i1 %9, label %24, label %10, !dbg !4164

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4165, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %11, metadata !4103, metadata !DIExpression()), !dbg !4159
  %12 = icmp ult i64 %11, %1, !dbg !4166
  br i1 %12, label %13, label %15, !dbg !4167

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !4104, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 75, metadata !4107, metadata !DIExpression()), !dbg !4159
  %14 = icmp eq i32 %8, 0, !dbg !4168
  call void @llvm.dbg.value(metadata i32 undef, metadata !4105, metadata !DIExpression()), !dbg !4159
  br i1 %14, label %24, label %19, !dbg !4169

15:                                               ; preds = %10
  %16 = icmp ugt i64 %11, %2, !dbg !4170
  br i1 %16, label %17, label %19, !dbg !4171

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !4104, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 75, metadata !4107, metadata !DIExpression()), !dbg !4159
  %18 = icmp eq i32 %8, 0, !dbg !4172
  call void @llvm.dbg.value(metadata i32 undef, metadata !4105, metadata !DIExpression()), !dbg !4159
  br i1 %18, label %24, label %19, !dbg !4173

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !4104, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 %8, metadata !4105, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 75, metadata !4107, metadata !DIExpression()), !dbg !4159
  %21 = icmp eq i32 %8, 1, !dbg !4174
  %22 = select i1 %21, i32 75, i32 0, !dbg !4175
  call void @llvm.dbg.value(metadata i32 %22, metadata !4108, metadata !DIExpression()), !dbg !4159
  %23 = icmp eq i32 %8, 0, !dbg !4176
  br i1 %23, label %29, label %24, !dbg !4177

24:                                               ; preds = %13, %17, %19, %6
  %25 = phi i32 [ 0, %6 ], [ %22, %19 ], [ 75, %13 ], [ 75, %17 ]
  %26 = icmp eq i32 %5, 0, !dbg !4178
  %27 = select i1 %26, i32 1, i32 %5, !dbg !4178
  %28 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !4178
  call void (i32, i32, ptr, ...) @error(i32 noundef %27, i32 noundef %25, ptr noundef nonnull @.str.122, ptr noundef nonnull %4, ptr noundef %28) #39, !dbg !4178
  unreachable, !dbg !4178

29:                                               ; preds = %19
  %30 = tail call ptr @__errno_location() #42, !dbg !4179
  store i32 %22, ptr %30, align 4, !dbg !4180, !tbaa !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !4181
  ret i64 %20, !dbg !4182
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4183 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4189, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %1, metadata !4190, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %2, metadata !4191, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %3, metadata !4192, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %4, metadata !4193, metadata !DIExpression()), !dbg !4207
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !4208
  %7 = icmp eq ptr %1, null, !dbg !4209
  call void @llvm.dbg.value(metadata ptr %20, metadata !4195, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %0, metadata !4196, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8 poison, metadata !4199, metadata !DIExpression()), !dbg !4210
  %8 = tail call ptr @__ctype_b_loc() #42, !dbg !4207
  %9 = load ptr, ptr %8, align 8, !tbaa !1054
  br label %10, !dbg !4211

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4210
  %12 = load i8, ptr %11, align 1, !dbg !4210, !tbaa !1126
  call void @llvm.dbg.value(metadata i8 %12, metadata !4199, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %11, metadata !4196, metadata !DIExpression()), !dbg !4210
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4212
  %15 = load i16, ptr %14, align 2, !dbg !4212, !tbaa !1158
  %16 = and i16 %15, 8192, !dbg !4212
  %17 = icmp eq i16 %16, 0, !dbg !4211
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4213
  call void @llvm.dbg.value(metadata ptr %18, metadata !4196, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8 poison, metadata !4199, metadata !DIExpression()), !dbg !4210
  br i1 %17, label %19, label %10, !dbg !4211, !llvm.loop !4214

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4209
  %21 = icmp eq i8 %12, 45, !dbg !4216
  br i1 %21, label %22, label %23, !dbg !4218

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4219, !tbaa !1054
  br label %387

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #42, !dbg !4221
  store i32 0, ptr %24, align 4, !dbg !4222, !tbaa !1117
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef %20, i32 noundef %2) #39, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %25, metadata !4200, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 0, metadata !4201, metadata !DIExpression()), !dbg !4207
  %26 = load ptr, ptr %20, align 8, !dbg !4224, !tbaa !1054
  %27 = icmp eq ptr %26, %0, !dbg !4226
  br i1 %27, label %28, label %37, !dbg !4227

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4228
  br i1 %29, label %387, label %30, !dbg !4231

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4232, !tbaa !1126
  %32 = icmp eq i8 %31, 0, !dbg !4232
  br i1 %32, label %387, label %33, !dbg !4233

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !4232
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #40, !dbg !4234
  %36 = icmp eq ptr %35, null, !dbg !4234
  br i1 %36, label %387, label %44, !dbg !4235

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4236, !tbaa !1117
  switch i32 %38, label %387 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4238

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !4201, metadata !DIExpression()), !dbg !4207
  br label %40, !dbg !4239

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4207
  call void @llvm.dbg.value(metadata i32 %41, metadata !4201, metadata !DIExpression()), !dbg !4207
  %42 = icmp eq ptr %4, null, !dbg !4241
  br i1 %42, label %43, label %44, !dbg !4243

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !4200, metadata !DIExpression()), !dbg !4207
  store i64 %25, ptr %3, align 8, !dbg !4244, !tbaa !1802
  br label %387, !dbg !4246

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4247, !tbaa !1126
  %48 = sext i8 %47 to i32, !dbg !4247
  %49 = icmp eq i8 %47, 0, !dbg !4248
  br i1 %49, label %384, label %50, !dbg !4249

50:                                               ; preds = %44
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %48) #40, !dbg !4250
  %52 = icmp eq ptr %51, null, !dbg !4250
  br i1 %52, label %53, label %55, !dbg !4252

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %25, metadata !4200, metadata !DIExpression()), !dbg !4207
  store i64 %46, ptr %3, align 8, !dbg !4253, !tbaa !1802
  %54 = or i32 %45, 2, !dbg !4255
  br label %387, !dbg !4256

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !4202, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 1, metadata !4205, metadata !DIExpression()), !dbg !4257
  switch i32 %48, label %69 [
    i32 69, label %56
    i32 71, label %56
    i32 103, label %56
    i32 107, label %56
    i32 75, label %56
    i32 77, label %56
    i32 109, label %56
    i32 80, label %56
    i32 81, label %56
    i32 82, label %56
    i32 84, label %56
    i32 116, label %56
    i32 89, label %56
    i32 90, label %56
  ], !dbg !4258

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #40, !dbg !4259
  %58 = icmp eq ptr %57, null, !dbg !4259
  br i1 %58, label %69, label %59, !dbg !4262

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4263
  %61 = load i8, ptr %60, align 1, !dbg !4263, !tbaa !1126
  %62 = sext i8 %61 to i32, !dbg !4263
  switch i32 %62, label %69 [
    i32 105, label %63
    i32 66, label %68
    i32 68, label %68
  ], !dbg !4264

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4265
  %65 = load i8, ptr %64, align 1, !dbg !4265, !tbaa !1126
  %66 = icmp eq i8 %65, 66, !dbg !4268
  %67 = select i1 %66, i64 3, i64 1, !dbg !4269
  br label %69, !dbg !4269

68:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !4202, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 2, metadata !4205, metadata !DIExpression()), !dbg !4257
  br label %69, !dbg !4270

69:                                               ; preds = %63, %56, %59, %68, %55
  %70 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %68 ], [ 1024, %56 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %68 ], [ 1, %56 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4205, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 poison, metadata !4202, metadata !DIExpression()), !dbg !4257
  switch i32 %48, label %382 [
    i32 98, label %303
    i32 66, label %308
    i32 99, label %373
    i32 69, label %272
    i32 71, label %313
    i32 103, label %313
    i32 107, label %329
    i32 75, label %329
    i32 77, label %335
    i32 109, label %335
    i32 80, label %246
    i32 81, label %195
    i32 82, label %149
    i32 84, label %346
    i32 116, label %346
    i32 119, label %367
    i32 89, label %108
    i32 90, label %72
  ], !dbg !4271

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4290
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4292
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !4292
  %75 = mul i64 %46, %70, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %75, metadata !4289, metadata !DIExpression()), !dbg !4290
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !4290
  call void @llvm.dbg.value(metadata i1 %74, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %74, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4290
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76), !dbg !4292
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4292
  %79 = mul i64 %76, %70, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %79, metadata !4289, metadata !DIExpression()), !dbg !4290
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !4290
  %81 = or i1 %74, %78, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %81, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %81, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4290
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80), !dbg !4292
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !4292
  %84 = mul i64 %80, %70, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %84, metadata !4289, metadata !DIExpression()), !dbg !4290
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !4290
  %86 = or i1 %81, %83, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %86, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %86, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4290
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85), !dbg !4292
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !4292
  %89 = mul i64 %85, %70, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %89, metadata !4289, metadata !DIExpression()), !dbg !4290
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !4290
  %91 = or i1 %86, %88, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %91, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %91, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4290
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90), !dbg !4292
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !4292
  %94 = mul i64 %90, %70, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %94, metadata !4289, metadata !DIExpression()), !dbg !4290
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !4290
  %96 = or i1 %91, %93, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %96, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %96, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4290
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95), !dbg !4292
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !4292
  %99 = mul i64 %95, %70, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %99, metadata !4289, metadata !DIExpression()), !dbg !4290
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4290
  %101 = or i1 %96, %98, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %101, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %101, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4290
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100), !dbg !4292
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !4292
  %104 = mul i64 %100, %70, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %104, metadata !4289, metadata !DIExpression()), !dbg !4290
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !4290
  %106 = or i1 %101, %103, !dbg !4294
  %107 = zext i1 %106 to i32, !dbg !4294
  call void @llvm.dbg.value(metadata i32 %107, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  br label %373, !dbg !4295

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 8, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4298
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4300
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !4300
  %111 = mul i64 %46, %70, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %111, metadata !4289, metadata !DIExpression()), !dbg !4298
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !4298
  call void @llvm.dbg.value(metadata i1 %110, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i1 %110, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4298
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112), !dbg !4300
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4300
  %115 = mul i64 %112, %70, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %115, metadata !4289, metadata !DIExpression()), !dbg !4298
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !4298
  %117 = or i1 %110, %114, !dbg !4301
  call void @llvm.dbg.value(metadata i1 %117, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i1 %117, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4298
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116), !dbg !4300
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !4300
  %120 = mul i64 %116, %70, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %120, metadata !4289, metadata !DIExpression()), !dbg !4298
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !4298
  %122 = or i1 %117, %119, !dbg !4301
  call void @llvm.dbg.value(metadata i1 %122, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i1 %122, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4298
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121), !dbg !4300
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !4300
  %125 = mul i64 %121, %70, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %125, metadata !4289, metadata !DIExpression()), !dbg !4298
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !4298
  %127 = or i1 %122, %124, !dbg !4301
  call void @llvm.dbg.value(metadata i1 %127, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i1 %127, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4298
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126), !dbg !4300
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !4300
  %130 = mul i64 %126, %70, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %130, metadata !4289, metadata !DIExpression()), !dbg !4298
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !4298
  %132 = or i1 %127, %129, !dbg !4301
  call void @llvm.dbg.value(metadata i1 %132, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i1 %132, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4298
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131), !dbg !4300
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !4300
  %135 = mul i64 %131, %70, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %135, metadata !4289, metadata !DIExpression()), !dbg !4298
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !4298
  %137 = or i1 %132, %134, !dbg !4301
  call void @llvm.dbg.value(metadata i1 %137, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i1 %137, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4298
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136), !dbg !4300
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !4300
  %140 = mul i64 %136, %70, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %140, metadata !4289, metadata !DIExpression()), !dbg !4298
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !4298
  %142 = or i1 %137, %139, !dbg !4301
  call void @llvm.dbg.value(metadata i1 %142, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i1 %142, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4298
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141), !dbg !4300
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !4300
  %145 = mul i64 %141, %70, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %145, metadata !4289, metadata !DIExpression()), !dbg !4298
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !4298
  %147 = or i1 %142, %144, !dbg !4301
  %148 = zext i1 %147 to i32, !dbg !4301
  call void @llvm.dbg.value(metadata i32 %148, metadata !4272, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4296
  br label %373, !dbg !4295

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 9, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 8, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4306
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !4306
  %152 = mul i64 %46, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %152, metadata !4289, metadata !DIExpression()), !dbg !4304
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !4304
  call void @llvm.dbg.value(metadata i1 %151, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 8, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i1 %151, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 8, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153), !dbg !4306
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !4306
  %156 = mul i64 %153, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %156, metadata !4289, metadata !DIExpression()), !dbg !4304
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !4304
  %158 = or i1 %151, %155, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %158, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i1 %158, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157), !dbg !4306
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !4306
  %161 = mul i64 %157, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %161, metadata !4289, metadata !DIExpression()), !dbg !4304
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !4304
  %163 = or i1 %158, %160, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %163, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i1 %163, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162), !dbg !4306
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4306
  %166 = mul i64 %162, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %166, metadata !4289, metadata !DIExpression()), !dbg !4304
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4304
  %168 = or i1 %163, %165, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %168, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i1 %168, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167), !dbg !4306
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !4306
  %171 = mul i64 %167, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %171, metadata !4289, metadata !DIExpression()), !dbg !4304
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !4304
  %173 = or i1 %168, %170, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %173, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i1 %173, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172), !dbg !4306
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !4306
  %176 = mul i64 %172, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %176, metadata !4289, metadata !DIExpression()), !dbg !4304
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !4304
  %178 = or i1 %173, %175, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %178, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i1 %178, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177), !dbg !4306
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !4306
  %181 = mul i64 %177, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %181, metadata !4289, metadata !DIExpression()), !dbg !4304
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !4304
  %183 = or i1 %178, %180, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %183, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i1 %183, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182), !dbg !4306
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4306
  %186 = mul i64 %182, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %186, metadata !4289, metadata !DIExpression()), !dbg !4304
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !4304
  %188 = or i1 %183, %185, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %188, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i1 %188, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4302
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4304
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187), !dbg !4306
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !4306
  %191 = mul i64 %187, %70, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %191, metadata !4289, metadata !DIExpression()), !dbg !4304
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !4304
  %193 = or i1 %188, %190, !dbg !4307
  %194 = zext i1 %193 to i32, !dbg !4307
  call void @llvm.dbg.value(metadata i32 %194, metadata !4272, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4302
  br label %373, !dbg !4295

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 10, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 9, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4312
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !4312
  %198 = mul i64 %46, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %198, metadata !4289, metadata !DIExpression()), !dbg !4310
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !4310
  call void @llvm.dbg.value(metadata i1 %197, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 9, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %197, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 9, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 8, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199), !dbg !4312
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4312
  %202 = mul i64 %199, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %202, metadata !4289, metadata !DIExpression()), !dbg !4310
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4310
  %204 = or i1 %197, %201, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %204, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 8, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %204, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 8, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203), !dbg !4312
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4312
  %207 = mul i64 %203, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %207, metadata !4289, metadata !DIExpression()), !dbg !4310
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !4310
  %209 = or i1 %204, %206, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %209, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %209, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 7, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208), !dbg !4312
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !4312
  %212 = mul i64 %208, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %212, metadata !4289, metadata !DIExpression()), !dbg !4310
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !4310
  %214 = or i1 %209, %211, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %214, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %214, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213), !dbg !4312
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !4312
  %217 = mul i64 %213, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %217, metadata !4289, metadata !DIExpression()), !dbg !4310
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4310
  %219 = or i1 %214, %216, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %219, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %219, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218), !dbg !4312
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4312
  %222 = mul i64 %218, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %222, metadata !4289, metadata !DIExpression()), !dbg !4310
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4310
  %224 = or i1 %219, %221, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %224, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %224, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223), !dbg !4312
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4312
  %227 = mul i64 %223, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %227, metadata !4289, metadata !DIExpression()), !dbg !4310
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4310
  %229 = or i1 %224, %226, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %229, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %229, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228), !dbg !4312
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !4312
  %232 = mul i64 %228, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %232, metadata !4289, metadata !DIExpression()), !dbg !4310
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !4310
  %234 = or i1 %229, %231, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %234, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %234, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233), !dbg !4312
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4312
  %237 = mul i64 %233, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %237, metadata !4289, metadata !DIExpression()), !dbg !4310
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4310
  %239 = or i1 %234, %236, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %239, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i1 %239, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4308
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4310
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238), !dbg !4312
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4312
  %242 = mul i64 %238, %70, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %242, metadata !4289, metadata !DIExpression()), !dbg !4310
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4310
  %244 = or i1 %239, %241, !dbg !4313
  %245 = zext i1 %244 to i32, !dbg !4313
  call void @llvm.dbg.value(metadata i32 %245, metadata !4272, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4308
  br label %373, !dbg !4295

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4316
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4318
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !4318
  %249 = mul i64 %46, %70, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %249, metadata !4289, metadata !DIExpression()), !dbg !4316
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !4316
  call void @llvm.dbg.value(metadata i1 %248, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i1 %248, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4316
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250), !dbg !4318
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !4318
  %253 = mul i64 %250, %70, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %253, metadata !4289, metadata !DIExpression()), !dbg !4316
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !4316
  %255 = or i1 %248, %252, !dbg !4319
  call void @llvm.dbg.value(metadata i1 %255, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i1 %255, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4316
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254), !dbg !4318
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !4318
  %258 = mul i64 %254, %70, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %258, metadata !4289, metadata !DIExpression()), !dbg !4316
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !4316
  %260 = or i1 %255, %257, !dbg !4319
  call void @llvm.dbg.value(metadata i1 %260, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i1 %260, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4316
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259), !dbg !4318
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4318
  %263 = mul i64 %259, %70, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %263, metadata !4289, metadata !DIExpression()), !dbg !4316
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4316
  %265 = or i1 %260, %262, !dbg !4319
  call void @llvm.dbg.value(metadata i1 %265, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i1 %265, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4314
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4316
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264), !dbg !4318
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4318
  %268 = mul i64 %264, %70, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %268, metadata !4289, metadata !DIExpression()), !dbg !4316
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4316
  %270 = or i1 %265, %267, !dbg !4319
  %271 = zext i1 %270 to i32, !dbg !4319
  call void @llvm.dbg.value(metadata i32 %271, metadata !4272, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4314
  br label %373, !dbg !4295

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 6, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4322
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4324
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !4324
  %275 = mul i64 %46, %70, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %275, metadata !4289, metadata !DIExpression()), !dbg !4322
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !4322
  call void @llvm.dbg.value(metadata i1 %274, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i1 %274, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4322
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276), !dbg !4324
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !4324
  %279 = mul i64 %276, %70, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %279, metadata !4289, metadata !DIExpression()), !dbg !4322
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !4322
  %281 = or i1 %274, %278, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %281, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i1 %281, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4322
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280), !dbg !4324
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !4324
  %284 = mul i64 %280, %70, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %284, metadata !4289, metadata !DIExpression()), !dbg !4322
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !4322
  %286 = or i1 %281, %283, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %286, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i1 %286, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4322
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285), !dbg !4324
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !4324
  %289 = mul i64 %285, %70, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %289, metadata !4289, metadata !DIExpression()), !dbg !4322
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !4322
  %291 = or i1 %286, %288, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %291, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i1 %291, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4322
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290), !dbg !4324
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !4324
  %294 = mul i64 %290, %70, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %294, metadata !4289, metadata !DIExpression()), !dbg !4322
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !4322
  %296 = or i1 %291, %293, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %296, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i1 %296, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4320
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4322
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295), !dbg !4324
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !4324
  %299 = mul i64 %295, %70, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %299, metadata !4289, metadata !DIExpression()), !dbg !4322
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !4322
  %301 = or i1 %296, %298, !dbg !4325
  %302 = zext i1 %301 to i32, !dbg !4325
  call void @llvm.dbg.value(metadata i32 %302, metadata !4272, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4320
  br label %373, !dbg !4295

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i32 512, metadata !4288, metadata !DIExpression()), !dbg !4326
  %304 = icmp ugt i64 %46, 36028797018963967, !dbg !4328
  %305 = shl i64 %46, 9, !dbg !4328
  call void @llvm.dbg.value(metadata i64 %305, metadata !4289, metadata !DIExpression()), !dbg !4326
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !4326
  %307 = zext i1 %304 to i32, !dbg !4326
  call void @llvm.dbg.value(metadata i32 %307, metadata !4206, metadata !DIExpression()), !dbg !4257
  br label %373, !dbg !4329

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 1024, metadata !4288, metadata !DIExpression()), !dbg !4330
  %309 = icmp ugt i64 %46, 18014398509481983, !dbg !4332
  %310 = shl i64 %46, 10, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %310, metadata !4289, metadata !DIExpression()), !dbg !4330
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !4330
  %312 = zext i1 %309 to i32, !dbg !4330
  call void @llvm.dbg.value(metadata i32 %312, metadata !4206, metadata !DIExpression()), !dbg !4257
  br label %373, !dbg !4333

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4277, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 poison, metadata !4278, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4334
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4336
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4338
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !4338
  %316 = mul i64 %46, %70, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %316, metadata !4289, metadata !DIExpression()), !dbg !4336
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !4336
  call void @llvm.dbg.value(metadata i1 %315, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4334
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4334
  call void @llvm.dbg.value(metadata i1 %315, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4334
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4336
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317), !dbg !4338
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !4338
  %320 = mul i64 %317, %70, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %320, metadata !4289, metadata !DIExpression()), !dbg !4336
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !4336
  %322 = or i1 %315, %319, !dbg !4339
  call void @llvm.dbg.value(metadata i1 %322, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4334
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4334
  call void @llvm.dbg.value(metadata i1 %322, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4334
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4336
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321), !dbg !4338
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !4338
  %325 = mul i64 %321, %70, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %325, metadata !4289, metadata !DIExpression()), !dbg !4336
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !4336
  %327 = or i1 %322, %324, !dbg !4339
  %328 = zext i1 %327 to i32, !dbg !4339
  call void @llvm.dbg.value(metadata i32 %328, metadata !4272, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4334
  br label %373, !dbg !4295

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4277, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 poison, metadata !4278, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4340
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4342
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !4342
  %332 = mul i64 %46, %70, !dbg !4342
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !4344
  %334 = zext i1 %331 to i32, !dbg !4344
  call void @llvm.dbg.value(metadata i32 poison, metadata !4272, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 poison, metadata !4279, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata ptr poison, metadata !4283, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i64 poison, metadata !4289, metadata !DIExpression()), !dbg !4344
  br label %373, !dbg !4295

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4277, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 poison, metadata !4278, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4347
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4349
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !4349
  %338 = mul i64 %46, %70, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %338, metadata !4289, metadata !DIExpression()), !dbg !4347
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !4347
  call void @llvm.dbg.value(metadata i1 %337, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i1 %337, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4347
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339), !dbg !4349
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !4349
  %342 = mul i64 %339, %70, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %342, metadata !4289, metadata !DIExpression()), !dbg !4347
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !4347
  %344 = or i1 %337, %341, !dbg !4350
  %345 = zext i1 %344 to i32, !dbg !4350
  call void @llvm.dbg.value(metadata i32 %345, metadata !4272, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4345
  br label %373, !dbg !4295

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4277, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 poison, metadata !4278, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 4, metadata !4279, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4353
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4355
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !4355
  %349 = mul i64 %46, %70, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %349, metadata !4289, metadata !DIExpression()), !dbg !4353
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !4353
  call void @llvm.dbg.value(metadata i1 %348, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i1 %348, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i32 3, metadata !4279, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4353
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350), !dbg !4355
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !4355
  %353 = mul i64 %350, %70, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %353, metadata !4289, metadata !DIExpression()), !dbg !4353
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !4353
  %355 = or i1 %348, %352, !dbg !4356
  call void @llvm.dbg.value(metadata i1 %355, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i1 %355, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i32 2, metadata !4279, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4353
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354), !dbg !4355
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !4355
  %358 = mul i64 %354, %70, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %358, metadata !4289, metadata !DIExpression()), !dbg !4353
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !4353
  %360 = or i1 %355, %357, !dbg !4356
  call void @llvm.dbg.value(metadata i1 %360, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i1 %360, metadata !4272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4351
  call void @llvm.dbg.value(metadata i32 1, metadata !4279, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 poison, metadata !4288, metadata !DIExpression()), !dbg !4353
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359), !dbg !4355
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !4355
  %363 = mul i64 %359, %70, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %363, metadata !4289, metadata !DIExpression()), !dbg !4353
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !4353
  %365 = or i1 %360, %362, !dbg !4356
  %366 = zext i1 %365 to i32, !dbg !4356
  call void @llvm.dbg.value(metadata i32 %366, metadata !4272, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4351
  br label %373, !dbg !4295

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4283, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i32 2, metadata !4288, metadata !DIExpression()), !dbg !4357
  %368 = shl i64 %46, 1, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %368, metadata !4289, metadata !DIExpression()), !dbg !4357
  %369 = icmp sgt i64 %46, -1, !dbg !4357
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !4357
  %371 = lshr i64 %46, 63, !dbg !4357
  %372 = trunc i64 %371 to i32, !dbg !4357
  call void @llvm.dbg.value(metadata i32 %372, metadata !4206, metadata !DIExpression()), !dbg !4257
  br label %373, !dbg !4360

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %46, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !4207
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !4361
  call void @llvm.dbg.value(metadata i32 %375, metadata !4206, metadata !DIExpression()), !dbg !4257
  %376 = or i32 %375, %45, !dbg !4295
  call void @llvm.dbg.value(metadata i32 %376, metadata !4201, metadata !DIExpression()), !dbg !4207
  %377 = getelementptr inbounds i8, ptr %26, i64 %71, !dbg !4362
  store ptr %377, ptr %20, align 8, !dbg !4362, !tbaa !1054
  %378 = load i8, ptr %377, align 1, !dbg !4363, !tbaa !1126
  %379 = icmp eq i8 %378, 0, !dbg !4363
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %381, metadata !4201, metadata !DIExpression()), !dbg !4207
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %25, metadata !4200, metadata !DIExpression()), !dbg !4207
  store i64 %46, ptr %3, align 8, !dbg !4366, !tbaa !1802
  %383 = or i32 %45, 2, !dbg !4367
  call void @llvm.dbg.value(metadata i32 %45, metadata !4201, metadata !DIExpression()), !dbg !4207
  br label %387

384:                                              ; preds = %373, %44
  %385 = phi i64 [ %46, %44 ], [ %374, %373 ], !dbg !4368
  %386 = phi i32 [ %45, %44 ], [ %381, %373 ], !dbg !4369
  call void @llvm.dbg.value(metadata i32 %386, metadata !4201, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 %385, metadata !4200, metadata !DIExpression()), !dbg !4207
  store i64 %385, ptr %3, align 8, !dbg !4370, !tbaa !1802
  br label %387, !dbg !4371

387:                                              ; preds = %43, %53, %384, %33, %30, %28, %37, %382, %22
  %388 = phi i32 [ 4, %22 ], [ %386, %384 ], [ %383, %382 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4207
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !4372
  ret i32 %388, !dbg !4372
}

; Function Attrs: nounwind
declare !dbg !4373 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4377 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4415, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata ptr %1, metadata !4416, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 0, metadata !4417, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 0, metadata !4418, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i8 0, metadata !4419, metadata !DIExpression()), !dbg !4439
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #39, !dbg !4440
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4420, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %1, metadata !4424, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %3, metadata !4426, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4417, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 0, metadata !4418, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i8 0, metadata !4419, metadata !DIExpression()), !dbg !4439
  %4 = load i8, ptr %1, align 1, !dbg !4443, !tbaa !1126
  %5 = icmp eq i8 %4, 0, !dbg !4444
  br i1 %5, label %6, label %7, !dbg !4445

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4426, metadata !DIExpression()), !dbg !4442
  store i8 0, ptr %3, align 16, !dbg !4446, !tbaa !1126
  br label %74, !dbg !4447

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4417, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 %11, metadata !4418, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata ptr %13, metadata !4424, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i8 %14, metadata !4419, metadata !DIExpression()), !dbg !4439
  %15 = sext i8 %8 to i32, !dbg !4443
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !4448

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4417, metadata !DIExpression()), !dbg !4439
  %17 = icmp slt i64 %12, 80, !dbg !4449
  br i1 %17, label %18, label %47, !dbg !4452

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !4453
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4442
  store i8 %8, ptr %9, align 1, !dbg !4454, !tbaa !1126
  br label %47, !dbg !4455

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4417, metadata !DIExpression()), !dbg !4439
  %21 = or i32 %11, 576, !dbg !4456
  call void @llvm.dbg.value(metadata i32 %21, metadata !4418, metadata !DIExpression()), !dbg !4439
  %22 = icmp slt i64 %12, 80, !dbg !4457
  br i1 %22, label %23, label %47, !dbg !4459

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !4460
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4442
  store i8 %8, ptr %9, align 1, !dbg !4461, !tbaa !1126
  br label %47, !dbg !4462

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4417, metadata !DIExpression()), !dbg !4439
  %26 = or i32 %11, 1088, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %26, metadata !4418, metadata !DIExpression()), !dbg !4439
  %27 = icmp slt i64 %12, 80, !dbg !4464
  br i1 %27, label %28, label %47, !dbg !4466

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !4467
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4442
  store i8 %8, ptr %9, align 1, !dbg !4468, !tbaa !1126
  br label %47, !dbg !4469

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4418, metadata !DIExpression()), !dbg !4439
  %31 = icmp slt i64 %12, 80, !dbg !4470
  br i1 %31, label %32, label %47, !dbg !4472

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !4473
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4442
  store i8 %8, ptr %9, align 1, !dbg !4474, !tbaa !1126
  br label %47, !dbg !4475

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4417, metadata !DIExpression()), !dbg !4439
  %35 = icmp slt i64 %12, 80, !dbg !4476
  br i1 %35, label %36, label %47, !dbg !4478

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !4479
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4442
  store i8 %8, ptr %9, align 1, !dbg !4480, !tbaa !1126
  br label %47, !dbg !4481

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %39, metadata !4418, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i8 1, metadata !4419, metadata !DIExpression()), !dbg !4439
  br label %47, !dbg !4483

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !4484
  call void @llvm.dbg.value(metadata i32 %41, metadata !4418, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i8 1, metadata !4419, metadata !DIExpression()), !dbg !4439
  br label %47, !dbg !4485

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #40, !dbg !4486
  call void @llvm.dbg.value(metadata i64 %43, metadata !4427, metadata !DIExpression()), !dbg !4487
  %44 = sub nsw i64 80, %12, !dbg !4488
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %45, metadata !4427, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata ptr %9, metadata !4491, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata ptr %13, metadata !4494, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i64 %45, metadata !4495, metadata !DIExpression()), !dbg !4496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #39, !dbg !4498
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !4499
  call void @llvm.dbg.value(metadata ptr %46, metadata !4426, metadata !DIExpression()), !dbg !4442
  br label %56, !dbg !4500

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !4439
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !4439
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !4439
  call void @llvm.dbg.value(metadata i32 %51, metadata !4417, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 %50, metadata !4418, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i8 %48, metadata !4419, metadata !DIExpression()), !dbg !4439
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !4501
  call void @llvm.dbg.value(metadata ptr %52, metadata !4424, metadata !DIExpression()), !dbg !4442
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !4439
  call void @llvm.dbg.value(metadata ptr %53, metadata !4426, metadata !DIExpression()), !dbg !4442
  %54 = load i8, ptr %52, align 1, !dbg !4443, !tbaa !1126
  %55 = icmp eq i8 %54, 0, !dbg !4444
  br i1 %55, label %56, label %7, !dbg !4445, !llvm.loop !4502

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !4442
  call void @llvm.dbg.value(metadata ptr %60, metadata !4426, metadata !DIExpression()), !dbg !4442
  store i8 0, ptr %60, align 1, !dbg !4446, !tbaa !1126
  %61 = and i8 %57, 1, !dbg !4504
  %62 = icmp eq i8 %61, 0, !dbg !4504
  br i1 %62, label %74, label %63, !dbg !4447

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !4505
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #39, !dbg !4506
  call void @llvm.dbg.value(metadata i32 %65, metadata !4432, metadata !DIExpression()), !dbg !4507
  %66 = icmp slt i32 %65, 0, !dbg !4508
  br i1 %66, label %76, label %67, !dbg !4510

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #39, !dbg !4511
  call void @llvm.dbg.value(metadata ptr %68, metadata !4435, metadata !DIExpression()), !dbg !4507
  %69 = icmp eq ptr %68, null, !dbg !4512
  br i1 %69, label %70, label %76, !dbg !4513

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #42, !dbg !4514
  %72 = load i32, ptr %71, align 4, !dbg !4514, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %72, metadata !4436, metadata !DIExpression()), !dbg !4515
  %73 = tail call i32 @close(i32 noundef %65) #39, !dbg !4516
  store i32 %72, ptr %71, align 4, !dbg !4517, !tbaa !1117
  br label %76, !dbg !4518

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !4519, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr %1, metadata !4522, metadata !DIExpression()), !dbg !4523
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4525
  br label %76, !dbg !4526

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !4439
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #39, !dbg !4527
  ret ptr %77, !dbg !4527
}

; Function Attrs: nofree
declare !dbg !4528 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare !dbg !4531 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4534 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4535 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4538 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4576, metadata !DIExpression()), !dbg !4581
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4582
  call void @llvm.dbg.value(metadata i1 poison, metadata !4577, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %0, metadata !4583, metadata !DIExpression()), !dbg !4586
  %3 = load i32, ptr %0, align 8, !dbg !4588, !tbaa !4589
  %4 = and i32 %3, 32, !dbg !4590
  %5 = icmp eq i32 %4, 0, !dbg !4590
  call void @llvm.dbg.value(metadata i1 %5, metadata !4579, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4581
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4591
  %7 = icmp eq i32 %6, 0, !dbg !4592
  call void @llvm.dbg.value(metadata i1 %7, metadata !4580, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4581
  br i1 %5, label %8, label %18, !dbg !4593

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4595
  call void @llvm.dbg.value(metadata i1 %9, metadata !4577, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4581
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4596
  %11 = xor i1 %7, true, !dbg !4596
  %12 = sext i1 %11 to i32, !dbg !4596
  br i1 %10, label %21, label %13, !dbg !4596

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4597
  %15 = load i32, ptr %14, align 4, !dbg !4597, !tbaa !1117
  %16 = icmp ne i32 %15, 9, !dbg !4598
  %17 = sext i1 %16 to i32, !dbg !4599
  br label %21, !dbg !4599

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4600

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4602
  store i32 0, ptr %20, align 4, !dbg !4604, !tbaa !1117
  br label %21, !dbg !4602

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4581
  ret i32 %22, !dbg !4605
}

; Function Attrs: nounwind
declare !dbg !4606 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4610 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4648, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i32 0, metadata !4649, metadata !DIExpression()), !dbg !4652
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4653
  call void @llvm.dbg.value(metadata i32 %2, metadata !4650, metadata !DIExpression()), !dbg !4652
  %3 = icmp slt i32 %2, 0, !dbg !4654
  br i1 %3, label %4, label %6, !dbg !4656

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4657
  br label %24, !dbg !4658

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4659
  %8 = icmp eq i32 %7, 0, !dbg !4659
  br i1 %8, label %13, label %9, !dbg !4661

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4662
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4663
  %12 = icmp eq i64 %11, -1, !dbg !4664
  br i1 %12, label %16, label %13, !dbg !4665

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4666
  %15 = icmp eq i32 %14, 0, !dbg !4666
  br i1 %15, label %16, label %18, !dbg !4667

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4649, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i32 0, metadata !4651, metadata !DIExpression()), !dbg !4652
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %17, metadata !4651, metadata !DIExpression()), !dbg !4652
  br label %24, !dbg !4669

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4670
  %20 = load i32, ptr %19, align 4, !dbg !4670, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 %20, metadata !4649, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i32 0, metadata !4651, metadata !DIExpression()), !dbg !4652
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %21, metadata !4651, metadata !DIExpression()), !dbg !4652
  %22 = icmp eq i32 %20, 0, !dbg !4671
  br i1 %22, label %24, label %23, !dbg !4669

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4673, !tbaa !1117
  call void @llvm.dbg.value(metadata i32 -1, metadata !4651, metadata !DIExpression()), !dbg !4652
  br label %24, !dbg !4675

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4652
  ret i32 %25, !dbg !4676
}

; Function Attrs: nofree nounwind
declare !dbg !4677 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4678 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4679 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4680 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4683 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4721, metadata !DIExpression()), !dbg !4722
  %2 = icmp eq ptr %0, null, !dbg !4723
  br i1 %2, label %6, label %3, !dbg !4725

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4726
  %5 = icmp eq i32 %4, 0, !dbg !4726
  br i1 %5, label %6, label %8, !dbg !4727

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4728
  br label %16, !dbg !4729

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4730, metadata !DIExpression()), !dbg !4735
  %9 = load i32, ptr %0, align 8, !dbg !4737, !tbaa !4589
  %10 = and i32 %9, 256, !dbg !4739
  %11 = icmp eq i32 %10, 0, !dbg !4739
  br i1 %11, label %14, label %12, !dbg !4740

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4741
  br label %14, !dbg !4741

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4742
  br label %16, !dbg !4743

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4722
  ret i32 %17, !dbg !4744
}

; Function Attrs: nofree nounwind
declare !dbg !4745 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4746 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4785, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i64 %1, metadata !4786, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i32 %2, metadata !4787, metadata !DIExpression()), !dbg !4791
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4792
  %5 = load ptr, ptr %4, align 8, !dbg !4792, !tbaa !4793
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4794
  %7 = load ptr, ptr %6, align 8, !dbg !4794, !tbaa !4795
  %8 = icmp eq ptr %5, %7, !dbg !4796
  br i1 %8, label %9, label %27, !dbg !4797

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4798
  %11 = load ptr, ptr %10, align 8, !dbg !4798, !tbaa !1507
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4799
  %13 = load ptr, ptr %12, align 8, !dbg !4799, !tbaa !4800
  %14 = icmp eq ptr %11, %13, !dbg !4801
  br i1 %14, label %15, label %27, !dbg !4802

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4803
  %17 = load ptr, ptr %16, align 8, !dbg !4803, !tbaa !4804
  %18 = icmp eq ptr %17, null, !dbg !4805
  br i1 %18, label %19, label %27, !dbg !4806

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4807
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4808
  call void @llvm.dbg.value(metadata i64 %21, metadata !4788, metadata !DIExpression()), !dbg !4809
  %22 = icmp eq i64 %21, -1, !dbg !4810
  br i1 %22, label %29, label %23, !dbg !4812

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4813, !tbaa !4589
  %25 = and i32 %24, -17, !dbg !4813
  store i32 %25, ptr %0, align 8, !dbg !4813, !tbaa !4589
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4814
  store i64 %21, ptr %26, align 8, !dbg !4815, !tbaa !4816
  br label %29, !dbg !4817

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4818
  br label %29, !dbg !4819

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4791
  ret i32 %30, !dbg !4820
}

; Function Attrs: nofree nounwind
declare !dbg !4821 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4824 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4829, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata ptr %1, metadata !4830, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata i64 %2, metadata !4831, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata ptr %3, metadata !4832, metadata !DIExpression()), !dbg !4834
  %5 = icmp eq ptr %1, null, !dbg !4835
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4837
  %7 = select i1 %5, ptr @.str.137, ptr %1, !dbg !4837
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %8, metadata !4831, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata ptr %7, metadata !4830, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata ptr %6, metadata !4829, metadata !DIExpression()), !dbg !4834
  %9 = icmp eq ptr %3, null, !dbg !4838
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4840
  call void @llvm.dbg.value(metadata ptr %10, metadata !4832, metadata !DIExpression()), !dbg !4834
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4841
  call void @llvm.dbg.value(metadata i64 %11, metadata !4833, metadata !DIExpression()), !dbg !4834
  %12 = icmp ult i64 %11, -3, !dbg !4842
  br i1 %12, label %13, label %17, !dbg !4844

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4845
  %15 = icmp eq i32 %14, 0, !dbg !4845
  br i1 %15, label %16, label %29, !dbg !4846

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4847, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata ptr %10, metadata !4854, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i32 0, metadata !4857, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 8, metadata !4858, metadata !DIExpression()), !dbg !4859
  store i64 0, ptr %10, align 1, !dbg !4861
  br label %29, !dbg !4862

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4863
  br i1 %18, label %19, label %20, !dbg !4865

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4866
  unreachable, !dbg !4866

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4867

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4869
  br i1 %23, label %29, label %24, !dbg !4870

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4871
  br i1 %25, label %29, label %26, !dbg !4874

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4875, !tbaa !1126
  %28 = zext i8 %27 to i32, !dbg !4876
  store i32 %28, ptr %6, align 4, !dbg !4877, !tbaa !1117
  br label %29, !dbg !4878

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4834
  ret i64 %30, !dbg !4879
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4880 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4886 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4888, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i64 %1, metadata !4889, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i64 %2, metadata !4890, metadata !DIExpression()), !dbg !4892
  %4 = icmp eq i64 %2, 0, !dbg !4893
  br i1 %4, label %8, label %5, !dbg !4893

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4893
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4893
  br i1 %7, label %13, label %8, !dbg !4893

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4891, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4892
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4891, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4892
  %9 = mul i64 %2, %1, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %9, metadata !4891, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata ptr %0, metadata !4895, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i64 %9, metadata !4898, metadata !DIExpression()), !dbg !4899
  %10 = icmp eq i64 %9, 0, !dbg !4901
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4901
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4902
  br label %15, !dbg !4903

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4891, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4892
  %14 = tail call ptr @__errno_location() #42, !dbg !4904
  store i32 12, ptr %14, align 4, !dbg !4906, !tbaa !1117
  br label %15, !dbg !4907

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4892
  ret ptr %16, !dbg !4908
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4909 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4911, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4912, metadata !DIExpression()), !dbg !4918
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4919
  %4 = icmp eq i32 %3, 0, !dbg !4919
  br i1 %4, label %5, label %12, !dbg !4921

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4922, metadata !DIExpression()), !dbg !4926
  %6 = load i16, ptr %2, align 16, !dbg !4929
  %7 = icmp eq i16 %6, 67, !dbg !4929
  br i1 %7, label %11, label %8, !dbg !4930

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4922, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.value(metadata ptr @.str.1.142, metadata !4925, metadata !DIExpression()), !dbg !4931
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.142, i64 6), !dbg !4933
  %10 = icmp eq i32 %9, 0, !dbg !4934
  br i1 %10, label %11, label %12, !dbg !4935

11:                                               ; preds = %8, %5
  br label %12, !dbg !4936

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4916
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4937
  ret i1 %13, !dbg !4937
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4942, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata ptr %1, metadata !4943, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 %2, metadata !4944, metadata !DIExpression()), !dbg !4945
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4946
  ret i32 %4, !dbg !4947
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4952, metadata !DIExpression()), !dbg !4953
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4954
  ret ptr %2, !dbg !4955
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4956 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4958, metadata !DIExpression()), !dbg !4960
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4961
  call void @llvm.dbg.value(metadata ptr %2, metadata !4959, metadata !DIExpression()), !dbg !4960
  ret ptr %2, !dbg !4962
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4965, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata ptr %1, metadata !4966, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata i64 %2, metadata !4967, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata i32 %0, metadata !4958, metadata !DIExpression()), !dbg !4973
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4975
  call void @llvm.dbg.value(metadata ptr %4, metadata !4959, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata ptr %4, metadata !4968, metadata !DIExpression()), !dbg !4972
  %5 = icmp eq ptr %4, null, !dbg !4976
  br i1 %5, label %6, label %9, !dbg !4977

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4978
  br i1 %7, label %19, label %8, !dbg !4981

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4982, !tbaa !1126
  br label %19, !dbg !4983

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4984
  call void @llvm.dbg.value(metadata i64 %10, metadata !4969, metadata !DIExpression()), !dbg !4985
  %11 = icmp ult i64 %10, %2, !dbg !4986
  br i1 %11, label %12, label %14, !dbg !4988

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4989
  call void @llvm.dbg.value(metadata ptr %1, metadata !4991, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.value(metadata ptr %4, metadata !4994, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.value(metadata i64 %13, metadata !4995, metadata !DIExpression()), !dbg !4996
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4998
  br label %19, !dbg !4999

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5000
  br i1 %15, label %19, label %16, !dbg !5003

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5004
  call void @llvm.dbg.value(metadata ptr %1, metadata !4991, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata ptr %4, metadata !4994, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata i64 %17, metadata !4995, metadata !DIExpression()), !dbg !5006
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5008
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5009
  store i8 0, ptr %18, align 1, !dbg !5010, !tbaa !1126
  br label %19, !dbg !5011

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5012
  ret i32 %20, !dbg !5013
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
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !351, !355, !370, !691, !726, !728, !453, !467, !515, !953, !683, !960, !994, !996, !1008, !1015, !1017, !1019, !1021, !1023, !710, !1025, !1028, !1032, !1034}
!llvm.ident = !{!1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036, !1036}
!llvm.module.flags = !{!1037, !1038, !1039, !1040, !1041, !1042}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9be389db91a894f809edad2807c32835")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !100, globals: !110, splitDebugInlining: false, nameTableKind: None)
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
!72 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!73 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 34, baseType: !63, size: 32, elements: !75)
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "ALL_OPTION", value: 128)
!77 = !DIEnumerator(name: "IGNORE_OPTION", value: 129)
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
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!351 = distinct !DICompileUnit(language: DW_LANG_C11, file: !348, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !352, splitDebugInlining: false, nameTableKind: None)
!352 = !{!346, !349}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "file_name", scope: !355, file: !356, line: 45, type: !107, isLocal: true, isDefinition: true)
!355 = distinct !DICompileUnit(language: DW_LANG_C11, file: !356, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !357, splitDebugInlining: false, nameTableKind: None)
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
!369 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !370, file: !371, line: 66, type: !417, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!372 = !{!102, !109}
!373 = !{!374, !376, !396, !398, !400, !402, !368, !404, !406, !408, !410, !415}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 272, type: !133, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "old_file_name", scope: !378, file: !371, line: 304, type: !107, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "verror_at_line", scope: !371, file: !371, line: 298, type: !379, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !389)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !70, !70, !107, !63, !107, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !383)
!383 = !{!384, !386, !387, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !382, file: !385, baseType: !63, size: 32)
!385 = !DIFile(filename: "lib/error.c", directory: "/src")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !382, file: !385, baseType: !63, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !382, file: !385, baseType: !102, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !382, file: !385, baseType: !102, size: 64, offset: 128)
!389 = !{!390, !391, !392, !393, !394, !395}
!390 = !DILocalVariable(name: "status", arg: 1, scope: !378, file: !371, line: 298, type: !70)
!391 = !DILocalVariable(name: "errnum", arg: 2, scope: !378, file: !371, line: 298, type: !70)
!392 = !DILocalVariable(name: "file_name", arg: 3, scope: !378, file: !371, line: 298, type: !107)
!393 = !DILocalVariable(name: "line_number", arg: 4, scope: !378, file: !371, line: 298, type: !63)
!394 = !DILocalVariable(name: "message", arg: 5, scope: !378, file: !371, line: 298, type: !107)
!395 = !DILocalVariable(name: "args", arg: 6, scope: !378, file: !371, line: 298, type: !381)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "old_line_number", scope: !378, file: !371, line: 305, type: !63, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !371, line: 338, type: !225, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !257, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !232, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "error_message_count", scope: !370, file: !371, line: 69, type: !63, isLocal: false, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !370, file: !371, line: 295, type: !70, isLocal: false, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !252, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 21)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !371, line: 214, type: !133, isLocal: true, isDefinition: true)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null}
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !422, line: 553, type: !296, isLocal: true, isDefinition: true)
!422 = !DIFile(filename: "lib/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8ed3d3246f48dd170075371c80925eac")
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !422, line: 556, type: !128, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !422, line: 404, type: !118, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !422, line: 404, type: !232, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !422, line: 415, type: !133, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !422, line: 441, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 13)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !422, line: 446, type: !225, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !422, line: 449, type: !257, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !422, line: 371, type: !442, isLocal: true, isDefinition: true)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 34)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !422, line: 372, type: !123, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !422, line: 378, type: !433, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !422, line: 384, type: !257, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "program_name", scope: !453, file: !454, line: 31, type: !107, isLocal: false, isDefinition: true)
!453 = distinct !DICompileUnit(language: DW_LANG_C11, file: !454, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, globals: !456, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!455 = !{!101}
!456 = !{!451, !457, !459}
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !454, line: 46, type: !257, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !454, line: 49, type: !225, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "utf07FF", scope: !463, file: !464, line: 46, type: !491, isLocal: true, isDefinition: true)
!463 = distinct !DISubprogram(name: "proper_name_lite", scope: !464, file: !464, line: 38, type: !465, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !469)
!464 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!465 = !DISubroutineType(types: !466)
!466 = !{!107, !107, !107}
!467 = distinct !DICompileUnit(language: DW_LANG_C11, file: !464, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !468, splitDebugInlining: false, nameTableKind: None)
!468 = !{!461}
!469 = !{!470, !471, !472, !473, !478}
!470 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !463, file: !464, line: 38, type: !107)
!471 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !463, file: !464, line: 38, type: !107)
!472 = !DILocalVariable(name: "translation", scope: !463, file: !464, line: 40, type: !107)
!473 = !DILocalVariable(name: "w", scope: !463, file: !464, line: 47, type: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !475, line: 37, baseType: !476)
!475 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !188, line: 57, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !188, line: 42, baseType: !63)
!478 = !DILocalVariable(name: "mbs", scope: !463, file: !464, line: 48, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !480, line: 6, baseType: !481)
!480 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !482, line: 21, baseType: !483)
!482 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !482, line: 13, size: 64, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !483, file: !482, line: 15, baseType: !70, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !483, file: !482, line: 20, baseType: !487, size: 32, offset: 32)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !482, line: 16, size: 32, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !487, file: !482, line: 18, baseType: !63, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !487, file: !482, line: 19, baseType: !225, size: 32)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16, elements: !233)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !494, line: 78, type: !257, isLocal: true, isDefinition: true)
!494 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !494, line: 79, type: !19, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !494, line: 80, type: !433, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !494, line: 81, type: !433, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !494, line: 82, type: !210, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !494, line: 83, type: !232, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !494, line: 84, type: !257, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !494, line: 85, type: !252, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !494, line: 86, type: !252, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !494, line: 87, type: !257, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !515, file: !494, line: 76, type: !601, isLocal: false, isDefinition: true)
!515 = distinct !DICompileUnit(language: DW_LANG_C11, file: !494, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !516, retainedTypes: !536, globals: !537, splitDebugInlining: false, nameTableKind: None)
!516 = !{!517, !531, !85}
!517 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !518, line: 42, baseType: !63, size: 32, elements: !519)
!518 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!520 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!521 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!522 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!523 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!524 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!525 = !DIEnumerator(name: "c_quoting_style", value: 5)
!526 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!527 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!528 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!529 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!530 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!531 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !518, line: 254, baseType: !63, size: 32, elements: !532)
!532 = !{!533, !534, !535}
!533 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!534 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!535 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!536 = !{!70, !103, !104}
!537 = !{!492, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !538, !542, !552, !554, !559, !561, !563, !565, !567, !590, !597, !599}
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !515, file: !494, line: 92, type: !540, isLocal: false, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 320, elements: !50)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !515, file: !494, line: 1040, type: !544, isLocal: false, isDefinition: true)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !494, line: 56, size: 448, elements: !545)
!545 = !{!546, !547, !548, !550, !551}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !544, file: !494, line: 59, baseType: !517, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !494, line: 62, baseType: !70, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !544, file: !494, line: 66, baseType: !549, size: 256, offset: 64)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !258)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !544, file: !494, line: 69, baseType: !107, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !544, file: !494, line: 72, baseType: !107, size: 64, offset: 384)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !515, file: !494, line: 107, type: !544, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "slot0", scope: !515, file: !494, line: 831, type: !556, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 256)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !494, line: 321, type: !232, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !494, line: 357, type: !232, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !494, line: 358, type: !232, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !494, line: 199, type: !252, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "quote", scope: !569, file: !494, line: 228, type: !588, isLocal: true, isDefinition: true)
!569 = distinct !DISubprogram(name: "gettext_quote", scope: !494, file: !494, line: 197, type: !570, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{!107, !107, !517}
!572 = !{!573, !574, !575, !576, !577}
!573 = !DILocalVariable(name: "msgid", arg: 1, scope: !569, file: !494, line: 197, type: !107)
!574 = !DILocalVariable(name: "s", arg: 2, scope: !569, file: !494, line: 197, type: !517)
!575 = !DILocalVariable(name: "translation", scope: !569, file: !494, line: 199, type: !107)
!576 = !DILocalVariable(name: "w", scope: !569, file: !494, line: 229, type: !474)
!577 = !DILocalVariable(name: "mbs", scope: !569, file: !494, line: 230, type: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !480, line: 6, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !482, line: 21, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !482, line: 13, size: 64, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !580, file: !482, line: 15, baseType: !70, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !580, file: !482, line: 20, baseType: !584, size: 32, offset: 32)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !482, line: 16, size: 32, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !584, file: !482, line: 18, baseType: !63, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !584, file: !482, line: 19, baseType: !225, size: 32)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !589)
!589 = !{!234, !227}
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "slotvec", scope: !515, file: !494, line: 834, type: !592, isLocal: true, isDefinition: true)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !494, line: 823, size: 128, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !593, file: !494, line: 825, baseType: !104, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !593, file: !494, line: 826, baseType: !101, size: 64, offset: 64)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "nslots", scope: !515, file: !494, line: 832, type: !70, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "slotvec0", scope: !515, file: !494, line: 833, type: !593, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 704, elements: !603)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!603 = !{!604}
!604 = !DISubrange(count: 11)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !607, line: 67, type: !325, isLocal: true, isDefinition: true)
!607 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !607, line: 69, type: !252, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !607, line: 83, type: !252, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !607, line: 83, type: !225, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !607, line: 85, type: !232, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !607, line: 88, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 171)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !607, line: 88, type: !442, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !607, line: 105, type: !296, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !607, line: 109, type: !9, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !607, line: 113, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 28)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !607, line: 120, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 32)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !607, line: 127, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 36)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !607, line: 134, type: !276, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !607, line: 142, type: !646, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 44)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !607, line: 150, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 48)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !607, line: 159, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 52)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !607, line: 170, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 60)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !607, line: 248, type: !210, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !607, line: 248, type: !301, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !607, line: 254, type: !210, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !607, line: 254, type: !113, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !607, line: 254, type: !276, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !607, line: 259, type: !3, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !607, line: 259, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 29)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !683, file: !684, line: 26, type: !686, isLocal: false, isDefinition: true)
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !684, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !685, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!685 = !{!681}
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 376, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 47)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(name: "exit_failure", scope: !691, file: !692, line: 24, type: !694, isLocal: false, isDefinition: true)
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !692, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !693, splitDebugInlining: false, nameTableKind: None)
!692 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!693 = !{!689}
!694 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !697, line: 34, type: !241, isLocal: true, isDefinition: true)
!697 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !697, line: 34, type: !252, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !697, line: 34, type: !128, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !704, line: 80, type: !252, isLocal: true, isDefinition: true)
!704 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !707, line: 108, type: !44, isLocal: true, isDefinition: true)
!707 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "internal_state", scope: !710, file: !707, line: 97, type: !713, isLocal: true, isDefinition: true)
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !707, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !711, globals: !712, splitDebugInlining: false, nameTableKind: None)
!711 = !{!102, !104, !109}
!712 = !{!705, !708}
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !480, line: 6, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !482, line: 21, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !482, line: 13, size: 64, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !715, file: !482, line: 15, baseType: !70, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !715, file: !482, line: 20, baseType: !719, size: 32, offset: 32)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !482, line: 16, size: 32, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !719, file: !482, line: 18, baseType: !63, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !719, file: !482, line: 19, baseType: !225, size: 32)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !725, line: 35, type: !19, isLocal: true, isDefinition: true)
!725 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !422, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !729, retainedTypes: !950, globals: !952, splitDebugInlining: false, nameTableKind: None)
!729 = !{!61, !730}
!730 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !731, line: 71, baseType: !63, size: 32, elements: !732)
!731 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949}
!733 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!734 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!735 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!736 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!737 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!738 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!739 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!740 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!741 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!742 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!743 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!744 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!745 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!746 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!747 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!748 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!749 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!750 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!751 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!752 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!753 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!754 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!755 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!756 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!757 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!758 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!759 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!760 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!761 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!762 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!763 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!764 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!765 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!766 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!767 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!768 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!769 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!770 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!771 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!772 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!773 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!774 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!775 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!776 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!777 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!778 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!779 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!780 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!781 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!782 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!783 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!784 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!785 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!786 = !DIEnumerator(name: "_SC_PII", value: 53)
!787 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!788 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!789 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!790 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!791 = !DIEnumerator(name: "_SC_POLL", value: 58)
!792 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!793 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!794 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!795 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!796 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!797 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!798 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!799 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!800 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!801 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!802 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!803 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!804 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!805 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!806 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!807 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!808 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!809 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!810 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!811 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!812 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!813 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!814 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!815 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!816 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!817 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!818 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!819 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!820 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!821 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!822 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!823 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!824 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!825 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!826 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!827 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!828 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!829 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!830 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!831 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!832 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!833 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!834 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!835 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!836 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!837 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!838 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!839 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!840 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!841 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!842 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!843 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!844 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!845 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!846 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!847 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!848 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!849 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!850 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!851 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!852 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!853 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!854 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!855 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!856 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!857 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!858 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!859 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!860 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!861 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!862 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!863 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!864 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!865 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!866 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!867 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!868 = !DIEnumerator(name: "_SC_BASE", value: 134)
!869 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!870 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!871 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!872 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!873 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!874 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!875 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!876 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!877 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!878 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!879 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!880 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!881 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!882 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!883 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!884 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!885 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!886 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!887 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!888 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!889 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!890 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!891 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!892 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!893 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!894 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!895 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!896 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!897 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!898 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!899 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!900 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!901 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!902 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!903 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!904 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!905 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!906 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!907 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!908 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!909 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!910 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!911 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!912 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!913 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!914 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!915 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!916 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!917 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!918 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!919 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!920 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!921 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!922 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!923 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!924 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!925 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!926 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!927 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!928 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!929 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!930 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!931 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!932 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!933 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!934 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!935 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!936 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!937 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!938 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!939 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!940 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!941 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!942 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!943 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!944 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!945 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!946 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!947 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!948 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!949 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!950 = !{!102, !951, !189}
!951 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!952 = !{!420, !423, !425, !427, !429, !431, !436, !438, !440, !445, !447, !449}
!953 = distinct !DICompileUnit(language: DW_LANG_C11, file: !607, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !954, retainedTypes: !958, globals: !959, splitDebugInlining: false, nameTableKind: None)
!954 = !{!955}
!955 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !607, line: 40, baseType: !63, size: 32, elements: !956)
!956 = !{!957}
!957 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!958 = !{!102}
!959 = !{!605, !608, !610, !612, !614, !616, !621, !623, !625, !627, !632, !637, !642, !644, !649, !654, !659, !664, !666, !668, !670, !672, !674, !676}
!960 = distinct !DICompileUnit(language: DW_LANG_C11, file: !961, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !962, retainedTypes: !993, splitDebugInlining: false, nameTableKind: None)
!961 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!962 = !{!963, !975}
!963 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !964, file: !961, line: 188, baseType: !63, size: 32, elements: !973)
!964 = distinct !DISubprogram(name: "x2nrealloc", scope: !961, file: !961, line: 176, type: !965, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !968)
!965 = !DISubroutineType(types: !966)
!966 = !{!102, !102, !967, !104}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!968 = !{!969, !970, !971, !972}
!969 = !DILocalVariable(name: "p", arg: 1, scope: !964, file: !961, line: 176, type: !102)
!970 = !DILocalVariable(name: "pn", arg: 2, scope: !964, file: !961, line: 176, type: !967)
!971 = !DILocalVariable(name: "s", arg: 3, scope: !964, file: !961, line: 176, type: !104)
!972 = !DILocalVariable(name: "n", scope: !964, file: !961, line: 178, type: !104)
!973 = !{!974}
!974 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!975 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !976, file: !961, line: 228, baseType: !63, size: 32, elements: !973)
!976 = distinct !DISubprogram(name: "xpalloc", scope: !961, file: !961, line: 223, type: !977, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !983)
!977 = !DISubroutineType(types: !978)
!978 = !{!102, !102, !979, !980, !982, !980}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !981, line: 130, baseType: !982)
!981 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !105, line: 35, baseType: !189)
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992}
!984 = !DILocalVariable(name: "pa", arg: 1, scope: !976, file: !961, line: 223, type: !102)
!985 = !DILocalVariable(name: "pn", arg: 2, scope: !976, file: !961, line: 223, type: !979)
!986 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !976, file: !961, line: 223, type: !980)
!987 = !DILocalVariable(name: "n_max", arg: 4, scope: !976, file: !961, line: 223, type: !982)
!988 = !DILocalVariable(name: "s", arg: 5, scope: !976, file: !961, line: 223, type: !980)
!989 = !DILocalVariable(name: "n0", scope: !976, file: !961, line: 230, type: !980)
!990 = !DILocalVariable(name: "n", scope: !976, file: !961, line: 237, type: !980)
!991 = !DILocalVariable(name: "nbytes", scope: !976, file: !961, line: 248, type: !980)
!992 = !DILocalVariable(name: "adjusted_nbytes", scope: !976, file: !961, line: 252, type: !980)
!993 = !{!101, !102, !148, !189, !106}
!994 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !995, splitDebugInlining: false, nameTableKind: None)
!995 = !{!695, !698, !700}
!996 = distinct !DICompileUnit(language: DW_LANG_C11, file: !997, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !998, globals: !1007, splitDebugInlining: false, nameTableKind: None)
!997 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!998 = !{!999, !78}
!999 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1000, line: 30, baseType: !63, size: 32, elements: !1001)
!1000 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1001 = !{!1002, !1003, !1004, !1005, !1006}
!1002 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!1003 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!1004 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!1005 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!1006 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!1007 = !{!702}
!1008 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1009, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1010, retainedTypes: !1011, splitDebugInlining: false, nameTableKind: None)
!1009 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!1010 = !{!999, !85}
!1011 = !{!70, !103, !101, !148, !106, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1013, line: 102, baseType: !1014)
!1013 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !188, line: 73, baseType: !106)
!1015 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1016, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !958, splitDebugInlining: false, nameTableKind: None)
!1016 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1017 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1018, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1018 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1019 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1020, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1020 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1021 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1022, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !958, splitDebugInlining: false, nameTableKind: None)
!1022 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1023 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1024, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !958, splitDebugInlining: false, nameTableKind: None)
!1024 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1025 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1026, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1027, splitDebugInlining: false, nameTableKind: None)
!1026 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1027 = !{!148, !106, !102}
!1028 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1029, splitDebugInlining: false, nameTableKind: None)
!1029 = !{!1030, !723}
!1030 = !DIGlobalVariableExpression(var: !1031, expr: !DIExpression())
!1031 = distinct !DIGlobalVariable(scope: null, file: !725, line: 35, type: !232, isLocal: true, isDefinition: true)
!1032 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1033, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1033 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1034 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1035, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !958, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1036 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1037 = !{i32 7, !"Dwarf Version", i32 5}
!1038 = !{i32 2, !"Debug Info Version", i32 3}
!1039 = !{i32 1, !"wchar_size", i32 4}
!1040 = !{i32 8, !"PIC Level", i32 2}
!1041 = !{i32 7, !"PIE Level", i32 2}
!1042 = !{i32 7, !"uwtable", i32 2}
!1043 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 50, type: !1044, scopeLine: 51, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !70}
!1046 = !{!1047}
!1047 = !DILocalVariable(name: "status", arg: 1, scope: !1043, file: !2, line: 50, type: !70)
!1048 = !DILocation(line: 0, scope: !1043)
!1049 = !DILocation(line: 52, column: 14, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 52, column: 7)
!1051 = !DILocation(line: 52, column: 7, scope: !1043)
!1052 = !DILocation(line: 53, column: 5, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 53, column: 5)
!1054 = !{!1055, !1055, i64 0}
!1055 = !{!"any pointer", !1056, i64 0}
!1056 = !{!"omnipotent char", !1057, i64 0}
!1057 = !{!"Simple C/C++ TBAA"}
!1058 = !DILocation(line: 56, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 55, column: 5)
!1060 = !DILocation(line: 57, column: 7, scope: !1059)
!1061 = !DILocation(line: 64, column: 7, scope: !1059)
!1062 = !DILocation(line: 69, column: 7, scope: !1059)
!1063 = !DILocation(line: 75, column: 7, scope: !1059)
!1064 = !DILocation(line: 76, column: 7, scope: !1059)
!1065 = !DILocalVariable(name: "program", arg: 1, scope: !1066, file: !69, line: 836, type: !107)
!1066 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !1067, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1069)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !107}
!1069 = !{!1065, !1070, !1077, !1078, !1080, !1081}
!1070 = !DILocalVariable(name: "infomap", scope: !1066, file: !69, line: 838, type: !1071)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, size: 896, elements: !253)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1066, file: !69, line: 838, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1073, file: !69, line: 838, baseType: !107, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1073, file: !69, line: 838, baseType: !107, size: 64, offset: 64)
!1077 = !DILocalVariable(name: "node", scope: !1066, file: !69, line: 848, type: !107)
!1078 = !DILocalVariable(name: "map_prog", scope: !1066, file: !69, line: 849, type: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1080 = !DILocalVariable(name: "lc_messages", scope: !1066, file: !69, line: 861, type: !107)
!1081 = !DILocalVariable(name: "url_program", scope: !1066, file: !69, line: 874, type: !107)
!1082 = !DILocation(line: 0, scope: !1066, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 77, column: 7, scope: !1059)
!1084 = !DILocation(line: 857, column: 3, scope: !1066, inlinedAt: !1083)
!1085 = !DILocation(line: 861, column: 29, scope: !1066, inlinedAt: !1083)
!1086 = !DILocation(line: 862, column: 7, scope: !1087, inlinedAt: !1083)
!1087 = distinct !DILexicalBlock(scope: !1066, file: !69, line: 862, column: 7)
!1088 = !DILocation(line: 862, column: 19, scope: !1087, inlinedAt: !1083)
!1089 = !DILocation(line: 862, column: 22, scope: !1087, inlinedAt: !1083)
!1090 = !DILocation(line: 862, column: 7, scope: !1066, inlinedAt: !1083)
!1091 = !DILocation(line: 868, column: 7, scope: !1092, inlinedAt: !1083)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !69, line: 863, column: 5)
!1093 = !DILocation(line: 870, column: 5, scope: !1092, inlinedAt: !1083)
!1094 = !DILocation(line: 875, column: 3, scope: !1066, inlinedAt: !1083)
!1095 = !DILocation(line: 877, column: 3, scope: !1066, inlinedAt: !1083)
!1096 = !DILocation(line: 79, column: 3, scope: !1043)
!1097 = !DISubprogram(name: "dcgettext", scope: !1098, file: !1098, line: 51, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1098 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!101, !107, !107, !70}
!1101 = !{}
!1102 = !DISubprogram(name: "__fprintf_chk", scope: !1103, file: !1103, line: 93, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!70, !1106, !70, !1107, null}
!1106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!1107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!1108 = !DISubprogram(name: "__printf_chk", scope: !1103, file: !1103, line: 95, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!70, !70, !1107, null}
!1111 = !DISubprogram(name: "fputs_unlocked", scope: !1112, file: !1112, line: 691, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1112 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!70, !1107, !1106}
!1115 = !DILocation(line: 0, scope: !138)
!1116 = !DILocation(line: 581, column: 7, scope: !146)
!1117 = !{!1118, !1118, i64 0}
!1118 = !{!"int", !1056, i64 0}
!1119 = !DILocation(line: 581, column: 19, scope: !146)
!1120 = !DILocation(line: 581, column: 7, scope: !138)
!1121 = !DILocation(line: 585, column: 26, scope: !145)
!1122 = !DILocation(line: 0, scope: !145)
!1123 = !DILocation(line: 586, column: 23, scope: !145)
!1124 = !DILocation(line: 586, column: 28, scope: !145)
!1125 = !DILocation(line: 586, column: 32, scope: !145)
!1126 = !{!1056, !1056, i64 0}
!1127 = !DILocation(line: 586, column: 38, scope: !145)
!1128 = !DILocalVariable(name: "__s1", arg: 1, scope: !1129, file: !1130, line: 1359, type: !107)
!1129 = distinct !DISubprogram(name: "streq", scope: !1130, file: !1130, line: 1359, type: !1131, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1133)
!1130 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!148, !107, !107}
!1133 = !{!1128, !1134}
!1134 = !DILocalVariable(name: "__s2", arg: 2, scope: !1129, file: !1130, line: 1359, type: !107)
!1135 = !DILocation(line: 0, scope: !1129, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 586, column: 41, scope: !145)
!1137 = !DILocation(line: 1361, column: 11, scope: !1129, inlinedAt: !1136)
!1138 = !DILocation(line: 1361, column: 10, scope: !1129, inlinedAt: !1136)
!1139 = !DILocation(line: 586, column: 19, scope: !145)
!1140 = !DILocation(line: 587, column: 5, scope: !145)
!1141 = !DILocation(line: 588, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !138, file: !69, line: 588, column: 7)
!1143 = !DILocation(line: 588, column: 7, scope: !138)
!1144 = !DILocation(line: 590, column: 7, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !69, line: 589, column: 5)
!1146 = !DILocation(line: 591, column: 7, scope: !1145)
!1147 = !DILocation(line: 595, column: 37, scope: !138)
!1148 = !DILocation(line: 595, column: 35, scope: !138)
!1149 = !DILocation(line: 596, column: 29, scope: !138)
!1150 = !DILocation(line: 597, column: 8, scope: !154)
!1151 = !DILocation(line: 597, column: 7, scope: !138)
!1152 = !DILocation(line: 604, column: 24, scope: !153)
!1153 = !DILocation(line: 604, column: 12, scope: !154)
!1154 = !DILocation(line: 0, scope: !152)
!1155 = !DILocation(line: 610, column: 16, scope: !152)
!1156 = !DILocation(line: 610, column: 7, scope: !152)
!1157 = !DILocation(line: 611, column: 21, scope: !152)
!1158 = !{!1159, !1159, i64 0}
!1159 = !{!"short", !1056, i64 0}
!1160 = !DILocation(line: 611, column: 19, scope: !152)
!1161 = !DILocation(line: 611, column: 16, scope: !152)
!1162 = !DILocation(line: 610, column: 30, scope: !152)
!1163 = distinct !{!1163, !1156, !1157, !1164}
!1164 = !{!"llvm.loop.mustprogress"}
!1165 = !DILocation(line: 612, column: 18, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !152, file: !69, line: 612, column: 11)
!1167 = !DILocation(line: 612, column: 11, scope: !152)
!1168 = !DILocation(line: 618, column: 5, scope: !152)
!1169 = !DILocation(line: 620, column: 23, scope: !138)
!1170 = !DILocation(line: 625, column: 39, scope: !138)
!1171 = !DILocation(line: 626, column: 3, scope: !138)
!1172 = !DILocation(line: 626, column: 10, scope: !138)
!1173 = !DILocation(line: 626, column: 21, scope: !138)
!1174 = !DILocation(line: 628, column: 44, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !69, line: 628, column: 11)
!1176 = distinct !DILexicalBlock(scope: !138, file: !69, line: 627, column: 5)
!1177 = !DILocation(line: 628, column: 32, scope: !1175)
!1178 = !DILocation(line: 628, column: 49, scope: !1175)
!1179 = !DILocation(line: 628, column: 11, scope: !1176)
!1180 = !DILocation(line: 630, column: 11, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !69, line: 630, column: 11)
!1182 = !DILocation(line: 630, column: 11, scope: !1176)
!1183 = !DILocation(line: 632, column: 26, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !69, line: 632, column: 15)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !69, line: 631, column: 9)
!1186 = !DILocation(line: 632, column: 34, scope: !1184)
!1187 = !DILocation(line: 632, column: 37, scope: !1184)
!1188 = !DILocation(line: 632, column: 15, scope: !1185)
!1189 = !DILocation(line: 636, column: 16, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !69, line: 636, column: 15)
!1191 = !DILocation(line: 636, column: 29, scope: !1190)
!1192 = !DILocation(line: 640, column: 16, scope: !1176)
!1193 = distinct !{!1193, !1171, !1194, !1164}
!1194 = !DILocation(line: 641, column: 5, scope: !138)
!1195 = !DILocation(line: 644, column: 3, scope: !138)
!1196 = !DILocation(line: 0, scope: !1129, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 648, column: 31, scope: !138)
!1198 = !DILocation(line: 0, scope: !1129, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 649, column: 31, scope: !138)
!1200 = !DILocation(line: 0, scope: !1129, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 650, column: 31, scope: !138)
!1202 = !DILocation(line: 0, scope: !1129, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 651, column: 31, scope: !138)
!1204 = !DILocation(line: 0, scope: !1129, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 652, column: 31, scope: !138)
!1206 = !DILocation(line: 0, scope: !1129, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 653, column: 31, scope: !138)
!1208 = !DILocation(line: 0, scope: !1129, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 654, column: 31, scope: !138)
!1210 = !DILocation(line: 0, scope: !1129, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 655, column: 31, scope: !138)
!1212 = !DILocation(line: 0, scope: !1129, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 656, column: 31, scope: !138)
!1214 = !DILocation(line: 0, scope: !1129, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 657, column: 31, scope: !138)
!1216 = !DILocation(line: 663, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !138, file: !69, line: 663, column: 7)
!1218 = !DILocation(line: 664, column: 7, scope: !1217)
!1219 = !DILocation(line: 664, column: 10, scope: !1217)
!1220 = !DILocation(line: 663, column: 7, scope: !138)
!1221 = !DILocation(line: 669, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !69, line: 665, column: 5)
!1223 = !DILocation(line: 671, column: 5, scope: !1222)
!1224 = !DILocation(line: 676, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1217, file: !69, line: 673, column: 5)
!1226 = !DILocation(line: 679, column: 3, scope: !138)
!1227 = !DILocation(line: 683, column: 3, scope: !138)
!1228 = !DILocation(line: 686, column: 3, scope: !138)
!1229 = !DILocation(line: 688, column: 3, scope: !138)
!1230 = !DILocation(line: 691, column: 3, scope: !138)
!1231 = !DILocation(line: 695, column: 3, scope: !138)
!1232 = !DILocation(line: 696, column: 1, scope: !138)
!1233 = !DISubprogram(name: "setlocale", scope: !1234, file: !1234, line: 122, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1234 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!101, !70, !107}
!1237 = !DISubprogram(name: "strncmp", scope: !1238, file: !1238, line: 159, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1238 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!70, !107, !107, !104}
!1241 = !DISubprogram(name: "exit", scope: !1242, file: !1242, line: 624, type: !1044, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1242 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1243 = !DISubprogram(name: "getenv", scope: !1242, file: !1242, line: 641, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!101, !107}
!1246 = !DISubprogram(name: "strcmp", scope: !1238, file: !1238, line: 156, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!70, !107, !107}
!1249 = !DISubprogram(name: "strspn", scope: !1238, file: !1238, line: 297, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!106, !107, !107}
!1252 = !DISubprogram(name: "strchr", scope: !1238, file: !1238, line: 246, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!101, !107, !70}
!1255 = !DISubprogram(name: "__ctype_b_loc", scope: !86, file: !86, line: 79, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1261 = !DISubprogram(name: "strcspn", scope: !1238, file: !1238, line: 293, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1262 = !DISubprogram(name: "fwrite_unlocked", scope: !1112, file: !1112, line: 704, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!104, !1265, !104, !104, !1106}
!1265 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1268 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 83, type: !1269, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1272)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!70, !70, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1279}
!1273 = !DILocalVariable(name: "argc", arg: 1, scope: !1268, file: !2, line: 83, type: !70)
!1274 = !DILocalVariable(name: "argv", arg: 2, scope: !1268, file: !2, line: 83, type: !1271)
!1275 = !DILocalVariable(name: "ignore", scope: !1268, file: !2, line: 85, type: !106)
!1276 = !DILocalVariable(name: "mode", scope: !1268, file: !2, line: 94, type: !61)
!1277 = !DILocalVariable(name: "c", scope: !1278, file: !2, line: 98, type: !70)
!1278 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 97, column: 5)
!1279 = !DILocalVariable(name: "nproc", scope: !1268, file: !2, line: 127, type: !106)
!1280 = !DILocation(line: 0, scope: !1268)
!1281 = !DILocation(line: 87, column: 21, scope: !1268)
!1282 = !DILocation(line: 87, column: 3, scope: !1268)
!1283 = !DILocation(line: 88, column: 3, scope: !1268)
!1284 = !DILocation(line: 89, column: 3, scope: !1268)
!1285 = !DILocation(line: 90, column: 3, scope: !1268)
!1286 = !DILocation(line: 92, column: 3, scope: !1268)
!1287 = !DILocation(line: 96, column: 3, scope: !1268)
!1288 = !DILocation(line: 98, column: 15, scope: !1278)
!1289 = !DILocation(line: 0, scope: !1278)
!1290 = !DILocation(line: 99, column: 11, scope: !1278)
!1291 = distinct !{!1291, !1292}
!1292 = !{!"llvm.loop.peeled.count", i32 1}
!1293 = !DILocation(line: 103, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 102, column: 9)
!1295 = !DILocation(line: 105, column: 9, scope: !1294)
!1296 = !DILocation(line: 94, column: 20, scope: !1268)
!1297 = !DILocation(line: 112, column: 32, scope: !1294)
!1298 = !DILocation(line: 113, column: 32, scope: !1294)
!1299 = !DILocation(line: 112, column: 20, scope: !1294)
!1300 = !DILocation(line: 114, column: 11, scope: !1294)
!1301 = !DILocation(line: 117, column: 11, scope: !1294)
!1302 = !DILocation(line: 121, column: 15, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 121, column: 7)
!1304 = !DILocation(line: 121, column: 12, scope: !1303)
!1305 = !DILocation(line: 121, column: 7, scope: !1268)
!1306 = !DILocation(line: 123, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 122, column: 5)
!1308 = !DILocation(line: 124, column: 7, scope: !1307)
!1309 = !DILocation(line: 127, column: 25, scope: !1268)
!1310 = !DILocation(line: 129, column: 14, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 129, column: 7)
!1312 = !DILocation(line: 129, column: 7, scope: !1268)
!1313 = !DILocation(line: 134, column: 3, scope: !1268)
!1314 = !DILocation(line: 137, column: 1, scope: !1268)
!1315 = !DISubprogram(name: "bindtextdomain", scope: !1098, file: !1098, line: 86, type: !1316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!101, !107, !107}
!1318 = !DISubprogram(name: "textdomain", scope: !1098, file: !1098, line: 82, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1319 = !DISubprogram(name: "atexit", scope: !1242, file: !1242, line: 602, type: !1320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!70, !417}
!1322 = !DISubprogram(name: "getopt_long", scope: !339, file: !339, line: 66, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!70, !70, !1325, !107, !1327, !344}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1328 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !356, file: !356, line: 50, type: !1067, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1329)
!1329 = !{!1330}
!1330 = !DILocalVariable(name: "file", arg: 1, scope: !1328, file: !356, line: 50, type: !107)
!1331 = !DILocation(line: 0, scope: !1328)
!1332 = !DILocation(line: 52, column: 13, scope: !1328)
!1333 = !DILocation(line: 53, column: 1, scope: !1328)
!1334 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !356, file: !356, line: 87, type: !1335, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !148}
!1337 = !{!1338}
!1338 = !DILocalVariable(name: "ignore", arg: 1, scope: !1334, file: !356, line: 87, type: !148)
!1339 = !DILocation(line: 0, scope: !1334)
!1340 = !DILocation(line: 89, column: 16, scope: !1334)
!1341 = !{!1342, !1342, i64 0}
!1342 = !{!"_Bool", !1056, i64 0}
!1343 = !DILocation(line: 90, column: 1, scope: !1334)
!1344 = distinct !DISubprogram(name: "close_stdout", scope: !356, file: !356, line: 116, type: !418, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1345)
!1345 = !{!1346}
!1346 = !DILocalVariable(name: "write_error", scope: !1347, file: !356, line: 121, type: !107)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !356, line: 120, column: 5)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !356, line: 118, column: 7)
!1349 = !DILocation(line: 118, column: 21, scope: !1348)
!1350 = !DILocation(line: 118, column: 7, scope: !1348)
!1351 = !DILocation(line: 118, column: 29, scope: !1348)
!1352 = !DILocation(line: 119, column: 7, scope: !1348)
!1353 = !DILocation(line: 119, column: 12, scope: !1348)
!1354 = !{i8 0, i8 2}
!1355 = !DILocation(line: 119, column: 25, scope: !1348)
!1356 = !DILocation(line: 119, column: 28, scope: !1348)
!1357 = !DILocation(line: 119, column: 34, scope: !1348)
!1358 = !DILocation(line: 118, column: 7, scope: !1344)
!1359 = !DILocation(line: 121, column: 33, scope: !1347)
!1360 = !DILocation(line: 0, scope: !1347)
!1361 = !DILocation(line: 122, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1347, file: !356, line: 122, column: 11)
!1363 = !DILocation(line: 0, scope: !1362)
!1364 = !DILocation(line: 122, column: 11, scope: !1347)
!1365 = !DILocation(line: 123, column: 9, scope: !1362)
!1366 = !DILocation(line: 126, column: 9, scope: !1362)
!1367 = !DILocation(line: 128, column: 14, scope: !1347)
!1368 = !DILocation(line: 128, column: 7, scope: !1347)
!1369 = !DILocation(line: 133, column: 42, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1344, file: !356, line: 133, column: 7)
!1371 = !DILocation(line: 133, column: 28, scope: !1370)
!1372 = !DILocation(line: 133, column: 50, scope: !1370)
!1373 = !DILocation(line: 133, column: 7, scope: !1344)
!1374 = !DILocation(line: 134, column: 12, scope: !1370)
!1375 = !DILocation(line: 134, column: 5, scope: !1370)
!1376 = !DILocation(line: 135, column: 1, scope: !1344)
!1377 = !DISubprogram(name: "__errno_location", scope: !1378, file: !1378, line: 37, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1378 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!344}
!1381 = !DISubprogram(name: "_exit", scope: !1382, file: !1382, line: 624, type: !1044, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1382 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1383 = distinct !DISubprogram(name: "verror", scope: !371, file: !371, line: 251, type: !1384, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !70, !70, !107, !381}
!1386 = !{!1387, !1388, !1389, !1390}
!1387 = !DILocalVariable(name: "status", arg: 1, scope: !1383, file: !371, line: 251, type: !70)
!1388 = !DILocalVariable(name: "errnum", arg: 2, scope: !1383, file: !371, line: 251, type: !70)
!1389 = !DILocalVariable(name: "message", arg: 3, scope: !1383, file: !371, line: 251, type: !107)
!1390 = !DILocalVariable(name: "args", arg: 4, scope: !1383, file: !371, line: 251, type: !381)
!1391 = !DILocation(line: 0, scope: !1383)
!1392 = !DILocation(line: 261, column: 3, scope: !1383)
!1393 = !DILocation(line: 265, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1383, file: !371, line: 265, column: 7)
!1395 = !DILocation(line: 265, column: 7, scope: !1383)
!1396 = !DILocation(line: 266, column: 5, scope: !1394)
!1397 = !DILocation(line: 272, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !371, line: 268, column: 5)
!1399 = !DILocation(line: 276, column: 3, scope: !1383)
!1400 = !DILocation(line: 282, column: 1, scope: !1383)
!1401 = distinct !DISubprogram(name: "flush_stdout", scope: !371, file: !371, line: 163, type: !418, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1402)
!1402 = !{!1403}
!1403 = !DILocalVariable(name: "stdout_fd", scope: !1401, file: !371, line: 166, type: !70)
!1404 = !DILocation(line: 0, scope: !1401)
!1405 = !DILocalVariable(name: "fd", arg: 1, scope: !1406, file: !371, line: 145, type: !70)
!1406 = distinct !DISubprogram(name: "is_open", scope: !371, file: !371, line: 145, type: !1407, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!70, !70}
!1409 = !{!1405}
!1410 = !DILocation(line: 0, scope: !1406, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 182, column: 25, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1401, file: !371, line: 182, column: 7)
!1413 = !DILocation(line: 157, column: 15, scope: !1406, inlinedAt: !1411)
!1414 = !DILocation(line: 157, column: 12, scope: !1406, inlinedAt: !1411)
!1415 = !DILocation(line: 182, column: 7, scope: !1401)
!1416 = !DILocation(line: 184, column: 5, scope: !1412)
!1417 = !DILocation(line: 185, column: 1, scope: !1401)
!1418 = distinct !DISubprogram(name: "error_tail", scope: !371, file: !371, line: 219, type: !1384, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1419)
!1419 = !{!1420, !1421, !1422, !1423}
!1420 = !DILocalVariable(name: "status", arg: 1, scope: !1418, file: !371, line: 219, type: !70)
!1421 = !DILocalVariable(name: "errnum", arg: 2, scope: !1418, file: !371, line: 219, type: !70)
!1422 = !DILocalVariable(name: "message", arg: 3, scope: !1418, file: !371, line: 219, type: !107)
!1423 = !DILocalVariable(name: "args", arg: 4, scope: !1418, file: !371, line: 219, type: !381)
!1424 = !DILocation(line: 0, scope: !1418)
!1425 = !DILocation(line: 229, column: 13, scope: !1418)
!1426 = !DILocalVariable(name: "__stream", arg: 1, scope: !1427, file: !1103, line: 132, type: !1430)
!1427 = distinct !DISubprogram(name: "vfprintf", scope: !1103, file: !1103, line: 132, type: !1428, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1465)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!70, !1430, !1107, !381}
!1430 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1433, file: !165, line: 51, baseType: !70, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1433, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1433, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1433, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1433, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1433, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1433, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1433, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1433, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1433, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1433, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1433, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1433, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1433, file: !165, line: 70, baseType: !1449, size: 64, offset: 832)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1433, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1433, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1433, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1433, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1433, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1433, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1433, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1433, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1433, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1433, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1433, file: !165, line: 93, baseType: !1449, size: 64, offset: 1344)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1433, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1433, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1433, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1433, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!1465 = !{!1426, !1466, !1467}
!1466 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1427, file: !1103, line: 133, type: !1107)
!1467 = !DILocalVariable(name: "__ap", arg: 3, scope: !1427, file: !1103, line: 133, type: !381)
!1468 = !DILocation(line: 0, scope: !1427, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 229, column: 3, scope: !1418)
!1470 = !DILocation(line: 135, column: 10, scope: !1427, inlinedAt: !1469)
!1471 = !DILocation(line: 232, column: 3, scope: !1418)
!1472 = !DILocation(line: 233, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1418, file: !371, line: 233, column: 7)
!1474 = !DILocation(line: 233, column: 7, scope: !1418)
!1475 = !DILocalVariable(name: "errnum", arg: 1, scope: !1476, file: !371, line: 188, type: !70)
!1476 = distinct !DISubprogram(name: "print_errno_message", scope: !371, file: !371, line: 188, type: !1044, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1477)
!1477 = !{!1475, !1478, !1479}
!1478 = !DILocalVariable(name: "s", scope: !1476, file: !371, line: 190, type: !107)
!1479 = !DILocalVariable(name: "errbuf", scope: !1476, file: !371, line: 193, type: !1480)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1481)
!1481 = !{!1482}
!1482 = !DISubrange(count: 1024)
!1483 = !DILocation(line: 0, scope: !1476, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 234, column: 5, scope: !1473)
!1485 = !DILocation(line: 193, column: 3, scope: !1476, inlinedAt: !1484)
!1486 = !DILocation(line: 193, column: 8, scope: !1476, inlinedAt: !1484)
!1487 = !DILocation(line: 195, column: 7, scope: !1476, inlinedAt: !1484)
!1488 = !DILocation(line: 207, column: 9, scope: !1489, inlinedAt: !1484)
!1489 = distinct !DILexicalBlock(scope: !1476, file: !371, line: 207, column: 7)
!1490 = !DILocation(line: 207, column: 7, scope: !1476, inlinedAt: !1484)
!1491 = !DILocation(line: 208, column: 9, scope: !1489, inlinedAt: !1484)
!1492 = !DILocation(line: 208, column: 5, scope: !1489, inlinedAt: !1484)
!1493 = !DILocation(line: 214, column: 3, scope: !1476, inlinedAt: !1484)
!1494 = !DILocation(line: 216, column: 1, scope: !1476, inlinedAt: !1484)
!1495 = !DILocation(line: 234, column: 5, scope: !1473)
!1496 = !DILocation(line: 238, column: 3, scope: !1418)
!1497 = !DILocalVariable(name: "__c", arg: 1, scope: !1498, file: !1499, line: 101, type: !70)
!1498 = distinct !DISubprogram(name: "putc_unlocked", scope: !1499, file: !1499, line: 101, type: !1500, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1502)
!1499 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!70, !70, !1431}
!1502 = !{!1497, !1503}
!1503 = !DILocalVariable(name: "__stream", arg: 2, scope: !1498, file: !1499, line: 101, type: !1431)
!1504 = !DILocation(line: 0, scope: !1498, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 238, column: 3, scope: !1418)
!1506 = !DILocation(line: 103, column: 10, scope: !1498, inlinedAt: !1505)
!1507 = !{!1508, !1055, i64 40}
!1508 = !{!"_IO_FILE", !1118, i64 0, !1055, i64 8, !1055, i64 16, !1055, i64 24, !1055, i64 32, !1055, i64 40, !1055, i64 48, !1055, i64 56, !1055, i64 64, !1055, i64 72, !1055, i64 80, !1055, i64 88, !1055, i64 96, !1055, i64 104, !1118, i64 112, !1118, i64 116, !1509, i64 120, !1159, i64 128, !1056, i64 130, !1056, i64 131, !1055, i64 136, !1509, i64 144, !1055, i64 152, !1055, i64 160, !1055, i64 168, !1055, i64 176, !1509, i64 184, !1118, i64 192, !1056, i64 196}
!1509 = !{!"long", !1056, i64 0}
!1510 = !{!1508, !1055, i64 48}
!1511 = !{!"branch_weights", i32 2000, i32 1}
!1512 = !DILocation(line: 240, column: 3, scope: !1418)
!1513 = !DILocation(line: 241, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1418, file: !371, line: 241, column: 7)
!1515 = !DILocation(line: 241, column: 7, scope: !1418)
!1516 = !DILocation(line: 242, column: 5, scope: !1514)
!1517 = !DILocation(line: 243, column: 1, scope: !1418)
!1518 = !DISubprogram(name: "__vfprintf_chk", scope: !1103, file: !1103, line: 96, type: !1519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!70, !1430, !70, !1107, !381}
!1521 = !DISubprogram(name: "strerror_r", scope: !1238, file: !1238, line: 444, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!101, !70, !101, !104}
!1524 = !DISubprogram(name: "__overflow", scope: !1112, file: !1112, line: 886, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!70, !1431, !70}
!1527 = !DISubprogram(name: "fflush_unlocked", scope: !1112, file: !1112, line: 239, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!70, !1431}
!1530 = !DISubprogram(name: "fcntl", scope: !1531, file: !1531, line: 149, type: !1532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1531 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!70, !70, !70, null}
!1534 = distinct !DISubprogram(name: "error", scope: !371, file: !371, line: 285, type: !1535, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !70, !70, !107, null}
!1537 = !{!1538, !1539, !1540, !1541}
!1538 = !DILocalVariable(name: "status", arg: 1, scope: !1534, file: !371, line: 285, type: !70)
!1539 = !DILocalVariable(name: "errnum", arg: 2, scope: !1534, file: !371, line: 285, type: !70)
!1540 = !DILocalVariable(name: "message", arg: 3, scope: !1534, file: !371, line: 285, type: !107)
!1541 = !DILocalVariable(name: "ap", scope: !1534, file: !371, line: 287, type: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1112, line: 52, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1544, line: 14, baseType: !1545)
!1544 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !385, baseType: !1546)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 192, elements: !45)
!1547 = !DILocation(line: 0, scope: !1534)
!1548 = !DILocation(line: 287, column: 3, scope: !1534)
!1549 = !DILocation(line: 287, column: 11, scope: !1534)
!1550 = !DILocation(line: 288, column: 3, scope: !1534)
!1551 = !DILocation(line: 289, column: 3, scope: !1534)
!1552 = !DILocation(line: 290, column: 3, scope: !1534)
!1553 = !DILocation(line: 291, column: 1, scope: !1534)
!1554 = !DILocation(line: 0, scope: !378)
!1555 = !DILocation(line: 302, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !378, file: !371, line: 302, column: 7)
!1557 = !DILocation(line: 302, column: 7, scope: !378)
!1558 = !DILocation(line: 307, column: 11, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !371, line: 307, column: 11)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !371, line: 303, column: 5)
!1561 = !DILocation(line: 307, column: 27, scope: !1559)
!1562 = !DILocation(line: 308, column: 11, scope: !1559)
!1563 = !DILocation(line: 308, column: 28, scope: !1559)
!1564 = !DILocation(line: 308, column: 25, scope: !1559)
!1565 = !DILocation(line: 309, column: 15, scope: !1559)
!1566 = !DILocation(line: 309, column: 33, scope: !1559)
!1567 = !DILocation(line: 310, column: 19, scope: !1559)
!1568 = !DILocation(line: 311, column: 22, scope: !1559)
!1569 = !DILocation(line: 311, column: 56, scope: !1559)
!1570 = !DILocation(line: 307, column: 11, scope: !1560)
!1571 = !DILocation(line: 316, column: 21, scope: !1560)
!1572 = !DILocation(line: 317, column: 23, scope: !1560)
!1573 = !DILocation(line: 318, column: 5, scope: !1560)
!1574 = !DILocation(line: 327, column: 3, scope: !378)
!1575 = !DILocation(line: 331, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !378, file: !371, line: 331, column: 7)
!1577 = !DILocation(line: 331, column: 7, scope: !378)
!1578 = !DILocation(line: 332, column: 5, scope: !1576)
!1579 = !DILocation(line: 338, column: 7, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !371, line: 334, column: 5)
!1581 = !DILocation(line: 346, column: 3, scope: !378)
!1582 = !DILocation(line: 350, column: 3, scope: !378)
!1583 = !DILocation(line: 356, column: 1, scope: !378)
!1584 = distinct !DISubprogram(name: "error_at_line", scope: !371, file: !371, line: 359, type: !1585, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !70, !70, !107, !63, !107, null}
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593}
!1588 = !DILocalVariable(name: "status", arg: 1, scope: !1584, file: !371, line: 359, type: !70)
!1589 = !DILocalVariable(name: "errnum", arg: 2, scope: !1584, file: !371, line: 359, type: !70)
!1590 = !DILocalVariable(name: "file_name", arg: 3, scope: !1584, file: !371, line: 359, type: !107)
!1591 = !DILocalVariable(name: "line_number", arg: 4, scope: !1584, file: !371, line: 360, type: !63)
!1592 = !DILocalVariable(name: "message", arg: 5, scope: !1584, file: !371, line: 360, type: !107)
!1593 = !DILocalVariable(name: "ap", scope: !1584, file: !371, line: 362, type: !1542)
!1594 = !DILocation(line: 0, scope: !1584)
!1595 = !DILocation(line: 362, column: 3, scope: !1584)
!1596 = !DILocation(line: 362, column: 11, scope: !1584)
!1597 = !DILocation(line: 363, column: 3, scope: !1584)
!1598 = !DILocation(line: 364, column: 3, scope: !1584)
!1599 = !DILocation(line: 366, column: 3, scope: !1584)
!1600 = !DILocation(line: 367, column: 1, scope: !1584)
!1601 = distinct !DISubprogram(name: "getprogname", scope: !727, file: !727, line: 54, type: !1602, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !1101)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!107}
!1604 = !DILocation(line: 58, column: 10, scope: !1601)
!1605 = !DILocation(line: 58, column: 3, scope: !1601)
!1606 = distinct !DISubprogram(name: "num_processors", scope: !422, file: !422, line: 544, type: !1607, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1609)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!106, !61}
!1609 = !{!1610, !1611, !1612, !1615, !1616, !1619}
!1610 = !DILocalVariable(name: "query", arg: 1, scope: !1606, file: !422, line: 544, type: !61)
!1611 = !DILocalVariable(name: "nproc_limit", scope: !1606, file: !422, line: 546, type: !106)
!1612 = !DILocalVariable(name: "omp_env_threads", scope: !1613, file: !422, line: 552, type: !106)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !422, line: 551, column: 5)
!1614 = distinct !DILexicalBlock(scope: !1606, file: !422, line: 550, column: 7)
!1615 = !DILocalVariable(name: "omp_env_limit", scope: !1613, file: !422, line: 555, type: !106)
!1616 = !DILocalVariable(name: "quota", scope: !1617, file: !422, line: 570, type: !106)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !422, line: 569, column: 5)
!1618 = distinct !DILexicalBlock(scope: !1606, file: !422, line: 568, column: 7)
!1619 = !DILocalVariable(name: "nprocs", scope: !1620, file: !422, line: 576, type: !106)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !422, line: 575, column: 5)
!1621 = distinct !DILexicalBlock(scope: !1606, file: !422, line: 574, column: 7)
!1622 = !DILocation(line: 0, scope: !1606)
!1623 = !DILocation(line: 550, column: 13, scope: !1614)
!1624 = !DILocation(line: 550, column: 7, scope: !1606)
!1625 = !DILocation(line: 553, column: 28, scope: !1613)
!1626 = !DILocalVariable(name: "threads", arg: 1, scope: !1627, file: !422, line: 515, type: !107)
!1627 = distinct !DISubprogram(name: "parse_omp_threads", scope: !422, file: !422, line: 515, type: !1628, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!106, !107}
!1630 = !{!1626, !1631, !1634}
!1631 = !DILocalVariable(name: "endptr", scope: !1632, file: !422, line: 528, type: !101)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !422, line: 527, column: 5)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !422, line: 526, column: 7)
!1634 = !DILocalVariable(name: "value", scope: !1632, file: !422, line: 529, type: !106)
!1635 = !DILocation(line: 0, scope: !1627, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 553, column: 9, scope: !1613)
!1637 = !DILocation(line: 517, column: 15, scope: !1638, inlinedAt: !1636)
!1638 = distinct !DILexicalBlock(scope: !1627, file: !422, line: 517, column: 7)
!1639 = !DILocation(line: 517, column: 7, scope: !1627, inlinedAt: !1636)
!1640 = !DILocation(line: 522, column: 10, scope: !1627, inlinedAt: !1636)
!1641 = !DILocation(line: 522, column: 19, scope: !1627, inlinedAt: !1636)
!1642 = !DILocation(line: 522, column: 27, scope: !1627, inlinedAt: !1636)
!1643 = !DILocalVariable(name: "c", arg: 1, scope: !1644, file: !1645, line: 300, type: !70)
!1644 = distinct !DISubprogram(name: "c_isspace", scope: !1645, file: !1645, line: 300, type: !1646, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1648)
!1645 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!148, !70}
!1648 = !{!1643}
!1649 = !DILocation(line: 0, scope: !1644, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 522, column: 30, scope: !1627, inlinedAt: !1636)
!1651 = !DILocation(line: 302, column: 3, scope: !1644, inlinedAt: !1650)
!1652 = !DILocation(line: 523, column: 12, scope: !1627, inlinedAt: !1636)
!1653 = distinct !{!1653, !1654, !1652, !1164}
!1654 = !DILocation(line: 522, column: 3, scope: !1627, inlinedAt: !1636)
!1655 = !DILocalVariable(name: "c", arg: 1, scope: !1656, file: !1645, line: 233, type: !70)
!1656 = distinct !DISubprogram(name: "c_isdigit", scope: !1645, file: !1645, line: 233, type: !1646, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1657)
!1657 = !{!1655}
!1658 = !DILocation(line: 0, scope: !1656, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 526, column: 7, scope: !1633, inlinedAt: !1636)
!1660 = !DILocation(line: 235, column: 3, scope: !1656, inlinedAt: !1659)
!1661 = !DILocation(line: 526, column: 7, scope: !1627, inlinedAt: !1636)
!1662 = !DILocation(line: 528, column: 7, scope: !1632, inlinedAt: !1636)
!1663 = !DILocation(line: 0, scope: !1632, inlinedAt: !1636)
!1664 = !DILocation(line: 529, column: 33, scope: !1632, inlinedAt: !1636)
!1665 = !DILocation(line: 530, column: 14, scope: !1632, inlinedAt: !1636)
!1666 = !DILocation(line: 530, column: 22, scope: !1632, inlinedAt: !1636)
!1667 = !DILocation(line: 530, column: 30, scope: !1632, inlinedAt: !1636)
!1668 = !DILocation(line: 538, column: 5, scope: !1633, inlinedAt: !1636)
!1669 = !DILocation(line: 0, scope: !1644, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 530, column: 33, scope: !1632, inlinedAt: !1636)
!1671 = !DILocation(line: 302, column: 3, scope: !1644, inlinedAt: !1670)
!1672 = !DILocation(line: 531, column: 15, scope: !1632, inlinedAt: !1636)
!1673 = distinct !{!1673, !1674, !1672, !1164}
!1674 = !DILocation(line: 530, column: 7, scope: !1632, inlinedAt: !1636)
!1675 = !DILocation(line: 540, column: 3, scope: !1627, inlinedAt: !1636)
!1676 = !DILocation(line: 0, scope: !1613)
!1677 = !DILocation(line: 556, column: 28, scope: !1613)
!1678 = !DILocation(line: 0, scope: !1627, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 556, column: 9, scope: !1613)
!1680 = !DILocation(line: 517, column: 15, scope: !1638, inlinedAt: !1679)
!1681 = !DILocation(line: 517, column: 7, scope: !1627, inlinedAt: !1679)
!1682 = !DILocation(line: 522, column: 10, scope: !1627, inlinedAt: !1679)
!1683 = !DILocation(line: 522, column: 19, scope: !1627, inlinedAt: !1679)
!1684 = !DILocation(line: 522, column: 27, scope: !1627, inlinedAt: !1679)
!1685 = !DILocation(line: 0, scope: !1644, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 522, column: 30, scope: !1627, inlinedAt: !1679)
!1687 = !DILocation(line: 302, column: 3, scope: !1644, inlinedAt: !1686)
!1688 = !DILocation(line: 523, column: 12, scope: !1627, inlinedAt: !1679)
!1689 = distinct !{!1689, !1690, !1688, !1164}
!1690 = !DILocation(line: 522, column: 3, scope: !1627, inlinedAt: !1679)
!1691 = !DILocation(line: 0, scope: !1656, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 526, column: 7, scope: !1633, inlinedAt: !1679)
!1693 = !DILocation(line: 235, column: 3, scope: !1656, inlinedAt: !1692)
!1694 = !DILocation(line: 526, column: 7, scope: !1627, inlinedAt: !1679)
!1695 = !DILocation(line: 528, column: 7, scope: !1632, inlinedAt: !1679)
!1696 = !DILocation(line: 0, scope: !1632, inlinedAt: !1679)
!1697 = !DILocation(line: 529, column: 33, scope: !1632, inlinedAt: !1679)
!1698 = !DILocation(line: 557, column: 13, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1613, file: !422, line: 557, column: 11)
!1700 = !DILocation(line: 530, column: 14, scope: !1632, inlinedAt: !1679)
!1701 = !DILocation(line: 530, column: 22, scope: !1632, inlinedAt: !1679)
!1702 = !DILocation(line: 530, column: 30, scope: !1632, inlinedAt: !1679)
!1703 = !DILocation(line: 538, column: 5, scope: !1633, inlinedAt: !1679)
!1704 = !DILocation(line: 557, column: 11, scope: !1613)
!1705 = !DILocation(line: 0, scope: !1644, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 530, column: 33, scope: !1632, inlinedAt: !1679)
!1707 = !DILocation(line: 302, column: 3, scope: !1644, inlinedAt: !1706)
!1708 = !DILocation(line: 531, column: 15, scope: !1632, inlinedAt: !1679)
!1709 = distinct !{!1709, !1710, !1708, !1164}
!1710 = !DILocation(line: 530, column: 7, scope: !1632, inlinedAt: !1679)
!1711 = !DILocation(line: 560, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1613, file: !422, line: 560, column: 11)
!1713 = !DILocation(line: 560, column: 11, scope: !1613)
!1714 = !DILocation(line: 546, column: 21, scope: !1606)
!1715 = !DILocation(line: 568, column: 13, scope: !1618)
!1716 = !DILocation(line: 568, column: 30, scope: !1618)
!1717 = !DILocalVariable(name: "quota", scope: !1718, file: !422, line: 489, type: !106)
!1718 = distinct !DISubprogram(name: "cpu_quota", scope: !422, file: !422, line: 487, type: !1719, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1721)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!106}
!1721 = !{!1717}
!1722 = !DILocation(line: 0, scope: !1718, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 570, column: 33, scope: !1617)
!1724 = !DILocation(line: 494, column: 11, scope: !1718, inlinedAt: !1723)
!1725 = !DILocation(line: 494, column: 3, scope: !1718, inlinedAt: !1723)
!1726 = !DILocalVariable(name: "cpu_quota", scope: !1727, file: !422, line: 402, type: !106)
!1727 = distinct !DISubprogram(name: "get_cgroup2_cpu_quota", scope: !422, file: !422, line: 400, type: !1719, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1728)
!1728 = !{!1726, !1729, !1764, !1765, !1766, !1767, !1771, !1775, !1776, !1777, !1778, !1783, !1786, !1787, !1790}
!1729 = !DILocalVariable(name: "fp", scope: !1727, file: !422, line: 404, type: !1730)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1732, file: !165, line: 51, baseType: !70, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1732, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1732, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1732, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1732, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1732, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1732, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1732, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1732, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1732, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1732, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1732, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1732, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1732, file: !165, line: 70, baseType: !1748, size: 64, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1732, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1732, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1732, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1732, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1732, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1732, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1732, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1732, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1732, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1732, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1732, file: !165, line: 93, baseType: !1748, size: 64, offset: 1344)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1732, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1732, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1732, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1732, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!1764 = !DILocalVariable(name: "cgroup", scope: !1727, file: !422, line: 409, type: !101)
!1765 = !DILocalVariable(name: "cgroup_str", scope: !1727, file: !422, line: 410, type: !101)
!1766 = !DILocalVariable(name: "cgroup_size", scope: !1727, file: !422, line: 411, type: !104)
!1767 = !DILocalVariable(name: "read", scope: !1727, file: !422, line: 412, type: !1768)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1769, line: 108, baseType: !1770)
!1769 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !188, line: 194, baseType: !189)
!1771 = !DILocalVariable(name: "end", scope: !1772, file: !422, line: 417, type: !101)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !422, line: 416, column: 9)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !422, line: 415, column: 11)
!1774 = distinct !DILexicalBlock(scope: !1727, file: !422, line: 414, column: 5)
!1775 = !DILocalVariable(name: "mount", scope: !1727, file: !422, line: 426, type: !101)
!1776 = !DILocalVariable(name: "quota_str", scope: !1727, file: !422, line: 431, type: !101)
!1777 = !DILocalVariable(name: "quota_size", scope: !1727, file: !422, line: 432, type: !104)
!1778 = !DILocalVariable(name: "cpu_max_file", scope: !1779, file: !422, line: 440, type: !1780)
!1779 = distinct !DILexicalBlock(scope: !1727, file: !422, line: 434, column: 5)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !1781)
!1781 = !{!1782}
!1782 = !DISubrange(count: 4096)
!1783 = !DILocalVariable(name: "quota", scope: !1784, file: !422, line: 448, type: !189)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !422, line: 447, column: 9)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !422, line: 444, column: 11)
!1786 = !DILocalVariable(name: "period", scope: !1784, file: !422, line: 448, type: !189)
!1787 = !DILocalVariable(name: "ncpus", scope: !1788, file: !422, line: 451, type: !951)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !422, line: 450, column: 13)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !422, line: 449, column: 15)
!1790 = !DILocalVariable(name: "last_sep", scope: !1779, file: !422, line: 465, type: !101)
!1791 = !DILocation(line: 0, scope: !1727, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 503, column: 17, scope: !1793, inlinedAt: !1723)
!1793 = distinct !DILexicalBlock(scope: !1718, file: !422, line: 495, column: 5)
!1794 = !DILocation(line: 404, column: 14, scope: !1727, inlinedAt: !1792)
!1795 = !DILocation(line: 405, column: 9, scope: !1796, inlinedAt: !1792)
!1796 = distinct !DILexicalBlock(scope: !1727, file: !422, line: 405, column: 7)
!1797 = !DILocation(line: 405, column: 7, scope: !1727, inlinedAt: !1792)
!1798 = !DILocation(line: 410, column: 3, scope: !1727, inlinedAt: !1792)
!1799 = !DILocation(line: 410, column: 9, scope: !1727, inlinedAt: !1792)
!1800 = !DILocation(line: 411, column: 3, scope: !1727, inlinedAt: !1792)
!1801 = !DILocation(line: 411, column: 10, scope: !1727, inlinedAt: !1792)
!1802 = !{!1509, !1509, i64 0}
!1803 = !DILocation(line: 413, column: 3, scope: !1727, inlinedAt: !1792)
!1804 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1805, file: !1499, line: 118, type: !1271)
!1805 = distinct !DISubprogram(name: "getline", scope: !1499, file: !1499, line: 118, type: !1806, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1808)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!1770, !1271, !967, !1730}
!1808 = !{!1804, !1809, !1810}
!1809 = !DILocalVariable(name: "__n", arg: 2, scope: !1805, file: !1499, line: 118, type: !967)
!1810 = !DILocalVariable(name: "__stream", arg: 3, scope: !1805, file: !1499, line: 118, type: !1730)
!1811 = !DILocation(line: 0, scope: !1805, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 413, column: 18, scope: !1727, inlinedAt: !1792)
!1813 = !DILocation(line: 120, column: 10, scope: !1805, inlinedAt: !1812)
!1814 = !DILocation(line: 413, column: 59, scope: !1727, inlinedAt: !1792)
!1815 = !DILocation(line: 424, column: 3, scope: !1727, inlinedAt: !1792)
!1816 = !DILocation(line: 427, column: 14, scope: !1817, inlinedAt: !1792)
!1817 = distinct !DILexicalBlock(scope: !1727, file: !422, line: 427, column: 7)
!1818 = !DILocation(line: 415, column: 20, scope: !1773, inlinedAt: !1792)
!1819 = !DILocation(line: 415, column: 11, scope: !1773, inlinedAt: !1792)
!1820 = !DILocation(line: 415, column: 43, scope: !1773, inlinedAt: !1792)
!1821 = !DILocation(line: 415, column: 11, scope: !1774, inlinedAt: !1792)
!1822 = distinct !{!1822, !1803, !1823, !1164}
!1823 = !DILocation(line: 423, column: 5, scope: !1727, inlinedAt: !1792)
!1824 = !DILocation(line: 417, column: 34, scope: !1772, inlinedAt: !1792)
!1825 = !DILocation(line: 417, column: 41, scope: !1772, inlinedAt: !1792)
!1826 = !DILocation(line: 0, scope: !1772, inlinedAt: !1792)
!1827 = !DILocation(line: 418, column: 15, scope: !1828, inlinedAt: !1792)
!1828 = distinct !DILexicalBlock(scope: !1772, file: !422, line: 418, column: 15)
!1829 = !DILocation(line: 418, column: 20, scope: !1828, inlinedAt: !1792)
!1830 = !DILocation(line: 418, column: 15, scope: !1772, inlinedAt: !1792)
!1831 = !DILocation(line: 419, column: 18, scope: !1828, inlinedAt: !1792)
!1832 = !DILocation(line: 420, column: 20, scope: !1772, inlinedAt: !1792)
!1833 = !DILocation(line: 419, column: 13, scope: !1828, inlinedAt: !1792)
!1834 = !DILocation(line: 420, column: 31, scope: !1772, inlinedAt: !1792)
!1835 = !DILocation(line: 371, column: 7, scope: !1836, inlinedAt: !1853)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !422, line: 371, column: 7)
!1837 = distinct !DISubprogram(name: "cgroup2_mount", scope: !422, file: !422, line: 367, type: !1838, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1839)
!1838 = !DISubroutineType(types: !455)
!1839 = !{!1840, !1841, !1842}
!1840 = !DILocalVariable(name: "ret", scope: !1837, file: !422, line: 374, type: !101)
!1841 = !DILocalVariable(name: "fp", scope: !1837, file: !422, line: 378, type: !1730)
!1842 = !DILocalVariable(name: "mnt", scope: !1837, file: !422, line: 381, type: !1843)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1845, line: 51, size: 320, elements: !1846)
!1845 = !DIFile(filename: "/usr/include/mntent.h", directory: "", checksumkind: CSK_MD5, checksum: "0070e4c80f74d781196301da01c9ab34")
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1844, file: !1845, line: 53, baseType: !101, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1844, file: !1845, line: 54, baseType: !101, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1844, file: !1845, line: 55, baseType: !101, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1844, file: !1845, line: 56, baseType: !101, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1844, file: !1845, line: 57, baseType: !70, size: 32, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1844, file: !1845, line: 58, baseType: !70, size: 32, offset: 288)
!1853 = distinct !DILocation(line: 427, column: 28, scope: !1817, inlinedAt: !1792)
!1854 = !DILocation(line: 371, column: 58, scope: !1836, inlinedAt: !1853)
!1855 = !DILocation(line: 371, column: 7, scope: !1837, inlinedAt: !1853)
!1856 = !DILocation(line: 372, column: 12, scope: !1836, inlinedAt: !1853)
!1857 = !DILocation(line: 372, column: 5, scope: !1836, inlinedAt: !1853)
!1858 = !DILocation(line: 0, scope: !1837, inlinedAt: !1853)
!1859 = !DILocation(line: 378, column: 14, scope: !1837, inlinedAt: !1853)
!1860 = !DILocation(line: 379, column: 9, scope: !1861, inlinedAt: !1853)
!1861 = distinct !DILexicalBlock(scope: !1837, file: !422, line: 379, column: 7)
!1862 = !DILocation(line: 379, column: 7, scope: !1837, inlinedAt: !1853)
!1863 = !DILocation(line: 382, column: 17, scope: !1837, inlinedAt: !1853)
!1864 = !DILocation(line: 382, column: 33, scope: !1837, inlinedAt: !1853)
!1865 = !DILocation(line: 382, column: 3, scope: !1837, inlinedAt: !1853)
!1866 = !DILocation(line: 384, column: 23, scope: !1867, inlinedAt: !1853)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !422, line: 384, column: 11)
!1868 = distinct !DILexicalBlock(scope: !1837, file: !422, line: 383, column: 5)
!1869 = !{!1870, !1055, i64 16}
!1870 = !{!"mntent", !1055, i64 0, !1055, i64 8, !1055, i64 16, !1055, i64 24, !1118, i64 32, !1118, i64 36}
!1871 = !DILocalVariable(name: "__s1", arg: 1, scope: !1872, file: !1130, line: 1359, type: !107)
!1872 = distinct !DISubprogram(name: "streq", scope: !1130, file: !1130, line: 1359, type: !1131, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1873)
!1873 = !{!1871, !1874}
!1874 = !DILocalVariable(name: "__s2", arg: 2, scope: !1872, file: !1130, line: 1359, type: !107)
!1875 = !DILocation(line: 0, scope: !1872, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 384, column: 11, scope: !1867, inlinedAt: !1853)
!1877 = !DILocation(line: 1361, column: 11, scope: !1872, inlinedAt: !1876)
!1878 = !DILocation(line: 1361, column: 10, scope: !1872, inlinedAt: !1876)
!1879 = !DILocation(line: 384, column: 11, scope: !1868, inlinedAt: !1853)
!1880 = distinct !{!1880, !1865, !1881, !1164}
!1881 = !DILocation(line: 389, column: 5, scope: !1837, inlinedAt: !1853)
!1882 = !DILocation(line: 386, column: 30, scope: !1883, inlinedAt: !1853)
!1883 = distinct !DILexicalBlock(scope: !1867, file: !422, line: 385, column: 9)
!1884 = !{!1870, !1055, i64 8}
!1885 = !DILocation(line: 386, column: 17, scope: !1883, inlinedAt: !1853)
!1886 = !DILocation(line: 387, column: 11, scope: !1883, inlinedAt: !1853)
!1887 = !DILocation(line: 390, column: 3, scope: !1837, inlinedAt: !1853)
!1888 = !DILocation(line: 427, column: 26, scope: !1817, inlinedAt: !1792)
!1889 = !DILocation(line: 427, column: 7, scope: !1727, inlinedAt: !1792)
!1890 = !DILocation(line: 431, column: 3, scope: !1727, inlinedAt: !1792)
!1891 = !DILocation(line: 431, column: 9, scope: !1727, inlinedAt: !1792)
!1892 = !DILocation(line: 432, column: 3, scope: !1727, inlinedAt: !1792)
!1893 = !DILocation(line: 432, column: 10, scope: !1727, inlinedAt: !1792)
!1894 = !DILocation(line: 433, column: 17, scope: !1727, inlinedAt: !1792)
!1895 = !DILocation(line: 433, column: 20, scope: !1727, inlinedAt: !1792)
!1896 = !DILocation(line: 433, column: 3, scope: !1727, inlinedAt: !1792)
!1897 = !DILocation(line: 440, column: 7, scope: !1779, inlinedAt: !1792)
!1898 = !DILocation(line: 440, column: 12, scope: !1779, inlinedAt: !1792)
!1899 = !DILocation(line: 441, column: 7, scope: !1779, inlinedAt: !1792)
!1900 = !DILocation(line: 444, column: 17, scope: !1785, inlinedAt: !1792)
!1901 = !DILocation(line: 444, column: 15, scope: !1785, inlinedAt: !1792)
!1902 = !DILocation(line: 445, column: 11, scope: !1785, inlinedAt: !1792)
!1903 = !DILocation(line: 0, scope: !1805, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 445, column: 14, scope: !1785, inlinedAt: !1792)
!1905 = !DILocation(line: 120, column: 10, scope: !1805, inlinedAt: !1904)
!1906 = !DILocation(line: 445, column: 52, scope: !1785, inlinedAt: !1792)
!1907 = !DILocation(line: 446, column: 11, scope: !1785, inlinedAt: !1792)
!1908 = !DILocation(line: 446, column: 23, scope: !1785, inlinedAt: !1792)
!1909 = !DILocation(line: 446, column: 14, scope: !1785, inlinedAt: !1792)
!1910 = !DILocation(line: 446, column: 44, scope: !1785, inlinedAt: !1792)
!1911 = !DILocation(line: 444, column: 11, scope: !1779, inlinedAt: !1792)
!1912 = !DILocation(line: 448, column: 11, scope: !1784, inlinedAt: !1792)
!1913 = !DILocation(line: 0, scope: !1784, inlinedAt: !1792)
!1914 = !DILocation(line: 449, column: 15, scope: !1789, inlinedAt: !1792)
!1915 = !DILocation(line: 449, column: 62, scope: !1789, inlinedAt: !1792)
!1916 = !DILocation(line: 449, column: 67, scope: !1789, inlinedAt: !1792)
!1917 = !DILocation(line: 451, column: 38, scope: !1788, inlinedAt: !1792)
!1918 = !DILocation(line: 451, column: 30, scope: !1788, inlinedAt: !1792)
!1919 = !DILocation(line: 451, column: 46, scope: !1788, inlinedAt: !1792)
!1920 = !DILocation(line: 451, column: 44, scope: !1788, inlinedAt: !1792)
!1921 = !DILocation(line: 0, scope: !1788, inlinedAt: !1792)
!1922 = !DILocation(line: 452, column: 29, scope: !1923, inlinedAt: !1792)
!1923 = distinct !DILexicalBlock(scope: !1788, file: !422, line: 452, column: 19)
!1924 = !DILocation(line: 452, column: 42, scope: !1923, inlinedAt: !1792)
!1925 = !DILocation(line: 454, column: 31, scope: !1926, inlinedAt: !1792)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !422, line: 453, column: 17)
!1927 = !DILocation(line: 456, column: 33, scope: !1928, inlinedAt: !1792)
!1928 = distinct !DILexicalBlock(scope: !1926, file: !422, line: 456, column: 23)
!1929 = !DILocation(line: 456, column: 23, scope: !1926, inlinedAt: !1792)
!1930 = !DILocation(line: 457, column: 29, scope: !1928, inlinedAt: !1792)
!1931 = !DILocation(line: 457, column: 21, scope: !1928, inlinedAt: !1792)
!1932 = !DILocation(line: 460, column: 9, scope: !1785, inlinedAt: !1792)
!1933 = !DILocation(line: 460, column: 9, scope: !1784, inlinedAt: !1792)
!1934 = !DILocation(line: 463, column: 9, scope: !1935, inlinedAt: !1792)
!1935 = distinct !DILexicalBlock(scope: !1779, file: !422, line: 462, column: 11)
!1936 = !DILocation(line: 465, column: 24, scope: !1779, inlinedAt: !1792)
!1937 = !DILocation(line: 0, scope: !1779, inlinedAt: !1792)
!1938 = !DILocation(line: 466, column: 13, scope: !1939, inlinedAt: !1792)
!1939 = distinct !DILexicalBlock(scope: !1779, file: !422, line: 466, column: 11)
!1940 = !DILocation(line: 466, column: 11, scope: !1779, inlinedAt: !1792)
!1941 = !DILocation(line: 472, column: 5, scope: !1727, inlinedAt: !1792)
!1942 = !DILocation(line: 468, column: 20, scope: !1943, inlinedAt: !1792)
!1943 = distinct !DILexicalBlock(scope: !1779, file: !422, line: 468, column: 11)
!1944 = !DILocation(line: 468, column: 30, scope: !1943, inlinedAt: !1792)
!1945 = !DILocation(line: 468, column: 33, scope: !1943, inlinedAt: !1792)
!1946 = !DILocation(line: 468, column: 11, scope: !1779, inlinedAt: !1792)
!1947 = !DILocation(line: 0, scope: !1943, inlinedAt: !1792)
!1948 = !DILocation(line: 474, column: 9, scope: !1727, inlinedAt: !1792)
!1949 = !DILocation(line: 474, column: 3, scope: !1727, inlinedAt: !1792)
!1950 = !DILocation(line: 475, column: 3, scope: !1727, inlinedAt: !1792)
!1951 = !DILocation(line: 476, column: 9, scope: !1727, inlinedAt: !1792)
!1952 = !DILocation(line: 476, column: 3, scope: !1727, inlinedAt: !1792)
!1953 = !DILocation(line: 479, column: 1, scope: !1727, inlinedAt: !1792)
!1954 = !DILocation(line: 0, scope: !1793, inlinedAt: !1723)
!1955 = !DILocation(line: 0, scope: !1617)
!1956 = !DILocation(line: 571, column: 21, scope: !1617)
!1957 = !DILocation(line: 572, column: 5, scope: !1617)
!1958 = !DILocation(line: 574, column: 19, scope: !1621)
!1959 = !DILocation(line: 574, column: 7, scope: !1606)
!1960 = !DILocalVariable(name: "query", arg: 1, scope: !1961, file: !422, line: 238, type: !61)
!1961 = distinct !DISubprogram(name: "num_processors_available", scope: !422, file: !422, line: 238, type: !1607, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1962)
!1962 = !{!1960, !1963, !1967, !1969, !1972}
!1963 = !DILocalVariable(name: "nprocs", scope: !1964, file: !422, line: 259, type: !106)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !422, line: 258, column: 7)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !422, line: 256, column: 5)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !422, line: 255, column: 7)
!1967 = !DILocalVariable(name: "nprocs", scope: !1968, file: !422, line: 268, type: !189)
!1968 = distinct !DILexicalBlock(scope: !1965, file: !422, line: 266, column: 7)
!1969 = !DILocalVariable(name: "nprocs", scope: !1970, file: !422, line: 279, type: !189)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !422, line: 277, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1966, file: !422, line: 275, column: 5)
!1972 = !DILocalVariable(name: "nprocs_current", scope: !1973, file: !422, line: 289, type: !106)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !422, line: 288, column: 11)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !422, line: 287, column: 13)
!1975 = !DILocation(line: 0, scope: !1961, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 576, column: 30, scope: !1620)
!1977 = !DILocation(line: 255, column: 7, scope: !1961, inlinedAt: !1976)
!1978 = !DILocation(line: 259, column: 32, scope: !1964, inlinedAt: !1976)
!1979 = !DILocation(line: 0, scope: !1964, inlinedAt: !1976)
!1980 = !DILocation(line: 261, column: 20, scope: !1981, inlinedAt: !1976)
!1981 = distinct !DILexicalBlock(scope: !1964, file: !422, line: 261, column: 13)
!1982 = !DILocation(line: 268, column: 27, scope: !1968, inlinedAt: !1976)
!1983 = !DILocation(line: 0, scope: !1968, inlinedAt: !1976)
!1984 = !DILocation(line: 269, column: 20, scope: !1985, inlinedAt: !1976)
!1985 = distinct !DILexicalBlock(scope: !1968, file: !422, line: 269, column: 13)
!1986 = !DILocation(line: 279, column: 27, scope: !1970, inlinedAt: !1976)
!1987 = !DILocation(line: 0, scope: !1970, inlinedAt: !1976)
!1988 = !DILocation(line: 287, column: 25, scope: !1974, inlinedAt: !1976)
!1989 = !DILocation(line: 289, column: 44, scope: !1973, inlinedAt: !1976)
!1990 = !DILocation(line: 0, scope: !1973, inlinedAt: !1976)
!1991 = !DILocation(line: 291, column: 45, scope: !1973, inlinedAt: !1976)
!1992 = !DILocation(line: 293, column: 11, scope: !1973, inlinedAt: !1976)
!1993 = !DILocation(line: 296, column: 20, scope: !1994, inlinedAt: !1976)
!1994 = distinct !DILexicalBlock(scope: !1970, file: !422, line: 296, column: 13)
!1995 = !DILocation(line: 357, column: 3, scope: !1961, inlinedAt: !1976)
!1996 = !DILocation(line: 0, scope: !1620)
!1997 = !DILocation(line: 577, column: 21, scope: !1620)
!1998 = !DILocation(line: 578, column: 5, scope: !1620)
!1999 = !DILocation(line: 581, column: 1, scope: !1606)
!2000 = !DISubprogram(name: "strtoul", scope: !1242, file: !1242, line: 181, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!106, !1107, !2003, !70}
!2003 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1271)
!2004 = !DISubprogram(name: "sched_getscheduler", scope: !2005, file: !2005, line: 65, type: !2006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2005 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!70, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !188, line: 154, baseType: !70)
!2009 = !DISubprogram(name: "__getdelim", scope: !1112, file: !1112, line: 632, type: !2010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!1770, !2003, !2012, !70, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !967)
!2013 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1730)
!2014 = !DISubprogram(name: "access", scope: !1382, file: !1382, line: 287, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!70, !107, !70}
!2017 = !DISubprogram(name: "strdup", scope: !1238, file: !1238, line: 187, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2018 = !DISubprogram(name: "setmntent", scope: !1845, file: !1845, line: 64, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!1730, !107, !107}
!2021 = !DISubprogram(name: "getmntent", scope: !1845, file: !1845, line: 69, type: !2022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!1843, !1730}
!2024 = !DISubprogram(name: "endmntent", scope: !1845, file: !1845, line: 85, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!70, !1730}
!2027 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !422, file: !422, line: 441, type: !2028, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!70, !101, !106, !70, !106, !107, null}
!2030 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1112, file: !1112, line: 439, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!70, !1107, !1107, null}
!2033 = !DISubprogram(name: "strrchr", scope: !1238, file: !1238, line: 273, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2034 = !DISubprogram(name: "free", scope: !1130, file: !1130, line: 752, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !102}
!2037 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !422, file: !422, line: 73, type: !1719, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !2038)
!2038 = !{!2039, !2041, !2053, !2054, !2057, !2059}
!2039 = !DILocalVariable(name: "alloc_count", scope: !2040, file: !422, line: 137, type: !63)
!2040 = distinct !DILexicalBlock(scope: !2037, file: !422, line: 136, column: 3)
!2041 = !DILocalVariable(name: "set", scope: !2042, file: !422, line: 140, type: !2045)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !422, line: 139, column: 7)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !422, line: 138, column: 5)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !422, line: 138, column: 5)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !2047, line: 42, baseType: !2048)
!2047 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/cpu-set.h", directory: "", checksumkind: CSK_MD5, checksum: "9b78eb5e247ecb71c5de90bcf65db505")
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2047, line: 39, size: 1024, elements: !2049)
!2049 = !{!2050}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !2048, file: !2047, line: 41, baseType: !2051, size: 1024)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2052, size: 1024, elements: !297)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !2047, line: 32, baseType: !106)
!2053 = !DILocalVariable(name: "size", scope: !2042, file: !422, line: 144, type: !63)
!2054 = !DILocalVariable(name: "count", scope: !2055, file: !422, line: 147, type: !63)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !422, line: 146, column: 11)
!2056 = distinct !DILexicalBlock(scope: !2042, file: !422, line: 145, column: 13)
!2057 = !DILocalVariable(name: "set", scope: !2058, file: !422, line: 167, type: !2046)
!2058 = distinct !DILexicalBlock(scope: !2037, file: !422, line: 166, column: 3)
!2059 = !DILocalVariable(name: "count", scope: !2060, file: !422, line: 171, type: !106)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !422, line: 170, column: 7)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !422, line: 169, column: 9)
!2062 = !DILocation(line: 0, scope: !2040)
!2063 = !DILocation(line: 138, column: 5, scope: !2040)
!2064 = !DILocation(line: 137, column: 18, scope: !2040)
!2065 = !DILocation(line: 140, column: 26, scope: !2042)
!2066 = !DILocation(line: 0, scope: !2042)
!2067 = !DILocation(line: 141, column: 17, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2042, file: !422, line: 141, column: 13)
!2069 = !DILocation(line: 141, column: 13, scope: !2042)
!2070 = !DILocation(line: 144, column: 29, scope: !2042)
!2071 = !DILocation(line: 145, column: 13, scope: !2056)
!2072 = !DILocation(line: 145, column: 46, scope: !2056)
!2073 = !DILocation(line: 145, column: 13, scope: !2042)
!2074 = !DILocation(line: 147, column: 34, scope: !2055)
!2075 = !DILocation(line: 0, scope: !2055)
!2076 = !DILocation(line: 148, column: 13, scope: !2055)
!2077 = !DILocation(line: 149, column: 20, scope: !2055)
!2078 = !DILocation(line: 151, column: 13, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2042, file: !422, line: 151, column: 13)
!2080 = !DILocation(line: 151, column: 19, scope: !2079)
!2081 = !DILocation(line: 151, column: 13, scope: !2042)
!2082 = !DILocation(line: 167, column: 5, scope: !2058)
!2083 = !DILocation(line: 167, column: 15, scope: !2058)
!2084 = !DILocation(line: 169, column: 9, scope: !2061)
!2085 = !DILocation(line: 169, column: 51, scope: !2061)
!2086 = !DILocation(line: 169, column: 9, scope: !2058)
!2087 = !DILocation(line: 175, column: 17, scope: !2060)
!2088 = !DILocation(line: 0, scope: !2060)
!2089 = !DILocation(line: 182, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2060, file: !422, line: 182, column: 13)
!2091 = !DILocation(line: 182, column: 13, scope: !2060)
!2092 = !DILocation(line: 185, column: 3, scope: !2037)
!2093 = !DILocation(line: 232, column: 1, scope: !2037)
!2094 = !DISubprogram(name: "sysconf", scope: !1382, file: !1382, line: 640, type: !2095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!189, !70}
!2097 = !DISubprogram(name: "__sched_cpualloc", scope: !2047, file: !2047, line: 119, type: !2098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!2045, !104}
!2100 = !DISubprogram(name: "sched_getaffinity", scope: !2005, file: !2005, line: 134, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!70, !2008, !104, !2045}
!2103 = !DISubprogram(name: "__sched_cpucount", scope: !2047, file: !2047, line: 117, type: !2104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!70, !104, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2046)
!2108 = !DISubprogram(name: "__sched_cpufree", scope: !2047, file: !2047, line: 120, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !2045}
!2111 = distinct !DISubprogram(name: "set_program_name", scope: !454, file: !454, line: 37, type: !1067, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !2112)
!2112 = !{!2113, !2114, !2115}
!2113 = !DILocalVariable(name: "argv0", arg: 1, scope: !2111, file: !454, line: 37, type: !107)
!2114 = !DILocalVariable(name: "slash", scope: !2111, file: !454, line: 44, type: !107)
!2115 = !DILocalVariable(name: "base", scope: !2111, file: !454, line: 45, type: !107)
!2116 = !DILocation(line: 0, scope: !2111)
!2117 = !DILocation(line: 44, column: 23, scope: !2111)
!2118 = !DILocation(line: 45, column: 22, scope: !2111)
!2119 = !DILocation(line: 46, column: 17, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2111, file: !454, line: 46, column: 7)
!2121 = !DILocation(line: 46, column: 9, scope: !2120)
!2122 = !DILocation(line: 46, column: 25, scope: !2120)
!2123 = !DILocation(line: 46, column: 40, scope: !2120)
!2124 = !DILocalVariable(name: "__s1", arg: 1, scope: !2125, file: !1130, line: 974, type: !1266)
!2125 = distinct !DISubprogram(name: "memeq", scope: !1130, file: !1130, line: 974, type: !2126, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!148, !1266, !1266, !104}
!2128 = !{!2124, !2129, !2130}
!2129 = !DILocalVariable(name: "__s2", arg: 2, scope: !2125, file: !1130, line: 974, type: !1266)
!2130 = !DILocalVariable(name: "__n", arg: 3, scope: !2125, file: !1130, line: 974, type: !104)
!2131 = !DILocation(line: 0, scope: !2125, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 46, column: 28, scope: !2120)
!2133 = !DILocation(line: 976, column: 11, scope: !2125, inlinedAt: !2132)
!2134 = !DILocation(line: 976, column: 10, scope: !2125, inlinedAt: !2132)
!2135 = !DILocation(line: 46, column: 7, scope: !2111)
!2136 = !DILocation(line: 49, column: 11, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !454, line: 49, column: 11)
!2138 = distinct !DILexicalBlock(scope: !2120, file: !454, line: 47, column: 5)
!2139 = !DILocation(line: 49, column: 36, scope: !2137)
!2140 = !DILocation(line: 49, column: 11, scope: !2138)
!2141 = !DILocation(line: 65, column: 16, scope: !2111)
!2142 = !DILocation(line: 71, column: 27, scope: !2111)
!2143 = !DILocation(line: 74, column: 33, scope: !2111)
!2144 = !DILocation(line: 76, column: 1, scope: !2111)
!2145 = !DILocation(line: 0, scope: !463)
!2146 = !DILocation(line: 40, column: 29, scope: !463)
!2147 = !DILocation(line: 41, column: 19, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !463, file: !464, line: 41, column: 7)
!2149 = !DILocation(line: 41, column: 7, scope: !463)
!2150 = !DILocation(line: 47, column: 3, scope: !463)
!2151 = !DILocation(line: 48, column: 3, scope: !463)
!2152 = !DILocation(line: 48, column: 13, scope: !463)
!2153 = !DILocalVariable(name: "ps", arg: 1, scope: !2154, file: !2155, line: 1135, type: !2158)
!2154 = distinct !DISubprogram(name: "mbszero", scope: !2155, file: !2155, line: 1135, type: !2156, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !2159)
!2155 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!2159 = !{!2153}
!2160 = !DILocation(line: 0, scope: !2154, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 48, column: 18, scope: !463)
!2162 = !DILocalVariable(name: "__dest", arg: 1, scope: !2163, file: !2164, line: 57, type: !102)
!2163 = distinct !DISubprogram(name: "memset", scope: !2164, file: !2164, line: 57, type: !2165, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !2167)
!2164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!102, !102, !70, !104}
!2167 = !{!2162, !2168, !2169}
!2168 = !DILocalVariable(name: "__ch", arg: 2, scope: !2163, file: !2164, line: 57, type: !70)
!2169 = !DILocalVariable(name: "__len", arg: 3, scope: !2163, file: !2164, line: 57, type: !104)
!2170 = !DILocation(line: 0, scope: !2163, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 1137, column: 3, scope: !2154, inlinedAt: !2161)
!2172 = !DILocation(line: 59, column: 10, scope: !2163, inlinedAt: !2171)
!2173 = !DILocation(line: 49, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !463, file: !464, line: 49, column: 7)
!2175 = !DILocation(line: 49, column: 39, scope: !2174)
!2176 = !DILocation(line: 49, column: 44, scope: !2174)
!2177 = !DILocation(line: 54, column: 1, scope: !463)
!2178 = !DISubprogram(name: "mbrtoc32", scope: !475, file: !475, line: 57, type: !2179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!104, !2181, !1107, !104, !2183}
!2181 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2158)
!2184 = distinct !DISubprogram(name: "clone_quoting_options", scope: !494, file: !494, line: 113, type: !2185, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2188)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!2187, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!2188 = !{!2189, !2190, !2191}
!2189 = !DILocalVariable(name: "o", arg: 1, scope: !2184, file: !494, line: 113, type: !2187)
!2190 = !DILocalVariable(name: "saved_errno", scope: !2184, file: !494, line: 115, type: !70)
!2191 = !DILocalVariable(name: "p", scope: !2184, file: !494, line: 116, type: !2187)
!2192 = !DILocation(line: 0, scope: !2184)
!2193 = !DILocation(line: 115, column: 21, scope: !2184)
!2194 = !DILocation(line: 116, column: 40, scope: !2184)
!2195 = !DILocation(line: 116, column: 31, scope: !2184)
!2196 = !DILocation(line: 118, column: 9, scope: !2184)
!2197 = !DILocation(line: 119, column: 3, scope: !2184)
!2198 = distinct !DISubprogram(name: "get_quoting_style", scope: !494, file: !494, line: 124, type: !2199, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2203)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!517, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!2203 = !{!2204}
!2204 = !DILocalVariable(name: "o", arg: 1, scope: !2198, file: !494, line: 124, type: !2201)
!2205 = !DILocation(line: 0, scope: !2198)
!2206 = !DILocation(line: 126, column: 11, scope: !2198)
!2207 = !DILocation(line: 126, column: 46, scope: !2198)
!2208 = !{!2209, !1056, i64 0}
!2209 = !{!"quoting_options", !1056, i64 0, !1118, i64 4, !1056, i64 8, !1055, i64 40, !1055, i64 48}
!2210 = !DILocation(line: 126, column: 3, scope: !2198)
!2211 = distinct !DISubprogram(name: "set_quoting_style", scope: !494, file: !494, line: 132, type: !2212, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !2187, !517}
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "o", arg: 1, scope: !2211, file: !494, line: 132, type: !2187)
!2216 = !DILocalVariable(name: "s", arg: 2, scope: !2211, file: !494, line: 132, type: !517)
!2217 = !DILocation(line: 0, scope: !2211)
!2218 = !DILocation(line: 134, column: 4, scope: !2211)
!2219 = !DILocation(line: 134, column: 45, scope: !2211)
!2220 = !DILocation(line: 135, column: 1, scope: !2211)
!2221 = distinct !DISubprogram(name: "set_char_quoting", scope: !494, file: !494, line: 143, type: !2222, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!70, !2187, !4, !70}
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2231, !2232}
!2225 = !DILocalVariable(name: "o", arg: 1, scope: !2221, file: !494, line: 143, type: !2187)
!2226 = !DILocalVariable(name: "c", arg: 2, scope: !2221, file: !494, line: 143, type: !4)
!2227 = !DILocalVariable(name: "i", arg: 3, scope: !2221, file: !494, line: 143, type: !70)
!2228 = !DILocalVariable(name: "uc", scope: !2221, file: !494, line: 145, type: !109)
!2229 = !DILocalVariable(name: "p", scope: !2221, file: !494, line: 146, type: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!2231 = !DILocalVariable(name: "shift", scope: !2221, file: !494, line: 148, type: !70)
!2232 = !DILocalVariable(name: "r", scope: !2221, file: !494, line: 149, type: !63)
!2233 = !DILocation(line: 0, scope: !2221)
!2234 = !DILocation(line: 147, column: 6, scope: !2221)
!2235 = !DILocation(line: 147, column: 41, scope: !2221)
!2236 = !DILocation(line: 147, column: 62, scope: !2221)
!2237 = !DILocation(line: 147, column: 57, scope: !2221)
!2238 = !DILocation(line: 148, column: 15, scope: !2221)
!2239 = !DILocation(line: 149, column: 21, scope: !2221)
!2240 = !DILocation(line: 149, column: 24, scope: !2221)
!2241 = !DILocation(line: 149, column: 34, scope: !2221)
!2242 = !DILocation(line: 150, column: 19, scope: !2221)
!2243 = !DILocation(line: 150, column: 24, scope: !2221)
!2244 = !DILocation(line: 150, column: 6, scope: !2221)
!2245 = !DILocation(line: 151, column: 3, scope: !2221)
!2246 = distinct !DISubprogram(name: "set_quoting_flags", scope: !494, file: !494, line: 159, type: !2247, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2249)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!70, !2187, !70}
!2249 = !{!2250, !2251, !2252}
!2250 = !DILocalVariable(name: "o", arg: 1, scope: !2246, file: !494, line: 159, type: !2187)
!2251 = !DILocalVariable(name: "i", arg: 2, scope: !2246, file: !494, line: 159, type: !70)
!2252 = !DILocalVariable(name: "r", scope: !2246, file: !494, line: 163, type: !70)
!2253 = !DILocation(line: 0, scope: !2246)
!2254 = !DILocation(line: 161, column: 8, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2246, file: !494, line: 161, column: 7)
!2256 = !DILocation(line: 161, column: 7, scope: !2246)
!2257 = !DILocation(line: 163, column: 14, scope: !2246)
!2258 = !{!2209, !1118, i64 4}
!2259 = !DILocation(line: 164, column: 12, scope: !2246)
!2260 = !DILocation(line: 165, column: 3, scope: !2246)
!2261 = distinct !DISubprogram(name: "set_custom_quoting", scope: !494, file: !494, line: 169, type: !2262, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !2187, !107, !107}
!2264 = !{!2265, !2266, !2267}
!2265 = !DILocalVariable(name: "o", arg: 1, scope: !2261, file: !494, line: 169, type: !2187)
!2266 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2261, file: !494, line: 170, type: !107)
!2267 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2261, file: !494, line: 170, type: !107)
!2268 = !DILocation(line: 0, scope: !2261)
!2269 = !DILocation(line: 172, column: 8, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2261, file: !494, line: 172, column: 7)
!2271 = !DILocation(line: 172, column: 7, scope: !2261)
!2272 = !DILocation(line: 174, column: 12, scope: !2261)
!2273 = !DILocation(line: 175, column: 8, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2261, file: !494, line: 175, column: 7)
!2275 = !DILocation(line: 175, column: 19, scope: !2274)
!2276 = !DILocation(line: 176, column: 5, scope: !2274)
!2277 = !DILocation(line: 177, column: 6, scope: !2261)
!2278 = !DILocation(line: 177, column: 17, scope: !2261)
!2279 = !{!2209, !1055, i64 40}
!2280 = !DILocation(line: 178, column: 6, scope: !2261)
!2281 = !DILocation(line: 178, column: 18, scope: !2261)
!2282 = !{!2209, !1055, i64 48}
!2283 = !DILocation(line: 179, column: 1, scope: !2261)
!2284 = !DISubprogram(name: "abort", scope: !1242, file: !1242, line: 598, type: !418, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2285 = distinct !DISubprogram(name: "quotearg_buffer", scope: !494, file: !494, line: 774, type: !2286, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!104, !101, !104, !107, !104, !2201}
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2289 = !DILocalVariable(name: "buffer", arg: 1, scope: !2285, file: !494, line: 774, type: !101)
!2290 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2285, file: !494, line: 774, type: !104)
!2291 = !DILocalVariable(name: "arg", arg: 3, scope: !2285, file: !494, line: 775, type: !107)
!2292 = !DILocalVariable(name: "argsize", arg: 4, scope: !2285, file: !494, line: 775, type: !104)
!2293 = !DILocalVariable(name: "o", arg: 5, scope: !2285, file: !494, line: 776, type: !2201)
!2294 = !DILocalVariable(name: "p", scope: !2285, file: !494, line: 778, type: !2201)
!2295 = !DILocalVariable(name: "saved_errno", scope: !2285, file: !494, line: 779, type: !70)
!2296 = !DILocalVariable(name: "r", scope: !2285, file: !494, line: 780, type: !104)
!2297 = !DILocation(line: 0, scope: !2285)
!2298 = !DILocation(line: 778, column: 37, scope: !2285)
!2299 = !DILocation(line: 779, column: 21, scope: !2285)
!2300 = !DILocation(line: 781, column: 43, scope: !2285)
!2301 = !DILocation(line: 781, column: 53, scope: !2285)
!2302 = !DILocation(line: 781, column: 63, scope: !2285)
!2303 = !DILocation(line: 782, column: 43, scope: !2285)
!2304 = !DILocation(line: 782, column: 58, scope: !2285)
!2305 = !DILocation(line: 780, column: 14, scope: !2285)
!2306 = !DILocation(line: 783, column: 9, scope: !2285)
!2307 = !DILocation(line: 784, column: 3, scope: !2285)
!2308 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !494, file: !494, line: 251, type: !2309, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2313)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!104, !101, !104, !107, !104, !517, !70, !2311, !107, !107}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!2313 = !{!2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2338, !2340, !2343, !2344, !2345, !2346, !2349, !2350, !2353, !2357, !2358, !2366, !2369, !2370, !2372, !2373, !2374, !2375}
!2314 = !DILocalVariable(name: "buffer", arg: 1, scope: !2308, file: !494, line: 251, type: !101)
!2315 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2308, file: !494, line: 251, type: !104)
!2316 = !DILocalVariable(name: "arg", arg: 3, scope: !2308, file: !494, line: 252, type: !107)
!2317 = !DILocalVariable(name: "argsize", arg: 4, scope: !2308, file: !494, line: 252, type: !104)
!2318 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2308, file: !494, line: 253, type: !517)
!2319 = !DILocalVariable(name: "flags", arg: 6, scope: !2308, file: !494, line: 253, type: !70)
!2320 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2308, file: !494, line: 254, type: !2311)
!2321 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2308, file: !494, line: 255, type: !107)
!2322 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2308, file: !494, line: 256, type: !107)
!2323 = !DILocalVariable(name: "unibyte_locale", scope: !2308, file: !494, line: 258, type: !148)
!2324 = !DILocalVariable(name: "len", scope: !2308, file: !494, line: 260, type: !104)
!2325 = !DILocalVariable(name: "orig_buffersize", scope: !2308, file: !494, line: 261, type: !104)
!2326 = !DILocalVariable(name: "quote_string", scope: !2308, file: !494, line: 262, type: !107)
!2327 = !DILocalVariable(name: "quote_string_len", scope: !2308, file: !494, line: 263, type: !104)
!2328 = !DILocalVariable(name: "backslash_escapes", scope: !2308, file: !494, line: 264, type: !148)
!2329 = !DILocalVariable(name: "elide_outer_quotes", scope: !2308, file: !494, line: 265, type: !148)
!2330 = !DILocalVariable(name: "encountered_single_quote", scope: !2308, file: !494, line: 266, type: !148)
!2331 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2308, file: !494, line: 267, type: !148)
!2332 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2308, file: !494, line: 309, type: !148)
!2333 = !DILocalVariable(name: "lq", scope: !2334, file: !494, line: 361, type: !107)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !494, line: 361, column: 11)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !494, line: 360, column: 13)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !494, line: 333, column: 7)
!2337 = distinct !DILexicalBlock(scope: !2308, file: !494, line: 312, column: 5)
!2338 = !DILocalVariable(name: "i", scope: !2339, file: !494, line: 395, type: !104)
!2339 = distinct !DILexicalBlock(scope: !2308, file: !494, line: 395, column: 3)
!2340 = !DILocalVariable(name: "is_right_quote", scope: !2341, file: !494, line: 397, type: !148)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !494, line: 396, column: 5)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !494, line: 395, column: 3)
!2343 = !DILocalVariable(name: "escaping", scope: !2341, file: !494, line: 398, type: !148)
!2344 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2341, file: !494, line: 399, type: !148)
!2345 = !DILocalVariable(name: "c", scope: !2341, file: !494, line: 417, type: !109)
!2346 = !DILocalVariable(name: "m", scope: !2347, file: !494, line: 598, type: !104)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !494, line: 596, column: 11)
!2348 = distinct !DILexicalBlock(scope: !2341, file: !494, line: 419, column: 9)
!2349 = !DILocalVariable(name: "printable", scope: !2347, file: !494, line: 600, type: !148)
!2350 = !DILocalVariable(name: "mbs", scope: !2351, file: !494, line: 609, type: !578)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !494, line: 608, column: 15)
!2352 = distinct !DILexicalBlock(scope: !2347, file: !494, line: 602, column: 17)
!2353 = !DILocalVariable(name: "w", scope: !2354, file: !494, line: 618, type: !474)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !494, line: 617, column: 19)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !494, line: 616, column: 17)
!2356 = distinct !DILexicalBlock(scope: !2351, file: !494, line: 616, column: 17)
!2357 = !DILocalVariable(name: "bytes", scope: !2354, file: !494, line: 619, type: !104)
!2358 = !DILocalVariable(name: "j", scope: !2359, file: !494, line: 648, type: !104)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !494, line: 648, column: 29)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !494, line: 647, column: 27)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !494, line: 645, column: 29)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !494, line: 636, column: 23)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !494, line: 628, column: 30)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !494, line: 623, column: 30)
!2365 = distinct !DILexicalBlock(scope: !2354, file: !494, line: 621, column: 25)
!2366 = !DILocalVariable(name: "ilim", scope: !2367, file: !494, line: 674, type: !104)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !494, line: 671, column: 15)
!2368 = distinct !DILexicalBlock(scope: !2347, file: !494, line: 670, column: 17)
!2369 = !DILabel(scope: !2308, name: "process_input", file: !494, line: 308)
!2370 = !DILabel(scope: !2371, name: "c_and_shell_escape", file: !494, line: 502)
!2371 = distinct !DILexicalBlock(scope: !2348, file: !494, line: 478, column: 9)
!2372 = !DILabel(scope: !2371, name: "c_escape", file: !494, line: 507)
!2373 = !DILabel(scope: !2341, name: "store_escape", file: !494, line: 709)
!2374 = !DILabel(scope: !2341, name: "store_c", file: !494, line: 712)
!2375 = !DILabel(scope: !2308, name: "force_outer_quoting_style", file: !494, line: 753)
!2376 = !DILocation(line: 0, scope: !2308)
!2377 = !DILocation(line: 258, column: 25, scope: !2308)
!2378 = !DILocation(line: 258, column: 36, scope: !2308)
!2379 = !DILocation(line: 265, column: 8, scope: !2308)
!2380 = !DILocation(line: 267, column: 3, scope: !2308)
!2381 = !DILocation(line: 261, column: 10, scope: !2308)
!2382 = !DILocation(line: 262, column: 15, scope: !2308)
!2383 = !DILocation(line: 263, column: 10, scope: !2308)
!2384 = !DILocation(line: 264, column: 8, scope: !2308)
!2385 = !DILocation(line: 266, column: 8, scope: !2308)
!2386 = !DILocation(line: 267, column: 8, scope: !2308)
!2387 = !DILocation(line: 308, column: 2, scope: !2308)
!2388 = !DILocation(line: 311, column: 3, scope: !2308)
!2389 = !DILocation(line: 318, column: 11, scope: !2337)
!2390 = !DILocation(line: 318, column: 12, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2337, file: !494, line: 318, column: 11)
!2392 = !DILocation(line: 319, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !494, line: 319, column: 9)
!2394 = distinct !DILexicalBlock(scope: !2391, file: !494, line: 319, column: 9)
!2395 = !DILocation(line: 319, column: 9, scope: !2394)
!2396 = !DILocation(line: 0, scope: !569, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 357, column: 26, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !494, line: 335, column: 11)
!2399 = distinct !DILexicalBlock(scope: !2336, file: !494, line: 334, column: 13)
!2400 = !DILocation(line: 199, column: 29, scope: !569, inlinedAt: !2397)
!2401 = !DILocation(line: 201, column: 19, scope: !2402, inlinedAt: !2397)
!2402 = distinct !DILexicalBlock(scope: !569, file: !494, line: 201, column: 7)
!2403 = !DILocation(line: 201, column: 7, scope: !569, inlinedAt: !2397)
!2404 = !DILocation(line: 229, column: 3, scope: !569, inlinedAt: !2397)
!2405 = !DILocation(line: 230, column: 3, scope: !569, inlinedAt: !2397)
!2406 = !DILocation(line: 230, column: 13, scope: !569, inlinedAt: !2397)
!2407 = !DILocalVariable(name: "ps", arg: 1, scope: !2408, file: !2155, line: 1135, type: !2411)
!2408 = distinct !DISubprogram(name: "mbszero", scope: !2155, file: !2155, line: 1135, type: !2409, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2412)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2412 = !{!2407}
!2413 = !DILocation(line: 0, scope: !2408, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 230, column: 18, scope: !569, inlinedAt: !2397)
!2415 = !DILocalVariable(name: "__dest", arg: 1, scope: !2416, file: !2164, line: 57, type: !102)
!2416 = distinct !DISubprogram(name: "memset", scope: !2164, file: !2164, line: 57, type: !2165, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2417)
!2417 = !{!2415, !2418, !2419}
!2418 = !DILocalVariable(name: "__ch", arg: 2, scope: !2416, file: !2164, line: 57, type: !70)
!2419 = !DILocalVariable(name: "__len", arg: 3, scope: !2416, file: !2164, line: 57, type: !104)
!2420 = !DILocation(line: 0, scope: !2416, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 1137, column: 3, scope: !2408, inlinedAt: !2414)
!2422 = !DILocation(line: 59, column: 10, scope: !2416, inlinedAt: !2421)
!2423 = !DILocation(line: 231, column: 7, scope: !2424, inlinedAt: !2397)
!2424 = distinct !DILexicalBlock(scope: !569, file: !494, line: 231, column: 7)
!2425 = !DILocation(line: 231, column: 40, scope: !2424, inlinedAt: !2397)
!2426 = !DILocation(line: 231, column: 45, scope: !2424, inlinedAt: !2397)
!2427 = !DILocation(line: 235, column: 1, scope: !569, inlinedAt: !2397)
!2428 = !DILocation(line: 0, scope: !569, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 358, column: 27, scope: !2398)
!2430 = !DILocation(line: 199, column: 29, scope: !569, inlinedAt: !2429)
!2431 = !DILocation(line: 201, column: 19, scope: !2402, inlinedAt: !2429)
!2432 = !DILocation(line: 201, column: 7, scope: !569, inlinedAt: !2429)
!2433 = !DILocation(line: 229, column: 3, scope: !569, inlinedAt: !2429)
!2434 = !DILocation(line: 230, column: 3, scope: !569, inlinedAt: !2429)
!2435 = !DILocation(line: 230, column: 13, scope: !569, inlinedAt: !2429)
!2436 = !DILocation(line: 0, scope: !2408, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 230, column: 18, scope: !569, inlinedAt: !2429)
!2438 = !DILocation(line: 0, scope: !2416, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 1137, column: 3, scope: !2408, inlinedAt: !2437)
!2440 = !DILocation(line: 59, column: 10, scope: !2416, inlinedAt: !2439)
!2441 = !DILocation(line: 231, column: 7, scope: !2424, inlinedAt: !2429)
!2442 = !DILocation(line: 231, column: 40, scope: !2424, inlinedAt: !2429)
!2443 = !DILocation(line: 231, column: 45, scope: !2424, inlinedAt: !2429)
!2444 = !DILocation(line: 235, column: 1, scope: !569, inlinedAt: !2429)
!2445 = !DILocation(line: 360, column: 14, scope: !2335)
!2446 = !DILocation(line: 360, column: 13, scope: !2336)
!2447 = !DILocation(line: 0, scope: !2334)
!2448 = !DILocation(line: 361, column: 45, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2334, file: !494, line: 361, column: 11)
!2450 = !DILocation(line: 361, column: 11, scope: !2334)
!2451 = !DILocation(line: 362, column: 13, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !494, line: 362, column: 13)
!2453 = distinct !DILexicalBlock(scope: !2449, file: !494, line: 362, column: 13)
!2454 = !DILocation(line: 362, column: 13, scope: !2453)
!2455 = !DILocation(line: 361, column: 52, scope: !2449)
!2456 = distinct !{!2456, !2450, !2457, !1164}
!2457 = !DILocation(line: 362, column: 13, scope: !2334)
!2458 = !DILocation(line: 260, column: 10, scope: !2308)
!2459 = !DILocation(line: 365, column: 28, scope: !2336)
!2460 = !DILocation(line: 367, column: 7, scope: !2337)
!2461 = !DILocation(line: 370, column: 7, scope: !2337)
!2462 = !DILocation(line: 373, column: 7, scope: !2337)
!2463 = !DILocation(line: 376, column: 12, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2337, file: !494, line: 376, column: 11)
!2465 = !DILocation(line: 376, column: 11, scope: !2337)
!2466 = !DILocation(line: 381, column: 12, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2337, file: !494, line: 381, column: 11)
!2468 = !DILocation(line: 381, column: 11, scope: !2337)
!2469 = !DILocation(line: 382, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !494, line: 382, column: 9)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !494, line: 382, column: 9)
!2472 = !DILocation(line: 382, column: 9, scope: !2471)
!2473 = !DILocation(line: 389, column: 7, scope: !2337)
!2474 = !DILocation(line: 392, column: 7, scope: !2337)
!2475 = !DILocation(line: 0, scope: !2339)
!2476 = !DILocation(line: 395, column: 8, scope: !2339)
!2477 = !DILocation(line: 309, column: 8, scope: !2308)
!2478 = !DILocation(line: 395, scope: !2339)
!2479 = !DILocation(line: 395, column: 34, scope: !2342)
!2480 = !DILocation(line: 395, column: 26, scope: !2342)
!2481 = !DILocation(line: 395, column: 48, scope: !2342)
!2482 = !DILocation(line: 395, column: 55, scope: !2342)
!2483 = !DILocation(line: 395, column: 3, scope: !2339)
!2484 = !DILocation(line: 395, column: 67, scope: !2342)
!2485 = !DILocation(line: 0, scope: !2341)
!2486 = !DILocation(line: 402, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2341, file: !494, line: 401, column: 11)
!2488 = !DILocation(line: 404, column: 17, scope: !2487)
!2489 = !DILocation(line: 405, column: 39, scope: !2487)
!2490 = !DILocation(line: 409, column: 32, scope: !2487)
!2491 = !DILocation(line: 405, column: 19, scope: !2487)
!2492 = !DILocation(line: 405, column: 15, scope: !2487)
!2493 = !DILocation(line: 410, column: 11, scope: !2487)
!2494 = !DILocation(line: 410, column: 25, scope: !2487)
!2495 = !DILocalVariable(name: "__s1", arg: 1, scope: !2496, file: !1130, line: 974, type: !1266)
!2496 = distinct !DISubprogram(name: "memeq", scope: !1130, file: !1130, line: 974, type: !2126, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2497)
!2497 = !{!2495, !2498, !2499}
!2498 = !DILocalVariable(name: "__s2", arg: 2, scope: !2496, file: !1130, line: 974, type: !1266)
!2499 = !DILocalVariable(name: "__n", arg: 3, scope: !2496, file: !1130, line: 974, type: !104)
!2500 = !DILocation(line: 0, scope: !2496, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 410, column: 14, scope: !2487)
!2502 = !DILocation(line: 976, column: 11, scope: !2496, inlinedAt: !2501)
!2503 = !DILocation(line: 976, column: 10, scope: !2496, inlinedAt: !2501)
!2504 = !DILocation(line: 401, column: 11, scope: !2341)
!2505 = !DILocation(line: 417, column: 25, scope: !2341)
!2506 = !DILocation(line: 418, column: 7, scope: !2341)
!2507 = !DILocation(line: 421, column: 15, scope: !2348)
!2508 = !DILocation(line: 423, column: 15, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !494, line: 423, column: 15)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !494, line: 422, column: 13)
!2511 = distinct !DILexicalBlock(scope: !2348, file: !494, line: 421, column: 15)
!2512 = !DILocation(line: 423, column: 15, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !494, line: 423, column: 15)
!2514 = !DILocation(line: 423, column: 15, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !494, line: 423, column: 15)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !494, line: 423, column: 15)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !494, line: 423, column: 15)
!2518 = !DILocation(line: 423, column: 15, scope: !2516)
!2519 = !DILocation(line: 423, column: 15, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !494, line: 423, column: 15)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !494, line: 423, column: 15)
!2522 = !DILocation(line: 423, column: 15, scope: !2521)
!2523 = !DILocation(line: 423, column: 15, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !494, line: 423, column: 15)
!2525 = distinct !DILexicalBlock(scope: !2517, file: !494, line: 423, column: 15)
!2526 = !DILocation(line: 423, column: 15, scope: !2525)
!2527 = !DILocation(line: 423, column: 15, scope: !2517)
!2528 = !DILocation(line: 423, column: 15, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !494, line: 423, column: 15)
!2530 = distinct !DILexicalBlock(scope: !2509, file: !494, line: 423, column: 15)
!2531 = !DILocation(line: 423, column: 15, scope: !2530)
!2532 = !DILocation(line: 431, column: 19, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2510, file: !494, line: 430, column: 19)
!2534 = !DILocation(line: 431, column: 24, scope: !2533)
!2535 = !DILocation(line: 431, column: 28, scope: !2533)
!2536 = !DILocation(line: 431, column: 38, scope: !2533)
!2537 = !DILocation(line: 431, column: 48, scope: !2533)
!2538 = !DILocation(line: 431, column: 59, scope: !2533)
!2539 = !DILocation(line: 433, column: 19, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !494, line: 433, column: 19)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !494, line: 433, column: 19)
!2542 = distinct !DILexicalBlock(scope: !2533, file: !494, line: 432, column: 17)
!2543 = !DILocation(line: 433, column: 19, scope: !2541)
!2544 = !DILocation(line: 434, column: 19, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !494, line: 434, column: 19)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !494, line: 434, column: 19)
!2547 = !DILocation(line: 434, column: 19, scope: !2546)
!2548 = !DILocation(line: 435, column: 17, scope: !2542)
!2549 = !DILocation(line: 442, column: 20, scope: !2511)
!2550 = !DILocation(line: 447, column: 11, scope: !2348)
!2551 = !DILocation(line: 450, column: 19, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2348, file: !494, line: 448, column: 13)
!2553 = !DILocation(line: 456, column: 19, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2552, file: !494, line: 455, column: 19)
!2555 = !DILocation(line: 456, column: 24, scope: !2554)
!2556 = !DILocation(line: 456, column: 28, scope: !2554)
!2557 = !DILocation(line: 456, column: 38, scope: !2554)
!2558 = !DILocation(line: 456, column: 47, scope: !2554)
!2559 = !DILocation(line: 456, column: 41, scope: !2554)
!2560 = !DILocation(line: 456, column: 52, scope: !2554)
!2561 = !DILocation(line: 455, column: 19, scope: !2552)
!2562 = !DILocation(line: 457, column: 25, scope: !2554)
!2563 = !DILocation(line: 457, column: 17, scope: !2554)
!2564 = !DILocation(line: 464, column: 25, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2554, file: !494, line: 458, column: 19)
!2566 = !DILocation(line: 468, column: 21, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !494, line: 468, column: 21)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !494, line: 468, column: 21)
!2569 = !DILocation(line: 468, column: 21, scope: !2568)
!2570 = !DILocation(line: 469, column: 21, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !494, line: 469, column: 21)
!2572 = distinct !DILexicalBlock(scope: !2565, file: !494, line: 469, column: 21)
!2573 = !DILocation(line: 469, column: 21, scope: !2572)
!2574 = !DILocation(line: 470, column: 21, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !494, line: 470, column: 21)
!2576 = distinct !DILexicalBlock(scope: !2565, file: !494, line: 470, column: 21)
!2577 = !DILocation(line: 470, column: 21, scope: !2576)
!2578 = !DILocation(line: 471, column: 21, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !494, line: 471, column: 21)
!2580 = distinct !DILexicalBlock(scope: !2565, file: !494, line: 471, column: 21)
!2581 = !DILocation(line: 471, column: 21, scope: !2580)
!2582 = !DILocation(line: 472, column: 21, scope: !2565)
!2583 = !DILocation(line: 482, column: 33, scope: !2371)
!2584 = !DILocation(line: 483, column: 33, scope: !2371)
!2585 = !DILocation(line: 485, column: 33, scope: !2371)
!2586 = !DILocation(line: 486, column: 33, scope: !2371)
!2587 = !DILocation(line: 487, column: 33, scope: !2371)
!2588 = !DILocation(line: 490, column: 17, scope: !2371)
!2589 = !DILocation(line: 492, column: 21, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !494, line: 491, column: 15)
!2591 = distinct !DILexicalBlock(scope: !2371, file: !494, line: 490, column: 17)
!2592 = !DILocation(line: 499, column: 35, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2371, file: !494, line: 499, column: 17)
!2594 = !DILocation(line: 499, column: 57, scope: !2593)
!2595 = !DILocation(line: 0, scope: !2371)
!2596 = !DILocation(line: 502, column: 11, scope: !2371)
!2597 = !DILocation(line: 504, column: 17, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2371, file: !494, line: 503, column: 17)
!2599 = !DILocation(line: 507, column: 11, scope: !2371)
!2600 = !DILocation(line: 508, column: 17, scope: !2371)
!2601 = !DILocation(line: 517, column: 15, scope: !2348)
!2602 = !DILocation(line: 517, column: 40, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2348, file: !494, line: 517, column: 15)
!2604 = !DILocation(line: 517, column: 47, scope: !2603)
!2605 = !DILocation(line: 517, column: 18, scope: !2603)
!2606 = !DILocation(line: 521, column: 17, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2348, file: !494, line: 521, column: 15)
!2608 = !DILocation(line: 521, column: 15, scope: !2348)
!2609 = !DILocation(line: 525, column: 11, scope: !2348)
!2610 = !DILocation(line: 537, column: 15, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2348, file: !494, line: 536, column: 15)
!2612 = !DILocation(line: 544, column: 15, scope: !2348)
!2613 = !DILocation(line: 546, column: 19, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !494, line: 545, column: 13)
!2615 = distinct !DILexicalBlock(scope: !2348, file: !494, line: 544, column: 15)
!2616 = !DILocation(line: 549, column: 19, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !494, line: 549, column: 19)
!2618 = !DILocation(line: 549, column: 30, scope: !2617)
!2619 = !DILocation(line: 558, column: 15, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !494, line: 558, column: 15)
!2621 = distinct !DILexicalBlock(scope: !2614, file: !494, line: 558, column: 15)
!2622 = !DILocation(line: 558, column: 15, scope: !2621)
!2623 = !DILocation(line: 559, column: 15, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !494, line: 559, column: 15)
!2625 = distinct !DILexicalBlock(scope: !2614, file: !494, line: 559, column: 15)
!2626 = !DILocation(line: 559, column: 15, scope: !2625)
!2627 = !DILocation(line: 560, column: 15, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !494, line: 560, column: 15)
!2629 = distinct !DILexicalBlock(scope: !2614, file: !494, line: 560, column: 15)
!2630 = !DILocation(line: 560, column: 15, scope: !2629)
!2631 = !DILocation(line: 562, column: 13, scope: !2614)
!2632 = !DILocation(line: 602, column: 17, scope: !2347)
!2633 = !DILocation(line: 0, scope: !2347)
!2634 = !DILocation(line: 605, column: 29, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2352, file: !494, line: 603, column: 15)
!2636 = !DILocation(line: 605, column: 27, scope: !2635)
!2637 = !DILocation(line: 668, column: 40, scope: !2347)
!2638 = !DILocation(line: 670, column: 23, scope: !2368)
!2639 = !DILocation(line: 609, column: 17, scope: !2351)
!2640 = !DILocation(line: 609, column: 27, scope: !2351)
!2641 = !DILocation(line: 0, scope: !2408, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 609, column: 32, scope: !2351)
!2643 = !DILocation(line: 0, scope: !2416, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 1137, column: 3, scope: !2408, inlinedAt: !2642)
!2645 = !DILocation(line: 59, column: 10, scope: !2416, inlinedAt: !2644)
!2646 = !DILocation(line: 613, column: 29, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2351, file: !494, line: 613, column: 21)
!2648 = !DILocation(line: 613, column: 21, scope: !2351)
!2649 = !DILocation(line: 614, column: 29, scope: !2647)
!2650 = !DILocation(line: 614, column: 19, scope: !2647)
!2651 = !DILocation(line: 618, column: 21, scope: !2354)
!2652 = !DILocation(line: 620, column: 54, scope: !2354)
!2653 = !DILocation(line: 0, scope: !2354)
!2654 = !DILocation(line: 619, column: 36, scope: !2354)
!2655 = !DILocation(line: 621, column: 25, scope: !2354)
!2656 = !DILocation(line: 631, column: 38, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2363, file: !494, line: 629, column: 23)
!2658 = !DILocation(line: 631, column: 48, scope: !2657)
!2659 = !DILocation(line: 665, column: 19, scope: !2355)
!2660 = !DILocation(line: 666, column: 15, scope: !2352)
!2661 = !DILocation(line: 626, column: 25, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2364, file: !494, line: 624, column: 23)
!2663 = !DILocation(line: 631, column: 51, scope: !2657)
!2664 = !DILocation(line: 631, column: 25, scope: !2657)
!2665 = !DILocation(line: 632, column: 28, scope: !2657)
!2666 = !DILocation(line: 631, column: 34, scope: !2657)
!2667 = distinct !{!2667, !2664, !2665, !1164}
!2668 = !DILocation(line: 646, column: 29, scope: !2361)
!2669 = !DILocation(line: 0, scope: !2359)
!2670 = !DILocation(line: 649, column: 49, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2359, file: !494, line: 648, column: 29)
!2672 = !DILocation(line: 649, column: 39, scope: !2671)
!2673 = !DILocation(line: 649, column: 31, scope: !2671)
!2674 = !DILocation(line: 648, column: 60, scope: !2671)
!2675 = !DILocation(line: 648, column: 50, scope: !2671)
!2676 = !DILocation(line: 648, column: 29, scope: !2359)
!2677 = distinct !{!2677, !2676, !2678, !1164}
!2678 = !DILocation(line: 654, column: 33, scope: !2359)
!2679 = !DILocation(line: 657, column: 43, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2362, file: !494, line: 657, column: 29)
!2681 = !DILocalVariable(name: "wc", arg: 1, scope: !2682, file: !2683, line: 865, type: !2686)
!2682 = distinct !DISubprogram(name: "c32isprint", scope: !2683, file: !2683, line: 865, type: !2684, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2688)
!2683 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!70, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2687, line: 20, baseType: !63)
!2687 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2688 = !{!2681}
!2689 = !DILocation(line: 0, scope: !2682, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 657, column: 31, scope: !2680)
!2691 = !DILocation(line: 871, column: 10, scope: !2682, inlinedAt: !2690)
!2692 = !DILocation(line: 657, column: 31, scope: !2680)
!2693 = !DILocation(line: 657, column: 29, scope: !2362)
!2694 = !DILocation(line: 664, column: 23, scope: !2354)
!2695 = !DILocation(line: 670, column: 19, scope: !2368)
!2696 = !DILocation(line: 670, column: 45, scope: !2368)
!2697 = !DILocation(line: 674, column: 33, scope: !2367)
!2698 = !DILocation(line: 0, scope: !2367)
!2699 = !DILocation(line: 676, column: 17, scope: !2367)
!2700 = !DILocation(line: 398, column: 12, scope: !2341)
!2701 = !DILocation(line: 678, column: 43, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !494, line: 678, column: 25)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !494, line: 677, column: 19)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !494, line: 676, column: 17)
!2705 = distinct !DILexicalBlock(scope: !2367, file: !494, line: 676, column: 17)
!2706 = !DILocation(line: 680, column: 25, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !494, line: 680, column: 25)
!2708 = distinct !DILexicalBlock(scope: !2702, file: !494, line: 679, column: 23)
!2709 = !DILocation(line: 680, column: 25, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !494, line: 680, column: 25)
!2711 = !DILocation(line: 680, column: 25, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !494, line: 680, column: 25)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !494, line: 680, column: 25)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !494, line: 680, column: 25)
!2715 = !DILocation(line: 680, column: 25, scope: !2713)
!2716 = !DILocation(line: 680, column: 25, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !494, line: 680, column: 25)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !494, line: 680, column: 25)
!2719 = !DILocation(line: 680, column: 25, scope: !2718)
!2720 = !DILocation(line: 680, column: 25, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !494, line: 680, column: 25)
!2722 = distinct !DILexicalBlock(scope: !2714, file: !494, line: 680, column: 25)
!2723 = !DILocation(line: 680, column: 25, scope: !2722)
!2724 = !DILocation(line: 680, column: 25, scope: !2714)
!2725 = !DILocation(line: 680, column: 25, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !494, line: 680, column: 25)
!2727 = distinct !DILexicalBlock(scope: !2707, file: !494, line: 680, column: 25)
!2728 = !DILocation(line: 680, column: 25, scope: !2727)
!2729 = !DILocation(line: 681, column: 25, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !494, line: 681, column: 25)
!2731 = distinct !DILexicalBlock(scope: !2708, file: !494, line: 681, column: 25)
!2732 = !DILocation(line: 681, column: 25, scope: !2731)
!2733 = !DILocation(line: 682, column: 25, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !494, line: 682, column: 25)
!2735 = distinct !DILexicalBlock(scope: !2708, file: !494, line: 682, column: 25)
!2736 = !DILocation(line: 682, column: 25, scope: !2735)
!2737 = !DILocation(line: 683, column: 38, scope: !2708)
!2738 = !DILocation(line: 683, column: 33, scope: !2708)
!2739 = !DILocation(line: 684, column: 23, scope: !2708)
!2740 = !DILocation(line: 685, column: 30, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2702, file: !494, line: 685, column: 30)
!2742 = !DILocation(line: 685, column: 30, scope: !2702)
!2743 = !DILocation(line: 687, column: 25, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !494, line: 687, column: 25)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !494, line: 687, column: 25)
!2746 = distinct !DILexicalBlock(scope: !2741, file: !494, line: 686, column: 23)
!2747 = !DILocation(line: 687, column: 25, scope: !2745)
!2748 = !DILocation(line: 689, column: 23, scope: !2746)
!2749 = !DILocation(line: 690, column: 35, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2703, file: !494, line: 690, column: 25)
!2751 = !DILocation(line: 690, column: 30, scope: !2750)
!2752 = !DILocation(line: 690, column: 25, scope: !2703)
!2753 = !DILocation(line: 692, column: 21, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !494, line: 692, column: 21)
!2755 = distinct !DILexicalBlock(scope: !2703, file: !494, line: 692, column: 21)
!2756 = !DILocation(line: 692, column: 21, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !494, line: 692, column: 21)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !494, line: 692, column: 21)
!2759 = distinct !DILexicalBlock(scope: !2754, file: !494, line: 692, column: 21)
!2760 = !DILocation(line: 692, column: 21, scope: !2758)
!2761 = !DILocation(line: 692, column: 21, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !494, line: 692, column: 21)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !494, line: 692, column: 21)
!2764 = !DILocation(line: 692, column: 21, scope: !2763)
!2765 = !DILocation(line: 692, column: 21, scope: !2759)
!2766 = !DILocation(line: 0, scope: !2703)
!2767 = !DILocation(line: 693, column: 21, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !494, line: 693, column: 21)
!2769 = distinct !DILexicalBlock(scope: !2703, file: !494, line: 693, column: 21)
!2770 = !DILocation(line: 693, column: 21, scope: !2769)
!2771 = !DILocation(line: 694, column: 25, scope: !2703)
!2772 = !DILocation(line: 676, column: 17, scope: !2704)
!2773 = distinct !{!2773, !2774, !2775}
!2774 = !DILocation(line: 676, column: 17, scope: !2705)
!2775 = !DILocation(line: 695, column: 19, scope: !2705)
!2776 = !DILocation(line: 409, column: 30, scope: !2487)
!2777 = !DILocation(line: 702, column: 34, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2341, file: !494, line: 702, column: 11)
!2779 = !DILocation(line: 704, column: 14, scope: !2778)
!2780 = !DILocation(line: 705, column: 14, scope: !2778)
!2781 = !DILocation(line: 705, column: 35, scope: !2778)
!2782 = !DILocation(line: 705, column: 17, scope: !2778)
!2783 = !DILocation(line: 705, column: 47, scope: !2778)
!2784 = !DILocation(line: 705, column: 65, scope: !2778)
!2785 = !DILocation(line: 706, column: 11, scope: !2778)
!2786 = !DILocation(line: 702, column: 11, scope: !2341)
!2787 = !DILocation(line: 395, column: 15, scope: !2339)
!2788 = !DILocation(line: 709, column: 5, scope: !2341)
!2789 = !DILocation(line: 710, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2341, file: !494, line: 710, column: 7)
!2791 = !DILocation(line: 710, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2790, file: !494, line: 710, column: 7)
!2793 = !DILocation(line: 710, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !494, line: 710, column: 7)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !494, line: 710, column: 7)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !494, line: 710, column: 7)
!2797 = !DILocation(line: 710, column: 7, scope: !2795)
!2798 = !DILocation(line: 710, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !494, line: 710, column: 7)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !494, line: 710, column: 7)
!2801 = !DILocation(line: 710, column: 7, scope: !2800)
!2802 = !DILocation(line: 710, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !494, line: 710, column: 7)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !494, line: 710, column: 7)
!2805 = !DILocation(line: 710, column: 7, scope: !2804)
!2806 = !DILocation(line: 710, column: 7, scope: !2796)
!2807 = !DILocation(line: 710, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !494, line: 710, column: 7)
!2809 = distinct !DILexicalBlock(scope: !2790, file: !494, line: 710, column: 7)
!2810 = !DILocation(line: 710, column: 7, scope: !2809)
!2811 = !DILocation(line: 712, column: 5, scope: !2341)
!2812 = !DILocation(line: 713, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !494, line: 713, column: 7)
!2814 = distinct !DILexicalBlock(scope: !2341, file: !494, line: 713, column: 7)
!2815 = !DILocation(line: 417, column: 21, scope: !2341)
!2816 = !DILocation(line: 713, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !494, line: 713, column: 7)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !494, line: 713, column: 7)
!2819 = distinct !DILexicalBlock(scope: !2813, file: !494, line: 713, column: 7)
!2820 = !DILocation(line: 713, column: 7, scope: !2818)
!2821 = !DILocation(line: 713, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !494, line: 713, column: 7)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !494, line: 713, column: 7)
!2824 = !DILocation(line: 713, column: 7, scope: !2823)
!2825 = !DILocation(line: 713, column: 7, scope: !2819)
!2826 = !DILocation(line: 714, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !494, line: 714, column: 7)
!2828 = distinct !DILexicalBlock(scope: !2341, file: !494, line: 714, column: 7)
!2829 = !DILocation(line: 714, column: 7, scope: !2828)
!2830 = !DILocation(line: 716, column: 13, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2341, file: !494, line: 716, column: 11)
!2832 = !DILocation(line: 716, column: 11, scope: !2341)
!2833 = !DILocation(line: 718, column: 5, scope: !2342)
!2834 = !DILocation(line: 395, column: 82, scope: !2342)
!2835 = !DILocation(line: 395, column: 3, scope: !2342)
!2836 = distinct !{!2836, !2483, !2837, !1164}
!2837 = !DILocation(line: 718, column: 5, scope: !2339)
!2838 = !DILocation(line: 720, column: 11, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2308, file: !494, line: 720, column: 7)
!2840 = !DILocation(line: 720, column: 16, scope: !2839)
!2841 = !DILocation(line: 728, column: 51, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2308, file: !494, line: 728, column: 7)
!2843 = !DILocation(line: 731, column: 11, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !494, line: 731, column: 11)
!2845 = distinct !DILexicalBlock(scope: !2842, file: !494, line: 730, column: 5)
!2846 = !DILocation(line: 731, column: 11, scope: !2845)
!2847 = !DILocation(line: 732, column: 16, scope: !2844)
!2848 = !DILocation(line: 732, column: 9, scope: !2844)
!2849 = !DILocation(line: 736, column: 18, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2844, file: !494, line: 736, column: 16)
!2851 = !DILocation(line: 736, column: 29, scope: !2850)
!2852 = !DILocation(line: 745, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2308, file: !494, line: 745, column: 7)
!2854 = !DILocation(line: 745, column: 20, scope: !2853)
!2855 = !DILocation(line: 746, column: 12, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !494, line: 746, column: 5)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !494, line: 746, column: 5)
!2858 = !DILocation(line: 746, column: 5, scope: !2857)
!2859 = !DILocation(line: 747, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !494, line: 747, column: 7)
!2861 = distinct !DILexicalBlock(scope: !2856, file: !494, line: 747, column: 7)
!2862 = !DILocation(line: 747, column: 7, scope: !2861)
!2863 = !DILocation(line: 746, column: 39, scope: !2856)
!2864 = distinct !{!2864, !2858, !2865, !1164}
!2865 = !DILocation(line: 747, column: 7, scope: !2857)
!2866 = !DILocation(line: 749, column: 11, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2308, file: !494, line: 749, column: 7)
!2868 = !DILocation(line: 749, column: 7, scope: !2308)
!2869 = !DILocation(line: 750, column: 5, scope: !2867)
!2870 = !DILocation(line: 750, column: 17, scope: !2867)
!2871 = !DILocation(line: 753, column: 2, scope: !2308)
!2872 = !DILocation(line: 756, column: 51, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2308, file: !494, line: 756, column: 7)
!2874 = !DILocation(line: 756, column: 21, scope: !2873)
!2875 = !DILocation(line: 760, column: 42, scope: !2308)
!2876 = !DILocation(line: 758, column: 10, scope: !2308)
!2877 = !DILocation(line: 758, column: 3, scope: !2308)
!2878 = !DILocation(line: 762, column: 1, scope: !2308)
!2879 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1242, file: !1242, line: 98, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!104}
!2882 = !DISubprogram(name: "strlen", scope: !1238, file: !1238, line: 407, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2883 = !DISubprogram(name: "iswprint", scope: !2884, file: !2884, line: 120, type: !2684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2884 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2885 = distinct !DISubprogram(name: "quotearg_alloc", scope: !494, file: !494, line: 788, type: !2886, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!101, !107, !104, !2201}
!2888 = !{!2889, !2890, !2891}
!2889 = !DILocalVariable(name: "arg", arg: 1, scope: !2885, file: !494, line: 788, type: !107)
!2890 = !DILocalVariable(name: "argsize", arg: 2, scope: !2885, file: !494, line: 788, type: !104)
!2891 = !DILocalVariable(name: "o", arg: 3, scope: !2885, file: !494, line: 789, type: !2201)
!2892 = !DILocation(line: 0, scope: !2885)
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !494, line: 801, type: !107)
!2894 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !494, file: !494, line: 801, type: !2895, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!101, !107, !104, !967, !2201}
!2897 = !{!2893, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905}
!2898 = !DILocalVariable(name: "argsize", arg: 2, scope: !2894, file: !494, line: 801, type: !104)
!2899 = !DILocalVariable(name: "size", arg: 3, scope: !2894, file: !494, line: 801, type: !967)
!2900 = !DILocalVariable(name: "o", arg: 4, scope: !2894, file: !494, line: 802, type: !2201)
!2901 = !DILocalVariable(name: "p", scope: !2894, file: !494, line: 804, type: !2201)
!2902 = !DILocalVariable(name: "saved_errno", scope: !2894, file: !494, line: 805, type: !70)
!2903 = !DILocalVariable(name: "flags", scope: !2894, file: !494, line: 807, type: !70)
!2904 = !DILocalVariable(name: "bufsize", scope: !2894, file: !494, line: 808, type: !104)
!2905 = !DILocalVariable(name: "buf", scope: !2894, file: !494, line: 812, type: !101)
!2906 = !DILocation(line: 0, scope: !2894, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 791, column: 10, scope: !2885)
!2908 = !DILocation(line: 804, column: 37, scope: !2894, inlinedAt: !2907)
!2909 = !DILocation(line: 805, column: 21, scope: !2894, inlinedAt: !2907)
!2910 = !DILocation(line: 807, column: 18, scope: !2894, inlinedAt: !2907)
!2911 = !DILocation(line: 807, column: 24, scope: !2894, inlinedAt: !2907)
!2912 = !DILocation(line: 808, column: 72, scope: !2894, inlinedAt: !2907)
!2913 = !DILocation(line: 809, column: 56, scope: !2894, inlinedAt: !2907)
!2914 = !DILocation(line: 810, column: 49, scope: !2894, inlinedAt: !2907)
!2915 = !DILocation(line: 811, column: 49, scope: !2894, inlinedAt: !2907)
!2916 = !DILocation(line: 808, column: 20, scope: !2894, inlinedAt: !2907)
!2917 = !DILocation(line: 811, column: 62, scope: !2894, inlinedAt: !2907)
!2918 = !DILocation(line: 812, column: 15, scope: !2894, inlinedAt: !2907)
!2919 = !DILocation(line: 813, column: 60, scope: !2894, inlinedAt: !2907)
!2920 = !DILocation(line: 815, column: 32, scope: !2894, inlinedAt: !2907)
!2921 = !DILocation(line: 815, column: 47, scope: !2894, inlinedAt: !2907)
!2922 = !DILocation(line: 813, column: 3, scope: !2894, inlinedAt: !2907)
!2923 = !DILocation(line: 816, column: 9, scope: !2894, inlinedAt: !2907)
!2924 = !DILocation(line: 791, column: 3, scope: !2885)
!2925 = !DILocation(line: 0, scope: !2894)
!2926 = !DILocation(line: 804, column: 37, scope: !2894)
!2927 = !DILocation(line: 805, column: 21, scope: !2894)
!2928 = !DILocation(line: 807, column: 18, scope: !2894)
!2929 = !DILocation(line: 807, column: 27, scope: !2894)
!2930 = !DILocation(line: 807, column: 24, scope: !2894)
!2931 = !DILocation(line: 808, column: 72, scope: !2894)
!2932 = !DILocation(line: 809, column: 56, scope: !2894)
!2933 = !DILocation(line: 810, column: 49, scope: !2894)
!2934 = !DILocation(line: 811, column: 49, scope: !2894)
!2935 = !DILocation(line: 808, column: 20, scope: !2894)
!2936 = !DILocation(line: 811, column: 62, scope: !2894)
!2937 = !DILocation(line: 812, column: 15, scope: !2894)
!2938 = !DILocation(line: 813, column: 60, scope: !2894)
!2939 = !DILocation(line: 815, column: 32, scope: !2894)
!2940 = !DILocation(line: 815, column: 47, scope: !2894)
!2941 = !DILocation(line: 813, column: 3, scope: !2894)
!2942 = !DILocation(line: 816, column: 9, scope: !2894)
!2943 = !DILocation(line: 817, column: 7, scope: !2894)
!2944 = !DILocation(line: 818, column: 11, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2894, file: !494, line: 817, column: 7)
!2946 = !DILocation(line: 818, column: 5, scope: !2945)
!2947 = !DILocation(line: 819, column: 3, scope: !2894)
!2948 = distinct !DISubprogram(name: "quotearg_free", scope: !494, file: !494, line: 837, type: !418, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2949)
!2949 = !{!2950, !2951}
!2950 = !DILocalVariable(name: "sv", scope: !2948, file: !494, line: 839, type: !592)
!2951 = !DILocalVariable(name: "i", scope: !2952, file: !494, line: 840, type: !70)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !494, line: 840, column: 3)
!2953 = !DILocation(line: 839, column: 24, scope: !2948)
!2954 = !DILocation(line: 0, scope: !2948)
!2955 = !DILocation(line: 0, scope: !2952)
!2956 = !DILocation(line: 840, column: 21, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2952, file: !494, line: 840, column: 3)
!2958 = !DILocation(line: 840, column: 3, scope: !2952)
!2959 = !DILocation(line: 842, column: 13, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2948, file: !494, line: 842, column: 7)
!2961 = !{!2962, !1055, i64 8}
!2962 = !{!"slotvec", !1509, i64 0, !1055, i64 8}
!2963 = !DILocation(line: 842, column: 17, scope: !2960)
!2964 = !DILocation(line: 842, column: 7, scope: !2948)
!2965 = !DILocation(line: 841, column: 17, scope: !2957)
!2966 = !DILocation(line: 841, column: 5, scope: !2957)
!2967 = !DILocation(line: 840, column: 32, scope: !2957)
!2968 = distinct !{!2968, !2958, !2969, !1164}
!2969 = !DILocation(line: 841, column: 20, scope: !2952)
!2970 = !DILocation(line: 844, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2960, file: !494, line: 843, column: 5)
!2972 = !DILocation(line: 845, column: 21, scope: !2971)
!2973 = !{!2962, !1509, i64 0}
!2974 = !DILocation(line: 846, column: 20, scope: !2971)
!2975 = !DILocation(line: 847, column: 5, scope: !2971)
!2976 = !DILocation(line: 848, column: 10, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2948, file: !494, line: 848, column: 7)
!2978 = !DILocation(line: 848, column: 7, scope: !2948)
!2979 = !DILocation(line: 850, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !494, line: 849, column: 5)
!2981 = !DILocation(line: 851, column: 15, scope: !2980)
!2982 = !DILocation(line: 852, column: 5, scope: !2980)
!2983 = !DILocation(line: 853, column: 10, scope: !2948)
!2984 = !DILocation(line: 854, column: 1, scope: !2948)
!2985 = distinct !DISubprogram(name: "quotearg_n", scope: !494, file: !494, line: 919, type: !1235, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2986)
!2986 = !{!2987, !2988}
!2987 = !DILocalVariable(name: "n", arg: 1, scope: !2985, file: !494, line: 919, type: !70)
!2988 = !DILocalVariable(name: "arg", arg: 2, scope: !2985, file: !494, line: 919, type: !107)
!2989 = !DILocation(line: 0, scope: !2985)
!2990 = !DILocation(line: 921, column: 10, scope: !2985)
!2991 = !DILocation(line: 921, column: 3, scope: !2985)
!2992 = distinct !DISubprogram(name: "quotearg_n_options", scope: !494, file: !494, line: 866, type: !2993, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!101, !70, !107, !104, !2201}
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3006, !3007, !3009, !3010, !3011}
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2992, file: !494, line: 866, type: !70)
!2997 = !DILocalVariable(name: "arg", arg: 2, scope: !2992, file: !494, line: 866, type: !107)
!2998 = !DILocalVariable(name: "argsize", arg: 3, scope: !2992, file: !494, line: 866, type: !104)
!2999 = !DILocalVariable(name: "options", arg: 4, scope: !2992, file: !494, line: 867, type: !2201)
!3000 = !DILocalVariable(name: "saved_errno", scope: !2992, file: !494, line: 869, type: !70)
!3001 = !DILocalVariable(name: "sv", scope: !2992, file: !494, line: 871, type: !592)
!3002 = !DILocalVariable(name: "nslots_max", scope: !2992, file: !494, line: 873, type: !70)
!3003 = !DILocalVariable(name: "preallocated", scope: !3004, file: !494, line: 879, type: !148)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !494, line: 878, column: 5)
!3005 = distinct !DILexicalBlock(scope: !2992, file: !494, line: 877, column: 7)
!3006 = !DILocalVariable(name: "new_nslots", scope: !3004, file: !494, line: 880, type: !980)
!3007 = !DILocalVariable(name: "size", scope: !3008, file: !494, line: 891, type: !104)
!3008 = distinct !DILexicalBlock(scope: !2992, file: !494, line: 890, column: 3)
!3009 = !DILocalVariable(name: "val", scope: !3008, file: !494, line: 892, type: !101)
!3010 = !DILocalVariable(name: "flags", scope: !3008, file: !494, line: 894, type: !70)
!3011 = !DILocalVariable(name: "qsize", scope: !3008, file: !494, line: 895, type: !104)
!3012 = !DILocation(line: 0, scope: !2992)
!3013 = !DILocation(line: 869, column: 21, scope: !2992)
!3014 = !DILocation(line: 871, column: 24, scope: !2992)
!3015 = !DILocation(line: 874, column: 17, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2992, file: !494, line: 874, column: 7)
!3017 = !DILocation(line: 875, column: 5, scope: !3016)
!3018 = !DILocation(line: 877, column: 7, scope: !3005)
!3019 = !DILocation(line: 877, column: 14, scope: !3005)
!3020 = !DILocation(line: 877, column: 7, scope: !2992)
!3021 = !DILocation(line: 879, column: 31, scope: !3004)
!3022 = !DILocation(line: 0, scope: !3004)
!3023 = !DILocation(line: 880, column: 7, scope: !3004)
!3024 = !DILocation(line: 880, column: 26, scope: !3004)
!3025 = !DILocation(line: 880, column: 13, scope: !3004)
!3026 = !DILocation(line: 882, column: 31, scope: !3004)
!3027 = !DILocation(line: 883, column: 33, scope: !3004)
!3028 = !DILocation(line: 883, column: 42, scope: !3004)
!3029 = !DILocation(line: 883, column: 31, scope: !3004)
!3030 = !DILocation(line: 882, column: 22, scope: !3004)
!3031 = !DILocation(line: 882, column: 15, scope: !3004)
!3032 = !DILocation(line: 884, column: 11, scope: !3004)
!3033 = !DILocation(line: 885, column: 15, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3004, file: !494, line: 884, column: 11)
!3035 = !{i64 0, i64 8, !1802, i64 8, i64 8, !1054}
!3036 = !DILocation(line: 885, column: 9, scope: !3034)
!3037 = !DILocation(line: 886, column: 20, scope: !3004)
!3038 = !DILocation(line: 886, column: 18, scope: !3004)
!3039 = !DILocation(line: 886, column: 32, scope: !3004)
!3040 = !DILocation(line: 886, column: 43, scope: !3004)
!3041 = !DILocation(line: 886, column: 53, scope: !3004)
!3042 = !DILocation(line: 0, scope: !2416, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 886, column: 7, scope: !3004)
!3044 = !DILocation(line: 59, column: 10, scope: !2416, inlinedAt: !3043)
!3045 = !DILocation(line: 887, column: 16, scope: !3004)
!3046 = !DILocation(line: 887, column: 14, scope: !3004)
!3047 = !DILocation(line: 888, column: 5, scope: !3005)
!3048 = !DILocation(line: 888, column: 5, scope: !3004)
!3049 = !DILocation(line: 891, column: 19, scope: !3008)
!3050 = !DILocation(line: 891, column: 25, scope: !3008)
!3051 = !DILocation(line: 0, scope: !3008)
!3052 = !DILocation(line: 892, column: 23, scope: !3008)
!3053 = !DILocation(line: 894, column: 26, scope: !3008)
!3054 = !DILocation(line: 894, column: 32, scope: !3008)
!3055 = !DILocation(line: 896, column: 55, scope: !3008)
!3056 = !DILocation(line: 897, column: 55, scope: !3008)
!3057 = !DILocation(line: 898, column: 55, scope: !3008)
!3058 = !DILocation(line: 899, column: 55, scope: !3008)
!3059 = !DILocation(line: 895, column: 20, scope: !3008)
!3060 = !DILocation(line: 901, column: 14, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3008, file: !494, line: 901, column: 9)
!3062 = !DILocation(line: 901, column: 9, scope: !3008)
!3063 = !DILocation(line: 903, column: 35, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3061, file: !494, line: 902, column: 7)
!3065 = !DILocation(line: 903, column: 20, scope: !3064)
!3066 = !DILocation(line: 904, column: 17, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3064, file: !494, line: 904, column: 13)
!3068 = !DILocation(line: 904, column: 13, scope: !3064)
!3069 = !DILocation(line: 905, column: 11, scope: !3067)
!3070 = !DILocation(line: 906, column: 27, scope: !3064)
!3071 = !DILocation(line: 906, column: 19, scope: !3064)
!3072 = !DILocation(line: 907, column: 69, scope: !3064)
!3073 = !DILocation(line: 909, column: 44, scope: !3064)
!3074 = !DILocation(line: 910, column: 44, scope: !3064)
!3075 = !DILocation(line: 907, column: 9, scope: !3064)
!3076 = !DILocation(line: 911, column: 7, scope: !3064)
!3077 = !DILocation(line: 913, column: 11, scope: !3008)
!3078 = !DILocation(line: 914, column: 5, scope: !3008)
!3079 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !494, file: !494, line: 925, type: !3080, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!101, !70, !107, !104}
!3082 = !{!3083, !3084, !3085}
!3083 = !DILocalVariable(name: "n", arg: 1, scope: !3079, file: !494, line: 925, type: !70)
!3084 = !DILocalVariable(name: "arg", arg: 2, scope: !3079, file: !494, line: 925, type: !107)
!3085 = !DILocalVariable(name: "argsize", arg: 3, scope: !3079, file: !494, line: 925, type: !104)
!3086 = !DILocation(line: 0, scope: !3079)
!3087 = !DILocation(line: 927, column: 10, scope: !3079)
!3088 = !DILocation(line: 927, column: 3, scope: !3079)
!3089 = distinct !DISubprogram(name: "quotearg", scope: !494, file: !494, line: 931, type: !1244, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3090)
!3090 = !{!3091}
!3091 = !DILocalVariable(name: "arg", arg: 1, scope: !3089, file: !494, line: 931, type: !107)
!3092 = !DILocation(line: 0, scope: !3089)
!3093 = !DILocation(line: 0, scope: !2985, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 933, column: 10, scope: !3089)
!3095 = !DILocation(line: 921, column: 10, scope: !2985, inlinedAt: !3094)
!3096 = !DILocation(line: 933, column: 3, scope: !3089)
!3097 = distinct !DISubprogram(name: "quotearg_mem", scope: !494, file: !494, line: 937, type: !3098, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!101, !107, !104}
!3100 = !{!3101, !3102}
!3101 = !DILocalVariable(name: "arg", arg: 1, scope: !3097, file: !494, line: 937, type: !107)
!3102 = !DILocalVariable(name: "argsize", arg: 2, scope: !3097, file: !494, line: 937, type: !104)
!3103 = !DILocation(line: 0, scope: !3097)
!3104 = !DILocation(line: 0, scope: !3079, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 939, column: 10, scope: !3097)
!3106 = !DILocation(line: 927, column: 10, scope: !3079, inlinedAt: !3105)
!3107 = !DILocation(line: 939, column: 3, scope: !3097)
!3108 = distinct !DISubprogram(name: "quotearg_n_style", scope: !494, file: !494, line: 943, type: !3109, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!101, !70, !517, !107}
!3111 = !{!3112, !3113, !3114, !3115}
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !494, line: 943, type: !70)
!3113 = !DILocalVariable(name: "s", arg: 2, scope: !3108, file: !494, line: 943, type: !517)
!3114 = !DILocalVariable(name: "arg", arg: 3, scope: !3108, file: !494, line: 943, type: !107)
!3115 = !DILocalVariable(name: "o", scope: !3108, file: !494, line: 945, type: !2202)
!3116 = !DILocation(line: 0, scope: !3108)
!3117 = !DILocation(line: 945, column: 3, scope: !3108)
!3118 = !DILocation(line: 945, column: 32, scope: !3108)
!3119 = !{!3120}
!3120 = distinct !{!3120, !3121, !"quoting_options_from_style: argument 0"}
!3121 = distinct !{!3121, !"quoting_options_from_style"}
!3122 = !DILocation(line: 945, column: 36, scope: !3108)
!3123 = !DILocalVariable(name: "style", arg: 1, scope: !3124, file: !494, line: 183, type: !517)
!3124 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !494, file: !494, line: 183, type: !3125, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!544, !517}
!3127 = !{!3123, !3128}
!3128 = !DILocalVariable(name: "o", scope: !3124, file: !494, line: 185, type: !544)
!3129 = !DILocation(line: 0, scope: !3124, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 945, column: 36, scope: !3108)
!3131 = !DILocation(line: 185, column: 26, scope: !3124, inlinedAt: !3130)
!3132 = !DILocation(line: 186, column: 13, scope: !3133, inlinedAt: !3130)
!3133 = distinct !DILexicalBlock(scope: !3124, file: !494, line: 186, column: 7)
!3134 = !DILocation(line: 186, column: 7, scope: !3124, inlinedAt: !3130)
!3135 = !DILocation(line: 187, column: 5, scope: !3133, inlinedAt: !3130)
!3136 = !DILocation(line: 188, column: 11, scope: !3124, inlinedAt: !3130)
!3137 = !DILocation(line: 946, column: 10, scope: !3108)
!3138 = !DILocation(line: 947, column: 1, scope: !3108)
!3139 = !DILocation(line: 946, column: 3, scope: !3108)
!3140 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !494, file: !494, line: 950, type: !3141, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!101, !70, !517, !107, !104}
!3143 = !{!3144, !3145, !3146, !3147, !3148}
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3140, file: !494, line: 950, type: !70)
!3145 = !DILocalVariable(name: "s", arg: 2, scope: !3140, file: !494, line: 950, type: !517)
!3146 = !DILocalVariable(name: "arg", arg: 3, scope: !3140, file: !494, line: 951, type: !107)
!3147 = !DILocalVariable(name: "argsize", arg: 4, scope: !3140, file: !494, line: 951, type: !104)
!3148 = !DILocalVariable(name: "o", scope: !3140, file: !494, line: 953, type: !2202)
!3149 = !DILocation(line: 0, scope: !3140)
!3150 = !DILocation(line: 953, column: 3, scope: !3140)
!3151 = !DILocation(line: 953, column: 32, scope: !3140)
!3152 = !{!3153}
!3153 = distinct !{!3153, !3154, !"quoting_options_from_style: argument 0"}
!3154 = distinct !{!3154, !"quoting_options_from_style"}
!3155 = !DILocation(line: 953, column: 36, scope: !3140)
!3156 = !DILocation(line: 0, scope: !3124, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 953, column: 36, scope: !3140)
!3158 = !DILocation(line: 185, column: 26, scope: !3124, inlinedAt: !3157)
!3159 = !DILocation(line: 186, column: 13, scope: !3133, inlinedAt: !3157)
!3160 = !DILocation(line: 186, column: 7, scope: !3124, inlinedAt: !3157)
!3161 = !DILocation(line: 187, column: 5, scope: !3133, inlinedAt: !3157)
!3162 = !DILocation(line: 188, column: 11, scope: !3124, inlinedAt: !3157)
!3163 = !DILocation(line: 954, column: 10, scope: !3140)
!3164 = !DILocation(line: 955, column: 1, scope: !3140)
!3165 = !DILocation(line: 954, column: 3, scope: !3140)
!3166 = distinct !DISubprogram(name: "quotearg_style", scope: !494, file: !494, line: 958, type: !3167, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!101, !517, !107}
!3169 = !{!3170, !3171}
!3170 = !DILocalVariable(name: "s", arg: 1, scope: !3166, file: !494, line: 958, type: !517)
!3171 = !DILocalVariable(name: "arg", arg: 2, scope: !3166, file: !494, line: 958, type: !107)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 0, scope: !3108, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 960, column: 10, scope: !3166)
!3175 = !DILocation(line: 945, column: 3, scope: !3108, inlinedAt: !3174)
!3176 = !DILocation(line: 945, column: 32, scope: !3108, inlinedAt: !3174)
!3177 = !{!3178}
!3178 = distinct !{!3178, !3179, !"quoting_options_from_style: argument 0"}
!3179 = distinct !{!3179, !"quoting_options_from_style"}
!3180 = !DILocation(line: 945, column: 36, scope: !3108, inlinedAt: !3174)
!3181 = !DILocation(line: 0, scope: !3124, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 945, column: 36, scope: !3108, inlinedAt: !3174)
!3183 = !DILocation(line: 185, column: 26, scope: !3124, inlinedAt: !3182)
!3184 = !DILocation(line: 186, column: 13, scope: !3133, inlinedAt: !3182)
!3185 = !DILocation(line: 186, column: 7, scope: !3124, inlinedAt: !3182)
!3186 = !DILocation(line: 187, column: 5, scope: !3133, inlinedAt: !3182)
!3187 = !DILocation(line: 188, column: 11, scope: !3124, inlinedAt: !3182)
!3188 = !DILocation(line: 946, column: 10, scope: !3108, inlinedAt: !3174)
!3189 = !DILocation(line: 947, column: 1, scope: !3108, inlinedAt: !3174)
!3190 = !DILocation(line: 960, column: 3, scope: !3166)
!3191 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !494, file: !494, line: 964, type: !3192, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!101, !517, !107, !104}
!3194 = !{!3195, !3196, !3197}
!3195 = !DILocalVariable(name: "s", arg: 1, scope: !3191, file: !494, line: 964, type: !517)
!3196 = !DILocalVariable(name: "arg", arg: 2, scope: !3191, file: !494, line: 964, type: !107)
!3197 = !DILocalVariable(name: "argsize", arg: 3, scope: !3191, file: !494, line: 964, type: !104)
!3198 = !DILocation(line: 0, scope: !3191)
!3199 = !DILocation(line: 0, scope: !3140, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 966, column: 10, scope: !3191)
!3201 = !DILocation(line: 953, column: 3, scope: !3140, inlinedAt: !3200)
!3202 = !DILocation(line: 953, column: 32, scope: !3140, inlinedAt: !3200)
!3203 = !{!3204}
!3204 = distinct !{!3204, !3205, !"quoting_options_from_style: argument 0"}
!3205 = distinct !{!3205, !"quoting_options_from_style"}
!3206 = !DILocation(line: 953, column: 36, scope: !3140, inlinedAt: !3200)
!3207 = !DILocation(line: 0, scope: !3124, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 953, column: 36, scope: !3140, inlinedAt: !3200)
!3209 = !DILocation(line: 185, column: 26, scope: !3124, inlinedAt: !3208)
!3210 = !DILocation(line: 186, column: 13, scope: !3133, inlinedAt: !3208)
!3211 = !DILocation(line: 186, column: 7, scope: !3124, inlinedAt: !3208)
!3212 = !DILocation(line: 187, column: 5, scope: !3133, inlinedAt: !3208)
!3213 = !DILocation(line: 188, column: 11, scope: !3124, inlinedAt: !3208)
!3214 = !DILocation(line: 954, column: 10, scope: !3140, inlinedAt: !3200)
!3215 = !DILocation(line: 955, column: 1, scope: !3140, inlinedAt: !3200)
!3216 = !DILocation(line: 966, column: 3, scope: !3191)
!3217 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !494, file: !494, line: 970, type: !3218, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!101, !107, !104, !4}
!3220 = !{!3221, !3222, !3223, !3224}
!3221 = !DILocalVariable(name: "arg", arg: 1, scope: !3217, file: !494, line: 970, type: !107)
!3222 = !DILocalVariable(name: "argsize", arg: 2, scope: !3217, file: !494, line: 970, type: !104)
!3223 = !DILocalVariable(name: "ch", arg: 3, scope: !3217, file: !494, line: 970, type: !4)
!3224 = !DILocalVariable(name: "options", scope: !3217, file: !494, line: 972, type: !544)
!3225 = !DILocation(line: 0, scope: !3217)
!3226 = !DILocation(line: 972, column: 3, scope: !3217)
!3227 = !DILocation(line: 972, column: 26, scope: !3217)
!3228 = !DILocation(line: 973, column: 13, scope: !3217)
!3229 = !{i64 0, i64 4, !1126, i64 4, i64 4, !1117, i64 8, i64 32, !1126, i64 40, i64 8, !1054, i64 48, i64 8, !1054}
!3230 = !DILocation(line: 0, scope: !2221, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 974, column: 3, scope: !3217)
!3232 = !DILocation(line: 147, column: 41, scope: !2221, inlinedAt: !3231)
!3233 = !DILocation(line: 147, column: 62, scope: !2221, inlinedAt: !3231)
!3234 = !DILocation(line: 147, column: 57, scope: !2221, inlinedAt: !3231)
!3235 = !DILocation(line: 148, column: 15, scope: !2221, inlinedAt: !3231)
!3236 = !DILocation(line: 149, column: 21, scope: !2221, inlinedAt: !3231)
!3237 = !DILocation(line: 149, column: 24, scope: !2221, inlinedAt: !3231)
!3238 = !DILocation(line: 150, column: 19, scope: !2221, inlinedAt: !3231)
!3239 = !DILocation(line: 150, column: 24, scope: !2221, inlinedAt: !3231)
!3240 = !DILocation(line: 150, column: 6, scope: !2221, inlinedAt: !3231)
!3241 = !DILocation(line: 975, column: 10, scope: !3217)
!3242 = !DILocation(line: 976, column: 1, scope: !3217)
!3243 = !DILocation(line: 975, column: 3, scope: !3217)
!3244 = distinct !DISubprogram(name: "quotearg_char", scope: !494, file: !494, line: 979, type: !3245, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!101, !107, !4}
!3247 = !{!3248, !3249}
!3248 = !DILocalVariable(name: "arg", arg: 1, scope: !3244, file: !494, line: 979, type: !107)
!3249 = !DILocalVariable(name: "ch", arg: 2, scope: !3244, file: !494, line: 979, type: !4)
!3250 = !DILocation(line: 0, scope: !3244)
!3251 = !DILocation(line: 0, scope: !3217, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 981, column: 10, scope: !3244)
!3253 = !DILocation(line: 972, column: 3, scope: !3217, inlinedAt: !3252)
!3254 = !DILocation(line: 972, column: 26, scope: !3217, inlinedAt: !3252)
!3255 = !DILocation(line: 973, column: 13, scope: !3217, inlinedAt: !3252)
!3256 = !DILocation(line: 0, scope: !2221, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 974, column: 3, scope: !3217, inlinedAt: !3252)
!3258 = !DILocation(line: 147, column: 41, scope: !2221, inlinedAt: !3257)
!3259 = !DILocation(line: 147, column: 62, scope: !2221, inlinedAt: !3257)
!3260 = !DILocation(line: 147, column: 57, scope: !2221, inlinedAt: !3257)
!3261 = !DILocation(line: 148, column: 15, scope: !2221, inlinedAt: !3257)
!3262 = !DILocation(line: 149, column: 21, scope: !2221, inlinedAt: !3257)
!3263 = !DILocation(line: 149, column: 24, scope: !2221, inlinedAt: !3257)
!3264 = !DILocation(line: 150, column: 19, scope: !2221, inlinedAt: !3257)
!3265 = !DILocation(line: 150, column: 24, scope: !2221, inlinedAt: !3257)
!3266 = !DILocation(line: 150, column: 6, scope: !2221, inlinedAt: !3257)
!3267 = !DILocation(line: 975, column: 10, scope: !3217, inlinedAt: !3252)
!3268 = !DILocation(line: 976, column: 1, scope: !3217, inlinedAt: !3252)
!3269 = !DILocation(line: 981, column: 3, scope: !3244)
!3270 = distinct !DISubprogram(name: "quotearg_colon", scope: !494, file: !494, line: 985, type: !1244, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3271)
!3271 = !{!3272}
!3272 = !DILocalVariable(name: "arg", arg: 1, scope: !3270, file: !494, line: 985, type: !107)
!3273 = !DILocation(line: 0, scope: !3270)
!3274 = !DILocation(line: 0, scope: !3244, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 987, column: 10, scope: !3270)
!3276 = !DILocation(line: 0, scope: !3217, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 981, column: 10, scope: !3244, inlinedAt: !3275)
!3278 = !DILocation(line: 972, column: 3, scope: !3217, inlinedAt: !3277)
!3279 = !DILocation(line: 972, column: 26, scope: !3217, inlinedAt: !3277)
!3280 = !DILocation(line: 973, column: 13, scope: !3217, inlinedAt: !3277)
!3281 = !DILocation(line: 0, scope: !2221, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 974, column: 3, scope: !3217, inlinedAt: !3277)
!3283 = !DILocation(line: 147, column: 57, scope: !2221, inlinedAt: !3282)
!3284 = !DILocation(line: 149, column: 21, scope: !2221, inlinedAt: !3282)
!3285 = !DILocation(line: 150, column: 6, scope: !2221, inlinedAt: !3282)
!3286 = !DILocation(line: 975, column: 10, scope: !3217, inlinedAt: !3277)
!3287 = !DILocation(line: 976, column: 1, scope: !3217, inlinedAt: !3277)
!3288 = !DILocation(line: 987, column: 3, scope: !3270)
!3289 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !494, file: !494, line: 991, type: !3098, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3290)
!3290 = !{!3291, !3292}
!3291 = !DILocalVariable(name: "arg", arg: 1, scope: !3289, file: !494, line: 991, type: !107)
!3292 = !DILocalVariable(name: "argsize", arg: 2, scope: !3289, file: !494, line: 991, type: !104)
!3293 = !DILocation(line: 0, scope: !3289)
!3294 = !DILocation(line: 0, scope: !3217, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 993, column: 10, scope: !3289)
!3296 = !DILocation(line: 972, column: 3, scope: !3217, inlinedAt: !3295)
!3297 = !DILocation(line: 972, column: 26, scope: !3217, inlinedAt: !3295)
!3298 = !DILocation(line: 973, column: 13, scope: !3217, inlinedAt: !3295)
!3299 = !DILocation(line: 0, scope: !2221, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 974, column: 3, scope: !3217, inlinedAt: !3295)
!3301 = !DILocation(line: 147, column: 57, scope: !2221, inlinedAt: !3300)
!3302 = !DILocation(line: 149, column: 21, scope: !2221, inlinedAt: !3300)
!3303 = !DILocation(line: 150, column: 6, scope: !2221, inlinedAt: !3300)
!3304 = !DILocation(line: 975, column: 10, scope: !3217, inlinedAt: !3295)
!3305 = !DILocation(line: 976, column: 1, scope: !3217, inlinedAt: !3295)
!3306 = !DILocation(line: 993, column: 3, scope: !3289)
!3307 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !494, file: !494, line: 997, type: !3109, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3308)
!3308 = !{!3309, !3310, !3311, !3312}
!3309 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !494, line: 997, type: !70)
!3310 = !DILocalVariable(name: "s", arg: 2, scope: !3307, file: !494, line: 997, type: !517)
!3311 = !DILocalVariable(name: "arg", arg: 3, scope: !3307, file: !494, line: 997, type: !107)
!3312 = !DILocalVariable(name: "options", scope: !3307, file: !494, line: 999, type: !544)
!3313 = !DILocation(line: 185, column: 26, scope: !3124, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 1000, column: 13, scope: !3307)
!3315 = !DILocation(line: 0, scope: !3307)
!3316 = !DILocation(line: 999, column: 3, scope: !3307)
!3317 = !DILocation(line: 999, column: 26, scope: !3307)
!3318 = !DILocation(line: 0, scope: !3124, inlinedAt: !3314)
!3319 = !DILocation(line: 186, column: 13, scope: !3133, inlinedAt: !3314)
!3320 = !DILocation(line: 186, column: 7, scope: !3124, inlinedAt: !3314)
!3321 = !DILocation(line: 187, column: 5, scope: !3133, inlinedAt: !3314)
!3322 = !{!3323}
!3323 = distinct !{!3323, !3324, !"quoting_options_from_style: argument 0"}
!3324 = distinct !{!3324, !"quoting_options_from_style"}
!3325 = !DILocation(line: 1000, column: 13, scope: !3307)
!3326 = !DILocation(line: 0, scope: !2221, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1001, column: 3, scope: !3307)
!3328 = !DILocation(line: 147, column: 57, scope: !2221, inlinedAt: !3327)
!3329 = !DILocation(line: 149, column: 21, scope: !2221, inlinedAt: !3327)
!3330 = !DILocation(line: 150, column: 6, scope: !2221, inlinedAt: !3327)
!3331 = !DILocation(line: 1002, column: 10, scope: !3307)
!3332 = !DILocation(line: 1003, column: 1, scope: !3307)
!3333 = !DILocation(line: 1002, column: 3, scope: !3307)
!3334 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !494, file: !494, line: 1006, type: !3335, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!101, !70, !107, !107, !107}
!3337 = !{!3338, !3339, !3340, !3341}
!3338 = !DILocalVariable(name: "n", arg: 1, scope: !3334, file: !494, line: 1006, type: !70)
!3339 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3334, file: !494, line: 1006, type: !107)
!3340 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3334, file: !494, line: 1007, type: !107)
!3341 = !DILocalVariable(name: "arg", arg: 4, scope: !3334, file: !494, line: 1007, type: !107)
!3342 = !DILocation(line: 0, scope: !3334)
!3343 = !DILocalVariable(name: "n", arg: 1, scope: !3344, file: !494, line: 1014, type: !70)
!3344 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !494, file: !494, line: 1014, type: !3345, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3347)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!101, !70, !107, !107, !107, !104}
!3347 = !{!3343, !3348, !3349, !3350, !3351, !3352}
!3348 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3344, file: !494, line: 1014, type: !107)
!3349 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3344, file: !494, line: 1015, type: !107)
!3350 = !DILocalVariable(name: "arg", arg: 4, scope: !3344, file: !494, line: 1016, type: !107)
!3351 = !DILocalVariable(name: "argsize", arg: 5, scope: !3344, file: !494, line: 1016, type: !104)
!3352 = !DILocalVariable(name: "o", scope: !3344, file: !494, line: 1018, type: !544)
!3353 = !DILocation(line: 0, scope: !3344, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1009, column: 10, scope: !3334)
!3355 = !DILocation(line: 1018, column: 3, scope: !3344, inlinedAt: !3354)
!3356 = !DILocation(line: 1018, column: 26, scope: !3344, inlinedAt: !3354)
!3357 = !DILocation(line: 1018, column: 30, scope: !3344, inlinedAt: !3354)
!3358 = !DILocation(line: 0, scope: !2261, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 1019, column: 3, scope: !3344, inlinedAt: !3354)
!3360 = !DILocation(line: 174, column: 12, scope: !2261, inlinedAt: !3359)
!3361 = !DILocation(line: 175, column: 8, scope: !2274, inlinedAt: !3359)
!3362 = !DILocation(line: 175, column: 19, scope: !2274, inlinedAt: !3359)
!3363 = !DILocation(line: 176, column: 5, scope: !2274, inlinedAt: !3359)
!3364 = !DILocation(line: 177, column: 6, scope: !2261, inlinedAt: !3359)
!3365 = !DILocation(line: 177, column: 17, scope: !2261, inlinedAt: !3359)
!3366 = !DILocation(line: 178, column: 6, scope: !2261, inlinedAt: !3359)
!3367 = !DILocation(line: 178, column: 18, scope: !2261, inlinedAt: !3359)
!3368 = !DILocation(line: 1020, column: 10, scope: !3344, inlinedAt: !3354)
!3369 = !DILocation(line: 1021, column: 1, scope: !3344, inlinedAt: !3354)
!3370 = !DILocation(line: 1009, column: 3, scope: !3334)
!3371 = !DILocation(line: 0, scope: !3344)
!3372 = !DILocation(line: 1018, column: 3, scope: !3344)
!3373 = !DILocation(line: 1018, column: 26, scope: !3344)
!3374 = !DILocation(line: 1018, column: 30, scope: !3344)
!3375 = !DILocation(line: 0, scope: !2261, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 1019, column: 3, scope: !3344)
!3377 = !DILocation(line: 174, column: 12, scope: !2261, inlinedAt: !3376)
!3378 = !DILocation(line: 175, column: 8, scope: !2274, inlinedAt: !3376)
!3379 = !DILocation(line: 175, column: 19, scope: !2274, inlinedAt: !3376)
!3380 = !DILocation(line: 176, column: 5, scope: !2274, inlinedAt: !3376)
!3381 = !DILocation(line: 177, column: 6, scope: !2261, inlinedAt: !3376)
!3382 = !DILocation(line: 177, column: 17, scope: !2261, inlinedAt: !3376)
!3383 = !DILocation(line: 178, column: 6, scope: !2261, inlinedAt: !3376)
!3384 = !DILocation(line: 178, column: 18, scope: !2261, inlinedAt: !3376)
!3385 = !DILocation(line: 1020, column: 10, scope: !3344)
!3386 = !DILocation(line: 1021, column: 1, scope: !3344)
!3387 = !DILocation(line: 1020, column: 3, scope: !3344)
!3388 = distinct !DISubprogram(name: "quotearg_custom", scope: !494, file: !494, line: 1024, type: !3389, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!101, !107, !107, !107}
!3391 = !{!3392, !3393, !3394}
!3392 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3388, file: !494, line: 1024, type: !107)
!3393 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3388, file: !494, line: 1024, type: !107)
!3394 = !DILocalVariable(name: "arg", arg: 3, scope: !3388, file: !494, line: 1025, type: !107)
!3395 = !DILocation(line: 0, scope: !3388)
!3396 = !DILocation(line: 0, scope: !3334, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 1027, column: 10, scope: !3388)
!3398 = !DILocation(line: 0, scope: !3344, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1009, column: 10, scope: !3334, inlinedAt: !3397)
!3400 = !DILocation(line: 1018, column: 3, scope: !3344, inlinedAt: !3399)
!3401 = !DILocation(line: 1018, column: 26, scope: !3344, inlinedAt: !3399)
!3402 = !DILocation(line: 1018, column: 30, scope: !3344, inlinedAt: !3399)
!3403 = !DILocation(line: 0, scope: !2261, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 1019, column: 3, scope: !3344, inlinedAt: !3399)
!3405 = !DILocation(line: 174, column: 12, scope: !2261, inlinedAt: !3404)
!3406 = !DILocation(line: 175, column: 8, scope: !2274, inlinedAt: !3404)
!3407 = !DILocation(line: 175, column: 19, scope: !2274, inlinedAt: !3404)
!3408 = !DILocation(line: 176, column: 5, scope: !2274, inlinedAt: !3404)
!3409 = !DILocation(line: 177, column: 6, scope: !2261, inlinedAt: !3404)
!3410 = !DILocation(line: 177, column: 17, scope: !2261, inlinedAt: !3404)
!3411 = !DILocation(line: 178, column: 6, scope: !2261, inlinedAt: !3404)
!3412 = !DILocation(line: 178, column: 18, scope: !2261, inlinedAt: !3404)
!3413 = !DILocation(line: 1020, column: 10, scope: !3344, inlinedAt: !3399)
!3414 = !DILocation(line: 1021, column: 1, scope: !3344, inlinedAt: !3399)
!3415 = !DILocation(line: 1027, column: 3, scope: !3388)
!3416 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !494, file: !494, line: 1031, type: !3417, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!101, !107, !107, !107, !104}
!3419 = !{!3420, !3421, !3422, !3423}
!3420 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3416, file: !494, line: 1031, type: !107)
!3421 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3416, file: !494, line: 1031, type: !107)
!3422 = !DILocalVariable(name: "arg", arg: 3, scope: !3416, file: !494, line: 1032, type: !107)
!3423 = !DILocalVariable(name: "argsize", arg: 4, scope: !3416, file: !494, line: 1032, type: !104)
!3424 = !DILocation(line: 0, scope: !3416)
!3425 = !DILocation(line: 0, scope: !3344, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 1034, column: 10, scope: !3416)
!3427 = !DILocation(line: 1018, column: 3, scope: !3344, inlinedAt: !3426)
!3428 = !DILocation(line: 1018, column: 26, scope: !3344, inlinedAt: !3426)
!3429 = !DILocation(line: 1018, column: 30, scope: !3344, inlinedAt: !3426)
!3430 = !DILocation(line: 0, scope: !2261, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 1019, column: 3, scope: !3344, inlinedAt: !3426)
!3432 = !DILocation(line: 174, column: 12, scope: !2261, inlinedAt: !3431)
!3433 = !DILocation(line: 175, column: 8, scope: !2274, inlinedAt: !3431)
!3434 = !DILocation(line: 175, column: 19, scope: !2274, inlinedAt: !3431)
!3435 = !DILocation(line: 176, column: 5, scope: !2274, inlinedAt: !3431)
!3436 = !DILocation(line: 177, column: 6, scope: !2261, inlinedAt: !3431)
!3437 = !DILocation(line: 177, column: 17, scope: !2261, inlinedAt: !3431)
!3438 = !DILocation(line: 178, column: 6, scope: !2261, inlinedAt: !3431)
!3439 = !DILocation(line: 178, column: 18, scope: !2261, inlinedAt: !3431)
!3440 = !DILocation(line: 1020, column: 10, scope: !3344, inlinedAt: !3426)
!3441 = !DILocation(line: 1021, column: 1, scope: !3344, inlinedAt: !3426)
!3442 = !DILocation(line: 1034, column: 3, scope: !3416)
!3443 = distinct !DISubprogram(name: "quote_n_mem", scope: !494, file: !494, line: 1049, type: !3444, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!107, !70, !107, !104}
!3446 = !{!3447, !3448, !3449}
!3447 = !DILocalVariable(name: "n", arg: 1, scope: !3443, file: !494, line: 1049, type: !70)
!3448 = !DILocalVariable(name: "arg", arg: 2, scope: !3443, file: !494, line: 1049, type: !107)
!3449 = !DILocalVariable(name: "argsize", arg: 3, scope: !3443, file: !494, line: 1049, type: !104)
!3450 = !DILocation(line: 0, scope: !3443)
!3451 = !DILocation(line: 1051, column: 10, scope: !3443)
!3452 = !DILocation(line: 1051, column: 3, scope: !3443)
!3453 = distinct !DISubprogram(name: "quote_mem", scope: !494, file: !494, line: 1055, type: !3454, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!107, !107, !104}
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "arg", arg: 1, scope: !3453, file: !494, line: 1055, type: !107)
!3458 = !DILocalVariable(name: "argsize", arg: 2, scope: !3453, file: !494, line: 1055, type: !104)
!3459 = !DILocation(line: 0, scope: !3453)
!3460 = !DILocation(line: 0, scope: !3443, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 1057, column: 10, scope: !3453)
!3462 = !DILocation(line: 1051, column: 10, scope: !3443, inlinedAt: !3461)
!3463 = !DILocation(line: 1057, column: 3, scope: !3453)
!3464 = distinct !DISubprogram(name: "quote_n", scope: !494, file: !494, line: 1061, type: !3465, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!107, !70, !107}
!3467 = !{!3468, !3469}
!3468 = !DILocalVariable(name: "n", arg: 1, scope: !3464, file: !494, line: 1061, type: !70)
!3469 = !DILocalVariable(name: "arg", arg: 2, scope: !3464, file: !494, line: 1061, type: !107)
!3470 = !DILocation(line: 0, scope: !3464)
!3471 = !DILocation(line: 0, scope: !3443, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 1063, column: 10, scope: !3464)
!3473 = !DILocation(line: 1051, column: 10, scope: !3443, inlinedAt: !3472)
!3474 = !DILocation(line: 1063, column: 3, scope: !3464)
!3475 = distinct !DISubprogram(name: "quote", scope: !494, file: !494, line: 1067, type: !3476, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!107, !107}
!3478 = !{!3479}
!3479 = !DILocalVariable(name: "arg", arg: 1, scope: !3475, file: !494, line: 1067, type: !107)
!3480 = !DILocation(line: 0, scope: !3475)
!3481 = !DILocation(line: 0, scope: !3464, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 1069, column: 10, scope: !3475)
!3483 = !DILocation(line: 0, scope: !3443, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 1063, column: 10, scope: !3464, inlinedAt: !3482)
!3485 = !DILocation(line: 1051, column: 10, scope: !3443, inlinedAt: !3484)
!3486 = !DILocation(line: 1069, column: 3, scope: !3475)
!3487 = distinct !DISubprogram(name: "version_etc_arn", scope: !607, file: !607, line: 61, type: !3488, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !3525)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3490, !107, !107, !107, !3524, !104}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !3492)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3492, file: !165, line: 51, baseType: !70, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3492, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3492, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3492, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3492, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3492, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3492, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3492, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3492, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3492, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3492, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3492, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3492, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3492, file: !165, line: 70, baseType: !3508, size: 64, offset: 832)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3492, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3492, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3492, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3492, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3492, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3492, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3492, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3492, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3492, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3492, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3492, file: !165, line: 93, baseType: !3508, size: 64, offset: 1344)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3492, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3492, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3492, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3492, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531}
!3526 = !DILocalVariable(name: "stream", arg: 1, scope: !3487, file: !607, line: 61, type: !3490)
!3527 = !DILocalVariable(name: "command_name", arg: 2, scope: !3487, file: !607, line: 62, type: !107)
!3528 = !DILocalVariable(name: "package", arg: 3, scope: !3487, file: !607, line: 62, type: !107)
!3529 = !DILocalVariable(name: "version", arg: 4, scope: !3487, file: !607, line: 63, type: !107)
!3530 = !DILocalVariable(name: "authors", arg: 5, scope: !3487, file: !607, line: 64, type: !3524)
!3531 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3487, file: !607, line: 64, type: !104)
!3532 = !DILocation(line: 0, scope: !3487)
!3533 = !DILocation(line: 66, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3487, file: !607, line: 66, column: 7)
!3535 = !DILocation(line: 66, column: 7, scope: !3487)
!3536 = !DILocation(line: 67, column: 5, scope: !3534)
!3537 = !DILocation(line: 69, column: 5, scope: !3534)
!3538 = !DILocation(line: 83, column: 3, scope: !3487)
!3539 = !DILocation(line: 85, column: 3, scope: !3487)
!3540 = !DILocation(line: 88, column: 3, scope: !3487)
!3541 = !DILocation(line: 95, column: 3, scope: !3487)
!3542 = !DILocation(line: 97, column: 3, scope: !3487)
!3543 = !DILocation(line: 105, column: 7, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3487, file: !607, line: 98, column: 5)
!3545 = !DILocation(line: 106, column: 7, scope: !3544)
!3546 = !DILocation(line: 109, column: 7, scope: !3544)
!3547 = !DILocation(line: 110, column: 7, scope: !3544)
!3548 = !DILocation(line: 113, column: 7, scope: !3544)
!3549 = !DILocation(line: 115, column: 7, scope: !3544)
!3550 = !DILocation(line: 120, column: 7, scope: !3544)
!3551 = !DILocation(line: 122, column: 7, scope: !3544)
!3552 = !DILocation(line: 127, column: 7, scope: !3544)
!3553 = !DILocation(line: 129, column: 7, scope: !3544)
!3554 = !DILocation(line: 134, column: 7, scope: !3544)
!3555 = !DILocation(line: 137, column: 7, scope: !3544)
!3556 = !DILocation(line: 142, column: 7, scope: !3544)
!3557 = !DILocation(line: 145, column: 7, scope: !3544)
!3558 = !DILocation(line: 150, column: 7, scope: !3544)
!3559 = !DILocation(line: 154, column: 7, scope: !3544)
!3560 = !DILocation(line: 159, column: 7, scope: !3544)
!3561 = !DILocation(line: 163, column: 7, scope: !3544)
!3562 = !DILocation(line: 170, column: 7, scope: !3544)
!3563 = !DILocation(line: 174, column: 7, scope: !3544)
!3564 = !DILocation(line: 176, column: 1, scope: !3487)
!3565 = distinct !DISubprogram(name: "version_etc_ar", scope: !607, file: !607, line: 183, type: !3566, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3490, !107, !107, !107, !3524}
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574}
!3569 = !DILocalVariable(name: "stream", arg: 1, scope: !3565, file: !607, line: 183, type: !3490)
!3570 = !DILocalVariable(name: "command_name", arg: 2, scope: !3565, file: !607, line: 184, type: !107)
!3571 = !DILocalVariable(name: "package", arg: 3, scope: !3565, file: !607, line: 184, type: !107)
!3572 = !DILocalVariable(name: "version", arg: 4, scope: !3565, file: !607, line: 185, type: !107)
!3573 = !DILocalVariable(name: "authors", arg: 5, scope: !3565, file: !607, line: 185, type: !3524)
!3574 = !DILocalVariable(name: "n_authors", scope: !3565, file: !607, line: 187, type: !104)
!3575 = !DILocation(line: 0, scope: !3565)
!3576 = !DILocation(line: 189, column: 8, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3565, file: !607, line: 189, column: 3)
!3578 = !DILocation(line: 189, scope: !3577)
!3579 = !DILocation(line: 189, column: 23, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3577, file: !607, line: 189, column: 3)
!3581 = !DILocation(line: 189, column: 3, scope: !3577)
!3582 = !DILocation(line: 189, column: 52, scope: !3580)
!3583 = distinct !{!3583, !3581, !3584, !1164}
!3584 = !DILocation(line: 190, column: 5, scope: !3577)
!3585 = !DILocation(line: 191, column: 3, scope: !3565)
!3586 = !DILocation(line: 192, column: 1, scope: !3565)
!3587 = distinct !DISubprogram(name: "version_etc_va", scope: !607, file: !607, line: 199, type: !3588, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !3598)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !3490, !107, !107, !107, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3592)
!3592 = !{!3593, !3595, !3596, !3597}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3591, file: !3594, line: 192, baseType: !63, size: 32)
!3594 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3591, file: !3594, line: 192, baseType: !63, size: 32, offset: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3591, file: !3594, line: 192, baseType: !102, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3591, file: !3594, line: 192, baseType: !102, size: 64, offset: 128)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3599 = !DILocalVariable(name: "stream", arg: 1, scope: !3587, file: !607, line: 199, type: !3490)
!3600 = !DILocalVariable(name: "command_name", arg: 2, scope: !3587, file: !607, line: 200, type: !107)
!3601 = !DILocalVariable(name: "package", arg: 3, scope: !3587, file: !607, line: 200, type: !107)
!3602 = !DILocalVariable(name: "version", arg: 4, scope: !3587, file: !607, line: 201, type: !107)
!3603 = !DILocalVariable(name: "authors", arg: 5, scope: !3587, file: !607, line: 201, type: !3590)
!3604 = !DILocalVariable(name: "n_authors", scope: !3587, file: !607, line: 203, type: !104)
!3605 = !DILocalVariable(name: "authtab", scope: !3587, file: !607, line: 204, type: !3606)
!3606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 640, elements: !50)
!3607 = !DILocation(line: 0, scope: !3587)
!3608 = !DILocation(line: 204, column: 3, scope: !3587)
!3609 = !DILocation(line: 204, column: 15, scope: !3587)
!3610 = !DILocation(line: 208, column: 35, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !607, line: 206, column: 3)
!3612 = distinct !DILexicalBlock(scope: !3587, file: !607, line: 206, column: 3)
!3613 = !DILocation(line: 208, column: 33, scope: !3611)
!3614 = !DILocation(line: 208, column: 67, scope: !3611)
!3615 = !DILocation(line: 206, column: 3, scope: !3612)
!3616 = !DILocation(line: 208, column: 14, scope: !3611)
!3617 = !DILocation(line: 0, scope: !3612)
!3618 = !DILocation(line: 211, column: 3, scope: !3587)
!3619 = !DILocation(line: 213, column: 1, scope: !3587)
!3620 = distinct !DISubprogram(name: "version_etc", scope: !607, file: !607, line: 230, type: !3621, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3490, !107, !107, !107, null}
!3623 = !{!3624, !3625, !3626, !3627, !3628}
!3624 = !DILocalVariable(name: "stream", arg: 1, scope: !3620, file: !607, line: 230, type: !3490)
!3625 = !DILocalVariable(name: "command_name", arg: 2, scope: !3620, file: !607, line: 231, type: !107)
!3626 = !DILocalVariable(name: "package", arg: 3, scope: !3620, file: !607, line: 231, type: !107)
!3627 = !DILocalVariable(name: "version", arg: 4, scope: !3620, file: !607, line: 232, type: !107)
!3628 = !DILocalVariable(name: "authors", scope: !3620, file: !607, line: 234, type: !3629)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1112, line: 52, baseType: !3630)
!3630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1544, line: 14, baseType: !3631)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3594, baseType: !3632)
!3632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3591, size: 192, elements: !45)
!3633 = !DILocation(line: 0, scope: !3620)
!3634 = !DILocation(line: 234, column: 3, scope: !3620)
!3635 = !DILocation(line: 234, column: 11, scope: !3620)
!3636 = !DILocation(line: 235, column: 3, scope: !3620)
!3637 = !DILocation(line: 236, column: 3, scope: !3620)
!3638 = !DILocation(line: 237, column: 3, scope: !3620)
!3639 = !DILocation(line: 238, column: 1, scope: !3620)
!3640 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !607, file: !607, line: 241, type: !418, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !1101)
!3641 = !DILocation(line: 243, column: 3, scope: !3640)
!3642 = !DILocation(line: 248, column: 3, scope: !3640)
!3643 = !DILocation(line: 254, column: 3, scope: !3640)
!3644 = !DILocation(line: 259, column: 3, scope: !3640)
!3645 = !DILocation(line: 261, column: 1, scope: !3640)
!3646 = distinct !DISubprogram(name: "xnrealloc", scope: !3647, file: !3647, line: 147, type: !3648, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3650)
!3647 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!102, !102, !104, !104}
!3650 = !{!3651, !3652, !3653}
!3651 = !DILocalVariable(name: "p", arg: 1, scope: !3646, file: !3647, line: 147, type: !102)
!3652 = !DILocalVariable(name: "n", arg: 2, scope: !3646, file: !3647, line: 147, type: !104)
!3653 = !DILocalVariable(name: "s", arg: 3, scope: !3646, file: !3647, line: 147, type: !104)
!3654 = !DILocation(line: 0, scope: !3646)
!3655 = !DILocalVariable(name: "p", arg: 1, scope: !3656, file: !961, line: 83, type: !102)
!3656 = distinct !DISubprogram(name: "xreallocarray", scope: !961, file: !961, line: 83, type: !3648, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3657)
!3657 = !{!3655, !3658, !3659}
!3658 = !DILocalVariable(name: "n", arg: 2, scope: !3656, file: !961, line: 83, type: !104)
!3659 = !DILocalVariable(name: "s", arg: 3, scope: !3656, file: !961, line: 83, type: !104)
!3660 = !DILocation(line: 0, scope: !3656, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 149, column: 10, scope: !3646)
!3662 = !DILocation(line: 85, column: 25, scope: !3656, inlinedAt: !3661)
!3663 = !DILocalVariable(name: "p", arg: 1, scope: !3664, file: !961, line: 37, type: !102)
!3664 = distinct !DISubprogram(name: "check_nonnull", scope: !961, file: !961, line: 37, type: !3665, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!102, !102}
!3667 = !{!3663}
!3668 = !DILocation(line: 0, scope: !3664, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 85, column: 10, scope: !3656, inlinedAt: !3661)
!3670 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3669)
!3671 = distinct !DILexicalBlock(scope: !3664, file: !961, line: 39, column: 7)
!3672 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3669)
!3673 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3669)
!3674 = !DILocation(line: 149, column: 3, scope: !3646)
!3675 = !DILocation(line: 0, scope: !3656)
!3676 = !DILocation(line: 85, column: 25, scope: !3656)
!3677 = !DILocation(line: 0, scope: !3664, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 85, column: 10, scope: !3656)
!3679 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3678)
!3680 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3678)
!3681 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3678)
!3682 = !DILocation(line: 85, column: 3, scope: !3656)
!3683 = distinct !DISubprogram(name: "xmalloc", scope: !961, file: !961, line: 47, type: !3684, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!102, !104}
!3686 = !{!3687}
!3687 = !DILocalVariable(name: "s", arg: 1, scope: !3683, file: !961, line: 47, type: !104)
!3688 = !DILocation(line: 0, scope: !3683)
!3689 = !DILocation(line: 49, column: 25, scope: !3683)
!3690 = !DILocation(line: 0, scope: !3664, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 49, column: 10, scope: !3683)
!3692 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3691)
!3693 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3691)
!3694 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3691)
!3695 = !DILocation(line: 49, column: 3, scope: !3683)
!3696 = !DISubprogram(name: "malloc", scope: !1242, file: !1242, line: 540, type: !3684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!3697 = distinct !DISubprogram(name: "ximalloc", scope: !961, file: !961, line: 53, type: !3698, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!102, !980}
!3700 = !{!3701}
!3701 = !DILocalVariable(name: "s", arg: 1, scope: !3697, file: !961, line: 53, type: !980)
!3702 = !DILocation(line: 0, scope: !3697)
!3703 = !DILocalVariable(name: "s", arg: 1, scope: !3704, file: !3705, line: 55, type: !980)
!3704 = distinct !DISubprogram(name: "imalloc", scope: !3705, file: !3705, line: 55, type: !3698, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3706)
!3705 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3706 = !{!3703}
!3707 = !DILocation(line: 0, scope: !3704, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 55, column: 25, scope: !3697)
!3709 = !DILocation(line: 57, column: 26, scope: !3704, inlinedAt: !3708)
!3710 = !DILocation(line: 0, scope: !3664, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 55, column: 10, scope: !3697)
!3712 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3711)
!3713 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3711)
!3714 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3711)
!3715 = !DILocation(line: 55, column: 3, scope: !3697)
!3716 = distinct !DISubprogram(name: "xcharalloc", scope: !961, file: !961, line: 59, type: !3717, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!101, !104}
!3719 = !{!3720}
!3720 = !DILocalVariable(name: "n", arg: 1, scope: !3716, file: !961, line: 59, type: !104)
!3721 = !DILocation(line: 0, scope: !3716)
!3722 = !DILocation(line: 0, scope: !3683, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 61, column: 10, scope: !3716)
!3724 = !DILocation(line: 49, column: 25, scope: !3683, inlinedAt: !3723)
!3725 = !DILocation(line: 0, scope: !3664, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 49, column: 10, scope: !3683, inlinedAt: !3723)
!3727 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3726)
!3728 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3726)
!3729 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3726)
!3730 = !DILocation(line: 61, column: 3, scope: !3716)
!3731 = distinct !DISubprogram(name: "xrealloc", scope: !961, file: !961, line: 68, type: !3732, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!102, !102, !104}
!3734 = !{!3735, !3736}
!3735 = !DILocalVariable(name: "p", arg: 1, scope: !3731, file: !961, line: 68, type: !102)
!3736 = !DILocalVariable(name: "s", arg: 2, scope: !3731, file: !961, line: 68, type: !104)
!3737 = !DILocation(line: 0, scope: !3731)
!3738 = !DILocalVariable(name: "ptr", arg: 1, scope: !3739, file: !3740, line: 2057, type: !102)
!3739 = distinct !DISubprogram(name: "rpl_realloc", scope: !3740, file: !3740, line: 2057, type: !3732, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3741)
!3740 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3741 = !{!3738, !3742}
!3742 = !DILocalVariable(name: "size", arg: 2, scope: !3739, file: !3740, line: 2057, type: !104)
!3743 = !DILocation(line: 0, scope: !3739, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 70, column: 25, scope: !3731)
!3745 = !DILocation(line: 2059, column: 24, scope: !3739, inlinedAt: !3744)
!3746 = !DILocation(line: 2059, column: 10, scope: !3739, inlinedAt: !3744)
!3747 = !DILocation(line: 0, scope: !3664, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 70, column: 10, scope: !3731)
!3749 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3748)
!3750 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3748)
!3751 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3748)
!3752 = !DILocation(line: 70, column: 3, scope: !3731)
!3753 = !DISubprogram(name: "realloc", scope: !1242, file: !1242, line: 551, type: !3732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!3754 = distinct !DISubprogram(name: "xirealloc", scope: !961, file: !961, line: 74, type: !3755, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!102, !102, !980}
!3757 = !{!3758, !3759}
!3758 = !DILocalVariable(name: "p", arg: 1, scope: !3754, file: !961, line: 74, type: !102)
!3759 = !DILocalVariable(name: "s", arg: 2, scope: !3754, file: !961, line: 74, type: !980)
!3760 = !DILocation(line: 0, scope: !3754)
!3761 = !DILocalVariable(name: "p", arg: 1, scope: !3762, file: !3705, line: 66, type: !102)
!3762 = distinct !DISubprogram(name: "irealloc", scope: !3705, file: !3705, line: 66, type: !3755, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3763)
!3763 = !{!3761, !3764}
!3764 = !DILocalVariable(name: "s", arg: 2, scope: !3762, file: !3705, line: 66, type: !980)
!3765 = !DILocation(line: 0, scope: !3762, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 76, column: 25, scope: !3754)
!3767 = !DILocation(line: 0, scope: !3739, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 68, column: 26, scope: !3762, inlinedAt: !3766)
!3769 = !DILocation(line: 2059, column: 24, scope: !3739, inlinedAt: !3768)
!3770 = !DILocation(line: 2059, column: 10, scope: !3739, inlinedAt: !3768)
!3771 = !DILocation(line: 0, scope: !3664, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 76, column: 10, scope: !3754)
!3773 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3772)
!3774 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3772)
!3775 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3772)
!3776 = !DILocation(line: 76, column: 3, scope: !3754)
!3777 = distinct !DISubprogram(name: "xireallocarray", scope: !961, file: !961, line: 89, type: !3778, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!102, !102, !980, !980}
!3780 = !{!3781, !3782, !3783}
!3781 = !DILocalVariable(name: "p", arg: 1, scope: !3777, file: !961, line: 89, type: !102)
!3782 = !DILocalVariable(name: "n", arg: 2, scope: !3777, file: !961, line: 89, type: !980)
!3783 = !DILocalVariable(name: "s", arg: 3, scope: !3777, file: !961, line: 89, type: !980)
!3784 = !DILocation(line: 0, scope: !3777)
!3785 = !DILocalVariable(name: "p", arg: 1, scope: !3786, file: !3705, line: 98, type: !102)
!3786 = distinct !DISubprogram(name: "ireallocarray", scope: !3705, file: !3705, line: 98, type: !3778, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3787)
!3787 = !{!3785, !3788, !3789}
!3788 = !DILocalVariable(name: "n", arg: 2, scope: !3786, file: !3705, line: 98, type: !980)
!3789 = !DILocalVariable(name: "s", arg: 3, scope: !3786, file: !3705, line: 98, type: !980)
!3790 = !DILocation(line: 0, scope: !3786, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 91, column: 25, scope: !3777)
!3792 = !DILocation(line: 101, column: 13, scope: !3786, inlinedAt: !3791)
!3793 = !DILocation(line: 0, scope: !3664, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 91, column: 10, scope: !3777)
!3795 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3794)
!3796 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3794)
!3797 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3794)
!3798 = !DILocation(line: 91, column: 3, scope: !3777)
!3799 = distinct !DISubprogram(name: "xnmalloc", scope: !961, file: !961, line: 98, type: !3800, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!102, !104, !104}
!3802 = !{!3803, !3804}
!3803 = !DILocalVariable(name: "n", arg: 1, scope: !3799, file: !961, line: 98, type: !104)
!3804 = !DILocalVariable(name: "s", arg: 2, scope: !3799, file: !961, line: 98, type: !104)
!3805 = !DILocation(line: 0, scope: !3799)
!3806 = !DILocation(line: 0, scope: !3656, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 100, column: 10, scope: !3799)
!3808 = !DILocation(line: 85, column: 25, scope: !3656, inlinedAt: !3807)
!3809 = !DILocation(line: 0, scope: !3664, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 85, column: 10, scope: !3656, inlinedAt: !3807)
!3811 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3810)
!3812 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3810)
!3813 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3810)
!3814 = !DILocation(line: 100, column: 3, scope: !3799)
!3815 = distinct !DISubprogram(name: "xinmalloc", scope: !961, file: !961, line: 104, type: !3816, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!102, !980, !980}
!3818 = !{!3819, !3820}
!3819 = !DILocalVariable(name: "n", arg: 1, scope: !3815, file: !961, line: 104, type: !980)
!3820 = !DILocalVariable(name: "s", arg: 2, scope: !3815, file: !961, line: 104, type: !980)
!3821 = !DILocation(line: 0, scope: !3815)
!3822 = !DILocation(line: 0, scope: !3777, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 106, column: 10, scope: !3815)
!3824 = !DILocation(line: 0, scope: !3786, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 91, column: 25, scope: !3777, inlinedAt: !3823)
!3826 = !DILocation(line: 101, column: 13, scope: !3786, inlinedAt: !3825)
!3827 = !DILocation(line: 0, scope: !3664, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 91, column: 10, scope: !3777, inlinedAt: !3823)
!3829 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3828)
!3830 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3828)
!3831 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3828)
!3832 = !DILocation(line: 106, column: 3, scope: !3815)
!3833 = distinct !DISubprogram(name: "x2realloc", scope: !961, file: !961, line: 116, type: !3834, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!102, !102, !967}
!3836 = !{!3837, !3838}
!3837 = !DILocalVariable(name: "p", arg: 1, scope: !3833, file: !961, line: 116, type: !102)
!3838 = !DILocalVariable(name: "ps", arg: 2, scope: !3833, file: !961, line: 116, type: !967)
!3839 = !DILocation(line: 0, scope: !3833)
!3840 = !DILocation(line: 0, scope: !964, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 118, column: 10, scope: !3833)
!3842 = !DILocation(line: 178, column: 14, scope: !964, inlinedAt: !3841)
!3843 = !DILocation(line: 180, column: 9, scope: !3844, inlinedAt: !3841)
!3844 = distinct !DILexicalBlock(scope: !964, file: !961, line: 180, column: 7)
!3845 = !DILocation(line: 180, column: 7, scope: !964, inlinedAt: !3841)
!3846 = !DILocation(line: 182, column: 13, scope: !3847, inlinedAt: !3841)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !961, line: 182, column: 11)
!3848 = distinct !DILexicalBlock(scope: !3844, file: !961, line: 181, column: 5)
!3849 = !DILocation(line: 182, column: 11, scope: !3848, inlinedAt: !3841)
!3850 = !DILocation(line: 197, column: 11, scope: !3851, inlinedAt: !3841)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !961, line: 197, column: 11)
!3852 = distinct !DILexicalBlock(scope: !3844, file: !961, line: 195, column: 5)
!3853 = !DILocation(line: 197, column: 11, scope: !3852, inlinedAt: !3841)
!3854 = !DILocation(line: 198, column: 9, scope: !3851, inlinedAt: !3841)
!3855 = !DILocation(line: 0, scope: !3656, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 201, column: 7, scope: !964, inlinedAt: !3841)
!3857 = !DILocation(line: 85, column: 25, scope: !3656, inlinedAt: !3856)
!3858 = !DILocation(line: 0, scope: !3664, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 85, column: 10, scope: !3656, inlinedAt: !3856)
!3860 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3859)
!3861 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3859)
!3862 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3859)
!3863 = !DILocation(line: 202, column: 7, scope: !964, inlinedAt: !3841)
!3864 = !DILocation(line: 118, column: 3, scope: !3833)
!3865 = !DILocation(line: 0, scope: !964)
!3866 = !DILocation(line: 178, column: 14, scope: !964)
!3867 = !DILocation(line: 180, column: 9, scope: !3844)
!3868 = !DILocation(line: 180, column: 7, scope: !964)
!3869 = !DILocation(line: 182, column: 13, scope: !3847)
!3870 = !DILocation(line: 182, column: 11, scope: !3848)
!3871 = !DILocation(line: 190, column: 30, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3847, file: !961, line: 183, column: 9)
!3873 = !DILocation(line: 191, column: 16, scope: !3872)
!3874 = !DILocation(line: 191, column: 13, scope: !3872)
!3875 = !DILocation(line: 192, column: 9, scope: !3872)
!3876 = !DILocation(line: 197, column: 11, scope: !3851)
!3877 = !DILocation(line: 197, column: 11, scope: !3852)
!3878 = !DILocation(line: 198, column: 9, scope: !3851)
!3879 = !DILocation(line: 0, scope: !3656, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 201, column: 7, scope: !964)
!3881 = !DILocation(line: 85, column: 25, scope: !3656, inlinedAt: !3880)
!3882 = !DILocation(line: 0, scope: !3664, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 85, column: 10, scope: !3656, inlinedAt: !3880)
!3884 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3883)
!3885 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3883)
!3886 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3883)
!3887 = !DILocation(line: 202, column: 7, scope: !964)
!3888 = !DILocation(line: 203, column: 3, scope: !964)
!3889 = !DILocation(line: 0, scope: !976)
!3890 = !DILocation(line: 230, column: 14, scope: !976)
!3891 = !DILocation(line: 238, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !976, file: !961, line: 238, column: 7)
!3893 = !DILocation(line: 238, column: 7, scope: !976)
!3894 = !DILocation(line: 240, column: 9, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !976, file: !961, line: 240, column: 7)
!3896 = !DILocation(line: 240, column: 18, scope: !3895)
!3897 = !DILocation(line: 253, column: 8, scope: !976)
!3898 = !DILocation(line: 258, column: 27, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !961, line: 257, column: 5)
!3900 = distinct !DILexicalBlock(scope: !976, file: !961, line: 256, column: 7)
!3901 = !DILocation(line: 259, column: 50, scope: !3899)
!3902 = !DILocation(line: 259, column: 32, scope: !3899)
!3903 = !DILocation(line: 260, column: 5, scope: !3899)
!3904 = !DILocation(line: 262, column: 9, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !976, file: !961, line: 262, column: 7)
!3906 = !DILocation(line: 262, column: 7, scope: !976)
!3907 = !DILocation(line: 263, column: 9, scope: !3905)
!3908 = !DILocation(line: 263, column: 5, scope: !3905)
!3909 = !DILocation(line: 264, column: 9, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !976, file: !961, line: 264, column: 7)
!3911 = !DILocation(line: 264, column: 14, scope: !3910)
!3912 = !DILocation(line: 265, column: 7, scope: !3910)
!3913 = !DILocation(line: 265, column: 11, scope: !3910)
!3914 = !DILocation(line: 266, column: 11, scope: !3910)
!3915 = !DILocation(line: 267, column: 14, scope: !3910)
!3916 = !DILocation(line: 264, column: 7, scope: !976)
!3917 = !DILocation(line: 268, column: 5, scope: !3910)
!3918 = !DILocation(line: 0, scope: !3731, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 269, column: 8, scope: !976)
!3920 = !DILocation(line: 0, scope: !3739, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 70, column: 25, scope: !3731, inlinedAt: !3919)
!3922 = !DILocation(line: 2059, column: 24, scope: !3739, inlinedAt: !3921)
!3923 = !DILocation(line: 2059, column: 10, scope: !3739, inlinedAt: !3921)
!3924 = !DILocation(line: 0, scope: !3664, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 70, column: 10, scope: !3731, inlinedAt: !3919)
!3926 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3925)
!3927 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3925)
!3928 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3925)
!3929 = !DILocation(line: 270, column: 7, scope: !976)
!3930 = !DILocation(line: 271, column: 3, scope: !976)
!3931 = distinct !DISubprogram(name: "xzalloc", scope: !961, file: !961, line: 279, type: !3684, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3932)
!3932 = !{!3933}
!3933 = !DILocalVariable(name: "s", arg: 1, scope: !3931, file: !961, line: 279, type: !104)
!3934 = !DILocation(line: 0, scope: !3931)
!3935 = !DILocalVariable(name: "n", arg: 1, scope: !3936, file: !961, line: 294, type: !104)
!3936 = distinct !DISubprogram(name: "xcalloc", scope: !961, file: !961, line: 294, type: !3800, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3937)
!3937 = !{!3935, !3938}
!3938 = !DILocalVariable(name: "s", arg: 2, scope: !3936, file: !961, line: 294, type: !104)
!3939 = !DILocation(line: 0, scope: !3936, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 281, column: 10, scope: !3931)
!3941 = !DILocation(line: 296, column: 25, scope: !3936, inlinedAt: !3940)
!3942 = !DILocation(line: 0, scope: !3664, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 296, column: 10, scope: !3936, inlinedAt: !3940)
!3944 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3943)
!3945 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3943)
!3946 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3943)
!3947 = !DILocation(line: 281, column: 3, scope: !3931)
!3948 = !DISubprogram(name: "calloc", scope: !1242, file: !1242, line: 543, type: !3800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!3949 = !DILocation(line: 0, scope: !3936)
!3950 = !DILocation(line: 296, column: 25, scope: !3936)
!3951 = !DILocation(line: 0, scope: !3664, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 296, column: 10, scope: !3936)
!3953 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3952)
!3954 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3952)
!3955 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3952)
!3956 = !DILocation(line: 296, column: 3, scope: !3936)
!3957 = distinct !DISubprogram(name: "xizalloc", scope: !961, file: !961, line: 285, type: !3698, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3958)
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "s", arg: 1, scope: !3957, file: !961, line: 285, type: !980)
!3960 = !DILocation(line: 0, scope: !3957)
!3961 = !DILocalVariable(name: "n", arg: 1, scope: !3962, file: !961, line: 300, type: !980)
!3962 = distinct !DISubprogram(name: "xicalloc", scope: !961, file: !961, line: 300, type: !3816, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3963)
!3963 = !{!3961, !3964}
!3964 = !DILocalVariable(name: "s", arg: 2, scope: !3962, file: !961, line: 300, type: !980)
!3965 = !DILocation(line: 0, scope: !3962, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 287, column: 10, scope: !3957)
!3967 = !DILocalVariable(name: "n", arg: 1, scope: !3968, file: !3705, line: 77, type: !980)
!3968 = distinct !DISubprogram(name: "icalloc", scope: !3705, file: !3705, line: 77, type: !3816, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3969)
!3969 = !{!3967, !3970}
!3970 = !DILocalVariable(name: "s", arg: 2, scope: !3968, file: !3705, line: 77, type: !980)
!3971 = !DILocation(line: 0, scope: !3968, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 302, column: 25, scope: !3962, inlinedAt: !3966)
!3973 = !DILocation(line: 91, column: 10, scope: !3968, inlinedAt: !3972)
!3974 = !DILocation(line: 0, scope: !3664, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 302, column: 10, scope: !3962, inlinedAt: !3966)
!3976 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3975)
!3977 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3975)
!3978 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3975)
!3979 = !DILocation(line: 287, column: 3, scope: !3957)
!3980 = !DILocation(line: 0, scope: !3962)
!3981 = !DILocation(line: 0, scope: !3968, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 302, column: 25, scope: !3962)
!3983 = !DILocation(line: 91, column: 10, scope: !3968, inlinedAt: !3982)
!3984 = !DILocation(line: 0, scope: !3664, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 302, column: 10, scope: !3962)
!3986 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3985)
!3987 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3985)
!3988 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3985)
!3989 = !DILocation(line: 302, column: 3, scope: !3962)
!3990 = distinct !DISubprogram(name: "xmemdup", scope: !961, file: !961, line: 310, type: !3991, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!102, !1266, !104}
!3993 = !{!3994, !3995}
!3994 = !DILocalVariable(name: "p", arg: 1, scope: !3990, file: !961, line: 310, type: !1266)
!3995 = !DILocalVariable(name: "s", arg: 2, scope: !3990, file: !961, line: 310, type: !104)
!3996 = !DILocation(line: 0, scope: !3990)
!3997 = !DILocation(line: 0, scope: !3683, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 312, column: 18, scope: !3990)
!3999 = !DILocation(line: 49, column: 25, scope: !3683, inlinedAt: !3998)
!4000 = !DILocation(line: 0, scope: !3664, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 49, column: 10, scope: !3683, inlinedAt: !3998)
!4002 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !4001)
!4003 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !4001)
!4004 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !4001)
!4005 = !DILocalVariable(name: "__dest", arg: 1, scope: !4006, file: !2164, line: 26, type: !4009)
!4006 = distinct !DISubprogram(name: "memcpy", scope: !2164, file: !2164, line: 26, type: !4007, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !4010)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!102, !4009, !1265, !104}
!4009 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!4010 = !{!4005, !4011, !4012}
!4011 = !DILocalVariable(name: "__src", arg: 2, scope: !4006, file: !2164, line: 26, type: !1265)
!4012 = !DILocalVariable(name: "__len", arg: 3, scope: !4006, file: !2164, line: 26, type: !104)
!4013 = !DILocation(line: 0, scope: !4006, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 312, column: 10, scope: !3990)
!4015 = !DILocation(line: 29, column: 10, scope: !4006, inlinedAt: !4014)
!4016 = !DILocation(line: 312, column: 3, scope: !3990)
!4017 = distinct !DISubprogram(name: "ximemdup", scope: !961, file: !961, line: 316, type: !4018, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!102, !1266, !980}
!4020 = !{!4021, !4022}
!4021 = !DILocalVariable(name: "p", arg: 1, scope: !4017, file: !961, line: 316, type: !1266)
!4022 = !DILocalVariable(name: "s", arg: 2, scope: !4017, file: !961, line: 316, type: !980)
!4023 = !DILocation(line: 0, scope: !4017)
!4024 = !DILocation(line: 0, scope: !3697, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 318, column: 18, scope: !4017)
!4026 = !DILocation(line: 0, scope: !3704, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 55, column: 25, scope: !3697, inlinedAt: !4025)
!4028 = !DILocation(line: 57, column: 26, scope: !3704, inlinedAt: !4027)
!4029 = !DILocation(line: 0, scope: !3664, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 55, column: 10, scope: !3697, inlinedAt: !4025)
!4031 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !4030)
!4032 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !4030)
!4033 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !4030)
!4034 = !DILocation(line: 0, scope: !4006, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 318, column: 10, scope: !4017)
!4036 = !DILocation(line: 29, column: 10, scope: !4006, inlinedAt: !4035)
!4037 = !DILocation(line: 318, column: 3, scope: !4017)
!4038 = distinct !DISubprogram(name: "ximemdup0", scope: !961, file: !961, line: 325, type: !4039, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !4041)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!101, !1266, !980}
!4041 = !{!4042, !4043, !4044}
!4042 = !DILocalVariable(name: "p", arg: 1, scope: !4038, file: !961, line: 325, type: !1266)
!4043 = !DILocalVariable(name: "s", arg: 2, scope: !4038, file: !961, line: 325, type: !980)
!4044 = !DILocalVariable(name: "result", scope: !4038, file: !961, line: 327, type: !101)
!4045 = !DILocation(line: 0, scope: !4038)
!4046 = !DILocation(line: 327, column: 30, scope: !4038)
!4047 = !DILocation(line: 0, scope: !3697, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 327, column: 18, scope: !4038)
!4049 = !DILocation(line: 0, scope: !3704, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 55, column: 25, scope: !3697, inlinedAt: !4048)
!4051 = !DILocation(line: 57, column: 26, scope: !3704, inlinedAt: !4050)
!4052 = !DILocation(line: 0, scope: !3664, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 55, column: 10, scope: !3697, inlinedAt: !4048)
!4054 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !4053)
!4055 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !4053)
!4056 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !4053)
!4057 = !DILocation(line: 328, column: 3, scope: !4038)
!4058 = !DILocation(line: 328, column: 13, scope: !4038)
!4059 = !DILocation(line: 0, scope: !4006, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 329, column: 10, scope: !4038)
!4061 = !DILocation(line: 29, column: 10, scope: !4006, inlinedAt: !4060)
!4062 = !DILocation(line: 329, column: 3, scope: !4038)
!4063 = distinct !DISubprogram(name: "xstrdup", scope: !961, file: !961, line: 335, type: !1244, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !4064)
!4064 = !{!4065}
!4065 = !DILocalVariable(name: "string", arg: 1, scope: !4063, file: !961, line: 335, type: !107)
!4066 = !DILocation(line: 0, scope: !4063)
!4067 = !DILocation(line: 337, column: 27, scope: !4063)
!4068 = !DILocation(line: 337, column: 43, scope: !4063)
!4069 = !DILocation(line: 0, scope: !3990, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 337, column: 10, scope: !4063)
!4071 = !DILocation(line: 0, scope: !3683, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 312, column: 18, scope: !3990, inlinedAt: !4070)
!4073 = !DILocation(line: 49, column: 25, scope: !3683, inlinedAt: !4072)
!4074 = !DILocation(line: 0, scope: !3664, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 49, column: 10, scope: !3683, inlinedAt: !4072)
!4076 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !4075)
!4077 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !4075)
!4078 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !4075)
!4079 = !DILocation(line: 0, scope: !4006, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 312, column: 10, scope: !3990, inlinedAt: !4070)
!4081 = !DILocation(line: 29, column: 10, scope: !4006, inlinedAt: !4080)
!4082 = !DILocation(line: 337, column: 3, scope: !4063)
!4083 = distinct !DISubprogram(name: "xalloc_die", scope: !697, file: !697, line: 32, type: !418, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !994, retainedNodes: !4084)
!4084 = !{!4085}
!4085 = !DILocalVariable(name: "__errstatus", scope: !4086, file: !697, line: 34, type: !4087)
!4086 = distinct !DILexicalBlock(scope: !4083, file: !697, line: 34, column: 3)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4088 = !DILocation(line: 34, column: 3, scope: !4086)
!4089 = !DILocation(line: 0, scope: !4086)
!4090 = !DILocation(line: 40, column: 3, scope: !4083)
!4091 = distinct !DISubprogram(name: "xnumtoumax", scope: !704, file: !704, line: 42, type: !4092, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!1012, !107, !70, !1012, !1012, !107, !107, !70, !70}
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4107, !4108, !4109}
!4095 = !DILocalVariable(name: "n_str", arg: 1, scope: !4091, file: !704, line: 42, type: !107)
!4096 = !DILocalVariable(name: "base", arg: 2, scope: !4091, file: !704, line: 42, type: !70)
!4097 = !DILocalVariable(name: "min", arg: 3, scope: !4091, file: !704, line: 42, type: !1012)
!4098 = !DILocalVariable(name: "max", arg: 4, scope: !4091, file: !704, line: 42, type: !1012)
!4099 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4091, file: !704, line: 43, type: !107)
!4100 = !DILocalVariable(name: "err", arg: 6, scope: !4091, file: !704, line: 43, type: !107)
!4101 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4091, file: !704, line: 43, type: !70)
!4102 = !DILocalVariable(name: "flags", arg: 8, scope: !4091, file: !704, line: 44, type: !70)
!4103 = !DILocalVariable(name: "tnum", scope: !4091, file: !704, line: 46, type: !1012)
!4104 = !DILocalVariable(name: "r", scope: !4091, file: !704, line: 46, type: !1012)
!4105 = !DILocalVariable(name: "s_err", scope: !4091, file: !704, line: 47, type: !4106)
!4106 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1000, line: 43, baseType: !999)
!4107 = !DILocalVariable(name: "overflow_errno", scope: !4091, file: !704, line: 50, type: !70)
!4108 = !DILocalVariable(name: "e", scope: !4091, file: !704, line: 75, type: !70)
!4109 = !DILocalVariable(name: "__errstatus", scope: !4110, file: !704, line: 80, type: !4087)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !704, line: 80, column: 5)
!4111 = distinct !DILexicalBlock(scope: !4091, file: !704, line: 77, column: 7)
!4112 = !DILocation(line: 0, scope: !4091)
!4113 = !DILocation(line: 46, column: 3, scope: !4091)
!4114 = !DILocation(line: 47, column: 24, scope: !4091)
!4115 = !DILocation(line: 52, column: 13, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4091, file: !704, line: 52, column: 7)
!4117 = !DILocation(line: 52, column: 7, scope: !4091)
!4118 = !DILocation(line: 54, column: 11, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !704, line: 54, column: 11)
!4120 = distinct !DILexicalBlock(scope: !4116, file: !704, line: 53, column: 5)
!4121 = !DILocation(line: 54, column: 16, scope: !4119)
!4122 = !DILocation(line: 54, column: 11, scope: !4120)
!4123 = !DILocation(line: 57, column: 34, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4119, file: !704, line: 55, column: 9)
!4125 = !DILocation(line: 57, column: 28, scope: !4124)
!4126 = !DILocation(line: 58, column: 21, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4124, file: !704, line: 58, column: 15)
!4128 = !DILocation(line: 0, scope: !4124)
!4129 = !DILocation(line: 61, column: 20, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4119, file: !704, line: 61, column: 16)
!4131 = !DILocation(line: 61, column: 16, scope: !4119)
!4132 = !DILocation(line: 64, column: 34, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4130, file: !704, line: 62, column: 9)
!4134 = !DILocation(line: 64, column: 28, scope: !4133)
!4135 = !DILocation(line: 65, column: 21, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !704, line: 65, column: 15)
!4137 = !DILocation(line: 0, scope: !4133)
!4138 = !DILocation(line: 75, column: 17, scope: !4091)
!4139 = !DILocation(line: 75, column: 11, scope: !4091)
!4140 = !DILocation(line: 77, column: 16, scope: !4111)
!4141 = !DILocation(line: 78, column: 10, scope: !4111)
!4142 = !DILocation(line: 79, column: 14, scope: !4111)
!4143 = !DILocation(line: 80, column: 5, scope: !4111)
!4144 = !DILocation(line: 82, column: 3, scope: !4091)
!4145 = !DILocation(line: 82, column: 9, scope: !4091)
!4146 = !DILocation(line: 84, column: 1, scope: !4091)
!4147 = !DILocation(line: 83, column: 3, scope: !4091)
!4148 = distinct !DISubprogram(name: "xdectoumax", scope: !704, file: !704, line: 92, type: !4149, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!1012, !107, !1012, !1012, !107, !107, !70}
!4151 = !{!4152, !4153, !4154, !4155, !4156, !4157}
!4152 = !DILocalVariable(name: "n_str", arg: 1, scope: !4148, file: !704, line: 92, type: !107)
!4153 = !DILocalVariable(name: "min", arg: 2, scope: !4148, file: !704, line: 92, type: !1012)
!4154 = !DILocalVariable(name: "max", arg: 3, scope: !4148, file: !704, line: 92, type: !1012)
!4155 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4148, file: !704, line: 93, type: !107)
!4156 = !DILocalVariable(name: "err", arg: 5, scope: !4148, file: !704, line: 93, type: !107)
!4157 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4148, file: !704, line: 93, type: !70)
!4158 = !DILocation(line: 0, scope: !4148)
!4159 = !DILocation(line: 0, scope: !4091, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 95, column: 10, scope: !4148)
!4161 = !DILocation(line: 46, column: 3, scope: !4091, inlinedAt: !4160)
!4162 = !DILocation(line: 47, column: 24, scope: !4091, inlinedAt: !4160)
!4163 = !DILocation(line: 52, column: 13, scope: !4116, inlinedAt: !4160)
!4164 = !DILocation(line: 52, column: 7, scope: !4091, inlinedAt: !4160)
!4165 = !DILocation(line: 54, column: 11, scope: !4119, inlinedAt: !4160)
!4166 = !DILocation(line: 54, column: 16, scope: !4119, inlinedAt: !4160)
!4167 = !DILocation(line: 54, column: 11, scope: !4120, inlinedAt: !4160)
!4168 = !DILocation(line: 58, column: 21, scope: !4127, inlinedAt: !4160)
!4169 = !DILocation(line: 0, scope: !4124, inlinedAt: !4160)
!4170 = !DILocation(line: 61, column: 20, scope: !4130, inlinedAt: !4160)
!4171 = !DILocation(line: 61, column: 16, scope: !4119, inlinedAt: !4160)
!4172 = !DILocation(line: 65, column: 21, scope: !4136, inlinedAt: !4160)
!4173 = !DILocation(line: 0, scope: !4133, inlinedAt: !4160)
!4174 = !DILocation(line: 75, column: 17, scope: !4091, inlinedAt: !4160)
!4175 = !DILocation(line: 75, column: 11, scope: !4091, inlinedAt: !4160)
!4176 = !DILocation(line: 77, column: 16, scope: !4111, inlinedAt: !4160)
!4177 = !DILocation(line: 78, column: 10, scope: !4111, inlinedAt: !4160)
!4178 = !DILocation(line: 80, column: 5, scope: !4111, inlinedAt: !4160)
!4179 = !DILocation(line: 82, column: 3, scope: !4091, inlinedAt: !4160)
!4180 = !DILocation(line: 82, column: 9, scope: !4091, inlinedAt: !4160)
!4181 = !DILocation(line: 84, column: 1, scope: !4091, inlinedAt: !4160)
!4182 = !DILocation(line: 95, column: 3, scope: !4148)
!4183 = distinct !DISubprogram(name: "xstrtoumax", scope: !4184, file: !4184, line: 71, type: !4185, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1008, retainedNodes: !4188)
!4184 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!4106, !107, !1271, !70, !4187, !107}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!4188 = !{!4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4199, !4200, !4201, !4202, !4205, !4206}
!4189 = !DILocalVariable(name: "nptr", arg: 1, scope: !4183, file: !4184, line: 71, type: !107)
!4190 = !DILocalVariable(name: "endptr", arg: 2, scope: !4183, file: !4184, line: 71, type: !1271)
!4191 = !DILocalVariable(name: "base", arg: 3, scope: !4183, file: !4184, line: 71, type: !70)
!4192 = !DILocalVariable(name: "val", arg: 4, scope: !4183, file: !4184, line: 72, type: !4187)
!4193 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4183, file: !4184, line: 72, type: !107)
!4194 = !DILocalVariable(name: "t_ptr", scope: !4183, file: !4184, line: 74, type: !101)
!4195 = !DILocalVariable(name: "p", scope: !4183, file: !4184, line: 75, type: !1271)
!4196 = !DILocalVariable(name: "q", scope: !4197, file: !4184, line: 79, type: !107)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !4184, line: 78, column: 5)
!4198 = distinct !DILexicalBlock(scope: !4183, file: !4184, line: 77, column: 7)
!4199 = !DILocalVariable(name: "ch", scope: !4197, file: !4184, line: 80, type: !109)
!4200 = !DILocalVariable(name: "tmp", scope: !4183, file: !4184, line: 91, type: !1012)
!4201 = !DILocalVariable(name: "err", scope: !4183, file: !4184, line: 92, type: !4106)
!4202 = !DILocalVariable(name: "xbase", scope: !4203, file: !4184, line: 126, type: !70)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !4184, line: 119, column: 5)
!4204 = distinct !DILexicalBlock(scope: !4183, file: !4184, line: 118, column: 7)
!4205 = !DILocalVariable(name: "suffixes", scope: !4203, file: !4184, line: 127, type: !70)
!4206 = !DILocalVariable(name: "overflow", scope: !4203, file: !4184, line: 156, type: !4106)
!4207 = !DILocation(line: 0, scope: !4183)
!4208 = !DILocation(line: 74, column: 3, scope: !4183)
!4209 = !DILocation(line: 75, column: 14, scope: !4183)
!4210 = !DILocation(line: 0, scope: !4197)
!4211 = !DILocation(line: 81, column: 7, scope: !4197)
!4212 = !DILocation(line: 81, column: 14, scope: !4197)
!4213 = !DILocation(line: 82, column: 15, scope: !4197)
!4214 = distinct !{!4214, !4211, !4215, !1164}
!4215 = !DILocation(line: 82, column: 17, scope: !4197)
!4216 = !DILocation(line: 83, column: 14, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4197, file: !4184, line: 83, column: 11)
!4218 = !DILocation(line: 83, column: 11, scope: !4197)
!4219 = !DILocation(line: 85, column: 14, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !4184, line: 84, column: 9)
!4221 = !DILocation(line: 90, column: 3, scope: !4183)
!4222 = !DILocation(line: 90, column: 9, scope: !4183)
!4223 = !DILocation(line: 91, column: 20, scope: !4183)
!4224 = !DILocation(line: 94, column: 7, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4183, file: !4184, line: 94, column: 7)
!4226 = !DILocation(line: 94, column: 10, scope: !4225)
!4227 = !DILocation(line: 94, column: 7, scope: !4183)
!4228 = !DILocation(line: 98, column: 14, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !4184, line: 98, column: 11)
!4230 = distinct !DILexicalBlock(scope: !4225, file: !4184, line: 95, column: 5)
!4231 = !DILocation(line: 98, column: 29, scope: !4229)
!4232 = !DILocation(line: 98, column: 32, scope: !4229)
!4233 = !DILocation(line: 98, column: 38, scope: !4229)
!4234 = !DILocation(line: 98, column: 41, scope: !4229)
!4235 = !DILocation(line: 98, column: 11, scope: !4230)
!4236 = !DILocation(line: 102, column: 12, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4225, file: !4184, line: 102, column: 12)
!4238 = !DILocation(line: 102, column: 12, scope: !4225)
!4239 = !DILocation(line: 107, column: 5, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4237, file: !4184, line: 103, column: 5)
!4241 = !DILocation(line: 112, column: 8, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4183, file: !4184, line: 112, column: 7)
!4243 = !DILocation(line: 112, column: 7, scope: !4183)
!4244 = !DILocation(line: 114, column: 12, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4242, file: !4184, line: 113, column: 5)
!4246 = !DILocation(line: 115, column: 7, scope: !4245)
!4247 = !DILocation(line: 118, column: 7, scope: !4204)
!4248 = !DILocation(line: 118, column: 11, scope: !4204)
!4249 = !DILocation(line: 118, column: 7, scope: !4183)
!4250 = !DILocation(line: 120, column: 12, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4203, file: !4184, line: 120, column: 11)
!4252 = !DILocation(line: 120, column: 11, scope: !4203)
!4253 = !DILocation(line: 122, column: 16, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4251, file: !4184, line: 121, column: 9)
!4255 = !DILocation(line: 123, column: 22, scope: !4254)
!4256 = !DILocation(line: 123, column: 11, scope: !4254)
!4257 = !DILocation(line: 0, scope: !4203)
!4258 = !DILocation(line: 128, column: 7, scope: !4203)
!4259 = !DILocation(line: 140, column: 15, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !4184, line: 140, column: 15)
!4261 = distinct !DILexicalBlock(scope: !4203, file: !4184, line: 129, column: 9)
!4262 = !DILocation(line: 140, column: 15, scope: !4261)
!4263 = !DILocation(line: 141, column: 21, scope: !4260)
!4264 = !DILocation(line: 141, column: 13, scope: !4260)
!4265 = !DILocation(line: 144, column: 21, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !4184, line: 144, column: 21)
!4267 = distinct !DILexicalBlock(scope: !4260, file: !4184, line: 142, column: 15)
!4268 = !DILocation(line: 144, column: 29, scope: !4266)
!4269 = !DILocation(line: 144, column: 21, scope: !4267)
!4270 = !DILocation(line: 152, column: 17, scope: !4267)
!4271 = !DILocation(line: 157, column: 7, scope: !4203)
!4272 = !DILocalVariable(name: "err", scope: !4273, file: !4184, line: 64, type: !4106)
!4273 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4184, file: !4184, line: 62, type: !4274, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1008, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!4106, !4187, !70, !70}
!4276 = !{!4277, !4278, !4279, !4272}
!4277 = !DILocalVariable(name: "x", arg: 1, scope: !4273, file: !4184, line: 62, type: !4187)
!4278 = !DILocalVariable(name: "base", arg: 2, scope: !4273, file: !4184, line: 62, type: !70)
!4279 = !DILocalVariable(name: "power", arg: 3, scope: !4273, file: !4184, line: 62, type: !70)
!4280 = !DILocation(line: 0, scope: !4273, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 219, column: 22, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4203, file: !4184, line: 158, column: 9)
!4283 = !DILocalVariable(name: "x", arg: 1, scope: !4284, file: !4184, line: 47, type: !4187)
!4284 = distinct !DISubprogram(name: "bkm_scale", scope: !4184, file: !4184, line: 47, type: !4285, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1008, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!4106, !4187, !70}
!4287 = !{!4283, !4288, !4289}
!4288 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4284, file: !4184, line: 47, type: !70)
!4289 = !DILocalVariable(name: "scaled", scope: !4284, file: !4184, line: 49, type: !1012)
!4290 = !DILocation(line: 0, scope: !4284, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4281)
!4292 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4291)
!4293 = distinct !DILexicalBlock(scope: !4284, file: !4184, line: 50, column: 7)
!4294 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4281)
!4295 = !DILocation(line: 227, column: 11, scope: !4203)
!4296 = !DILocation(line: 0, scope: !4273, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 215, column: 22, scope: !4282)
!4298 = !DILocation(line: 0, scope: !4284, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4297)
!4300 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4299)
!4301 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4297)
!4302 = !DILocation(line: 0, scope: !4273, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 202, column: 22, scope: !4282)
!4304 = !DILocation(line: 0, scope: !4284, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4303)
!4306 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4305)
!4307 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4303)
!4308 = !DILocation(line: 0, scope: !4273, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 198, column: 22, scope: !4282)
!4310 = !DILocation(line: 0, scope: !4284, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4309)
!4312 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4311)
!4313 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4309)
!4314 = !DILocation(line: 0, scope: !4273, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 194, column: 22, scope: !4282)
!4316 = !DILocation(line: 0, scope: !4284, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4315)
!4318 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4317)
!4319 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4315)
!4320 = !DILocation(line: 0, scope: !4273, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 175, column: 22, scope: !4282)
!4322 = !DILocation(line: 0, scope: !4284, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4321)
!4324 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4323)
!4325 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4321)
!4326 = !DILocation(line: 0, scope: !4284, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 160, column: 22, scope: !4282)
!4328 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4327)
!4329 = !DILocation(line: 161, column: 11, scope: !4282)
!4330 = !DILocation(line: 0, scope: !4284, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 167, column: 22, scope: !4282)
!4332 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4331)
!4333 = !DILocation(line: 168, column: 11, scope: !4282)
!4334 = !DILocation(line: 0, scope: !4273, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 180, column: 22, scope: !4282)
!4336 = !DILocation(line: 0, scope: !4284, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4335)
!4338 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4337)
!4339 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4335)
!4340 = !DILocation(line: 0, scope: !4273, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 185, column: 22, scope: !4282)
!4342 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4341)
!4344 = !DILocation(line: 0, scope: !4284, inlinedAt: !4343)
!4345 = !DILocation(line: 0, scope: !4273, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 190, column: 22, scope: !4282)
!4347 = !DILocation(line: 0, scope: !4284, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4346)
!4349 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4348)
!4350 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4346)
!4351 = !DILocation(line: 0, scope: !4273, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 207, column: 22, scope: !4282)
!4353 = !DILocation(line: 0, scope: !4284, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 66, column: 12, scope: !4273, inlinedAt: !4352)
!4355 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4354)
!4356 = !DILocation(line: 66, column: 9, scope: !4273, inlinedAt: !4352)
!4357 = !DILocation(line: 0, scope: !4284, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 211, column: 22, scope: !4282)
!4359 = !DILocation(line: 50, column: 7, scope: !4293, inlinedAt: !4358)
!4360 = !DILocation(line: 212, column: 11, scope: !4282)
!4361 = !DILocation(line: 0, scope: !4282)
!4362 = !DILocation(line: 228, column: 10, scope: !4203)
!4363 = !DILocation(line: 229, column: 11, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4203, file: !4184, line: 229, column: 11)
!4365 = !DILocation(line: 229, column: 11, scope: !4203)
!4366 = !DILocation(line: 223, column: 16, scope: !4282)
!4367 = !DILocation(line: 224, column: 22, scope: !4282)
!4368 = !DILocation(line: 100, column: 11, scope: !4230)
!4369 = !DILocation(line: 92, column: 16, scope: !4183)
!4370 = !DILocation(line: 233, column: 8, scope: !4183)
!4371 = !DILocation(line: 234, column: 3, scope: !4183)
!4372 = !DILocation(line: 235, column: 1, scope: !4183)
!4373 = !DISubprogram(name: "strtoumax", scope: !4374, file: !4374, line: 301, type: !4375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4374 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!1012, !1107, !2003, !70}
!4377 = distinct !DISubprogram(name: "rpl_fopen", scope: !1016, file: !1016, line: 46, type: !4378, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !4414)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!4380, !107, !107}
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4382)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4383)
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4382, file: !165, line: 51, baseType: !70, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4382, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4382, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4382, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4382, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4382, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4382, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4382, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4382, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4382, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4382, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4382, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4382, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4382, file: !165, line: 70, baseType: !4398, size: 64, offset: 832)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4382, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4382, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4382, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4382, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4382, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4382, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4382, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4382, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4382, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4382, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4382, file: !165, line: 93, baseType: !4398, size: 64, offset: 1344)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4382, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4382, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4382, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4382, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4424, !4426, !4427, !4432, !4435, !4436}
!4415 = !DILocalVariable(name: "filename", arg: 1, scope: !4377, file: !1016, line: 46, type: !107)
!4416 = !DILocalVariable(name: "mode", arg: 2, scope: !4377, file: !1016, line: 46, type: !107)
!4417 = !DILocalVariable(name: "open_direction", scope: !4377, file: !1016, line: 54, type: !70)
!4418 = !DILocalVariable(name: "open_flags", scope: !4377, file: !1016, line: 55, type: !70)
!4419 = !DILocalVariable(name: "open_flags_gnu", scope: !4377, file: !1016, line: 57, type: !148)
!4420 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4377, file: !1016, line: 59, type: !4421)
!4421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4422)
!4422 = !{!4423}
!4423 = !DISubrange(count: 81)
!4424 = !DILocalVariable(name: "p", scope: !4425, file: !1016, line: 62, type: !107)
!4425 = distinct !DILexicalBlock(scope: !4377, file: !1016, line: 61, column: 3)
!4426 = !DILocalVariable(name: "q", scope: !4425, file: !1016, line: 64, type: !101)
!4427 = !DILocalVariable(name: "len", scope: !4428, file: !1016, line: 128, type: !104)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !1016, line: 127, column: 9)
!4429 = distinct !DILexicalBlock(scope: !4430, file: !1016, line: 68, column: 7)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !1016, line: 67, column: 5)
!4431 = distinct !DILexicalBlock(scope: !4425, file: !1016, line: 67, column: 5)
!4432 = !DILocalVariable(name: "fd", scope: !4433, file: !1016, line: 199, type: !70)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !1016, line: 198, column: 5)
!4434 = distinct !DILexicalBlock(scope: !4377, file: !1016, line: 197, column: 7)
!4435 = !DILocalVariable(name: "fp", scope: !4433, file: !1016, line: 204, type: !4380)
!4436 = !DILocalVariable(name: "saved_errno", scope: !4437, file: !1016, line: 207, type: !70)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !1016, line: 206, column: 9)
!4438 = distinct !DILexicalBlock(scope: !4433, file: !1016, line: 205, column: 11)
!4439 = !DILocation(line: 0, scope: !4377)
!4440 = !DILocation(line: 59, column: 3, scope: !4377)
!4441 = !DILocation(line: 59, column: 8, scope: !4377)
!4442 = !DILocation(line: 0, scope: !4425)
!4443 = !DILocation(line: 67, column: 12, scope: !4430)
!4444 = !DILocation(line: 67, column: 15, scope: !4430)
!4445 = !DILocation(line: 67, column: 5, scope: !4431)
!4446 = !DILocation(line: 138, column: 8, scope: !4425)
!4447 = !DILocation(line: 197, column: 7, scope: !4377)
!4448 = !DILocation(line: 69, column: 9, scope: !4429)
!4449 = !DILocation(line: 74, column: 19, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !1016, line: 74, column: 17)
!4451 = distinct !DILexicalBlock(scope: !4429, file: !1016, line: 70, column: 11)
!4452 = !DILocation(line: 74, column: 17, scope: !4451)
!4453 = !DILocation(line: 75, column: 17, scope: !4450)
!4454 = !DILocation(line: 75, column: 20, scope: !4450)
!4455 = !DILocation(line: 75, column: 15, scope: !4450)
!4456 = !DILocation(line: 80, column: 24, scope: !4451)
!4457 = !DILocation(line: 82, column: 19, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4451, file: !1016, line: 82, column: 17)
!4459 = !DILocation(line: 82, column: 17, scope: !4451)
!4460 = !DILocation(line: 83, column: 17, scope: !4458)
!4461 = !DILocation(line: 83, column: 20, scope: !4458)
!4462 = !DILocation(line: 83, column: 15, scope: !4458)
!4463 = !DILocation(line: 88, column: 24, scope: !4451)
!4464 = !DILocation(line: 90, column: 19, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4451, file: !1016, line: 90, column: 17)
!4466 = !DILocation(line: 90, column: 17, scope: !4451)
!4467 = !DILocation(line: 91, column: 17, scope: !4465)
!4468 = !DILocation(line: 91, column: 20, scope: !4465)
!4469 = !DILocation(line: 91, column: 15, scope: !4465)
!4470 = !DILocation(line: 100, column: 19, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4451, file: !1016, line: 100, column: 17)
!4472 = !DILocation(line: 100, column: 17, scope: !4451)
!4473 = !DILocation(line: 101, column: 17, scope: !4471)
!4474 = !DILocation(line: 101, column: 20, scope: !4471)
!4475 = !DILocation(line: 101, column: 15, scope: !4471)
!4476 = !DILocation(line: 107, column: 19, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4451, file: !1016, line: 107, column: 17)
!4478 = !DILocation(line: 107, column: 17, scope: !4451)
!4479 = !DILocation(line: 108, column: 17, scope: !4477)
!4480 = !DILocation(line: 108, column: 20, scope: !4477)
!4481 = !DILocation(line: 108, column: 15, scope: !4477)
!4482 = !DILocation(line: 113, column: 24, scope: !4451)
!4483 = !DILocation(line: 115, column: 13, scope: !4451)
!4484 = !DILocation(line: 117, column: 24, scope: !4451)
!4485 = !DILocation(line: 119, column: 13, scope: !4451)
!4486 = !DILocation(line: 128, column: 24, scope: !4428)
!4487 = !DILocation(line: 0, scope: !4428)
!4488 = !DILocation(line: 129, column: 48, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4428, file: !1016, line: 129, column: 15)
!4490 = !DILocation(line: 129, column: 15, scope: !4428)
!4491 = !DILocalVariable(name: "__dest", arg: 1, scope: !4492, file: !2164, line: 26, type: !4009)
!4492 = distinct !DISubprogram(name: "memcpy", scope: !2164, file: !2164, line: 26, type: !4007, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !4493)
!4493 = !{!4491, !4494, !4495}
!4494 = !DILocalVariable(name: "__src", arg: 2, scope: !4492, file: !2164, line: 26, type: !1265)
!4495 = !DILocalVariable(name: "__len", arg: 3, scope: !4492, file: !2164, line: 26, type: !104)
!4496 = !DILocation(line: 0, scope: !4492, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 131, column: 11, scope: !4428)
!4498 = !DILocation(line: 29, column: 10, scope: !4492, inlinedAt: !4497)
!4499 = !DILocation(line: 132, column: 13, scope: !4428)
!4500 = !DILocation(line: 135, column: 9, scope: !4429)
!4501 = !DILocation(line: 67, column: 25, scope: !4430)
!4502 = distinct !{!4502, !4445, !4503, !1164}
!4503 = !DILocation(line: 136, column: 7, scope: !4431)
!4504 = !DILocation(line: 197, column: 7, scope: !4434)
!4505 = !DILocation(line: 199, column: 47, scope: !4433)
!4506 = !DILocation(line: 199, column: 16, scope: !4433)
!4507 = !DILocation(line: 0, scope: !4433)
!4508 = !DILocation(line: 201, column: 14, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4433, file: !1016, line: 201, column: 11)
!4510 = !DILocation(line: 201, column: 11, scope: !4433)
!4511 = !DILocation(line: 204, column: 18, scope: !4433)
!4512 = !DILocation(line: 205, column: 14, scope: !4438)
!4513 = !DILocation(line: 205, column: 11, scope: !4433)
!4514 = !DILocation(line: 207, column: 29, scope: !4437)
!4515 = !DILocation(line: 0, scope: !4437)
!4516 = !DILocation(line: 208, column: 11, scope: !4437)
!4517 = !DILocation(line: 209, column: 17, scope: !4437)
!4518 = !DILocation(line: 210, column: 9, scope: !4437)
!4519 = !DILocalVariable(name: "filename", arg: 1, scope: !4520, file: !1016, line: 30, type: !107)
!4520 = distinct !DISubprogram(name: "orig_fopen", scope: !1016, file: !1016, line: 30, type: !4378, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !4521)
!4521 = !{!4519, !4522}
!4522 = !DILocalVariable(name: "mode", arg: 2, scope: !4520, file: !1016, line: 30, type: !107)
!4523 = !DILocation(line: 0, scope: !4520, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 219, column: 10, scope: !4377)
!4525 = !DILocation(line: 32, column: 10, scope: !4520, inlinedAt: !4524)
!4526 = !DILocation(line: 219, column: 3, scope: !4377)
!4527 = !DILocation(line: 220, column: 1, scope: !4377)
!4528 = !DISubprogram(name: "open", scope: !1531, file: !1531, line: 181, type: !4529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!70, !107, !70, null}
!4531 = !DISubprogram(name: "fdopen", scope: !1112, file: !1112, line: 293, type: !4532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!4380, !70, !107}
!4534 = !DISubprogram(name: "close", scope: !1382, file: !1382, line: 358, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4535 = !DISubprogram(name: "fopen", scope: !1112, file: !1112, line: 258, type: !4536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!4380, !1107, !1107}
!4538 = distinct !DISubprogram(name: "close_stream", scope: !1018, file: !1018, line: 55, type: !4539, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1017, retainedNodes: !4575)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!70, !4541}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4543)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4544)
!4544 = !{!4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4543, file: !165, line: 51, baseType: !70, size: 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4543, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4543, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4543, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4543, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4543, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4543, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4543, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4543, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4543, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4543, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4543, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4543, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4543, file: !165, line: 70, baseType: !4559, size: 64, offset: 832)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4543, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4543, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4543, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4543, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4543, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4543, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4543, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4543, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4543, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4543, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4543, file: !165, line: 93, baseType: !4559, size: 64, offset: 1344)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4543, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4543, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4543, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4543, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4575 = !{!4576, !4577, !4579, !4580}
!4576 = !DILocalVariable(name: "stream", arg: 1, scope: !4538, file: !1018, line: 55, type: !4541)
!4577 = !DILocalVariable(name: "some_pending", scope: !4538, file: !1018, line: 57, type: !4578)
!4578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!4579 = !DILocalVariable(name: "prev_fail", scope: !4538, file: !1018, line: 58, type: !4578)
!4580 = !DILocalVariable(name: "fclose_fail", scope: !4538, file: !1018, line: 59, type: !4578)
!4581 = !DILocation(line: 0, scope: !4538)
!4582 = !DILocation(line: 57, column: 30, scope: !4538)
!4583 = !DILocalVariable(name: "__stream", arg: 1, scope: !4584, file: !1499, line: 135, type: !4541)
!4584 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1499, file: !1499, line: 135, type: !4539, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1017, retainedNodes: !4585)
!4585 = !{!4583}
!4586 = !DILocation(line: 0, scope: !4584, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 58, column: 27, scope: !4538)
!4588 = !DILocation(line: 137, column: 10, scope: !4584, inlinedAt: !4587)
!4589 = !{!1508, !1118, i64 0}
!4590 = !DILocation(line: 58, column: 43, scope: !4538)
!4591 = !DILocation(line: 59, column: 29, scope: !4538)
!4592 = !DILocation(line: 59, column: 45, scope: !4538)
!4593 = !DILocation(line: 69, column: 17, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4538, file: !1018, line: 69, column: 7)
!4595 = !DILocation(line: 57, column: 50, scope: !4538)
!4596 = !DILocation(line: 69, column: 33, scope: !4594)
!4597 = !DILocation(line: 69, column: 53, scope: !4594)
!4598 = !DILocation(line: 69, column: 59, scope: !4594)
!4599 = !DILocation(line: 69, column: 7, scope: !4538)
!4600 = !DILocation(line: 71, column: 11, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4594, file: !1018, line: 70, column: 5)
!4602 = !DILocation(line: 72, column: 9, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4601, file: !1018, line: 71, column: 11)
!4604 = !DILocation(line: 72, column: 15, scope: !4603)
!4605 = !DILocation(line: 77, column: 1, scope: !4538)
!4606 = !DISubprogram(name: "__fpending", scope: !4607, file: !4607, line: 75, type: !4608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4607 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!104, !4541}
!4610 = distinct !DISubprogram(name: "rpl_fclose", scope: !1020, file: !1020, line: 58, type: !4611, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !4647)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!70, !4613}
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4615)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4616)
!4616 = !{!4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4615, file: !165, line: 51, baseType: !70, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4615, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4615, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4615, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4615, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4615, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4615, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4615, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4615, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4615, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4615, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4615, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4615, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4615, file: !165, line: 70, baseType: !4631, size: 64, offset: 832)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4615, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4615, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4615, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4615, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4615, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4615, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4615, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4615, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4615, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4615, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4615, file: !165, line: 93, baseType: !4631, size: 64, offset: 1344)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4615, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4615, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4615, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4615, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4647 = !{!4648, !4649, !4650, !4651}
!4648 = !DILocalVariable(name: "fp", arg: 1, scope: !4610, file: !1020, line: 58, type: !4613)
!4649 = !DILocalVariable(name: "saved_errno", scope: !4610, file: !1020, line: 60, type: !70)
!4650 = !DILocalVariable(name: "fd", scope: !4610, file: !1020, line: 63, type: !70)
!4651 = !DILocalVariable(name: "result", scope: !4610, file: !1020, line: 74, type: !70)
!4652 = !DILocation(line: 0, scope: !4610)
!4653 = !DILocation(line: 63, column: 12, scope: !4610)
!4654 = !DILocation(line: 64, column: 10, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4610, file: !1020, line: 64, column: 7)
!4656 = !DILocation(line: 64, column: 7, scope: !4610)
!4657 = !DILocation(line: 65, column: 12, scope: !4655)
!4658 = !DILocation(line: 65, column: 5, scope: !4655)
!4659 = !DILocation(line: 70, column: 9, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4610, file: !1020, line: 70, column: 7)
!4661 = !DILocation(line: 70, column: 23, scope: !4660)
!4662 = !DILocation(line: 70, column: 33, scope: !4660)
!4663 = !DILocation(line: 70, column: 26, scope: !4660)
!4664 = !DILocation(line: 70, column: 59, scope: !4660)
!4665 = !DILocation(line: 71, column: 7, scope: !4660)
!4666 = !DILocation(line: 71, column: 10, scope: !4660)
!4667 = !DILocation(line: 70, column: 7, scope: !4610)
!4668 = !DILocation(line: 100, column: 12, scope: !4610)
!4669 = !DILocation(line: 105, column: 7, scope: !4610)
!4670 = !DILocation(line: 72, column: 19, scope: !4660)
!4671 = !DILocation(line: 105, column: 19, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4610, file: !1020, line: 105, column: 7)
!4673 = !DILocation(line: 107, column: 13, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4672, file: !1020, line: 106, column: 5)
!4675 = !DILocation(line: 109, column: 5, scope: !4674)
!4676 = !DILocation(line: 112, column: 1, scope: !4610)
!4677 = !DISubprogram(name: "fileno", scope: !1112, file: !1112, line: 809, type: !4611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4678 = !DISubprogram(name: "fclose", scope: !1112, file: !1112, line: 178, type: !4611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4679 = !DISubprogram(name: "__freading", scope: !4607, file: !4607, line: 51, type: !4611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4680 = !DISubprogram(name: "lseek", scope: !1382, file: !1382, line: 339, type: !4681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!187, !70, !187, !70}
!4683 = distinct !DISubprogram(name: "rpl_fflush", scope: !1022, file: !1022, line: 130, type: !4684, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4720)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!70, !4686}
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4688)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4689)
!4689 = !{!4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4688, file: !165, line: 51, baseType: !70, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4688, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4688, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4688, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4688, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4688, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4688, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4688, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4688, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4688, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4688, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4688, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4688, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4688, file: !165, line: 70, baseType: !4704, size: 64, offset: 832)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4688, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4688, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4688, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4688, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4688, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4688, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4688, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4688, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4688, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4688, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4688, file: !165, line: 93, baseType: !4704, size: 64, offset: 1344)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4688, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4688, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4688, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4688, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4720 = !{!4721}
!4721 = !DILocalVariable(name: "stream", arg: 1, scope: !4683, file: !1022, line: 130, type: !4686)
!4722 = !DILocation(line: 0, scope: !4683)
!4723 = !DILocation(line: 151, column: 14, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4683, file: !1022, line: 151, column: 7)
!4725 = !DILocation(line: 151, column: 22, scope: !4724)
!4726 = !DILocation(line: 151, column: 27, scope: !4724)
!4727 = !DILocation(line: 151, column: 7, scope: !4683)
!4728 = !DILocation(line: 152, column: 12, scope: !4724)
!4729 = !DILocation(line: 152, column: 5, scope: !4724)
!4730 = !DILocalVariable(name: "fp", arg: 1, scope: !4731, file: !1022, line: 42, type: !4686)
!4731 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1022, file: !1022, line: 42, type: !4732, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4734)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{null, !4686}
!4734 = !{!4730}
!4735 = !DILocation(line: 0, scope: !4731, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 157, column: 3, scope: !4683)
!4737 = !DILocation(line: 44, column: 12, scope: !4738, inlinedAt: !4736)
!4738 = distinct !DILexicalBlock(scope: !4731, file: !1022, line: 44, column: 7)
!4739 = !DILocation(line: 44, column: 19, scope: !4738, inlinedAt: !4736)
!4740 = !DILocation(line: 44, column: 7, scope: !4731, inlinedAt: !4736)
!4741 = !DILocation(line: 46, column: 5, scope: !4738, inlinedAt: !4736)
!4742 = !DILocation(line: 159, column: 10, scope: !4683)
!4743 = !DILocation(line: 159, column: 3, scope: !4683)
!4744 = !DILocation(line: 236, column: 1, scope: !4683)
!4745 = !DISubprogram(name: "fflush", scope: !1112, file: !1112, line: 230, type: !4684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4746 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1024, file: !1024, line: 28, type: !4747, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1023, retainedNodes: !4784)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!70, !4749, !4783, !70}
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4751)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4752)
!4752 = !{!4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4751, file: !165, line: 51, baseType: !70, size: 32)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4751, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4751, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4751, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4751, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4751, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4751, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4751, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4751, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4751, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4751, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4751, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4751, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4751, file: !165, line: 70, baseType: !4767, size: 64, offset: 832)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4751, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4751, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4751, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4751, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4751, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4751, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4751, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4751, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4751, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4751, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4751, file: !165, line: 93, baseType: !4767, size: 64, offset: 1344)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4751, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4751, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4751, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4751, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4783 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1112, line: 63, baseType: !187)
!4784 = !{!4785, !4786, !4787, !4788}
!4785 = !DILocalVariable(name: "fp", arg: 1, scope: !4746, file: !1024, line: 28, type: !4749)
!4786 = !DILocalVariable(name: "offset", arg: 2, scope: !4746, file: !1024, line: 28, type: !4783)
!4787 = !DILocalVariable(name: "whence", arg: 3, scope: !4746, file: !1024, line: 28, type: !70)
!4788 = !DILocalVariable(name: "pos", scope: !4789, file: !1024, line: 123, type: !4783)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !1024, line: 119, column: 5)
!4790 = distinct !DILexicalBlock(scope: !4746, file: !1024, line: 55, column: 7)
!4791 = !DILocation(line: 0, scope: !4746)
!4792 = !DILocation(line: 55, column: 12, scope: !4790)
!4793 = !{!1508, !1055, i64 16}
!4794 = !DILocation(line: 55, column: 33, scope: !4790)
!4795 = !{!1508, !1055, i64 8}
!4796 = !DILocation(line: 55, column: 25, scope: !4790)
!4797 = !DILocation(line: 56, column: 7, scope: !4790)
!4798 = !DILocation(line: 56, column: 15, scope: !4790)
!4799 = !DILocation(line: 56, column: 37, scope: !4790)
!4800 = !{!1508, !1055, i64 32}
!4801 = !DILocation(line: 56, column: 29, scope: !4790)
!4802 = !DILocation(line: 57, column: 7, scope: !4790)
!4803 = !DILocation(line: 57, column: 15, scope: !4790)
!4804 = !{!1508, !1055, i64 72}
!4805 = !DILocation(line: 57, column: 29, scope: !4790)
!4806 = !DILocation(line: 55, column: 7, scope: !4746)
!4807 = !DILocation(line: 123, column: 26, scope: !4789)
!4808 = !DILocation(line: 123, column: 19, scope: !4789)
!4809 = !DILocation(line: 0, scope: !4789)
!4810 = !DILocation(line: 124, column: 15, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4789, file: !1024, line: 124, column: 11)
!4812 = !DILocation(line: 124, column: 11, scope: !4789)
!4813 = !DILocation(line: 135, column: 19, scope: !4789)
!4814 = !DILocation(line: 136, column: 12, scope: !4789)
!4815 = !DILocation(line: 136, column: 20, scope: !4789)
!4816 = !{!1508, !1509, i64 144}
!4817 = !DILocation(line: 167, column: 7, scope: !4789)
!4818 = !DILocation(line: 169, column: 10, scope: !4746)
!4819 = !DILocation(line: 169, column: 3, scope: !4746)
!4820 = !DILocation(line: 170, column: 1, scope: !4746)
!4821 = !DISubprogram(name: "fseeko", scope: !1112, file: !1112, line: 736, type: !4822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!70, !4749, !187, !70}
!4824 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !707, file: !707, line: 100, type: !4825, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !4828)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!104, !2182, !107, !104, !4827}
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!4828 = !{!4829, !4830, !4831, !4832, !4833}
!4829 = !DILocalVariable(name: "pwc", arg: 1, scope: !4824, file: !707, line: 100, type: !2182)
!4830 = !DILocalVariable(name: "s", arg: 2, scope: !4824, file: !707, line: 100, type: !107)
!4831 = !DILocalVariable(name: "n", arg: 3, scope: !4824, file: !707, line: 100, type: !104)
!4832 = !DILocalVariable(name: "ps", arg: 4, scope: !4824, file: !707, line: 100, type: !4827)
!4833 = !DILocalVariable(name: "ret", scope: !4824, file: !707, line: 130, type: !104)
!4834 = !DILocation(line: 0, scope: !4824)
!4835 = !DILocation(line: 105, column: 9, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4824, file: !707, line: 105, column: 7)
!4837 = !DILocation(line: 105, column: 7, scope: !4824)
!4838 = !DILocation(line: 117, column: 10, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4824, file: !707, line: 117, column: 7)
!4840 = !DILocation(line: 117, column: 7, scope: !4824)
!4841 = !DILocation(line: 130, column: 16, scope: !4824)
!4842 = !DILocation(line: 135, column: 11, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4824, file: !707, line: 135, column: 7)
!4844 = !DILocation(line: 135, column: 25, scope: !4843)
!4845 = !DILocation(line: 135, column: 30, scope: !4843)
!4846 = !DILocation(line: 135, column: 7, scope: !4824)
!4847 = !DILocalVariable(name: "ps", arg: 1, scope: !4848, file: !2155, line: 1135, type: !4827)
!4848 = distinct !DISubprogram(name: "mbszero", scope: !2155, file: !2155, line: 1135, type: !4849, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !4851)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{null, !4827}
!4851 = !{!4847}
!4852 = !DILocation(line: 0, scope: !4848, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 137, column: 5, scope: !4843)
!4854 = !DILocalVariable(name: "__dest", arg: 1, scope: !4855, file: !2164, line: 57, type: !102)
!4855 = distinct !DISubprogram(name: "memset", scope: !2164, file: !2164, line: 57, type: !2165, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !4856)
!4856 = !{!4854, !4857, !4858}
!4857 = !DILocalVariable(name: "__ch", arg: 2, scope: !4855, file: !2164, line: 57, type: !70)
!4858 = !DILocalVariable(name: "__len", arg: 3, scope: !4855, file: !2164, line: 57, type: !104)
!4859 = !DILocation(line: 0, scope: !4855, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 1137, column: 3, scope: !4848, inlinedAt: !4853)
!4861 = !DILocation(line: 59, column: 10, scope: !4855, inlinedAt: !4860)
!4862 = !DILocation(line: 137, column: 5, scope: !4843)
!4863 = !DILocation(line: 138, column: 11, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4824, file: !707, line: 138, column: 7)
!4865 = !DILocation(line: 138, column: 7, scope: !4824)
!4866 = !DILocation(line: 139, column: 5, scope: !4864)
!4867 = !DILocation(line: 143, column: 26, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4824, file: !707, line: 143, column: 7)
!4869 = !DILocation(line: 143, column: 41, scope: !4868)
!4870 = !DILocation(line: 143, column: 7, scope: !4824)
!4871 = !DILocation(line: 145, column: 15, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !707, line: 145, column: 11)
!4873 = distinct !DILexicalBlock(scope: !4868, file: !707, line: 144, column: 5)
!4874 = !DILocation(line: 145, column: 11, scope: !4873)
!4875 = !DILocation(line: 146, column: 32, scope: !4872)
!4876 = !DILocation(line: 146, column: 16, scope: !4872)
!4877 = !DILocation(line: 146, column: 14, scope: !4872)
!4878 = !DILocation(line: 146, column: 9, scope: !4872)
!4879 = !DILocation(line: 286, column: 1, scope: !4824)
!4880 = !DISubprogram(name: "mbsinit", scope: !4881, file: !4881, line: 293, type: !4882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4881 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!70, !4884}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!4886 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1026, file: !1026, line: 27, type: !3648, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4887)
!4887 = !{!4888, !4889, !4890, !4891}
!4888 = !DILocalVariable(name: "ptr", arg: 1, scope: !4886, file: !1026, line: 27, type: !102)
!4889 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4886, file: !1026, line: 27, type: !104)
!4890 = !DILocalVariable(name: "size", arg: 3, scope: !4886, file: !1026, line: 27, type: !104)
!4891 = !DILocalVariable(name: "nbytes", scope: !4886, file: !1026, line: 29, type: !104)
!4892 = !DILocation(line: 0, scope: !4886)
!4893 = !DILocation(line: 30, column: 7, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4886, file: !1026, line: 30, column: 7)
!4895 = !DILocalVariable(name: "ptr", arg: 1, scope: !4896, file: !3740, line: 2057, type: !102)
!4896 = distinct !DISubprogram(name: "rpl_realloc", scope: !3740, file: !3740, line: 2057, type: !3732, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4897)
!4897 = !{!4895, !4898}
!4898 = !DILocalVariable(name: "size", arg: 2, scope: !4896, file: !3740, line: 2057, type: !104)
!4899 = !DILocation(line: 0, scope: !4896, inlinedAt: !4900)
!4900 = distinct !DILocation(line: 37, column: 10, scope: !4886)
!4901 = !DILocation(line: 2059, column: 24, scope: !4896, inlinedAt: !4900)
!4902 = !DILocation(line: 2059, column: 10, scope: !4896, inlinedAt: !4900)
!4903 = !DILocation(line: 37, column: 3, scope: !4886)
!4904 = !DILocation(line: 32, column: 7, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4894, file: !1026, line: 31, column: 5)
!4906 = !DILocation(line: 32, column: 13, scope: !4905)
!4907 = !DILocation(line: 33, column: 7, scope: !4905)
!4908 = !DILocation(line: 38, column: 1, scope: !4886)
!4909 = distinct !DISubprogram(name: "hard_locale", scope: !725, file: !725, line: 28, type: !1646, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4910)
!4910 = !{!4911, !4912}
!4911 = !DILocalVariable(name: "category", arg: 1, scope: !4909, file: !725, line: 28, type: !70)
!4912 = !DILocalVariable(name: "locale", scope: !4909, file: !725, line: 30, type: !4913)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4914)
!4914 = !{!4915}
!4915 = !DISubrange(count: 257)
!4916 = !DILocation(line: 0, scope: !4909)
!4917 = !DILocation(line: 30, column: 3, scope: !4909)
!4918 = !DILocation(line: 30, column: 8, scope: !4909)
!4919 = !DILocation(line: 32, column: 7, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4909, file: !725, line: 32, column: 7)
!4921 = !DILocation(line: 32, column: 7, scope: !4909)
!4922 = !DILocalVariable(name: "__s1", arg: 1, scope: !4923, file: !1130, line: 1359, type: !107)
!4923 = distinct !DISubprogram(name: "streq", scope: !1130, file: !1130, line: 1359, type: !1131, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4924)
!4924 = !{!4922, !4925}
!4925 = !DILocalVariable(name: "__s2", arg: 2, scope: !4923, file: !1130, line: 1359, type: !107)
!4926 = !DILocation(line: 0, scope: !4923, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 35, column: 9, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4909, file: !725, line: 35, column: 7)
!4929 = !DILocation(line: 1361, column: 11, scope: !4923, inlinedAt: !4927)
!4930 = !DILocation(line: 35, column: 29, scope: !4928)
!4931 = !DILocation(line: 0, scope: !4923, inlinedAt: !4932)
!4932 = distinct !DILocation(line: 35, column: 32, scope: !4928)
!4933 = !DILocation(line: 1361, column: 11, scope: !4923, inlinedAt: !4932)
!4934 = !DILocation(line: 1361, column: 10, scope: !4923, inlinedAt: !4932)
!4935 = !DILocation(line: 35, column: 7, scope: !4909)
!4936 = !DILocation(line: 46, column: 3, scope: !4909)
!4937 = !DILocation(line: 47, column: 1, scope: !4909)
!4938 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1033, file: !1033, line: 154, type: !4939, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4941)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!70, !70, !101, !104}
!4941 = !{!4942, !4943, !4944}
!4942 = !DILocalVariable(name: "category", arg: 1, scope: !4938, file: !1033, line: 154, type: !70)
!4943 = !DILocalVariable(name: "buf", arg: 2, scope: !4938, file: !1033, line: 154, type: !101)
!4944 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4938, file: !1033, line: 154, type: !104)
!4945 = !DILocation(line: 0, scope: !4938)
!4946 = !DILocation(line: 159, column: 10, scope: !4938)
!4947 = !DILocation(line: 159, column: 3, scope: !4938)
!4948 = distinct !DISubprogram(name: "setlocale_null", scope: !1033, file: !1033, line: 186, type: !4949, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4951)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!107, !70}
!4951 = !{!4952}
!4952 = !DILocalVariable(name: "category", arg: 1, scope: !4948, file: !1033, line: 186, type: !70)
!4953 = !DILocation(line: 0, scope: !4948)
!4954 = !DILocation(line: 189, column: 10, scope: !4948)
!4955 = !DILocation(line: 189, column: 3, scope: !4948)
!4956 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1035, file: !1035, line: 35, type: !4949, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4957)
!4957 = !{!4958, !4959}
!4958 = !DILocalVariable(name: "category", arg: 1, scope: !4956, file: !1035, line: 35, type: !70)
!4959 = !DILocalVariable(name: "result", scope: !4956, file: !1035, line: 37, type: !107)
!4960 = !DILocation(line: 0, scope: !4956)
!4961 = !DILocation(line: 37, column: 24, scope: !4956)
!4962 = !DILocation(line: 62, column: 3, scope: !4956)
!4963 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1035, file: !1035, line: 66, type: !4939, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4964)
!4964 = !{!4965, !4966, !4967, !4968, !4969}
!4965 = !DILocalVariable(name: "category", arg: 1, scope: !4963, file: !1035, line: 66, type: !70)
!4966 = !DILocalVariable(name: "buf", arg: 2, scope: !4963, file: !1035, line: 66, type: !101)
!4967 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4963, file: !1035, line: 66, type: !104)
!4968 = !DILocalVariable(name: "result", scope: !4963, file: !1035, line: 111, type: !107)
!4969 = !DILocalVariable(name: "length", scope: !4970, file: !1035, line: 125, type: !104)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !1035, line: 124, column: 5)
!4971 = distinct !DILexicalBlock(scope: !4963, file: !1035, line: 113, column: 7)
!4972 = !DILocation(line: 0, scope: !4963)
!4973 = !DILocation(line: 0, scope: !4956, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 111, column: 24, scope: !4963)
!4975 = !DILocation(line: 37, column: 24, scope: !4956, inlinedAt: !4974)
!4976 = !DILocation(line: 113, column: 14, scope: !4971)
!4977 = !DILocation(line: 113, column: 7, scope: !4963)
!4978 = !DILocation(line: 116, column: 19, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !1035, line: 116, column: 11)
!4980 = distinct !DILexicalBlock(scope: !4971, file: !1035, line: 114, column: 5)
!4981 = !DILocation(line: 116, column: 11, scope: !4980)
!4982 = !DILocation(line: 120, column: 16, scope: !4979)
!4983 = !DILocation(line: 120, column: 9, scope: !4979)
!4984 = !DILocation(line: 125, column: 23, scope: !4970)
!4985 = !DILocation(line: 0, scope: !4970)
!4986 = !DILocation(line: 126, column: 18, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4970, file: !1035, line: 126, column: 11)
!4988 = !DILocation(line: 126, column: 11, scope: !4970)
!4989 = !DILocation(line: 128, column: 39, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4987, file: !1035, line: 127, column: 9)
!4991 = !DILocalVariable(name: "__dest", arg: 1, scope: !4992, file: !2164, line: 26, type: !4009)
!4992 = distinct !DISubprogram(name: "memcpy", scope: !2164, file: !2164, line: 26, type: !4007, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4993)
!4993 = !{!4991, !4994, !4995}
!4994 = !DILocalVariable(name: "__src", arg: 2, scope: !4992, file: !2164, line: 26, type: !1265)
!4995 = !DILocalVariable(name: "__len", arg: 3, scope: !4992, file: !2164, line: 26, type: !104)
!4996 = !DILocation(line: 0, scope: !4992, inlinedAt: !4997)
!4997 = distinct !DILocation(line: 128, column: 11, scope: !4990)
!4998 = !DILocation(line: 29, column: 10, scope: !4992, inlinedAt: !4997)
!4999 = !DILocation(line: 129, column: 11, scope: !4990)
!5000 = !DILocation(line: 133, column: 23, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !1035, line: 133, column: 15)
!5002 = distinct !DILexicalBlock(scope: !4987, file: !1035, line: 132, column: 9)
!5003 = !DILocation(line: 133, column: 15, scope: !5002)
!5004 = !DILocation(line: 138, column: 44, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5001, file: !1035, line: 134, column: 13)
!5006 = !DILocation(line: 0, scope: !4992, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 138, column: 15, scope: !5005)
!5008 = !DILocation(line: 29, column: 10, scope: !4992, inlinedAt: !5007)
!5009 = !DILocation(line: 139, column: 15, scope: !5005)
!5010 = !DILocation(line: 139, column: 32, scope: !5005)
!5011 = !DILocation(line: 140, column: 13, scope: !5005)
!5012 = !DILocation(line: 0, scope: !4971)
!5013 = !DILocation(line: 145, column: 1, scope: !4963)
