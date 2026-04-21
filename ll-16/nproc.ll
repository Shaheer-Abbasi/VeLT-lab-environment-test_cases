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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !411
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !401
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !403
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !405
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !407
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !409
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !413
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !415
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !420
@.str.43 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1, !dbg !425
@.str.1.44 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1, !dbg !428
@.str.2.45 = private unnamed_addr constant [18 x i8] c"/proc/self/cgroup\00", align 1, !dbg !430
@.str.3.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !432
@.str.4.47 = private unnamed_addr constant [5 x i8] c"0::/\00", align 1, !dbg !434
@.str.5.52 = private unnamed_addr constant [13 x i8] c"%s%s/cpu.max\00", align 1, !dbg !436
@.str.6.53 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !441
@.str.7.54 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1, !dbg !443
@.str.8.48 = private unnamed_addr constant [34 x i8] c"/sys/fs/cgroup/cgroup.controllers\00", align 1, !dbg !445
@.str.9.49 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1, !dbg !450
@.str.10.50 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1, !dbg !452
@.str.11.51 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1, !dbg !454
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !456
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !462
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !464
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !466
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !497
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !500
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !502
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !504
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !506
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !508
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !510
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !512
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !514
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !516
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.63, ptr @.str.1.64, ptr @.str.2.65, ptr @.str.3.66, ptr @.str.4.67, ptr @.str.5.68, ptr @.str.6.69, ptr @.str.7.70, ptr @.str.8.71, ptr @.str.9.72, ptr null], align 8, !dbg !518
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !543
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !557
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !595
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !602
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !559
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !604
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !547
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !564
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !566
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !568
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !570
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !572
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !610
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !613
@.str.2.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !615
@.str.3.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !617
@.str.4.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !619
@.str.5.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !621
@.str.6.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !626
@.str.7.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !628
@.str.8.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !630
@.str.9.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !632
@.str.10.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !637
@.str.11.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !642
@.str.12.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !647
@.str.13.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !649
@.str.14.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !654
@.str.15.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !659
@.str.16.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !664
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.102 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !669
@.str.18.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !671
@.str.19.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !673
@.str.20.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !675
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !677
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !679
@.str.23.106 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !681
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !686
@exit_failure = dso_local global i32 1, align 4, !dbg !694
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !700
@.str.1.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !703
@.str.2.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !705
@.str.122 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !707
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !710
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !713
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !728
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !731

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1049 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1053, metadata !DIExpression()), !dbg !1054
  %2 = icmp eq i32 %0, 0, !dbg !1055
  br i1 %2, label %8, label %3, !dbg !1057

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1058, !tbaa !1060
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !1058
  %6 = load ptr, ptr @program_name, align 8, !dbg !1058, !tbaa !1060
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !1058
  br label %33, !dbg !1058

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !1064
  %10 = load ptr, ptr @program_name, align 8, !dbg !1064, !tbaa !1060
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !1064
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1066
  %13 = load ptr, ptr @stdout, align 8, !dbg !1066, !tbaa !1060
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1066
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1067
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1067
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1068
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1068
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1069
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1069
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1070
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1070
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1071, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1083, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr poison, metadata !1083, metadata !DIExpression()), !dbg !1088
  tail call void @emit_bug_reporting_address() #39, !dbg !1090
  %19 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %19, metadata !1086, metadata !DIExpression()), !dbg !1088
  %20 = icmp eq ptr %19, null, !dbg !1092
  br i1 %20, label %28, label %21, !dbg !1094

21:                                               ; preds = %8
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #40, !dbg !1095
  %23 = icmp eq i32 %22, 0, !dbg !1095
  br i1 %23, label %28, label %24, !dbg !1096

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #39, !dbg !1097
  %26 = load ptr, ptr @stdout, align 8, !dbg !1097, !tbaa !1060
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !1097
  br label %28, !dbg !1099

28:                                               ; preds = %8, %21, %24
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1083, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1087, metadata !DIExpression()), !dbg !1088
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !1100
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #39, !dbg !1100
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #39, !dbg !1101
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #39, !dbg !1101
  br label %33

33:                                               ; preds = %28, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1102
  unreachable, !dbg !1102
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1103 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1108 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1114 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1117 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !138 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !142, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !1120
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1121, !tbaa !1122
  %3 = icmp eq i32 %2, -1, !dbg !1124
  br i1 %3, label %4, label %16, !dbg !1125

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #39, !dbg !1126
  call void @llvm.dbg.value(metadata ptr %5, metadata !144, metadata !DIExpression()), !dbg !1127
  %6 = icmp eq ptr %5, null, !dbg !1128
  br i1 %6, label %14, label %7, !dbg !1129

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1130, !tbaa !1131
  %9 = icmp eq i8 %8, 0, !dbg !1130
  br i1 %9, label %14, label %10, !dbg !1132

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1133, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !1139, metadata !DIExpression()), !dbg !1140
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #40, !dbg !1142
  %12 = icmp eq i32 %11, 0, !dbg !1143
  %13 = zext i1 %12 to i32, !dbg !1132
  br label %14, !dbg !1132

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1144, !tbaa !1122
  br label %16, !dbg !1145

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1146
  %18 = icmp eq i32 %17, 0, !dbg !1146
  br i1 %18, label %22, label %19, !dbg !1148

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1149, !tbaa !1060
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1149
  br label %122, !dbg !1151

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !147, metadata !DIExpression()), !dbg !1120
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #40, !dbg !1152
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1153
  call void @llvm.dbg.value(metadata ptr %24, metadata !149, metadata !DIExpression()), !dbg !1120
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1154
  call void @llvm.dbg.value(metadata ptr %25, metadata !150, metadata !DIExpression()), !dbg !1120
  %26 = icmp eq ptr %25, null, !dbg !1155
  br i1 %26, label %54, label %27, !dbg !1156

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1157
  br i1 %28, label %54, label %29, !dbg !1158

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !151, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !155, metadata !DIExpression()), !dbg !1159
  %30 = icmp ult ptr %24, %25, !dbg !1160
  br i1 %30, label %31, label %52, !dbg !1161

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1120
  %33 = load ptr, ptr %32, align 8, !tbaa !1060
  br label %34, !dbg !1161

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !151, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %36, metadata !155, metadata !DIExpression()), !dbg !1159
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1162
  call void @llvm.dbg.value(metadata ptr %37, metadata !151, metadata !DIExpression()), !dbg !1159
  %38 = load i8, ptr %35, align 1, !dbg !1162, !tbaa !1131
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1162
  %41 = load i16, ptr %40, align 2, !dbg !1162, !tbaa !1163
  %42 = freeze i16 %41, !dbg !1165
  %43 = lshr i16 %42, 13, !dbg !1165
  %44 = and i16 %43, 1, !dbg !1165
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %46, metadata !155, metadata !DIExpression()), !dbg !1159
  %47 = icmp ult ptr %37, %25, !dbg !1160
  %48 = icmp ult i64 %46, 2, !dbg !1167
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1167
  br i1 %49, label %34, label %50, !dbg !1161, !llvm.loop !1168

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1170
  br i1 %51, label %52, label %54, !dbg !1172

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1172

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1120
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !147, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %55, metadata !150, metadata !DIExpression()), !dbg !1120
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.19) #40, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %57, metadata !156, metadata !DIExpression()), !dbg !1120
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1174
  call void @llvm.dbg.value(metadata ptr %58, metadata !157, metadata !DIExpression()), !dbg !1120
  br label %59, !dbg !1175

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1120
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !147, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %60, metadata !157, metadata !DIExpression()), !dbg !1120
  %62 = load i8, ptr %60, align 1, !dbg !1176, !tbaa !1131
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1177

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1178
  %65 = load i8, ptr %64, align 1, !dbg !1181, !tbaa !1131
  %66 = icmp ne i8 %65, 45, !dbg !1182
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1183
  br label %68, !dbg !1183

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !147, metadata !DIExpression()), !dbg !1120
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1184
  %71 = load ptr, ptr %70, align 8, !dbg !1184, !tbaa !1060
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1184
  %74 = load i16, ptr %73, align 2, !dbg !1184, !tbaa !1163
  %75 = and i16 %74, 8192, !dbg !1184
  %76 = icmp eq i16 %75, 0, !dbg !1184
  br i1 %76, label %90, label %77, !dbg !1186

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1187
  br i1 %78, label %92, label %79, !dbg !1190

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1191
  %81 = load i8, ptr %80, align 1, !dbg !1191, !tbaa !1131
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1191
  %84 = load i16, ptr %83, align 2, !dbg !1191, !tbaa !1163
  %85 = and i16 %84, 8192, !dbg !1191
  %86 = icmp eq i16 %85, 0, !dbg !1191
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1192
  br i1 %89, label %90, label %92, !dbg !1192

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %91, metadata !157, metadata !DIExpression()), !dbg !1120
  br label %59, !dbg !1175, !llvm.loop !1194

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1196
  %94 = load ptr, ptr @stdout, align 8, !dbg !1196, !tbaa !1060
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1196
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !214, metadata !DIExpression()), !dbg !1120
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #40, !dbg !1217
  %97 = icmp eq i32 %96, 0, !dbg !1217
  br i1 %97, label %101, label %98, !dbg !1219

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #40, !dbg !1220
  %100 = icmp eq i32 %99, 0, !dbg !1220
  br i1 %100, label %101, label %104, !dbg !1221

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1222
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #39, !dbg !1222
  br label %107, !dbg !1224

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1225
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #39, !dbg !1225
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1227, !tbaa !1060
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %108), !dbg !1227
  %110 = load ptr, ptr @stdout, align 8, !dbg !1228, !tbaa !1060
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %110), !dbg !1228
  %112 = ptrtoint ptr %60 to i64, !dbg !1229
  %113 = sub i64 %112, %93, !dbg !1229
  %114 = load ptr, ptr @stdout, align 8, !dbg !1229, !tbaa !1060
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1229
  %116 = load ptr, ptr @stdout, align 8, !dbg !1230, !tbaa !1060
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %116), !dbg !1230
  %118 = load ptr, ptr @stdout, align 8, !dbg !1231, !tbaa !1060
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %118), !dbg !1231
  %120 = load ptr, ptr @stdout, align 8, !dbg !1232, !tbaa !1060
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1232
  br label %122, !dbg !1233

122:                                              ; preds = %107, %19
  ret void, !dbg !1233
}

; Function Attrs: nounwind
declare !dbg !1234 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1238 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1242 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1244 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1247 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1250 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1253 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1256 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1262 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1263 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1274, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %1, metadata !1275, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i64 0, metadata !1276, metadata !DIExpression()), !dbg !1281
  %3 = load ptr, ptr %1, align 8, !dbg !1282, !tbaa !1060
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1283
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1284
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1285
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1286
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1287
  call void @llvm.dbg.value(metadata i32 2, metadata !1277, metadata !DIExpression()), !dbg !1281
  br label %8, !dbg !1288

8:                                                ; preds = %19, %2
  %9 = phi i64 [ %23, %19 ], [ 0, %2 ]
  %10 = phi i32 [ %20, %19 ], [ 2, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !1277, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %9, metadata !1276, metadata !DIExpression()), !dbg !1281
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %11, metadata !1278, metadata !DIExpression()), !dbg !1290
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 -2, label %14
    i32 -3, label %15
    i32 256, label %12
    i32 257, label %19
  ], !dbg !1291

12:                                               ; preds = %8, %12
  call void @llvm.dbg.value(metadata i32 0, metadata !1277, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %9, metadata !1276, metadata !DIExpression()), !dbg !1281
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %13, metadata !1278, metadata !DIExpression()), !dbg !1290
  switch i32 %13, label %24 [
    i32 -1, label %25
    i32 -2, label %14
    i32 -3, label %15
    i32 256, label %12
    i32 257, label %19
  ], !dbg !1291, !llvm.loop !1292

14:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 0) #43, !dbg !1294
  unreachable, !dbg !1294

15:                                               ; preds = %8, %12
  %16 = load ptr, ptr @stdout, align 8, !dbg !1296, !tbaa !1060
  %17 = load ptr, ptr @Version, align 8, !dbg !1296, !tbaa !1060
  %18 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #39, !dbg !1296
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %17, ptr noundef %18, ptr noundef null) #39, !dbg !1296
  tail call void @exit(i32 noundef 0) #41, !dbg !1296
  unreachable, !dbg !1296

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %10, %8 ], [ 0, %12 ], !dbg !1297
  %21 = load ptr, ptr @optarg, align 8, !dbg !1298, !tbaa !1060
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1299
  %23 = tail call i64 @xnumtoumax(ptr noundef %21, i32 noundef 10, i64 noundef 0, i64 noundef -1, ptr noundef nonnull @.str.8, ptr noundef %22, i32 noundef 0, i32 noundef 2) #39, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %23, metadata !1276, metadata !DIExpression()), !dbg !1281
  br label %8, !dbg !1301

24:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 1) #43, !dbg !1302
  unreachable, !dbg !1302

25:                                               ; preds = %8, %12
  %26 = phi i32 [ 0, %12 ], [ %10, %8 ], !dbg !1297
  call void @llvm.dbg.value(metadata i32 %26, metadata !1277, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %9, metadata !1276, metadata !DIExpression()), !dbg !1281
  %27 = load i32, ptr @optind, align 4, !dbg !1303, !tbaa !1122
  %28 = icmp eq i32 %27, %0, !dbg !1305
  br i1 %28, label %36, label %29, !dbg !1306

29:                                               ; preds = %25
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1307
  %31 = load i32, ptr @optind, align 4, !dbg !1307, !tbaa !1122
  %32 = sext i32 %31 to i64, !dbg !1307
  %33 = getelementptr inbounds ptr, ptr %1, i64 %32, !dbg !1307
  %34 = load ptr, ptr %33, align 8, !dbg !1307, !tbaa !1060
  %35 = tail call ptr @quote(ptr noundef %34) #39, !dbg !1307
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30, ptr noundef %35) #39, !dbg !1307
  tail call void @usage(i32 noundef 1) #43, !dbg !1309
  unreachable, !dbg !1309

36:                                               ; preds = %25
  %37 = tail call i64 @num_processors(i32 noundef %26) #39, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %37, metadata !1280, metadata !DIExpression()), !dbg !1281
  %38 = icmp ugt i64 %37, %9, !dbg !1311
  %39 = sub i64 %37, %9, !dbg !1313
  %40 = select i1 %38, i64 %39, i64 1, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %40, metadata !1280, metadata !DIExpression()), !dbg !1281
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.15, i64 noundef %40) #39, !dbg !1314
  ret i32 0, !dbg !1315
}

; Function Attrs: nounwind
declare !dbg !1316 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1319 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1320 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1323 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1329 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1331, metadata !DIExpression()), !dbg !1332
  store ptr %0, ptr @file_name, align 8, !dbg !1333, !tbaa !1060
  ret void, !dbg !1334
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1335 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1339, metadata !DIExpression()), !dbg !1340
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1341, !tbaa !1342
  ret void, !dbg !1344
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1345 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1350, !tbaa !1060
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1351
  %3 = icmp eq i32 %2, 0, !dbg !1352
  br i1 %3, label %22, label %4, !dbg !1353

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1354, !tbaa !1342, !range !1355, !noundef !1107
  %6 = icmp eq i8 %5, 0, !dbg !1354
  br i1 %6, label %11, label %7, !dbg !1356

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1357
  %9 = load i32, ptr %8, align 4, !dbg !1357, !tbaa !1122
  %10 = icmp eq i32 %9, 32, !dbg !1358
  br i1 %10, label %22, label %11, !dbg !1359

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #39, !dbg !1360
  call void @llvm.dbg.value(metadata ptr %12, metadata !1347, metadata !DIExpression()), !dbg !1361
  %13 = load ptr, ptr @file_name, align 8, !dbg !1362, !tbaa !1060
  %14 = icmp eq ptr %13, null, !dbg !1362
  %15 = tail call ptr @__errno_location() #42, !dbg !1364
  %16 = load i32, ptr %15, align 4, !dbg !1364, !tbaa !1122
  br i1 %14, label %19, label %17, !dbg !1365

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1366
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #39, !dbg !1366
  br label %20, !dbg !1366

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #39, !dbg !1367
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1368, !tbaa !1122
  tail call void @_exit(i32 noundef %21) #41, !dbg !1369
  unreachable, !dbg !1369

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1370, !tbaa !1060
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1372
  %25 = icmp eq i32 %24, 0, !dbg !1373
  br i1 %25, label %28, label %26, !dbg !1374

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1375, !tbaa !1122
  tail call void @_exit(i32 noundef %27) #41, !dbg !1376
  unreachable, !dbg !1376

28:                                               ; preds = %22
  ret void, !dbg !1377
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1378 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1382 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1384 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1388, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %1, metadata !1389, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %2, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1391, metadata !DIExpression()), !dbg !1393
  tail call fastcc void @flush_stdout(), !dbg !1394
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1395, !tbaa !1060
  %7 = icmp eq ptr %6, null, !dbg !1395
  br i1 %7, label %9, label %8, !dbg !1397

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1398
  br label %13, !dbg !1398

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1399, !tbaa !1060
  %11 = tail call ptr @getprogname() #40, !dbg !1399
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %11) #39, !dbg !1399
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1401, !tbaa.struct !1402
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1401
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1401
  ret void, !dbg !1403
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1404 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1406, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 1, metadata !1408, metadata !DIExpression()), !dbg !1413
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1416
  %2 = icmp slt i32 %1, 0, !dbg !1417
  br i1 %2, label %6, label %3, !dbg !1418

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1419, !tbaa !1060
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1419
  br label %6, !dbg !1419

6:                                                ; preds = %3, %0
  ret void, !dbg !1420
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1421 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1423, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %1, metadata !1424, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata ptr %2, metadata !1425, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1426, metadata !DIExpression()), !dbg !1428
  %7 = load ptr, ptr @stderr, align 8, !dbg !1429, !tbaa !1060
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1430, !noalias !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1478
  call void @llvm.dbg.value(metadata ptr %7, metadata !1470, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata ptr %2, metadata !1471, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1472, metadata !DIExpression()), !dbg !1480
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1430, !noalias !1474
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1481, !tbaa !1122
  %10 = add i32 %9, 1, !dbg !1481
  store i32 %10, ptr @error_message_count, align 4, !dbg !1481, !tbaa !1122
  %11 = icmp eq i32 %1, 0, !dbg !1482
  br i1 %11, label %21, label %12, !dbg !1484

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1485, metadata !DIExpression()), !dbg !1493
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1495
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1489, metadata !DIExpression()), !dbg !1496
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1497
  call void @llvm.dbg.value(metadata ptr %13, metadata !1488, metadata !DIExpression()), !dbg !1493
  %14 = icmp eq ptr %13, null, !dbg !1498
  br i1 %14, label %15, label %17, !dbg !1500

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #39, !dbg !1501
  call void @llvm.dbg.value(metadata ptr %16, metadata !1488, metadata !DIExpression()), !dbg !1493
  br label %17, !dbg !1502

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1493
  call void @llvm.dbg.value(metadata ptr %18, metadata !1488, metadata !DIExpression()), !dbg !1493
  %19 = load ptr, ptr @stderr, align 8, !dbg !1503, !tbaa !1060
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %18) #39, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1504
  br label %21, !dbg !1505

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1506, !tbaa !1060
  call void @llvm.dbg.value(metadata i32 10, metadata !1507, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata ptr %22, metadata !1513, metadata !DIExpression()), !dbg !1514
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1516
  %24 = load ptr, ptr %23, align 8, !dbg !1516, !tbaa !1517
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1516
  %26 = load ptr, ptr %25, align 8, !dbg !1516, !tbaa !1520
  %27 = icmp ult ptr %24, %26, !dbg !1516
  br i1 %27, label %30, label %28, !dbg !1516, !prof !1521

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1516
  br label %32, !dbg !1516

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1516
  store ptr %31, ptr %23, align 8, !dbg !1516, !tbaa !1517
  store i8 10, ptr %24, align 1, !dbg !1516, !tbaa !1131
  br label %32, !dbg !1516

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1522, !tbaa !1060
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1522
  %35 = icmp eq i32 %0, 0, !dbg !1523
  br i1 %35, label %37, label %36, !dbg !1525

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1526
  unreachable, !dbg !1526

37:                                               ; preds = %32
  ret void, !dbg !1527
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1528 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1531 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1534 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1537 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1540 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1544 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1548, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %1, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %2, metadata !1550, metadata !DIExpression()), !dbg !1552
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1553
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1551, metadata !DIExpression()), !dbg !1554
  call void @llvm.va_start(ptr nonnull %4), !dbg !1555
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1556, !tbaa.struct !1402
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1556
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1556
  call void @llvm.va_end(ptr nonnull %4), !dbg !1557
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1558
  ret void, !dbg !1558
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !378 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !395, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %1, metadata !396, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %3, metadata !398, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata ptr %4, metadata !399, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.declare(metadata ptr %5, metadata !400, metadata !DIExpression()), !dbg !1560
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1561, !tbaa !1122
  %9 = icmp eq i32 %8, 0, !dbg !1561
  br i1 %9, label %24, label %10, !dbg !1563

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1564, !tbaa !1122
  %12 = icmp eq i32 %11, %3, !dbg !1567
  br i1 %12, label %13, label %23, !dbg !1568

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1569, !tbaa !1060
  %15 = icmp eq ptr %14, %2, !dbg !1570
  br i1 %15, label %37, label %16, !dbg !1571

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1572
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1573
  br i1 %19, label %20, label %23, !dbg !1573

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1574
  %22 = icmp eq i32 %21, 0, !dbg !1575
  br i1 %22, label %37, label %23, !dbg !1576

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1577, !tbaa !1060
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1578, !tbaa !1122
  br label %24, !dbg !1579

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1580
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1581, !tbaa !1060
  %26 = icmp eq ptr %25, null, !dbg !1581
  br i1 %26, label %28, label %27, !dbg !1583

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1584
  br label %32, !dbg !1584

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1585, !tbaa !1060
  %30 = tail call ptr @getprogname() #40, !dbg !1585
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %30) #39, !dbg !1585
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1587, !tbaa !1060
  %34 = icmp eq ptr %2, null, !dbg !1587
  %35 = select i1 %34, ptr @.str.3.34, ptr @.str.2.35, !dbg !1587
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1587
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1588, !tbaa.struct !1402
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1588
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1588
  br label %37, !dbg !1589

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1589
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1590 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1594, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %1, metadata !1595, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata ptr %2, metadata !1596, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %3, metadata !1597, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata ptr %4, metadata !1598, metadata !DIExpression()), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1601
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1599, metadata !DIExpression()), !dbg !1602
  call void @llvm.va_start(ptr nonnull %6), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1604, !tbaa.struct !1402
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1604
  call void @llvm.va_end(ptr nonnull %6), !dbg !1605
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1606
  ret void, !dbg !1606
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1607 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1610, !tbaa !1060
  ret ptr %1, !dbg !1611
}

; Function Attrs: nounwind uwtable
define dso_local i64 @num_processors(i32 noundef %0) local_unnamed_addr #10 !dbg !1612 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4096 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1616, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 -1, metadata !1617, metadata !DIExpression()), !dbg !1628
  %11 = icmp eq i32 %0, 2, !dbg !1629
  br i1 %11, label %12, label %69, !dbg !1630

12:                                               ; preds = %1
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.43) #39, !dbg !1631
  call void @llvm.dbg.value(metadata ptr %13, metadata !1632, metadata !DIExpression()), !dbg !1641
  %14 = icmp eq ptr %13, null, !dbg !1643
  br i1 %14, label %36, label %15, !dbg !1645

15:                                               ; preds = %12, %18
  %16 = phi ptr [ %19, %18 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1632, metadata !DIExpression()), !dbg !1641
  %17 = load i8, ptr %16, align 1, !dbg !1646, !tbaa !1131
  switch i8 %17, label %20 [
    i8 0, label %35
    i8 32, label %18
    i8 9, label %18
    i8 10, label %18
    i8 11, label %18
    i8 12, label %18
    i8 13, label %18
  ], !dbg !1647

18:                                               ; preds = %15, %15, %15, %15, %15, %15
  %19 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %19, metadata !1632, metadata !DIExpression()), !dbg !1641
  br label %15, !dbg !1649, !llvm.loop !1650

20:                                               ; preds = %15
  %21 = zext i8 %17 to i32, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %21, metadata !1652, metadata !DIExpression()), !dbg !1658
  %22 = add nsw i32 %21, -48, !dbg !1660
  %23 = icmp ult i32 %22, 10, !dbg !1660
  br i1 %23, label %24, label %35, !dbg !1661

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #39, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %10, metadata !1637, metadata !DIExpression(DW_OP_deref)), !dbg !1663
  %25 = call i64 @strtoul(ptr noundef nonnull %16, ptr noundef nonnull %10, i32 noundef 10) #39, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %25, metadata !1640, metadata !DIExpression()), !dbg !1663
  %26 = load ptr, ptr %10, align 8, !tbaa !1060
  br label %27, !dbg !1665

27:                                               ; preds = %31, %24
  %28 = phi ptr [ %32, %31 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata ptr %28, metadata !1637, metadata !DIExpression()), !dbg !1663
  %29 = load i8, ptr %28, align 1, !dbg !1666, !tbaa !1131
  switch i8 %29, label %33 [
    i8 0, label %30
    i8 32, label %31
    i8 9, label %31
    i8 10, label %31
    i8 11, label %31
    i8 12, label %31
    i8 13, label %31
  ], !dbg !1667

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %28, metadata !1637, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #39, !dbg !1668
  br label %36

31:                                               ; preds = %27, %27, %27, %27, %27, %27
  call void @llvm.dbg.value(metadata ptr %28, metadata !1637, metadata !DIExpression()), !dbg !1663
  %32 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %32, metadata !1637, metadata !DIExpression()), !dbg !1663
  br label %27, !dbg !1665, !llvm.loop !1670

33:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %28, metadata !1637, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #39, !dbg !1668
  %34 = icmp eq i8 %29, 44
  br i1 %34, label %36, label %35

35:                                               ; preds = %15, %33, %20
  br label %36, !dbg !1671

36:                                               ; preds = %12, %30, %33, %35
  %37 = phi i64 [ 0, %35 ], [ 0, %12 ], [ %25, %30 ], [ %25, %33 ], !dbg !1641
  call void @llvm.dbg.value(metadata i64 %37, metadata !1618, metadata !DIExpression()), !dbg !1672
  %38 = tail call ptr @getenv(ptr noundef nonnull @.str.1.44) #39, !dbg !1673
  call void @llvm.dbg.value(metadata ptr %38, metadata !1632, metadata !DIExpression()), !dbg !1674
  %39 = icmp eq ptr %38, null, !dbg !1676
  br i1 %39, label %64, label %40, !dbg !1677

40:                                               ; preds = %36, %43
  %41 = phi ptr [ %44, %43 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata ptr %41, metadata !1632, metadata !DIExpression()), !dbg !1674
  %42 = load i8, ptr %41, align 1, !dbg !1678, !tbaa !1131
  switch i8 %42, label %45 [
    i8 0, label %64
    i8 32, label %43
    i8 9, label %43
    i8 10, label %43
    i8 11, label %43
    i8 12, label %43
    i8 13, label %43
  ], !dbg !1679

43:                                               ; preds = %40, %40, %40, %40, %40, %40
  %44 = getelementptr inbounds i8, ptr %41, i64 1, !dbg !1680
  call void @llvm.dbg.value(metadata ptr %44, metadata !1632, metadata !DIExpression()), !dbg !1674
  br label %40, !dbg !1681, !llvm.loop !1682

45:                                               ; preds = %40
  %46 = zext i8 %42 to i32, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %46, metadata !1652, metadata !DIExpression()), !dbg !1684
  %47 = add nsw i32 %46, -48, !dbg !1686
  %48 = icmp ult i32 %47, 10, !dbg !1686
  br i1 %48, label %49, label %64, !dbg !1687

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #39, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %9, metadata !1637, metadata !DIExpression(DW_OP_deref)), !dbg !1689
  %50 = call i64 @strtoul(ptr noundef nonnull %41, ptr noundef nonnull %9, i32 noundef 10) #39, !dbg !1690
  %51 = freeze i64 %50, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %50, metadata !1640, metadata !DIExpression()), !dbg !1689
  %52 = load ptr, ptr %9, align 8, !tbaa !1060
  br label %53, !dbg !1693

53:                                               ; preds = %58, %49
  %54 = phi ptr [ %59, %58 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata ptr %54, metadata !1637, metadata !DIExpression()), !dbg !1689
  %55 = load i8, ptr %54, align 1, !dbg !1694, !tbaa !1131
  switch i8 %55, label %60 [
    i8 0, label %56
    i8 32, label %58
    i8 9, label %58
    i8 10, label %58
    i8 11, label %58
    i8 12, label %58
    i8 13, label %58
  ], !dbg !1695

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr %54, metadata !1637, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %50, metadata !1621, metadata !DIExpression()), !dbg !1672
  %57 = icmp eq i64 %51, 0, !dbg !1691
  br i1 %57, label %64, label %65, !dbg !1697

58:                                               ; preds = %53, %53, %53, %53, %53, %53
  call void @llvm.dbg.value(metadata ptr %54, metadata !1637, metadata !DIExpression()), !dbg !1689
  %59 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %59, metadata !1637, metadata !DIExpression()), !dbg !1689
  br label %53, !dbg !1693, !llvm.loop !1699

60:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr %54, metadata !1637, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !1696
  %61 = icmp ne i8 %55, 44
  %62 = icmp eq i64 %51, 0
  %63 = or i1 %62, %61
  call void @llvm.dbg.value(metadata i64 %50, metadata !1621, metadata !DIExpression()), !dbg !1672
  br i1 %63, label %64, label %65

64:                                               ; preds = %40, %45, %60, %36, %56
  br label %65, !dbg !1697

65:                                               ; preds = %60, %56, %64
  %66 = phi i64 [ -1, %64 ], [ %51, %56 ], [ %51, %60 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !1621, metadata !DIExpression()), !dbg !1672
  %67 = icmp eq i64 %37, 0, !dbg !1700
  %68 = tail call i64 @llvm.umin.i64(i64 %37, i64 %66), !dbg !1702
  call void @llvm.dbg.value(metadata i32 poison, metadata !1616, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 poison, metadata !1617, metadata !DIExpression()), !dbg !1628
  br i1 %67, label %69, label %223

69:                                               ; preds = %65, %1
  %70 = phi i64 [ %66, %65 ], [ -1, %1 ], !dbg !1703
  %71 = phi i32 [ 1, %65 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %71, metadata !1616, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %70, metadata !1617, metadata !DIExpression()), !dbg !1628
  %72 = icmp eq i32 %71, 1, !dbg !1704
  %73 = icmp ugt i64 %70, 1
  %74 = and i1 %73, %72, !dbg !1705
  br i1 %74, label %75, label %199, !dbg !1705

75:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i64 -1, metadata !1706, metadata !DIExpression()), !dbg !1711
  %76 = tail call i32 @sched_getscheduler(i32 noundef 0) #39, !dbg !1713
  %77 = add i32 %76, 1, !dbg !1714
  %78 = icmp ult i32 %77, 8, !dbg !1714
  br i1 %78, label %191, label %79, !dbg !1714

79:                                               ; preds = %191, %75
  call void @llvm.dbg.value(metadata i64 -1, metadata !1715, metadata !DIExpression()), !dbg !1780
  %80 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.2.45, ptr noundef nonnull @.str.3.46) #39, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %80, metadata !1718, metadata !DIExpression()), !dbg !1780
  %81 = icmp eq ptr %80, null, !dbg !1784
  br i1 %81, label %196, label %82, !dbg !1786

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata ptr null, metadata !1753, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #39, !dbg !1787
  call void @llvm.dbg.value(metadata ptr null, metadata !1754, metadata !DIExpression()), !dbg !1780
  store ptr null, ptr %2, align 8, !dbg !1788, !tbaa !1060
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1789
  call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1780
  store i64 0, ptr %3, align 8, !dbg !1790, !tbaa !1791
  br label %83, !dbg !1792

83:                                               ; preds = %88, %82
  call void @llvm.dbg.value(metadata ptr %2, metadata !1754, metadata !DIExpression(DW_OP_deref)), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %3, metadata !1755, metadata !DIExpression(DW_OP_deref)), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %2, metadata !1793, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr %3, metadata !1798, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr %80, metadata !1799, metadata !DIExpression()), !dbg !1800
  %84 = call i64 @__getdelim(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 10, ptr noundef nonnull %80) #39, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %84, metadata !1756, metadata !DIExpression()), !dbg !1780
  %85 = icmp eq i64 %84, -1, !dbg !1803
  br i1 %85, label %86, label %88, !dbg !1792

86:                                               ; preds = %83
  call void @llvm.dbg.value(metadata ptr null, metadata !1753, metadata !DIExpression()), !dbg !1780
  %87 = call i32 @rpl_fclose(ptr noundef nonnull %80) #39, !dbg !1804
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1780
  br label %128, !dbg !1805

88:                                               ; preds = %83
  %89 = load ptr, ptr %2, align 8, !dbg !1807, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %89, metadata !1754, metadata !DIExpression()), !dbg !1780
  %90 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(5) @.str.4.47, i64 noundef 4) #40, !dbg !1808
  %91 = icmp eq i32 %90, 0, !dbg !1809
  br i1 %91, label %92, label %83, !dbg !1810, !llvm.loop !1811

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %89, i64 %84, !dbg !1813
  %94 = getelementptr inbounds i8, ptr %93, i64 -1, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %94, metadata !1760, metadata !DIExpression()), !dbg !1815
  %95 = load i8, ptr %94, align 1, !dbg !1816, !tbaa !1131
  %96 = icmp eq i8 %95, 10, !dbg !1818
  br i1 %96, label %97, label %99, !dbg !1819

97:                                               ; preds = %92
  store i8 0, ptr %94, align 1, !dbg !1820, !tbaa !1131
  %98 = load ptr, ptr %2, align 8, !dbg !1821, !tbaa !1060
  br label %99, !dbg !1822

99:                                               ; preds = %97, %92
  %100 = phi ptr [ %98, %97 ], [ %89, %92 ], !dbg !1821
  call void @llvm.dbg.value(metadata ptr %100, metadata !1754, metadata !DIExpression()), !dbg !1780
  %101 = getelementptr inbounds i8, ptr %100, i64 3, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %101, metadata !1753, metadata !DIExpression()), !dbg !1780
  %102 = call i32 @rpl_fclose(ptr noundef nonnull %80) #39, !dbg !1804
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1780
  %103 = call i32 @access(ptr noundef nonnull @.str.8.48, i32 noundef 0) #39, !dbg !1824
  %104 = icmp eq i32 %103, 0, !dbg !1843
  br i1 %104, label %105, label %107, !dbg !1844

105:                                              ; preds = %99
  %106 = call noalias dereferenceable_or_null(15) ptr @strdup(ptr noundef nonnull @.str.9.49) #39, !dbg !1845
  br label %125, !dbg !1846

107:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr null, metadata !1829, metadata !DIExpression()), !dbg !1847
  %108 = call ptr @setmntent(ptr noundef nonnull @.str.10.50, ptr noundef nonnull @.str.3.46) #39, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %108, metadata !1830, metadata !DIExpression()), !dbg !1847
  %109 = icmp eq ptr %108, null, !dbg !1849
  br i1 %109, label %128, label %110, !dbg !1851

110:                                              ; preds = %107, %113
  %111 = call ptr @getmntent(ptr noundef nonnull %108) #39, !dbg !1852
  call void @llvm.dbg.value(metadata ptr %111, metadata !1831, metadata !DIExpression()), !dbg !1847
  %112 = icmp eq ptr %111, null, !dbg !1853
  br i1 %112, label %122, label %113, !dbg !1854

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mntent, ptr %111, i64 0, i32 2, !dbg !1855
  %115 = load ptr, ptr %114, align 8, !dbg !1855, !tbaa !1858
  call void @llvm.dbg.value(metadata ptr %115, metadata !1860, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr @.str.11.51, metadata !1863, metadata !DIExpression()), !dbg !1864
  %116 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull dereferenceable(8) @.str.11.51) #40, !dbg !1866
  %117 = icmp eq i32 %116, 0, !dbg !1867
  br i1 %117, label %118, label %110, !dbg !1868, !llvm.loop !1869

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.mntent, ptr %111, i64 0, i32 1, !dbg !1871
  %120 = load ptr, ptr %119, align 8, !dbg !1871, !tbaa !1873
  %121 = call noalias ptr @strdup(ptr noundef %120) #39, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %121, metadata !1829, metadata !DIExpression()), !dbg !1847
  br label %122, !dbg !1875

122:                                              ; preds = %110, %118
  %123 = phi ptr [ %121, %118 ], [ null, %110 ], !dbg !1847
  call void @llvm.dbg.value(metadata ptr %123, metadata !1829, metadata !DIExpression()), !dbg !1847
  %124 = call i32 @endmntent(ptr noundef nonnull %108) #39, !dbg !1876
  br label %125

125:                                              ; preds = %122, %105
  %126 = phi ptr [ %106, %105 ], [ %123, %122 ], !dbg !1847
  call void @llvm.dbg.value(metadata ptr %126, metadata !1764, metadata !DIExpression()), !dbg !1780
  %127 = icmp eq ptr %126, null, !dbg !1877
  br i1 %127, label %128, label %129, !dbg !1878

128:                                              ; preds = %125, %107, %86
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr null, metadata !1753, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1879
  call void @llvm.dbg.value(metadata ptr null, metadata !1765, metadata !DIExpression()), !dbg !1780
  store ptr null, ptr %4, align 8, !dbg !1880, !tbaa !1060
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !1881
  call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !1780
  store i64 0, ptr %5, align 8, !dbg !1882, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 -1, metadata !1715, metadata !DIExpression()), !dbg !1780
  br label %186, !dbg !1883

129:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr %126, metadata !1764, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %101, metadata !1753, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1879
  call void @llvm.dbg.value(metadata ptr null, metadata !1765, metadata !DIExpression()), !dbg !1780
  store ptr null, ptr %4, align 8, !dbg !1880, !tbaa !1060
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !1881
  call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !1780
  store i64 0, ptr %5, align 8, !dbg !1882, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 -1, metadata !1715, metadata !DIExpression()), !dbg !1780
  %130 = getelementptr inbounds i8, ptr %100, i64 4
  %131 = load i8, ptr %101, align 1, !dbg !1884, !tbaa !1131
  %132 = icmp eq i8 %131, 0, !dbg !1883
  br i1 %132, label %186, label %133, !dbg !1885

133:                                              ; preds = %129, %182
  %134 = phi i64 [ %172, %182 ], [ -1, %129 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !1715, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #39, !dbg !1886
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1767, metadata !DIExpression()), !dbg !1887
  %135 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %6, i64 noundef 4096, i32 noundef 1, i64 noundef 4096, ptr noundef nonnull @.str.5.52, ptr noundef nonnull %126, ptr noundef nonnull %101) #39, !dbg !1888
  %136 = call noalias ptr @rpl_fopen(ptr noundef nonnull %6, ptr noundef nonnull @.str.3.46) #39, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %136, metadata !1718, metadata !DIExpression()), !dbg !1780
  %137 = icmp eq ptr %136, null, !dbg !1890
  br i1 %137, label %171, label %138, !dbg !1891

138:                                              ; preds = %133
  call void @llvm.dbg.value(metadata ptr %4, metadata !1765, metadata !DIExpression(DW_OP_deref)), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %5, metadata !1766, metadata !DIExpression(DW_OP_deref)), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata ptr %5, metadata !1798, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata ptr %136, metadata !1799, metadata !DIExpression()), !dbg !1892
  %139 = call i64 @__getdelim(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull %136) #39, !dbg !1894
  %140 = icmp eq i64 %139, -1, !dbg !1895
  br i1 %140, label %168, label %141, !dbg !1896

141:                                              ; preds = %138
  %142 = load ptr, ptr %4, align 8, !dbg !1897, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %142, metadata !1765, metadata !DIExpression()), !dbg !1780
  %143 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(4) @.str.6.53, i64 noundef 3) #40, !dbg !1898
  %144 = icmp eq i32 %143, 0, !dbg !1899
  br i1 %144, label %168, label %145, !dbg !1900

145:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !1901
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #39, !dbg !1901
  call void @llvm.dbg.value(metadata ptr %142, metadata !1765, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %7, metadata !1772, metadata !DIExpression(DW_OP_deref)), !dbg !1902
  call void @llvm.dbg.value(metadata ptr %8, metadata !1775, metadata !DIExpression(DW_OP_deref)), !dbg !1902
  %146 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %142, ptr noundef nonnull @.str.7.54, ptr noundef nonnull %7, ptr noundef nonnull %8) #39, !dbg !1903
  %147 = icmp eq i32 %146, 2, !dbg !1904
  %148 = load i64, ptr %8, align 8
  call void @llvm.dbg.value(metadata i64 %148, metadata !1775, metadata !DIExpression()), !dbg !1902
  %149 = icmp ne i64 %148, 0
  %150 = select i1 %147, i1 %149, i1 false, !dbg !1905
  br i1 %150, label %151, label %166, !dbg !1905

151:                                              ; preds = %145
  %152 = load i64, ptr %7, align 8, !dbg !1906, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 %152, metadata !1772, metadata !DIExpression()), !dbg !1902
  %153 = sitofp i64 %152 to double, !dbg !1907
  %154 = sitofp i64 %148 to double, !dbg !1908
  %155 = fdiv double %153, %154, !dbg !1909
  call void @llvm.dbg.value(metadata double %155, metadata !1776, metadata !DIExpression()), !dbg !1910
  %156 = icmp eq i64 %134, -1, !dbg !1911
  %157 = uitofp i64 %134 to double
  %158 = fcmp olt double %155, %157
  %159 = select i1 %156, i1 true, i1 %158, !dbg !1913
  br i1 %159, label %160, label %166, !dbg !1913

160:                                              ; preds = %151
  %161 = fadd double %155, 5.000000e-01, !dbg !1914
  %162 = fptosi double %161 to i64, !dbg !1914
  %163 = call i64 @llvm.smax.i64(i64 %162, i64 1), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %163, metadata !1715, metadata !DIExpression()), !dbg !1780
  %164 = icmp slt i64 %162, 2, !dbg !1916
  br i1 %164, label %165, label %166, !dbg !1918

165:                                              ; preds = %160
  store i8 0, ptr %101, align 1, !dbg !1919, !tbaa !1131
  br label %166, !dbg !1920

166:                                              ; preds = %165, %160, %151, %145
  %167 = phi i64 [ %134, %145 ], [ 1, %165 ], [ %163, %160 ], [ %134, %151 ], !dbg !1780
  call void @llvm.dbg.value(metadata i64 %167, metadata !1715, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #39, !dbg !1921
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !1921
  br label %168, !dbg !1922

168:                                              ; preds = %166, %141, %138
  %169 = phi i64 [ %134, %138 ], [ %134, %141 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !1715, metadata !DIExpression()), !dbg !1780
  %170 = call i32 @rpl_fclose(ptr noundef nonnull %136) #39, !dbg !1923
  br label %171, !dbg !1923

171:                                              ; preds = %168, %133
  %172 = phi i64 [ %169, %168 ], [ %134, %133 ]
  %173 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %101, i32 noundef 47) #40, !dbg !1925
  call void @llvm.dbg.value(metadata ptr %173, metadata !1779, metadata !DIExpression()), !dbg !1926
  %174 = icmp eq ptr %173, null, !dbg !1927
  br i1 %174, label %175, label %176, !dbg !1929

175:                                              ; preds = %171
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #39, !dbg !1930
  br label %186

176:                                              ; preds = %171
  %177 = icmp eq ptr %173, %101, !dbg !1931
  br i1 %177, label %178, label %181, !dbg !1933

178:                                              ; preds = %176
  %179 = load i8, ptr %130, align 1, !dbg !1934, !tbaa !1131
  %180 = icmp eq i8 %179, 0, !dbg !1934
  br i1 %180, label %181, label %182, !dbg !1935

181:                                              ; preds = %178, %176
  br label %182

182:                                              ; preds = %181, %178
  %183 = phi ptr [ %173, %181 ], [ %130, %178 ]
  store i8 0, ptr %183, align 1, !dbg !1936, !tbaa !1131
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #39, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %172, metadata !1715, metadata !DIExpression()), !dbg !1780
  %184 = load i8, ptr %101, align 1, !dbg !1884, !tbaa !1131
  %185 = icmp eq i8 %184, 0, !dbg !1883
  br i1 %185, label %186, label %133, !dbg !1885

186:                                              ; preds = %182, %175, %129, %128
  %187 = phi ptr [ %126, %175 ], [ null, %128 ], [ %126, %129 ], [ %126, %182 ]
  %188 = phi i64 [ %172, %175 ], [ -1, %128 ], [ -1, %129 ], [ %172, %182 ], !dbg !1780
  call void @llvm.dbg.value(metadata i64 %188, metadata !1715, metadata !DIExpression()), !dbg !1780
  %189 = load ptr, ptr %4, align 8, !dbg !1937, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %189, metadata !1765, metadata !DIExpression()), !dbg !1780
  call void @free(ptr noundef %189) #39, !dbg !1938
  call void @free(ptr noundef %187) #39, !dbg !1939
  %190 = load ptr, ptr %2, align 8, !dbg !1940, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %190, metadata !1754, metadata !DIExpression()), !dbg !1780
  call void @free(ptr noundef %190) #39, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #39, !dbg !1942
  br label %196

191:                                              ; preds = %75
  %192 = trunc i32 %77 to i8, !dbg !1714
  %193 = lshr i8 -115, %192, !dbg !1714
  %194 = and i8 %193, 1, !dbg !1714
  %195 = icmp eq i8 %194, 0, !dbg !1714
  br i1 %195, label %79, label %196, !dbg !1714

196:                                              ; preds = %191, %79, %186
  %197 = phi i64 [ %188, %186 ], [ -1, %79 ], [ -1, %191 ], !dbg !1943
  call void @llvm.dbg.value(metadata i64 %197, metadata !1706, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %197, metadata !1622, metadata !DIExpression()), !dbg !1944
  %198 = call i64 @llvm.umin.i64(i64 %197, i64 %70), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %198, metadata !1617, metadata !DIExpression()), !dbg !1628
  br label %199, !dbg !1946

199:                                              ; preds = %196, %69
  %200 = phi i64 [ %198, %196 ], [ %70, %69 ], !dbg !1628
  call void @llvm.dbg.value(metadata i64 %200, metadata !1617, metadata !DIExpression()), !dbg !1628
  %201 = icmp ugt i64 %200, 1, !dbg !1947
  br i1 %201, label %202, label %223, !dbg !1948

202:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i32 %71, metadata !1949, metadata !DIExpression()), !dbg !1964
  br i1 %72, label %203, label %209, !dbg !1966

203:                                              ; preds = %202
  %204 = call fastcc i64 @num_processors_via_affinity_mask(), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %204, metadata !1952, metadata !DIExpression()), !dbg !1968
  %205 = icmp eq i64 %204, 0, !dbg !1969
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = call i64 @sysconf(i32 noundef 84) #39, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %207, metadata !1956, metadata !DIExpression()), !dbg !1972
  %208 = icmp slt i64 %207, 1, !dbg !1973
  br i1 %208, label %219, label %220

209:                                              ; preds = %202
  %210 = call i64 @sysconf(i32 noundef 83) #39, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %210, metadata !1958, metadata !DIExpression()), !dbg !1976
  %211 = add i64 %210, -1, !dbg !1977
  %212 = icmp ult i64 %211, 2, !dbg !1977
  br i1 %212, label %213, label %216, !dbg !1977

213:                                              ; preds = %209
  %214 = call fastcc i64 @num_processors_via_affinity_mask(), !dbg !1978
  call void @llvm.dbg.value(metadata i64 %214, metadata !1961, metadata !DIExpression()), !dbg !1979
  %215 = call i64 @llvm.umax.i64(i64 %214, i64 %210), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %215, metadata !1958, metadata !DIExpression()), !dbg !1976
  br label %216, !dbg !1981

216:                                              ; preds = %213, %209
  %217 = phi i64 [ %215, %213 ], [ %210, %209 ], !dbg !1976
  call void @llvm.dbg.value(metadata i64 %217, metadata !1958, metadata !DIExpression()), !dbg !1976
  %218 = icmp slt i64 %217, 1, !dbg !1982
  br i1 %218, label %219, label %220

219:                                              ; preds = %216, %206
  br label %220, !dbg !1984

220:                                              ; preds = %203, %206, %216, %219
  %221 = phi i64 [ %204, %203 ], [ %207, %206 ], [ 1, %219 ], [ %217, %216 ], !dbg !1964
  call void @llvm.dbg.value(metadata i64 %221, metadata !1625, metadata !DIExpression()), !dbg !1985
  %222 = call i64 @llvm.umin.i64(i64 %221, i64 %200), !dbg !1986
  call void @llvm.dbg.value(metadata i64 %222, metadata !1617, metadata !DIExpression()), !dbg !1628
  br label %223, !dbg !1987

223:                                              ; preds = %199, %220, %65
  %224 = phi i64 [ %68, %65 ], [ %222, %220 ], [ %200, %199 ], !dbg !1628
  ret i64 %224, !dbg !1988
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !1989 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !1993 i32 @sched_getscheduler(i32 noundef) local_unnamed_addr #2

declare !dbg !1998 i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2003 noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2006 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nounwind
declare !dbg !2007 ptr @setmntent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2010 ptr @getmntent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2013 i32 @endmntent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2016 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare !dbg !2019 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2022 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2023 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define internal fastcc i64 @num_processors_via_affinity_mask() unnamed_addr #10 !dbg !2026 {
  %1 = alloca %struct.cpu_set_t, align 8
  call void @llvm.dbg.value(metadata i32 1024, metadata !2028, metadata !DIExpression()), !dbg !2051
  br label %2, !dbg !2052

2:                                                ; preds = %14, %0
  %3 = phi i32 [ 1024, %0 ], [ %18, %14 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %3, metadata !2028, metadata !DIExpression()), !dbg !2051
  %4 = zext i32 %3 to i64, !dbg !2054
  %5 = tail call ptr @__sched_cpualloc(i64 noundef %4) #39, !dbg !2054
  call void @llvm.dbg.value(metadata ptr %5, metadata !2030, metadata !DIExpression()), !dbg !2055
  %6 = icmp eq ptr %5, null, !dbg !2056
  br i1 %6, label %21, label %7, !dbg !2058

7:                                                ; preds = %2
  %8 = lshr exact i64 %4, 3, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %8, metadata !2042, metadata !DIExpression()), !dbg !2055
  %9 = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef %8, ptr noundef nonnull %5) #39, !dbg !2060
  %10 = icmp eq i32 %9, 0, !dbg !2061
  br i1 %10, label %11, label %14, !dbg !2062

11:                                               ; preds = %7
  %12 = tail call i32 @__sched_cpucount(i64 noundef %8, ptr noundef nonnull %5) #39, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %12, metadata !2043, metadata !DIExpression()), !dbg !2064
  tail call void @__sched_cpufree(ptr noundef nonnull %5) #39, !dbg !2065
  %13 = zext i32 %12 to i64, !dbg !2066
  br label %30

14:                                               ; preds = %7
  %15 = tail call ptr @__errno_location() #42, !dbg !2067
  %16 = load i32, ptr %15, align 4, !dbg !2067, !tbaa !1122
  %17 = icmp ne i32 %16, 22, !dbg !2069
  tail call void @__sched_cpufree(ptr noundef nonnull %5) #39, !dbg !2055
  %18 = shl i32 %3, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %18, metadata !2028, metadata !DIExpression()), !dbg !2051
  br i1 %20, label %30, label %2, !dbg !2070

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #39, !dbg !2071
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2046, metadata !DIExpression()), !dbg !2072
  %22 = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #39, !dbg !2073
  %23 = icmp eq i32 %22, 0, !dbg !2074
  br i1 %23, label %24, label %29, !dbg !2075

24:                                               ; preds = %21
  %25 = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %1) #39, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %25, metadata !2048, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !2077
  %26 = icmp eq i32 %25, 0, !dbg !2078
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = sext i32 %25 to i64, !dbg !2080
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #39, !dbg !2081
  br label %30

29:                                               ; preds = %21, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #39, !dbg !2081
  br label %30

30:                                               ; preds = %14, %29, %27, %11
  %31 = phi i64 [ %13, %11 ], [ 0, %29 ], [ %28, %27 ], [ 0, %14 ]
  ret i64 %31, !dbg !2082
}

; Function Attrs: nounwind
declare !dbg !2083 i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !2086 ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2089 i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2092 i32 @__sched_cpucount(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2097 void @__sched_cpufree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !2100 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2102, metadata !DIExpression()), !dbg !2105
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %2, metadata !2103, metadata !DIExpression()), !dbg !2105
  %3 = icmp eq ptr %2, null, !dbg !2107
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2107
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2107
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !2105
  %6 = ptrtoint ptr %5 to i64, !dbg !2108
  %7 = ptrtoint ptr %0 to i64, !dbg !2108
  %8 = sub i64 %6, %7, !dbg !2108
  %9 = icmp sgt i64 %8, 6, !dbg !2110
  br i1 %9, label %10, label %19, !dbg !2111

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %11, metadata !2113, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !2118, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 7, metadata !2119, metadata !DIExpression()), !dbg !2120
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.59, i64 7), !dbg !2122
  %13 = icmp eq i32 %12, 0, !dbg !2123
  br i1 %13, label %14, label %19, !dbg !2124

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2102, metadata !DIExpression()), !dbg !2105
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.60, i64 noundef 3) #40, !dbg !2125
  %16 = icmp eq i32 %15, 0, !dbg !2128
  %17 = select i1 %16, i64 3, i64 0, !dbg !2129
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2129
  br label %19, !dbg !2129

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2105
  call void @llvm.dbg.value(metadata ptr %21, metadata !2104, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata ptr %20, metadata !2102, metadata !DIExpression()), !dbg !2105
  store ptr %20, ptr @program_name, align 8, !dbg !2130, !tbaa !1060
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2131, !tbaa !1060
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2132, !tbaa !1060
  ret void, !dbg !2133
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !468 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !475, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata ptr %1, metadata !476, metadata !DIExpression()), !dbg !2134
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2135
  call void @llvm.dbg.value(metadata ptr %5, metadata !477, metadata !DIExpression()), !dbg !2134
  %6 = icmp eq ptr %5, %0, !dbg !2136
  br i1 %6, label %7, label %14, !dbg !2138

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %4, metadata !483, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %4, metadata !2142, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata ptr %4, metadata !2151, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 0, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i64 8, metadata !2158, metadata !DIExpression()), !dbg !2159
  store i64 0, ptr %4, align 8, !dbg !2161
  call void @llvm.dbg.value(metadata ptr %3, metadata !478, metadata !DIExpression(DW_OP_deref)), !dbg !2134
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2162
  %9 = icmp eq i64 %8, 2, !dbg !2164
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !478, metadata !DIExpression()), !dbg !2134
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2165
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2166
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2166
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2134
  ret ptr %15, !dbg !2166
}

; Function Attrs: nounwind
declare !dbg !2167 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2173 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2178, metadata !DIExpression()), !dbg !2181
  %2 = tail call ptr @__errno_location() #42, !dbg !2182
  %3 = load i32, ptr %2, align 4, !dbg !2182, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %3, metadata !2179, metadata !DIExpression()), !dbg !2181
  %4 = icmp eq ptr %0, null, !dbg !2183
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2183
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !2184
  call void @llvm.dbg.value(metadata ptr %6, metadata !2180, metadata !DIExpression()), !dbg !2181
  store i32 %3, ptr %2, align 4, !dbg !2185, !tbaa !1122
  ret ptr %6, !dbg !2186
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2187 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2193, metadata !DIExpression()), !dbg !2194
  %2 = icmp eq ptr %0, null, !dbg !2195
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2195
  %4 = load i32, ptr %3, align 8, !dbg !2196, !tbaa !2197
  ret i32 %4, !dbg !2199
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2200 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2206
  %3 = icmp eq ptr %0, null, !dbg !2207
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2207
  store i32 %1, ptr %4, align 8, !dbg !2208, !tbaa !2197
  ret void, !dbg !2209
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2210 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2214, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %1, metadata !2215, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %2, metadata !2216, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %1, metadata !2217, metadata !DIExpression()), !dbg !2222
  %4 = icmp eq ptr %0, null, !dbg !2223
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2223
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2224
  %7 = lshr i8 %1, 5, !dbg !2225
  %8 = zext i8 %7 to i64, !dbg !2225
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2226
  call void @llvm.dbg.value(metadata ptr %9, metadata !2218, metadata !DIExpression()), !dbg !2222
  %10 = and i8 %1, 31, !dbg !2227
  %11 = zext i8 %10 to i32, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %11, metadata !2220, metadata !DIExpression()), !dbg !2222
  %12 = load i32, ptr %9, align 4, !dbg !2228, !tbaa !1122
  %13 = lshr i32 %12, %11, !dbg !2229
  %14 = and i32 %13, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %14, metadata !2221, metadata !DIExpression()), !dbg !2222
  %15 = xor i32 %13, %2, !dbg !2231
  %16 = and i32 %15, 1, !dbg !2231
  %17 = shl nuw i32 %16, %11, !dbg !2232
  %18 = xor i32 %17, %12, !dbg !2233
  store i32 %18, ptr %9, align 4, !dbg !2233, !tbaa !1122
  ret i32 %14, !dbg !2234
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2235 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2239, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %1, metadata !2240, metadata !DIExpression()), !dbg !2242
  %3 = icmp eq ptr %0, null, !dbg !2243
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2245
  call void @llvm.dbg.value(metadata ptr %4, metadata !2239, metadata !DIExpression()), !dbg !2242
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2246
  %6 = load i32, ptr %5, align 4, !dbg !2246, !tbaa !2247
  call void @llvm.dbg.value(metadata i32 %6, metadata !2241, metadata !DIExpression()), !dbg !2242
  store i32 %1, ptr %5, align 4, !dbg !2248, !tbaa !2247
  ret i32 %6, !dbg !2249
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2250 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2254, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata ptr %1, metadata !2255, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata ptr %2, metadata !2256, metadata !DIExpression()), !dbg !2257
  %4 = icmp eq ptr %0, null, !dbg !2258
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2260
  call void @llvm.dbg.value(metadata ptr %5, metadata !2254, metadata !DIExpression()), !dbg !2257
  store i32 10, ptr %5, align 8, !dbg !2261, !tbaa !2197
  %6 = icmp ne ptr %1, null, !dbg !2262
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2264
  br i1 %8, label %10, label %9, !dbg !2264

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2265
  unreachable, !dbg !2265

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2266
  store ptr %1, ptr %11, align 8, !dbg !2267, !tbaa !2268
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2269
  store ptr %2, ptr %12, align 8, !dbg !2270, !tbaa !2271
  ret void, !dbg !2272
}

; Function Attrs: noreturn nounwind
declare !dbg !2273 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2274 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2278, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %1, metadata !2279, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata ptr %2, metadata !2280, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %3, metadata !2281, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata ptr %4, metadata !2282, metadata !DIExpression()), !dbg !2286
  %6 = icmp eq ptr %4, null, !dbg !2287
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2287
  call void @llvm.dbg.value(metadata ptr %7, metadata !2283, metadata !DIExpression()), !dbg !2286
  %8 = tail call ptr @__errno_location() #42, !dbg !2288
  %9 = load i32, ptr %8, align 4, !dbg !2288, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %9, metadata !2284, metadata !DIExpression()), !dbg !2286
  %10 = load i32, ptr %7, align 8, !dbg !2289, !tbaa !2197
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2290
  %12 = load i32, ptr %11, align 4, !dbg !2290, !tbaa !2247
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2291
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2292
  %15 = load ptr, ptr %14, align 8, !dbg !2292, !tbaa !2268
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2293
  %17 = load ptr, ptr %16, align 8, !dbg !2293, !tbaa !2271
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %18, metadata !2285, metadata !DIExpression()), !dbg !2286
  store i32 %9, ptr %8, align 4, !dbg !2295, !tbaa !1122
  ret i64 %18, !dbg !2296
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2297 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2303, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %1, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %2, metadata !2305, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %3, metadata !2306, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %4, metadata !2307, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %5, metadata !2308, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %6, metadata !2309, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %7, metadata !2310, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %8, metadata !2311, metadata !DIExpression()), !dbg !2365
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2366
  %17 = icmp eq i64 %16, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i1 %17, metadata !2312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2365
  call void @llvm.dbg.value(metadata i64 0, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 0, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr null, metadata !2315, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 0, metadata !2316, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2317, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %5, metadata !2318, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 1, metadata !2320, metadata !DIExpression()), !dbg !2365
  %18 = and i32 %5, 2, !dbg !2368
  %19 = icmp ne i32 %18, 0, !dbg !2368
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2368

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2369
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2370
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2371
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2318, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %34, metadata !2316, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %33, metadata !2315, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %32, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 0, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %31, metadata !2306, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %30, metadata !2311, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %29, metadata !2310, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %28, metadata !2307, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.label(metadata !2358), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2321, metadata !DIExpression()), !dbg !2365
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
  ], !dbg !2373

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2318, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 5, metadata !2307, metadata !DIExpression()), !dbg !2365
  br label %102, !dbg !2374

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2318, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 5, metadata !2307, metadata !DIExpression()), !dbg !2365
  br i1 %36, label %102, label %42, !dbg !2374

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2375
  br i1 %43, label %102, label %44, !dbg !2379

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2375, !tbaa !1131
  br label %102, !dbg !2375

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.73, metadata !578, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 %28, metadata !579, metadata !DIExpression()), !dbg !2380
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.11.73, i32 noundef 5) #39, !dbg !2384
  call void @llvm.dbg.value(metadata ptr %46, metadata !580, metadata !DIExpression()), !dbg !2380
  %47 = icmp eq ptr %46, @.str.11.73, !dbg !2385
  br i1 %47, label %48, label %57, !dbg !2387

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2388
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %13, metadata !582, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata ptr %13, metadata !2391, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata ptr %13, metadata !2399, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i64 8, metadata !2403, metadata !DIExpression()), !dbg !2404
  store i64 0, ptr %13, align 8, !dbg !2406
  call void @llvm.dbg.value(metadata ptr %12, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !2380
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2407
  %50 = icmp eq i64 %49, 3, !dbg !2409
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !581, metadata !DIExpression()), !dbg !2380
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2410
  %54 = icmp eq i32 %28, 9, !dbg !2410
  %55 = select i1 %54, ptr @.str.10.75, ptr @.str.12.76, !dbg !2410
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2410
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2411
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2411
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2380
  call void @llvm.dbg.value(metadata ptr %58, metadata !2310, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr @.str.12.76, metadata !578, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %28, metadata !579, metadata !DIExpression()), !dbg !2412
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.12.76, i32 noundef 5) #39, !dbg !2414
  call void @llvm.dbg.value(metadata ptr %59, metadata !580, metadata !DIExpression()), !dbg !2412
  %60 = icmp eq ptr %59, @.str.12.76, !dbg !2415
  br i1 %60, label %61, label %70, !dbg !2416

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2417
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2418
  call void @llvm.dbg.declare(metadata ptr %11, metadata !582, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata ptr %11, metadata !2391, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata ptr %11, metadata !2399, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 8, metadata !2403, metadata !DIExpression()), !dbg !2422
  store i64 0, ptr %11, align 8, !dbg !2424
  call void @llvm.dbg.value(metadata ptr %10, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !2412
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2425
  %63 = icmp eq i64 %62, 3, !dbg !2426
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !581, metadata !DIExpression()), !dbg !2412
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2427
  %67 = icmp eq i32 %28, 9, !dbg !2427
  %68 = select i1 %67, ptr @.str.10.75, ptr @.str.12.76, !dbg !2427
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2427
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2428
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2428
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2311, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %71, metadata !2310, metadata !DIExpression()), !dbg !2365
  br i1 %36, label %88, label %73, !dbg !2429

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2322, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 0, metadata !2313, metadata !DIExpression()), !dbg !2365
  %74 = load i8, ptr %71, align 1, !dbg !2431, !tbaa !1131
  %75 = icmp eq i8 %74, 0, !dbg !2433
  br i1 %75, label %88, label %76, !dbg !2433

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2322, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %79, metadata !2313, metadata !DIExpression()), !dbg !2365
  %80 = icmp ult i64 %79, %39, !dbg !2434
  br i1 %80, label %81, label %83, !dbg !2437

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2434
  store i8 %77, ptr %82, align 1, !dbg !2434, !tbaa !1131
  br label %83, !dbg !2434

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %84, metadata !2313, metadata !DIExpression()), !dbg !2365
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %85, metadata !2322, metadata !DIExpression()), !dbg !2430
  %86 = load i8, ptr %85, align 1, !dbg !2431, !tbaa !1131
  %87 = icmp eq i8 %86, 0, !dbg !2433
  br i1 %87, label %88, label %76, !dbg !2433, !llvm.loop !2439

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2441
  call void @llvm.dbg.value(metadata i64 %89, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 1, metadata !2317, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %72, metadata !2315, metadata !DIExpression()), !dbg !2365
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %90, metadata !2316, metadata !DIExpression()), !dbg !2365
  br label %102, !dbg !2443

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2317, metadata !DIExpression()), !dbg !2365
  br label %93, !dbg !2444

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2318, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2365
  br i1 %36, label %102, label %96, !dbg !2445

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2318, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 2, metadata !2307, metadata !DIExpression()), !dbg !2365
  br label %102, !dbg !2446

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2318, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 2, metadata !2307, metadata !DIExpression()), !dbg !2365
  br i1 %36, label %102, label %96, !dbg !2446

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2447
  br i1 %98, label %102, label %99, !dbg !2451

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2447, !tbaa !1131
  br label %102, !dbg !2447

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2318, metadata !DIExpression()), !dbg !2365
  br label %102, !dbg !2452

101:                                              ; preds = %27
  call void @abort() #41, !dbg !2453
  unreachable, !dbg !2453

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2441
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.75, %42 ], [ @.str.10.75, %44 ], [ @.str.10.75, %41 ], [ %33, %27 ], [ @.str.12.76, %96 ], [ @.str.12.76, %99 ], [ @.str.12.76, %95 ], [ @.str.10.75, %40 ], [ @.str.12.76, %93 ], [ @.str.12.76, %92 ], !dbg !2365
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2365
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2318, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2317, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %108, metadata !2316, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %107, metadata !2315, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %106, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %105, metadata !2311, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %104, metadata !2310, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %103, metadata !2307, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 0, metadata !2327, metadata !DIExpression()), !dbg !2454
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
  br label %122, !dbg !2455

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2441
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2369
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2456
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %129, metadata !2327, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %125, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %124, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %123, metadata !2306, metadata !DIExpression()), !dbg !2365
  %131 = icmp eq i64 %123, -1, !dbg !2457
  br i1 %131, label %132, label %136, !dbg !2458

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2459
  %134 = load i8, ptr %133, align 1, !dbg !2459, !tbaa !1131
  %135 = icmp eq i8 %134, 0, !dbg !2460
  br i1 %135, label %579, label %138, !dbg !2461

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2462
  br i1 %137, label %579, label %138, !dbg !2461

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2329, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2332, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2333, metadata !DIExpression()), !dbg !2463
  br i1 %114, label %139, label %152, !dbg !2464

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2466
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2467
  br i1 %141, label %142, label %144, !dbg !2467

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %143, metadata !2306, metadata !DIExpression()), !dbg !2365
  br label %144, !dbg !2469

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2469
  call void @llvm.dbg.value(metadata i64 %145, metadata !2306, metadata !DIExpression()), !dbg !2365
  %146 = icmp ugt i64 %140, %145, !dbg !2470
  br i1 %146, label %152, label %147, !dbg !2471

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2472
  call void @llvm.dbg.value(metadata ptr %148, metadata !2473, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata ptr %107, metadata !2476, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %108, metadata !2477, metadata !DIExpression()), !dbg !2478
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2480
  %150 = icmp eq i32 %149, 0, !dbg !2481
  %151 = and i1 %150, %110, !dbg !2482
  br i1 %151, label %630, label %152, !dbg !2482

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2329, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %153, metadata !2306, metadata !DIExpression()), !dbg !2365
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2483
  %156 = load i8, ptr %155, align 1, !dbg !2483, !tbaa !1131
  call void @llvm.dbg.value(metadata i8 %156, metadata !2334, metadata !DIExpression()), !dbg !2463
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
  ], !dbg !2484

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2485

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2486

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2463
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2490
  br i1 %160, label %177, label %161, !dbg !2490

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2492
  br i1 %162, label %163, label %165, !dbg !2496

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2492
  store i8 39, ptr %164, align 1, !dbg !2492, !tbaa !1131
  br label %165, !dbg !2492

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %166, metadata !2313, metadata !DIExpression()), !dbg !2365
  %167 = icmp ult i64 %166, %130, !dbg !2497
  br i1 %167, label %168, label %170, !dbg !2500

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2497
  store i8 36, ptr %169, align 1, !dbg !2497, !tbaa !1131
  br label %170, !dbg !2497

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %171, metadata !2313, metadata !DIExpression()), !dbg !2365
  %172 = icmp ult i64 %171, %130, !dbg !2501
  br i1 %172, label %173, label %175, !dbg !2504

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2501
  store i8 39, ptr %174, align 1, !dbg !2501, !tbaa !1131
  br label %175, !dbg !2501

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %176, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 1, metadata !2321, metadata !DIExpression()), !dbg !2365
  br label %177, !dbg !2505

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2365
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %178, metadata !2313, metadata !DIExpression()), !dbg !2365
  %180 = icmp ult i64 %178, %130, !dbg !2506
  br i1 %180, label %181, label %183, !dbg !2509

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2506
  store i8 92, ptr %182, align 1, !dbg !2506, !tbaa !1131
  br label %183, !dbg !2506

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %184, metadata !2313, metadata !DIExpression()), !dbg !2365
  br i1 %111, label %185, label %482, !dbg !2510

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2512
  %187 = icmp ult i64 %186, %153, !dbg !2513
  br i1 %187, label %188, label %439, !dbg !2514

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2515
  %190 = load i8, ptr %189, align 1, !dbg !2515, !tbaa !1131
  %191 = add i8 %190, -48, !dbg !2516
  %192 = icmp ult i8 %191, 10, !dbg !2516
  br i1 %192, label %193, label %439, !dbg !2516

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2517
  br i1 %194, label %195, label %197, !dbg !2521

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2517
  store i8 48, ptr %196, align 1, !dbg !2517, !tbaa !1131
  br label %197, !dbg !2517

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %198, metadata !2313, metadata !DIExpression()), !dbg !2365
  %199 = icmp ult i64 %198, %130, !dbg !2522
  br i1 %199, label %200, label %202, !dbg !2525

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2522
  store i8 48, ptr %201, align 1, !dbg !2522, !tbaa !1131
  br label %202, !dbg !2522

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %203, metadata !2313, metadata !DIExpression()), !dbg !2365
  br label %439, !dbg !2526

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2527

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2528

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2529

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2531

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2533
  %210 = icmp ult i64 %209, %153, !dbg !2534
  br i1 %210, label %211, label %439, !dbg !2535

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2536
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2537
  %214 = load i8, ptr %213, align 1, !dbg !2537, !tbaa !1131
  %215 = icmp eq i8 %214, 63, !dbg !2538
  br i1 %215, label %216, label %439, !dbg !2539

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2540
  %218 = load i8, ptr %217, align 1, !dbg !2540, !tbaa !1131
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
  ], !dbg !2541

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2542

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2334, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %209, metadata !2327, metadata !DIExpression()), !dbg !2454
  %221 = icmp ult i64 %124, %130, !dbg !2544
  br i1 %221, label %222, label %224, !dbg !2547

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2544
  store i8 63, ptr %223, align 1, !dbg !2544, !tbaa !1131
  br label %224, !dbg !2544

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2547
  call void @llvm.dbg.value(metadata i64 %225, metadata !2313, metadata !DIExpression()), !dbg !2365
  %226 = icmp ult i64 %225, %130, !dbg !2548
  br i1 %226, label %227, label %229, !dbg !2551

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2548
  store i8 34, ptr %228, align 1, !dbg !2548, !tbaa !1131
  br label %229, !dbg !2548

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2551
  call void @llvm.dbg.value(metadata i64 %230, metadata !2313, metadata !DIExpression()), !dbg !2365
  %231 = icmp ult i64 %230, %130, !dbg !2552
  br i1 %231, label %232, label %234, !dbg !2555

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2552
  store i8 34, ptr %233, align 1, !dbg !2552, !tbaa !1131
  br label %234, !dbg !2552

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %235, metadata !2313, metadata !DIExpression()), !dbg !2365
  %236 = icmp ult i64 %235, %130, !dbg !2556
  br i1 %236, label %237, label %239, !dbg !2559

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2556
  store i8 63, ptr %238, align 1, !dbg !2556, !tbaa !1131
  br label %239, !dbg !2556

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %240, metadata !2313, metadata !DIExpression()), !dbg !2365
  br label %439, !dbg !2560

241:                                              ; preds = %152
  br label %251, !dbg !2561

242:                                              ; preds = %152
  br label %251, !dbg !2562

243:                                              ; preds = %152
  br label %249, !dbg !2563

244:                                              ; preds = %152
  br label %249, !dbg !2564

245:                                              ; preds = %152
  br label %251, !dbg !2565

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2566

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2567

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2570

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2572
  call void @llvm.dbg.label(metadata !2359), !dbg !2573
  br i1 %119, label %621, label %251, !dbg !2574

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2572
  call void @llvm.dbg.label(metadata !2361), !dbg !2576
  br i1 %109, label %493, label %450, !dbg !2577

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2578

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2579, !tbaa !1131
  %256 = icmp eq i8 %255, 0, !dbg !2581
  br i1 %256, label %257, label %439, !dbg !2582

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2583
  br i1 %258, label %259, label %439, !dbg !2585

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2333, metadata !DIExpression()), !dbg !2463
  br label %260, !dbg !2586

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2333, metadata !DIExpression()), !dbg !2463
  br i1 %116, label %262, label %439, !dbg !2587

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2589

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 1, metadata !2333, metadata !DIExpression()), !dbg !2463
  br i1 %116, label %264, label %439, !dbg !2590

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2591

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2594
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2596
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2596
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %270, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %269, metadata !2314, metadata !DIExpression()), !dbg !2365
  %271 = icmp ult i64 %124, %270, !dbg !2597
  br i1 %271, label %272, label %274, !dbg !2600

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2597
  store i8 39, ptr %273, align 1, !dbg !2597, !tbaa !1131
  br label %274, !dbg !2597

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %275, metadata !2313, metadata !DIExpression()), !dbg !2365
  %276 = icmp ult i64 %275, %270, !dbg !2601
  br i1 %276, label %277, label %279, !dbg !2604

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2601
  store i8 92, ptr %278, align 1, !dbg !2601, !tbaa !1131
  br label %279, !dbg !2601

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %280, metadata !2313, metadata !DIExpression()), !dbg !2365
  %281 = icmp ult i64 %280, %270, !dbg !2605
  br i1 %281, label %282, label %284, !dbg !2608

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2605
  store i8 39, ptr %283, align 1, !dbg !2605, !tbaa !1131
  br label %284, !dbg !2605

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %285, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2321, metadata !DIExpression()), !dbg !2365
  br label %439, !dbg !2609

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2610

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2335, metadata !DIExpression()), !dbg !2611
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !2612
  %289 = load ptr, ptr %288, align 8, !dbg !2612, !tbaa !1060
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2612
  %292 = load i16, ptr %291, align 2, !dbg !2612, !tbaa !1163
  %293 = and i16 %292, 16384, !dbg !2612
  %294 = icmp ne i16 %293, 0, !dbg !2614
  call void @llvm.dbg.value(metadata i1 %294, metadata !2338, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2611
  br label %337, !dbg !2615

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2616
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2339, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata ptr %14, metadata !2391, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %14, metadata !2399, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 8, metadata !2403, metadata !DIExpression()), !dbg !2620
  store i64 0, ptr %14, align 8, !dbg !2622
  call void @llvm.dbg.value(metadata i64 0, metadata !2335, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 1, metadata !2338, metadata !DIExpression()), !dbg !2611
  %296 = icmp eq i64 %153, -1, !dbg !2623
  br i1 %296, label %297, label %299, !dbg !2625

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %298, metadata !2306, metadata !DIExpression()), !dbg !2365
  br label %299, !dbg !2627

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2463
  call void @llvm.dbg.value(metadata i64 %300, metadata !2306, metadata !DIExpression()), !dbg !2365
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2628
  %301 = sub i64 %300, %129, !dbg !2629
  call void @llvm.dbg.value(metadata ptr %15, metadata !2342, metadata !DIExpression(DW_OP_deref)), !dbg !2630
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %302, metadata !2346, metadata !DIExpression()), !dbg !2630
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2632

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2335, metadata !DIExpression()), !dbg !2611
  %304 = icmp ugt i64 %300, %129, !dbg !2633
  br i1 %304, label %306, label %332, !dbg !2635

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2338, metadata !DIExpression()), !dbg !2611
  br label %332, !dbg !2636

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2335, metadata !DIExpression()), !dbg !2611
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2638
  %310 = load i8, ptr %309, align 1, !dbg !2638, !tbaa !1131
  %311 = icmp eq i8 %310, 0, !dbg !2635
  br i1 %311, label %332, label %312, !dbg !2639

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %313, metadata !2335, metadata !DIExpression()), !dbg !2611
  %314 = add i64 %313, %129, !dbg !2641
  %315 = icmp eq i64 %313, %301, !dbg !2633
  br i1 %315, label %332, label %306, !dbg !2635, !llvm.loop !2642

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2643
  %319 = and i1 %318, %110, !dbg !2643
  call void @llvm.dbg.value(metadata i64 1, metadata !2347, metadata !DIExpression()), !dbg !2644
  br i1 %319, label %320, label %328, !dbg !2643

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2347, metadata !DIExpression()), !dbg !2644
  %322 = add i64 %321, %129, !dbg !2645
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2647
  %324 = load i8, ptr %323, align 1, !dbg !2647, !tbaa !1131
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2648

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %326, metadata !2347, metadata !DIExpression()), !dbg !2644
  %327 = icmp eq i64 %326, %302, !dbg !2650
  br i1 %327, label %328, label %320, !dbg !2651, !llvm.loop !2652

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2654, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %329, metadata !2342, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 %329, metadata !2656, metadata !DIExpression()), !dbg !2664
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !2666
  %331 = icmp ne i32 %330, 0, !dbg !2667
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 %302, metadata !2335, metadata !DIExpression()), !dbg !2611
  br label %332, !dbg !2668

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 %333, metadata !2335, metadata !DIExpression()), !dbg !2611
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2669
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2670
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 0, metadata !2335, metadata !DIExpression()), !dbg !2611
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2669
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2670
  call void @llvm.dbg.label(metadata !2364), !dbg !2671
  %336 = select i1 %109, i32 4, i32 2, !dbg !2672
  br label %626, !dbg !2672

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2463
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2674
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 %339, metadata !2335, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 %338, metadata !2306, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i1 %340, metadata !2333, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2463
  %341 = icmp ult i64 %339, 2, !dbg !2675
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2676
  br i1 %343, label %439, label %344, !dbg !2676

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %345, metadata !2355, metadata !DIExpression()), !dbg !2678
  br label %346, !dbg !2679

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2365
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2454
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2680
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2463
  call void @llvm.dbg.value(metadata i8 %352, metadata !2334, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %351, metadata !2332, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2329, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %349, metadata !2327, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %347, metadata !2313, metadata !DIExpression()), !dbg !2365
  br i1 %342, label %397, label %353, !dbg !2681

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2686

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2463
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2689
  br i1 %355, label %372, label %356, !dbg !2689

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2691
  br i1 %357, label %358, label %360, !dbg !2695

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2691
  store i8 39, ptr %359, align 1, !dbg !2691, !tbaa !1131
  br label %360, !dbg !2691

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %361, metadata !2313, metadata !DIExpression()), !dbg !2365
  %362 = icmp ult i64 %361, %130, !dbg !2696
  br i1 %362, label %363, label %365, !dbg !2699

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2696
  store i8 36, ptr %364, align 1, !dbg !2696, !tbaa !1131
  br label %365, !dbg !2696

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %366, metadata !2313, metadata !DIExpression()), !dbg !2365
  %367 = icmp ult i64 %366, %130, !dbg !2700
  br i1 %367, label %368, label %370, !dbg !2703

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2700
  store i8 39, ptr %369, align 1, !dbg !2700, !tbaa !1131
  br label %370, !dbg !2700

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %371, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 1, metadata !2321, metadata !DIExpression()), !dbg !2365
  br label %372, !dbg !2704

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2365
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %373, metadata !2313, metadata !DIExpression()), !dbg !2365
  %375 = icmp ult i64 %373, %130, !dbg !2705
  br i1 %375, label %376, label %378, !dbg !2708

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2705
  store i8 92, ptr %377, align 1, !dbg !2705, !tbaa !1131
  br label %378, !dbg !2705

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %379, metadata !2313, metadata !DIExpression()), !dbg !2365
  %380 = icmp ult i64 %379, %130, !dbg !2709
  br i1 %380, label %381, label %385, !dbg !2712

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2709
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2709
  store i8 %383, ptr %384, align 1, !dbg !2709, !tbaa !1131
  br label %385, !dbg !2709

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %386, metadata !2313, metadata !DIExpression()), !dbg !2365
  %387 = icmp ult i64 %386, %130, !dbg !2713
  br i1 %387, label %388, label %393, !dbg !2716

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2713
  %391 = or i8 %390, 48, !dbg !2713
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2713
  store i8 %391, ptr %392, align 1, !dbg !2713, !tbaa !1131
  br label %393, !dbg !2713

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %394, metadata !2313, metadata !DIExpression()), !dbg !2365
  %395 = and i8 %352, 7, !dbg !2717
  %396 = or i8 %395, 48, !dbg !2718
  call void @llvm.dbg.value(metadata i8 %396, metadata !2334, metadata !DIExpression()), !dbg !2463
  br label %404, !dbg !2719

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2720

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2721
  br i1 %399, label %400, label %402, !dbg !2726

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2721
  store i8 92, ptr %401, align 1, !dbg !2721, !tbaa !1131
  br label %402, !dbg !2721

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %403, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2329, metadata !DIExpression()), !dbg !2463
  br label %404, !dbg !2727

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2365
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2463
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2463
  call void @llvm.dbg.value(metadata i8 %409, metadata !2334, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %408, metadata !2332, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2329, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %405, metadata !2313, metadata !DIExpression()), !dbg !2365
  %410 = add i64 %349, 1, !dbg !2728
  %411 = icmp ugt i64 %345, %410, !dbg !2730
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2731

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2732
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2732
  br i1 %415, label %416, label %427, !dbg !2732

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2735
  br i1 %417, label %418, label %420, !dbg !2739

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2735
  store i8 39, ptr %419, align 1, !dbg !2735, !tbaa !1131
  br label %420, !dbg !2735

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %421, metadata !2313, metadata !DIExpression()), !dbg !2365
  %422 = icmp ult i64 %421, %130, !dbg !2740
  br i1 %422, label %423, label %425, !dbg !2743

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2740
  store i8 39, ptr %424, align 1, !dbg !2740, !tbaa !1131
  br label %425, !dbg !2740

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %426, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2321, metadata !DIExpression()), !dbg !2365
  br label %427, !dbg !2744

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2745
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %428, metadata !2313, metadata !DIExpression()), !dbg !2365
  %430 = icmp ult i64 %428, %130, !dbg !2746
  br i1 %430, label %431, label %433, !dbg !2749

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2746
  store i8 %409, ptr %432, align 1, !dbg !2746, !tbaa !1131
  br label %433, !dbg !2746

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %434, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %410, metadata !2327, metadata !DIExpression()), !dbg !2454
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2750
  %436 = load i8, ptr %435, align 1, !dbg !2750, !tbaa !1131
  call void @llvm.dbg.value(metadata i8 %436, metadata !2334, metadata !DIExpression()), !dbg !2463
  br label %346, !dbg !2751, !llvm.loop !2752

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2334, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i1 %340, metadata !2333, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %408, metadata !2332, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2329, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %349, metadata !2327, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %405, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %338, metadata !2306, metadata !DIExpression()), !dbg !2365
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2755
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2365
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2369
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2454
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2463
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %448, metadata !2334, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2332, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2329, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %445, metadata !2327, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %442, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %441, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %440, metadata !2306, metadata !DIExpression()), !dbg !2365
  br i1 %112, label %461, label %450, !dbg !2756

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
  br i1 %121, label %462, label %482, !dbg !2758

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2759

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
  %473 = lshr i8 %464, 5, !dbg !2760
  %474 = zext i8 %473 to i64, !dbg !2760
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2761
  %476 = load i32, ptr %475, align 4, !dbg !2761, !tbaa !1122
  %477 = and i8 %464, 31, !dbg !2762
  %478 = zext i8 %477 to i32, !dbg !2762
  %479 = shl nuw i32 1, %478, !dbg !2763
  %480 = and i32 %476, %479, !dbg !2763
  %481 = icmp eq i32 %480, 0, !dbg !2763
  br i1 %481, label %482, label %493, !dbg !2764

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
  br i1 %154, label %493, label %529, !dbg !2765

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2755
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2365
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2369
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2766
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2463
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %501, metadata !2334, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %499, metadata !2327, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %496, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %495, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %494, metadata !2306, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.label(metadata !2362), !dbg !2767
  br i1 %110, label %621, label %503, !dbg !2768

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2463
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2770
  br i1 %504, label %521, label %505, !dbg !2770

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2772
  br i1 %506, label %507, label %509, !dbg !2776

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2772
  store i8 39, ptr %508, align 1, !dbg !2772, !tbaa !1131
  br label %509, !dbg !2772

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %510, metadata !2313, metadata !DIExpression()), !dbg !2365
  %511 = icmp ult i64 %510, %502, !dbg !2777
  br i1 %511, label %512, label %514, !dbg !2780

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2777
  store i8 36, ptr %513, align 1, !dbg !2777, !tbaa !1131
  br label %514, !dbg !2777

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %515, metadata !2313, metadata !DIExpression()), !dbg !2365
  %516 = icmp ult i64 %515, %502, !dbg !2781
  br i1 %516, label %517, label %519, !dbg !2784

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2781
  store i8 39, ptr %518, align 1, !dbg !2781, !tbaa !1131
  br label %519, !dbg !2781

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %520, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 1, metadata !2321, metadata !DIExpression()), !dbg !2365
  br label %521, !dbg !2785

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2463
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %522, metadata !2313, metadata !DIExpression()), !dbg !2365
  %524 = icmp ult i64 %522, %502, !dbg !2786
  br i1 %524, label %525, label %527, !dbg !2789

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2786
  store i8 92, ptr %526, align 1, !dbg !2786, !tbaa !1131
  br label %527, !dbg !2786

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %502, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %501, metadata !2334, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2332, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %499, metadata !2327, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %496, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %528, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %494, metadata !2306, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.label(metadata !2363), !dbg !2790
  br label %553, !dbg !2791

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2755
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2365
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2369
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2766
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2794
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %538, metadata !2334, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 poison, metadata !2332, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %535, metadata !2327, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %532, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %531, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %530, metadata !2306, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.label(metadata !2363), !dbg !2790
  %540 = xor i1 %534, true, !dbg !2791
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2791
  br i1 %541, label %553, label %542, !dbg !2791

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2795
  br i1 %543, label %544, label %546, !dbg !2799

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2795
  store i8 39, ptr %545, align 1, !dbg !2795, !tbaa !1131
  br label %546, !dbg !2795

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %547, metadata !2313, metadata !DIExpression()), !dbg !2365
  %548 = icmp ult i64 %547, %539, !dbg !2800
  br i1 %548, label %549, label %551, !dbg !2803

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2800
  store i8 39, ptr %550, align 1, !dbg !2800, !tbaa !1131
  br label %551, !dbg !2800

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %552, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2321, metadata !DIExpression()), !dbg !2365
  br label %553, !dbg !2804

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2463
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %561, metadata !2313, metadata !DIExpression()), !dbg !2365
  %563 = icmp ult i64 %561, %554, !dbg !2805
  br i1 %563, label %564, label %566, !dbg !2808

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2805
  store i8 %555, ptr %565, align 1, !dbg !2805, !tbaa !1131
  br label %566, !dbg !2805

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %567, metadata !2313, metadata !DIExpression()), !dbg !2365
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2809
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2365
  br label %569, !dbg !2810

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2755
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2365
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2369
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2766
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %576, metadata !2327, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 poison, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %572, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %571, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %570, metadata !2306, metadata !DIExpression()), !dbg !2365
  %578 = add i64 %576, 1, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %578, metadata !2327, metadata !DIExpression()), !dbg !2454
  br label %122, !dbg !2812, !llvm.loop !2813

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2320, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 poison, metadata !2319, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %125, metadata !2314, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %124, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %123, metadata !2306, metadata !DIExpression()), !dbg !2365
  %580 = icmp ne i64 %124, 0, !dbg !2815
  %581 = xor i1 %110, true, !dbg !2817
  %582 = or i1 %580, %581, !dbg !2817
  %583 = or i1 %582, %111, !dbg !2817
  br i1 %583, label %584, label %621, !dbg !2817

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2818
  %586 = xor i1 %126, true, !dbg !2818
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2818
  br i1 %587, label %595, label %588, !dbg !2818

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2820

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2822
  br label %636, !dbg !2824

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2825
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2827
  br i1 %594, label %27, label %595, !dbg !2827

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2828
  %598 = or i1 %597, %596, !dbg !2830
  br i1 %598, label %614, label %599, !dbg !2830

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2315, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %124, metadata !2313, metadata !DIExpression()), !dbg !2365
  %600 = load i8, ptr %107, align 1, !dbg !2831, !tbaa !1131
  %601 = icmp eq i8 %600, 0, !dbg !2834
  br i1 %601, label %614, label %602, !dbg !2834

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2315, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %605, metadata !2313, metadata !DIExpression()), !dbg !2365
  %606 = icmp ult i64 %605, %130, !dbg !2835
  br i1 %606, label %607, label %609, !dbg !2838

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2835
  store i8 %603, ptr %608, align 1, !dbg !2835, !tbaa !1131
  br label %609, !dbg !2835

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %610, metadata !2313, metadata !DIExpression()), !dbg !2365
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2839
  call void @llvm.dbg.value(metadata ptr %611, metadata !2315, metadata !DIExpression()), !dbg !2365
  %612 = load i8, ptr %611, align 1, !dbg !2831, !tbaa !1131
  %613 = icmp eq i8 %612, 0, !dbg !2834
  br i1 %613, label %614, label %602, !dbg !2834, !llvm.loop !2840

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2441
  call void @llvm.dbg.value(metadata i64 %615, metadata !2313, metadata !DIExpression()), !dbg !2365
  %616 = icmp ult i64 %615, %130, !dbg !2842
  br i1 %616, label %617, label %636, !dbg !2844

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2845
  store i8 0, ptr %618, align 1, !dbg !2846, !tbaa !1131
  br label %636, !dbg !2845

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2364), !dbg !2671
  %620 = icmp eq i32 %103, 2, !dbg !2847
  br i1 %620, label %626, label %630, !dbg !2672

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2364), !dbg !2671
  %624 = icmp eq i32 %103, 2, !dbg !2847
  %625 = select i1 %109, i32 4, i32 2, !dbg !2672
  br i1 %624, label %626, label %630, !dbg !2672

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2672

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2307, metadata !DIExpression()), !dbg !2365
  %634 = and i32 %5, -3, !dbg !2848
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2849
  br label %636, !dbg !2850

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2851
}

; Function Attrs: nounwind
declare !dbg !2852 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2855 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2856 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2858 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2862, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %1, metadata !2863, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata ptr %2, metadata !2864, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata ptr %0, metadata !2866, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %1, metadata !2871, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr null, metadata !2872, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %2, metadata !2873, metadata !DIExpression()), !dbg !2879
  %4 = icmp eq ptr %2, null, !dbg !2881
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2881
  call void @llvm.dbg.value(metadata ptr %5, metadata !2874, metadata !DIExpression()), !dbg !2879
  %6 = tail call ptr @__errno_location() #42, !dbg !2882
  %7 = load i32, ptr %6, align 4, !dbg !2882, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %7, metadata !2875, metadata !DIExpression()), !dbg !2879
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2883
  %9 = load i32, ptr %8, align 4, !dbg !2883, !tbaa !2247
  %10 = or i32 %9, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i32 %10, metadata !2876, metadata !DIExpression()), !dbg !2879
  %11 = load i32, ptr %5, align 8, !dbg !2885, !tbaa !2197
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2886
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2887
  %14 = load ptr, ptr %13, align 8, !dbg !2887, !tbaa !2268
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2888
  %16 = load ptr, ptr %15, align 8, !dbg !2888, !tbaa !2271
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2889
  %18 = add i64 %17, 1, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %18, metadata !2877, metadata !DIExpression()), !dbg !2879
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2891
  call void @llvm.dbg.value(metadata ptr %19, metadata !2878, metadata !DIExpression()), !dbg !2879
  %20 = load i32, ptr %5, align 8, !dbg !2892, !tbaa !2197
  %21 = load ptr, ptr %13, align 8, !dbg !2893, !tbaa !2268
  %22 = load ptr, ptr %15, align 8, !dbg !2894, !tbaa !2271
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2895
  store i32 %7, ptr %6, align 4, !dbg !2896, !tbaa !1122
  ret ptr %19, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2867 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2866, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %1, metadata !2871, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %2, metadata !2872, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %3, metadata !2873, metadata !DIExpression()), !dbg !2898
  %5 = icmp eq ptr %3, null, !dbg !2899
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2899
  call void @llvm.dbg.value(metadata ptr %6, metadata !2874, metadata !DIExpression()), !dbg !2898
  %7 = tail call ptr @__errno_location() #42, !dbg !2900
  %8 = load i32, ptr %7, align 4, !dbg !2900, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %8, metadata !2875, metadata !DIExpression()), !dbg !2898
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2901
  %10 = load i32, ptr %9, align 4, !dbg !2901, !tbaa !2247
  %11 = icmp eq ptr %2, null, !dbg !2902
  %12 = zext i1 %11 to i32, !dbg !2902
  %13 = or i32 %10, %12, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %13, metadata !2876, metadata !DIExpression()), !dbg !2898
  %14 = load i32, ptr %6, align 8, !dbg !2904, !tbaa !2197
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2905
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2906
  %17 = load ptr, ptr %16, align 8, !dbg !2906, !tbaa !2268
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2907
  %19 = load ptr, ptr %18, align 8, !dbg !2907, !tbaa !2271
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2908
  %21 = add i64 %20, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %21, metadata !2877, metadata !DIExpression()), !dbg !2898
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2910
  call void @llvm.dbg.value(metadata ptr %22, metadata !2878, metadata !DIExpression()), !dbg !2898
  %23 = load i32, ptr %6, align 8, !dbg !2911, !tbaa !2197
  %24 = load ptr, ptr %16, align 8, !dbg !2912, !tbaa !2268
  %25 = load ptr, ptr %18, align 8, !dbg !2913, !tbaa !2271
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2914
  store i32 %8, ptr %7, align 4, !dbg !2915, !tbaa !1122
  br i1 %11, label %28, label %27, !dbg !2916

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2917, !tbaa !1791
  br label %28, !dbg !2919

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2920
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2921 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2926, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 1, metadata !2924, metadata !DIExpression()), !dbg !2928
  %2 = load i32, ptr @nslots, align 4, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 1, metadata !2924, metadata !DIExpression()), !dbg !2928
  %3 = icmp sgt i32 %2, 1, !dbg !2929
  br i1 %3, label %4, label %6, !dbg !2931

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2929
  br label %10, !dbg !2931

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2932
  %8 = load ptr, ptr %7, align 8, !dbg !2932, !tbaa !2934
  %9 = icmp eq ptr %8, @slot0, !dbg !2936
  br i1 %9, label %17, label %16, !dbg !2937

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2924, metadata !DIExpression()), !dbg !2928
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2938
  %13 = load ptr, ptr %12, align 8, !dbg !2938, !tbaa !2934
  tail call void @free(ptr noundef %13) #39, !dbg !2939
  %14 = add nuw nsw i64 %11, 1, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %14, metadata !2924, metadata !DIExpression()), !dbg !2928
  %15 = icmp eq i64 %14, %5, !dbg !2929
  br i1 %15, label %6, label %10, !dbg !2931, !llvm.loop !2941

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2943
  store i64 256, ptr @slotvec0, align 8, !dbg !2945, !tbaa !2946
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2947, !tbaa !2934
  br label %17, !dbg !2948

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2949
  br i1 %18, label %20, label %19, !dbg !2951

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2952
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2954, !tbaa !1060
  br label %20, !dbg !2955

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2956, !tbaa !1122
  ret void, !dbg !2957
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2958 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %1, metadata !2961, metadata !DIExpression()), !dbg !2962
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2963
  ret ptr %3, !dbg !2964
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2965 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2969, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %1, metadata !2970, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %2, metadata !2971, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !2985
  %6 = tail call ptr @__errno_location() #42, !dbg !2986
  %7 = load i32, ptr %6, align 4, !dbg !2986, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %7, metadata !2973, metadata !DIExpression()), !dbg !2985
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2987, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %8, metadata !2974, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2975, metadata !DIExpression()), !dbg !2985
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2988
  br i1 %9, label %10, label %11, !dbg !2988

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2990
  unreachable, !dbg !2990

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2991, !tbaa !1122
  %13 = icmp sgt i32 %12, %0, !dbg !2992
  br i1 %13, label %32, label %14, !dbg !2993

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2994
  call void @llvm.dbg.value(metadata i1 %15, metadata !2976, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2995
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2996
  %16 = sext i32 %12 to i64, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %16, metadata !2979, metadata !DIExpression()), !dbg !2995
  store i64 %16, ptr %5, align 8, !dbg !2998, !tbaa !1791
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2999
  %18 = add nuw nsw i32 %0, 1, !dbg !3000
  %19 = sub i32 %18, %12, !dbg !3001
  %20 = sext i32 %19 to i64, !dbg !3002
  call void @llvm.dbg.value(metadata ptr %5, metadata !2979, metadata !DIExpression(DW_OP_deref)), !dbg !2995
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3003
  call void @llvm.dbg.value(metadata ptr %21, metadata !2974, metadata !DIExpression()), !dbg !2985
  store ptr %21, ptr @slotvec, align 8, !dbg !3004, !tbaa !1060
  br i1 %15, label %22, label %23, !dbg !3005

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3006, !tbaa.struct !3008
  br label %23, !dbg !3009

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3010, !tbaa !1122
  %25 = sext i32 %24 to i64, !dbg !3011
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3011
  %27 = load i64, ptr %5, align 8, !dbg !3012, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 %27, metadata !2979, metadata !DIExpression()), !dbg !2995
  %28 = sub nsw i64 %27, %25, !dbg !3013
  %29 = shl i64 %28, 4, !dbg !3014
  call void @llvm.dbg.value(metadata ptr %26, metadata !2399, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %29, metadata !2403, metadata !DIExpression()), !dbg !3015
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3017
  %30 = load i64, ptr %5, align 8, !dbg !3018, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 %30, metadata !2979, metadata !DIExpression()), !dbg !2995
  %31 = trunc i64 %30 to i32, !dbg !3018
  store i32 %31, ptr @nslots, align 4, !dbg !3019, !tbaa !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3020
  br label %32, !dbg !3021

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2985
  call void @llvm.dbg.value(metadata ptr %33, metadata !2974, metadata !DIExpression()), !dbg !2985
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3022
  %36 = load i64, ptr %35, align 8, !dbg !3023, !tbaa !2946
  call void @llvm.dbg.value(metadata i64 %36, metadata !2980, metadata !DIExpression()), !dbg !3024
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3025
  %38 = load ptr, ptr %37, align 8, !dbg !3025, !tbaa !2934
  call void @llvm.dbg.value(metadata ptr %38, metadata !2982, metadata !DIExpression()), !dbg !3024
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3026
  %40 = load i32, ptr %39, align 4, !dbg !3026, !tbaa !2247
  %41 = or i32 %40, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i32 %41, metadata !2983, metadata !DIExpression()), !dbg !3024
  %42 = load i32, ptr %3, align 8, !dbg !3028, !tbaa !2197
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3029
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3030
  %45 = load ptr, ptr %44, align 8, !dbg !3030, !tbaa !2268
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3031
  %47 = load ptr, ptr %46, align 8, !dbg !3031, !tbaa !2271
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %48, metadata !2984, metadata !DIExpression()), !dbg !3024
  %49 = icmp ugt i64 %36, %48, !dbg !3033
  br i1 %49, label %60, label %50, !dbg !3035

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %51, metadata !2980, metadata !DIExpression()), !dbg !3024
  store i64 %51, ptr %35, align 8, !dbg !3038, !tbaa !2946
  %52 = icmp eq ptr %38, @slot0, !dbg !3039
  br i1 %52, label %54, label %53, !dbg !3041

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3042
  br label %54, !dbg !3042

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3043
  call void @llvm.dbg.value(metadata ptr %55, metadata !2982, metadata !DIExpression()), !dbg !3024
  store ptr %55, ptr %37, align 8, !dbg !3044, !tbaa !2934
  %56 = load i32, ptr %3, align 8, !dbg !3045, !tbaa !2197
  %57 = load ptr, ptr %44, align 8, !dbg !3046, !tbaa !2268
  %58 = load ptr, ptr %46, align 8, !dbg !3047, !tbaa !2271
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3048
  br label %60, !dbg !3049

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3024
  call void @llvm.dbg.value(metadata ptr %61, metadata !2982, metadata !DIExpression()), !dbg !3024
  store i32 %7, ptr %6, align 4, !dbg !3050, !tbaa !1122
  ret ptr %61, !dbg !3051
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3052 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3056, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %1, metadata !3057, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %2, metadata !3058, metadata !DIExpression()), !dbg !3059
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3060
  ret ptr %4, !dbg !3061
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3062 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 0, metadata !2960, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %0, metadata !2961, metadata !DIExpression()), !dbg !3066
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3068
  ret ptr %2, !dbg !3069
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3070 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 0, metadata !3056, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %0, metadata !3057, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()), !dbg !3077
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3079
  ret ptr %3, !dbg !3080
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3081 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3085, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 %1, metadata !3086, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %2, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3090
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3088, metadata !DIExpression()), !dbg !3091
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3092), !dbg !3095
  call void @llvm.dbg.value(metadata i32 %1, metadata !3096, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3104, !alias.scope !3092
  %5 = icmp eq i32 %1, 10, !dbg !3105
  br i1 %5, label %6, label %7, !dbg !3107

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3108, !noalias !3092
  unreachable, !dbg !3108

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3109, !tbaa !2197, !alias.scope !3092
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3110
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3111
  ret ptr %8, !dbg !3112
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3113 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3117, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %1, metadata !3118, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %3, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3123
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3121, metadata !DIExpression()), !dbg !3124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3125), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %1, metadata !3096, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3101, metadata !DIExpression()), !dbg !3131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3131, !alias.scope !3125
  %6 = icmp eq i32 %1, 10, !dbg !3132
  br i1 %6, label %7, label %8, !dbg !3133

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3134, !noalias !3125
  unreachable, !dbg !3134

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3135, !tbaa !2197, !alias.scope !3125
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3136
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3137
  ret ptr %9, !dbg !3138
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3139 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata ptr %1, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 0, metadata !3085, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata ptr %1, metadata !3087, metadata !DIExpression()), !dbg !3146
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3148
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3088, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3101, metadata !DIExpression()), !dbg !3156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3156, !alias.scope !3150
  %4 = icmp eq i32 %0, 10, !dbg !3157
  br i1 %4, label %5, label %6, !dbg !3158

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3159, !noalias !3150
  unreachable, !dbg !3159

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3160, !tbaa !2197, !alias.scope !3150
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3161
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3162
  ret ptr %7, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3164 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %1, metadata !3169, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %2, metadata !3170, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 0, metadata !3117, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %1, metadata !3119, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 %2, metadata !3120, metadata !DIExpression()), !dbg !3172
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3174
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3121, metadata !DIExpression()), !dbg !3175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176), !dbg !3179
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3101, metadata !DIExpression()), !dbg !3182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3182, !alias.scope !3176
  %5 = icmp eq i32 %0, 10, !dbg !3183
  br i1 %5, label %6, label %7, !dbg !3184

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3185, !noalias !3176
  unreachable, !dbg !3185

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3186, !tbaa !2197, !alias.scope !3176
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3187
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3188
  ret ptr %8, !dbg !3189
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3190 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8 %2, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3199
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3201, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %4, metadata !2214, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8 %2, metadata !2215, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 1, metadata !2216, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8 %2, metadata !2217, metadata !DIExpression()), !dbg !3203
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3205
  %6 = lshr i8 %2, 5, !dbg !3206
  %7 = zext i8 %6 to i64, !dbg !3206
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %8, metadata !2218, metadata !DIExpression()), !dbg !3203
  %9 = and i8 %2, 31, !dbg !3208
  %10 = zext i8 %9 to i32, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %10, metadata !2220, metadata !DIExpression()), !dbg !3203
  %11 = load i32, ptr %8, align 4, !dbg !3209, !tbaa !1122
  %12 = lshr i32 %11, %10, !dbg !3210
  call void @llvm.dbg.value(metadata i32 %12, metadata !2221, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3203
  %13 = and i32 %12, 1, !dbg !3211
  %14 = xor i32 %13, 1, !dbg !3211
  %15 = shl nuw i32 %14, %10, !dbg !3212
  %16 = xor i32 %15, %11, !dbg !3213
  store i32 %16, ptr %8, align 4, !dbg !3213, !tbaa !1122
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3214
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3215
  ret ptr %17, !dbg !3216
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3217 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8 %1, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 -1, metadata !3195, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8 %1, metadata !3196, metadata !DIExpression()), !dbg !3224
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3226
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3197, metadata !DIExpression()), !dbg !3227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3228, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %3, metadata !2214, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %1, metadata !2215, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 1, metadata !2216, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %1, metadata !2217, metadata !DIExpression()), !dbg !3229
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3231
  %5 = lshr i8 %1, 5, !dbg !3232
  %6 = zext i8 %5 to i64, !dbg !3232
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %7, metadata !2218, metadata !DIExpression()), !dbg !3229
  %8 = and i8 %1, 31, !dbg !3234
  %9 = zext i8 %8 to i32, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %9, metadata !2220, metadata !DIExpression()), !dbg !3229
  %10 = load i32, ptr %7, align 4, !dbg !3235, !tbaa !1122
  %11 = lshr i32 %10, %9, !dbg !3236
  call void @llvm.dbg.value(metadata i32 %11, metadata !2221, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3229
  %12 = and i32 %11, 1, !dbg !3237
  %13 = xor i32 %12, 1, !dbg !3237
  %14 = shl nuw i32 %13, %9, !dbg !3238
  %15 = xor i32 %14, %10, !dbg !3239
  store i32 %15, ptr %7, align 4, !dbg !3239, !tbaa !1122
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3240
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3241
  ret ptr %16, !dbg !3242
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3243 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8 58, metadata !3222, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 -1, metadata !3195, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8 58, metadata !3196, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3251
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3197, metadata !DIExpression()), !dbg !3252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3253, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %2, metadata !2214, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 58, metadata !2215, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 1, metadata !2216, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 58, metadata !2217, metadata !DIExpression()), !dbg !3254
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3256
  call void @llvm.dbg.value(metadata ptr %3, metadata !2218, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 26, metadata !2220, metadata !DIExpression()), !dbg !3254
  %4 = load i32, ptr %3, align 4, !dbg !3257, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %4, metadata !2221, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3254
  %5 = or i32 %4, 67108864, !dbg !3258
  store i32 %5, ptr %3, align 4, !dbg !3258, !tbaa !1122
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3259
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3260
  ret ptr %6, !dbg !3261
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3262 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3264, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3265, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 58, metadata !3196, metadata !DIExpression()), !dbg !3267
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3269
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3197, metadata !DIExpression()), !dbg !3270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3271, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %3, metadata !2214, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 58, metadata !2215, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 1, metadata !2216, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 58, metadata !2217, metadata !DIExpression()), !dbg !3272
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %4, metadata !2218, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 26, metadata !2220, metadata !DIExpression()), !dbg !3272
  %5 = load i32, ptr %4, align 4, !dbg !3275, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %5, metadata !2221, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3272
  %6 = or i32 %5, 67108864, !dbg !3276
  store i32 %6, ptr %4, align 4, !dbg !3276, !tbaa !1122
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3277
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3278
  ret ptr %7, !dbg !3279
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3280 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3101, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3286
  call void @llvm.dbg.value(metadata i32 %0, metadata !3282, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 %1, metadata !3283, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %2, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3289
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3285, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 %1, metadata !3096, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 0, metadata !3101, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3291
  %5 = icmp eq i32 %1, 10, !dbg !3292
  br i1 %5, label %6, label %7, !dbg !3293

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3294, !noalias !3295
  unreachable, !dbg !3294

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3101, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3291
  store i32 %1, ptr %4, align 8, !dbg !3298, !tbaa.struct !3202
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %4, metadata !2214, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 58, metadata !2215, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 1, metadata !2216, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 58, metadata !2217, metadata !DIExpression()), !dbg !3299
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3301
  call void @llvm.dbg.value(metadata ptr %9, metadata !2218, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 26, metadata !2220, metadata !DIExpression()), !dbg !3299
  %10 = load i32, ptr %9, align 4, !dbg !3302, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %10, metadata !2221, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3299
  %11 = or i32 %10, 67108864, !dbg !3303
  store i32 %11, ptr %9, align 4, !dbg !3303, !tbaa !1122
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3304
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3305
  ret ptr %12, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3307 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %1, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %3, metadata !3314, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 %0, metadata !3316, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %1, metadata !3321, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %2, metadata !3322, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %3, metadata !3323, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 -1, metadata !3324, metadata !DIExpression()), !dbg !3326
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3328
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3325, metadata !DIExpression()), !dbg !3329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3330, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %5, metadata !2254, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %1, metadata !2255, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %2, metadata !2256, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %5, metadata !2254, metadata !DIExpression()), !dbg !3331
  store i32 10, ptr %5, align 8, !dbg !3333, !tbaa !2197
  %6 = icmp ne ptr %1, null, !dbg !3334
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3335
  br i1 %8, label %10, label %9, !dbg !3335

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3336
  unreachable, !dbg !3336

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3337
  store ptr %1, ptr %11, align 8, !dbg !3338, !tbaa !2268
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3339
  store ptr %2, ptr %12, align 8, !dbg !3340, !tbaa !2271
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3341
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3342
  ret ptr %13, !dbg !3343
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3317 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3316, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %1, metadata !3321, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %2, metadata !3322, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %3, metadata !3323, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %4, metadata !3324, metadata !DIExpression()), !dbg !3344
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3345
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3325, metadata !DIExpression()), !dbg !3346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3347, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %6, metadata !2254, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %1, metadata !2255, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %2, metadata !2256, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %6, metadata !2254, metadata !DIExpression()), !dbg !3348
  store i32 10, ptr %6, align 8, !dbg !3350, !tbaa !2197
  %7 = icmp ne ptr %1, null, !dbg !3351
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3352
  br i1 %9, label %11, label %10, !dbg !3352

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3353
  unreachable, !dbg !3353

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3354
  store ptr %1, ptr %12, align 8, !dbg !3355, !tbaa !2268
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3356
  store ptr %2, ptr %13, align 8, !dbg !3357, !tbaa !2271
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3358
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3359
  ret ptr %14, !dbg !3360
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3361 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr %1, metadata !3366, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr %2, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %1, metadata !3313, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %2, metadata !3314, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 0, metadata !3316, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %1, metadata !3322, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata ptr %2, metadata !3323, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 -1, metadata !3324, metadata !DIExpression()), !dbg !3371
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3373
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3325, metadata !DIExpression()), !dbg !3374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3375, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %4, metadata !2254, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %0, metadata !2255, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %1, metadata !2256, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %4, metadata !2254, metadata !DIExpression()), !dbg !3376
  store i32 10, ptr %4, align 8, !dbg !3378, !tbaa !2197
  %5 = icmp ne ptr %0, null, !dbg !3379
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3380
  br i1 %7, label %9, label %8, !dbg !3380

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3381
  unreachable, !dbg !3381

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3382
  store ptr %0, ptr %10, align 8, !dbg !3383, !tbaa !2268
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3384
  store ptr %1, ptr %11, align 8, !dbg !3385, !tbaa !2271
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3386
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3387
  ret ptr %12, !dbg !3388
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3389 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %1, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %3, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 0, metadata !3316, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %1, metadata !3322, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %2, metadata !3323, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %3, metadata !3324, metadata !DIExpression()), !dbg !3398
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3400
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3325, metadata !DIExpression()), !dbg !3401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3402, !tbaa.struct !3202
  call void @llvm.dbg.value(metadata ptr %5, metadata !2254, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %0, metadata !2255, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %1, metadata !2256, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %5, metadata !2254, metadata !DIExpression()), !dbg !3403
  store i32 10, ptr %5, align 8, !dbg !3405, !tbaa !2197
  %6 = icmp ne ptr %0, null, !dbg !3406
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3407
  br i1 %8, label %10, label %9, !dbg !3407

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3408
  unreachable, !dbg !3408

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3409
  store ptr %0, ptr %11, align 8, !dbg !3410, !tbaa !2268
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3411
  store ptr %1, ptr %12, align 8, !dbg !3412, !tbaa !2271
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3413
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3414
  ret ptr %13, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3420, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata ptr %1, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %2, metadata !3422, metadata !DIExpression()), !dbg !3423
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3424
  ret ptr %4, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 0, metadata !3420, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3422, metadata !DIExpression()), !dbg !3433
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3435
  ret ptr %3, !dbg !3436
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata ptr %1, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %0, metadata !3420, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata ptr %1, metadata !3421, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 -1, metadata !3422, metadata !DIExpression()), !dbg !3444
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3446
  ret ptr %3, !dbg !3447
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3448 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3452, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 0, metadata !3441, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3420, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 -1, metadata !3422, metadata !DIExpression()), !dbg !3456
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3458
  ret ptr %2, !dbg !3459
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3460 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3499, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata ptr %1, metadata !3500, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata ptr %2, metadata !3501, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata ptr %3, metadata !3502, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata ptr %4, metadata !3503, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %5, metadata !3504, metadata !DIExpression()), !dbg !3505
  %7 = icmp eq ptr %1, null, !dbg !3506
  br i1 %7, label %10, label %8, !dbg !3508

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3509
  br label %12, !dbg !3509

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.82, ptr noundef %2, ptr noundef %3) #39, !dbg !3510
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.3.84, i32 noundef 5) #39, !dbg !3511
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3511
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !3512
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.5.86, i32 noundef 5) #39, !dbg !3513
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.87) #39, !dbg !3513
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !3514
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
  ], !dbg !3515

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.7.88, i32 noundef 5) #39, !dbg !3516
  %21 = load ptr, ptr %4, align 8, !dbg !3516, !tbaa !1060
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3516
  br label %147, !dbg !3518

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.8.89, i32 noundef 5) #39, !dbg !3519
  %25 = load ptr, ptr %4, align 8, !dbg !3519, !tbaa !1060
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3519
  %27 = load ptr, ptr %26, align 8, !dbg !3519, !tbaa !1060
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3519
  br label %147, !dbg !3520

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.9.90, i32 noundef 5) #39, !dbg !3521
  %31 = load ptr, ptr %4, align 8, !dbg !3521, !tbaa !1060
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3521
  %33 = load ptr, ptr %32, align 8, !dbg !3521, !tbaa !1060
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3521
  %35 = load ptr, ptr %34, align 8, !dbg !3521, !tbaa !1060
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3521
  br label %147, !dbg !3522

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.10.91, i32 noundef 5) #39, !dbg !3523
  %39 = load ptr, ptr %4, align 8, !dbg !3523, !tbaa !1060
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3523
  %41 = load ptr, ptr %40, align 8, !dbg !3523, !tbaa !1060
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3523
  %43 = load ptr, ptr %42, align 8, !dbg !3523, !tbaa !1060
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3523
  %45 = load ptr, ptr %44, align 8, !dbg !3523, !tbaa !1060
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3523
  br label %147, !dbg !3524

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.11.92, i32 noundef 5) #39, !dbg !3525
  %49 = load ptr, ptr %4, align 8, !dbg !3525, !tbaa !1060
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3525
  %51 = load ptr, ptr %50, align 8, !dbg !3525, !tbaa !1060
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3525
  %53 = load ptr, ptr %52, align 8, !dbg !3525, !tbaa !1060
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3525
  %55 = load ptr, ptr %54, align 8, !dbg !3525, !tbaa !1060
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3525
  %57 = load ptr, ptr %56, align 8, !dbg !3525, !tbaa !1060
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3525
  br label %147, !dbg !3526

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.12.93, i32 noundef 5) #39, !dbg !3527
  %61 = load ptr, ptr %4, align 8, !dbg !3527, !tbaa !1060
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3527
  %63 = load ptr, ptr %62, align 8, !dbg !3527, !tbaa !1060
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3527
  %65 = load ptr, ptr %64, align 8, !dbg !3527, !tbaa !1060
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3527
  %67 = load ptr, ptr %66, align 8, !dbg !3527, !tbaa !1060
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3527
  %69 = load ptr, ptr %68, align 8, !dbg !3527, !tbaa !1060
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3527
  %71 = load ptr, ptr %70, align 8, !dbg !3527, !tbaa !1060
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3527
  br label %147, !dbg !3528

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.13.94, i32 noundef 5) #39, !dbg !3529
  %75 = load ptr, ptr %4, align 8, !dbg !3529, !tbaa !1060
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3529
  %77 = load ptr, ptr %76, align 8, !dbg !3529, !tbaa !1060
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3529
  %79 = load ptr, ptr %78, align 8, !dbg !3529, !tbaa !1060
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3529
  %81 = load ptr, ptr %80, align 8, !dbg !3529, !tbaa !1060
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3529
  %83 = load ptr, ptr %82, align 8, !dbg !3529, !tbaa !1060
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3529
  %85 = load ptr, ptr %84, align 8, !dbg !3529, !tbaa !1060
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3529
  %87 = load ptr, ptr %86, align 8, !dbg !3529, !tbaa !1060
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3529
  br label %147, !dbg !3530

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.14.95, i32 noundef 5) #39, !dbg !3531
  %91 = load ptr, ptr %4, align 8, !dbg !3531, !tbaa !1060
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3531
  %93 = load ptr, ptr %92, align 8, !dbg !3531, !tbaa !1060
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3531
  %95 = load ptr, ptr %94, align 8, !dbg !3531, !tbaa !1060
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3531
  %97 = load ptr, ptr %96, align 8, !dbg !3531, !tbaa !1060
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3531
  %99 = load ptr, ptr %98, align 8, !dbg !3531, !tbaa !1060
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3531
  %101 = load ptr, ptr %100, align 8, !dbg !3531, !tbaa !1060
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3531
  %103 = load ptr, ptr %102, align 8, !dbg !3531, !tbaa !1060
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3531
  %105 = load ptr, ptr %104, align 8, !dbg !3531, !tbaa !1060
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3531
  br label %147, !dbg !3532

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.15.96, i32 noundef 5) #39, !dbg !3533
  %109 = load ptr, ptr %4, align 8, !dbg !3533, !tbaa !1060
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3533
  %111 = load ptr, ptr %110, align 8, !dbg !3533, !tbaa !1060
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3533
  %113 = load ptr, ptr %112, align 8, !dbg !3533, !tbaa !1060
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3533
  %115 = load ptr, ptr %114, align 8, !dbg !3533, !tbaa !1060
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3533
  %117 = load ptr, ptr %116, align 8, !dbg !3533, !tbaa !1060
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3533
  %119 = load ptr, ptr %118, align 8, !dbg !3533, !tbaa !1060
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3533
  %121 = load ptr, ptr %120, align 8, !dbg !3533, !tbaa !1060
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3533
  %123 = load ptr, ptr %122, align 8, !dbg !3533, !tbaa !1060
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3533
  %125 = load ptr, ptr %124, align 8, !dbg !3533, !tbaa !1060
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3533
  br label %147, !dbg !3534

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.16.97, i32 noundef 5) #39, !dbg !3535
  %129 = load ptr, ptr %4, align 8, !dbg !3535, !tbaa !1060
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3535
  %131 = load ptr, ptr %130, align 8, !dbg !3535, !tbaa !1060
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3535
  %133 = load ptr, ptr %132, align 8, !dbg !3535, !tbaa !1060
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3535
  %135 = load ptr, ptr %134, align 8, !dbg !3535, !tbaa !1060
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3535
  %137 = load ptr, ptr %136, align 8, !dbg !3535, !tbaa !1060
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3535
  %139 = load ptr, ptr %138, align 8, !dbg !3535, !tbaa !1060
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3535
  %141 = load ptr, ptr %140, align 8, !dbg !3535, !tbaa !1060
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3535
  %143 = load ptr, ptr %142, align 8, !dbg !3535, !tbaa !1060
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3535
  %145 = load ptr, ptr %144, align 8, !dbg !3535, !tbaa !1060
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3535
  br label %147, !dbg !3536

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3537
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3538 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3542, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %1, metadata !3543, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %2, metadata !3544, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %3, metadata !3545, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %4, metadata !3546, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 0, metadata !3547, metadata !DIExpression()), !dbg !3548
  br label %6, !dbg !3549

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3551
  call void @llvm.dbg.value(metadata i64 %7, metadata !3547, metadata !DIExpression()), !dbg !3548
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3552
  %9 = load ptr, ptr %8, align 8, !dbg !3552, !tbaa !1060
  %10 = icmp eq ptr %9, null, !dbg !3554
  %11 = add i64 %7, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %11, metadata !3547, metadata !DIExpression()), !dbg !3548
  br i1 %10, label %12, label %6, !dbg !3554, !llvm.loop !3556

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3558
  ret void, !dbg !3559
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3560 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3575, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata ptr %1, metadata !3576, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata ptr %2, metadata !3577, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata ptr %3, metadata !3578, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3584
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3585
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3581, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 0, metadata !3580, metadata !DIExpression()), !dbg !3583
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3580, metadata !DIExpression()), !dbg !3583
  %10 = icmp sgt i32 %9, -1, !dbg !3587
  br i1 %10, label %18, label %11, !dbg !3587

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3587
  store i32 %12, ptr %7, align 8, !dbg !3587
  %13 = icmp ult i32 %9, -7, !dbg !3587
  br i1 %13, label %14, label %18, !dbg !3587

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3587
  %16 = sext i32 %9 to i64, !dbg !3587
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3587
  br label %22, !dbg !3587

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3587
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3587
  store ptr %21, ptr %4, align 8, !dbg !3587
  br label %22, !dbg !3587

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3587
  %25 = load ptr, ptr %24, align 8, !dbg !3587
  store ptr %25, ptr %6, align 8, !dbg !3590, !tbaa !1060
  %26 = icmp eq ptr %25, null, !dbg !3591
  br i1 %26, label %197, label %27, !dbg !3592

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 1, metadata !3580, metadata !DIExpression()), !dbg !3583
  %28 = icmp sgt i32 %23, -1, !dbg !3587
  br i1 %28, label %36, label %29, !dbg !3587

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3587
  store i32 %30, ptr %7, align 8, !dbg !3587
  %31 = icmp ult i32 %23, -7, !dbg !3587
  br i1 %31, label %32, label %36, !dbg !3587

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3587
  %34 = sext i32 %23 to i64, !dbg !3587
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3587
  br label %40, !dbg !3587

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3587
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3587
  store ptr %39, ptr %4, align 8, !dbg !3587
  br label %40, !dbg !3587

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3587
  %43 = load ptr, ptr %42, align 8, !dbg !3587
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3593
  store ptr %43, ptr %44, align 8, !dbg !3590, !tbaa !1060
  %45 = icmp eq ptr %43, null, !dbg !3591
  br i1 %45, label %197, label %46, !dbg !3592

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 2, metadata !3580, metadata !DIExpression()), !dbg !3583
  %47 = icmp sgt i32 %41, -1, !dbg !3587
  br i1 %47, label %55, label %48, !dbg !3587

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3587
  store i32 %49, ptr %7, align 8, !dbg !3587
  %50 = icmp ult i32 %41, -7, !dbg !3587
  br i1 %50, label %51, label %55, !dbg !3587

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3587
  %53 = sext i32 %41 to i64, !dbg !3587
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3587
  br label %59, !dbg !3587

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3587
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3587
  store ptr %58, ptr %4, align 8, !dbg !3587
  br label %59, !dbg !3587

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3587
  %62 = load ptr, ptr %61, align 8, !dbg !3587
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3593
  store ptr %62, ptr %63, align 8, !dbg !3590, !tbaa !1060
  %64 = icmp eq ptr %62, null, !dbg !3591
  br i1 %64, label %197, label %65, !dbg !3592

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 3, metadata !3580, metadata !DIExpression()), !dbg !3583
  %66 = icmp sgt i32 %60, -1, !dbg !3587
  br i1 %66, label %74, label %67, !dbg !3587

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3587
  store i32 %68, ptr %7, align 8, !dbg !3587
  %69 = icmp ult i32 %60, -7, !dbg !3587
  br i1 %69, label %70, label %74, !dbg !3587

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3587
  %72 = sext i32 %60 to i64, !dbg !3587
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3587
  br label %78, !dbg !3587

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3587
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3587
  store ptr %77, ptr %4, align 8, !dbg !3587
  br label %78, !dbg !3587

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3587
  %81 = load ptr, ptr %80, align 8, !dbg !3587
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3593
  store ptr %81, ptr %82, align 8, !dbg !3590, !tbaa !1060
  %83 = icmp eq ptr %81, null, !dbg !3591
  br i1 %83, label %197, label %84, !dbg !3592

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 4, metadata !3580, metadata !DIExpression()), !dbg !3583
  %85 = icmp sgt i32 %79, -1, !dbg !3587
  br i1 %85, label %93, label %86, !dbg !3587

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3587
  store i32 %87, ptr %7, align 8, !dbg !3587
  %88 = icmp ult i32 %79, -7, !dbg !3587
  br i1 %88, label %89, label %93, !dbg !3587

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3587
  %91 = sext i32 %79 to i64, !dbg !3587
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3587
  br label %97, !dbg !3587

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3587
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3587
  store ptr %96, ptr %4, align 8, !dbg !3587
  br label %97, !dbg !3587

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3587
  %100 = load ptr, ptr %99, align 8, !dbg !3587
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3593
  store ptr %100, ptr %101, align 8, !dbg !3590, !tbaa !1060
  %102 = icmp eq ptr %100, null, !dbg !3591
  br i1 %102, label %197, label %103, !dbg !3592

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 5, metadata !3580, metadata !DIExpression()), !dbg !3583
  %104 = icmp sgt i32 %98, -1, !dbg !3587
  br i1 %104, label %112, label %105, !dbg !3587

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3587
  store i32 %106, ptr %7, align 8, !dbg !3587
  %107 = icmp ult i32 %98, -7, !dbg !3587
  br i1 %107, label %108, label %112, !dbg !3587

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3587
  %110 = sext i32 %98 to i64, !dbg !3587
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3587
  br label %116, !dbg !3587

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3587
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3587
  store ptr %115, ptr %4, align 8, !dbg !3587
  br label %116, !dbg !3587

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3587
  %119 = load ptr, ptr %118, align 8, !dbg !3587
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3593
  store ptr %119, ptr %120, align 8, !dbg !3590, !tbaa !1060
  %121 = icmp eq ptr %119, null, !dbg !3591
  br i1 %121, label %197, label %122, !dbg !3592

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 6, metadata !3580, metadata !DIExpression()), !dbg !3583
  %123 = icmp sgt i32 %117, -1, !dbg !3587
  br i1 %123, label %131, label %124, !dbg !3587

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3587
  store i32 %125, ptr %7, align 8, !dbg !3587
  %126 = icmp ult i32 %117, -7, !dbg !3587
  br i1 %126, label %127, label %131, !dbg !3587

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3587
  %129 = sext i32 %117 to i64, !dbg !3587
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3587
  br label %135, !dbg !3587

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3587
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3587
  store ptr %134, ptr %4, align 8, !dbg !3587
  br label %135, !dbg !3587

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3587
  %138 = load ptr, ptr %137, align 8, !dbg !3587
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3593
  store ptr %138, ptr %139, align 8, !dbg !3590, !tbaa !1060
  %140 = icmp eq ptr %138, null, !dbg !3591
  br i1 %140, label %197, label %141, !dbg !3592

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 7, metadata !3580, metadata !DIExpression()), !dbg !3583
  %142 = icmp sgt i32 %136, -1, !dbg !3587
  br i1 %142, label %150, label %143, !dbg !3587

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3587
  store i32 %144, ptr %7, align 8, !dbg !3587
  %145 = icmp ult i32 %136, -7, !dbg !3587
  br i1 %145, label %146, label %150, !dbg !3587

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3587
  %148 = sext i32 %136 to i64, !dbg !3587
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3587
  br label %154, !dbg !3587

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3587
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3587
  store ptr %153, ptr %4, align 8, !dbg !3587
  br label %154, !dbg !3587

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3587
  %157 = load ptr, ptr %156, align 8, !dbg !3587
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3593
  store ptr %157, ptr %158, align 8, !dbg !3590, !tbaa !1060
  %159 = icmp eq ptr %157, null, !dbg !3591
  br i1 %159, label %197, label %160, !dbg !3592

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 8, metadata !3580, metadata !DIExpression()), !dbg !3583
  %161 = icmp sgt i32 %155, -1, !dbg !3587
  br i1 %161, label %169, label %162, !dbg !3587

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3587
  store i32 %163, ptr %7, align 8, !dbg !3587
  %164 = icmp ult i32 %155, -7, !dbg !3587
  br i1 %164, label %165, label %169, !dbg !3587

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3587
  %167 = sext i32 %155 to i64, !dbg !3587
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3587
  br label %173, !dbg !3587

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3587
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3587
  store ptr %172, ptr %4, align 8, !dbg !3587
  br label %173, !dbg !3587

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3587
  %176 = load ptr, ptr %175, align 8, !dbg !3587
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3593
  store ptr %176, ptr %177, align 8, !dbg !3590, !tbaa !1060
  %178 = icmp eq ptr %176, null, !dbg !3591
  br i1 %178, label %197, label %179, !dbg !3592

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 9, metadata !3580, metadata !DIExpression()), !dbg !3583
  %180 = icmp sgt i32 %174, -1, !dbg !3587
  br i1 %180, label %188, label %181, !dbg !3587

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3587
  store i32 %182, ptr %7, align 8, !dbg !3587
  %183 = icmp ult i32 %174, -7, !dbg !3587
  br i1 %183, label %184, label %188, !dbg !3587

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3587
  %186 = sext i32 %174 to i64, !dbg !3587
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3587
  br label %191, !dbg !3587

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3587
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3587
  store ptr %190, ptr %4, align 8, !dbg !3587
  br label %191, !dbg !3587

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3587
  %193 = load ptr, ptr %192, align 8, !dbg !3587
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3593
  store ptr %193, ptr %194, align 8, !dbg !3590, !tbaa !1060
  %195 = icmp eq ptr %193, null, !dbg !3591
  %196 = select i1 %195, i64 9, i64 10, !dbg !3592
  br label %197, !dbg !3592

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3594
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3595
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3596
  ret void, !dbg !3596
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3597 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3601, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %1, metadata !3602, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %2, metadata !3603, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %3, metadata !3604, metadata !DIExpression()), !dbg !3606
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3607
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.va_start(ptr nonnull %5), !dbg !3609
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3610, !tbaa.struct !1402
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3610
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3610
  call void @llvm.va_end(ptr nonnull %5), !dbg !3611
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3612
  ret void, !dbg !3612
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3613 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3614, !tbaa !1060
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %1), !dbg !3614
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.17.102, i32 noundef 5) #39, !dbg !3615
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.103) #39, !dbg !3615
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.19.104, i32 noundef 5) #39, !dbg !3616
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.105, ptr noundef nonnull @.str.21) #39, !dbg !3616
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !3617
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.106) #39, !dbg !3617
  ret void, !dbg !3618
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3619 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %1, metadata !3625, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %2, metadata !3626, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %0, metadata !3628, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %2, metadata !3632, metadata !DIExpression()), !dbg !3633
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3635
  call void @llvm.dbg.value(metadata ptr %4, metadata !3636, metadata !DIExpression()), !dbg !3641
  %5 = icmp eq ptr %4, null, !dbg !3643
  br i1 %5, label %6, label %7, !dbg !3645

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3646
  unreachable, !dbg !3646

7:                                                ; preds = %3
  ret ptr %4, !dbg !3647
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3629 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3628, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %2, metadata !3632, metadata !DIExpression()), !dbg !3648
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %4, metadata !3636, metadata !DIExpression()), !dbg !3650
  %5 = icmp eq ptr %4, null, !dbg !3652
  br i1 %5, label %6, label %7, !dbg !3653

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3654
  unreachable, !dbg !3654

7:                                                ; preds = %3
  ret ptr %4, !dbg !3655
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3656 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3660, metadata !DIExpression()), !dbg !3661
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3662
  call void @llvm.dbg.value(metadata ptr %2, metadata !3636, metadata !DIExpression()), !dbg !3663
  %3 = icmp eq ptr %2, null, !dbg !3665
  br i1 %3, label %4, label %5, !dbg !3666

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3667
  unreachable, !dbg !3667

5:                                                ; preds = %1
  ret ptr %2, !dbg !3668
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3669 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3670 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3674, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %0, metadata !3676, metadata !DIExpression()), !dbg !3680
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3682
  call void @llvm.dbg.value(metadata ptr %2, metadata !3636, metadata !DIExpression()), !dbg !3683
  %3 = icmp eq ptr %2, null, !dbg !3685
  br i1 %3, label %4, label %5, !dbg !3686

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3687
  unreachable, !dbg !3687

5:                                                ; preds = %1
  ret ptr %2, !dbg !3688
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3689 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %0, metadata !3660, metadata !DIExpression()), !dbg !3695
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3697
  call void @llvm.dbg.value(metadata ptr %2, metadata !3636, metadata !DIExpression()), !dbg !3698
  %3 = icmp eq ptr %2, null, !dbg !3700
  br i1 %3, label %4, label %5, !dbg !3701

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3702
  unreachable, !dbg !3702

5:                                                ; preds = %1
  ret ptr %2, !dbg !3703
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %1, metadata !3709, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %0, metadata !3711, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3716
  %3 = icmp eq i64 %1, 0, !dbg !3718
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3718
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3719
  call void @llvm.dbg.value(metadata ptr %5, metadata !3636, metadata !DIExpression()), !dbg !3720
  %6 = icmp eq ptr %5, null, !dbg !3722
  br i1 %6, label %7, label %8, !dbg !3723

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3724
  unreachable, !dbg !3724

8:                                                ; preds = %2
  ret ptr %5, !dbg !3725
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3726 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3727 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %1, metadata !3732, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %0, metadata !3734, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %1, metadata !3737, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %0, metadata !3711, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3740
  %3 = icmp eq i64 %1, 0, !dbg !3742
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3742
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3743
  call void @llvm.dbg.value(metadata ptr %5, metadata !3636, metadata !DIExpression()), !dbg !3744
  %6 = icmp eq ptr %5, null, !dbg !3746
  br i1 %6, label %7, label %8, !dbg !3747

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3748
  unreachable, !dbg !3748

8:                                                ; preds = %2
  ret ptr %5, !dbg !3749
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3750 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %1, metadata !3755, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %2, metadata !3756, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata ptr %0, metadata !3758, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %2, metadata !3762, metadata !DIExpression()), !dbg !3763
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3765
  call void @llvm.dbg.value(metadata ptr %4, metadata !3636, metadata !DIExpression()), !dbg !3766
  %5 = icmp eq ptr %4, null, !dbg !3768
  br i1 %5, label %6, label %7, !dbg !3769

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3770
  unreachable, !dbg !3770

7:                                                ; preds = %3
  ret ptr %4, !dbg !3771
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3772 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3776, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %1, metadata !3777, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr null, metadata !3628, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3779
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3781
  call void @llvm.dbg.value(metadata ptr %3, metadata !3636, metadata !DIExpression()), !dbg !3782
  %4 = icmp eq ptr %3, null, !dbg !3784
  br i1 %4, label %5, label %6, !dbg !3785

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3786
  unreachable, !dbg !3786

6:                                                ; preds = %2
  ret ptr %3, !dbg !3787
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3788 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3792, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i64 %1, metadata !3793, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata ptr null, metadata !3754, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %0, metadata !3755, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %1, metadata !3756, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr null, metadata !3758, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 %0, metadata !3761, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 %1, metadata !3762, metadata !DIExpression()), !dbg !3797
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3799
  call void @llvm.dbg.value(metadata ptr %3, metadata !3636, metadata !DIExpression()), !dbg !3800
  %4 = icmp eq ptr %3, null, !dbg !3802
  br i1 %4, label %5, label %6, !dbg !3803

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3804
  unreachable, !dbg !3804

6:                                                ; preds = %2
  ret ptr %3, !dbg !3805
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3806 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %1, metadata !3811, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %0, metadata !976, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %1, metadata !977, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 1, metadata !978, metadata !DIExpression()), !dbg !3813
  %3 = load i64, ptr %1, align 8, !dbg !3815, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 %3, metadata !979, metadata !DIExpression()), !dbg !3813
  %4 = icmp eq ptr %0, null, !dbg !3816
  br i1 %4, label %5, label %8, !dbg !3818

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3819
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3822
  br label %15, !dbg !3822

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3823
  %10 = add nuw i64 %9, 1, !dbg !3823
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3823
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3823
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3823
  call void @llvm.dbg.value(metadata i64 %13, metadata !979, metadata !DIExpression()), !dbg !3813
  br i1 %12, label %14, label %15, !dbg !3826

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3827
  unreachable, !dbg !3827

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3813
  call void @llvm.dbg.value(metadata i64 %16, metadata !979, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %0, metadata !3628, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %16, metadata !3631, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 1, metadata !3632, metadata !DIExpression()), !dbg !3828
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3830
  call void @llvm.dbg.value(metadata ptr %17, metadata !3636, metadata !DIExpression()), !dbg !3831
  %18 = icmp eq ptr %17, null, !dbg !3833
  br i1 %18, label %19, label %20, !dbg !3834

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3835
  unreachable, !dbg !3835

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !976, metadata !DIExpression()), !dbg !3813
  store i64 %16, ptr %1, align 8, !dbg !3836, !tbaa !1791
  ret ptr %17, !dbg !3837
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !971 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !976, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata ptr %1, metadata !977, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %2, metadata !978, metadata !DIExpression()), !dbg !3838
  %4 = load i64, ptr %1, align 8, !dbg !3839, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !979, metadata !DIExpression()), !dbg !3838
  %5 = icmp eq ptr %0, null, !dbg !3840
  br i1 %5, label %6, label %13, !dbg !3841

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3842
  br i1 %7, label %8, label %20, !dbg !3843

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3844
  call void @llvm.dbg.value(metadata i64 %9, metadata !979, metadata !DIExpression()), !dbg !3838
  %10 = icmp ugt i64 %2, 128, !dbg !3846
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %12, metadata !979, metadata !DIExpression()), !dbg !3838
  br label %20, !dbg !3848

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3849
  %15 = add nuw i64 %14, 1, !dbg !3849
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3849
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3849
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3849
  call void @llvm.dbg.value(metadata i64 %18, metadata !979, metadata !DIExpression()), !dbg !3838
  br i1 %17, label %19, label %20, !dbg !3850

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3851
  unreachable, !dbg !3851

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3838
  call void @llvm.dbg.value(metadata i64 %21, metadata !979, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata ptr %0, metadata !3628, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %21, metadata !3631, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %2, metadata !3632, metadata !DIExpression()), !dbg !3852
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3854
  call void @llvm.dbg.value(metadata ptr %22, metadata !3636, metadata !DIExpression()), !dbg !3855
  %23 = icmp eq ptr %22, null, !dbg !3857
  br i1 %23, label %24, label %25, !dbg !3858

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3859
  unreachable, !dbg !3859

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !976, metadata !DIExpression()), !dbg !3838
  store i64 %21, ptr %1, align 8, !dbg !3860, !tbaa !1791
  ret ptr %22, !dbg !3861
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !983 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !991, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %1, metadata !992, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %2, metadata !993, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %3, metadata !994, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %4, metadata !995, metadata !DIExpression()), !dbg !3862
  %6 = load i64, ptr %1, align 8, !dbg !3863, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 %6, metadata !996, metadata !DIExpression()), !dbg !3862
  %7 = ashr i64 %6, 1, !dbg !3864
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3864
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3864
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3864
  call void @llvm.dbg.value(metadata i64 %10, metadata !997, metadata !DIExpression()), !dbg !3862
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %11, metadata !997, metadata !DIExpression()), !dbg !3862
  %12 = icmp sgt i64 %3, -1, !dbg !3867
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3869
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %15, metadata !997, metadata !DIExpression()), !dbg !3862
  %16 = icmp slt i64 %4, 0, !dbg !3870
  br i1 %16, label %17, label %30, !dbg !3870

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3870
  br i1 %18, label %19, label %24, !dbg !3870

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3870
  %21 = udiv i64 9223372036854775807, %20, !dbg !3870
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3870
  br i1 %23, label %46, label %43, !dbg !3870

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3870
  br i1 %25, label %43, label %26, !dbg !3870

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3870
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3870
  %29 = icmp ult i64 %28, %15, !dbg !3870
  br i1 %29, label %46, label %43, !dbg !3870

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3870
  br i1 %31, label %43, label %32, !dbg !3870

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3870
  br i1 %33, label %34, label %40, !dbg !3870

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3870
  br i1 %35, label %43, label %36, !dbg !3870

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3870
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3870
  %39 = icmp ult i64 %38, %4, !dbg !3870
  br i1 %39, label %46, label %43, !dbg !3870

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3870
  br i1 %42, label %46, label %43, !dbg !3870

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !998, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3862
  %44 = mul i64 %15, %4, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %44, metadata !998, metadata !DIExpression()), !dbg !3862
  %45 = icmp slt i64 %44, 128, !dbg !3870
  br i1 %45, label %46, label %52, !dbg !3870

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !999, metadata !DIExpression()), !dbg !3862
  %48 = sdiv i64 %47, %4, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %48, metadata !997, metadata !DIExpression()), !dbg !3862
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %51, metadata !998, metadata !DIExpression()), !dbg !3862
  br label %52, !dbg !3875

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3862
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3862
  call void @llvm.dbg.value(metadata i64 %54, metadata !998, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %53, metadata !997, metadata !DIExpression()), !dbg !3862
  %55 = icmp eq ptr %0, null, !dbg !3876
  br i1 %55, label %56, label %57, !dbg !3878

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3879, !tbaa !1791
  br label %57, !dbg !3880

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3881
  %59 = icmp slt i64 %58, %2, !dbg !3883
  br i1 %59, label %60, label %97, !dbg !3884

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3885
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3885
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %63, metadata !997, metadata !DIExpression()), !dbg !3862
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3886
  br i1 %66, label %96, label %67, !dbg !3886

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3887

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3887
  br i1 %69, label %70, label %75, !dbg !3887

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3887
  %72 = udiv i64 9223372036854775807, %71, !dbg !3887
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3887
  br i1 %74, label %96, label %94, !dbg !3887

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3887
  br i1 %76, label %94, label %77, !dbg !3887

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3887
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3887
  %80 = icmp ult i64 %79, %63, !dbg !3887
  br i1 %80, label %96, label %94, !dbg !3887

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3887
  br i1 %82, label %94, label %83, !dbg !3887

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3887
  br i1 %84, label %85, label %91, !dbg !3887

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3887
  br i1 %86, label %94, label %87, !dbg !3887

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3887
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3887
  %90 = icmp ult i64 %89, %4, !dbg !3887
  br i1 %90, label %96, label %94, !dbg !3887

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3887
  br i1 %93, label %96, label %94, !dbg !3887

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !998, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3862
  %95 = mul i64 %63, %4, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %95, metadata !998, metadata !DIExpression()), !dbg !3862
  br label %97, !dbg !3888

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !3889
  unreachable, !dbg !3889

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3862
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3862
  call void @llvm.dbg.value(metadata i64 %99, metadata !998, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %98, metadata !997, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %99, metadata !3709, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata ptr %0, metadata !3711, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %99, metadata !3715, metadata !DIExpression()), !dbg !3892
  %100 = icmp eq i64 %99, 0, !dbg !3894
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3894
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #45, !dbg !3895
  call void @llvm.dbg.value(metadata ptr %102, metadata !3636, metadata !DIExpression()), !dbg !3896
  %103 = icmp eq ptr %102, null, !dbg !3898
  br i1 %103, label %104, label %105, !dbg !3899

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !3900
  unreachable, !dbg !3900

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !991, metadata !DIExpression()), !dbg !3862
  store i64 %98, ptr %1, align 8, !dbg !3901, !tbaa !1791
  ret ptr %102, !dbg !3902
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3903 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3905, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %0, metadata !3907, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 1, metadata !3910, metadata !DIExpression()), !dbg !3911
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3913
  call void @llvm.dbg.value(metadata ptr %2, metadata !3636, metadata !DIExpression()), !dbg !3914
  %3 = icmp eq ptr %2, null, !dbg !3916
  br i1 %3, label %4, label %5, !dbg !3917

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3918
  unreachable, !dbg !3918

5:                                                ; preds = %1
  ret ptr %2, !dbg !3919
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3920 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3908 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3907, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %1, metadata !3910, metadata !DIExpression()), !dbg !3921
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3922
  call void @llvm.dbg.value(metadata ptr %3, metadata !3636, metadata !DIExpression()), !dbg !3923
  %4 = icmp eq ptr %3, null, !dbg !3925
  br i1 %4, label %5, label %6, !dbg !3926

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3927
  unreachable, !dbg !3927

6:                                                ; preds = %2
  ret ptr %3, !dbg !3928
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3929 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3931, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %0, metadata !3933, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 1, metadata !3936, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %0, metadata !3939, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 1, metadata !3942, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %0, metadata !3939, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 1, metadata !3942, metadata !DIExpression()), !dbg !3943
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3945
  call void @llvm.dbg.value(metadata ptr %2, metadata !3636, metadata !DIExpression()), !dbg !3946
  %3 = icmp eq ptr %2, null, !dbg !3948
  br i1 %3, label %4, label %5, !dbg !3949

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3950
  unreachable, !dbg !3950

5:                                                ; preds = %1
  ret ptr %2, !dbg !3951
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3934 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3933, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i64 %0, metadata !3939, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3942, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %0, metadata !3939, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3942, metadata !DIExpression()), !dbg !3953
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3955
  call void @llvm.dbg.value(metadata ptr %3, metadata !3636, metadata !DIExpression()), !dbg !3956
  %4 = icmp eq ptr %3, null, !dbg !3958
  br i1 %4, label %5, label %6, !dbg !3959

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3960
  unreachable, !dbg !3960

6:                                                ; preds = %2
  ret ptr %3, !dbg !3961
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3962 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3966, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %1, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3969
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3971
  call void @llvm.dbg.value(metadata ptr %3, metadata !3636, metadata !DIExpression()), !dbg !3972
  %4 = icmp eq ptr %3, null, !dbg !3974
  br i1 %4, label %5, label %6, !dbg !3975

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3976
  unreachable, !dbg !3976

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3977, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %0, metadata !3983, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %1, metadata !3984, metadata !DIExpression()), !dbg !3985
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3987
  ret ptr %3, !dbg !3988
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3989 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3993, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %1, metadata !3674, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %1, metadata !3676, metadata !DIExpression()), !dbg !3998
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4000
  call void @llvm.dbg.value(metadata ptr %3, metadata !3636, metadata !DIExpression()), !dbg !4001
  %4 = icmp eq ptr %3, null, !dbg !4003
  br i1 %4, label %5, label %6, !dbg !4004

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4005
  unreachable, !dbg !4005

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3977, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr %0, metadata !3983, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3984, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4008
  ret ptr %3, !dbg !4009
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4010 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4014, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i64 %1, metadata !4015, metadata !DIExpression()), !dbg !4017
  %3 = add nsw i64 %1, 1, !dbg !4018
  call void @llvm.dbg.value(metadata i64 %3, metadata !3674, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %3, metadata !3676, metadata !DIExpression()), !dbg !4021
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4023
  call void @llvm.dbg.value(metadata ptr %4, metadata !3636, metadata !DIExpression()), !dbg !4024
  %5 = icmp eq ptr %4, null, !dbg !4026
  br i1 %5, label %6, label %7, !dbg !4027

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4028
  unreachable, !dbg !4028

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4016, metadata !DIExpression()), !dbg !4017
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4029
  store i8 0, ptr %8, align 1, !dbg !4030, !tbaa !1131
  call void @llvm.dbg.value(metadata ptr %4, metadata !3977, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata ptr %0, metadata !3983, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %1, metadata !3984, metadata !DIExpression()), !dbg !4031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4033
  ret ptr %4, !dbg !4034
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4035 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4037, metadata !DIExpression()), !dbg !4038
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4039
  %3 = add i64 %2, 1, !dbg !4040
  call void @llvm.dbg.value(metadata ptr %0, metadata !3966, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %3, metadata !3967, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %3, metadata !3660, metadata !DIExpression()), !dbg !4043
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4045
  call void @llvm.dbg.value(metadata ptr %4, metadata !3636, metadata !DIExpression()), !dbg !4046
  %5 = icmp eq ptr %4, null, !dbg !4048
  br i1 %5, label %6, label %7, !dbg !4049

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4050
  unreachable, !dbg !4050

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3977, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %0, metadata !3983, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %3, metadata !3984, metadata !DIExpression()), !dbg !4051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4053
  ret ptr %4, !dbg !4054
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4055 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4060, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %1, metadata !4057, metadata !DIExpression()), !dbg !4061
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.117, ptr noundef nonnull @.str.2.118, i32 noundef 5) #39, !dbg !4060
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef %2) #39, !dbg !4060
  %3 = icmp eq i32 %1, 0, !dbg !4060
  tail call void @llvm.assume(i1 %3), !dbg !4060
  tail call void @abort() #41, !dbg !4062
  unreachable, !dbg !4062
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4063 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4067, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %1, metadata !4068, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 %2, metadata !4069, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 %3, metadata !4070, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %4, metadata !4071, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %5, metadata !4072, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %6, metadata !4073, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %7, metadata !4074, metadata !DIExpression()), !dbg !4084
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #39, !dbg !4085
  call void @llvm.dbg.value(metadata ptr %9, metadata !4075, metadata !DIExpression(DW_OP_deref)), !dbg !4084
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #39, !dbg !4086
  call void @llvm.dbg.value(metadata i32 %10, metadata !4077, metadata !DIExpression()), !dbg !4084
  %11 = icmp eq i32 %10, 4, !dbg !4087
  br i1 %11, label %40, label %12, !dbg !4089

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4090, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 %13, metadata !4075, metadata !DIExpression()), !dbg !4084
  %14 = icmp ult i64 %13, %2, !dbg !4093
  br i1 %14, label %15, label %20, !dbg !4094

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !4076, metadata !DIExpression()), !dbg !4084
  %16 = and i32 %7, 4, !dbg !4095
  %17 = icmp eq i32 %16, 0, !dbg !4097
  %18 = select i1 %17, i32 75, i32 34, !dbg !4097
  call void @llvm.dbg.value(metadata i32 %18, metadata !4079, metadata !DIExpression()), !dbg !4084
  %19 = icmp eq i32 %10, 0, !dbg !4098
  call void @llvm.dbg.value(metadata i32 undef, metadata !4077, metadata !DIExpression()), !dbg !4084
  br i1 %19, label %33, label %27, !dbg !4100

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4101
  br i1 %21, label %22, label %27, !dbg !4103

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !4076, metadata !DIExpression()), !dbg !4084
  %23 = and i32 %7, 8, !dbg !4104
  %24 = icmp eq i32 %23, 0, !dbg !4106
  %25 = select i1 %24, i32 75, i32 34, !dbg !4106
  call void @llvm.dbg.value(metadata i32 %25, metadata !4079, metadata !DIExpression()), !dbg !4084
  %26 = icmp eq i32 %10, 0, !dbg !4107
  call void @llvm.dbg.value(metadata i32 undef, metadata !4077, metadata !DIExpression()), !dbg !4084
  br i1 %26, label %33, label %27, !dbg !4109

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !4076, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %10, metadata !4077, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %28, metadata !4079, metadata !DIExpression()), !dbg !4084
  %30 = icmp eq i32 %10, 1, !dbg !4110
  %31 = select i1 %30, i32 %28, i32 0, !dbg !4111
  call void @llvm.dbg.value(metadata i32 %31, metadata !4080, metadata !DIExpression()), !dbg !4084
  %32 = icmp eq i32 %10, 0, !dbg !4112
  br i1 %32, label %45, label %33, !dbg !4113

33:                                               ; preds = %22, %15, %27
  %34 = phi i32 [ %31, %27 ], [ %18, %15 ], [ %25, %22 ]
  %35 = phi i1 [ %30, %27 ], [ true, %15 ], [ true, %22 ]
  %36 = phi i64 [ %29, %27 ], [ %2, %15 ], [ %3, %22 ]
  %37 = and i32 %7, 2
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %38, %35, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4075, metadata !DIExpression()), !dbg !4084
  br i1 %39, label %45, label %40, !dbg !4114

40:                                               ; preds = %8, %33
  %41 = phi i32 [ %34, %33 ], [ 0, %8 ]
  %42 = icmp eq i32 %6, 0, !dbg !4115
  %43 = select i1 %42, i32 1, i32 %6, !dbg !4115
  %44 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !4115
  call void (i32, i32, ptr, ...) @error(i32 noundef %43, i32 noundef %41, ptr noundef nonnull @.str.122, ptr noundef nonnull %5, ptr noundef %44) #39, !dbg !4115
  unreachable, !dbg !4115

45:                                               ; preds = %33, %27
  %46 = phi i32 [ %34, %33 ], [ %31, %27 ]
  %47 = phi i64 [ %36, %33 ], [ %29, %27 ]
  %48 = tail call ptr @__errno_location() #42, !dbg !4116
  store i32 %46, ptr %48, align 4, !dbg !4117, !tbaa !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !4118
  ret i64 %47, !dbg !4119
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4120 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4124, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %1, metadata !4125, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %2, metadata !4126, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata ptr %3, metadata !4127, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata ptr %4, metadata !4128, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32 %5, metadata !4129, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata ptr %0, metadata !4067, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 10, metadata !4068, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 %2, metadata !4070, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr %3, metadata !4071, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr %4, metadata !4072, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 %5, metadata !4073, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4074, metadata !DIExpression()), !dbg !4131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !4133
  call void @llvm.dbg.value(metadata ptr %7, metadata !4075, metadata !DIExpression(DW_OP_deref)), !dbg !4131
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #39, !dbg !4134
  call void @llvm.dbg.value(metadata i32 %8, metadata !4077, metadata !DIExpression()), !dbg !4131
  %9 = icmp eq i32 %8, 4, !dbg !4135
  br i1 %9, label %24, label %10, !dbg !4136

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4137, !tbaa !1791
  call void @llvm.dbg.value(metadata i64 %11, metadata !4075, metadata !DIExpression()), !dbg !4131
  %12 = icmp ult i64 %11, %1, !dbg !4138
  br i1 %12, label %13, label %15, !dbg !4139

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !4076, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 75, metadata !4079, metadata !DIExpression()), !dbg !4131
  %14 = icmp eq i32 %8, 0, !dbg !4140
  call void @llvm.dbg.value(metadata i32 undef, metadata !4077, metadata !DIExpression()), !dbg !4131
  br i1 %14, label %24, label %19, !dbg !4141

15:                                               ; preds = %10
  %16 = icmp ugt i64 %11, %2, !dbg !4142
  br i1 %16, label %17, label %19, !dbg !4143

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !4076, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 75, metadata !4079, metadata !DIExpression()), !dbg !4131
  %18 = icmp eq i32 %8, 0, !dbg !4144
  call void @llvm.dbg.value(metadata i32 undef, metadata !4077, metadata !DIExpression()), !dbg !4131
  br i1 %18, label %24, label %19, !dbg !4145

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !4076, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 %8, metadata !4077, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 75, metadata !4079, metadata !DIExpression()), !dbg !4131
  %21 = icmp eq i32 %8, 1, !dbg !4146
  %22 = select i1 %21, i32 75, i32 0, !dbg !4147
  call void @llvm.dbg.value(metadata i32 %22, metadata !4080, metadata !DIExpression()), !dbg !4131
  %23 = icmp eq i32 %8, 0, !dbg !4148
  br i1 %23, label %29, label %24, !dbg !4149

24:                                               ; preds = %13, %17, %19, %6
  %25 = phi i32 [ 0, %6 ], [ %22, %19 ], [ 75, %13 ], [ 75, %17 ]
  %26 = icmp eq i32 %5, 0, !dbg !4150
  %27 = select i1 %26, i32 1, i32 %5, !dbg !4150
  %28 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !4150
  call void (i32, i32, ptr, ...) @error(i32 noundef %27, i32 noundef %25, ptr noundef nonnull @.str.122, ptr noundef nonnull %4, ptr noundef %28) #39, !dbg !4150
  unreachable, !dbg !4150

29:                                               ; preds = %19
  %30 = tail call ptr @__errno_location() #42, !dbg !4151
  store i32 %22, ptr %30, align 4, !dbg !4152, !tbaa !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !4153
  ret i64 %20, !dbg !4154
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4155 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4161, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %1, metadata !4162, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i32 %2, metadata !4163, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %3, metadata !4164, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %4, metadata !4165, metadata !DIExpression()), !dbg !4179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !4180
  %7 = icmp eq ptr %1, null, !dbg !4181
  call void @llvm.dbg.value(metadata ptr %20, metadata !4167, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i8 poison, metadata !4171, metadata !DIExpression()), !dbg !4182
  %8 = tail call ptr @__ctype_b_loc() #42, !dbg !4179
  %9 = load ptr, ptr %8, align 8, !tbaa !1060
  br label %10, !dbg !4183

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4182
  %12 = load i8, ptr %11, align 1, !dbg !4182, !tbaa !1131
  call void @llvm.dbg.value(metadata i8 %12, metadata !4171, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %11, metadata !4168, metadata !DIExpression()), !dbg !4182
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4184
  %15 = load i16, ptr %14, align 2, !dbg !4184, !tbaa !1163
  %16 = and i16 %15, 8192, !dbg !4184
  %17 = icmp eq i16 %16, 0, !dbg !4183
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4185
  call void @llvm.dbg.value(metadata ptr %18, metadata !4168, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i8 poison, metadata !4171, metadata !DIExpression()), !dbg !4182
  br i1 %17, label %19, label %10, !dbg !4183, !llvm.loop !4186

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4181
  %21 = icmp eq i8 %12, 45, !dbg !4188
  br i1 %21, label %22, label %23, !dbg !4190

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4191, !tbaa !1060
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #42, !dbg !4193
  store i32 0, ptr %24, align 4, !dbg !4194, !tbaa !1122
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef %20, i32 noundef %2) #39, !dbg !4195
  call void @llvm.dbg.value(metadata i64 %25, metadata !4172, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i32 0, metadata !4173, metadata !DIExpression()), !dbg !4179
  %26 = load ptr, ptr %20, align 8, !dbg !4196, !tbaa !1060
  %27 = icmp eq ptr %26, %0, !dbg !4198
  br i1 %27, label %28, label %37, !dbg !4199

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4200
  br i1 %29, label %386, label %30, !dbg !4203

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4204, !tbaa !1131
  %32 = icmp eq i8 %31, 0, !dbg !4204
  br i1 %32, label %386, label %33, !dbg !4205

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !4204
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #40, !dbg !4206
  %36 = icmp eq ptr %35, null, !dbg !4206
  br i1 %36, label %386, label %44, !dbg !4207

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4208, !tbaa !1122
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4210

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !4173, metadata !DIExpression()), !dbg !4179
  br label %40, !dbg !4211

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4179
  call void @llvm.dbg.value(metadata i32 %41, metadata !4173, metadata !DIExpression()), !dbg !4179
  %42 = icmp eq ptr %4, null, !dbg !4213
  br i1 %42, label %43, label %44, !dbg !4215

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !4172, metadata !DIExpression()), !dbg !4179
  store i64 %25, ptr %3, align 8, !dbg !4216, !tbaa !1791
  br label %386, !dbg !4218

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4219, !tbaa !1131
  %48 = icmp eq i8 %47, 0, !dbg !4220
  br i1 %48, label %383, label %49, !dbg !4221

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !4219
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #40, !dbg !4222
  %52 = icmp eq ptr %51, null, !dbg !4222
  br i1 %52, label %53, label %55, !dbg !4224

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %25, metadata !4172, metadata !DIExpression()), !dbg !4179
  store i64 %46, ptr %3, align 8, !dbg !4225, !tbaa !1791
  %54 = or i32 %45, 2, !dbg !4227
  br label %386, !dbg !4228

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 1024, metadata !4174, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i32 1, metadata !4177, metadata !DIExpression()), !dbg !4229
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
  ], !dbg !4230

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #40, !dbg !4231
  %58 = icmp eq ptr %57, null, !dbg !4231
  br i1 %58, label %68, label %59, !dbg !4234

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4235
  %61 = load i8, ptr %60, align 1, !dbg !4235, !tbaa !1131
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4236

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4237
  %64 = load i8, ptr %63, align 1, !dbg !4237, !tbaa !1131
  %65 = icmp eq i8 %64, 66, !dbg !4240
  %66 = select i1 %65, i64 3, i64 1, !dbg !4241
  br label %68, !dbg !4241

67:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !4174, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i32 2, metadata !4177, metadata !DIExpression()), !dbg !4229
  br label %68, !dbg !4242

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ]
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4177, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i32 poison, metadata !4174, metadata !DIExpression()), !dbg !4229
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
  ], !dbg !4243

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4262
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4264
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4264
  %74 = mul i64 %46, %69, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %74, metadata !4261, metadata !DIExpression()), !dbg !4262
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %73, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i1 %73, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4262
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4264
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4264
  %78 = mul i64 %75, %69, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %78, metadata !4261, metadata !DIExpression()), !dbg !4262
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4262
  %80 = or i1 %73, %77, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %80, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i1 %80, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4262
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4264
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4264
  %83 = mul i64 %79, %69, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %83, metadata !4261, metadata !DIExpression()), !dbg !4262
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4262
  %85 = or i1 %80, %82, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %85, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i1 %85, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4262
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4264
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4264
  %88 = mul i64 %84, %69, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %88, metadata !4261, metadata !DIExpression()), !dbg !4262
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4262
  %90 = or i1 %85, %87, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %90, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i1 %90, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4262
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4264
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4264
  %93 = mul i64 %89, %69, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %93, metadata !4261, metadata !DIExpression()), !dbg !4262
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4262
  %95 = or i1 %90, %92, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %95, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i1 %95, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4262
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4264
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4264
  %98 = mul i64 %94, %69, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %98, metadata !4261, metadata !DIExpression()), !dbg !4262
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4262
  %100 = or i1 %95, %97, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %100, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i1 %100, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4262
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4264
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4264
  %103 = mul i64 %99, %69, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %103, metadata !4261, metadata !DIExpression()), !dbg !4262
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4262
  %105 = or i1 %100, %102, !dbg !4266
  %106 = zext i1 %105 to i32, !dbg !4266
  call void @llvm.dbg.value(metadata i32 %106, metadata !4244, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4252
  br label %372, !dbg !4267

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 8, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4270
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4272
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4272
  %110 = mul i64 %46, %69, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %110, metadata !4261, metadata !DIExpression()), !dbg !4270
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4270
  call void @llvm.dbg.value(metadata i1 %109, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i1 %109, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4270
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4272
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4272
  %114 = mul i64 %111, %69, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %114, metadata !4261, metadata !DIExpression()), !dbg !4270
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4270
  %116 = or i1 %109, %113, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %116, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i1 %116, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4270
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4272
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4272
  %119 = mul i64 %115, %69, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %119, metadata !4261, metadata !DIExpression()), !dbg !4270
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4270
  %121 = or i1 %116, %118, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %121, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i1 %121, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4270
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4272
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4272
  %124 = mul i64 %120, %69, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %124, metadata !4261, metadata !DIExpression()), !dbg !4270
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4270
  %126 = or i1 %121, %123, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %126, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i1 %126, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4270
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4272
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4272
  %129 = mul i64 %125, %69, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %129, metadata !4261, metadata !DIExpression()), !dbg !4270
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4270
  %131 = or i1 %126, %128, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %131, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i1 %131, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4270
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4272
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4272
  %134 = mul i64 %130, %69, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %134, metadata !4261, metadata !DIExpression()), !dbg !4270
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4270
  %136 = or i1 %131, %133, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %136, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i1 %136, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4270
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4272
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4272
  %139 = mul i64 %135, %69, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %139, metadata !4261, metadata !DIExpression()), !dbg !4270
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4270
  %141 = or i1 %136, %138, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %141, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i1 %141, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4268
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4270
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4272
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4272
  %144 = mul i64 %140, %69, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %144, metadata !4261, metadata !DIExpression()), !dbg !4270
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4270
  %146 = or i1 %141, %143, !dbg !4273
  %147 = zext i1 %146 to i32, !dbg !4273
  call void @llvm.dbg.value(metadata i32 %147, metadata !4244, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4268
  br label %372, !dbg !4267

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 9, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 8, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4278
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4278
  %151 = mul i64 %46, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %151, metadata !4261, metadata !DIExpression()), !dbg !4276
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4276
  call void @llvm.dbg.value(metadata i1 %150, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 8, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i1 %150, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 8, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4278
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4278
  %155 = mul i64 %152, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %155, metadata !4261, metadata !DIExpression()), !dbg !4276
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4276
  %157 = or i1 %150, %154, !dbg !4279
  call void @llvm.dbg.value(metadata i1 %157, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i1 %157, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4278
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4278
  %160 = mul i64 %156, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %160, metadata !4261, metadata !DIExpression()), !dbg !4276
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4276
  %162 = or i1 %157, %159, !dbg !4279
  call void @llvm.dbg.value(metadata i1 %162, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i1 %162, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4278
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4278
  %165 = mul i64 %161, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %165, metadata !4261, metadata !DIExpression()), !dbg !4276
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4276
  %167 = or i1 %162, %164, !dbg !4279
  call void @llvm.dbg.value(metadata i1 %167, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i1 %167, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4278
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4278
  %170 = mul i64 %166, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %170, metadata !4261, metadata !DIExpression()), !dbg !4276
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4276
  %172 = or i1 %167, %169, !dbg !4279
  call void @llvm.dbg.value(metadata i1 %172, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i1 %172, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4278
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4278
  %175 = mul i64 %171, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %175, metadata !4261, metadata !DIExpression()), !dbg !4276
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4276
  %177 = or i1 %172, %174, !dbg !4279
  call void @llvm.dbg.value(metadata i1 %177, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i1 %177, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4278
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4278
  %180 = mul i64 %176, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %180, metadata !4261, metadata !DIExpression()), !dbg !4276
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4276
  %182 = or i1 %177, %179, !dbg !4279
  call void @llvm.dbg.value(metadata i1 %182, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i1 %182, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4278
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4278
  %185 = mul i64 %181, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %185, metadata !4261, metadata !DIExpression()), !dbg !4276
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4276
  %187 = or i1 %182, %184, !dbg !4279
  call void @llvm.dbg.value(metadata i1 %187, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i1 %187, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4276
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4278
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4278
  %190 = mul i64 %186, %69, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %190, metadata !4261, metadata !DIExpression()), !dbg !4276
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4276
  %192 = or i1 %187, %189, !dbg !4279
  %193 = zext i1 %192 to i32, !dbg !4279
  call void @llvm.dbg.value(metadata i32 %193, metadata !4244, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4274
  br label %372, !dbg !4267

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 10, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 9, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4284
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4284
  %197 = mul i64 %46, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %197, metadata !4261, metadata !DIExpression()), !dbg !4282
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4282
  call void @llvm.dbg.value(metadata i1 %196, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 9, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %196, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 9, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 8, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4284
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4284
  %201 = mul i64 %198, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %201, metadata !4261, metadata !DIExpression()), !dbg !4282
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4282
  %203 = or i1 %196, %200, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %203, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 8, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %203, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 8, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4284
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4284
  %206 = mul i64 %202, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %206, metadata !4261, metadata !DIExpression()), !dbg !4282
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4282
  %208 = or i1 %203, %205, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %208, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %208, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 7, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4284
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4284
  %211 = mul i64 %207, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %211, metadata !4261, metadata !DIExpression()), !dbg !4282
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4282
  %213 = or i1 %208, %210, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %213, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %213, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4284
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4284
  %216 = mul i64 %212, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %216, metadata !4261, metadata !DIExpression()), !dbg !4282
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4282
  %218 = or i1 %213, %215, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %218, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %218, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4284
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4284
  %221 = mul i64 %217, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %221, metadata !4261, metadata !DIExpression()), !dbg !4282
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4282
  %223 = or i1 %218, %220, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %223, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %223, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4284
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4284
  %226 = mul i64 %222, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %226, metadata !4261, metadata !DIExpression()), !dbg !4282
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4282
  %228 = or i1 %223, %225, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %228, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %228, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4284
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4284
  %231 = mul i64 %227, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %231, metadata !4261, metadata !DIExpression()), !dbg !4282
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4282
  %233 = or i1 %228, %230, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %233, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %233, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4284
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4284
  %236 = mul i64 %232, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %236, metadata !4261, metadata !DIExpression()), !dbg !4282
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4282
  %238 = or i1 %233, %235, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %238, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i1 %238, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4280
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4282
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4284
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4284
  %241 = mul i64 %237, %69, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %241, metadata !4261, metadata !DIExpression()), !dbg !4282
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4282
  %243 = or i1 %238, %240, !dbg !4285
  %244 = zext i1 %243 to i32, !dbg !4285
  call void @llvm.dbg.value(metadata i32 %244, metadata !4244, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4280
  br label %372, !dbg !4267

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4288
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4290
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4290
  %248 = mul i64 %46, %69, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %248, metadata !4261, metadata !DIExpression()), !dbg !4288
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4288
  call void @llvm.dbg.value(metadata i1 %247, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i1 %247, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4288
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4290
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4290
  %252 = mul i64 %249, %69, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %252, metadata !4261, metadata !DIExpression()), !dbg !4288
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4288
  %254 = or i1 %247, %251, !dbg !4291
  call void @llvm.dbg.value(metadata i1 %254, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i1 %254, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4288
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4290
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4290
  %257 = mul i64 %253, %69, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %257, metadata !4261, metadata !DIExpression()), !dbg !4288
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4288
  %259 = or i1 %254, %256, !dbg !4291
  call void @llvm.dbg.value(metadata i1 %259, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i1 %259, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4288
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4290
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4290
  %262 = mul i64 %258, %69, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %262, metadata !4261, metadata !DIExpression()), !dbg !4288
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4288
  %264 = or i1 %259, %261, !dbg !4291
  call void @llvm.dbg.value(metadata i1 %264, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i1 %264, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4286
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4288
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4290
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4290
  %267 = mul i64 %263, %69, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %267, metadata !4261, metadata !DIExpression()), !dbg !4288
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4288
  %269 = or i1 %264, %266, !dbg !4291
  %270 = zext i1 %269 to i32, !dbg !4291
  call void @llvm.dbg.value(metadata i32 %270, metadata !4244, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4286
  br label %372, !dbg !4267

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 6, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4294
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4296
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4296
  %274 = mul i64 %46, %69, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %274, metadata !4261, metadata !DIExpression()), !dbg !4294
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %273, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i1 %273, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 5, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4294
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4296
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4296
  %278 = mul i64 %275, %69, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %278, metadata !4261, metadata !DIExpression()), !dbg !4294
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4294
  %280 = or i1 %273, %277, !dbg !4297
  call void @llvm.dbg.value(metadata i1 %280, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i1 %280, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4294
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4296
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4296
  %283 = mul i64 %279, %69, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %283, metadata !4261, metadata !DIExpression()), !dbg !4294
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4294
  %285 = or i1 %280, %282, !dbg !4297
  call void @llvm.dbg.value(metadata i1 %285, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i1 %285, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4294
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4296
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4296
  %288 = mul i64 %284, %69, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %288, metadata !4261, metadata !DIExpression()), !dbg !4294
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4294
  %290 = or i1 %285, %287, !dbg !4297
  call void @llvm.dbg.value(metadata i1 %290, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i1 %290, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4294
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4296
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4296
  %293 = mul i64 %289, %69, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %293, metadata !4261, metadata !DIExpression()), !dbg !4294
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4294
  %295 = or i1 %290, %292, !dbg !4297
  call void @llvm.dbg.value(metadata i1 %295, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i1 %295, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4292
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4294
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4296
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4296
  %298 = mul i64 %294, %69, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %298, metadata !4261, metadata !DIExpression()), !dbg !4294
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4294
  %300 = or i1 %295, %297, !dbg !4297
  %301 = zext i1 %300 to i32, !dbg !4297
  call void @llvm.dbg.value(metadata i32 %301, metadata !4244, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4292
  br label %372, !dbg !4267

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i32 512, metadata !4260, metadata !DIExpression()), !dbg !4298
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4300
  %304 = shl i64 %46, 9, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %304, metadata !4261, metadata !DIExpression()), !dbg !4298
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4298
  %306 = zext i1 %303 to i32, !dbg !4298
  call void @llvm.dbg.value(metadata i32 %306, metadata !4178, metadata !DIExpression()), !dbg !4229
  br label %372, !dbg !4301

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 1024, metadata !4260, metadata !DIExpression()), !dbg !4302
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4304
  %309 = shl i64 %46, 10, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %309, metadata !4261, metadata !DIExpression()), !dbg !4302
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4302
  %311 = zext i1 %308 to i32, !dbg !4302
  call void @llvm.dbg.value(metadata i32 %311, metadata !4178, metadata !DIExpression()), !dbg !4229
  br label %372, !dbg !4305

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4249, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 poison, metadata !4250, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4308
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4310
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4310
  %315 = mul i64 %46, %69, !dbg !4310
  call void @llvm.dbg.value(metadata i64 %315, metadata !4261, metadata !DIExpression()), !dbg !4308
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4308
  call void @llvm.dbg.value(metadata i1 %314, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4306
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4306
  call void @llvm.dbg.value(metadata i1 %314, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4306
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4308
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4310
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4310
  %319 = mul i64 %316, %69, !dbg !4310
  call void @llvm.dbg.value(metadata i64 %319, metadata !4261, metadata !DIExpression()), !dbg !4308
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4308
  %321 = or i1 %314, %318, !dbg !4311
  call void @llvm.dbg.value(metadata i1 %321, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4306
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4306
  call void @llvm.dbg.value(metadata i1 %321, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4306
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4308
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4310
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4310
  %324 = mul i64 %320, %69, !dbg !4310
  call void @llvm.dbg.value(metadata i64 %324, metadata !4261, metadata !DIExpression()), !dbg !4308
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4308
  %326 = or i1 %321, %323, !dbg !4311
  %327 = zext i1 %326 to i32, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %327, metadata !4244, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4306
  br label %372, !dbg !4267

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4249, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 poison, metadata !4250, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4312
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4314
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4314
  %331 = mul i64 %46, %69, !dbg !4314
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4316
  %333 = zext i1 %330 to i32, !dbg !4316
  call void @llvm.dbg.value(metadata i32 poison, metadata !4244, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 poison, metadata !4251, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr poison, metadata !4255, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 poison, metadata !4261, metadata !DIExpression()), !dbg !4316
  br label %372, !dbg !4267

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4249, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 poison, metadata !4250, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4317
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4319
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4321
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4321
  %337 = mul i64 %46, %69, !dbg !4321
  call void @llvm.dbg.value(metadata i64 %337, metadata !4261, metadata !DIExpression()), !dbg !4319
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4319
  call void @llvm.dbg.value(metadata i1 %336, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4317
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4317
  call void @llvm.dbg.value(metadata i1 %336, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4317
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4319
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4321
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4321
  %341 = mul i64 %338, %69, !dbg !4321
  call void @llvm.dbg.value(metadata i64 %341, metadata !4261, metadata !DIExpression()), !dbg !4319
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4319
  %343 = or i1 %336, %340, !dbg !4322
  %344 = zext i1 %343 to i32, !dbg !4322
  call void @llvm.dbg.value(metadata i32 %344, metadata !4244, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4317
  br label %372, !dbg !4267

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4249, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 poison, metadata !4250, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 4, metadata !4251, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4325
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4327
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4327
  %348 = mul i64 %46, %69, !dbg !4327
  call void @llvm.dbg.value(metadata i64 %348, metadata !4261, metadata !DIExpression()), !dbg !4325
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %347, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i1 %347, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i32 3, metadata !4251, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4325
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4327
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4327
  %352 = mul i64 %349, %69, !dbg !4327
  call void @llvm.dbg.value(metadata i64 %352, metadata !4261, metadata !DIExpression()), !dbg !4325
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4325
  %354 = or i1 %347, %351, !dbg !4328
  call void @llvm.dbg.value(metadata i1 %354, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i1 %354, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i32 2, metadata !4251, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4325
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4327
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4327
  %357 = mul i64 %353, %69, !dbg !4327
  call void @llvm.dbg.value(metadata i64 %357, metadata !4261, metadata !DIExpression()), !dbg !4325
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4325
  %359 = or i1 %354, %356, !dbg !4328
  call void @llvm.dbg.value(metadata i1 %359, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i1 %359, metadata !4244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4323
  call void @llvm.dbg.value(metadata i32 1, metadata !4251, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i32 poison, metadata !4260, metadata !DIExpression()), !dbg !4325
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4327
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4327
  %362 = mul i64 %358, %69, !dbg !4327
  call void @llvm.dbg.value(metadata i64 %362, metadata !4261, metadata !DIExpression()), !dbg !4325
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4325
  %364 = or i1 %359, %361, !dbg !4328
  %365 = zext i1 %364 to i32, !dbg !4328
  call void @llvm.dbg.value(metadata i32 %365, metadata !4244, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 0, metadata !4251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4323
  br label %372, !dbg !4267

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4255, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i32 2, metadata !4260, metadata !DIExpression()), !dbg !4329
  %367 = shl i64 %46, 1, !dbg !4331
  call void @llvm.dbg.value(metadata i64 %367, metadata !4261, metadata !DIExpression()), !dbg !4329
  %368 = icmp sgt i64 %46, -1, !dbg !4329
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4329
  %370 = lshr i64 %46, 63, !dbg !4329
  %371 = trunc i64 %370 to i32, !dbg !4329
  call void @llvm.dbg.value(metadata i32 %371, metadata !4178, metadata !DIExpression()), !dbg !4229
  br label %372, !dbg !4332

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4179
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4333
  call void @llvm.dbg.value(metadata i32 %374, metadata !4178, metadata !DIExpression()), !dbg !4229
  %375 = or i32 %374, %45, !dbg !4267
  call void @llvm.dbg.value(metadata i32 %375, metadata !4173, metadata !DIExpression()), !dbg !4179
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4334
  store ptr %376, ptr %20, align 8, !dbg !4334, !tbaa !1060
  %377 = load i8, ptr %376, align 1, !dbg !4335, !tbaa !1131
  %378 = icmp eq i8 %377, 0, !dbg !4335
  %379 = or i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4337
  call void @llvm.dbg.value(metadata i32 %380, metadata !4173, metadata !DIExpression()), !dbg !4179
  br label %383

381:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i64 %25, metadata !4172, metadata !DIExpression()), !dbg !4179
  store i64 %46, ptr %3, align 8, !dbg !4338, !tbaa !1791
  %382 = or i32 %45, 2, !dbg !4339
  call void @llvm.dbg.value(metadata i32 %45, metadata !4173, metadata !DIExpression()), !dbg !4179
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4340
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4341
  call void @llvm.dbg.value(metadata i32 %385, metadata !4173, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %384, metadata !4172, metadata !DIExpression()), !dbg !4179
  store i64 %384, ptr %3, align 8, !dbg !4342, !tbaa !1791
  br label %386, !dbg !4343

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !4344
  ret i32 %387, !dbg !4344
}

; Function Attrs: nounwind
declare !dbg !4345 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4349 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4387, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata ptr %1, metadata !4388, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i32 0, metadata !4389, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i32 0, metadata !4390, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i8 0, metadata !4391, metadata !DIExpression()), !dbg !4411
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #39, !dbg !4412
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4392, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %1, metadata !4396, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata ptr %3, metadata !4398, metadata !DIExpression()), !dbg !4414
  br label %4, !dbg !4415

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4414
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4411
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4416
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %9, metadata !4389, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i32 %8, metadata !4390, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata ptr %10, metadata !4398, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata ptr %6, metadata !4396, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i8 poison, metadata !4391, metadata !DIExpression()), !dbg !4411
  %11 = load i8, ptr %6, align 1, !dbg !4417, !tbaa !1131
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4418

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4389, metadata !DIExpression()), !dbg !4411
  %13 = icmp slt i64 %7, 80, !dbg !4419
  br i1 %13, label %14, label %43, !dbg !4422

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4423
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4414
  store i8 114, ptr %10, align 1, !dbg !4424, !tbaa !1131
  br label %43, !dbg !4425

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4389, metadata !DIExpression()), !dbg !4411
  %17 = or i32 %8, 576, !dbg !4426
  call void @llvm.dbg.value(metadata i32 %17, metadata !4390, metadata !DIExpression()), !dbg !4411
  %18 = icmp slt i64 %7, 80, !dbg !4427
  br i1 %18, label %19, label %43, !dbg !4429

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4430
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4414
  store i8 119, ptr %10, align 1, !dbg !4431, !tbaa !1131
  br label %43, !dbg !4432

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4389, metadata !DIExpression()), !dbg !4411
  %22 = or i32 %8, 1088, !dbg !4433
  call void @llvm.dbg.value(metadata i32 %22, metadata !4390, metadata !DIExpression()), !dbg !4411
  %23 = icmp slt i64 %7, 80, !dbg !4434
  br i1 %23, label %24, label %43, !dbg !4436

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4437
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4414
  store i8 97, ptr %10, align 1, !dbg !4438, !tbaa !1131
  br label %43, !dbg !4439

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4390, metadata !DIExpression()), !dbg !4411
  %27 = icmp slt i64 %7, 80, !dbg !4440
  br i1 %27, label %28, label %43, !dbg !4442

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4443
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4414
  store i8 98, ptr %10, align 1, !dbg !4444, !tbaa !1131
  br label %43, !dbg !4445

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4389, metadata !DIExpression()), !dbg !4411
  %31 = icmp slt i64 %7, 80, !dbg !4446
  br i1 %31, label %32, label %43, !dbg !4448

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4449
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4414
  store i8 43, ptr %10, align 1, !dbg !4450, !tbaa !1131
  br label %43, !dbg !4451

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4452
  call void @llvm.dbg.value(metadata i32 %35, metadata !4390, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i8 1, metadata !4391, metadata !DIExpression()), !dbg !4411
  br label %43, !dbg !4453

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4454
  call void @llvm.dbg.value(metadata i32 %37, metadata !4390, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i8 1, metadata !4391, metadata !DIExpression()), !dbg !4411
  br label %43, !dbg !4455

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #40, !dbg !4456
  call void @llvm.dbg.value(metadata i64 %39, metadata !4399, metadata !DIExpression()), !dbg !4457
  %40 = sub nsw i64 80, %7, !dbg !4458
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %41, metadata !4399, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata ptr %10, metadata !4461, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata ptr %6, metadata !4464, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %41, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #39, !dbg !4468
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4469
  call void @llvm.dbg.value(metadata ptr %42, metadata !4398, metadata !DIExpression()), !dbg !4414
  br label %49, !dbg !4470

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4411
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4411
  call void @llvm.dbg.value(metadata i32 %47, metadata !4389, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i32 %46, metadata !4390, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4414
  call void @llvm.dbg.value(metadata i8 poison, metadata !4391, metadata !DIExpression()), !dbg !4411
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4471
  call void @llvm.dbg.value(metadata ptr %48, metadata !4396, metadata !DIExpression()), !dbg !4414
  br label %4, !dbg !4472, !llvm.loop !4473

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4414
  call void @llvm.dbg.value(metadata ptr %50, metadata !4398, metadata !DIExpression()), !dbg !4414
  store i8 0, ptr %50, align 1, !dbg !4475, !tbaa !1131
  br i1 %5, label %51, label %62, !dbg !4476

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !4477
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #39, !dbg !4478
  call void @llvm.dbg.value(metadata i32 %53, metadata !4404, metadata !DIExpression()), !dbg !4479
  %54 = icmp slt i32 %53, 0, !dbg !4480
  br i1 %54, label %64, label %55, !dbg !4482

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #39, !dbg !4483
  call void @llvm.dbg.value(metadata ptr %56, metadata !4407, metadata !DIExpression()), !dbg !4479
  %57 = icmp eq ptr %56, null, !dbg !4484
  br i1 %57, label %58, label %64, !dbg !4485

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #42, !dbg !4486
  %60 = load i32, ptr %59, align 4, !dbg !4486, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %60, metadata !4408, metadata !DIExpression()), !dbg !4487
  %61 = tail call i32 @close(i32 noundef %53) #39, !dbg !4488
  store i32 %60, ptr %59, align 4, !dbg !4489, !tbaa !1122
  br label %64, !dbg !4490

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata ptr %1, metadata !4494, metadata !DIExpression()), !dbg !4495
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4497
  br label %64, !dbg !4498

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4411
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #39, !dbg !4499
  ret ptr %65, !dbg !4499
}

; Function Attrs: nofree
declare !dbg !4500 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare !dbg !4503 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4506 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4507 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4510 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4548, metadata !DIExpression()), !dbg !4553
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4554
  call void @llvm.dbg.value(metadata i1 poison, metadata !4549, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata ptr %0, metadata !4555, metadata !DIExpression()), !dbg !4558
  %3 = load i32, ptr %0, align 8, !dbg !4560, !tbaa !4561
  %4 = and i32 %3, 32, !dbg !4562
  %5 = icmp eq i32 %4, 0, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %5, metadata !4551, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4563
  %7 = icmp eq i32 %6, 0, !dbg !4564
  call void @llvm.dbg.value(metadata i1 %7, metadata !4552, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  br i1 %5, label %8, label %18, !dbg !4565

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4567
  call void @llvm.dbg.value(metadata i1 %9, metadata !4549, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4568
  %11 = xor i1 %7, true, !dbg !4568
  %12 = sext i1 %11 to i32, !dbg !4568
  br i1 %10, label %21, label %13, !dbg !4568

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4569
  %15 = load i32, ptr %14, align 4, !dbg !4569, !tbaa !1122
  %16 = icmp ne i32 %15, 9, !dbg !4570
  %17 = sext i1 %16 to i32, !dbg !4571
  br label %21, !dbg !4571

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4572

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4574
  store i32 0, ptr %20, align 4, !dbg !4576, !tbaa !1122
  br label %21, !dbg !4574

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4553
  ret i32 %22, !dbg !4577
}

; Function Attrs: nounwind
declare !dbg !4578 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4582 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4620, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i32 0, metadata !4621, metadata !DIExpression()), !dbg !4624
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4625
  call void @llvm.dbg.value(metadata i32 %2, metadata !4622, metadata !DIExpression()), !dbg !4624
  %3 = icmp slt i32 %2, 0, !dbg !4626
  br i1 %3, label %4, label %6, !dbg !4628

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4629
  br label %24, !dbg !4630

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4631
  %8 = icmp eq i32 %7, 0, !dbg !4631
  br i1 %8, label %13, label %9, !dbg !4633

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4634
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4635
  %12 = icmp eq i64 %11, -1, !dbg !4636
  br i1 %12, label %16, label %13, !dbg !4637

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4638
  %15 = icmp eq i32 %14, 0, !dbg !4638
  br i1 %15, label %16, label %18, !dbg !4639

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4621, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i32 0, metadata !4623, metadata !DIExpression()), !dbg !4624
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4640
  call void @llvm.dbg.value(metadata i32 %17, metadata !4623, metadata !DIExpression()), !dbg !4624
  br label %24, !dbg !4641

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4642
  %20 = load i32, ptr %19, align 4, !dbg !4642, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 %20, metadata !4621, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i32 0, metadata !4623, metadata !DIExpression()), !dbg !4624
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4640
  call void @llvm.dbg.value(metadata i32 %21, metadata !4623, metadata !DIExpression()), !dbg !4624
  %22 = icmp eq i32 %20, 0, !dbg !4643
  br i1 %22, label %24, label %23, !dbg !4641

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4645, !tbaa !1122
  call void @llvm.dbg.value(metadata i32 -1, metadata !4623, metadata !DIExpression()), !dbg !4624
  br label %24, !dbg !4647

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4624
  ret i32 %25, !dbg !4648
}

; Function Attrs: nofree nounwind
declare !dbg !4649 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4650 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4651 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4652 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4655 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4693, metadata !DIExpression()), !dbg !4694
  %2 = icmp eq ptr %0, null, !dbg !4695
  br i1 %2, label %6, label %3, !dbg !4697

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4698
  %5 = icmp eq i32 %4, 0, !dbg !4698
  br i1 %5, label %6, label %8, !dbg !4699

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4700
  br label %16, !dbg !4701

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4702, metadata !DIExpression()), !dbg !4707
  %9 = load i32, ptr %0, align 8, !dbg !4709, !tbaa !4561
  %10 = and i32 %9, 256, !dbg !4711
  %11 = icmp eq i32 %10, 0, !dbg !4711
  br i1 %11, label %14, label %12, !dbg !4712

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4713
  br label %14, !dbg !4713

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4714
  br label %16, !dbg !4715

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4694
  ret i32 %17, !dbg !4716
}

; Function Attrs: nofree nounwind
declare !dbg !4717 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4718 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4757, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata i64 %1, metadata !4758, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata i32 %2, metadata !4759, metadata !DIExpression()), !dbg !4763
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4764
  %5 = load ptr, ptr %4, align 8, !dbg !4764, !tbaa !4765
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4766
  %7 = load ptr, ptr %6, align 8, !dbg !4766, !tbaa !4767
  %8 = icmp eq ptr %5, %7, !dbg !4768
  br i1 %8, label %9, label %27, !dbg !4769

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4770
  %11 = load ptr, ptr %10, align 8, !dbg !4770, !tbaa !1517
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4771
  %13 = load ptr, ptr %12, align 8, !dbg !4771, !tbaa !4772
  %14 = icmp eq ptr %11, %13, !dbg !4773
  br i1 %14, label %15, label %27, !dbg !4774

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4775
  %17 = load ptr, ptr %16, align 8, !dbg !4775, !tbaa !4776
  %18 = icmp eq ptr %17, null, !dbg !4777
  br i1 %18, label %19, label %27, !dbg !4778

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4779
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4780
  call void @llvm.dbg.value(metadata i64 %21, metadata !4760, metadata !DIExpression()), !dbg !4781
  %22 = icmp eq i64 %21, -1, !dbg !4782
  br i1 %22, label %29, label %23, !dbg !4784

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4785, !tbaa !4561
  %25 = and i32 %24, -17, !dbg !4785
  store i32 %25, ptr %0, align 8, !dbg !4785, !tbaa !4561
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4786
  store i64 %21, ptr %26, align 8, !dbg !4787, !tbaa !4788
  br label %29, !dbg !4789

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4790
  br label %29, !dbg !4791

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4763
  ret i32 %30, !dbg !4792
}

; Function Attrs: nofree nounwind
declare !dbg !4793 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4796 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata ptr %1, metadata !4802, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i64 %2, metadata !4803, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata ptr %3, metadata !4804, metadata !DIExpression()), !dbg !4806
  %5 = icmp eq ptr %1, null, !dbg !4807
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4809
  %7 = select i1 %5, ptr @.str.137, ptr %1, !dbg !4809
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4809
  call void @llvm.dbg.value(metadata i64 %8, metadata !4803, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata ptr %7, metadata !4802, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata ptr %6, metadata !4801, metadata !DIExpression()), !dbg !4806
  %9 = icmp eq ptr %3, null, !dbg !4810
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4812
  call void @llvm.dbg.value(metadata ptr %10, metadata !4804, metadata !DIExpression()), !dbg !4806
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4813
  call void @llvm.dbg.value(metadata i64 %11, metadata !4805, metadata !DIExpression()), !dbg !4806
  %12 = icmp ult i64 %11, -3, !dbg !4814
  br i1 %12, label %13, label %17, !dbg !4816

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4817
  %15 = icmp eq i32 %14, 0, !dbg !4817
  br i1 %15, label %16, label %29, !dbg !4818

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4819, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata ptr %10, metadata !4826, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 0, metadata !4829, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 8, metadata !4830, metadata !DIExpression()), !dbg !4831
  store i64 0, ptr %10, align 1, !dbg !4833
  br label %29, !dbg !4834

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4835
  br i1 %18, label %19, label %20, !dbg !4837

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4838
  unreachable, !dbg !4838

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4839

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4841
  br i1 %23, label %29, label %24, !dbg !4842

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4843
  br i1 %25, label %29, label %26, !dbg !4846

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4847, !tbaa !1131
  %28 = zext i8 %27 to i32, !dbg !4848
  store i32 %28, ptr %6, align 4, !dbg !4849, !tbaa !1122
  br label %29, !dbg !4850

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4806
  ret i64 %30, !dbg !4851
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4852 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4858 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4860, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %1, metadata !4861, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %2, metadata !4862, metadata !DIExpression()), !dbg !4864
  %4 = icmp eq i64 %2, 0, !dbg !4865
  br i1 %4, label %8, label %5, !dbg !4865

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4865
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4865
  br i1 %7, label %13, label %8, !dbg !4865

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4863, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4864
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4863, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4864
  %9 = mul i64 %2, %1, !dbg !4865
  call void @llvm.dbg.value(metadata i64 %9, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr %0, metadata !4867, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i64 %9, metadata !4870, metadata !DIExpression()), !dbg !4871
  %10 = icmp eq i64 %9, 0, !dbg !4873
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4873
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4874
  br label %15, !dbg !4875

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4863, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4864
  %14 = tail call ptr @__errno_location() #42, !dbg !4876
  store i32 12, ptr %14, align 4, !dbg !4878, !tbaa !1122
  br label %15, !dbg !4879

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4864
  ret ptr %16, !dbg !4880
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4881 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4883, metadata !DIExpression()), !dbg !4888
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4884, metadata !DIExpression()), !dbg !4890
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4891
  %4 = icmp eq i32 %3, 0, !dbg !4891
  br i1 %4, label %5, label %12, !dbg !4893

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4894, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr @.str.142, metadata !4897, metadata !DIExpression()), !dbg !4898
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.142, i64 2), !dbg !4901
  %7 = icmp eq i32 %6, 0, !dbg !4902
  br i1 %7, label %11, label %8, !dbg !4903

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4894, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr @.str.1.143, metadata !4897, metadata !DIExpression()), !dbg !4904
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.143, i64 6), !dbg !4906
  %10 = icmp eq i32 %9, 0, !dbg !4907
  br i1 %10, label %11, label %12, !dbg !4908

11:                                               ; preds = %8, %5
  br label %12, !dbg !4909

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4888
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4910
  ret i1 %13, !dbg !4910
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4911 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4915, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr %1, metadata !4916, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i64 %2, metadata !4917, metadata !DIExpression()), !dbg !4918
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4919
  ret i32 %4, !dbg !4920
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4921 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4925, metadata !DIExpression()), !dbg !4926
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4927
  ret ptr %2, !dbg !4928
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4931, metadata !DIExpression()), !dbg !4933
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4934
  call void @llvm.dbg.value(metadata ptr %2, metadata !4932, metadata !DIExpression()), !dbg !4933
  ret ptr %2, !dbg !4935
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata ptr %1, metadata !4939, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 %2, metadata !4940, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i32 %0, metadata !4931, metadata !DIExpression()), !dbg !4946
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4948
  call void @llvm.dbg.value(metadata ptr %4, metadata !4932, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr %4, metadata !4941, metadata !DIExpression()), !dbg !4945
  %5 = icmp eq ptr %4, null, !dbg !4949
  br i1 %5, label %6, label %9, !dbg !4950

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4951
  br i1 %7, label %19, label %8, !dbg !4954

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4955, !tbaa !1131
  br label %19, !dbg !4956

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4957
  call void @llvm.dbg.value(metadata i64 %10, metadata !4942, metadata !DIExpression()), !dbg !4958
  %11 = icmp ult i64 %10, %2, !dbg !4959
  br i1 %11, label %12, label %14, !dbg !4961

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4962
  call void @llvm.dbg.value(metadata ptr %1, metadata !4964, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata ptr %4, metadata !4967, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i64 %13, metadata !4968, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4971
  br label %19, !dbg !4972

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4973
  br i1 %15, label %19, label %16, !dbg !4976

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4977
  call void @llvm.dbg.value(metadata ptr %1, metadata !4964, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata ptr %4, metadata !4967, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i64 %17, metadata !4968, metadata !DIExpression()), !dbg !4979
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4981
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4982
  store i8 0, ptr %18, align 1, !dbg !4983, !tbaa !1131
  br label %19, !dbg !4984

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4985
  ret i32 %20, !dbg !4986
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

!llvm.dbg.cu = !{!59, !351, !355, !370, !696, !733, !735, !458, !472, !520, !960, !688, !967, !1001, !1003, !1015, !1022, !1024, !1026, !1028, !1030, !715, !1032, !1035, !1037, !1039}
!llvm.ident = !{!1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041}
!llvm.module.flags = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048}

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
!369 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !370, file: !371, line: 66, type: !422, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!372 = !{!102, !109}
!373 = !{!374, !376, !401, !403, !405, !407, !368, !409, !411, !413, !415, !420}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 272, type: !133, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "old_file_name", scope: !378, file: !371, line: 304, type: !107, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "verror_at_line", scope: !371, file: !371, line: 298, type: !379, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !394)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !70, !70, !107, !63, !107, !381}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !382, line: 52, baseType: !383)
!382 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !384, line: 14, baseType: !385)
!384 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !386, baseType: !387)
!386 = !DIFile(filename: "lib/error.c", directory: "/src")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !388)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !387, file: !386, baseType: !102, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !387, file: !386, baseType: !102, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !387, file: !386, baseType: !102, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !387, file: !386, baseType: !70, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !387, file: !386, baseType: !70, size: 32, offset: 224)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DILocalVariable(name: "status", arg: 1, scope: !378, file: !371, line: 298, type: !70)
!396 = !DILocalVariable(name: "errnum", arg: 2, scope: !378, file: !371, line: 298, type: !70)
!397 = !DILocalVariable(name: "file_name", arg: 3, scope: !378, file: !371, line: 298, type: !107)
!398 = !DILocalVariable(name: "line_number", arg: 4, scope: !378, file: !371, line: 298, type: !63)
!399 = !DILocalVariable(name: "message", arg: 5, scope: !378, file: !371, line: 298, type: !107)
!400 = !DILocalVariable(name: "args", arg: 6, scope: !378, file: !371, line: 298, type: !381)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "old_line_number", scope: !378, file: !371, line: 305, type: !63, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !371, line: 338, type: !225, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !257, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !232, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "error_message_count", scope: !370, file: !371, line: 69, type: !63, isLocal: false, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !370, file: !371, line: 295, type: !70, isLocal: false, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !252, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 21)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !371, line: 214, type: !133, isLocal: true, isDefinition: true)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null}
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !427, line: 553, type: !296, isLocal: true, isDefinition: true)
!427 = !DIFile(filename: "lib/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8ed3d3246f48dd170075371c80925eac")
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !427, line: 556, type: !128, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !427, line: 404, type: !118, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !427, line: 404, type: !232, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !427, line: 415, type: !133, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !427, line: 441, type: !438, isLocal: true, isDefinition: true)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 13)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !427, line: 446, type: !225, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !427, line: 449, type: !257, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !427, line: 371, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 34)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !427, line: 372, type: !123, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !427, line: 378, type: !438, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !427, line: 384, type: !257, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "program_name", scope: !458, file: !459, line: 31, type: !107, isLocal: false, isDefinition: true)
!458 = distinct !DICompileUnit(language: DW_LANG_C11, file: !459, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !460, globals: !461, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!460 = !{!101}
!461 = !{!456, !462, !464}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !459, line: 46, type: !257, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !459, line: 49, type: !225, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "utf07FF", scope: !468, file: !469, line: 46, type: !496, isLocal: true, isDefinition: true)
!468 = distinct !DISubprogram(name: "proper_name_lite", scope: !469, file: !469, line: 38, type: !470, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !474)
!469 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!470 = !DISubroutineType(types: !471)
!471 = !{!107, !107, !107}
!472 = distinct !DICompileUnit(language: DW_LANG_C11, file: !469, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !473, splitDebugInlining: false, nameTableKind: None)
!473 = !{!466}
!474 = !{!475, !476, !477, !478, !483}
!475 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !468, file: !469, line: 38, type: !107)
!476 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !468, file: !469, line: 38, type: !107)
!477 = !DILocalVariable(name: "translation", scope: !468, file: !469, line: 40, type: !107)
!478 = !DILocalVariable(name: "w", scope: !468, file: !469, line: 47, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !480, line: 37, baseType: !481)
!480 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !188, line: 57, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !188, line: 42, baseType: !63)
!483 = !DILocalVariable(name: "mbs", scope: !468, file: !469, line: 48, type: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !485, line: 6, baseType: !486)
!485 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !487, line: 21, baseType: !488)
!487 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 13, size: 64, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !488, file: !487, line: 15, baseType: !70, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !488, file: !487, line: 20, baseType: !492, size: 32, offset: 32)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !487, line: 16, size: 32, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !492, file: !487, line: 18, baseType: !63, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !492, file: !487, line: 19, baseType: !225, size: 32)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16, elements: !233)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !499, line: 78, type: !257, isLocal: true, isDefinition: true)
!499 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !499, line: 79, type: !19, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !499, line: 80, type: !438, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !499, line: 81, type: !438, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !499, line: 82, type: !210, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !499, line: 83, type: !232, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !499, line: 84, type: !257, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !499, line: 85, type: !252, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !499, line: 86, type: !252, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !499, line: 87, type: !257, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !520, file: !499, line: 76, type: !606, isLocal: false, isDefinition: true)
!520 = distinct !DICompileUnit(language: DW_LANG_C11, file: !499, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !521, retainedTypes: !541, globals: !542, splitDebugInlining: false, nameTableKind: None)
!521 = !{!522, !536, !85}
!522 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !523, line: 42, baseType: !63, size: 32, elements: !524)
!523 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!525 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!526 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!527 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!528 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!529 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!530 = !DIEnumerator(name: "c_quoting_style", value: 5)
!531 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!532 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!533 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!534 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!535 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!536 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !523, line: 254, baseType: !63, size: 32, elements: !537)
!537 = !{!538, !539, !540}
!538 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!539 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!540 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!541 = !{!70, !103, !104}
!542 = !{!497, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !543, !547, !557, !559, !564, !566, !568, !570, !572, !595, !602, !604}
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !520, file: !499, line: 92, type: !545, isLocal: false, isDefinition: true)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 320, elements: !50)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !520, file: !499, line: 1040, type: !549, isLocal: false, isDefinition: true)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !499, line: 56, size: 448, elements: !550)
!550 = !{!551, !552, !553, !555, !556}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !549, file: !499, line: 59, baseType: !522, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !499, line: 62, baseType: !70, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !549, file: !499, line: 66, baseType: !554, size: 256, offset: 64)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !258)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !549, file: !499, line: 69, baseType: !107, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !549, file: !499, line: 72, baseType: !107, size: 64, offset: 384)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !520, file: !499, line: 107, type: !549, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "slot0", scope: !520, file: !499, line: 831, type: !561, isLocal: true, isDefinition: true)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 256)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !499, line: 321, type: !232, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !499, line: 357, type: !232, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !499, line: 358, type: !232, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !499, line: 199, type: !252, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "quote", scope: !574, file: !499, line: 228, type: !593, isLocal: true, isDefinition: true)
!574 = distinct !DISubprogram(name: "gettext_quote", scope: !499, file: !499, line: 197, type: !575, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!107, !107, !522}
!577 = !{!578, !579, !580, !581, !582}
!578 = !DILocalVariable(name: "msgid", arg: 1, scope: !574, file: !499, line: 197, type: !107)
!579 = !DILocalVariable(name: "s", arg: 2, scope: !574, file: !499, line: 197, type: !522)
!580 = !DILocalVariable(name: "translation", scope: !574, file: !499, line: 199, type: !107)
!581 = !DILocalVariable(name: "w", scope: !574, file: !499, line: 229, type: !479)
!582 = !DILocalVariable(name: "mbs", scope: !574, file: !499, line: 230, type: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !485, line: 6, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !487, line: 21, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 13, size: 64, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !585, file: !487, line: 15, baseType: !70, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !585, file: !487, line: 20, baseType: !589, size: 32, offset: 32)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !487, line: 16, size: 32, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !589, file: !487, line: 18, baseType: !63, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !589, file: !487, line: 19, baseType: !225, size: 32)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !594)
!594 = !{!234, !227}
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "slotvec", scope: !520, file: !499, line: 834, type: !597, isLocal: true, isDefinition: true)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !499, line: 823, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !598, file: !499, line: 825, baseType: !104, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !598, file: !499, line: 826, baseType: !101, size: 64, offset: 64)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "nslots", scope: !520, file: !499, line: 832, type: !70, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "slotvec0", scope: !520, file: !499, line: 833, type: !598, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 704, elements: !608)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!608 = !{!609}
!609 = !DISubrange(count: 11)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !612, line: 67, type: !325, isLocal: true, isDefinition: true)
!612 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !612, line: 69, type: !252, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !612, line: 83, type: !252, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !612, line: 83, type: !225, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !612, line: 85, type: !232, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !612, line: 88, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 171)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !612, line: 88, type: !447, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !612, line: 105, type: !296, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !612, line: 109, type: !9, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !612, line: 113, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 28)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !612, line: 120, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 32)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !612, line: 127, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 36)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !612, line: 134, type: !276, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !612, line: 142, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 44)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !612, line: 150, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 48)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !612, line: 159, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 52)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !612, line: 170, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 60)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !612, line: 248, type: !210, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !612, line: 248, type: !301, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !612, line: 254, type: !210, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !612, line: 254, type: !113, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !612, line: 254, type: !276, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !612, line: 259, type: !3, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !612, line: 259, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 29)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !688, file: !689, line: 26, type: !691, isLocal: false, isDefinition: true)
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !689, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !690, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!690 = !{!686}
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 376, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 47)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "exit_failure", scope: !696, file: !697, line: 24, type: !699, isLocal: false, isDefinition: true)
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !698, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!698 = !{!694}
!699 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !702, line: 34, type: !241, isLocal: true, isDefinition: true)
!702 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !702, line: 34, type: !252, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !702, line: 34, type: !128, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !709, line: 80, type: !252, isLocal: true, isDefinition: true)
!709 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !712, line: 108, type: !44, isLocal: true, isDefinition: true)
!712 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "internal_state", scope: !715, file: !712, line: 97, type: !718, isLocal: true, isDefinition: true)
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !712, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, globals: !717, splitDebugInlining: false, nameTableKind: None)
!716 = !{!102, !104, !109}
!717 = !{!710, !713}
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !485, line: 6, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !487, line: 21, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 13, size: 64, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !720, file: !487, line: 15, baseType: !70, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !720, file: !487, line: 20, baseType: !724, size: 32, offset: 32)
!724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !487, line: 16, size: 32, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !724, file: !487, line: 18, baseType: !63, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !724, file: !487, line: 19, baseType: !225, size: 32)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !730, line: 35, type: !232, isLocal: true, isDefinition: true)
!730 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !730, line: 35, type: !19, isLocal: true, isDefinition: true)
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !427, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !736, retainedTypes: !957, globals: !959, splitDebugInlining: false, nameTableKind: None)
!736 = !{!61, !737}
!737 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !738, line: 71, baseType: !63, size: 32, elements: !739)
!738 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956}
!740 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!741 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!742 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!743 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!744 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!745 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!746 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!747 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!748 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!749 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!750 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!751 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!752 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!753 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!754 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!755 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!756 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!757 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!758 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!759 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!760 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!761 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!762 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!763 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!764 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!765 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!766 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!767 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!768 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!769 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!770 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!771 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!772 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!773 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!774 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!775 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!776 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!777 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!778 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!779 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!780 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!781 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!782 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!783 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!784 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!785 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!786 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!787 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!788 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!789 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!790 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!791 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!792 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!793 = !DIEnumerator(name: "_SC_PII", value: 53)
!794 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!795 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!796 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!797 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!798 = !DIEnumerator(name: "_SC_POLL", value: 58)
!799 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!800 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!801 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!802 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!803 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!804 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!805 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!806 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!807 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!808 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!809 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!810 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!811 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!812 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!813 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!814 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!815 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!816 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!817 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!818 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!819 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!820 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!821 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!822 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!823 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!824 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!825 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!826 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!827 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!828 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!829 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!830 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!831 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!832 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!833 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!834 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!835 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!836 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!837 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!838 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!839 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!840 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!841 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!842 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!843 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!844 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!845 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!846 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!847 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!848 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!849 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!850 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!851 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!852 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!853 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!854 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!855 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!856 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!857 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!858 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!859 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!860 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!861 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!862 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!863 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!864 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!865 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!866 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!867 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!868 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!869 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!870 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!871 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!872 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!873 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!874 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!875 = !DIEnumerator(name: "_SC_BASE", value: 134)
!876 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!877 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!878 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!879 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!880 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!881 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!882 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!883 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!884 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!885 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!886 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!887 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!888 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!889 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!890 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!891 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!892 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!893 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!894 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!895 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!896 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!897 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!898 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!899 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!900 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!901 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!902 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!903 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!904 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!905 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!906 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!907 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!908 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!909 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!910 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!911 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!912 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!913 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!914 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!915 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!916 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!917 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!918 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!919 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!920 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!921 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!922 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!923 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!924 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!925 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!926 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!927 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!928 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!929 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!930 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!931 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!932 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!933 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!934 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!935 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!936 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!937 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!938 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!939 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!940 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!941 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!942 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!943 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!944 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!945 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!946 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!947 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!948 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!949 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!950 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!951 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!952 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!953 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!954 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!955 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!956 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!957 = !{!102, !958, !189}
!958 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!959 = !{!425, !428, !430, !432, !434, !436, !441, !443, !445, !450, !452, !454}
!960 = distinct !DICompileUnit(language: DW_LANG_C11, file: !612, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !961, retainedTypes: !965, globals: !966, splitDebugInlining: false, nameTableKind: None)
!961 = !{!962}
!962 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !612, line: 40, baseType: !63, size: 32, elements: !963)
!963 = !{!964}
!964 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!965 = !{!102}
!966 = !{!610, !613, !615, !617, !619, !621, !626, !628, !630, !632, !637, !642, !647, !649, !654, !659, !664, !669, !671, !673, !675, !677, !679, !681}
!967 = distinct !DICompileUnit(language: DW_LANG_C11, file: !968, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !969, retainedTypes: !1000, splitDebugInlining: false, nameTableKind: None)
!968 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!969 = !{!970, !982}
!970 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !971, file: !968, line: 188, baseType: !63, size: 32, elements: !980)
!971 = distinct !DISubprogram(name: "x2nrealloc", scope: !968, file: !968, line: 176, type: !972, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !975)
!972 = !DISubroutineType(types: !973)
!973 = !{!102, !102, !974, !104}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!975 = !{!976, !977, !978, !979}
!976 = !DILocalVariable(name: "p", arg: 1, scope: !971, file: !968, line: 176, type: !102)
!977 = !DILocalVariable(name: "pn", arg: 2, scope: !971, file: !968, line: 176, type: !974)
!978 = !DILocalVariable(name: "s", arg: 3, scope: !971, file: !968, line: 176, type: !104)
!979 = !DILocalVariable(name: "n", scope: !971, file: !968, line: 178, type: !104)
!980 = !{!981}
!981 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!982 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !983, file: !968, line: 228, baseType: !63, size: 32, elements: !980)
!983 = distinct !DISubprogram(name: "xpalloc", scope: !968, file: !968, line: 223, type: !984, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !990)
!984 = !DISubroutineType(types: !985)
!985 = !{!102, !102, !986, !987, !989, !987}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !988, line: 130, baseType: !989)
!988 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !105, line: 35, baseType: !189)
!990 = !{!991, !992, !993, !994, !995, !996, !997, !998, !999}
!991 = !DILocalVariable(name: "pa", arg: 1, scope: !983, file: !968, line: 223, type: !102)
!992 = !DILocalVariable(name: "pn", arg: 2, scope: !983, file: !968, line: 223, type: !986)
!993 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !983, file: !968, line: 223, type: !987)
!994 = !DILocalVariable(name: "n_max", arg: 4, scope: !983, file: !968, line: 223, type: !989)
!995 = !DILocalVariable(name: "s", arg: 5, scope: !983, file: !968, line: 223, type: !987)
!996 = !DILocalVariable(name: "n0", scope: !983, file: !968, line: 230, type: !987)
!997 = !DILocalVariable(name: "n", scope: !983, file: !968, line: 237, type: !987)
!998 = !DILocalVariable(name: "nbytes", scope: !983, file: !968, line: 248, type: !987)
!999 = !DILocalVariable(name: "adjusted_nbytes", scope: !983, file: !968, line: 252, type: !987)
!1000 = !{!101, !102, !148, !189, !106}
!1001 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1002, splitDebugInlining: false, nameTableKind: None)
!1002 = !{!700, !703, !705}
!1003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1004, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1005, globals: !1014, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!1005 = !{!1006, !78}
!1006 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1007, line: 30, baseType: !63, size: 32, elements: !1008)
!1007 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1008 = !{!1009, !1010, !1011, !1012, !1013}
!1009 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!1010 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!1011 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!1012 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!1013 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!1014 = !{!707}
!1015 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1016, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1017, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1016 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!1017 = !{!1006, !85}
!1018 = !{!70, !103, !101, !148, !106, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1020, line: 102, baseType: !1021)
!1020 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !188, line: 73, baseType: !106)
!1022 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1023, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !965, splitDebugInlining: false, nameTableKind: None)
!1023 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1024 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1025, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1025 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1026 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1027, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1027 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1028 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1029, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !965, splitDebugInlining: false, nameTableKind: None)
!1029 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1030 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1031, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !965, splitDebugInlining: false, nameTableKind: None)
!1031 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1032 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1033, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1034, splitDebugInlining: false, nameTableKind: None)
!1033 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1034 = !{!148, !106, !102}
!1035 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1036, splitDebugInlining: false, nameTableKind: None)
!1036 = !{!728, !731}
!1037 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1038, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1038 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1039 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1040, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !965, splitDebugInlining: false, nameTableKind: None)
!1040 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1041 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1042 = !{i32 7, !"Dwarf Version", i32 5}
!1043 = !{i32 2, !"Debug Info Version", i32 3}
!1044 = !{i32 1, !"wchar_size", i32 4}
!1045 = !{i32 8, !"PIC Level", i32 2}
!1046 = !{i32 7, !"PIE Level", i32 2}
!1047 = !{i32 7, !"uwtable", i32 2}
!1048 = !{i32 7, !"frame-pointer", i32 1}
!1049 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 50, type: !1050, scopeLine: 51, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !70}
!1052 = !{!1053}
!1053 = !DILocalVariable(name: "status", arg: 1, scope: !1049, file: !2, line: 50, type: !70)
!1054 = !DILocation(line: 0, scope: !1049)
!1055 = !DILocation(line: 52, column: 14, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 52, column: 7)
!1057 = !DILocation(line: 52, column: 7, scope: !1049)
!1058 = !DILocation(line: 53, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 53, column: 5)
!1060 = !{!1061, !1061, i64 0}
!1061 = !{!"any pointer", !1062, i64 0}
!1062 = !{!"omnipotent char", !1063, i64 0}
!1063 = !{!"Simple C/C++ TBAA"}
!1064 = !DILocation(line: 56, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 55, column: 5)
!1066 = !DILocation(line: 57, column: 7, scope: !1065)
!1067 = !DILocation(line: 64, column: 7, scope: !1065)
!1068 = !DILocation(line: 69, column: 7, scope: !1065)
!1069 = !DILocation(line: 75, column: 7, scope: !1065)
!1070 = !DILocation(line: 76, column: 7, scope: !1065)
!1071 = !DILocalVariable(name: "program", arg: 1, scope: !1072, file: !69, line: 836, type: !107)
!1072 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !1073, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !107}
!1075 = !{!1071, !1076, !1083, !1084, !1086, !1087}
!1076 = !DILocalVariable(name: "infomap", scope: !1072, file: !69, line: 838, type: !1077)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 896, elements: !253)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1072, file: !69, line: 838, size: 128, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1079, file: !69, line: 838, baseType: !107, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1079, file: !69, line: 838, baseType: !107, size: 64, offset: 64)
!1083 = !DILocalVariable(name: "node", scope: !1072, file: !69, line: 848, type: !107)
!1084 = !DILocalVariable(name: "map_prog", scope: !1072, file: !69, line: 849, type: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1086 = !DILocalVariable(name: "lc_messages", scope: !1072, file: !69, line: 861, type: !107)
!1087 = !DILocalVariable(name: "url_program", scope: !1072, file: !69, line: 874, type: !107)
!1088 = !DILocation(line: 0, scope: !1072, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 77, column: 7, scope: !1065)
!1090 = !DILocation(line: 857, column: 3, scope: !1072, inlinedAt: !1089)
!1091 = !DILocation(line: 861, column: 29, scope: !1072, inlinedAt: !1089)
!1092 = !DILocation(line: 862, column: 7, scope: !1093, inlinedAt: !1089)
!1093 = distinct !DILexicalBlock(scope: !1072, file: !69, line: 862, column: 7)
!1094 = !DILocation(line: 862, column: 19, scope: !1093, inlinedAt: !1089)
!1095 = !DILocation(line: 862, column: 22, scope: !1093, inlinedAt: !1089)
!1096 = !DILocation(line: 862, column: 7, scope: !1072, inlinedAt: !1089)
!1097 = !DILocation(line: 868, column: 7, scope: !1098, inlinedAt: !1089)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !69, line: 863, column: 5)
!1099 = !DILocation(line: 870, column: 5, scope: !1098, inlinedAt: !1089)
!1100 = !DILocation(line: 875, column: 3, scope: !1072, inlinedAt: !1089)
!1101 = !DILocation(line: 877, column: 3, scope: !1072, inlinedAt: !1089)
!1102 = !DILocation(line: 79, column: 3, scope: !1049)
!1103 = !DISubprogram(name: "dcgettext", scope: !1104, file: !1104, line: 51, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1104 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!101, !107, !107, !70}
!1107 = !{}
!1108 = !DISubprogram(name: "__fprintf_chk", scope: !1109, file: !1109, line: 93, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1109 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!70, !1112, !70, !1113, null}
!1112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!1113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!1114 = !DISubprogram(name: "__printf_chk", scope: !1109, file: !1109, line: 95, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!70, !70, !1113, null}
!1117 = !DISubprogram(name: "fputs_unlocked", scope: !382, file: !382, line: 691, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!70, !1113, !1112}
!1120 = !DILocation(line: 0, scope: !138)
!1121 = !DILocation(line: 581, column: 7, scope: !146)
!1122 = !{!1123, !1123, i64 0}
!1123 = !{!"int", !1062, i64 0}
!1124 = !DILocation(line: 581, column: 19, scope: !146)
!1125 = !DILocation(line: 581, column: 7, scope: !138)
!1126 = !DILocation(line: 585, column: 26, scope: !145)
!1127 = !DILocation(line: 0, scope: !145)
!1128 = !DILocation(line: 586, column: 23, scope: !145)
!1129 = !DILocation(line: 586, column: 28, scope: !145)
!1130 = !DILocation(line: 586, column: 32, scope: !145)
!1131 = !{!1062, !1062, i64 0}
!1132 = !DILocation(line: 586, column: 38, scope: !145)
!1133 = !DILocalVariable(name: "__s1", arg: 1, scope: !1134, file: !1135, line: 1359, type: !107)
!1134 = distinct !DISubprogram(name: "streq", scope: !1135, file: !1135, line: 1359, type: !1136, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1138)
!1135 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!148, !107, !107}
!1138 = !{!1133, !1139}
!1139 = !DILocalVariable(name: "__s2", arg: 2, scope: !1134, file: !1135, line: 1359, type: !107)
!1140 = !DILocation(line: 0, scope: !1134, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 586, column: 41, scope: !145)
!1142 = !DILocation(line: 1361, column: 11, scope: !1134, inlinedAt: !1141)
!1143 = !DILocation(line: 1361, column: 10, scope: !1134, inlinedAt: !1141)
!1144 = !DILocation(line: 586, column: 19, scope: !145)
!1145 = !DILocation(line: 587, column: 5, scope: !145)
!1146 = !DILocation(line: 588, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !138, file: !69, line: 588, column: 7)
!1148 = !DILocation(line: 588, column: 7, scope: !138)
!1149 = !DILocation(line: 590, column: 7, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !69, line: 589, column: 5)
!1151 = !DILocation(line: 591, column: 7, scope: !1150)
!1152 = !DILocation(line: 595, column: 37, scope: !138)
!1153 = !DILocation(line: 595, column: 35, scope: !138)
!1154 = !DILocation(line: 596, column: 29, scope: !138)
!1155 = !DILocation(line: 597, column: 8, scope: !154)
!1156 = !DILocation(line: 597, column: 7, scope: !138)
!1157 = !DILocation(line: 604, column: 24, scope: !153)
!1158 = !DILocation(line: 604, column: 12, scope: !154)
!1159 = !DILocation(line: 0, scope: !152)
!1160 = !DILocation(line: 610, column: 16, scope: !152)
!1161 = !DILocation(line: 610, column: 7, scope: !152)
!1162 = !DILocation(line: 611, column: 21, scope: !152)
!1163 = !{!1164, !1164, i64 0}
!1164 = !{!"short", !1062, i64 0}
!1165 = !DILocation(line: 611, column: 19, scope: !152)
!1166 = !DILocation(line: 611, column: 16, scope: !152)
!1167 = !DILocation(line: 610, column: 30, scope: !152)
!1168 = distinct !{!1168, !1161, !1162, !1169}
!1169 = !{!"llvm.loop.mustprogress"}
!1170 = !DILocation(line: 612, column: 18, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !152, file: !69, line: 612, column: 11)
!1172 = !DILocation(line: 612, column: 11, scope: !152)
!1173 = !DILocation(line: 620, column: 23, scope: !138)
!1174 = !DILocation(line: 625, column: 39, scope: !138)
!1175 = !DILocation(line: 626, column: 3, scope: !138)
!1176 = !DILocation(line: 626, column: 10, scope: !138)
!1177 = !DILocation(line: 626, column: 21, scope: !138)
!1178 = !DILocation(line: 628, column: 44, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !69, line: 628, column: 11)
!1180 = distinct !DILexicalBlock(scope: !138, file: !69, line: 627, column: 5)
!1181 = !DILocation(line: 628, column: 32, scope: !1179)
!1182 = !DILocation(line: 628, column: 49, scope: !1179)
!1183 = !DILocation(line: 628, column: 11, scope: !1180)
!1184 = !DILocation(line: 630, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !69, line: 630, column: 11)
!1186 = !DILocation(line: 630, column: 11, scope: !1180)
!1187 = !DILocation(line: 632, column: 26, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !69, line: 632, column: 15)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !69, line: 631, column: 9)
!1190 = !DILocation(line: 632, column: 34, scope: !1188)
!1191 = !DILocation(line: 632, column: 37, scope: !1188)
!1192 = !DILocation(line: 632, column: 15, scope: !1189)
!1193 = !DILocation(line: 640, column: 16, scope: !1180)
!1194 = distinct !{!1194, !1175, !1195, !1169}
!1195 = !DILocation(line: 641, column: 5, scope: !138)
!1196 = !DILocation(line: 644, column: 3, scope: !138)
!1197 = !DILocation(line: 0, scope: !1134, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 648, column: 31, scope: !138)
!1199 = !DILocation(line: 0, scope: !1134, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 649, column: 31, scope: !138)
!1201 = !DILocation(line: 0, scope: !1134, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 650, column: 31, scope: !138)
!1203 = !DILocation(line: 0, scope: !1134, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 651, column: 31, scope: !138)
!1205 = !DILocation(line: 0, scope: !1134, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 652, column: 31, scope: !138)
!1207 = !DILocation(line: 0, scope: !1134, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 653, column: 31, scope: !138)
!1209 = !DILocation(line: 0, scope: !1134, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 654, column: 31, scope: !138)
!1211 = !DILocation(line: 0, scope: !1134, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 655, column: 31, scope: !138)
!1213 = !DILocation(line: 0, scope: !1134, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 656, column: 31, scope: !138)
!1215 = !DILocation(line: 0, scope: !1134, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 657, column: 31, scope: !138)
!1217 = !DILocation(line: 663, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !138, file: !69, line: 663, column: 7)
!1219 = !DILocation(line: 664, column: 7, scope: !1218)
!1220 = !DILocation(line: 664, column: 10, scope: !1218)
!1221 = !DILocation(line: 663, column: 7, scope: !138)
!1222 = !DILocation(line: 669, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !69, line: 665, column: 5)
!1224 = !DILocation(line: 671, column: 5, scope: !1223)
!1225 = !DILocation(line: 676, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1218, file: !69, line: 673, column: 5)
!1227 = !DILocation(line: 679, column: 3, scope: !138)
!1228 = !DILocation(line: 683, column: 3, scope: !138)
!1229 = !DILocation(line: 686, column: 3, scope: !138)
!1230 = !DILocation(line: 688, column: 3, scope: !138)
!1231 = !DILocation(line: 691, column: 3, scope: !138)
!1232 = !DILocation(line: 695, column: 3, scope: !138)
!1233 = !DILocation(line: 696, column: 1, scope: !138)
!1234 = !DISubprogram(name: "setlocale", scope: !1235, file: !1235, line: 122, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1235 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!101, !70, !107}
!1238 = !DISubprogram(name: "strncmp", scope: !1239, file: !1239, line: 159, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1239 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!70, !107, !107, !104}
!1242 = !DISubprogram(name: "exit", scope: !1243, file: !1243, line: 624, type: !1050, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1243 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1244 = !DISubprogram(name: "getenv", scope: !1243, file: !1243, line: 641, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!101, !107}
!1247 = !DISubprogram(name: "strcmp", scope: !1239, file: !1239, line: 156, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!70, !107, !107}
!1250 = !DISubprogram(name: "strspn", scope: !1239, file: !1239, line: 297, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!106, !107, !107}
!1253 = !DISubprogram(name: "strchr", scope: !1239, file: !1239, line: 246, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!101, !107, !70}
!1256 = !DISubprogram(name: "__ctype_b_loc", scope: !86, file: !86, line: 79, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1262 = !DISubprogram(name: "strcspn", scope: !1239, file: !1239, line: 293, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1263 = !DISubprogram(name: "fwrite_unlocked", scope: !382, file: !382, line: 704, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!104, !1266, !104, !104, !1112}
!1266 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1269 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 83, type: !1270, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1273)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!70, !70, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1280}
!1274 = !DILocalVariable(name: "argc", arg: 1, scope: !1269, file: !2, line: 83, type: !70)
!1275 = !DILocalVariable(name: "argv", arg: 2, scope: !1269, file: !2, line: 83, type: !1272)
!1276 = !DILocalVariable(name: "ignore", scope: !1269, file: !2, line: 85, type: !106)
!1277 = !DILocalVariable(name: "mode", scope: !1269, file: !2, line: 94, type: !61)
!1278 = !DILocalVariable(name: "c", scope: !1279, file: !2, line: 98, type: !70)
!1279 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 97, column: 5)
!1280 = !DILocalVariable(name: "nproc", scope: !1269, file: !2, line: 127, type: !106)
!1281 = !DILocation(line: 0, scope: !1269)
!1282 = !DILocation(line: 87, column: 21, scope: !1269)
!1283 = !DILocation(line: 87, column: 3, scope: !1269)
!1284 = !DILocation(line: 88, column: 3, scope: !1269)
!1285 = !DILocation(line: 89, column: 3, scope: !1269)
!1286 = !DILocation(line: 90, column: 3, scope: !1269)
!1287 = !DILocation(line: 92, column: 3, scope: !1269)
!1288 = !DILocation(line: 96, column: 3, scope: !1269)
!1289 = !DILocation(line: 98, column: 15, scope: !1279)
!1290 = !DILocation(line: 0, scope: !1279)
!1291 = !DILocation(line: 99, column: 11, scope: !1279)
!1292 = distinct !{!1292, !1293}
!1293 = !{!"llvm.loop.peeled.count", i32 1}
!1294 = !DILocation(line: 103, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 102, column: 9)
!1296 = !DILocation(line: 105, column: 9, scope: !1295)
!1297 = !DILocation(line: 94, column: 20, scope: !1269)
!1298 = !DILocation(line: 112, column: 32, scope: !1295)
!1299 = !DILocation(line: 113, column: 32, scope: !1295)
!1300 = !DILocation(line: 112, column: 20, scope: !1295)
!1301 = !DILocation(line: 114, column: 11, scope: !1295)
!1302 = !DILocation(line: 117, column: 11, scope: !1295)
!1303 = !DILocation(line: 121, column: 15, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 121, column: 7)
!1305 = !DILocation(line: 121, column: 12, scope: !1304)
!1306 = !DILocation(line: 121, column: 7, scope: !1269)
!1307 = !DILocation(line: 123, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 122, column: 5)
!1309 = !DILocation(line: 124, column: 7, scope: !1308)
!1310 = !DILocation(line: 127, column: 25, scope: !1269)
!1311 = !DILocation(line: 129, column: 14, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 129, column: 7)
!1313 = !DILocation(line: 129, column: 7, scope: !1269)
!1314 = !DILocation(line: 134, column: 3, scope: !1269)
!1315 = !DILocation(line: 137, column: 1, scope: !1269)
!1316 = !DISubprogram(name: "bindtextdomain", scope: !1104, file: !1104, line: 86, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!101, !107, !107}
!1319 = !DISubprogram(name: "textdomain", scope: !1104, file: !1104, line: 82, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1320 = !DISubprogram(name: "atexit", scope: !1243, file: !1243, line: 602, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!70, !422}
!1323 = !DISubprogram(name: "getopt_long", scope: !339, file: !339, line: 66, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!70, !70, !1326, !107, !1328, !344}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1329 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !356, file: !356, line: 50, type: !1073, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1330)
!1330 = !{!1331}
!1331 = !DILocalVariable(name: "file", arg: 1, scope: !1329, file: !356, line: 50, type: !107)
!1332 = !DILocation(line: 0, scope: !1329)
!1333 = !DILocation(line: 52, column: 13, scope: !1329)
!1334 = !DILocation(line: 53, column: 1, scope: !1329)
!1335 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !356, file: !356, line: 87, type: !1336, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !148}
!1338 = !{!1339}
!1339 = !DILocalVariable(name: "ignore", arg: 1, scope: !1335, file: !356, line: 87, type: !148)
!1340 = !DILocation(line: 0, scope: !1335)
!1341 = !DILocation(line: 89, column: 16, scope: !1335)
!1342 = !{!1343, !1343, i64 0}
!1343 = !{!"_Bool", !1062, i64 0}
!1344 = !DILocation(line: 90, column: 1, scope: !1335)
!1345 = distinct !DISubprogram(name: "close_stdout", scope: !356, file: !356, line: 116, type: !423, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1346)
!1346 = !{!1347}
!1347 = !DILocalVariable(name: "write_error", scope: !1348, file: !356, line: 121, type: !107)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !356, line: 120, column: 5)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !356, line: 118, column: 7)
!1350 = !DILocation(line: 118, column: 21, scope: !1349)
!1351 = !DILocation(line: 118, column: 7, scope: !1349)
!1352 = !DILocation(line: 118, column: 29, scope: !1349)
!1353 = !DILocation(line: 119, column: 7, scope: !1349)
!1354 = !DILocation(line: 119, column: 12, scope: !1349)
!1355 = !{i8 0, i8 2}
!1356 = !DILocation(line: 119, column: 25, scope: !1349)
!1357 = !DILocation(line: 119, column: 28, scope: !1349)
!1358 = !DILocation(line: 119, column: 34, scope: !1349)
!1359 = !DILocation(line: 118, column: 7, scope: !1345)
!1360 = !DILocation(line: 121, column: 33, scope: !1348)
!1361 = !DILocation(line: 0, scope: !1348)
!1362 = !DILocation(line: 122, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1348, file: !356, line: 122, column: 11)
!1364 = !DILocation(line: 0, scope: !1363)
!1365 = !DILocation(line: 122, column: 11, scope: !1348)
!1366 = !DILocation(line: 123, column: 9, scope: !1363)
!1367 = !DILocation(line: 126, column: 9, scope: !1363)
!1368 = !DILocation(line: 128, column: 14, scope: !1348)
!1369 = !DILocation(line: 128, column: 7, scope: !1348)
!1370 = !DILocation(line: 133, column: 42, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1345, file: !356, line: 133, column: 7)
!1372 = !DILocation(line: 133, column: 28, scope: !1371)
!1373 = !DILocation(line: 133, column: 50, scope: !1371)
!1374 = !DILocation(line: 133, column: 7, scope: !1345)
!1375 = !DILocation(line: 134, column: 12, scope: !1371)
!1376 = !DILocation(line: 134, column: 5, scope: !1371)
!1377 = !DILocation(line: 135, column: 1, scope: !1345)
!1378 = !DISubprogram(name: "__errno_location", scope: !1379, file: !1379, line: 37, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1379 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!344}
!1382 = !DISubprogram(name: "_exit", scope: !1383, file: !1383, line: 624, type: !1050, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1383 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1384 = distinct !DISubprogram(name: "verror", scope: !371, file: !371, line: 251, type: !1385, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !70, !70, !107, !381}
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DILocalVariable(name: "status", arg: 1, scope: !1384, file: !371, line: 251, type: !70)
!1389 = !DILocalVariable(name: "errnum", arg: 2, scope: !1384, file: !371, line: 251, type: !70)
!1390 = !DILocalVariable(name: "message", arg: 3, scope: !1384, file: !371, line: 251, type: !107)
!1391 = !DILocalVariable(name: "args", arg: 4, scope: !1384, file: !371, line: 251, type: !381)
!1392 = !DILocation(line: 0, scope: !1384)
!1393 = !DILocation(line: 251, column: 1, scope: !1384)
!1394 = !DILocation(line: 261, column: 3, scope: !1384)
!1395 = !DILocation(line: 265, column: 7, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1384, file: !371, line: 265, column: 7)
!1397 = !DILocation(line: 265, column: 7, scope: !1384)
!1398 = !DILocation(line: 266, column: 5, scope: !1396)
!1399 = !DILocation(line: 272, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !371, line: 268, column: 5)
!1401 = !DILocation(line: 276, column: 3, scope: !1384)
!1402 = !{i64 0, i64 8, !1060, i64 8, i64 8, !1060, i64 16, i64 8, !1060, i64 24, i64 4, !1122, i64 28, i64 4, !1122}
!1403 = !DILocation(line: 282, column: 1, scope: !1384)
!1404 = distinct !DISubprogram(name: "flush_stdout", scope: !371, file: !371, line: 163, type: !423, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1405)
!1405 = !{!1406}
!1406 = !DILocalVariable(name: "stdout_fd", scope: !1404, file: !371, line: 166, type: !70)
!1407 = !DILocation(line: 0, scope: !1404)
!1408 = !DILocalVariable(name: "fd", arg: 1, scope: !1409, file: !371, line: 145, type: !70)
!1409 = distinct !DISubprogram(name: "is_open", scope: !371, file: !371, line: 145, type: !1410, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!70, !70}
!1412 = !{!1408}
!1413 = !DILocation(line: 0, scope: !1409, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 182, column: 25, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1404, file: !371, line: 182, column: 7)
!1416 = !DILocation(line: 157, column: 15, scope: !1409, inlinedAt: !1414)
!1417 = !DILocation(line: 157, column: 12, scope: !1409, inlinedAt: !1414)
!1418 = !DILocation(line: 182, column: 7, scope: !1404)
!1419 = !DILocation(line: 184, column: 5, scope: !1415)
!1420 = !DILocation(line: 185, column: 1, scope: !1404)
!1421 = distinct !DISubprogram(name: "error_tail", scope: !371, file: !371, line: 219, type: !1385, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1422)
!1422 = !{!1423, !1424, !1425, !1426}
!1423 = !DILocalVariable(name: "status", arg: 1, scope: !1421, file: !371, line: 219, type: !70)
!1424 = !DILocalVariable(name: "errnum", arg: 2, scope: !1421, file: !371, line: 219, type: !70)
!1425 = !DILocalVariable(name: "message", arg: 3, scope: !1421, file: !371, line: 219, type: !107)
!1426 = !DILocalVariable(name: "args", arg: 4, scope: !1421, file: !371, line: 219, type: !381)
!1427 = !DILocation(line: 0, scope: !1421)
!1428 = !DILocation(line: 219, column: 1, scope: !1421)
!1429 = !DILocation(line: 229, column: 13, scope: !1421)
!1430 = !DILocation(line: 135, column: 10, scope: !1431, inlinedAt: !1473)
!1431 = distinct !DISubprogram(name: "vfprintf", scope: !1109, file: !1109, line: 132, type: !1432, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1469)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!70, !1434, !1113, !383}
!1434 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1437, file: !165, line: 51, baseType: !70, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1437, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1437, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1437, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1437, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1437, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1437, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1437, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1437, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1437, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1437, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1437, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1437, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1437, file: !165, line: 70, baseType: !1453, size: 64, offset: 832)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1437, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1437, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1437, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1437, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1437, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1437, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1437, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1437, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1437, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1437, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1437, file: !165, line: 93, baseType: !1453, size: 64, offset: 1344)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1437, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1437, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1437, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1437, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!1469 = !{!1470, !1471, !1472}
!1470 = !DILocalVariable(name: "__stream", arg: 1, scope: !1431, file: !1109, line: 132, type: !1434)
!1471 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1431, file: !1109, line: 133, type: !1113)
!1472 = !DILocalVariable(name: "__ap", arg: 3, scope: !1431, file: !1109, line: 133, type: !383)
!1473 = distinct !DILocation(line: 229, column: 3, scope: !1421)
!1474 = !{!1475, !1477}
!1475 = distinct !{!1475, !1476, !"vfprintf.inline: argument 0"}
!1476 = distinct !{!1476, !"vfprintf.inline"}
!1477 = distinct !{!1477, !1476, !"vfprintf.inline: argument 1"}
!1478 = !DILocation(line: 229, column: 3, scope: !1421)
!1479 = !DILocation(line: 0, scope: !1431, inlinedAt: !1473)
!1480 = !DILocation(line: 133, column: 49, scope: !1431, inlinedAt: !1473)
!1481 = !DILocation(line: 232, column: 3, scope: !1421)
!1482 = !DILocation(line: 233, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1421, file: !371, line: 233, column: 7)
!1484 = !DILocation(line: 233, column: 7, scope: !1421)
!1485 = !DILocalVariable(name: "errnum", arg: 1, scope: !1486, file: !371, line: 188, type: !70)
!1486 = distinct !DISubprogram(name: "print_errno_message", scope: !371, file: !371, line: 188, type: !1050, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1487)
!1487 = !{!1485, !1488, !1489}
!1488 = !DILocalVariable(name: "s", scope: !1486, file: !371, line: 190, type: !107)
!1489 = !DILocalVariable(name: "errbuf", scope: !1486, file: !371, line: 193, type: !1490)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 1024)
!1493 = !DILocation(line: 0, scope: !1486, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 234, column: 5, scope: !1483)
!1495 = !DILocation(line: 193, column: 3, scope: !1486, inlinedAt: !1494)
!1496 = !DILocation(line: 193, column: 8, scope: !1486, inlinedAt: !1494)
!1497 = !DILocation(line: 195, column: 7, scope: !1486, inlinedAt: !1494)
!1498 = !DILocation(line: 207, column: 9, scope: !1499, inlinedAt: !1494)
!1499 = distinct !DILexicalBlock(scope: !1486, file: !371, line: 207, column: 7)
!1500 = !DILocation(line: 207, column: 7, scope: !1486, inlinedAt: !1494)
!1501 = !DILocation(line: 208, column: 9, scope: !1499, inlinedAt: !1494)
!1502 = !DILocation(line: 208, column: 5, scope: !1499, inlinedAt: !1494)
!1503 = !DILocation(line: 214, column: 3, scope: !1486, inlinedAt: !1494)
!1504 = !DILocation(line: 216, column: 1, scope: !1486, inlinedAt: !1494)
!1505 = !DILocation(line: 234, column: 5, scope: !1483)
!1506 = !DILocation(line: 238, column: 3, scope: !1421)
!1507 = !DILocalVariable(name: "__c", arg: 1, scope: !1508, file: !1509, line: 101, type: !70)
!1508 = distinct !DISubprogram(name: "putc_unlocked", scope: !1509, file: !1509, line: 101, type: !1510, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1512)
!1509 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!70, !70, !1435}
!1512 = !{!1507, !1513}
!1513 = !DILocalVariable(name: "__stream", arg: 2, scope: !1508, file: !1509, line: 101, type: !1435)
!1514 = !DILocation(line: 0, scope: !1508, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 238, column: 3, scope: !1421)
!1516 = !DILocation(line: 103, column: 10, scope: !1508, inlinedAt: !1515)
!1517 = !{!1518, !1061, i64 40}
!1518 = !{!"_IO_FILE", !1123, i64 0, !1061, i64 8, !1061, i64 16, !1061, i64 24, !1061, i64 32, !1061, i64 40, !1061, i64 48, !1061, i64 56, !1061, i64 64, !1061, i64 72, !1061, i64 80, !1061, i64 88, !1061, i64 96, !1061, i64 104, !1123, i64 112, !1123, i64 116, !1519, i64 120, !1164, i64 128, !1062, i64 130, !1062, i64 131, !1061, i64 136, !1519, i64 144, !1061, i64 152, !1061, i64 160, !1061, i64 168, !1061, i64 176, !1519, i64 184, !1123, i64 192, !1062, i64 196}
!1519 = !{!"long", !1062, i64 0}
!1520 = !{!1518, !1061, i64 48}
!1521 = !{!"branch_weights", i32 2000, i32 1}
!1522 = !DILocation(line: 240, column: 3, scope: !1421)
!1523 = !DILocation(line: 241, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1421, file: !371, line: 241, column: 7)
!1525 = !DILocation(line: 241, column: 7, scope: !1421)
!1526 = !DILocation(line: 242, column: 5, scope: !1524)
!1527 = !DILocation(line: 243, column: 1, scope: !1421)
!1528 = !DISubprogram(name: "__vfprintf_chk", scope: !1109, file: !1109, line: 96, type: !1529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!70, !1434, !70, !1113, !383}
!1531 = !DISubprogram(name: "strerror_r", scope: !1239, file: !1239, line: 444, type: !1532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!101, !70, !101, !104}
!1534 = !DISubprogram(name: "__overflow", scope: !382, file: !382, line: 886, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!70, !1435, !70}
!1537 = !DISubprogram(name: "fflush_unlocked", scope: !382, file: !382, line: 239, type: !1538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!70, !1435}
!1540 = !DISubprogram(name: "fcntl", scope: !1541, file: !1541, line: 149, type: !1542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1541 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!70, !70, !70, null}
!1544 = distinct !DISubprogram(name: "error", scope: !371, file: !371, line: 285, type: !1545, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !70, !70, !107, null}
!1547 = !{!1548, !1549, !1550, !1551}
!1548 = !DILocalVariable(name: "status", arg: 1, scope: !1544, file: !371, line: 285, type: !70)
!1549 = !DILocalVariable(name: "errnum", arg: 2, scope: !1544, file: !371, line: 285, type: !70)
!1550 = !DILocalVariable(name: "message", arg: 3, scope: !1544, file: !371, line: 285, type: !107)
!1551 = !DILocalVariable(name: "ap", scope: !1544, file: !371, line: 287, type: !381)
!1552 = !DILocation(line: 0, scope: !1544)
!1553 = !DILocation(line: 287, column: 3, scope: !1544)
!1554 = !DILocation(line: 287, column: 11, scope: !1544)
!1555 = !DILocation(line: 288, column: 3, scope: !1544)
!1556 = !DILocation(line: 289, column: 3, scope: !1544)
!1557 = !DILocation(line: 290, column: 3, scope: !1544)
!1558 = !DILocation(line: 291, column: 1, scope: !1544)
!1559 = !DILocation(line: 0, scope: !378)
!1560 = !DILocation(line: 298, column: 1, scope: !378)
!1561 = !DILocation(line: 302, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !378, file: !371, line: 302, column: 7)
!1563 = !DILocation(line: 302, column: 7, scope: !378)
!1564 = !DILocation(line: 307, column: 11, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !371, line: 307, column: 11)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !371, line: 303, column: 5)
!1567 = !DILocation(line: 307, column: 27, scope: !1565)
!1568 = !DILocation(line: 308, column: 11, scope: !1565)
!1569 = !DILocation(line: 308, column: 28, scope: !1565)
!1570 = !DILocation(line: 308, column: 25, scope: !1565)
!1571 = !DILocation(line: 309, column: 15, scope: !1565)
!1572 = !DILocation(line: 309, column: 33, scope: !1565)
!1573 = !DILocation(line: 310, column: 19, scope: !1565)
!1574 = !DILocation(line: 311, column: 22, scope: !1565)
!1575 = !DILocation(line: 311, column: 56, scope: !1565)
!1576 = !DILocation(line: 307, column: 11, scope: !1566)
!1577 = !DILocation(line: 316, column: 21, scope: !1566)
!1578 = !DILocation(line: 317, column: 23, scope: !1566)
!1579 = !DILocation(line: 318, column: 5, scope: !1566)
!1580 = !DILocation(line: 327, column: 3, scope: !378)
!1581 = !DILocation(line: 331, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !378, file: !371, line: 331, column: 7)
!1583 = !DILocation(line: 331, column: 7, scope: !378)
!1584 = !DILocation(line: 332, column: 5, scope: !1582)
!1585 = !DILocation(line: 338, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !371, line: 334, column: 5)
!1587 = !DILocation(line: 346, column: 3, scope: !378)
!1588 = !DILocation(line: 350, column: 3, scope: !378)
!1589 = !DILocation(line: 356, column: 1, scope: !378)
!1590 = distinct !DISubprogram(name: "error_at_line", scope: !371, file: !371, line: 359, type: !1591, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !70, !70, !107, !63, !107, null}
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599}
!1594 = !DILocalVariable(name: "status", arg: 1, scope: !1590, file: !371, line: 359, type: !70)
!1595 = !DILocalVariable(name: "errnum", arg: 2, scope: !1590, file: !371, line: 359, type: !70)
!1596 = !DILocalVariable(name: "file_name", arg: 3, scope: !1590, file: !371, line: 359, type: !107)
!1597 = !DILocalVariable(name: "line_number", arg: 4, scope: !1590, file: !371, line: 360, type: !63)
!1598 = !DILocalVariable(name: "message", arg: 5, scope: !1590, file: !371, line: 360, type: !107)
!1599 = !DILocalVariable(name: "ap", scope: !1590, file: !371, line: 362, type: !381)
!1600 = !DILocation(line: 0, scope: !1590)
!1601 = !DILocation(line: 362, column: 3, scope: !1590)
!1602 = !DILocation(line: 362, column: 11, scope: !1590)
!1603 = !DILocation(line: 363, column: 3, scope: !1590)
!1604 = !DILocation(line: 364, column: 3, scope: !1590)
!1605 = !DILocation(line: 366, column: 3, scope: !1590)
!1606 = !DILocation(line: 367, column: 1, scope: !1590)
!1607 = distinct !DISubprogram(name: "getprogname", scope: !734, file: !734, line: 54, type: !1608, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !1107)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!107}
!1610 = !DILocation(line: 58, column: 10, scope: !1607)
!1611 = !DILocation(line: 58, column: 3, scope: !1607)
!1612 = distinct !DISubprogram(name: "num_processors", scope: !427, file: !427, line: 544, type: !1613, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!106, !61}
!1615 = !{!1616, !1617, !1618, !1621, !1622, !1625}
!1616 = !DILocalVariable(name: "query", arg: 1, scope: !1612, file: !427, line: 544, type: !61)
!1617 = !DILocalVariable(name: "nproc_limit", scope: !1612, file: !427, line: 546, type: !106)
!1618 = !DILocalVariable(name: "omp_env_threads", scope: !1619, file: !427, line: 552, type: !106)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !427, line: 551, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1612, file: !427, line: 550, column: 7)
!1621 = !DILocalVariable(name: "omp_env_limit", scope: !1619, file: !427, line: 555, type: !106)
!1622 = !DILocalVariable(name: "quota", scope: !1623, file: !427, line: 570, type: !106)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !427, line: 569, column: 5)
!1624 = distinct !DILexicalBlock(scope: !1612, file: !427, line: 568, column: 7)
!1625 = !DILocalVariable(name: "nprocs", scope: !1626, file: !427, line: 576, type: !106)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !427, line: 575, column: 5)
!1627 = distinct !DILexicalBlock(scope: !1612, file: !427, line: 574, column: 7)
!1628 = !DILocation(line: 0, scope: !1612)
!1629 = !DILocation(line: 550, column: 13, scope: !1620)
!1630 = !DILocation(line: 550, column: 7, scope: !1612)
!1631 = !DILocation(line: 553, column: 28, scope: !1619)
!1632 = !DILocalVariable(name: "threads", arg: 1, scope: !1633, file: !427, line: 515, type: !107)
!1633 = distinct !DISubprogram(name: "parse_omp_threads", scope: !427, file: !427, line: 515, type: !1634, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1636)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!106, !107}
!1636 = !{!1632, !1637, !1640}
!1637 = !DILocalVariable(name: "endptr", scope: !1638, file: !427, line: 528, type: !101)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !427, line: 527, column: 5)
!1639 = distinct !DILexicalBlock(scope: !1633, file: !427, line: 526, column: 7)
!1640 = !DILocalVariable(name: "value", scope: !1638, file: !427, line: 529, type: !106)
!1641 = !DILocation(line: 0, scope: !1633, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 553, column: 9, scope: !1619)
!1643 = !DILocation(line: 517, column: 15, scope: !1644, inlinedAt: !1642)
!1644 = distinct !DILexicalBlock(scope: !1633, file: !427, line: 517, column: 7)
!1645 = !DILocation(line: 517, column: 7, scope: !1633, inlinedAt: !1642)
!1646 = !DILocation(line: 522, column: 10, scope: !1633, inlinedAt: !1642)
!1647 = !DILocation(line: 522, column: 27, scope: !1633, inlinedAt: !1642)
!1648 = !DILocation(line: 523, column: 12, scope: !1633, inlinedAt: !1642)
!1649 = !DILocation(line: 522, column: 3, scope: !1633, inlinedAt: !1642)
!1650 = distinct !{!1650, !1649, !1648, !1169}
!1651 = !DILocation(line: 526, column: 18, scope: !1639, inlinedAt: !1642)
!1652 = !DILocalVariable(name: "c", arg: 1, scope: !1653, file: !1654, line: 233, type: !70)
!1653 = distinct !DISubprogram(name: "c_isdigit", scope: !1654, file: !1654, line: 233, type: !1655, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1657)
!1654 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!148, !70}
!1657 = !{!1652}
!1658 = !DILocation(line: 0, scope: !1653, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 526, column: 7, scope: !1639, inlinedAt: !1642)
!1660 = !DILocation(line: 235, column: 3, scope: !1653, inlinedAt: !1659)
!1661 = !DILocation(line: 526, column: 7, scope: !1633, inlinedAt: !1642)
!1662 = !DILocation(line: 528, column: 7, scope: !1638, inlinedAt: !1642)
!1663 = !DILocation(line: 0, scope: !1638, inlinedAt: !1642)
!1664 = !DILocation(line: 529, column: 33, scope: !1638, inlinedAt: !1642)
!1665 = !DILocation(line: 530, column: 7, scope: !1638, inlinedAt: !1642)
!1666 = !DILocation(line: 530, column: 14, scope: !1638, inlinedAt: !1642)
!1667 = !DILocation(line: 530, column: 30, scope: !1638, inlinedAt: !1642)
!1668 = !DILocation(line: 538, column: 5, scope: !1639, inlinedAt: !1642)
!1669 = !DILocation(line: 531, column: 15, scope: !1638, inlinedAt: !1642)
!1670 = distinct !{!1670, !1665, !1669, !1169}
!1671 = !DILocation(line: 540, column: 3, scope: !1633, inlinedAt: !1642)
!1672 = !DILocation(line: 0, scope: !1619)
!1673 = !DILocation(line: 556, column: 28, scope: !1619)
!1674 = !DILocation(line: 0, scope: !1633, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 556, column: 9, scope: !1619)
!1676 = !DILocation(line: 517, column: 15, scope: !1644, inlinedAt: !1675)
!1677 = !DILocation(line: 517, column: 7, scope: !1633, inlinedAt: !1675)
!1678 = !DILocation(line: 522, column: 10, scope: !1633, inlinedAt: !1675)
!1679 = !DILocation(line: 522, column: 27, scope: !1633, inlinedAt: !1675)
!1680 = !DILocation(line: 523, column: 12, scope: !1633, inlinedAt: !1675)
!1681 = !DILocation(line: 522, column: 3, scope: !1633, inlinedAt: !1675)
!1682 = distinct !{!1682, !1681, !1680, !1169}
!1683 = !DILocation(line: 526, column: 18, scope: !1639, inlinedAt: !1675)
!1684 = !DILocation(line: 0, scope: !1653, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 526, column: 7, scope: !1639, inlinedAt: !1675)
!1686 = !DILocation(line: 235, column: 3, scope: !1653, inlinedAt: !1685)
!1687 = !DILocation(line: 526, column: 7, scope: !1633, inlinedAt: !1675)
!1688 = !DILocation(line: 528, column: 7, scope: !1638, inlinedAt: !1675)
!1689 = !DILocation(line: 0, scope: !1638, inlinedAt: !1675)
!1690 = !DILocation(line: 529, column: 33, scope: !1638, inlinedAt: !1675)
!1691 = !DILocation(line: 557, column: 13, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1619, file: !427, line: 557, column: 11)
!1693 = !DILocation(line: 530, column: 7, scope: !1638, inlinedAt: !1675)
!1694 = !DILocation(line: 530, column: 14, scope: !1638, inlinedAt: !1675)
!1695 = !DILocation(line: 530, column: 30, scope: !1638, inlinedAt: !1675)
!1696 = !DILocation(line: 538, column: 5, scope: !1639, inlinedAt: !1675)
!1697 = !DILocation(line: 557, column: 11, scope: !1619)
!1698 = !DILocation(line: 531, column: 15, scope: !1638, inlinedAt: !1675)
!1699 = distinct !{!1699, !1693, !1698, !1169}
!1700 = !DILocation(line: 560, column: 11, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1619, file: !427, line: 560, column: 11)
!1702 = !DILocation(line: 560, column: 11, scope: !1619)
!1703 = !DILocation(line: 546, column: 21, scope: !1612)
!1704 = !DILocation(line: 568, column: 13, scope: !1624)
!1705 = !DILocation(line: 568, column: 30, scope: !1624)
!1706 = !DILocalVariable(name: "quota", scope: !1707, file: !427, line: 489, type: !106)
!1707 = distinct !DISubprogram(name: "cpu_quota", scope: !427, file: !427, line: 487, type: !1708, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1710)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!106}
!1710 = !{!1706}
!1711 = !DILocation(line: 0, scope: !1707, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 570, column: 33, scope: !1623)
!1713 = !DILocation(line: 494, column: 11, scope: !1707, inlinedAt: !1712)
!1714 = !DILocation(line: 494, column: 3, scope: !1707, inlinedAt: !1712)
!1715 = !DILocalVariable(name: "cpu_quota", scope: !1716, file: !427, line: 402, type: !106)
!1716 = distinct !DISubprogram(name: "get_cgroup2_cpu_quota", scope: !427, file: !427, line: 400, type: !1708, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1717)
!1717 = !{!1715, !1718, !1753, !1754, !1755, !1756, !1760, !1764, !1765, !1766, !1767, !1772, !1775, !1776, !1779}
!1718 = !DILocalVariable(name: "fp", scope: !1716, file: !427, line: 404, type: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1721, file: !165, line: 51, baseType: !70, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1721, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1721, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1721, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1721, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1721, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1721, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1721, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1721, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1721, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1721, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1721, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1721, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1721, file: !165, line: 70, baseType: !1737, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1721, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1721, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1721, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1721, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1721, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1721, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1721, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1721, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1721, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1721, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1721, file: !165, line: 93, baseType: !1737, size: 64, offset: 1344)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1721, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1721, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1721, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1721, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!1753 = !DILocalVariable(name: "cgroup", scope: !1716, file: !427, line: 409, type: !101)
!1754 = !DILocalVariable(name: "cgroup_str", scope: !1716, file: !427, line: 410, type: !101)
!1755 = !DILocalVariable(name: "cgroup_size", scope: !1716, file: !427, line: 411, type: !104)
!1756 = !DILocalVariable(name: "read", scope: !1716, file: !427, line: 412, type: !1757)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1758, line: 108, baseType: !1759)
!1758 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !188, line: 194, baseType: !189)
!1760 = !DILocalVariable(name: "end", scope: !1761, file: !427, line: 417, type: !101)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !427, line: 416, column: 9)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !427, line: 415, column: 11)
!1763 = distinct !DILexicalBlock(scope: !1716, file: !427, line: 414, column: 5)
!1764 = !DILocalVariable(name: "mount", scope: !1716, file: !427, line: 426, type: !101)
!1765 = !DILocalVariable(name: "quota_str", scope: !1716, file: !427, line: 431, type: !101)
!1766 = !DILocalVariable(name: "quota_size", scope: !1716, file: !427, line: 432, type: !104)
!1767 = !DILocalVariable(name: "cpu_max_file", scope: !1768, file: !427, line: 440, type: !1769)
!1768 = distinct !DILexicalBlock(scope: !1716, file: !427, line: 434, column: 5)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: 4096)
!1772 = !DILocalVariable(name: "quota", scope: !1773, file: !427, line: 448, type: !189)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !427, line: 447, column: 9)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !427, line: 444, column: 11)
!1775 = !DILocalVariable(name: "period", scope: !1773, file: !427, line: 448, type: !189)
!1776 = !DILocalVariable(name: "ncpus", scope: !1777, file: !427, line: 451, type: !958)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !427, line: 450, column: 13)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !427, line: 449, column: 15)
!1779 = !DILocalVariable(name: "last_sep", scope: !1768, file: !427, line: 465, type: !101)
!1780 = !DILocation(line: 0, scope: !1716, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 503, column: 17, scope: !1782, inlinedAt: !1712)
!1782 = distinct !DILexicalBlock(scope: !1707, file: !427, line: 495, column: 5)
!1783 = !DILocation(line: 404, column: 14, scope: !1716, inlinedAt: !1781)
!1784 = !DILocation(line: 405, column: 9, scope: !1785, inlinedAt: !1781)
!1785 = distinct !DILexicalBlock(scope: !1716, file: !427, line: 405, column: 7)
!1786 = !DILocation(line: 405, column: 7, scope: !1716, inlinedAt: !1781)
!1787 = !DILocation(line: 410, column: 3, scope: !1716, inlinedAt: !1781)
!1788 = !DILocation(line: 410, column: 9, scope: !1716, inlinedAt: !1781)
!1789 = !DILocation(line: 411, column: 3, scope: !1716, inlinedAt: !1781)
!1790 = !DILocation(line: 411, column: 10, scope: !1716, inlinedAt: !1781)
!1791 = !{!1519, !1519, i64 0}
!1792 = !DILocation(line: 413, column: 3, scope: !1716, inlinedAt: !1781)
!1793 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1794, file: !1509, line: 118, type: !1272)
!1794 = distinct !DISubprogram(name: "getline", scope: !1509, file: !1509, line: 118, type: !1795, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1759, !1272, !974, !1719}
!1797 = !{!1793, !1798, !1799}
!1798 = !DILocalVariable(name: "__n", arg: 2, scope: !1794, file: !1509, line: 118, type: !974)
!1799 = !DILocalVariable(name: "__stream", arg: 3, scope: !1794, file: !1509, line: 118, type: !1719)
!1800 = !DILocation(line: 0, scope: !1794, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 413, column: 18, scope: !1716, inlinedAt: !1781)
!1802 = !DILocation(line: 120, column: 10, scope: !1794, inlinedAt: !1801)
!1803 = !DILocation(line: 413, column: 59, scope: !1716, inlinedAt: !1781)
!1804 = !DILocation(line: 424, column: 3, scope: !1716, inlinedAt: !1781)
!1805 = !DILocation(line: 427, column: 14, scope: !1806, inlinedAt: !1781)
!1806 = distinct !DILexicalBlock(scope: !1716, file: !427, line: 427, column: 7)
!1807 = !DILocation(line: 415, column: 20, scope: !1762, inlinedAt: !1781)
!1808 = !DILocation(line: 415, column: 11, scope: !1762, inlinedAt: !1781)
!1809 = !DILocation(line: 415, column: 43, scope: !1762, inlinedAt: !1781)
!1810 = !DILocation(line: 415, column: 11, scope: !1763, inlinedAt: !1781)
!1811 = distinct !{!1811, !1792, !1812, !1169}
!1812 = !DILocation(line: 423, column: 5, scope: !1716, inlinedAt: !1781)
!1813 = !DILocation(line: 417, column: 34, scope: !1761, inlinedAt: !1781)
!1814 = !DILocation(line: 417, column: 41, scope: !1761, inlinedAt: !1781)
!1815 = !DILocation(line: 0, scope: !1761, inlinedAt: !1781)
!1816 = !DILocation(line: 418, column: 15, scope: !1817, inlinedAt: !1781)
!1817 = distinct !DILexicalBlock(scope: !1761, file: !427, line: 418, column: 15)
!1818 = !DILocation(line: 418, column: 20, scope: !1817, inlinedAt: !1781)
!1819 = !DILocation(line: 418, column: 15, scope: !1761, inlinedAt: !1781)
!1820 = !DILocation(line: 419, column: 18, scope: !1817, inlinedAt: !1781)
!1821 = !DILocation(line: 420, column: 20, scope: !1761, inlinedAt: !1781)
!1822 = !DILocation(line: 419, column: 13, scope: !1817, inlinedAt: !1781)
!1823 = !DILocation(line: 420, column: 31, scope: !1761, inlinedAt: !1781)
!1824 = !DILocation(line: 371, column: 7, scope: !1825, inlinedAt: !1842)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !427, line: 371, column: 7)
!1826 = distinct !DISubprogram(name: "cgroup2_mount", scope: !427, file: !427, line: 367, type: !1827, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1828)
!1827 = !DISubroutineType(types: !460)
!1828 = !{!1829, !1830, !1831}
!1829 = !DILocalVariable(name: "ret", scope: !1826, file: !427, line: 374, type: !101)
!1830 = !DILocalVariable(name: "fp", scope: !1826, file: !427, line: 378, type: !1719)
!1831 = !DILocalVariable(name: "mnt", scope: !1826, file: !427, line: 381, type: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1834, line: 51, size: 320, elements: !1835)
!1834 = !DIFile(filename: "/usr/include/mntent.h", directory: "", checksumkind: CSK_MD5, checksum: "0070e4c80f74d781196301da01c9ab34")
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1841}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1833, file: !1834, line: 53, baseType: !101, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1833, file: !1834, line: 54, baseType: !101, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1833, file: !1834, line: 55, baseType: !101, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1833, file: !1834, line: 56, baseType: !101, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1833, file: !1834, line: 57, baseType: !70, size: 32, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1833, file: !1834, line: 58, baseType: !70, size: 32, offset: 288)
!1842 = distinct !DILocation(line: 427, column: 28, scope: !1806, inlinedAt: !1781)
!1843 = !DILocation(line: 371, column: 58, scope: !1825, inlinedAt: !1842)
!1844 = !DILocation(line: 371, column: 7, scope: !1826, inlinedAt: !1842)
!1845 = !DILocation(line: 372, column: 12, scope: !1825, inlinedAt: !1842)
!1846 = !DILocation(line: 372, column: 5, scope: !1825, inlinedAt: !1842)
!1847 = !DILocation(line: 0, scope: !1826, inlinedAt: !1842)
!1848 = !DILocation(line: 378, column: 14, scope: !1826, inlinedAt: !1842)
!1849 = !DILocation(line: 379, column: 9, scope: !1850, inlinedAt: !1842)
!1850 = distinct !DILexicalBlock(scope: !1826, file: !427, line: 379, column: 7)
!1851 = !DILocation(line: 379, column: 7, scope: !1826, inlinedAt: !1842)
!1852 = !DILocation(line: 382, column: 17, scope: !1826, inlinedAt: !1842)
!1853 = !DILocation(line: 382, column: 33, scope: !1826, inlinedAt: !1842)
!1854 = !DILocation(line: 382, column: 3, scope: !1826, inlinedAt: !1842)
!1855 = !DILocation(line: 384, column: 23, scope: !1856, inlinedAt: !1842)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !427, line: 384, column: 11)
!1857 = distinct !DILexicalBlock(scope: !1826, file: !427, line: 383, column: 5)
!1858 = !{!1859, !1061, i64 16}
!1859 = !{!"mntent", !1061, i64 0, !1061, i64 8, !1061, i64 16, !1061, i64 24, !1123, i64 32, !1123, i64 36}
!1860 = !DILocalVariable(name: "__s1", arg: 1, scope: !1861, file: !1135, line: 1359, type: !107)
!1861 = distinct !DISubprogram(name: "streq", scope: !1135, file: !1135, line: 1359, type: !1136, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1862)
!1862 = !{!1860, !1863}
!1863 = !DILocalVariable(name: "__s2", arg: 2, scope: !1861, file: !1135, line: 1359, type: !107)
!1864 = !DILocation(line: 0, scope: !1861, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 384, column: 11, scope: !1856, inlinedAt: !1842)
!1866 = !DILocation(line: 1361, column: 11, scope: !1861, inlinedAt: !1865)
!1867 = !DILocation(line: 1361, column: 10, scope: !1861, inlinedAt: !1865)
!1868 = !DILocation(line: 384, column: 11, scope: !1857, inlinedAt: !1842)
!1869 = distinct !{!1869, !1854, !1870, !1169}
!1870 = !DILocation(line: 389, column: 5, scope: !1826, inlinedAt: !1842)
!1871 = !DILocation(line: 386, column: 30, scope: !1872, inlinedAt: !1842)
!1872 = distinct !DILexicalBlock(scope: !1856, file: !427, line: 385, column: 9)
!1873 = !{!1859, !1061, i64 8}
!1874 = !DILocation(line: 386, column: 17, scope: !1872, inlinedAt: !1842)
!1875 = !DILocation(line: 387, column: 11, scope: !1872, inlinedAt: !1842)
!1876 = !DILocation(line: 390, column: 3, scope: !1826, inlinedAt: !1842)
!1877 = !DILocation(line: 427, column: 26, scope: !1806, inlinedAt: !1781)
!1878 = !DILocation(line: 427, column: 7, scope: !1716, inlinedAt: !1781)
!1879 = !DILocation(line: 431, column: 3, scope: !1716, inlinedAt: !1781)
!1880 = !DILocation(line: 431, column: 9, scope: !1716, inlinedAt: !1781)
!1881 = !DILocation(line: 432, column: 3, scope: !1716, inlinedAt: !1781)
!1882 = !DILocation(line: 432, column: 10, scope: !1716, inlinedAt: !1781)
!1883 = !DILocation(line: 433, column: 17, scope: !1716, inlinedAt: !1781)
!1884 = !DILocation(line: 433, column: 20, scope: !1716, inlinedAt: !1781)
!1885 = !DILocation(line: 433, column: 3, scope: !1716, inlinedAt: !1781)
!1886 = !DILocation(line: 440, column: 7, scope: !1768, inlinedAt: !1781)
!1887 = !DILocation(line: 440, column: 12, scope: !1768, inlinedAt: !1781)
!1888 = !DILocation(line: 441, column: 7, scope: !1768, inlinedAt: !1781)
!1889 = !DILocation(line: 444, column: 17, scope: !1774, inlinedAt: !1781)
!1890 = !DILocation(line: 444, column: 15, scope: !1774, inlinedAt: !1781)
!1891 = !DILocation(line: 445, column: 11, scope: !1774, inlinedAt: !1781)
!1892 = !DILocation(line: 0, scope: !1794, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 445, column: 14, scope: !1774, inlinedAt: !1781)
!1894 = !DILocation(line: 120, column: 10, scope: !1794, inlinedAt: !1893)
!1895 = !DILocation(line: 445, column: 52, scope: !1774, inlinedAt: !1781)
!1896 = !DILocation(line: 446, column: 11, scope: !1774, inlinedAt: !1781)
!1897 = !DILocation(line: 446, column: 23, scope: !1774, inlinedAt: !1781)
!1898 = !DILocation(line: 446, column: 14, scope: !1774, inlinedAt: !1781)
!1899 = !DILocation(line: 446, column: 44, scope: !1774, inlinedAt: !1781)
!1900 = !DILocation(line: 444, column: 11, scope: !1768, inlinedAt: !1781)
!1901 = !DILocation(line: 448, column: 11, scope: !1773, inlinedAt: !1781)
!1902 = !DILocation(line: 0, scope: !1773, inlinedAt: !1781)
!1903 = !DILocation(line: 449, column: 15, scope: !1778, inlinedAt: !1781)
!1904 = !DILocation(line: 449, column: 62, scope: !1778, inlinedAt: !1781)
!1905 = !DILocation(line: 449, column: 67, scope: !1778, inlinedAt: !1781)
!1906 = !DILocation(line: 451, column: 38, scope: !1777, inlinedAt: !1781)
!1907 = !DILocation(line: 451, column: 30, scope: !1777, inlinedAt: !1781)
!1908 = !DILocation(line: 451, column: 46, scope: !1777, inlinedAt: !1781)
!1909 = !DILocation(line: 451, column: 44, scope: !1777, inlinedAt: !1781)
!1910 = !DILocation(line: 0, scope: !1777, inlinedAt: !1781)
!1911 = !DILocation(line: 452, column: 29, scope: !1912, inlinedAt: !1781)
!1912 = distinct !DILexicalBlock(scope: !1777, file: !427, line: 452, column: 19)
!1913 = !DILocation(line: 452, column: 42, scope: !1912, inlinedAt: !1781)
!1914 = !DILocation(line: 454, column: 31, scope: !1915, inlinedAt: !1781)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !427, line: 453, column: 17)
!1916 = !DILocation(line: 456, column: 33, scope: !1917, inlinedAt: !1781)
!1917 = distinct !DILexicalBlock(scope: !1915, file: !427, line: 456, column: 23)
!1918 = !DILocation(line: 456, column: 23, scope: !1915, inlinedAt: !1781)
!1919 = !DILocation(line: 457, column: 29, scope: !1917, inlinedAt: !1781)
!1920 = !DILocation(line: 457, column: 21, scope: !1917, inlinedAt: !1781)
!1921 = !DILocation(line: 460, column: 9, scope: !1774, inlinedAt: !1781)
!1922 = !DILocation(line: 460, column: 9, scope: !1773, inlinedAt: !1781)
!1923 = !DILocation(line: 463, column: 9, scope: !1924, inlinedAt: !1781)
!1924 = distinct !DILexicalBlock(scope: !1768, file: !427, line: 462, column: 11)
!1925 = !DILocation(line: 465, column: 24, scope: !1768, inlinedAt: !1781)
!1926 = !DILocation(line: 0, scope: !1768, inlinedAt: !1781)
!1927 = !DILocation(line: 466, column: 13, scope: !1928, inlinedAt: !1781)
!1928 = distinct !DILexicalBlock(scope: !1768, file: !427, line: 466, column: 11)
!1929 = !DILocation(line: 466, column: 11, scope: !1768, inlinedAt: !1781)
!1930 = !DILocation(line: 472, column: 5, scope: !1716, inlinedAt: !1781)
!1931 = !DILocation(line: 468, column: 20, scope: !1932, inlinedAt: !1781)
!1932 = distinct !DILexicalBlock(scope: !1768, file: !427, line: 468, column: 11)
!1933 = !DILocation(line: 468, column: 30, scope: !1932, inlinedAt: !1781)
!1934 = !DILocation(line: 468, column: 33, scope: !1932, inlinedAt: !1781)
!1935 = !DILocation(line: 468, column: 11, scope: !1768, inlinedAt: !1781)
!1936 = !DILocation(line: 0, scope: !1932, inlinedAt: !1781)
!1937 = !DILocation(line: 474, column: 9, scope: !1716, inlinedAt: !1781)
!1938 = !DILocation(line: 474, column: 3, scope: !1716, inlinedAt: !1781)
!1939 = !DILocation(line: 475, column: 3, scope: !1716, inlinedAt: !1781)
!1940 = !DILocation(line: 476, column: 9, scope: !1716, inlinedAt: !1781)
!1941 = !DILocation(line: 476, column: 3, scope: !1716, inlinedAt: !1781)
!1942 = !DILocation(line: 479, column: 1, scope: !1716, inlinedAt: !1781)
!1943 = !DILocation(line: 0, scope: !1782, inlinedAt: !1712)
!1944 = !DILocation(line: 0, scope: !1623)
!1945 = !DILocation(line: 571, column: 21, scope: !1623)
!1946 = !DILocation(line: 572, column: 5, scope: !1623)
!1947 = !DILocation(line: 574, column: 19, scope: !1627)
!1948 = !DILocation(line: 574, column: 7, scope: !1612)
!1949 = !DILocalVariable(name: "query", arg: 1, scope: !1950, file: !427, line: 238, type: !61)
!1950 = distinct !DISubprogram(name: "num_processors_available", scope: !427, file: !427, line: 238, type: !1613, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1951)
!1951 = !{!1949, !1952, !1956, !1958, !1961}
!1952 = !DILocalVariable(name: "nprocs", scope: !1953, file: !427, line: 259, type: !106)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !427, line: 258, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !427, line: 256, column: 5)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !427, line: 255, column: 7)
!1956 = !DILocalVariable(name: "nprocs", scope: !1957, file: !427, line: 268, type: !189)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !427, line: 266, column: 7)
!1958 = !DILocalVariable(name: "nprocs", scope: !1959, file: !427, line: 279, type: !189)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !427, line: 277, column: 7)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !427, line: 275, column: 5)
!1961 = !DILocalVariable(name: "nprocs_current", scope: !1962, file: !427, line: 289, type: !106)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !427, line: 288, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !427, line: 287, column: 13)
!1964 = !DILocation(line: 0, scope: !1950, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 576, column: 30, scope: !1626)
!1966 = !DILocation(line: 255, column: 7, scope: !1950, inlinedAt: !1965)
!1967 = !DILocation(line: 259, column: 32, scope: !1953, inlinedAt: !1965)
!1968 = !DILocation(line: 0, scope: !1953, inlinedAt: !1965)
!1969 = !DILocation(line: 261, column: 20, scope: !1970, inlinedAt: !1965)
!1970 = distinct !DILexicalBlock(scope: !1953, file: !427, line: 261, column: 13)
!1971 = !DILocation(line: 268, column: 27, scope: !1957, inlinedAt: !1965)
!1972 = !DILocation(line: 0, scope: !1957, inlinedAt: !1965)
!1973 = !DILocation(line: 269, column: 20, scope: !1974, inlinedAt: !1965)
!1974 = distinct !DILexicalBlock(scope: !1957, file: !427, line: 269, column: 13)
!1975 = !DILocation(line: 279, column: 27, scope: !1959, inlinedAt: !1965)
!1976 = !DILocation(line: 0, scope: !1959, inlinedAt: !1965)
!1977 = !DILocation(line: 287, column: 25, scope: !1963, inlinedAt: !1965)
!1978 = !DILocation(line: 289, column: 44, scope: !1962, inlinedAt: !1965)
!1979 = !DILocation(line: 0, scope: !1962, inlinedAt: !1965)
!1980 = !DILocation(line: 291, column: 45, scope: !1962, inlinedAt: !1965)
!1981 = !DILocation(line: 293, column: 11, scope: !1962, inlinedAt: !1965)
!1982 = !DILocation(line: 296, column: 20, scope: !1983, inlinedAt: !1965)
!1983 = distinct !DILexicalBlock(scope: !1959, file: !427, line: 296, column: 13)
!1984 = !DILocation(line: 357, column: 3, scope: !1950, inlinedAt: !1965)
!1985 = !DILocation(line: 0, scope: !1626)
!1986 = !DILocation(line: 577, column: 21, scope: !1626)
!1987 = !DILocation(line: 578, column: 5, scope: !1626)
!1988 = !DILocation(line: 581, column: 1, scope: !1612)
!1989 = !DISubprogram(name: "strtoul", scope: !1243, file: !1243, line: 181, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!106, !1113, !1992, !70}
!1992 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1272)
!1993 = !DISubprogram(name: "sched_getscheduler", scope: !1994, file: !1994, line: 65, type: !1995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1994 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!70, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !188, line: 154, baseType: !70)
!1998 = !DISubprogram(name: "__getdelim", scope: !382, file: !382, line: 632, type: !1999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!1759, !1992, !2001, !70, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !974)
!2002 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1719)
!2003 = !DISubprogram(name: "access", scope: !1383, file: !1383, line: 287, type: !2004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!70, !107, !70}
!2006 = !DISubprogram(name: "strdup", scope: !1239, file: !1239, line: 187, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2007 = !DISubprogram(name: "setmntent", scope: !1834, file: !1834, line: 64, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!1719, !107, !107}
!2010 = !DISubprogram(name: "getmntent", scope: !1834, file: !1834, line: 69, type: !2011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!1832, !1719}
!2013 = !DISubprogram(name: "endmntent", scope: !1834, file: !1834, line: 85, type: !2014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!70, !1719}
!2016 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !427, file: !427, line: 441, type: !2017, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!70, !101, !106, !70, !106, !107, null}
!2019 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !382, file: !382, line: 439, type: !2020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!70, !1113, !1113, null}
!2022 = !DISubprogram(name: "strrchr", scope: !1239, file: !1239, line: 273, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2023 = !DISubprogram(name: "free", scope: !1135, file: !1135, line: 752, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !102}
!2026 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !427, file: !427, line: 73, type: !1708, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !2027)
!2027 = !{!2028, !2030, !2042, !2043, !2046, !2048}
!2028 = !DILocalVariable(name: "alloc_count", scope: !2029, file: !427, line: 137, type: !63)
!2029 = distinct !DILexicalBlock(scope: !2026, file: !427, line: 136, column: 3)
!2030 = !DILocalVariable(name: "set", scope: !2031, file: !427, line: 140, type: !2034)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !427, line: 139, column: 7)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !427, line: 138, column: 5)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !427, line: 138, column: 5)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !2036, line: 42, baseType: !2037)
!2036 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/cpu-set.h", directory: "", checksumkind: CSK_MD5, checksum: "9b78eb5e247ecb71c5de90bcf65db505")
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2036, line: 39, size: 1024, elements: !2038)
!2038 = !{!2039}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !2037, file: !2036, line: 41, baseType: !2040, size: 1024)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2041, size: 1024, elements: !297)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !2036, line: 32, baseType: !106)
!2042 = !DILocalVariable(name: "size", scope: !2031, file: !427, line: 144, type: !63)
!2043 = !DILocalVariable(name: "count", scope: !2044, file: !427, line: 147, type: !63)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !427, line: 146, column: 11)
!2045 = distinct !DILexicalBlock(scope: !2031, file: !427, line: 145, column: 13)
!2046 = !DILocalVariable(name: "set", scope: !2047, file: !427, line: 167, type: !2035)
!2047 = distinct !DILexicalBlock(scope: !2026, file: !427, line: 166, column: 3)
!2048 = !DILocalVariable(name: "count", scope: !2049, file: !427, line: 171, type: !106)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !427, line: 170, column: 7)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !427, line: 169, column: 9)
!2051 = !DILocation(line: 0, scope: !2029)
!2052 = !DILocation(line: 138, column: 5, scope: !2029)
!2053 = !DILocation(line: 137, column: 18, scope: !2029)
!2054 = !DILocation(line: 140, column: 26, scope: !2031)
!2055 = !DILocation(line: 0, scope: !2031)
!2056 = !DILocation(line: 141, column: 17, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2031, file: !427, line: 141, column: 13)
!2058 = !DILocation(line: 141, column: 13, scope: !2031)
!2059 = !DILocation(line: 144, column: 29, scope: !2031)
!2060 = !DILocation(line: 145, column: 13, scope: !2045)
!2061 = !DILocation(line: 145, column: 46, scope: !2045)
!2062 = !DILocation(line: 145, column: 13, scope: !2031)
!2063 = !DILocation(line: 147, column: 34, scope: !2044)
!2064 = !DILocation(line: 0, scope: !2044)
!2065 = !DILocation(line: 148, column: 13, scope: !2044)
!2066 = !DILocation(line: 149, column: 20, scope: !2044)
!2067 = !DILocation(line: 151, column: 13, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2031, file: !427, line: 151, column: 13)
!2069 = !DILocation(line: 151, column: 19, scope: !2068)
!2070 = !DILocation(line: 151, column: 13, scope: !2031)
!2071 = !DILocation(line: 167, column: 5, scope: !2047)
!2072 = !DILocation(line: 167, column: 15, scope: !2047)
!2073 = !DILocation(line: 169, column: 9, scope: !2050)
!2074 = !DILocation(line: 169, column: 51, scope: !2050)
!2075 = !DILocation(line: 169, column: 9, scope: !2047)
!2076 = !DILocation(line: 175, column: 17, scope: !2049)
!2077 = !DILocation(line: 0, scope: !2049)
!2078 = !DILocation(line: 182, column: 19, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2049, file: !427, line: 182, column: 13)
!2080 = !DILocation(line: 182, column: 13, scope: !2049)
!2081 = !DILocation(line: 185, column: 3, scope: !2026)
!2082 = !DILocation(line: 232, column: 1, scope: !2026)
!2083 = !DISubprogram(name: "sysconf", scope: !1383, file: !1383, line: 640, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!189, !70}
!2086 = !DISubprogram(name: "__sched_cpualloc", scope: !2036, file: !2036, line: 119, type: !2087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!2034, !104}
!2089 = !DISubprogram(name: "sched_getaffinity", scope: !1994, file: !1994, line: 134, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!70, !1997, !104, !2034}
!2092 = !DISubprogram(name: "__sched_cpucount", scope: !2036, file: !2036, line: 117, type: !2093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!70, !104, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2035)
!2097 = !DISubprogram(name: "__sched_cpufree", scope: !2036, file: !2036, line: 120, type: !2098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !2034}
!2100 = distinct !DISubprogram(name: "set_program_name", scope: !459, file: !459, line: 37, type: !1073, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2101)
!2101 = !{!2102, !2103, !2104}
!2102 = !DILocalVariable(name: "argv0", arg: 1, scope: !2100, file: !459, line: 37, type: !107)
!2103 = !DILocalVariable(name: "slash", scope: !2100, file: !459, line: 44, type: !107)
!2104 = !DILocalVariable(name: "base", scope: !2100, file: !459, line: 45, type: !107)
!2105 = !DILocation(line: 0, scope: !2100)
!2106 = !DILocation(line: 44, column: 23, scope: !2100)
!2107 = !DILocation(line: 45, column: 22, scope: !2100)
!2108 = !DILocation(line: 46, column: 17, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2100, file: !459, line: 46, column: 7)
!2110 = !DILocation(line: 46, column: 9, scope: !2109)
!2111 = !DILocation(line: 46, column: 25, scope: !2109)
!2112 = !DILocation(line: 46, column: 40, scope: !2109)
!2113 = !DILocalVariable(name: "__s1", arg: 1, scope: !2114, file: !1135, line: 974, type: !1267)
!2114 = distinct !DISubprogram(name: "memeq", scope: !1135, file: !1135, line: 974, type: !2115, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!148, !1267, !1267, !104}
!2117 = !{!2113, !2118, !2119}
!2118 = !DILocalVariable(name: "__s2", arg: 2, scope: !2114, file: !1135, line: 974, type: !1267)
!2119 = !DILocalVariable(name: "__n", arg: 3, scope: !2114, file: !1135, line: 974, type: !104)
!2120 = !DILocation(line: 0, scope: !2114, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 46, column: 28, scope: !2109)
!2122 = !DILocation(line: 976, column: 11, scope: !2114, inlinedAt: !2121)
!2123 = !DILocation(line: 976, column: 10, scope: !2114, inlinedAt: !2121)
!2124 = !DILocation(line: 46, column: 7, scope: !2100)
!2125 = !DILocation(line: 49, column: 11, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !459, line: 49, column: 11)
!2127 = distinct !DILexicalBlock(scope: !2109, file: !459, line: 47, column: 5)
!2128 = !DILocation(line: 49, column: 36, scope: !2126)
!2129 = !DILocation(line: 49, column: 11, scope: !2127)
!2130 = !DILocation(line: 65, column: 16, scope: !2100)
!2131 = !DILocation(line: 71, column: 27, scope: !2100)
!2132 = !DILocation(line: 74, column: 33, scope: !2100)
!2133 = !DILocation(line: 76, column: 1, scope: !2100)
!2134 = !DILocation(line: 0, scope: !468)
!2135 = !DILocation(line: 40, column: 29, scope: !468)
!2136 = !DILocation(line: 41, column: 19, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !468, file: !469, line: 41, column: 7)
!2138 = !DILocation(line: 41, column: 7, scope: !468)
!2139 = !DILocation(line: 47, column: 3, scope: !468)
!2140 = !DILocation(line: 48, column: 3, scope: !468)
!2141 = !DILocation(line: 48, column: 13, scope: !468)
!2142 = !DILocalVariable(name: "ps", arg: 1, scope: !2143, file: !2144, line: 1135, type: !2147)
!2143 = distinct !DISubprogram(name: "mbszero", scope: !2144, file: !2144, line: 1135, type: !2145, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2148)
!2144 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!2148 = !{!2142}
!2149 = !DILocation(line: 0, scope: !2143, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 48, column: 18, scope: !468)
!2151 = !DILocalVariable(name: "__dest", arg: 1, scope: !2152, file: !2153, line: 57, type: !102)
!2152 = distinct !DISubprogram(name: "memset", scope: !2153, file: !2153, line: 57, type: !2154, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2156)
!2153 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!102, !102, !70, !104}
!2156 = !{!2151, !2157, !2158}
!2157 = !DILocalVariable(name: "__ch", arg: 2, scope: !2152, file: !2153, line: 57, type: !70)
!2158 = !DILocalVariable(name: "__len", arg: 3, scope: !2152, file: !2153, line: 57, type: !104)
!2159 = !DILocation(line: 0, scope: !2152, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 1137, column: 3, scope: !2143, inlinedAt: !2150)
!2161 = !DILocation(line: 59, column: 10, scope: !2152, inlinedAt: !2160)
!2162 = !DILocation(line: 49, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !468, file: !469, line: 49, column: 7)
!2164 = !DILocation(line: 49, column: 39, scope: !2163)
!2165 = !DILocation(line: 49, column: 44, scope: !2163)
!2166 = !DILocation(line: 54, column: 1, scope: !468)
!2167 = !DISubprogram(name: "mbrtoc32", scope: !480, file: !480, line: 57, type: !2168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!104, !2170, !1113, !104, !2172}
!2170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2171)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2147)
!2173 = distinct !DISubprogram(name: "clone_quoting_options", scope: !499, file: !499, line: 113, type: !2174, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2177)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!2176, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!2177 = !{!2178, !2179, !2180}
!2178 = !DILocalVariable(name: "o", arg: 1, scope: !2173, file: !499, line: 113, type: !2176)
!2179 = !DILocalVariable(name: "saved_errno", scope: !2173, file: !499, line: 115, type: !70)
!2180 = !DILocalVariable(name: "p", scope: !2173, file: !499, line: 116, type: !2176)
!2181 = !DILocation(line: 0, scope: !2173)
!2182 = !DILocation(line: 115, column: 21, scope: !2173)
!2183 = !DILocation(line: 116, column: 40, scope: !2173)
!2184 = !DILocation(line: 116, column: 31, scope: !2173)
!2185 = !DILocation(line: 118, column: 9, scope: !2173)
!2186 = !DILocation(line: 119, column: 3, scope: !2173)
!2187 = distinct !DISubprogram(name: "get_quoting_style", scope: !499, file: !499, line: 124, type: !2188, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2192)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!522, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!2192 = !{!2193}
!2193 = !DILocalVariable(name: "o", arg: 1, scope: !2187, file: !499, line: 124, type: !2190)
!2194 = !DILocation(line: 0, scope: !2187)
!2195 = !DILocation(line: 126, column: 11, scope: !2187)
!2196 = !DILocation(line: 126, column: 46, scope: !2187)
!2197 = !{!2198, !1062, i64 0}
!2198 = !{!"quoting_options", !1062, i64 0, !1123, i64 4, !1062, i64 8, !1061, i64 40, !1061, i64 48}
!2199 = !DILocation(line: 126, column: 3, scope: !2187)
!2200 = distinct !DISubprogram(name: "set_quoting_style", scope: !499, file: !499, line: 132, type: !2201, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !2176, !522}
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "o", arg: 1, scope: !2200, file: !499, line: 132, type: !2176)
!2205 = !DILocalVariable(name: "s", arg: 2, scope: !2200, file: !499, line: 132, type: !522)
!2206 = !DILocation(line: 0, scope: !2200)
!2207 = !DILocation(line: 134, column: 4, scope: !2200)
!2208 = !DILocation(line: 134, column: 45, scope: !2200)
!2209 = !DILocation(line: 135, column: 1, scope: !2200)
!2210 = distinct !DISubprogram(name: "set_char_quoting", scope: !499, file: !499, line: 143, type: !2211, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!70, !2176, !4, !70}
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2220, !2221}
!2214 = !DILocalVariable(name: "o", arg: 1, scope: !2210, file: !499, line: 143, type: !2176)
!2215 = !DILocalVariable(name: "c", arg: 2, scope: !2210, file: !499, line: 143, type: !4)
!2216 = !DILocalVariable(name: "i", arg: 3, scope: !2210, file: !499, line: 143, type: !70)
!2217 = !DILocalVariable(name: "uc", scope: !2210, file: !499, line: 145, type: !109)
!2218 = !DILocalVariable(name: "p", scope: !2210, file: !499, line: 146, type: !2219)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!2220 = !DILocalVariable(name: "shift", scope: !2210, file: !499, line: 148, type: !70)
!2221 = !DILocalVariable(name: "r", scope: !2210, file: !499, line: 149, type: !63)
!2222 = !DILocation(line: 0, scope: !2210)
!2223 = !DILocation(line: 147, column: 6, scope: !2210)
!2224 = !DILocation(line: 147, column: 41, scope: !2210)
!2225 = !DILocation(line: 147, column: 62, scope: !2210)
!2226 = !DILocation(line: 147, column: 57, scope: !2210)
!2227 = !DILocation(line: 148, column: 15, scope: !2210)
!2228 = !DILocation(line: 149, column: 21, scope: !2210)
!2229 = !DILocation(line: 149, column: 24, scope: !2210)
!2230 = !DILocation(line: 149, column: 34, scope: !2210)
!2231 = !DILocation(line: 150, column: 19, scope: !2210)
!2232 = !DILocation(line: 150, column: 24, scope: !2210)
!2233 = !DILocation(line: 150, column: 6, scope: !2210)
!2234 = !DILocation(line: 151, column: 3, scope: !2210)
!2235 = distinct !DISubprogram(name: "set_quoting_flags", scope: !499, file: !499, line: 159, type: !2236, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!70, !2176, !70}
!2238 = !{!2239, !2240, !2241}
!2239 = !DILocalVariable(name: "o", arg: 1, scope: !2235, file: !499, line: 159, type: !2176)
!2240 = !DILocalVariable(name: "i", arg: 2, scope: !2235, file: !499, line: 159, type: !70)
!2241 = !DILocalVariable(name: "r", scope: !2235, file: !499, line: 163, type: !70)
!2242 = !DILocation(line: 0, scope: !2235)
!2243 = !DILocation(line: 161, column: 8, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2235, file: !499, line: 161, column: 7)
!2245 = !DILocation(line: 161, column: 7, scope: !2235)
!2246 = !DILocation(line: 163, column: 14, scope: !2235)
!2247 = !{!2198, !1123, i64 4}
!2248 = !DILocation(line: 164, column: 12, scope: !2235)
!2249 = !DILocation(line: 165, column: 3, scope: !2235)
!2250 = distinct !DISubprogram(name: "set_custom_quoting", scope: !499, file: !499, line: 169, type: !2251, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !2176, !107, !107}
!2253 = !{!2254, !2255, !2256}
!2254 = !DILocalVariable(name: "o", arg: 1, scope: !2250, file: !499, line: 169, type: !2176)
!2255 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2250, file: !499, line: 170, type: !107)
!2256 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2250, file: !499, line: 170, type: !107)
!2257 = !DILocation(line: 0, scope: !2250)
!2258 = !DILocation(line: 172, column: 8, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2250, file: !499, line: 172, column: 7)
!2260 = !DILocation(line: 172, column: 7, scope: !2250)
!2261 = !DILocation(line: 174, column: 12, scope: !2250)
!2262 = !DILocation(line: 175, column: 8, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2250, file: !499, line: 175, column: 7)
!2264 = !DILocation(line: 175, column: 19, scope: !2263)
!2265 = !DILocation(line: 176, column: 5, scope: !2263)
!2266 = !DILocation(line: 177, column: 6, scope: !2250)
!2267 = !DILocation(line: 177, column: 17, scope: !2250)
!2268 = !{!2198, !1061, i64 40}
!2269 = !DILocation(line: 178, column: 6, scope: !2250)
!2270 = !DILocation(line: 178, column: 18, scope: !2250)
!2271 = !{!2198, !1061, i64 48}
!2272 = !DILocation(line: 179, column: 1, scope: !2250)
!2273 = !DISubprogram(name: "abort", scope: !1243, file: !1243, line: 598, type: !423, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2274 = distinct !DISubprogram(name: "quotearg_buffer", scope: !499, file: !499, line: 774, type: !2275, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!104, !101, !104, !107, !104, !2190}
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2278 = !DILocalVariable(name: "buffer", arg: 1, scope: !2274, file: !499, line: 774, type: !101)
!2279 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2274, file: !499, line: 774, type: !104)
!2280 = !DILocalVariable(name: "arg", arg: 3, scope: !2274, file: !499, line: 775, type: !107)
!2281 = !DILocalVariable(name: "argsize", arg: 4, scope: !2274, file: !499, line: 775, type: !104)
!2282 = !DILocalVariable(name: "o", arg: 5, scope: !2274, file: !499, line: 776, type: !2190)
!2283 = !DILocalVariable(name: "p", scope: !2274, file: !499, line: 778, type: !2190)
!2284 = !DILocalVariable(name: "saved_errno", scope: !2274, file: !499, line: 779, type: !70)
!2285 = !DILocalVariable(name: "r", scope: !2274, file: !499, line: 780, type: !104)
!2286 = !DILocation(line: 0, scope: !2274)
!2287 = !DILocation(line: 778, column: 37, scope: !2274)
!2288 = !DILocation(line: 779, column: 21, scope: !2274)
!2289 = !DILocation(line: 781, column: 43, scope: !2274)
!2290 = !DILocation(line: 781, column: 53, scope: !2274)
!2291 = !DILocation(line: 781, column: 63, scope: !2274)
!2292 = !DILocation(line: 782, column: 43, scope: !2274)
!2293 = !DILocation(line: 782, column: 58, scope: !2274)
!2294 = !DILocation(line: 780, column: 14, scope: !2274)
!2295 = !DILocation(line: 783, column: 9, scope: !2274)
!2296 = !DILocation(line: 784, column: 3, scope: !2274)
!2297 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !499, file: !499, line: 251, type: !2298, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2302)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!104, !101, !104, !107, !104, !522, !70, !2300, !107, !107}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!2302 = !{!2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2327, !2329, !2332, !2333, !2334, !2335, !2338, !2339, !2342, !2346, !2347, !2355, !2358, !2359, !2361, !2362, !2363, !2364}
!2303 = !DILocalVariable(name: "buffer", arg: 1, scope: !2297, file: !499, line: 251, type: !101)
!2304 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2297, file: !499, line: 251, type: !104)
!2305 = !DILocalVariable(name: "arg", arg: 3, scope: !2297, file: !499, line: 252, type: !107)
!2306 = !DILocalVariable(name: "argsize", arg: 4, scope: !2297, file: !499, line: 252, type: !104)
!2307 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2297, file: !499, line: 253, type: !522)
!2308 = !DILocalVariable(name: "flags", arg: 6, scope: !2297, file: !499, line: 253, type: !70)
!2309 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2297, file: !499, line: 254, type: !2300)
!2310 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2297, file: !499, line: 255, type: !107)
!2311 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2297, file: !499, line: 256, type: !107)
!2312 = !DILocalVariable(name: "unibyte_locale", scope: !2297, file: !499, line: 258, type: !148)
!2313 = !DILocalVariable(name: "len", scope: !2297, file: !499, line: 260, type: !104)
!2314 = !DILocalVariable(name: "orig_buffersize", scope: !2297, file: !499, line: 261, type: !104)
!2315 = !DILocalVariable(name: "quote_string", scope: !2297, file: !499, line: 262, type: !107)
!2316 = !DILocalVariable(name: "quote_string_len", scope: !2297, file: !499, line: 263, type: !104)
!2317 = !DILocalVariable(name: "backslash_escapes", scope: !2297, file: !499, line: 264, type: !148)
!2318 = !DILocalVariable(name: "elide_outer_quotes", scope: !2297, file: !499, line: 265, type: !148)
!2319 = !DILocalVariable(name: "encountered_single_quote", scope: !2297, file: !499, line: 266, type: !148)
!2320 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2297, file: !499, line: 267, type: !148)
!2321 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2297, file: !499, line: 309, type: !148)
!2322 = !DILocalVariable(name: "lq", scope: !2323, file: !499, line: 361, type: !107)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !499, line: 361, column: 11)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !499, line: 360, column: 13)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !499, line: 333, column: 7)
!2326 = distinct !DILexicalBlock(scope: !2297, file: !499, line: 312, column: 5)
!2327 = !DILocalVariable(name: "i", scope: !2328, file: !499, line: 395, type: !104)
!2328 = distinct !DILexicalBlock(scope: !2297, file: !499, line: 395, column: 3)
!2329 = !DILocalVariable(name: "is_right_quote", scope: !2330, file: !499, line: 397, type: !148)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !499, line: 396, column: 5)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !499, line: 395, column: 3)
!2332 = !DILocalVariable(name: "escaping", scope: !2330, file: !499, line: 398, type: !148)
!2333 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2330, file: !499, line: 399, type: !148)
!2334 = !DILocalVariable(name: "c", scope: !2330, file: !499, line: 417, type: !109)
!2335 = !DILocalVariable(name: "m", scope: !2336, file: !499, line: 598, type: !104)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !499, line: 596, column: 11)
!2337 = distinct !DILexicalBlock(scope: !2330, file: !499, line: 419, column: 9)
!2338 = !DILocalVariable(name: "printable", scope: !2336, file: !499, line: 600, type: !148)
!2339 = !DILocalVariable(name: "mbs", scope: !2340, file: !499, line: 609, type: !583)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !499, line: 608, column: 15)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !499, line: 602, column: 17)
!2342 = !DILocalVariable(name: "w", scope: !2343, file: !499, line: 618, type: !479)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !499, line: 617, column: 19)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !499, line: 616, column: 17)
!2345 = distinct !DILexicalBlock(scope: !2340, file: !499, line: 616, column: 17)
!2346 = !DILocalVariable(name: "bytes", scope: !2343, file: !499, line: 619, type: !104)
!2347 = !DILocalVariable(name: "j", scope: !2348, file: !499, line: 648, type: !104)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !499, line: 648, column: 29)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !499, line: 647, column: 27)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !499, line: 645, column: 29)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !499, line: 636, column: 23)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !499, line: 628, column: 30)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !499, line: 623, column: 30)
!2354 = distinct !DILexicalBlock(scope: !2343, file: !499, line: 621, column: 25)
!2355 = !DILocalVariable(name: "ilim", scope: !2356, file: !499, line: 674, type: !104)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !499, line: 671, column: 15)
!2357 = distinct !DILexicalBlock(scope: !2336, file: !499, line: 670, column: 17)
!2358 = !DILabel(scope: !2297, name: "process_input", file: !499, line: 308)
!2359 = !DILabel(scope: !2360, name: "c_and_shell_escape", file: !499, line: 502)
!2360 = distinct !DILexicalBlock(scope: !2337, file: !499, line: 478, column: 9)
!2361 = !DILabel(scope: !2360, name: "c_escape", file: !499, line: 507)
!2362 = !DILabel(scope: !2330, name: "store_escape", file: !499, line: 709)
!2363 = !DILabel(scope: !2330, name: "store_c", file: !499, line: 712)
!2364 = !DILabel(scope: !2297, name: "force_outer_quoting_style", file: !499, line: 753)
!2365 = !DILocation(line: 0, scope: !2297)
!2366 = !DILocation(line: 258, column: 25, scope: !2297)
!2367 = !DILocation(line: 258, column: 36, scope: !2297)
!2368 = !DILocation(line: 267, column: 3, scope: !2297)
!2369 = !DILocation(line: 261, column: 10, scope: !2297)
!2370 = !DILocation(line: 262, column: 15, scope: !2297)
!2371 = !DILocation(line: 263, column: 10, scope: !2297)
!2372 = !DILocation(line: 308, column: 2, scope: !2297)
!2373 = !DILocation(line: 311, column: 3, scope: !2297)
!2374 = !DILocation(line: 318, column: 11, scope: !2326)
!2375 = !DILocation(line: 319, column: 9, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !499, line: 319, column: 9)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !499, line: 319, column: 9)
!2378 = distinct !DILexicalBlock(scope: !2326, file: !499, line: 318, column: 11)
!2379 = !DILocation(line: 319, column: 9, scope: !2377)
!2380 = !DILocation(line: 0, scope: !574, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 357, column: 26, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !499, line: 335, column: 11)
!2383 = distinct !DILexicalBlock(scope: !2325, file: !499, line: 334, column: 13)
!2384 = !DILocation(line: 199, column: 29, scope: !574, inlinedAt: !2381)
!2385 = !DILocation(line: 201, column: 19, scope: !2386, inlinedAt: !2381)
!2386 = distinct !DILexicalBlock(scope: !574, file: !499, line: 201, column: 7)
!2387 = !DILocation(line: 201, column: 7, scope: !574, inlinedAt: !2381)
!2388 = !DILocation(line: 229, column: 3, scope: !574, inlinedAt: !2381)
!2389 = !DILocation(line: 230, column: 3, scope: !574, inlinedAt: !2381)
!2390 = !DILocation(line: 230, column: 13, scope: !574, inlinedAt: !2381)
!2391 = !DILocalVariable(name: "ps", arg: 1, scope: !2392, file: !2144, line: 1135, type: !2395)
!2392 = distinct !DISubprogram(name: "mbszero", scope: !2144, file: !2144, line: 1135, type: !2393, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2396)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2396 = !{!2391}
!2397 = !DILocation(line: 0, scope: !2392, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 230, column: 18, scope: !574, inlinedAt: !2381)
!2399 = !DILocalVariable(name: "__dest", arg: 1, scope: !2400, file: !2153, line: 57, type: !102)
!2400 = distinct !DISubprogram(name: "memset", scope: !2153, file: !2153, line: 57, type: !2154, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2401)
!2401 = !{!2399, !2402, !2403}
!2402 = !DILocalVariable(name: "__ch", arg: 2, scope: !2400, file: !2153, line: 57, type: !70)
!2403 = !DILocalVariable(name: "__len", arg: 3, scope: !2400, file: !2153, line: 57, type: !104)
!2404 = !DILocation(line: 0, scope: !2400, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1137, column: 3, scope: !2392, inlinedAt: !2398)
!2406 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !2405)
!2407 = !DILocation(line: 231, column: 7, scope: !2408, inlinedAt: !2381)
!2408 = distinct !DILexicalBlock(scope: !574, file: !499, line: 231, column: 7)
!2409 = !DILocation(line: 231, column: 40, scope: !2408, inlinedAt: !2381)
!2410 = !DILocation(line: 231, column: 45, scope: !2408, inlinedAt: !2381)
!2411 = !DILocation(line: 235, column: 1, scope: !574, inlinedAt: !2381)
!2412 = !DILocation(line: 0, scope: !574, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 358, column: 27, scope: !2382)
!2414 = !DILocation(line: 199, column: 29, scope: !574, inlinedAt: !2413)
!2415 = !DILocation(line: 201, column: 19, scope: !2386, inlinedAt: !2413)
!2416 = !DILocation(line: 201, column: 7, scope: !574, inlinedAt: !2413)
!2417 = !DILocation(line: 229, column: 3, scope: !574, inlinedAt: !2413)
!2418 = !DILocation(line: 230, column: 3, scope: !574, inlinedAt: !2413)
!2419 = !DILocation(line: 230, column: 13, scope: !574, inlinedAt: !2413)
!2420 = !DILocation(line: 0, scope: !2392, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 230, column: 18, scope: !574, inlinedAt: !2413)
!2422 = !DILocation(line: 0, scope: !2400, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 1137, column: 3, scope: !2392, inlinedAt: !2421)
!2424 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !2423)
!2425 = !DILocation(line: 231, column: 7, scope: !2408, inlinedAt: !2413)
!2426 = !DILocation(line: 231, column: 40, scope: !2408, inlinedAt: !2413)
!2427 = !DILocation(line: 231, column: 45, scope: !2408, inlinedAt: !2413)
!2428 = !DILocation(line: 235, column: 1, scope: !574, inlinedAt: !2413)
!2429 = !DILocation(line: 360, column: 13, scope: !2325)
!2430 = !DILocation(line: 0, scope: !2323)
!2431 = !DILocation(line: 361, column: 45, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2323, file: !499, line: 361, column: 11)
!2433 = !DILocation(line: 361, column: 11, scope: !2323)
!2434 = !DILocation(line: 362, column: 13, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !499, line: 362, column: 13)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !499, line: 362, column: 13)
!2437 = !DILocation(line: 362, column: 13, scope: !2436)
!2438 = !DILocation(line: 361, column: 52, scope: !2432)
!2439 = distinct !{!2439, !2433, !2440, !1169}
!2440 = !DILocation(line: 362, column: 13, scope: !2323)
!2441 = !DILocation(line: 260, column: 10, scope: !2297)
!2442 = !DILocation(line: 365, column: 28, scope: !2325)
!2443 = !DILocation(line: 367, column: 7, scope: !2326)
!2444 = !DILocation(line: 370, column: 7, scope: !2326)
!2445 = !DILocation(line: 376, column: 11, scope: !2326)
!2446 = !DILocation(line: 381, column: 11, scope: !2326)
!2447 = !DILocation(line: 382, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !499, line: 382, column: 9)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !499, line: 382, column: 9)
!2450 = distinct !DILexicalBlock(scope: !2326, file: !499, line: 381, column: 11)
!2451 = !DILocation(line: 382, column: 9, scope: !2449)
!2452 = !DILocation(line: 389, column: 7, scope: !2326)
!2453 = !DILocation(line: 392, column: 7, scope: !2326)
!2454 = !DILocation(line: 0, scope: !2328)
!2455 = !DILocation(line: 395, column: 8, scope: !2328)
!2456 = !DILocation(line: 395, scope: !2328)
!2457 = !DILocation(line: 395, column: 34, scope: !2331)
!2458 = !DILocation(line: 395, column: 26, scope: !2331)
!2459 = !DILocation(line: 395, column: 48, scope: !2331)
!2460 = !DILocation(line: 395, column: 55, scope: !2331)
!2461 = !DILocation(line: 395, column: 3, scope: !2328)
!2462 = !DILocation(line: 395, column: 67, scope: !2331)
!2463 = !DILocation(line: 0, scope: !2330)
!2464 = !DILocation(line: 402, column: 11, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2330, file: !499, line: 401, column: 11)
!2466 = !DILocation(line: 404, column: 17, scope: !2465)
!2467 = !DILocation(line: 405, column: 39, scope: !2465)
!2468 = !DILocation(line: 409, column: 32, scope: !2465)
!2469 = !DILocation(line: 405, column: 19, scope: !2465)
!2470 = !DILocation(line: 405, column: 15, scope: !2465)
!2471 = !DILocation(line: 410, column: 11, scope: !2465)
!2472 = !DILocation(line: 410, column: 25, scope: !2465)
!2473 = !DILocalVariable(name: "__s1", arg: 1, scope: !2474, file: !1135, line: 974, type: !1267)
!2474 = distinct !DISubprogram(name: "memeq", scope: !1135, file: !1135, line: 974, type: !2115, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2475)
!2475 = !{!2473, !2476, !2477}
!2476 = !DILocalVariable(name: "__s2", arg: 2, scope: !2474, file: !1135, line: 974, type: !1267)
!2477 = !DILocalVariable(name: "__n", arg: 3, scope: !2474, file: !1135, line: 974, type: !104)
!2478 = !DILocation(line: 0, scope: !2474, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 410, column: 14, scope: !2465)
!2480 = !DILocation(line: 976, column: 11, scope: !2474, inlinedAt: !2479)
!2481 = !DILocation(line: 976, column: 10, scope: !2474, inlinedAt: !2479)
!2482 = !DILocation(line: 401, column: 11, scope: !2330)
!2483 = !DILocation(line: 417, column: 25, scope: !2330)
!2484 = !DILocation(line: 418, column: 7, scope: !2330)
!2485 = !DILocation(line: 421, column: 15, scope: !2337)
!2486 = !DILocation(line: 423, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !499, line: 423, column: 15)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !499, line: 422, column: 13)
!2489 = distinct !DILexicalBlock(scope: !2337, file: !499, line: 421, column: 15)
!2490 = !DILocation(line: 423, column: 15, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2487, file: !499, line: 423, column: 15)
!2492 = !DILocation(line: 423, column: 15, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !499, line: 423, column: 15)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !499, line: 423, column: 15)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !499, line: 423, column: 15)
!2496 = !DILocation(line: 423, column: 15, scope: !2494)
!2497 = !DILocation(line: 423, column: 15, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !499, line: 423, column: 15)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !499, line: 423, column: 15)
!2500 = !DILocation(line: 423, column: 15, scope: !2499)
!2501 = !DILocation(line: 423, column: 15, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !499, line: 423, column: 15)
!2503 = distinct !DILexicalBlock(scope: !2495, file: !499, line: 423, column: 15)
!2504 = !DILocation(line: 423, column: 15, scope: !2503)
!2505 = !DILocation(line: 423, column: 15, scope: !2495)
!2506 = !DILocation(line: 423, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !499, line: 423, column: 15)
!2508 = distinct !DILexicalBlock(scope: !2487, file: !499, line: 423, column: 15)
!2509 = !DILocation(line: 423, column: 15, scope: !2508)
!2510 = !DILocation(line: 431, column: 19, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2488, file: !499, line: 430, column: 19)
!2512 = !DILocation(line: 431, column: 24, scope: !2511)
!2513 = !DILocation(line: 431, column: 28, scope: !2511)
!2514 = !DILocation(line: 431, column: 38, scope: !2511)
!2515 = !DILocation(line: 431, column: 48, scope: !2511)
!2516 = !DILocation(line: 431, column: 59, scope: !2511)
!2517 = !DILocation(line: 433, column: 19, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !499, line: 433, column: 19)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !499, line: 433, column: 19)
!2520 = distinct !DILexicalBlock(scope: !2511, file: !499, line: 432, column: 17)
!2521 = !DILocation(line: 433, column: 19, scope: !2519)
!2522 = !DILocation(line: 434, column: 19, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !499, line: 434, column: 19)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !499, line: 434, column: 19)
!2525 = !DILocation(line: 434, column: 19, scope: !2524)
!2526 = !DILocation(line: 435, column: 17, scope: !2520)
!2527 = !DILocation(line: 442, column: 20, scope: !2489)
!2528 = !DILocation(line: 447, column: 11, scope: !2337)
!2529 = !DILocation(line: 450, column: 19, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2337, file: !499, line: 448, column: 13)
!2531 = !DILocation(line: 456, column: 19, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2530, file: !499, line: 455, column: 19)
!2533 = !DILocation(line: 456, column: 24, scope: !2532)
!2534 = !DILocation(line: 456, column: 28, scope: !2532)
!2535 = !DILocation(line: 456, column: 38, scope: !2532)
!2536 = !DILocation(line: 456, column: 47, scope: !2532)
!2537 = !DILocation(line: 456, column: 41, scope: !2532)
!2538 = !DILocation(line: 456, column: 52, scope: !2532)
!2539 = !DILocation(line: 455, column: 19, scope: !2530)
!2540 = !DILocation(line: 457, column: 25, scope: !2532)
!2541 = !DILocation(line: 457, column: 17, scope: !2532)
!2542 = !DILocation(line: 464, column: 25, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2532, file: !499, line: 458, column: 19)
!2544 = !DILocation(line: 468, column: 21, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !499, line: 468, column: 21)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !499, line: 468, column: 21)
!2547 = !DILocation(line: 468, column: 21, scope: !2546)
!2548 = !DILocation(line: 469, column: 21, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !499, line: 469, column: 21)
!2550 = distinct !DILexicalBlock(scope: !2543, file: !499, line: 469, column: 21)
!2551 = !DILocation(line: 469, column: 21, scope: !2550)
!2552 = !DILocation(line: 470, column: 21, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !499, line: 470, column: 21)
!2554 = distinct !DILexicalBlock(scope: !2543, file: !499, line: 470, column: 21)
!2555 = !DILocation(line: 470, column: 21, scope: !2554)
!2556 = !DILocation(line: 471, column: 21, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !499, line: 471, column: 21)
!2558 = distinct !DILexicalBlock(scope: !2543, file: !499, line: 471, column: 21)
!2559 = !DILocation(line: 471, column: 21, scope: !2558)
!2560 = !DILocation(line: 472, column: 21, scope: !2543)
!2561 = !DILocation(line: 482, column: 33, scope: !2360)
!2562 = !DILocation(line: 483, column: 33, scope: !2360)
!2563 = !DILocation(line: 485, column: 33, scope: !2360)
!2564 = !DILocation(line: 486, column: 33, scope: !2360)
!2565 = !DILocation(line: 487, column: 33, scope: !2360)
!2566 = !DILocation(line: 490, column: 17, scope: !2360)
!2567 = !DILocation(line: 492, column: 21, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !499, line: 491, column: 15)
!2569 = distinct !DILexicalBlock(scope: !2360, file: !499, line: 490, column: 17)
!2570 = !DILocation(line: 499, column: 35, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2360, file: !499, line: 499, column: 17)
!2572 = !DILocation(line: 0, scope: !2360)
!2573 = !DILocation(line: 502, column: 11, scope: !2360)
!2574 = !DILocation(line: 504, column: 17, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2360, file: !499, line: 503, column: 17)
!2576 = !DILocation(line: 507, column: 11, scope: !2360)
!2577 = !DILocation(line: 508, column: 17, scope: !2360)
!2578 = !DILocation(line: 517, column: 15, scope: !2337)
!2579 = !DILocation(line: 517, column: 40, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2337, file: !499, line: 517, column: 15)
!2581 = !DILocation(line: 517, column: 47, scope: !2580)
!2582 = !DILocation(line: 517, column: 18, scope: !2580)
!2583 = !DILocation(line: 521, column: 17, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2337, file: !499, line: 521, column: 15)
!2585 = !DILocation(line: 521, column: 15, scope: !2337)
!2586 = !DILocation(line: 525, column: 11, scope: !2337)
!2587 = !DILocation(line: 537, column: 15, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2337, file: !499, line: 536, column: 15)
!2589 = !DILocation(line: 536, column: 15, scope: !2337)
!2590 = !DILocation(line: 544, column: 15, scope: !2337)
!2591 = !DILocation(line: 546, column: 19, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !499, line: 545, column: 13)
!2593 = distinct !DILexicalBlock(scope: !2337, file: !499, line: 544, column: 15)
!2594 = !DILocation(line: 549, column: 19, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !499, line: 549, column: 19)
!2596 = !DILocation(line: 549, column: 30, scope: !2595)
!2597 = !DILocation(line: 558, column: 15, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !499, line: 558, column: 15)
!2599 = distinct !DILexicalBlock(scope: !2592, file: !499, line: 558, column: 15)
!2600 = !DILocation(line: 558, column: 15, scope: !2599)
!2601 = !DILocation(line: 559, column: 15, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !499, line: 559, column: 15)
!2603 = distinct !DILexicalBlock(scope: !2592, file: !499, line: 559, column: 15)
!2604 = !DILocation(line: 559, column: 15, scope: !2603)
!2605 = !DILocation(line: 560, column: 15, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !499, line: 560, column: 15)
!2607 = distinct !DILexicalBlock(scope: !2592, file: !499, line: 560, column: 15)
!2608 = !DILocation(line: 560, column: 15, scope: !2607)
!2609 = !DILocation(line: 562, column: 13, scope: !2592)
!2610 = !DILocation(line: 602, column: 17, scope: !2336)
!2611 = !DILocation(line: 0, scope: !2336)
!2612 = !DILocation(line: 605, column: 29, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2341, file: !499, line: 603, column: 15)
!2614 = !DILocation(line: 605, column: 41, scope: !2613)
!2615 = !DILocation(line: 606, column: 15, scope: !2613)
!2616 = !DILocation(line: 609, column: 17, scope: !2340)
!2617 = !DILocation(line: 609, column: 27, scope: !2340)
!2618 = !DILocation(line: 0, scope: !2392, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 609, column: 32, scope: !2340)
!2620 = !DILocation(line: 0, scope: !2400, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1137, column: 3, scope: !2392, inlinedAt: !2619)
!2622 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !2621)
!2623 = !DILocation(line: 613, column: 29, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2340, file: !499, line: 613, column: 21)
!2625 = !DILocation(line: 613, column: 21, scope: !2340)
!2626 = !DILocation(line: 614, column: 29, scope: !2624)
!2627 = !DILocation(line: 614, column: 19, scope: !2624)
!2628 = !DILocation(line: 618, column: 21, scope: !2343)
!2629 = !DILocation(line: 620, column: 54, scope: !2343)
!2630 = !DILocation(line: 0, scope: !2343)
!2631 = !DILocation(line: 619, column: 36, scope: !2343)
!2632 = !DILocation(line: 621, column: 25, scope: !2343)
!2633 = !DILocation(line: 631, column: 38, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2352, file: !499, line: 629, column: 23)
!2635 = !DILocation(line: 631, column: 48, scope: !2634)
!2636 = !DILocation(line: 626, column: 25, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2353, file: !499, line: 624, column: 23)
!2638 = !DILocation(line: 631, column: 51, scope: !2634)
!2639 = !DILocation(line: 631, column: 25, scope: !2634)
!2640 = !DILocation(line: 632, column: 28, scope: !2634)
!2641 = !DILocation(line: 631, column: 34, scope: !2634)
!2642 = distinct !{!2642, !2639, !2640, !1169}
!2643 = !DILocation(line: 646, column: 29, scope: !2350)
!2644 = !DILocation(line: 0, scope: !2348)
!2645 = !DILocation(line: 649, column: 49, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2348, file: !499, line: 648, column: 29)
!2647 = !DILocation(line: 649, column: 39, scope: !2646)
!2648 = !DILocation(line: 649, column: 31, scope: !2646)
!2649 = !DILocation(line: 648, column: 60, scope: !2646)
!2650 = !DILocation(line: 648, column: 50, scope: !2646)
!2651 = !DILocation(line: 648, column: 29, scope: !2348)
!2652 = distinct !{!2652, !2651, !2653, !1169}
!2653 = !DILocation(line: 654, column: 33, scope: !2348)
!2654 = !DILocation(line: 657, column: 43, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2351, file: !499, line: 657, column: 29)
!2656 = !DILocalVariable(name: "wc", arg: 1, scope: !2657, file: !2658, line: 865, type: !2661)
!2657 = distinct !DISubprogram(name: "c32isprint", scope: !2658, file: !2658, line: 865, type: !2659, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2663)
!2658 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!70, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2662, line: 20, baseType: !63)
!2662 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2663 = !{!2656}
!2664 = !DILocation(line: 0, scope: !2657, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 657, column: 31, scope: !2655)
!2666 = !DILocation(line: 871, column: 10, scope: !2657, inlinedAt: !2665)
!2667 = !DILocation(line: 657, column: 31, scope: !2655)
!2668 = !DILocation(line: 664, column: 23, scope: !2343)
!2669 = !DILocation(line: 665, column: 19, scope: !2344)
!2670 = !DILocation(line: 666, column: 15, scope: !2341)
!2671 = !DILocation(line: 753, column: 2, scope: !2297)
!2672 = !DILocation(line: 756, column: 51, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2297, file: !499, line: 756, column: 7)
!2674 = !DILocation(line: 0, scope: !2341)
!2675 = !DILocation(line: 670, column: 19, scope: !2357)
!2676 = !DILocation(line: 670, column: 23, scope: !2357)
!2677 = !DILocation(line: 674, column: 33, scope: !2356)
!2678 = !DILocation(line: 0, scope: !2356)
!2679 = !DILocation(line: 676, column: 17, scope: !2356)
!2680 = !DILocation(line: 398, column: 12, scope: !2330)
!2681 = !DILocation(line: 678, column: 43, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !499, line: 678, column: 25)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !499, line: 677, column: 19)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !499, line: 676, column: 17)
!2685 = distinct !DILexicalBlock(scope: !2356, file: !499, line: 676, column: 17)
!2686 = !DILocation(line: 680, column: 25, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !499, line: 680, column: 25)
!2688 = distinct !DILexicalBlock(scope: !2682, file: !499, line: 679, column: 23)
!2689 = !DILocation(line: 680, column: 25, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !499, line: 680, column: 25)
!2691 = !DILocation(line: 680, column: 25, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !499, line: 680, column: 25)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !499, line: 680, column: 25)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !499, line: 680, column: 25)
!2695 = !DILocation(line: 680, column: 25, scope: !2693)
!2696 = !DILocation(line: 680, column: 25, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !499, line: 680, column: 25)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !499, line: 680, column: 25)
!2699 = !DILocation(line: 680, column: 25, scope: !2698)
!2700 = !DILocation(line: 680, column: 25, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !499, line: 680, column: 25)
!2702 = distinct !DILexicalBlock(scope: !2694, file: !499, line: 680, column: 25)
!2703 = !DILocation(line: 680, column: 25, scope: !2702)
!2704 = !DILocation(line: 680, column: 25, scope: !2694)
!2705 = !DILocation(line: 680, column: 25, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !499, line: 680, column: 25)
!2707 = distinct !DILexicalBlock(scope: !2687, file: !499, line: 680, column: 25)
!2708 = !DILocation(line: 680, column: 25, scope: !2707)
!2709 = !DILocation(line: 681, column: 25, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !499, line: 681, column: 25)
!2711 = distinct !DILexicalBlock(scope: !2688, file: !499, line: 681, column: 25)
!2712 = !DILocation(line: 681, column: 25, scope: !2711)
!2713 = !DILocation(line: 682, column: 25, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !499, line: 682, column: 25)
!2715 = distinct !DILexicalBlock(scope: !2688, file: !499, line: 682, column: 25)
!2716 = !DILocation(line: 682, column: 25, scope: !2715)
!2717 = !DILocation(line: 683, column: 38, scope: !2688)
!2718 = !DILocation(line: 683, column: 33, scope: !2688)
!2719 = !DILocation(line: 684, column: 23, scope: !2688)
!2720 = !DILocation(line: 685, column: 30, scope: !2682)
!2721 = !DILocation(line: 687, column: 25, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !499, line: 687, column: 25)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !499, line: 687, column: 25)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !499, line: 686, column: 23)
!2725 = distinct !DILexicalBlock(scope: !2682, file: !499, line: 685, column: 30)
!2726 = !DILocation(line: 687, column: 25, scope: !2723)
!2727 = !DILocation(line: 689, column: 23, scope: !2724)
!2728 = !DILocation(line: 690, column: 35, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2683, file: !499, line: 690, column: 25)
!2730 = !DILocation(line: 690, column: 30, scope: !2729)
!2731 = !DILocation(line: 690, column: 25, scope: !2683)
!2732 = !DILocation(line: 692, column: 21, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !499, line: 692, column: 21)
!2734 = distinct !DILexicalBlock(scope: !2683, file: !499, line: 692, column: 21)
!2735 = !DILocation(line: 692, column: 21, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !499, line: 692, column: 21)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !499, line: 692, column: 21)
!2738 = distinct !DILexicalBlock(scope: !2733, file: !499, line: 692, column: 21)
!2739 = !DILocation(line: 692, column: 21, scope: !2737)
!2740 = !DILocation(line: 692, column: 21, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !499, line: 692, column: 21)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !499, line: 692, column: 21)
!2743 = !DILocation(line: 692, column: 21, scope: !2742)
!2744 = !DILocation(line: 692, column: 21, scope: !2738)
!2745 = !DILocation(line: 0, scope: !2683)
!2746 = !DILocation(line: 693, column: 21, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !499, line: 693, column: 21)
!2748 = distinct !DILexicalBlock(scope: !2683, file: !499, line: 693, column: 21)
!2749 = !DILocation(line: 693, column: 21, scope: !2748)
!2750 = !DILocation(line: 694, column: 25, scope: !2683)
!2751 = !DILocation(line: 676, column: 17, scope: !2684)
!2752 = distinct !{!2752, !2753, !2754}
!2753 = !DILocation(line: 676, column: 17, scope: !2685)
!2754 = !DILocation(line: 695, column: 19, scope: !2685)
!2755 = !DILocation(line: 409, column: 30, scope: !2465)
!2756 = !DILocation(line: 702, column: 34, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2330, file: !499, line: 702, column: 11)
!2758 = !DILocation(line: 704, column: 14, scope: !2757)
!2759 = !DILocation(line: 705, column: 14, scope: !2757)
!2760 = !DILocation(line: 705, column: 35, scope: !2757)
!2761 = !DILocation(line: 705, column: 17, scope: !2757)
!2762 = !DILocation(line: 705, column: 47, scope: !2757)
!2763 = !DILocation(line: 705, column: 65, scope: !2757)
!2764 = !DILocation(line: 706, column: 11, scope: !2757)
!2765 = !DILocation(line: 702, column: 11, scope: !2330)
!2766 = !DILocation(line: 395, column: 15, scope: !2328)
!2767 = !DILocation(line: 709, column: 5, scope: !2330)
!2768 = !DILocation(line: 710, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2330, file: !499, line: 710, column: 7)
!2770 = !DILocation(line: 710, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2769, file: !499, line: 710, column: 7)
!2772 = !DILocation(line: 710, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !499, line: 710, column: 7)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !499, line: 710, column: 7)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !499, line: 710, column: 7)
!2776 = !DILocation(line: 710, column: 7, scope: !2774)
!2777 = !DILocation(line: 710, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !499, line: 710, column: 7)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !499, line: 710, column: 7)
!2780 = !DILocation(line: 710, column: 7, scope: !2779)
!2781 = !DILocation(line: 710, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !499, line: 710, column: 7)
!2783 = distinct !DILexicalBlock(scope: !2775, file: !499, line: 710, column: 7)
!2784 = !DILocation(line: 710, column: 7, scope: !2783)
!2785 = !DILocation(line: 710, column: 7, scope: !2775)
!2786 = !DILocation(line: 710, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !499, line: 710, column: 7)
!2788 = distinct !DILexicalBlock(scope: !2769, file: !499, line: 710, column: 7)
!2789 = !DILocation(line: 710, column: 7, scope: !2788)
!2790 = !DILocation(line: 712, column: 5, scope: !2330)
!2791 = !DILocation(line: 713, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !499, line: 713, column: 7)
!2793 = distinct !DILexicalBlock(scope: !2330, file: !499, line: 713, column: 7)
!2794 = !DILocation(line: 417, column: 21, scope: !2330)
!2795 = !DILocation(line: 713, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !499, line: 713, column: 7)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !499, line: 713, column: 7)
!2798 = distinct !DILexicalBlock(scope: !2792, file: !499, line: 713, column: 7)
!2799 = !DILocation(line: 713, column: 7, scope: !2797)
!2800 = !DILocation(line: 713, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !499, line: 713, column: 7)
!2802 = distinct !DILexicalBlock(scope: !2798, file: !499, line: 713, column: 7)
!2803 = !DILocation(line: 713, column: 7, scope: !2802)
!2804 = !DILocation(line: 713, column: 7, scope: !2798)
!2805 = !DILocation(line: 714, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !499, line: 714, column: 7)
!2807 = distinct !DILexicalBlock(scope: !2330, file: !499, line: 714, column: 7)
!2808 = !DILocation(line: 714, column: 7, scope: !2807)
!2809 = !DILocation(line: 716, column: 11, scope: !2330)
!2810 = !DILocation(line: 718, column: 5, scope: !2331)
!2811 = !DILocation(line: 395, column: 82, scope: !2331)
!2812 = !DILocation(line: 395, column: 3, scope: !2331)
!2813 = distinct !{!2813, !2461, !2814, !1169}
!2814 = !DILocation(line: 718, column: 5, scope: !2328)
!2815 = !DILocation(line: 720, column: 11, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2297, file: !499, line: 720, column: 7)
!2817 = !DILocation(line: 720, column: 16, scope: !2816)
!2818 = !DILocation(line: 728, column: 51, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2297, file: !499, line: 728, column: 7)
!2820 = !DILocation(line: 731, column: 11, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2819, file: !499, line: 730, column: 5)
!2822 = !DILocation(line: 732, column: 16, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2821, file: !499, line: 731, column: 11)
!2824 = !DILocation(line: 732, column: 9, scope: !2823)
!2825 = !DILocation(line: 736, column: 18, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2823, file: !499, line: 736, column: 16)
!2827 = !DILocation(line: 736, column: 29, scope: !2826)
!2828 = !DILocation(line: 745, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2297, file: !499, line: 745, column: 7)
!2830 = !DILocation(line: 745, column: 20, scope: !2829)
!2831 = !DILocation(line: 746, column: 12, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !499, line: 746, column: 5)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !499, line: 746, column: 5)
!2834 = !DILocation(line: 746, column: 5, scope: !2833)
!2835 = !DILocation(line: 747, column: 7, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !499, line: 747, column: 7)
!2837 = distinct !DILexicalBlock(scope: !2832, file: !499, line: 747, column: 7)
!2838 = !DILocation(line: 747, column: 7, scope: !2837)
!2839 = !DILocation(line: 746, column: 39, scope: !2832)
!2840 = distinct !{!2840, !2834, !2841, !1169}
!2841 = !DILocation(line: 747, column: 7, scope: !2833)
!2842 = !DILocation(line: 749, column: 11, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2297, file: !499, line: 749, column: 7)
!2844 = !DILocation(line: 749, column: 7, scope: !2297)
!2845 = !DILocation(line: 750, column: 5, scope: !2843)
!2846 = !DILocation(line: 750, column: 17, scope: !2843)
!2847 = !DILocation(line: 756, column: 21, scope: !2673)
!2848 = !DILocation(line: 760, column: 42, scope: !2297)
!2849 = !DILocation(line: 758, column: 10, scope: !2297)
!2850 = !DILocation(line: 758, column: 3, scope: !2297)
!2851 = !DILocation(line: 762, column: 1, scope: !2297)
!2852 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1243, file: !1243, line: 98, type: !2853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!104}
!2855 = !DISubprogram(name: "strlen", scope: !1239, file: !1239, line: 407, type: !1634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2856 = !DISubprogram(name: "iswprint", scope: !2857, file: !2857, line: 120, type: !2659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!2857 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2858 = distinct !DISubprogram(name: "quotearg_alloc", scope: !499, file: !499, line: 788, type: !2859, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!101, !107, !104, !2190}
!2861 = !{!2862, !2863, !2864}
!2862 = !DILocalVariable(name: "arg", arg: 1, scope: !2858, file: !499, line: 788, type: !107)
!2863 = !DILocalVariable(name: "argsize", arg: 2, scope: !2858, file: !499, line: 788, type: !104)
!2864 = !DILocalVariable(name: "o", arg: 3, scope: !2858, file: !499, line: 789, type: !2190)
!2865 = !DILocation(line: 0, scope: !2858)
!2866 = !DILocalVariable(name: "arg", arg: 1, scope: !2867, file: !499, line: 801, type: !107)
!2867 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !499, file: !499, line: 801, type: !2868, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!101, !107, !104, !974, !2190}
!2870 = !{!2866, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878}
!2871 = !DILocalVariable(name: "argsize", arg: 2, scope: !2867, file: !499, line: 801, type: !104)
!2872 = !DILocalVariable(name: "size", arg: 3, scope: !2867, file: !499, line: 801, type: !974)
!2873 = !DILocalVariable(name: "o", arg: 4, scope: !2867, file: !499, line: 802, type: !2190)
!2874 = !DILocalVariable(name: "p", scope: !2867, file: !499, line: 804, type: !2190)
!2875 = !DILocalVariable(name: "saved_errno", scope: !2867, file: !499, line: 805, type: !70)
!2876 = !DILocalVariable(name: "flags", scope: !2867, file: !499, line: 807, type: !70)
!2877 = !DILocalVariable(name: "bufsize", scope: !2867, file: !499, line: 808, type: !104)
!2878 = !DILocalVariable(name: "buf", scope: !2867, file: !499, line: 812, type: !101)
!2879 = !DILocation(line: 0, scope: !2867, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 791, column: 10, scope: !2858)
!2881 = !DILocation(line: 804, column: 37, scope: !2867, inlinedAt: !2880)
!2882 = !DILocation(line: 805, column: 21, scope: !2867, inlinedAt: !2880)
!2883 = !DILocation(line: 807, column: 18, scope: !2867, inlinedAt: !2880)
!2884 = !DILocation(line: 807, column: 24, scope: !2867, inlinedAt: !2880)
!2885 = !DILocation(line: 808, column: 72, scope: !2867, inlinedAt: !2880)
!2886 = !DILocation(line: 809, column: 56, scope: !2867, inlinedAt: !2880)
!2887 = !DILocation(line: 810, column: 49, scope: !2867, inlinedAt: !2880)
!2888 = !DILocation(line: 811, column: 49, scope: !2867, inlinedAt: !2880)
!2889 = !DILocation(line: 808, column: 20, scope: !2867, inlinedAt: !2880)
!2890 = !DILocation(line: 811, column: 62, scope: !2867, inlinedAt: !2880)
!2891 = !DILocation(line: 812, column: 15, scope: !2867, inlinedAt: !2880)
!2892 = !DILocation(line: 813, column: 60, scope: !2867, inlinedAt: !2880)
!2893 = !DILocation(line: 815, column: 32, scope: !2867, inlinedAt: !2880)
!2894 = !DILocation(line: 815, column: 47, scope: !2867, inlinedAt: !2880)
!2895 = !DILocation(line: 813, column: 3, scope: !2867, inlinedAt: !2880)
!2896 = !DILocation(line: 816, column: 9, scope: !2867, inlinedAt: !2880)
!2897 = !DILocation(line: 791, column: 3, scope: !2858)
!2898 = !DILocation(line: 0, scope: !2867)
!2899 = !DILocation(line: 804, column: 37, scope: !2867)
!2900 = !DILocation(line: 805, column: 21, scope: !2867)
!2901 = !DILocation(line: 807, column: 18, scope: !2867)
!2902 = !DILocation(line: 807, column: 27, scope: !2867)
!2903 = !DILocation(line: 807, column: 24, scope: !2867)
!2904 = !DILocation(line: 808, column: 72, scope: !2867)
!2905 = !DILocation(line: 809, column: 56, scope: !2867)
!2906 = !DILocation(line: 810, column: 49, scope: !2867)
!2907 = !DILocation(line: 811, column: 49, scope: !2867)
!2908 = !DILocation(line: 808, column: 20, scope: !2867)
!2909 = !DILocation(line: 811, column: 62, scope: !2867)
!2910 = !DILocation(line: 812, column: 15, scope: !2867)
!2911 = !DILocation(line: 813, column: 60, scope: !2867)
!2912 = !DILocation(line: 815, column: 32, scope: !2867)
!2913 = !DILocation(line: 815, column: 47, scope: !2867)
!2914 = !DILocation(line: 813, column: 3, scope: !2867)
!2915 = !DILocation(line: 816, column: 9, scope: !2867)
!2916 = !DILocation(line: 817, column: 7, scope: !2867)
!2917 = !DILocation(line: 818, column: 11, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2867, file: !499, line: 817, column: 7)
!2919 = !DILocation(line: 818, column: 5, scope: !2918)
!2920 = !DILocation(line: 819, column: 3, scope: !2867)
!2921 = distinct !DISubprogram(name: "quotearg_free", scope: !499, file: !499, line: 837, type: !423, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2922)
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "sv", scope: !2921, file: !499, line: 839, type: !597)
!2924 = !DILocalVariable(name: "i", scope: !2925, file: !499, line: 840, type: !70)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !499, line: 840, column: 3)
!2926 = !DILocation(line: 839, column: 24, scope: !2921)
!2927 = !DILocation(line: 0, scope: !2921)
!2928 = !DILocation(line: 0, scope: !2925)
!2929 = !DILocation(line: 840, column: 21, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2925, file: !499, line: 840, column: 3)
!2931 = !DILocation(line: 840, column: 3, scope: !2925)
!2932 = !DILocation(line: 842, column: 13, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2921, file: !499, line: 842, column: 7)
!2934 = !{!2935, !1061, i64 8}
!2935 = !{!"slotvec", !1519, i64 0, !1061, i64 8}
!2936 = !DILocation(line: 842, column: 17, scope: !2933)
!2937 = !DILocation(line: 842, column: 7, scope: !2921)
!2938 = !DILocation(line: 841, column: 17, scope: !2930)
!2939 = !DILocation(line: 841, column: 5, scope: !2930)
!2940 = !DILocation(line: 840, column: 32, scope: !2930)
!2941 = distinct !{!2941, !2931, !2942, !1169}
!2942 = !DILocation(line: 841, column: 20, scope: !2925)
!2943 = !DILocation(line: 844, column: 7, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2933, file: !499, line: 843, column: 5)
!2945 = !DILocation(line: 845, column: 21, scope: !2944)
!2946 = !{!2935, !1519, i64 0}
!2947 = !DILocation(line: 846, column: 20, scope: !2944)
!2948 = !DILocation(line: 847, column: 5, scope: !2944)
!2949 = !DILocation(line: 848, column: 10, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2921, file: !499, line: 848, column: 7)
!2951 = !DILocation(line: 848, column: 7, scope: !2921)
!2952 = !DILocation(line: 850, column: 7, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !499, line: 849, column: 5)
!2954 = !DILocation(line: 851, column: 15, scope: !2953)
!2955 = !DILocation(line: 852, column: 5, scope: !2953)
!2956 = !DILocation(line: 853, column: 10, scope: !2921)
!2957 = !DILocation(line: 854, column: 1, scope: !2921)
!2958 = distinct !DISubprogram(name: "quotearg_n", scope: !499, file: !499, line: 919, type: !1236, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2959)
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "n", arg: 1, scope: !2958, file: !499, line: 919, type: !70)
!2961 = !DILocalVariable(name: "arg", arg: 2, scope: !2958, file: !499, line: 919, type: !107)
!2962 = !DILocation(line: 0, scope: !2958)
!2963 = !DILocation(line: 921, column: 10, scope: !2958)
!2964 = !DILocation(line: 921, column: 3, scope: !2958)
!2965 = distinct !DISubprogram(name: "quotearg_n_options", scope: !499, file: !499, line: 866, type: !2966, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!101, !70, !107, !104, !2190}
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2979, !2980, !2982, !2983, !2984}
!2969 = !DILocalVariable(name: "n", arg: 1, scope: !2965, file: !499, line: 866, type: !70)
!2970 = !DILocalVariable(name: "arg", arg: 2, scope: !2965, file: !499, line: 866, type: !107)
!2971 = !DILocalVariable(name: "argsize", arg: 3, scope: !2965, file: !499, line: 866, type: !104)
!2972 = !DILocalVariable(name: "options", arg: 4, scope: !2965, file: !499, line: 867, type: !2190)
!2973 = !DILocalVariable(name: "saved_errno", scope: !2965, file: !499, line: 869, type: !70)
!2974 = !DILocalVariable(name: "sv", scope: !2965, file: !499, line: 871, type: !597)
!2975 = !DILocalVariable(name: "nslots_max", scope: !2965, file: !499, line: 873, type: !70)
!2976 = !DILocalVariable(name: "preallocated", scope: !2977, file: !499, line: 879, type: !148)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !499, line: 878, column: 5)
!2978 = distinct !DILexicalBlock(scope: !2965, file: !499, line: 877, column: 7)
!2979 = !DILocalVariable(name: "new_nslots", scope: !2977, file: !499, line: 880, type: !987)
!2980 = !DILocalVariable(name: "size", scope: !2981, file: !499, line: 891, type: !104)
!2981 = distinct !DILexicalBlock(scope: !2965, file: !499, line: 890, column: 3)
!2982 = !DILocalVariable(name: "val", scope: !2981, file: !499, line: 892, type: !101)
!2983 = !DILocalVariable(name: "flags", scope: !2981, file: !499, line: 894, type: !70)
!2984 = !DILocalVariable(name: "qsize", scope: !2981, file: !499, line: 895, type: !104)
!2985 = !DILocation(line: 0, scope: !2965)
!2986 = !DILocation(line: 869, column: 21, scope: !2965)
!2987 = !DILocation(line: 871, column: 24, scope: !2965)
!2988 = !DILocation(line: 874, column: 17, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2965, file: !499, line: 874, column: 7)
!2990 = !DILocation(line: 875, column: 5, scope: !2989)
!2991 = !DILocation(line: 877, column: 7, scope: !2978)
!2992 = !DILocation(line: 877, column: 14, scope: !2978)
!2993 = !DILocation(line: 877, column: 7, scope: !2965)
!2994 = !DILocation(line: 879, column: 31, scope: !2977)
!2995 = !DILocation(line: 0, scope: !2977)
!2996 = !DILocation(line: 880, column: 7, scope: !2977)
!2997 = !DILocation(line: 880, column: 26, scope: !2977)
!2998 = !DILocation(line: 880, column: 13, scope: !2977)
!2999 = !DILocation(line: 882, column: 31, scope: !2977)
!3000 = !DILocation(line: 883, column: 33, scope: !2977)
!3001 = !DILocation(line: 883, column: 42, scope: !2977)
!3002 = !DILocation(line: 883, column: 31, scope: !2977)
!3003 = !DILocation(line: 882, column: 22, scope: !2977)
!3004 = !DILocation(line: 882, column: 15, scope: !2977)
!3005 = !DILocation(line: 884, column: 11, scope: !2977)
!3006 = !DILocation(line: 885, column: 15, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2977, file: !499, line: 884, column: 11)
!3008 = !{i64 0, i64 8, !1791, i64 8, i64 8, !1060}
!3009 = !DILocation(line: 885, column: 9, scope: !3007)
!3010 = !DILocation(line: 886, column: 20, scope: !2977)
!3011 = !DILocation(line: 886, column: 18, scope: !2977)
!3012 = !DILocation(line: 886, column: 32, scope: !2977)
!3013 = !DILocation(line: 886, column: 43, scope: !2977)
!3014 = !DILocation(line: 886, column: 53, scope: !2977)
!3015 = !DILocation(line: 0, scope: !2400, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 886, column: 7, scope: !2977)
!3017 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !3016)
!3018 = !DILocation(line: 887, column: 16, scope: !2977)
!3019 = !DILocation(line: 887, column: 14, scope: !2977)
!3020 = !DILocation(line: 888, column: 5, scope: !2978)
!3021 = !DILocation(line: 888, column: 5, scope: !2977)
!3022 = !DILocation(line: 891, column: 19, scope: !2981)
!3023 = !DILocation(line: 891, column: 25, scope: !2981)
!3024 = !DILocation(line: 0, scope: !2981)
!3025 = !DILocation(line: 892, column: 23, scope: !2981)
!3026 = !DILocation(line: 894, column: 26, scope: !2981)
!3027 = !DILocation(line: 894, column: 32, scope: !2981)
!3028 = !DILocation(line: 896, column: 55, scope: !2981)
!3029 = !DILocation(line: 897, column: 55, scope: !2981)
!3030 = !DILocation(line: 898, column: 55, scope: !2981)
!3031 = !DILocation(line: 899, column: 55, scope: !2981)
!3032 = !DILocation(line: 895, column: 20, scope: !2981)
!3033 = !DILocation(line: 901, column: 14, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2981, file: !499, line: 901, column: 9)
!3035 = !DILocation(line: 901, column: 9, scope: !2981)
!3036 = !DILocation(line: 903, column: 35, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3034, file: !499, line: 902, column: 7)
!3038 = !DILocation(line: 903, column: 20, scope: !3037)
!3039 = !DILocation(line: 904, column: 17, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !499, line: 904, column: 13)
!3041 = !DILocation(line: 904, column: 13, scope: !3037)
!3042 = !DILocation(line: 905, column: 11, scope: !3040)
!3043 = !DILocation(line: 906, column: 27, scope: !3037)
!3044 = !DILocation(line: 906, column: 19, scope: !3037)
!3045 = !DILocation(line: 907, column: 69, scope: !3037)
!3046 = !DILocation(line: 909, column: 44, scope: !3037)
!3047 = !DILocation(line: 910, column: 44, scope: !3037)
!3048 = !DILocation(line: 907, column: 9, scope: !3037)
!3049 = !DILocation(line: 911, column: 7, scope: !3037)
!3050 = !DILocation(line: 913, column: 11, scope: !2981)
!3051 = !DILocation(line: 914, column: 5, scope: !2981)
!3052 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !499, file: !499, line: 925, type: !3053, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!101, !70, !107, !104}
!3055 = !{!3056, !3057, !3058}
!3056 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !499, line: 925, type: !70)
!3057 = !DILocalVariable(name: "arg", arg: 2, scope: !3052, file: !499, line: 925, type: !107)
!3058 = !DILocalVariable(name: "argsize", arg: 3, scope: !3052, file: !499, line: 925, type: !104)
!3059 = !DILocation(line: 0, scope: !3052)
!3060 = !DILocation(line: 927, column: 10, scope: !3052)
!3061 = !DILocation(line: 927, column: 3, scope: !3052)
!3062 = distinct !DISubprogram(name: "quotearg", scope: !499, file: !499, line: 931, type: !1245, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3063)
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "arg", arg: 1, scope: !3062, file: !499, line: 931, type: !107)
!3065 = !DILocation(line: 0, scope: !3062)
!3066 = !DILocation(line: 0, scope: !2958, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 933, column: 10, scope: !3062)
!3068 = !DILocation(line: 921, column: 10, scope: !2958, inlinedAt: !3067)
!3069 = !DILocation(line: 933, column: 3, scope: !3062)
!3070 = distinct !DISubprogram(name: "quotearg_mem", scope: !499, file: !499, line: 937, type: !3071, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!101, !107, !104}
!3073 = !{!3074, !3075}
!3074 = !DILocalVariable(name: "arg", arg: 1, scope: !3070, file: !499, line: 937, type: !107)
!3075 = !DILocalVariable(name: "argsize", arg: 2, scope: !3070, file: !499, line: 937, type: !104)
!3076 = !DILocation(line: 0, scope: !3070)
!3077 = !DILocation(line: 0, scope: !3052, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 939, column: 10, scope: !3070)
!3079 = !DILocation(line: 927, column: 10, scope: !3052, inlinedAt: !3078)
!3080 = !DILocation(line: 939, column: 3, scope: !3070)
!3081 = distinct !DISubprogram(name: "quotearg_n_style", scope: !499, file: !499, line: 943, type: !3082, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!101, !70, !522, !107}
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DILocalVariable(name: "n", arg: 1, scope: !3081, file: !499, line: 943, type: !70)
!3086 = !DILocalVariable(name: "s", arg: 2, scope: !3081, file: !499, line: 943, type: !522)
!3087 = !DILocalVariable(name: "arg", arg: 3, scope: !3081, file: !499, line: 943, type: !107)
!3088 = !DILocalVariable(name: "o", scope: !3081, file: !499, line: 945, type: !2191)
!3089 = !DILocation(line: 0, scope: !3081)
!3090 = !DILocation(line: 945, column: 3, scope: !3081)
!3091 = !DILocation(line: 945, column: 32, scope: !3081)
!3092 = !{!3093}
!3093 = distinct !{!3093, !3094, !"quoting_options_from_style: argument 0"}
!3094 = distinct !{!3094, !"quoting_options_from_style"}
!3095 = !DILocation(line: 945, column: 36, scope: !3081)
!3096 = !DILocalVariable(name: "style", arg: 1, scope: !3097, file: !499, line: 183, type: !522)
!3097 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !499, file: !499, line: 183, type: !3098, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!549, !522}
!3100 = !{!3096, !3101}
!3101 = !DILocalVariable(name: "o", scope: !3097, file: !499, line: 185, type: !549)
!3102 = !DILocation(line: 0, scope: !3097, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 945, column: 36, scope: !3081)
!3104 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3103)
!3105 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3103)
!3106 = distinct !DILexicalBlock(scope: !3097, file: !499, line: 186, column: 7)
!3107 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3103)
!3108 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3103)
!3109 = !DILocation(line: 188, column: 11, scope: !3097, inlinedAt: !3103)
!3110 = !DILocation(line: 946, column: 10, scope: !3081)
!3111 = !DILocation(line: 947, column: 1, scope: !3081)
!3112 = !DILocation(line: 946, column: 3, scope: !3081)
!3113 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !499, file: !499, line: 950, type: !3114, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!101, !70, !522, !107, !104}
!3116 = !{!3117, !3118, !3119, !3120, !3121}
!3117 = !DILocalVariable(name: "n", arg: 1, scope: !3113, file: !499, line: 950, type: !70)
!3118 = !DILocalVariable(name: "s", arg: 2, scope: !3113, file: !499, line: 950, type: !522)
!3119 = !DILocalVariable(name: "arg", arg: 3, scope: !3113, file: !499, line: 951, type: !107)
!3120 = !DILocalVariable(name: "argsize", arg: 4, scope: !3113, file: !499, line: 951, type: !104)
!3121 = !DILocalVariable(name: "o", scope: !3113, file: !499, line: 953, type: !2191)
!3122 = !DILocation(line: 0, scope: !3113)
!3123 = !DILocation(line: 953, column: 3, scope: !3113)
!3124 = !DILocation(line: 953, column: 32, scope: !3113)
!3125 = !{!3126}
!3126 = distinct !{!3126, !3127, !"quoting_options_from_style: argument 0"}
!3127 = distinct !{!3127, !"quoting_options_from_style"}
!3128 = !DILocation(line: 953, column: 36, scope: !3113)
!3129 = !DILocation(line: 0, scope: !3097, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 953, column: 36, scope: !3113)
!3131 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3130)
!3132 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3130)
!3133 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3130)
!3134 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3130)
!3135 = !DILocation(line: 188, column: 11, scope: !3097, inlinedAt: !3130)
!3136 = !DILocation(line: 954, column: 10, scope: !3113)
!3137 = !DILocation(line: 955, column: 1, scope: !3113)
!3138 = !DILocation(line: 954, column: 3, scope: !3113)
!3139 = distinct !DISubprogram(name: "quotearg_style", scope: !499, file: !499, line: 958, type: !3140, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!101, !522, !107}
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "s", arg: 1, scope: !3139, file: !499, line: 958, type: !522)
!3144 = !DILocalVariable(name: "arg", arg: 2, scope: !3139, file: !499, line: 958, type: !107)
!3145 = !DILocation(line: 0, scope: !3139)
!3146 = !DILocation(line: 0, scope: !3081, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 960, column: 10, scope: !3139)
!3148 = !DILocation(line: 945, column: 3, scope: !3081, inlinedAt: !3147)
!3149 = !DILocation(line: 945, column: 32, scope: !3081, inlinedAt: !3147)
!3150 = !{!3151}
!3151 = distinct !{!3151, !3152, !"quoting_options_from_style: argument 0"}
!3152 = distinct !{!3152, !"quoting_options_from_style"}
!3153 = !DILocation(line: 945, column: 36, scope: !3081, inlinedAt: !3147)
!3154 = !DILocation(line: 0, scope: !3097, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 945, column: 36, scope: !3081, inlinedAt: !3147)
!3156 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3155)
!3157 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3155)
!3158 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3155)
!3159 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3155)
!3160 = !DILocation(line: 188, column: 11, scope: !3097, inlinedAt: !3155)
!3161 = !DILocation(line: 946, column: 10, scope: !3081, inlinedAt: !3147)
!3162 = !DILocation(line: 947, column: 1, scope: !3081, inlinedAt: !3147)
!3163 = !DILocation(line: 960, column: 3, scope: !3139)
!3164 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !499, file: !499, line: 964, type: !3165, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!101, !522, !107, !104}
!3167 = !{!3168, !3169, !3170}
!3168 = !DILocalVariable(name: "s", arg: 1, scope: !3164, file: !499, line: 964, type: !522)
!3169 = !DILocalVariable(name: "arg", arg: 2, scope: !3164, file: !499, line: 964, type: !107)
!3170 = !DILocalVariable(name: "argsize", arg: 3, scope: !3164, file: !499, line: 964, type: !104)
!3171 = !DILocation(line: 0, scope: !3164)
!3172 = !DILocation(line: 0, scope: !3113, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 966, column: 10, scope: !3164)
!3174 = !DILocation(line: 953, column: 3, scope: !3113, inlinedAt: !3173)
!3175 = !DILocation(line: 953, column: 32, scope: !3113, inlinedAt: !3173)
!3176 = !{!3177}
!3177 = distinct !{!3177, !3178, !"quoting_options_from_style: argument 0"}
!3178 = distinct !{!3178, !"quoting_options_from_style"}
!3179 = !DILocation(line: 953, column: 36, scope: !3113, inlinedAt: !3173)
!3180 = !DILocation(line: 0, scope: !3097, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 953, column: 36, scope: !3113, inlinedAt: !3173)
!3182 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3181)
!3183 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3181)
!3184 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3181)
!3185 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3181)
!3186 = !DILocation(line: 188, column: 11, scope: !3097, inlinedAt: !3181)
!3187 = !DILocation(line: 954, column: 10, scope: !3113, inlinedAt: !3173)
!3188 = !DILocation(line: 955, column: 1, scope: !3113, inlinedAt: !3173)
!3189 = !DILocation(line: 966, column: 3, scope: !3164)
!3190 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !499, file: !499, line: 970, type: !3191, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!101, !107, !104, !4}
!3193 = !{!3194, !3195, !3196, !3197}
!3194 = !DILocalVariable(name: "arg", arg: 1, scope: !3190, file: !499, line: 970, type: !107)
!3195 = !DILocalVariable(name: "argsize", arg: 2, scope: !3190, file: !499, line: 970, type: !104)
!3196 = !DILocalVariable(name: "ch", arg: 3, scope: !3190, file: !499, line: 970, type: !4)
!3197 = !DILocalVariable(name: "options", scope: !3190, file: !499, line: 972, type: !549)
!3198 = !DILocation(line: 0, scope: !3190)
!3199 = !DILocation(line: 972, column: 3, scope: !3190)
!3200 = !DILocation(line: 972, column: 26, scope: !3190)
!3201 = !DILocation(line: 973, column: 13, scope: !3190)
!3202 = !{i64 0, i64 4, !1131, i64 4, i64 4, !1122, i64 8, i64 32, !1131, i64 40, i64 8, !1060, i64 48, i64 8, !1060}
!3203 = !DILocation(line: 0, scope: !2210, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 974, column: 3, scope: !3190)
!3205 = !DILocation(line: 147, column: 41, scope: !2210, inlinedAt: !3204)
!3206 = !DILocation(line: 147, column: 62, scope: !2210, inlinedAt: !3204)
!3207 = !DILocation(line: 147, column: 57, scope: !2210, inlinedAt: !3204)
!3208 = !DILocation(line: 148, column: 15, scope: !2210, inlinedAt: !3204)
!3209 = !DILocation(line: 149, column: 21, scope: !2210, inlinedAt: !3204)
!3210 = !DILocation(line: 149, column: 24, scope: !2210, inlinedAt: !3204)
!3211 = !DILocation(line: 150, column: 19, scope: !2210, inlinedAt: !3204)
!3212 = !DILocation(line: 150, column: 24, scope: !2210, inlinedAt: !3204)
!3213 = !DILocation(line: 150, column: 6, scope: !2210, inlinedAt: !3204)
!3214 = !DILocation(line: 975, column: 10, scope: !3190)
!3215 = !DILocation(line: 976, column: 1, scope: !3190)
!3216 = !DILocation(line: 975, column: 3, scope: !3190)
!3217 = distinct !DISubprogram(name: "quotearg_char", scope: !499, file: !499, line: 979, type: !3218, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!101, !107, !4}
!3220 = !{!3221, !3222}
!3221 = !DILocalVariable(name: "arg", arg: 1, scope: !3217, file: !499, line: 979, type: !107)
!3222 = !DILocalVariable(name: "ch", arg: 2, scope: !3217, file: !499, line: 979, type: !4)
!3223 = !DILocation(line: 0, scope: !3217)
!3224 = !DILocation(line: 0, scope: !3190, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 981, column: 10, scope: !3217)
!3226 = !DILocation(line: 972, column: 3, scope: !3190, inlinedAt: !3225)
!3227 = !DILocation(line: 972, column: 26, scope: !3190, inlinedAt: !3225)
!3228 = !DILocation(line: 973, column: 13, scope: !3190, inlinedAt: !3225)
!3229 = !DILocation(line: 0, scope: !2210, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 974, column: 3, scope: !3190, inlinedAt: !3225)
!3231 = !DILocation(line: 147, column: 41, scope: !2210, inlinedAt: !3230)
!3232 = !DILocation(line: 147, column: 62, scope: !2210, inlinedAt: !3230)
!3233 = !DILocation(line: 147, column: 57, scope: !2210, inlinedAt: !3230)
!3234 = !DILocation(line: 148, column: 15, scope: !2210, inlinedAt: !3230)
!3235 = !DILocation(line: 149, column: 21, scope: !2210, inlinedAt: !3230)
!3236 = !DILocation(line: 149, column: 24, scope: !2210, inlinedAt: !3230)
!3237 = !DILocation(line: 150, column: 19, scope: !2210, inlinedAt: !3230)
!3238 = !DILocation(line: 150, column: 24, scope: !2210, inlinedAt: !3230)
!3239 = !DILocation(line: 150, column: 6, scope: !2210, inlinedAt: !3230)
!3240 = !DILocation(line: 975, column: 10, scope: !3190, inlinedAt: !3225)
!3241 = !DILocation(line: 976, column: 1, scope: !3190, inlinedAt: !3225)
!3242 = !DILocation(line: 981, column: 3, scope: !3217)
!3243 = distinct !DISubprogram(name: "quotearg_colon", scope: !499, file: !499, line: 985, type: !1245, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "arg", arg: 1, scope: !3243, file: !499, line: 985, type: !107)
!3246 = !DILocation(line: 0, scope: !3243)
!3247 = !DILocation(line: 0, scope: !3217, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 987, column: 10, scope: !3243)
!3249 = !DILocation(line: 0, scope: !3190, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 981, column: 10, scope: !3217, inlinedAt: !3248)
!3251 = !DILocation(line: 972, column: 3, scope: !3190, inlinedAt: !3250)
!3252 = !DILocation(line: 972, column: 26, scope: !3190, inlinedAt: !3250)
!3253 = !DILocation(line: 973, column: 13, scope: !3190, inlinedAt: !3250)
!3254 = !DILocation(line: 0, scope: !2210, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 974, column: 3, scope: !3190, inlinedAt: !3250)
!3256 = !DILocation(line: 147, column: 57, scope: !2210, inlinedAt: !3255)
!3257 = !DILocation(line: 149, column: 21, scope: !2210, inlinedAt: !3255)
!3258 = !DILocation(line: 150, column: 6, scope: !2210, inlinedAt: !3255)
!3259 = !DILocation(line: 975, column: 10, scope: !3190, inlinedAt: !3250)
!3260 = !DILocation(line: 976, column: 1, scope: !3190, inlinedAt: !3250)
!3261 = !DILocation(line: 987, column: 3, scope: !3243)
!3262 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !499, file: !499, line: 991, type: !3071, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3263)
!3263 = !{!3264, !3265}
!3264 = !DILocalVariable(name: "arg", arg: 1, scope: !3262, file: !499, line: 991, type: !107)
!3265 = !DILocalVariable(name: "argsize", arg: 2, scope: !3262, file: !499, line: 991, type: !104)
!3266 = !DILocation(line: 0, scope: !3262)
!3267 = !DILocation(line: 0, scope: !3190, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 993, column: 10, scope: !3262)
!3269 = !DILocation(line: 972, column: 3, scope: !3190, inlinedAt: !3268)
!3270 = !DILocation(line: 972, column: 26, scope: !3190, inlinedAt: !3268)
!3271 = !DILocation(line: 973, column: 13, scope: !3190, inlinedAt: !3268)
!3272 = !DILocation(line: 0, scope: !2210, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 974, column: 3, scope: !3190, inlinedAt: !3268)
!3274 = !DILocation(line: 147, column: 57, scope: !2210, inlinedAt: !3273)
!3275 = !DILocation(line: 149, column: 21, scope: !2210, inlinedAt: !3273)
!3276 = !DILocation(line: 150, column: 6, scope: !2210, inlinedAt: !3273)
!3277 = !DILocation(line: 975, column: 10, scope: !3190, inlinedAt: !3268)
!3278 = !DILocation(line: 976, column: 1, scope: !3190, inlinedAt: !3268)
!3279 = !DILocation(line: 993, column: 3, scope: !3262)
!3280 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !499, file: !499, line: 997, type: !3082, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3281)
!3281 = !{!3282, !3283, !3284, !3285}
!3282 = !DILocalVariable(name: "n", arg: 1, scope: !3280, file: !499, line: 997, type: !70)
!3283 = !DILocalVariable(name: "s", arg: 2, scope: !3280, file: !499, line: 997, type: !522)
!3284 = !DILocalVariable(name: "arg", arg: 3, scope: !3280, file: !499, line: 997, type: !107)
!3285 = !DILocalVariable(name: "options", scope: !3280, file: !499, line: 999, type: !549)
!3286 = !DILocation(line: 185, column: 26, scope: !3097, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1000, column: 13, scope: !3280)
!3288 = !DILocation(line: 0, scope: !3280)
!3289 = !DILocation(line: 999, column: 3, scope: !3280)
!3290 = !DILocation(line: 999, column: 26, scope: !3280)
!3291 = !DILocation(line: 0, scope: !3097, inlinedAt: !3287)
!3292 = !DILocation(line: 186, column: 13, scope: !3106, inlinedAt: !3287)
!3293 = !DILocation(line: 186, column: 7, scope: !3097, inlinedAt: !3287)
!3294 = !DILocation(line: 187, column: 5, scope: !3106, inlinedAt: !3287)
!3295 = !{!3296}
!3296 = distinct !{!3296, !3297, !"quoting_options_from_style: argument 0"}
!3297 = distinct !{!3297, !"quoting_options_from_style"}
!3298 = !DILocation(line: 1000, column: 13, scope: !3280)
!3299 = !DILocation(line: 0, scope: !2210, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1001, column: 3, scope: !3280)
!3301 = !DILocation(line: 147, column: 57, scope: !2210, inlinedAt: !3300)
!3302 = !DILocation(line: 149, column: 21, scope: !2210, inlinedAt: !3300)
!3303 = !DILocation(line: 150, column: 6, scope: !2210, inlinedAt: !3300)
!3304 = !DILocation(line: 1002, column: 10, scope: !3280)
!3305 = !DILocation(line: 1003, column: 1, scope: !3280)
!3306 = !DILocation(line: 1002, column: 3, scope: !3280)
!3307 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !499, file: !499, line: 1006, type: !3308, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!101, !70, !107, !107, !107}
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !499, line: 1006, type: !70)
!3312 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3307, file: !499, line: 1006, type: !107)
!3313 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3307, file: !499, line: 1007, type: !107)
!3314 = !DILocalVariable(name: "arg", arg: 4, scope: !3307, file: !499, line: 1007, type: !107)
!3315 = !DILocation(line: 0, scope: !3307)
!3316 = !DILocalVariable(name: "n", arg: 1, scope: !3317, file: !499, line: 1014, type: !70)
!3317 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !499, file: !499, line: 1014, type: !3318, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!101, !70, !107, !107, !107, !104}
!3320 = !{!3316, !3321, !3322, !3323, !3324, !3325}
!3321 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3317, file: !499, line: 1014, type: !107)
!3322 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3317, file: !499, line: 1015, type: !107)
!3323 = !DILocalVariable(name: "arg", arg: 4, scope: !3317, file: !499, line: 1016, type: !107)
!3324 = !DILocalVariable(name: "argsize", arg: 5, scope: !3317, file: !499, line: 1016, type: !104)
!3325 = !DILocalVariable(name: "o", scope: !3317, file: !499, line: 1018, type: !549)
!3326 = !DILocation(line: 0, scope: !3317, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1009, column: 10, scope: !3307)
!3328 = !DILocation(line: 1018, column: 3, scope: !3317, inlinedAt: !3327)
!3329 = !DILocation(line: 1018, column: 26, scope: !3317, inlinedAt: !3327)
!3330 = !DILocation(line: 1018, column: 30, scope: !3317, inlinedAt: !3327)
!3331 = !DILocation(line: 0, scope: !2250, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 1019, column: 3, scope: !3317, inlinedAt: !3327)
!3333 = !DILocation(line: 174, column: 12, scope: !2250, inlinedAt: !3332)
!3334 = !DILocation(line: 175, column: 8, scope: !2263, inlinedAt: !3332)
!3335 = !DILocation(line: 175, column: 19, scope: !2263, inlinedAt: !3332)
!3336 = !DILocation(line: 176, column: 5, scope: !2263, inlinedAt: !3332)
!3337 = !DILocation(line: 177, column: 6, scope: !2250, inlinedAt: !3332)
!3338 = !DILocation(line: 177, column: 17, scope: !2250, inlinedAt: !3332)
!3339 = !DILocation(line: 178, column: 6, scope: !2250, inlinedAt: !3332)
!3340 = !DILocation(line: 178, column: 18, scope: !2250, inlinedAt: !3332)
!3341 = !DILocation(line: 1020, column: 10, scope: !3317, inlinedAt: !3327)
!3342 = !DILocation(line: 1021, column: 1, scope: !3317, inlinedAt: !3327)
!3343 = !DILocation(line: 1009, column: 3, scope: !3307)
!3344 = !DILocation(line: 0, scope: !3317)
!3345 = !DILocation(line: 1018, column: 3, scope: !3317)
!3346 = !DILocation(line: 1018, column: 26, scope: !3317)
!3347 = !DILocation(line: 1018, column: 30, scope: !3317)
!3348 = !DILocation(line: 0, scope: !2250, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 1019, column: 3, scope: !3317)
!3350 = !DILocation(line: 174, column: 12, scope: !2250, inlinedAt: !3349)
!3351 = !DILocation(line: 175, column: 8, scope: !2263, inlinedAt: !3349)
!3352 = !DILocation(line: 175, column: 19, scope: !2263, inlinedAt: !3349)
!3353 = !DILocation(line: 176, column: 5, scope: !2263, inlinedAt: !3349)
!3354 = !DILocation(line: 177, column: 6, scope: !2250, inlinedAt: !3349)
!3355 = !DILocation(line: 177, column: 17, scope: !2250, inlinedAt: !3349)
!3356 = !DILocation(line: 178, column: 6, scope: !2250, inlinedAt: !3349)
!3357 = !DILocation(line: 178, column: 18, scope: !2250, inlinedAt: !3349)
!3358 = !DILocation(line: 1020, column: 10, scope: !3317)
!3359 = !DILocation(line: 1021, column: 1, scope: !3317)
!3360 = !DILocation(line: 1020, column: 3, scope: !3317)
!3361 = distinct !DISubprogram(name: "quotearg_custom", scope: !499, file: !499, line: 1024, type: !3362, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!101, !107, !107, !107}
!3364 = !{!3365, !3366, !3367}
!3365 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3361, file: !499, line: 1024, type: !107)
!3366 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3361, file: !499, line: 1024, type: !107)
!3367 = !DILocalVariable(name: "arg", arg: 3, scope: !3361, file: !499, line: 1025, type: !107)
!3368 = !DILocation(line: 0, scope: !3361)
!3369 = !DILocation(line: 0, scope: !3307, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 1027, column: 10, scope: !3361)
!3371 = !DILocation(line: 0, scope: !3317, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1009, column: 10, scope: !3307, inlinedAt: !3370)
!3373 = !DILocation(line: 1018, column: 3, scope: !3317, inlinedAt: !3372)
!3374 = !DILocation(line: 1018, column: 26, scope: !3317, inlinedAt: !3372)
!3375 = !DILocation(line: 1018, column: 30, scope: !3317, inlinedAt: !3372)
!3376 = !DILocation(line: 0, scope: !2250, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 1019, column: 3, scope: !3317, inlinedAt: !3372)
!3378 = !DILocation(line: 174, column: 12, scope: !2250, inlinedAt: !3377)
!3379 = !DILocation(line: 175, column: 8, scope: !2263, inlinedAt: !3377)
!3380 = !DILocation(line: 175, column: 19, scope: !2263, inlinedAt: !3377)
!3381 = !DILocation(line: 176, column: 5, scope: !2263, inlinedAt: !3377)
!3382 = !DILocation(line: 177, column: 6, scope: !2250, inlinedAt: !3377)
!3383 = !DILocation(line: 177, column: 17, scope: !2250, inlinedAt: !3377)
!3384 = !DILocation(line: 178, column: 6, scope: !2250, inlinedAt: !3377)
!3385 = !DILocation(line: 178, column: 18, scope: !2250, inlinedAt: !3377)
!3386 = !DILocation(line: 1020, column: 10, scope: !3317, inlinedAt: !3372)
!3387 = !DILocation(line: 1021, column: 1, scope: !3317, inlinedAt: !3372)
!3388 = !DILocation(line: 1027, column: 3, scope: !3361)
!3389 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !499, file: !499, line: 1031, type: !3390, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!101, !107, !107, !107, !104}
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3389, file: !499, line: 1031, type: !107)
!3394 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3389, file: !499, line: 1031, type: !107)
!3395 = !DILocalVariable(name: "arg", arg: 3, scope: !3389, file: !499, line: 1032, type: !107)
!3396 = !DILocalVariable(name: "argsize", arg: 4, scope: !3389, file: !499, line: 1032, type: !104)
!3397 = !DILocation(line: 0, scope: !3389)
!3398 = !DILocation(line: 0, scope: !3317, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1034, column: 10, scope: !3389)
!3400 = !DILocation(line: 1018, column: 3, scope: !3317, inlinedAt: !3399)
!3401 = !DILocation(line: 1018, column: 26, scope: !3317, inlinedAt: !3399)
!3402 = !DILocation(line: 1018, column: 30, scope: !3317, inlinedAt: !3399)
!3403 = !DILocation(line: 0, scope: !2250, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 1019, column: 3, scope: !3317, inlinedAt: !3399)
!3405 = !DILocation(line: 174, column: 12, scope: !2250, inlinedAt: !3404)
!3406 = !DILocation(line: 175, column: 8, scope: !2263, inlinedAt: !3404)
!3407 = !DILocation(line: 175, column: 19, scope: !2263, inlinedAt: !3404)
!3408 = !DILocation(line: 176, column: 5, scope: !2263, inlinedAt: !3404)
!3409 = !DILocation(line: 177, column: 6, scope: !2250, inlinedAt: !3404)
!3410 = !DILocation(line: 177, column: 17, scope: !2250, inlinedAt: !3404)
!3411 = !DILocation(line: 178, column: 6, scope: !2250, inlinedAt: !3404)
!3412 = !DILocation(line: 178, column: 18, scope: !2250, inlinedAt: !3404)
!3413 = !DILocation(line: 1020, column: 10, scope: !3317, inlinedAt: !3399)
!3414 = !DILocation(line: 1021, column: 1, scope: !3317, inlinedAt: !3399)
!3415 = !DILocation(line: 1034, column: 3, scope: !3389)
!3416 = distinct !DISubprogram(name: "quote_n_mem", scope: !499, file: !499, line: 1049, type: !3417, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!107, !70, !107, !104}
!3419 = !{!3420, !3421, !3422}
!3420 = !DILocalVariable(name: "n", arg: 1, scope: !3416, file: !499, line: 1049, type: !70)
!3421 = !DILocalVariable(name: "arg", arg: 2, scope: !3416, file: !499, line: 1049, type: !107)
!3422 = !DILocalVariable(name: "argsize", arg: 3, scope: !3416, file: !499, line: 1049, type: !104)
!3423 = !DILocation(line: 0, scope: !3416)
!3424 = !DILocation(line: 1051, column: 10, scope: !3416)
!3425 = !DILocation(line: 1051, column: 3, scope: !3416)
!3426 = distinct !DISubprogram(name: "quote_mem", scope: !499, file: !499, line: 1055, type: !3427, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!107, !107, !104}
!3429 = !{!3430, !3431}
!3430 = !DILocalVariable(name: "arg", arg: 1, scope: !3426, file: !499, line: 1055, type: !107)
!3431 = !DILocalVariable(name: "argsize", arg: 2, scope: !3426, file: !499, line: 1055, type: !104)
!3432 = !DILocation(line: 0, scope: !3426)
!3433 = !DILocation(line: 0, scope: !3416, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 1057, column: 10, scope: !3426)
!3435 = !DILocation(line: 1051, column: 10, scope: !3416, inlinedAt: !3434)
!3436 = !DILocation(line: 1057, column: 3, scope: !3426)
!3437 = distinct !DISubprogram(name: "quote_n", scope: !499, file: !499, line: 1061, type: !3438, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!107, !70, !107}
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3437, file: !499, line: 1061, type: !70)
!3442 = !DILocalVariable(name: "arg", arg: 2, scope: !3437, file: !499, line: 1061, type: !107)
!3443 = !DILocation(line: 0, scope: !3437)
!3444 = !DILocation(line: 0, scope: !3416, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1063, column: 10, scope: !3437)
!3446 = !DILocation(line: 1051, column: 10, scope: !3416, inlinedAt: !3445)
!3447 = !DILocation(line: 1063, column: 3, scope: !3437)
!3448 = distinct !DISubprogram(name: "quote", scope: !499, file: !499, line: 1067, type: !3449, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!107, !107}
!3451 = !{!3452}
!3452 = !DILocalVariable(name: "arg", arg: 1, scope: !3448, file: !499, line: 1067, type: !107)
!3453 = !DILocation(line: 0, scope: !3448)
!3454 = !DILocation(line: 0, scope: !3437, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 1069, column: 10, scope: !3448)
!3456 = !DILocation(line: 0, scope: !3416, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 1063, column: 10, scope: !3437, inlinedAt: !3455)
!3458 = !DILocation(line: 1051, column: 10, scope: !3416, inlinedAt: !3457)
!3459 = !DILocation(line: 1069, column: 3, scope: !3448)
!3460 = distinct !DISubprogram(name: "version_etc_arn", scope: !612, file: !612, line: 61, type: !3461, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3498)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !3463, !107, !107, !107, !3497, !104}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3465, file: !165, line: 51, baseType: !70, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3465, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3465, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3465, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3465, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3465, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3465, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3465, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3465, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3465, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3465, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3465, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3465, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3465, file: !165, line: 70, baseType: !3481, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3465, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3465, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3465, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3465, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3465, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3465, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3465, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3465, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3465, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3465, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3465, file: !165, line: 93, baseType: !3481, size: 64, offset: 1344)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3465, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3465, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3465, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3465, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!3498 = !{!3499, !3500, !3501, !3502, !3503, !3504}
!3499 = !DILocalVariable(name: "stream", arg: 1, scope: !3460, file: !612, line: 61, type: !3463)
!3500 = !DILocalVariable(name: "command_name", arg: 2, scope: !3460, file: !612, line: 62, type: !107)
!3501 = !DILocalVariable(name: "package", arg: 3, scope: !3460, file: !612, line: 62, type: !107)
!3502 = !DILocalVariable(name: "version", arg: 4, scope: !3460, file: !612, line: 63, type: !107)
!3503 = !DILocalVariable(name: "authors", arg: 5, scope: !3460, file: !612, line: 64, type: !3497)
!3504 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3460, file: !612, line: 64, type: !104)
!3505 = !DILocation(line: 0, scope: !3460)
!3506 = !DILocation(line: 66, column: 7, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3460, file: !612, line: 66, column: 7)
!3508 = !DILocation(line: 66, column: 7, scope: !3460)
!3509 = !DILocation(line: 67, column: 5, scope: !3507)
!3510 = !DILocation(line: 69, column: 5, scope: !3507)
!3511 = !DILocation(line: 83, column: 3, scope: !3460)
!3512 = !DILocation(line: 85, column: 3, scope: !3460)
!3513 = !DILocation(line: 88, column: 3, scope: !3460)
!3514 = !DILocation(line: 95, column: 3, scope: !3460)
!3515 = !DILocation(line: 97, column: 3, scope: !3460)
!3516 = !DILocation(line: 105, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3460, file: !612, line: 98, column: 5)
!3518 = !DILocation(line: 106, column: 7, scope: !3517)
!3519 = !DILocation(line: 109, column: 7, scope: !3517)
!3520 = !DILocation(line: 110, column: 7, scope: !3517)
!3521 = !DILocation(line: 113, column: 7, scope: !3517)
!3522 = !DILocation(line: 115, column: 7, scope: !3517)
!3523 = !DILocation(line: 120, column: 7, scope: !3517)
!3524 = !DILocation(line: 122, column: 7, scope: !3517)
!3525 = !DILocation(line: 127, column: 7, scope: !3517)
!3526 = !DILocation(line: 129, column: 7, scope: !3517)
!3527 = !DILocation(line: 134, column: 7, scope: !3517)
!3528 = !DILocation(line: 137, column: 7, scope: !3517)
!3529 = !DILocation(line: 142, column: 7, scope: !3517)
!3530 = !DILocation(line: 145, column: 7, scope: !3517)
!3531 = !DILocation(line: 150, column: 7, scope: !3517)
!3532 = !DILocation(line: 154, column: 7, scope: !3517)
!3533 = !DILocation(line: 159, column: 7, scope: !3517)
!3534 = !DILocation(line: 163, column: 7, scope: !3517)
!3535 = !DILocation(line: 170, column: 7, scope: !3517)
!3536 = !DILocation(line: 174, column: 7, scope: !3517)
!3537 = !DILocation(line: 176, column: 1, scope: !3460)
!3538 = distinct !DISubprogram(name: "version_etc_ar", scope: !612, file: !612, line: 183, type: !3539, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !3463, !107, !107, !107, !3497}
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547}
!3542 = !DILocalVariable(name: "stream", arg: 1, scope: !3538, file: !612, line: 183, type: !3463)
!3543 = !DILocalVariable(name: "command_name", arg: 2, scope: !3538, file: !612, line: 184, type: !107)
!3544 = !DILocalVariable(name: "package", arg: 3, scope: !3538, file: !612, line: 184, type: !107)
!3545 = !DILocalVariable(name: "version", arg: 4, scope: !3538, file: !612, line: 185, type: !107)
!3546 = !DILocalVariable(name: "authors", arg: 5, scope: !3538, file: !612, line: 185, type: !3497)
!3547 = !DILocalVariable(name: "n_authors", scope: !3538, file: !612, line: 187, type: !104)
!3548 = !DILocation(line: 0, scope: !3538)
!3549 = !DILocation(line: 189, column: 8, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3538, file: !612, line: 189, column: 3)
!3551 = !DILocation(line: 189, scope: !3550)
!3552 = !DILocation(line: 189, column: 23, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !612, line: 189, column: 3)
!3554 = !DILocation(line: 189, column: 3, scope: !3550)
!3555 = !DILocation(line: 189, column: 52, scope: !3553)
!3556 = distinct !{!3556, !3554, !3557, !1169}
!3557 = !DILocation(line: 190, column: 5, scope: !3550)
!3558 = !DILocation(line: 191, column: 3, scope: !3538)
!3559 = !DILocation(line: 192, column: 1, scope: !3538)
!3560 = distinct !DISubprogram(name: "version_etc_va", scope: !612, file: !612, line: 199, type: !3561, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3574)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !3463, !107, !107, !107, !3563}
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !382, line: 52, baseType: !3564)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !384, line: 14, baseType: !3565)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3566, baseType: !3567)
!3566 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3567, file: !3566, line: 192, baseType: !102, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3567, file: !3566, line: 192, baseType: !102, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3567, file: !3566, line: 192, baseType: !102, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3567, file: !3566, line: 192, baseType: !70, size: 32, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3567, file: !3566, line: 192, baseType: !70, size: 32, offset: 224)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3575 = !DILocalVariable(name: "stream", arg: 1, scope: !3560, file: !612, line: 199, type: !3463)
!3576 = !DILocalVariable(name: "command_name", arg: 2, scope: !3560, file: !612, line: 200, type: !107)
!3577 = !DILocalVariable(name: "package", arg: 3, scope: !3560, file: !612, line: 200, type: !107)
!3578 = !DILocalVariable(name: "version", arg: 4, scope: !3560, file: !612, line: 201, type: !107)
!3579 = !DILocalVariable(name: "authors", arg: 5, scope: !3560, file: !612, line: 201, type: !3563)
!3580 = !DILocalVariable(name: "n_authors", scope: !3560, file: !612, line: 203, type: !104)
!3581 = !DILocalVariable(name: "authtab", scope: !3560, file: !612, line: 204, type: !3582)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 640, elements: !50)
!3583 = !DILocation(line: 0, scope: !3560)
!3584 = !DILocation(line: 201, column: 46, scope: !3560)
!3585 = !DILocation(line: 204, column: 3, scope: !3560)
!3586 = !DILocation(line: 204, column: 15, scope: !3560)
!3587 = !DILocation(line: 208, column: 35, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !612, line: 206, column: 3)
!3589 = distinct !DILexicalBlock(scope: !3560, file: !612, line: 206, column: 3)
!3590 = !DILocation(line: 208, column: 33, scope: !3588)
!3591 = !DILocation(line: 208, column: 67, scope: !3588)
!3592 = !DILocation(line: 206, column: 3, scope: !3589)
!3593 = !DILocation(line: 208, column: 14, scope: !3588)
!3594 = !DILocation(line: 0, scope: !3589)
!3595 = !DILocation(line: 211, column: 3, scope: !3560)
!3596 = !DILocation(line: 213, column: 1, scope: !3560)
!3597 = distinct !DISubprogram(name: "version_etc", scope: !612, file: !612, line: 230, type: !3598, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3600)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3463, !107, !107, !107, null}
!3600 = !{!3601, !3602, !3603, !3604, !3605}
!3601 = !DILocalVariable(name: "stream", arg: 1, scope: !3597, file: !612, line: 230, type: !3463)
!3602 = !DILocalVariable(name: "command_name", arg: 2, scope: !3597, file: !612, line: 231, type: !107)
!3603 = !DILocalVariable(name: "package", arg: 3, scope: !3597, file: !612, line: 231, type: !107)
!3604 = !DILocalVariable(name: "version", arg: 4, scope: !3597, file: !612, line: 232, type: !107)
!3605 = !DILocalVariable(name: "authors", scope: !3597, file: !612, line: 234, type: !3563)
!3606 = !DILocation(line: 0, scope: !3597)
!3607 = !DILocation(line: 234, column: 3, scope: !3597)
!3608 = !DILocation(line: 234, column: 11, scope: !3597)
!3609 = !DILocation(line: 235, column: 3, scope: !3597)
!3610 = !DILocation(line: 236, column: 3, scope: !3597)
!3611 = !DILocation(line: 237, column: 3, scope: !3597)
!3612 = !DILocation(line: 238, column: 1, scope: !3597)
!3613 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !612, file: !612, line: 241, type: !423, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !1107)
!3614 = !DILocation(line: 243, column: 3, scope: !3613)
!3615 = !DILocation(line: 248, column: 3, scope: !3613)
!3616 = !DILocation(line: 254, column: 3, scope: !3613)
!3617 = !DILocation(line: 259, column: 3, scope: !3613)
!3618 = !DILocation(line: 261, column: 1, scope: !3613)
!3619 = distinct !DISubprogram(name: "xnrealloc", scope: !3620, file: !3620, line: 147, type: !3621, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3623)
!3620 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!102, !102, !104, !104}
!3623 = !{!3624, !3625, !3626}
!3624 = !DILocalVariable(name: "p", arg: 1, scope: !3619, file: !3620, line: 147, type: !102)
!3625 = !DILocalVariable(name: "n", arg: 2, scope: !3619, file: !3620, line: 147, type: !104)
!3626 = !DILocalVariable(name: "s", arg: 3, scope: !3619, file: !3620, line: 147, type: !104)
!3627 = !DILocation(line: 0, scope: !3619)
!3628 = !DILocalVariable(name: "p", arg: 1, scope: !3629, file: !968, line: 83, type: !102)
!3629 = distinct !DISubprogram(name: "xreallocarray", scope: !968, file: !968, line: 83, type: !3621, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3630)
!3630 = !{!3628, !3631, !3632}
!3631 = !DILocalVariable(name: "n", arg: 2, scope: !3629, file: !968, line: 83, type: !104)
!3632 = !DILocalVariable(name: "s", arg: 3, scope: !3629, file: !968, line: 83, type: !104)
!3633 = !DILocation(line: 0, scope: !3629, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 149, column: 10, scope: !3619)
!3635 = !DILocation(line: 85, column: 25, scope: !3629, inlinedAt: !3634)
!3636 = !DILocalVariable(name: "p", arg: 1, scope: !3637, file: !968, line: 37, type: !102)
!3637 = distinct !DISubprogram(name: "check_nonnull", scope: !968, file: !968, line: 37, type: !3638, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!102, !102}
!3640 = !{!3636}
!3641 = !DILocation(line: 0, scope: !3637, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 85, column: 10, scope: !3629, inlinedAt: !3634)
!3643 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3642)
!3644 = distinct !DILexicalBlock(scope: !3637, file: !968, line: 39, column: 7)
!3645 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3642)
!3646 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3642)
!3647 = !DILocation(line: 149, column: 3, scope: !3619)
!3648 = !DILocation(line: 0, scope: !3629)
!3649 = !DILocation(line: 85, column: 25, scope: !3629)
!3650 = !DILocation(line: 0, scope: !3637, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 85, column: 10, scope: !3629)
!3652 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3651)
!3653 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3651)
!3654 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3651)
!3655 = !DILocation(line: 85, column: 3, scope: !3629)
!3656 = distinct !DISubprogram(name: "xmalloc", scope: !968, file: !968, line: 47, type: !3657, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!102, !104}
!3659 = !{!3660}
!3660 = !DILocalVariable(name: "s", arg: 1, scope: !3656, file: !968, line: 47, type: !104)
!3661 = !DILocation(line: 0, scope: !3656)
!3662 = !DILocation(line: 49, column: 25, scope: !3656)
!3663 = !DILocation(line: 0, scope: !3637, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 49, column: 10, scope: !3656)
!3665 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3664)
!3666 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3664)
!3667 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3664)
!3668 = !DILocation(line: 49, column: 3, scope: !3656)
!3669 = !DISubprogram(name: "malloc", scope: !1243, file: !1243, line: 540, type: !3657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!3670 = distinct !DISubprogram(name: "ximalloc", scope: !968, file: !968, line: 53, type: !3671, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!102, !987}
!3673 = !{!3674}
!3674 = !DILocalVariable(name: "s", arg: 1, scope: !3670, file: !968, line: 53, type: !987)
!3675 = !DILocation(line: 0, scope: !3670)
!3676 = !DILocalVariable(name: "s", arg: 1, scope: !3677, file: !3678, line: 55, type: !987)
!3677 = distinct !DISubprogram(name: "imalloc", scope: !3678, file: !3678, line: 55, type: !3671, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3679)
!3678 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3679 = !{!3676}
!3680 = !DILocation(line: 0, scope: !3677, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 55, column: 25, scope: !3670)
!3682 = !DILocation(line: 57, column: 26, scope: !3677, inlinedAt: !3681)
!3683 = !DILocation(line: 0, scope: !3637, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 55, column: 10, scope: !3670)
!3685 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3684)
!3686 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3684)
!3687 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3684)
!3688 = !DILocation(line: 55, column: 3, scope: !3670)
!3689 = distinct !DISubprogram(name: "xcharalloc", scope: !968, file: !968, line: 59, type: !3690, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!101, !104}
!3692 = !{!3693}
!3693 = !DILocalVariable(name: "n", arg: 1, scope: !3689, file: !968, line: 59, type: !104)
!3694 = !DILocation(line: 0, scope: !3689)
!3695 = !DILocation(line: 0, scope: !3656, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 61, column: 10, scope: !3689)
!3697 = !DILocation(line: 49, column: 25, scope: !3656, inlinedAt: !3696)
!3698 = !DILocation(line: 0, scope: !3637, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 49, column: 10, scope: !3656, inlinedAt: !3696)
!3700 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3699)
!3701 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3699)
!3702 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3699)
!3703 = !DILocation(line: 61, column: 3, scope: !3689)
!3704 = distinct !DISubprogram(name: "xrealloc", scope: !968, file: !968, line: 68, type: !3705, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!102, !102, !104}
!3707 = !{!3708, !3709}
!3708 = !DILocalVariable(name: "p", arg: 1, scope: !3704, file: !968, line: 68, type: !102)
!3709 = !DILocalVariable(name: "s", arg: 2, scope: !3704, file: !968, line: 68, type: !104)
!3710 = !DILocation(line: 0, scope: !3704)
!3711 = !DILocalVariable(name: "ptr", arg: 1, scope: !3712, file: !3713, line: 2057, type: !102)
!3712 = distinct !DISubprogram(name: "rpl_realloc", scope: !3713, file: !3713, line: 2057, type: !3705, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3714)
!3713 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3714 = !{!3711, !3715}
!3715 = !DILocalVariable(name: "size", arg: 2, scope: !3712, file: !3713, line: 2057, type: !104)
!3716 = !DILocation(line: 0, scope: !3712, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 70, column: 25, scope: !3704)
!3718 = !DILocation(line: 2059, column: 24, scope: !3712, inlinedAt: !3717)
!3719 = !DILocation(line: 2059, column: 10, scope: !3712, inlinedAt: !3717)
!3720 = !DILocation(line: 0, scope: !3637, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 70, column: 10, scope: !3704)
!3722 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3721)
!3723 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3721)
!3724 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3721)
!3725 = !DILocation(line: 70, column: 3, scope: !3704)
!3726 = !DISubprogram(name: "realloc", scope: !1243, file: !1243, line: 551, type: !3705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!3727 = distinct !DISubprogram(name: "xirealloc", scope: !968, file: !968, line: 74, type: !3728, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!102, !102, !987}
!3730 = !{!3731, !3732}
!3731 = !DILocalVariable(name: "p", arg: 1, scope: !3727, file: !968, line: 74, type: !102)
!3732 = !DILocalVariable(name: "s", arg: 2, scope: !3727, file: !968, line: 74, type: !987)
!3733 = !DILocation(line: 0, scope: !3727)
!3734 = !DILocalVariable(name: "p", arg: 1, scope: !3735, file: !3678, line: 66, type: !102)
!3735 = distinct !DISubprogram(name: "irealloc", scope: !3678, file: !3678, line: 66, type: !3728, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3736)
!3736 = !{!3734, !3737}
!3737 = !DILocalVariable(name: "s", arg: 2, scope: !3735, file: !3678, line: 66, type: !987)
!3738 = !DILocation(line: 0, scope: !3735, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 76, column: 25, scope: !3727)
!3740 = !DILocation(line: 0, scope: !3712, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 68, column: 26, scope: !3735, inlinedAt: !3739)
!3742 = !DILocation(line: 2059, column: 24, scope: !3712, inlinedAt: !3741)
!3743 = !DILocation(line: 2059, column: 10, scope: !3712, inlinedAt: !3741)
!3744 = !DILocation(line: 0, scope: !3637, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 76, column: 10, scope: !3727)
!3746 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3745)
!3747 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3745)
!3748 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3745)
!3749 = !DILocation(line: 76, column: 3, scope: !3727)
!3750 = distinct !DISubprogram(name: "xireallocarray", scope: !968, file: !968, line: 89, type: !3751, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3753)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!102, !102, !987, !987}
!3753 = !{!3754, !3755, !3756}
!3754 = !DILocalVariable(name: "p", arg: 1, scope: !3750, file: !968, line: 89, type: !102)
!3755 = !DILocalVariable(name: "n", arg: 2, scope: !3750, file: !968, line: 89, type: !987)
!3756 = !DILocalVariable(name: "s", arg: 3, scope: !3750, file: !968, line: 89, type: !987)
!3757 = !DILocation(line: 0, scope: !3750)
!3758 = !DILocalVariable(name: "p", arg: 1, scope: !3759, file: !3678, line: 98, type: !102)
!3759 = distinct !DISubprogram(name: "ireallocarray", scope: !3678, file: !3678, line: 98, type: !3751, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3760)
!3760 = !{!3758, !3761, !3762}
!3761 = !DILocalVariable(name: "n", arg: 2, scope: !3759, file: !3678, line: 98, type: !987)
!3762 = !DILocalVariable(name: "s", arg: 3, scope: !3759, file: !3678, line: 98, type: !987)
!3763 = !DILocation(line: 0, scope: !3759, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 91, column: 25, scope: !3750)
!3765 = !DILocation(line: 101, column: 13, scope: !3759, inlinedAt: !3764)
!3766 = !DILocation(line: 0, scope: !3637, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 91, column: 10, scope: !3750)
!3768 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3767)
!3769 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3767)
!3770 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3767)
!3771 = !DILocation(line: 91, column: 3, scope: !3750)
!3772 = distinct !DISubprogram(name: "xnmalloc", scope: !968, file: !968, line: 98, type: !3773, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!102, !104, !104}
!3775 = !{!3776, !3777}
!3776 = !DILocalVariable(name: "n", arg: 1, scope: !3772, file: !968, line: 98, type: !104)
!3777 = !DILocalVariable(name: "s", arg: 2, scope: !3772, file: !968, line: 98, type: !104)
!3778 = !DILocation(line: 0, scope: !3772)
!3779 = !DILocation(line: 0, scope: !3629, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 100, column: 10, scope: !3772)
!3781 = !DILocation(line: 85, column: 25, scope: !3629, inlinedAt: !3780)
!3782 = !DILocation(line: 0, scope: !3637, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 85, column: 10, scope: !3629, inlinedAt: !3780)
!3784 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3783)
!3785 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3783)
!3786 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3783)
!3787 = !DILocation(line: 100, column: 3, scope: !3772)
!3788 = distinct !DISubprogram(name: "xinmalloc", scope: !968, file: !968, line: 104, type: !3789, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!102, !987, !987}
!3791 = !{!3792, !3793}
!3792 = !DILocalVariable(name: "n", arg: 1, scope: !3788, file: !968, line: 104, type: !987)
!3793 = !DILocalVariable(name: "s", arg: 2, scope: !3788, file: !968, line: 104, type: !987)
!3794 = !DILocation(line: 0, scope: !3788)
!3795 = !DILocation(line: 0, scope: !3750, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 106, column: 10, scope: !3788)
!3797 = !DILocation(line: 0, scope: !3759, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 91, column: 25, scope: !3750, inlinedAt: !3796)
!3799 = !DILocation(line: 101, column: 13, scope: !3759, inlinedAt: !3798)
!3800 = !DILocation(line: 0, scope: !3637, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 91, column: 10, scope: !3750, inlinedAt: !3796)
!3802 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3801)
!3803 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3801)
!3804 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3801)
!3805 = !DILocation(line: 106, column: 3, scope: !3788)
!3806 = distinct !DISubprogram(name: "x2realloc", scope: !968, file: !968, line: 116, type: !3807, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!102, !102, !974}
!3809 = !{!3810, !3811}
!3810 = !DILocalVariable(name: "p", arg: 1, scope: !3806, file: !968, line: 116, type: !102)
!3811 = !DILocalVariable(name: "ps", arg: 2, scope: !3806, file: !968, line: 116, type: !974)
!3812 = !DILocation(line: 0, scope: !3806)
!3813 = !DILocation(line: 0, scope: !971, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 118, column: 10, scope: !3806)
!3815 = !DILocation(line: 178, column: 14, scope: !971, inlinedAt: !3814)
!3816 = !DILocation(line: 180, column: 9, scope: !3817, inlinedAt: !3814)
!3817 = distinct !DILexicalBlock(scope: !971, file: !968, line: 180, column: 7)
!3818 = !DILocation(line: 180, column: 7, scope: !971, inlinedAt: !3814)
!3819 = !DILocation(line: 182, column: 13, scope: !3820, inlinedAt: !3814)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !968, line: 182, column: 11)
!3821 = distinct !DILexicalBlock(scope: !3817, file: !968, line: 181, column: 5)
!3822 = !DILocation(line: 182, column: 11, scope: !3821, inlinedAt: !3814)
!3823 = !DILocation(line: 197, column: 11, scope: !3824, inlinedAt: !3814)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !968, line: 197, column: 11)
!3825 = distinct !DILexicalBlock(scope: !3817, file: !968, line: 195, column: 5)
!3826 = !DILocation(line: 197, column: 11, scope: !3825, inlinedAt: !3814)
!3827 = !DILocation(line: 198, column: 9, scope: !3824, inlinedAt: !3814)
!3828 = !DILocation(line: 0, scope: !3629, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 201, column: 7, scope: !971, inlinedAt: !3814)
!3830 = !DILocation(line: 85, column: 25, scope: !3629, inlinedAt: !3829)
!3831 = !DILocation(line: 0, scope: !3637, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 85, column: 10, scope: !3629, inlinedAt: !3829)
!3833 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3832)
!3834 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3832)
!3835 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3832)
!3836 = !DILocation(line: 202, column: 7, scope: !971, inlinedAt: !3814)
!3837 = !DILocation(line: 118, column: 3, scope: !3806)
!3838 = !DILocation(line: 0, scope: !971)
!3839 = !DILocation(line: 178, column: 14, scope: !971)
!3840 = !DILocation(line: 180, column: 9, scope: !3817)
!3841 = !DILocation(line: 180, column: 7, scope: !971)
!3842 = !DILocation(line: 182, column: 13, scope: !3820)
!3843 = !DILocation(line: 182, column: 11, scope: !3821)
!3844 = !DILocation(line: 190, column: 30, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3820, file: !968, line: 183, column: 9)
!3846 = !DILocation(line: 191, column: 16, scope: !3845)
!3847 = !DILocation(line: 191, column: 13, scope: !3845)
!3848 = !DILocation(line: 192, column: 9, scope: !3845)
!3849 = !DILocation(line: 197, column: 11, scope: !3824)
!3850 = !DILocation(line: 197, column: 11, scope: !3825)
!3851 = !DILocation(line: 198, column: 9, scope: !3824)
!3852 = !DILocation(line: 0, scope: !3629, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 201, column: 7, scope: !971)
!3854 = !DILocation(line: 85, column: 25, scope: !3629, inlinedAt: !3853)
!3855 = !DILocation(line: 0, scope: !3637, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 85, column: 10, scope: !3629, inlinedAt: !3853)
!3857 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3856)
!3858 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3856)
!3859 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3856)
!3860 = !DILocation(line: 202, column: 7, scope: !971)
!3861 = !DILocation(line: 203, column: 3, scope: !971)
!3862 = !DILocation(line: 0, scope: !983)
!3863 = !DILocation(line: 230, column: 14, scope: !983)
!3864 = !DILocation(line: 238, column: 7, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !983, file: !968, line: 238, column: 7)
!3866 = !DILocation(line: 238, column: 7, scope: !983)
!3867 = !DILocation(line: 240, column: 9, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !983, file: !968, line: 240, column: 7)
!3869 = !DILocation(line: 240, column: 18, scope: !3868)
!3870 = !DILocation(line: 253, column: 8, scope: !983)
!3871 = !DILocation(line: 258, column: 27, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !968, line: 257, column: 5)
!3873 = distinct !DILexicalBlock(scope: !983, file: !968, line: 256, column: 7)
!3874 = !DILocation(line: 259, column: 32, scope: !3872)
!3875 = !DILocation(line: 260, column: 5, scope: !3872)
!3876 = !DILocation(line: 262, column: 9, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !983, file: !968, line: 262, column: 7)
!3878 = !DILocation(line: 262, column: 7, scope: !983)
!3879 = !DILocation(line: 263, column: 9, scope: !3877)
!3880 = !DILocation(line: 263, column: 5, scope: !3877)
!3881 = !DILocation(line: 264, column: 9, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !983, file: !968, line: 264, column: 7)
!3883 = !DILocation(line: 264, column: 14, scope: !3882)
!3884 = !DILocation(line: 265, column: 7, scope: !3882)
!3885 = !DILocation(line: 265, column: 11, scope: !3882)
!3886 = !DILocation(line: 266, column: 11, scope: !3882)
!3887 = !DILocation(line: 267, column: 14, scope: !3882)
!3888 = !DILocation(line: 264, column: 7, scope: !983)
!3889 = !DILocation(line: 268, column: 5, scope: !3882)
!3890 = !DILocation(line: 0, scope: !3704, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 269, column: 8, scope: !983)
!3892 = !DILocation(line: 0, scope: !3712, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 70, column: 25, scope: !3704, inlinedAt: !3891)
!3894 = !DILocation(line: 2059, column: 24, scope: !3712, inlinedAt: !3893)
!3895 = !DILocation(line: 2059, column: 10, scope: !3712, inlinedAt: !3893)
!3896 = !DILocation(line: 0, scope: !3637, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 70, column: 10, scope: !3704, inlinedAt: !3891)
!3898 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3897)
!3899 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3897)
!3900 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3897)
!3901 = !DILocation(line: 270, column: 7, scope: !983)
!3902 = !DILocation(line: 271, column: 3, scope: !983)
!3903 = distinct !DISubprogram(name: "xzalloc", scope: !968, file: !968, line: 279, type: !3657, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3904)
!3904 = !{!3905}
!3905 = !DILocalVariable(name: "s", arg: 1, scope: !3903, file: !968, line: 279, type: !104)
!3906 = !DILocation(line: 0, scope: !3903)
!3907 = !DILocalVariable(name: "n", arg: 1, scope: !3908, file: !968, line: 294, type: !104)
!3908 = distinct !DISubprogram(name: "xcalloc", scope: !968, file: !968, line: 294, type: !3773, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3909)
!3909 = !{!3907, !3910}
!3910 = !DILocalVariable(name: "s", arg: 2, scope: !3908, file: !968, line: 294, type: !104)
!3911 = !DILocation(line: 0, scope: !3908, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 281, column: 10, scope: !3903)
!3913 = !DILocation(line: 296, column: 25, scope: !3908, inlinedAt: !3912)
!3914 = !DILocation(line: 0, scope: !3637, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 296, column: 10, scope: !3908, inlinedAt: !3912)
!3916 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3915)
!3917 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3915)
!3918 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3915)
!3919 = !DILocation(line: 281, column: 3, scope: !3903)
!3920 = !DISubprogram(name: "calloc", scope: !1243, file: !1243, line: 543, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!3921 = !DILocation(line: 0, scope: !3908)
!3922 = !DILocation(line: 296, column: 25, scope: !3908)
!3923 = !DILocation(line: 0, scope: !3637, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 296, column: 10, scope: !3908)
!3925 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3924)
!3926 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3924)
!3927 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3924)
!3928 = !DILocation(line: 296, column: 3, scope: !3908)
!3929 = distinct !DISubprogram(name: "xizalloc", scope: !968, file: !968, line: 285, type: !3671, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3930)
!3930 = !{!3931}
!3931 = !DILocalVariable(name: "s", arg: 1, scope: !3929, file: !968, line: 285, type: !987)
!3932 = !DILocation(line: 0, scope: !3929)
!3933 = !DILocalVariable(name: "n", arg: 1, scope: !3934, file: !968, line: 300, type: !987)
!3934 = distinct !DISubprogram(name: "xicalloc", scope: !968, file: !968, line: 300, type: !3789, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3935)
!3935 = !{!3933, !3936}
!3936 = !DILocalVariable(name: "s", arg: 2, scope: !3934, file: !968, line: 300, type: !987)
!3937 = !DILocation(line: 0, scope: !3934, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 287, column: 10, scope: !3929)
!3939 = !DILocalVariable(name: "n", arg: 1, scope: !3940, file: !3678, line: 77, type: !987)
!3940 = distinct !DISubprogram(name: "icalloc", scope: !3678, file: !3678, line: 77, type: !3789, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3941)
!3941 = !{!3939, !3942}
!3942 = !DILocalVariable(name: "s", arg: 2, scope: !3940, file: !3678, line: 77, type: !987)
!3943 = !DILocation(line: 0, scope: !3940, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 302, column: 25, scope: !3934, inlinedAt: !3938)
!3945 = !DILocation(line: 91, column: 10, scope: !3940, inlinedAt: !3944)
!3946 = !DILocation(line: 0, scope: !3637, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 302, column: 10, scope: !3934, inlinedAt: !3938)
!3948 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3947)
!3949 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3947)
!3950 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3947)
!3951 = !DILocation(line: 287, column: 3, scope: !3929)
!3952 = !DILocation(line: 0, scope: !3934)
!3953 = !DILocation(line: 0, scope: !3940, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 302, column: 25, scope: !3934)
!3955 = !DILocation(line: 91, column: 10, scope: !3940, inlinedAt: !3954)
!3956 = !DILocation(line: 0, scope: !3637, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 302, column: 10, scope: !3934)
!3958 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3957)
!3959 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3957)
!3960 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3957)
!3961 = !DILocation(line: 302, column: 3, scope: !3934)
!3962 = distinct !DISubprogram(name: "xmemdup", scope: !968, file: !968, line: 310, type: !3963, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!102, !1267, !104}
!3965 = !{!3966, !3967}
!3966 = !DILocalVariable(name: "p", arg: 1, scope: !3962, file: !968, line: 310, type: !1267)
!3967 = !DILocalVariable(name: "s", arg: 2, scope: !3962, file: !968, line: 310, type: !104)
!3968 = !DILocation(line: 0, scope: !3962)
!3969 = !DILocation(line: 0, scope: !3656, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 312, column: 18, scope: !3962)
!3971 = !DILocation(line: 49, column: 25, scope: !3656, inlinedAt: !3970)
!3972 = !DILocation(line: 0, scope: !3637, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 49, column: 10, scope: !3656, inlinedAt: !3970)
!3974 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !3973)
!3975 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !3973)
!3976 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !3973)
!3977 = !DILocalVariable(name: "__dest", arg: 1, scope: !3978, file: !2153, line: 26, type: !3981)
!3978 = distinct !DISubprogram(name: "memcpy", scope: !2153, file: !2153, line: 26, type: !3979, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3982)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!102, !3981, !1266, !104}
!3981 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!3982 = !{!3977, !3983, !3984}
!3983 = !DILocalVariable(name: "__src", arg: 2, scope: !3978, file: !2153, line: 26, type: !1266)
!3984 = !DILocalVariable(name: "__len", arg: 3, scope: !3978, file: !2153, line: 26, type: !104)
!3985 = !DILocation(line: 0, scope: !3978, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 312, column: 10, scope: !3962)
!3987 = !DILocation(line: 29, column: 10, scope: !3978, inlinedAt: !3986)
!3988 = !DILocation(line: 312, column: 3, scope: !3962)
!3989 = distinct !DISubprogram(name: "ximemdup", scope: !968, file: !968, line: 316, type: !3990, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!102, !1267, !987}
!3992 = !{!3993, !3994}
!3993 = !DILocalVariable(name: "p", arg: 1, scope: !3989, file: !968, line: 316, type: !1267)
!3994 = !DILocalVariable(name: "s", arg: 2, scope: !3989, file: !968, line: 316, type: !987)
!3995 = !DILocation(line: 0, scope: !3989)
!3996 = !DILocation(line: 0, scope: !3670, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 318, column: 18, scope: !3989)
!3998 = !DILocation(line: 0, scope: !3677, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 55, column: 25, scope: !3670, inlinedAt: !3997)
!4000 = !DILocation(line: 57, column: 26, scope: !3677, inlinedAt: !3999)
!4001 = !DILocation(line: 0, scope: !3637, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 55, column: 10, scope: !3670, inlinedAt: !3997)
!4003 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !4002)
!4004 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !4002)
!4005 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !4002)
!4006 = !DILocation(line: 0, scope: !3978, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 318, column: 10, scope: !3989)
!4008 = !DILocation(line: 29, column: 10, scope: !3978, inlinedAt: !4007)
!4009 = !DILocation(line: 318, column: 3, scope: !3989)
!4010 = distinct !DISubprogram(name: "ximemdup0", scope: !968, file: !968, line: 325, type: !4011, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!101, !1267, !987}
!4013 = !{!4014, !4015, !4016}
!4014 = !DILocalVariable(name: "p", arg: 1, scope: !4010, file: !968, line: 325, type: !1267)
!4015 = !DILocalVariable(name: "s", arg: 2, scope: !4010, file: !968, line: 325, type: !987)
!4016 = !DILocalVariable(name: "result", scope: !4010, file: !968, line: 327, type: !101)
!4017 = !DILocation(line: 0, scope: !4010)
!4018 = !DILocation(line: 327, column: 30, scope: !4010)
!4019 = !DILocation(line: 0, scope: !3670, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 327, column: 18, scope: !4010)
!4021 = !DILocation(line: 0, scope: !3677, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 55, column: 25, scope: !3670, inlinedAt: !4020)
!4023 = !DILocation(line: 57, column: 26, scope: !3677, inlinedAt: !4022)
!4024 = !DILocation(line: 0, scope: !3637, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 55, column: 10, scope: !3670, inlinedAt: !4020)
!4026 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !4025)
!4027 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !4025)
!4028 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !4025)
!4029 = !DILocation(line: 328, column: 3, scope: !4010)
!4030 = !DILocation(line: 328, column: 13, scope: !4010)
!4031 = !DILocation(line: 0, scope: !3978, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 329, column: 10, scope: !4010)
!4033 = !DILocation(line: 29, column: 10, scope: !3978, inlinedAt: !4032)
!4034 = !DILocation(line: 329, column: 3, scope: !4010)
!4035 = distinct !DISubprogram(name: "xstrdup", scope: !968, file: !968, line: 335, type: !1245, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !4036)
!4036 = !{!4037}
!4037 = !DILocalVariable(name: "string", arg: 1, scope: !4035, file: !968, line: 335, type: !107)
!4038 = !DILocation(line: 0, scope: !4035)
!4039 = !DILocation(line: 337, column: 27, scope: !4035)
!4040 = !DILocation(line: 337, column: 43, scope: !4035)
!4041 = !DILocation(line: 0, scope: !3962, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 337, column: 10, scope: !4035)
!4043 = !DILocation(line: 0, scope: !3656, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 312, column: 18, scope: !3962, inlinedAt: !4042)
!4045 = !DILocation(line: 49, column: 25, scope: !3656, inlinedAt: !4044)
!4046 = !DILocation(line: 0, scope: !3637, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 49, column: 10, scope: !3656, inlinedAt: !4044)
!4048 = !DILocation(line: 39, column: 8, scope: !3644, inlinedAt: !4047)
!4049 = !DILocation(line: 39, column: 7, scope: !3637, inlinedAt: !4047)
!4050 = !DILocation(line: 40, column: 5, scope: !3644, inlinedAt: !4047)
!4051 = !DILocation(line: 0, scope: !3978, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 312, column: 10, scope: !3962, inlinedAt: !4042)
!4053 = !DILocation(line: 29, column: 10, scope: !3978, inlinedAt: !4052)
!4054 = !DILocation(line: 337, column: 3, scope: !4035)
!4055 = distinct !DISubprogram(name: "xalloc_die", scope: !702, file: !702, line: 32, type: !423, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !4056)
!4056 = !{!4057}
!4057 = !DILocalVariable(name: "__errstatus", scope: !4058, file: !702, line: 34, type: !4059)
!4058 = distinct !DILexicalBlock(scope: !4055, file: !702, line: 34, column: 3)
!4059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4060 = !DILocation(line: 34, column: 3, scope: !4058)
!4061 = !DILocation(line: 0, scope: !4058)
!4062 = !DILocation(line: 40, column: 3, scope: !4055)
!4063 = distinct !DISubprogram(name: "xnumtoumax", scope: !709, file: !709, line: 42, type: !4064, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !4066)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!1019, !107, !70, !1019, !1019, !107, !107, !70, !70}
!4066 = !{!4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4079, !4080, !4081}
!4067 = !DILocalVariable(name: "n_str", arg: 1, scope: !4063, file: !709, line: 42, type: !107)
!4068 = !DILocalVariable(name: "base", arg: 2, scope: !4063, file: !709, line: 42, type: !70)
!4069 = !DILocalVariable(name: "min", arg: 3, scope: !4063, file: !709, line: 42, type: !1019)
!4070 = !DILocalVariable(name: "max", arg: 4, scope: !4063, file: !709, line: 42, type: !1019)
!4071 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4063, file: !709, line: 43, type: !107)
!4072 = !DILocalVariable(name: "err", arg: 6, scope: !4063, file: !709, line: 43, type: !107)
!4073 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4063, file: !709, line: 43, type: !70)
!4074 = !DILocalVariable(name: "flags", arg: 8, scope: !4063, file: !709, line: 44, type: !70)
!4075 = !DILocalVariable(name: "tnum", scope: !4063, file: !709, line: 46, type: !1019)
!4076 = !DILocalVariable(name: "r", scope: !4063, file: !709, line: 46, type: !1019)
!4077 = !DILocalVariable(name: "s_err", scope: !4063, file: !709, line: 47, type: !4078)
!4078 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1007, line: 43, baseType: !1006)
!4079 = !DILocalVariable(name: "overflow_errno", scope: !4063, file: !709, line: 50, type: !70)
!4080 = !DILocalVariable(name: "e", scope: !4063, file: !709, line: 75, type: !70)
!4081 = !DILocalVariable(name: "__errstatus", scope: !4082, file: !709, line: 80, type: !4059)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !709, line: 80, column: 5)
!4083 = distinct !DILexicalBlock(scope: !4063, file: !709, line: 77, column: 7)
!4084 = !DILocation(line: 0, scope: !4063)
!4085 = !DILocation(line: 46, column: 3, scope: !4063)
!4086 = !DILocation(line: 47, column: 24, scope: !4063)
!4087 = !DILocation(line: 52, column: 13, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4063, file: !709, line: 52, column: 7)
!4089 = !DILocation(line: 52, column: 7, scope: !4063)
!4090 = !DILocation(line: 54, column: 11, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !709, line: 54, column: 11)
!4092 = distinct !DILexicalBlock(scope: !4088, file: !709, line: 53, column: 5)
!4093 = !DILocation(line: 54, column: 16, scope: !4091)
!4094 = !DILocation(line: 54, column: 11, scope: !4092)
!4095 = !DILocation(line: 57, column: 34, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4091, file: !709, line: 55, column: 9)
!4097 = !DILocation(line: 57, column: 28, scope: !4096)
!4098 = !DILocation(line: 58, column: 21, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4096, file: !709, line: 58, column: 15)
!4100 = !DILocation(line: 0, scope: !4096)
!4101 = !DILocation(line: 61, column: 20, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4091, file: !709, line: 61, column: 16)
!4103 = !DILocation(line: 61, column: 16, scope: !4091)
!4104 = !DILocation(line: 64, column: 34, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4102, file: !709, line: 62, column: 9)
!4106 = !DILocation(line: 64, column: 28, scope: !4105)
!4107 = !DILocation(line: 65, column: 21, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4105, file: !709, line: 65, column: 15)
!4109 = !DILocation(line: 0, scope: !4105)
!4110 = !DILocation(line: 75, column: 17, scope: !4063)
!4111 = !DILocation(line: 75, column: 11, scope: !4063)
!4112 = !DILocation(line: 77, column: 16, scope: !4083)
!4113 = !DILocation(line: 78, column: 10, scope: !4083)
!4114 = !DILocation(line: 79, column: 14, scope: !4083)
!4115 = !DILocation(line: 80, column: 5, scope: !4083)
!4116 = !DILocation(line: 82, column: 3, scope: !4063)
!4117 = !DILocation(line: 82, column: 9, scope: !4063)
!4118 = !DILocation(line: 84, column: 1, scope: !4063)
!4119 = !DILocation(line: 83, column: 3, scope: !4063)
!4120 = distinct !DISubprogram(name: "xdectoumax", scope: !709, file: !709, line: 92, type: !4121, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!1019, !107, !1019, !1019, !107, !107, !70}
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4129}
!4124 = !DILocalVariable(name: "n_str", arg: 1, scope: !4120, file: !709, line: 92, type: !107)
!4125 = !DILocalVariable(name: "min", arg: 2, scope: !4120, file: !709, line: 92, type: !1019)
!4126 = !DILocalVariable(name: "max", arg: 3, scope: !4120, file: !709, line: 92, type: !1019)
!4127 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4120, file: !709, line: 93, type: !107)
!4128 = !DILocalVariable(name: "err", arg: 5, scope: !4120, file: !709, line: 93, type: !107)
!4129 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4120, file: !709, line: 93, type: !70)
!4130 = !DILocation(line: 0, scope: !4120)
!4131 = !DILocation(line: 0, scope: !4063, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 95, column: 10, scope: !4120)
!4133 = !DILocation(line: 46, column: 3, scope: !4063, inlinedAt: !4132)
!4134 = !DILocation(line: 47, column: 24, scope: !4063, inlinedAt: !4132)
!4135 = !DILocation(line: 52, column: 13, scope: !4088, inlinedAt: !4132)
!4136 = !DILocation(line: 52, column: 7, scope: !4063, inlinedAt: !4132)
!4137 = !DILocation(line: 54, column: 11, scope: !4091, inlinedAt: !4132)
!4138 = !DILocation(line: 54, column: 16, scope: !4091, inlinedAt: !4132)
!4139 = !DILocation(line: 54, column: 11, scope: !4092, inlinedAt: !4132)
!4140 = !DILocation(line: 58, column: 21, scope: !4099, inlinedAt: !4132)
!4141 = !DILocation(line: 0, scope: !4096, inlinedAt: !4132)
!4142 = !DILocation(line: 61, column: 20, scope: !4102, inlinedAt: !4132)
!4143 = !DILocation(line: 61, column: 16, scope: !4091, inlinedAt: !4132)
!4144 = !DILocation(line: 65, column: 21, scope: !4108, inlinedAt: !4132)
!4145 = !DILocation(line: 0, scope: !4105, inlinedAt: !4132)
!4146 = !DILocation(line: 75, column: 17, scope: !4063, inlinedAt: !4132)
!4147 = !DILocation(line: 75, column: 11, scope: !4063, inlinedAt: !4132)
!4148 = !DILocation(line: 77, column: 16, scope: !4083, inlinedAt: !4132)
!4149 = !DILocation(line: 78, column: 10, scope: !4083, inlinedAt: !4132)
!4150 = !DILocation(line: 80, column: 5, scope: !4083, inlinedAt: !4132)
!4151 = !DILocation(line: 82, column: 3, scope: !4063, inlinedAt: !4132)
!4152 = !DILocation(line: 82, column: 9, scope: !4063, inlinedAt: !4132)
!4153 = !DILocation(line: 84, column: 1, scope: !4063, inlinedAt: !4132)
!4154 = !DILocation(line: 95, column: 3, scope: !4120)
!4155 = distinct !DISubprogram(name: "xstrtoumax", scope: !4156, file: !4156, line: 71, type: !4157, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !4160)
!4156 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!4078, !107, !1272, !70, !4159, !107}
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!4160 = !{!4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4171, !4172, !4173, !4174, !4177, !4178}
!4161 = !DILocalVariable(name: "nptr", arg: 1, scope: !4155, file: !4156, line: 71, type: !107)
!4162 = !DILocalVariable(name: "endptr", arg: 2, scope: !4155, file: !4156, line: 71, type: !1272)
!4163 = !DILocalVariable(name: "base", arg: 3, scope: !4155, file: !4156, line: 71, type: !70)
!4164 = !DILocalVariable(name: "val", arg: 4, scope: !4155, file: !4156, line: 72, type: !4159)
!4165 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4155, file: !4156, line: 72, type: !107)
!4166 = !DILocalVariable(name: "t_ptr", scope: !4155, file: !4156, line: 74, type: !101)
!4167 = !DILocalVariable(name: "p", scope: !4155, file: !4156, line: 75, type: !1272)
!4168 = !DILocalVariable(name: "q", scope: !4169, file: !4156, line: 79, type: !107)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !4156, line: 78, column: 5)
!4170 = distinct !DILexicalBlock(scope: !4155, file: !4156, line: 77, column: 7)
!4171 = !DILocalVariable(name: "ch", scope: !4169, file: !4156, line: 80, type: !109)
!4172 = !DILocalVariable(name: "tmp", scope: !4155, file: !4156, line: 91, type: !1019)
!4173 = !DILocalVariable(name: "err", scope: !4155, file: !4156, line: 92, type: !4078)
!4174 = !DILocalVariable(name: "xbase", scope: !4175, file: !4156, line: 126, type: !70)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !4156, line: 119, column: 5)
!4176 = distinct !DILexicalBlock(scope: !4155, file: !4156, line: 118, column: 7)
!4177 = !DILocalVariable(name: "suffixes", scope: !4175, file: !4156, line: 127, type: !70)
!4178 = !DILocalVariable(name: "overflow", scope: !4175, file: !4156, line: 156, type: !4078)
!4179 = !DILocation(line: 0, scope: !4155)
!4180 = !DILocation(line: 74, column: 3, scope: !4155)
!4181 = !DILocation(line: 75, column: 14, scope: !4155)
!4182 = !DILocation(line: 0, scope: !4169)
!4183 = !DILocation(line: 81, column: 7, scope: !4169)
!4184 = !DILocation(line: 81, column: 14, scope: !4169)
!4185 = !DILocation(line: 82, column: 15, scope: !4169)
!4186 = distinct !{!4186, !4183, !4187, !1169}
!4187 = !DILocation(line: 82, column: 17, scope: !4169)
!4188 = !DILocation(line: 83, column: 14, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4169, file: !4156, line: 83, column: 11)
!4190 = !DILocation(line: 83, column: 11, scope: !4169)
!4191 = !DILocation(line: 85, column: 14, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4189, file: !4156, line: 84, column: 9)
!4193 = !DILocation(line: 90, column: 3, scope: !4155)
!4194 = !DILocation(line: 90, column: 9, scope: !4155)
!4195 = !DILocation(line: 91, column: 20, scope: !4155)
!4196 = !DILocation(line: 94, column: 7, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4155, file: !4156, line: 94, column: 7)
!4198 = !DILocation(line: 94, column: 10, scope: !4197)
!4199 = !DILocation(line: 94, column: 7, scope: !4155)
!4200 = !DILocation(line: 98, column: 14, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !4156, line: 98, column: 11)
!4202 = distinct !DILexicalBlock(scope: !4197, file: !4156, line: 95, column: 5)
!4203 = !DILocation(line: 98, column: 29, scope: !4201)
!4204 = !DILocation(line: 98, column: 32, scope: !4201)
!4205 = !DILocation(line: 98, column: 38, scope: !4201)
!4206 = !DILocation(line: 98, column: 41, scope: !4201)
!4207 = !DILocation(line: 98, column: 11, scope: !4202)
!4208 = !DILocation(line: 102, column: 12, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4197, file: !4156, line: 102, column: 12)
!4210 = !DILocation(line: 102, column: 12, scope: !4197)
!4211 = !DILocation(line: 107, column: 5, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4209, file: !4156, line: 103, column: 5)
!4213 = !DILocation(line: 112, column: 8, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4155, file: !4156, line: 112, column: 7)
!4215 = !DILocation(line: 112, column: 7, scope: !4155)
!4216 = !DILocation(line: 114, column: 12, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !4156, line: 113, column: 5)
!4218 = !DILocation(line: 115, column: 7, scope: !4217)
!4219 = !DILocation(line: 118, column: 7, scope: !4176)
!4220 = !DILocation(line: 118, column: 11, scope: !4176)
!4221 = !DILocation(line: 118, column: 7, scope: !4155)
!4222 = !DILocation(line: 120, column: 12, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4175, file: !4156, line: 120, column: 11)
!4224 = !DILocation(line: 120, column: 11, scope: !4175)
!4225 = !DILocation(line: 122, column: 16, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4223, file: !4156, line: 121, column: 9)
!4227 = !DILocation(line: 123, column: 22, scope: !4226)
!4228 = !DILocation(line: 123, column: 11, scope: !4226)
!4229 = !DILocation(line: 0, scope: !4175)
!4230 = !DILocation(line: 128, column: 7, scope: !4175)
!4231 = !DILocation(line: 140, column: 15, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !4156, line: 140, column: 15)
!4233 = distinct !DILexicalBlock(scope: !4175, file: !4156, line: 129, column: 9)
!4234 = !DILocation(line: 140, column: 15, scope: !4233)
!4235 = !DILocation(line: 141, column: 21, scope: !4232)
!4236 = !DILocation(line: 141, column: 13, scope: !4232)
!4237 = !DILocation(line: 144, column: 21, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !4156, line: 144, column: 21)
!4239 = distinct !DILexicalBlock(scope: !4232, file: !4156, line: 142, column: 15)
!4240 = !DILocation(line: 144, column: 29, scope: !4238)
!4241 = !DILocation(line: 144, column: 21, scope: !4239)
!4242 = !DILocation(line: 152, column: 17, scope: !4239)
!4243 = !DILocation(line: 157, column: 7, scope: !4175)
!4244 = !DILocalVariable(name: "err", scope: !4245, file: !4156, line: 64, type: !4078)
!4245 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4156, file: !4156, line: 62, type: !4246, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!4078, !4159, !70, !70}
!4248 = !{!4249, !4250, !4251, !4244}
!4249 = !DILocalVariable(name: "x", arg: 1, scope: !4245, file: !4156, line: 62, type: !4159)
!4250 = !DILocalVariable(name: "base", arg: 2, scope: !4245, file: !4156, line: 62, type: !70)
!4251 = !DILocalVariable(name: "power", arg: 3, scope: !4245, file: !4156, line: 62, type: !70)
!4252 = !DILocation(line: 0, scope: !4245, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 219, column: 22, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4175, file: !4156, line: 158, column: 9)
!4255 = !DILocalVariable(name: "x", arg: 1, scope: !4256, file: !4156, line: 47, type: !4159)
!4256 = distinct !DISubprogram(name: "bkm_scale", scope: !4156, file: !4156, line: 47, type: !4257, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!4078, !4159, !70}
!4259 = !{!4255, !4260, !4261}
!4260 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4256, file: !4156, line: 47, type: !70)
!4261 = !DILocalVariable(name: "scaled", scope: !4256, file: !4156, line: 49, type: !1019)
!4262 = !DILocation(line: 0, scope: !4256, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4253)
!4264 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4263)
!4265 = distinct !DILexicalBlock(scope: !4256, file: !4156, line: 50, column: 7)
!4266 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4253)
!4267 = !DILocation(line: 227, column: 11, scope: !4175)
!4268 = !DILocation(line: 0, scope: !4245, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 215, column: 22, scope: !4254)
!4270 = !DILocation(line: 0, scope: !4256, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4269)
!4272 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4271)
!4273 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4269)
!4274 = !DILocation(line: 0, scope: !4245, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 202, column: 22, scope: !4254)
!4276 = !DILocation(line: 0, scope: !4256, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4275)
!4278 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4277)
!4279 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4275)
!4280 = !DILocation(line: 0, scope: !4245, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 198, column: 22, scope: !4254)
!4282 = !DILocation(line: 0, scope: !4256, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4281)
!4284 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4283)
!4285 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4281)
!4286 = !DILocation(line: 0, scope: !4245, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 194, column: 22, scope: !4254)
!4288 = !DILocation(line: 0, scope: !4256, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4287)
!4290 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4289)
!4291 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4287)
!4292 = !DILocation(line: 0, scope: !4245, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 175, column: 22, scope: !4254)
!4294 = !DILocation(line: 0, scope: !4256, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4293)
!4296 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4295)
!4297 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4293)
!4298 = !DILocation(line: 0, scope: !4256, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 160, column: 22, scope: !4254)
!4300 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4299)
!4301 = !DILocation(line: 161, column: 11, scope: !4254)
!4302 = !DILocation(line: 0, scope: !4256, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 167, column: 22, scope: !4254)
!4304 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4303)
!4305 = !DILocation(line: 168, column: 11, scope: !4254)
!4306 = !DILocation(line: 0, scope: !4245, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 180, column: 22, scope: !4254)
!4308 = !DILocation(line: 0, scope: !4256, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4307)
!4310 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4309)
!4311 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4307)
!4312 = !DILocation(line: 0, scope: !4245, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 185, column: 22, scope: !4254)
!4314 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4313)
!4316 = !DILocation(line: 0, scope: !4256, inlinedAt: !4315)
!4317 = !DILocation(line: 0, scope: !4245, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 190, column: 22, scope: !4254)
!4319 = !DILocation(line: 0, scope: !4256, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4318)
!4321 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4320)
!4322 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4318)
!4323 = !DILocation(line: 0, scope: !4245, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 207, column: 22, scope: !4254)
!4325 = !DILocation(line: 0, scope: !4256, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 66, column: 12, scope: !4245, inlinedAt: !4324)
!4327 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4326)
!4328 = !DILocation(line: 66, column: 9, scope: !4245, inlinedAt: !4324)
!4329 = !DILocation(line: 0, scope: !4256, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 211, column: 22, scope: !4254)
!4331 = !DILocation(line: 50, column: 7, scope: !4265, inlinedAt: !4330)
!4332 = !DILocation(line: 212, column: 11, scope: !4254)
!4333 = !DILocation(line: 0, scope: !4254)
!4334 = !DILocation(line: 228, column: 10, scope: !4175)
!4335 = !DILocation(line: 229, column: 11, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4175, file: !4156, line: 229, column: 11)
!4337 = !DILocation(line: 229, column: 11, scope: !4175)
!4338 = !DILocation(line: 223, column: 16, scope: !4254)
!4339 = !DILocation(line: 224, column: 22, scope: !4254)
!4340 = !DILocation(line: 100, column: 11, scope: !4202)
!4341 = !DILocation(line: 92, column: 16, scope: !4155)
!4342 = !DILocation(line: 233, column: 8, scope: !4155)
!4343 = !DILocation(line: 234, column: 3, scope: !4155)
!4344 = !DILocation(line: 235, column: 1, scope: !4155)
!4345 = !DISubprogram(name: "strtoumax", scope: !4346, file: !4346, line: 301, type: !4347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4346 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!1019, !1113, !1992, !70}
!4349 = distinct !DISubprogram(name: "rpl_fopen", scope: !1023, file: !1023, line: 46, type: !4350, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !4386)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!4352, !107, !107}
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4354)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4355)
!4355 = !{!4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4354, file: !165, line: 51, baseType: !70, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4354, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4354, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4354, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4354, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4354, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4354, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4354, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4354, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4354, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4354, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4354, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4354, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4354, file: !165, line: 70, baseType: !4370, size: 64, offset: 832)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4354, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4354, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4354, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4354, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4354, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4354, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4354, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4354, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4354, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4354, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4354, file: !165, line: 93, baseType: !4370, size: 64, offset: 1344)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4354, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4354, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4354, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4354, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4386 = !{!4387, !4388, !4389, !4390, !4391, !4392, !4396, !4398, !4399, !4404, !4407, !4408}
!4387 = !DILocalVariable(name: "filename", arg: 1, scope: !4349, file: !1023, line: 46, type: !107)
!4388 = !DILocalVariable(name: "mode", arg: 2, scope: !4349, file: !1023, line: 46, type: !107)
!4389 = !DILocalVariable(name: "open_direction", scope: !4349, file: !1023, line: 54, type: !70)
!4390 = !DILocalVariable(name: "open_flags", scope: !4349, file: !1023, line: 55, type: !70)
!4391 = !DILocalVariable(name: "open_flags_gnu", scope: !4349, file: !1023, line: 57, type: !148)
!4392 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4349, file: !1023, line: 59, type: !4393)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4394)
!4394 = !{!4395}
!4395 = !DISubrange(count: 81)
!4396 = !DILocalVariable(name: "p", scope: !4397, file: !1023, line: 62, type: !107)
!4397 = distinct !DILexicalBlock(scope: !4349, file: !1023, line: 61, column: 3)
!4398 = !DILocalVariable(name: "q", scope: !4397, file: !1023, line: 64, type: !101)
!4399 = !DILocalVariable(name: "len", scope: !4400, file: !1023, line: 128, type: !104)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !1023, line: 127, column: 9)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !1023, line: 68, column: 7)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !1023, line: 67, column: 5)
!4403 = distinct !DILexicalBlock(scope: !4397, file: !1023, line: 67, column: 5)
!4404 = !DILocalVariable(name: "fd", scope: !4405, file: !1023, line: 199, type: !70)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !1023, line: 198, column: 5)
!4406 = distinct !DILexicalBlock(scope: !4349, file: !1023, line: 197, column: 7)
!4407 = !DILocalVariable(name: "fp", scope: !4405, file: !1023, line: 204, type: !4352)
!4408 = !DILocalVariable(name: "saved_errno", scope: !4409, file: !1023, line: 207, type: !70)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !1023, line: 206, column: 9)
!4410 = distinct !DILexicalBlock(scope: !4405, file: !1023, line: 205, column: 11)
!4411 = !DILocation(line: 0, scope: !4349)
!4412 = !DILocation(line: 59, column: 3, scope: !4349)
!4413 = !DILocation(line: 59, column: 8, scope: !4349)
!4414 = !DILocation(line: 0, scope: !4397)
!4415 = !DILocation(line: 67, column: 5, scope: !4397)
!4416 = !DILocation(line: 54, column: 7, scope: !4349)
!4417 = !DILocation(line: 67, column: 12, scope: !4402)
!4418 = !DILocation(line: 67, column: 5, scope: !4403)
!4419 = !DILocation(line: 74, column: 19, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !1023, line: 74, column: 17)
!4421 = distinct !DILexicalBlock(scope: !4401, file: !1023, line: 70, column: 11)
!4422 = !DILocation(line: 74, column: 17, scope: !4421)
!4423 = !DILocation(line: 75, column: 17, scope: !4420)
!4424 = !DILocation(line: 75, column: 20, scope: !4420)
!4425 = !DILocation(line: 75, column: 15, scope: !4420)
!4426 = !DILocation(line: 80, column: 24, scope: !4421)
!4427 = !DILocation(line: 82, column: 19, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4421, file: !1023, line: 82, column: 17)
!4429 = !DILocation(line: 82, column: 17, scope: !4421)
!4430 = !DILocation(line: 83, column: 17, scope: !4428)
!4431 = !DILocation(line: 83, column: 20, scope: !4428)
!4432 = !DILocation(line: 83, column: 15, scope: !4428)
!4433 = !DILocation(line: 88, column: 24, scope: !4421)
!4434 = !DILocation(line: 90, column: 19, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4421, file: !1023, line: 90, column: 17)
!4436 = !DILocation(line: 90, column: 17, scope: !4421)
!4437 = !DILocation(line: 91, column: 17, scope: !4435)
!4438 = !DILocation(line: 91, column: 20, scope: !4435)
!4439 = !DILocation(line: 91, column: 15, scope: !4435)
!4440 = !DILocation(line: 100, column: 19, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4421, file: !1023, line: 100, column: 17)
!4442 = !DILocation(line: 100, column: 17, scope: !4421)
!4443 = !DILocation(line: 101, column: 17, scope: !4441)
!4444 = !DILocation(line: 101, column: 20, scope: !4441)
!4445 = !DILocation(line: 101, column: 15, scope: !4441)
!4446 = !DILocation(line: 107, column: 19, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4421, file: !1023, line: 107, column: 17)
!4448 = !DILocation(line: 107, column: 17, scope: !4421)
!4449 = !DILocation(line: 108, column: 17, scope: !4447)
!4450 = !DILocation(line: 108, column: 20, scope: !4447)
!4451 = !DILocation(line: 108, column: 15, scope: !4447)
!4452 = !DILocation(line: 113, column: 24, scope: !4421)
!4453 = !DILocation(line: 115, column: 13, scope: !4421)
!4454 = !DILocation(line: 117, column: 24, scope: !4421)
!4455 = !DILocation(line: 119, column: 13, scope: !4421)
!4456 = !DILocation(line: 128, column: 24, scope: !4400)
!4457 = !DILocation(line: 0, scope: !4400)
!4458 = !DILocation(line: 129, column: 48, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4400, file: !1023, line: 129, column: 15)
!4460 = !DILocation(line: 129, column: 15, scope: !4400)
!4461 = !DILocalVariable(name: "__dest", arg: 1, scope: !4462, file: !2153, line: 26, type: !3981)
!4462 = distinct !DISubprogram(name: "memcpy", scope: !2153, file: !2153, line: 26, type: !3979, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !4463)
!4463 = !{!4461, !4464, !4465}
!4464 = !DILocalVariable(name: "__src", arg: 2, scope: !4462, file: !2153, line: 26, type: !1266)
!4465 = !DILocalVariable(name: "__len", arg: 3, scope: !4462, file: !2153, line: 26, type: !104)
!4466 = !DILocation(line: 0, scope: !4462, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 131, column: 11, scope: !4400)
!4468 = !DILocation(line: 29, column: 10, scope: !4462, inlinedAt: !4467)
!4469 = !DILocation(line: 132, column: 13, scope: !4400)
!4470 = !DILocation(line: 135, column: 9, scope: !4401)
!4471 = !DILocation(line: 67, column: 25, scope: !4402)
!4472 = !DILocation(line: 67, column: 5, scope: !4402)
!4473 = distinct !{!4473, !4418, !4474, !1169}
!4474 = !DILocation(line: 136, column: 7, scope: !4403)
!4475 = !DILocation(line: 138, column: 8, scope: !4397)
!4476 = !DILocation(line: 197, column: 7, scope: !4349)
!4477 = !DILocation(line: 199, column: 47, scope: !4405)
!4478 = !DILocation(line: 199, column: 16, scope: !4405)
!4479 = !DILocation(line: 0, scope: !4405)
!4480 = !DILocation(line: 201, column: 14, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4405, file: !1023, line: 201, column: 11)
!4482 = !DILocation(line: 201, column: 11, scope: !4405)
!4483 = !DILocation(line: 204, column: 18, scope: !4405)
!4484 = !DILocation(line: 205, column: 14, scope: !4410)
!4485 = !DILocation(line: 205, column: 11, scope: !4405)
!4486 = !DILocation(line: 207, column: 29, scope: !4409)
!4487 = !DILocation(line: 0, scope: !4409)
!4488 = !DILocation(line: 208, column: 11, scope: !4409)
!4489 = !DILocation(line: 209, column: 17, scope: !4409)
!4490 = !DILocation(line: 210, column: 9, scope: !4409)
!4491 = !DILocalVariable(name: "filename", arg: 1, scope: !4492, file: !1023, line: 30, type: !107)
!4492 = distinct !DISubprogram(name: "orig_fopen", scope: !1023, file: !1023, line: 30, type: !4350, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !4493)
!4493 = !{!4491, !4494}
!4494 = !DILocalVariable(name: "mode", arg: 2, scope: !4492, file: !1023, line: 30, type: !107)
!4495 = !DILocation(line: 0, scope: !4492, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 219, column: 10, scope: !4349)
!4497 = !DILocation(line: 32, column: 10, scope: !4492, inlinedAt: !4496)
!4498 = !DILocation(line: 219, column: 3, scope: !4349)
!4499 = !DILocation(line: 220, column: 1, scope: !4349)
!4500 = !DISubprogram(name: "open", scope: !1541, file: !1541, line: 181, type: !4501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!70, !107, !70, null}
!4503 = !DISubprogram(name: "fdopen", scope: !382, file: !382, line: 293, type: !4504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!4352, !70, !107}
!4506 = !DISubprogram(name: "close", scope: !1383, file: !1383, line: 358, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4507 = !DISubprogram(name: "fopen", scope: !382, file: !382, line: 258, type: !4508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!4352, !1113, !1113}
!4510 = distinct !DISubprogram(name: "close_stream", scope: !1025, file: !1025, line: 55, type: !4511, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4547)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!70, !4513}
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4515)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4516)
!4516 = !{!4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4515, file: !165, line: 51, baseType: !70, size: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4515, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4515, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4515, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4515, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4515, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4515, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4515, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4515, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4515, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4515, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4515, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4515, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4515, file: !165, line: 70, baseType: !4531, size: 64, offset: 832)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4515, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4515, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4515, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4515, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4515, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4515, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4515, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4515, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4515, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4515, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4515, file: !165, line: 93, baseType: !4531, size: 64, offset: 1344)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4515, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4515, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4515, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4515, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4547 = !{!4548, !4549, !4551, !4552}
!4548 = !DILocalVariable(name: "stream", arg: 1, scope: !4510, file: !1025, line: 55, type: !4513)
!4549 = !DILocalVariable(name: "some_pending", scope: !4510, file: !1025, line: 57, type: !4550)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!4551 = !DILocalVariable(name: "prev_fail", scope: !4510, file: !1025, line: 58, type: !4550)
!4552 = !DILocalVariable(name: "fclose_fail", scope: !4510, file: !1025, line: 59, type: !4550)
!4553 = !DILocation(line: 0, scope: !4510)
!4554 = !DILocation(line: 57, column: 30, scope: !4510)
!4555 = !DILocalVariable(name: "__stream", arg: 1, scope: !4556, file: !1509, line: 135, type: !4513)
!4556 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1509, file: !1509, line: 135, type: !4511, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4557)
!4557 = !{!4555}
!4558 = !DILocation(line: 0, scope: !4556, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 58, column: 27, scope: !4510)
!4560 = !DILocation(line: 137, column: 10, scope: !4556, inlinedAt: !4559)
!4561 = !{!1518, !1123, i64 0}
!4562 = !DILocation(line: 58, column: 43, scope: !4510)
!4563 = !DILocation(line: 59, column: 29, scope: !4510)
!4564 = !DILocation(line: 59, column: 45, scope: !4510)
!4565 = !DILocation(line: 69, column: 17, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4510, file: !1025, line: 69, column: 7)
!4567 = !DILocation(line: 57, column: 50, scope: !4510)
!4568 = !DILocation(line: 69, column: 33, scope: !4566)
!4569 = !DILocation(line: 69, column: 53, scope: !4566)
!4570 = !DILocation(line: 69, column: 59, scope: !4566)
!4571 = !DILocation(line: 69, column: 7, scope: !4510)
!4572 = !DILocation(line: 71, column: 11, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4566, file: !1025, line: 70, column: 5)
!4574 = !DILocation(line: 72, column: 9, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4573, file: !1025, line: 71, column: 11)
!4576 = !DILocation(line: 72, column: 15, scope: !4575)
!4577 = !DILocation(line: 77, column: 1, scope: !4510)
!4578 = !DISubprogram(name: "__fpending", scope: !4579, file: !4579, line: 75, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4579 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!104, !4513}
!4582 = distinct !DISubprogram(name: "rpl_fclose", scope: !1027, file: !1027, line: 58, type: !4583, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !4619)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!70, !4585}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4587)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4587, file: !165, line: 51, baseType: !70, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4587, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4587, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4587, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4587, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4587, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4587, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4587, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4587, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4587, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4587, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4587, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4587, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4587, file: !165, line: 70, baseType: !4603, size: 64, offset: 832)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4587, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4587, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4587, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4587, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4587, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4587, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4587, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4587, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4587, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4587, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4587, file: !165, line: 93, baseType: !4603, size: 64, offset: 1344)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4587, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4587, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4587, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4587, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4619 = !{!4620, !4621, !4622, !4623}
!4620 = !DILocalVariable(name: "fp", arg: 1, scope: !4582, file: !1027, line: 58, type: !4585)
!4621 = !DILocalVariable(name: "saved_errno", scope: !4582, file: !1027, line: 60, type: !70)
!4622 = !DILocalVariable(name: "fd", scope: !4582, file: !1027, line: 63, type: !70)
!4623 = !DILocalVariable(name: "result", scope: !4582, file: !1027, line: 74, type: !70)
!4624 = !DILocation(line: 0, scope: !4582)
!4625 = !DILocation(line: 63, column: 12, scope: !4582)
!4626 = !DILocation(line: 64, column: 10, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4582, file: !1027, line: 64, column: 7)
!4628 = !DILocation(line: 64, column: 7, scope: !4582)
!4629 = !DILocation(line: 65, column: 12, scope: !4627)
!4630 = !DILocation(line: 65, column: 5, scope: !4627)
!4631 = !DILocation(line: 70, column: 9, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4582, file: !1027, line: 70, column: 7)
!4633 = !DILocation(line: 70, column: 23, scope: !4632)
!4634 = !DILocation(line: 70, column: 33, scope: !4632)
!4635 = !DILocation(line: 70, column: 26, scope: !4632)
!4636 = !DILocation(line: 70, column: 59, scope: !4632)
!4637 = !DILocation(line: 71, column: 7, scope: !4632)
!4638 = !DILocation(line: 71, column: 10, scope: !4632)
!4639 = !DILocation(line: 70, column: 7, scope: !4582)
!4640 = !DILocation(line: 100, column: 12, scope: !4582)
!4641 = !DILocation(line: 105, column: 7, scope: !4582)
!4642 = !DILocation(line: 72, column: 19, scope: !4632)
!4643 = !DILocation(line: 105, column: 19, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4582, file: !1027, line: 105, column: 7)
!4645 = !DILocation(line: 107, column: 13, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4644, file: !1027, line: 106, column: 5)
!4647 = !DILocation(line: 109, column: 5, scope: !4646)
!4648 = !DILocation(line: 112, column: 1, scope: !4582)
!4649 = !DISubprogram(name: "fileno", scope: !382, file: !382, line: 809, type: !4583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4650 = !DISubprogram(name: "fclose", scope: !382, file: !382, line: 178, type: !4583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4651 = !DISubprogram(name: "__freading", scope: !4579, file: !4579, line: 51, type: !4583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4652 = !DISubprogram(name: "lseek", scope: !1383, file: !1383, line: 339, type: !4653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!187, !70, !187, !70}
!4655 = distinct !DISubprogram(name: "rpl_fflush", scope: !1029, file: !1029, line: 130, type: !4656, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4692)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!70, !4658}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4660)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4661)
!4661 = !{!4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4660, file: !165, line: 51, baseType: !70, size: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4660, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4660, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4660, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4660, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4660, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4660, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4660, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4660, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4660, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4660, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4660, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4660, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4660, file: !165, line: 70, baseType: !4676, size: 64, offset: 832)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4660, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4660, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4660, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4660, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4660, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4660, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4660, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4660, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4660, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4660, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4660, file: !165, line: 93, baseType: !4676, size: 64, offset: 1344)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4660, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4660, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4660, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4660, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4692 = !{!4693}
!4693 = !DILocalVariable(name: "stream", arg: 1, scope: !4655, file: !1029, line: 130, type: !4658)
!4694 = !DILocation(line: 0, scope: !4655)
!4695 = !DILocation(line: 151, column: 14, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4655, file: !1029, line: 151, column: 7)
!4697 = !DILocation(line: 151, column: 22, scope: !4696)
!4698 = !DILocation(line: 151, column: 27, scope: !4696)
!4699 = !DILocation(line: 151, column: 7, scope: !4655)
!4700 = !DILocation(line: 152, column: 12, scope: !4696)
!4701 = !DILocation(line: 152, column: 5, scope: !4696)
!4702 = !DILocalVariable(name: "fp", arg: 1, scope: !4703, file: !1029, line: 42, type: !4658)
!4703 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1029, file: !1029, line: 42, type: !4704, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{null, !4658}
!4706 = !{!4702}
!4707 = !DILocation(line: 0, scope: !4703, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 157, column: 3, scope: !4655)
!4709 = !DILocation(line: 44, column: 12, scope: !4710, inlinedAt: !4708)
!4710 = distinct !DILexicalBlock(scope: !4703, file: !1029, line: 44, column: 7)
!4711 = !DILocation(line: 44, column: 19, scope: !4710, inlinedAt: !4708)
!4712 = !DILocation(line: 44, column: 7, scope: !4703, inlinedAt: !4708)
!4713 = !DILocation(line: 46, column: 5, scope: !4710, inlinedAt: !4708)
!4714 = !DILocation(line: 159, column: 10, scope: !4655)
!4715 = !DILocation(line: 159, column: 3, scope: !4655)
!4716 = !DILocation(line: 236, column: 1, scope: !4655)
!4717 = !DISubprogram(name: "fflush", scope: !382, file: !382, line: 230, type: !4656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4718 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1031, file: !1031, line: 28, type: !4719, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4756)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!70, !4721, !4755, !70}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4723)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4724)
!4724 = !{!4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4723, file: !165, line: 51, baseType: !70, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4723, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4723, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4723, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4723, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4723, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4723, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4723, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4723, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4723, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4723, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4723, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4723, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4723, file: !165, line: 70, baseType: !4739, size: 64, offset: 832)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4723, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4723, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4723, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4723, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4723, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4723, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4723, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4723, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4723, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4723, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4723, file: !165, line: 93, baseType: !4739, size: 64, offset: 1344)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4723, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4723, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4723, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4723, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !382, line: 63, baseType: !187)
!4756 = !{!4757, !4758, !4759, !4760}
!4757 = !DILocalVariable(name: "fp", arg: 1, scope: !4718, file: !1031, line: 28, type: !4721)
!4758 = !DILocalVariable(name: "offset", arg: 2, scope: !4718, file: !1031, line: 28, type: !4755)
!4759 = !DILocalVariable(name: "whence", arg: 3, scope: !4718, file: !1031, line: 28, type: !70)
!4760 = !DILocalVariable(name: "pos", scope: !4761, file: !1031, line: 123, type: !4755)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !1031, line: 119, column: 5)
!4762 = distinct !DILexicalBlock(scope: !4718, file: !1031, line: 55, column: 7)
!4763 = !DILocation(line: 0, scope: !4718)
!4764 = !DILocation(line: 55, column: 12, scope: !4762)
!4765 = !{!1518, !1061, i64 16}
!4766 = !DILocation(line: 55, column: 33, scope: !4762)
!4767 = !{!1518, !1061, i64 8}
!4768 = !DILocation(line: 55, column: 25, scope: !4762)
!4769 = !DILocation(line: 56, column: 7, scope: !4762)
!4770 = !DILocation(line: 56, column: 15, scope: !4762)
!4771 = !DILocation(line: 56, column: 37, scope: !4762)
!4772 = !{!1518, !1061, i64 32}
!4773 = !DILocation(line: 56, column: 29, scope: !4762)
!4774 = !DILocation(line: 57, column: 7, scope: !4762)
!4775 = !DILocation(line: 57, column: 15, scope: !4762)
!4776 = !{!1518, !1061, i64 72}
!4777 = !DILocation(line: 57, column: 29, scope: !4762)
!4778 = !DILocation(line: 55, column: 7, scope: !4718)
!4779 = !DILocation(line: 123, column: 26, scope: !4761)
!4780 = !DILocation(line: 123, column: 19, scope: !4761)
!4781 = !DILocation(line: 0, scope: !4761)
!4782 = !DILocation(line: 124, column: 15, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4761, file: !1031, line: 124, column: 11)
!4784 = !DILocation(line: 124, column: 11, scope: !4761)
!4785 = !DILocation(line: 135, column: 19, scope: !4761)
!4786 = !DILocation(line: 136, column: 12, scope: !4761)
!4787 = !DILocation(line: 136, column: 20, scope: !4761)
!4788 = !{!1518, !1519, i64 144}
!4789 = !DILocation(line: 167, column: 7, scope: !4761)
!4790 = !DILocation(line: 169, column: 10, scope: !4718)
!4791 = !DILocation(line: 169, column: 3, scope: !4718)
!4792 = !DILocation(line: 170, column: 1, scope: !4718)
!4793 = !DISubprogram(name: "fseeko", scope: !382, file: !382, line: 736, type: !4794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!70, !4721, !187, !70}
!4796 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !712, file: !712, line: 100, type: !4797, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !4800)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!104, !2171, !107, !104, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!4800 = !{!4801, !4802, !4803, !4804, !4805}
!4801 = !DILocalVariable(name: "pwc", arg: 1, scope: !4796, file: !712, line: 100, type: !2171)
!4802 = !DILocalVariable(name: "s", arg: 2, scope: !4796, file: !712, line: 100, type: !107)
!4803 = !DILocalVariable(name: "n", arg: 3, scope: !4796, file: !712, line: 100, type: !104)
!4804 = !DILocalVariable(name: "ps", arg: 4, scope: !4796, file: !712, line: 100, type: !4799)
!4805 = !DILocalVariable(name: "ret", scope: !4796, file: !712, line: 130, type: !104)
!4806 = !DILocation(line: 0, scope: !4796)
!4807 = !DILocation(line: 105, column: 9, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4796, file: !712, line: 105, column: 7)
!4809 = !DILocation(line: 105, column: 7, scope: !4796)
!4810 = !DILocation(line: 117, column: 10, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4796, file: !712, line: 117, column: 7)
!4812 = !DILocation(line: 117, column: 7, scope: !4796)
!4813 = !DILocation(line: 130, column: 16, scope: !4796)
!4814 = !DILocation(line: 135, column: 11, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4796, file: !712, line: 135, column: 7)
!4816 = !DILocation(line: 135, column: 25, scope: !4815)
!4817 = !DILocation(line: 135, column: 30, scope: !4815)
!4818 = !DILocation(line: 135, column: 7, scope: !4796)
!4819 = !DILocalVariable(name: "ps", arg: 1, scope: !4820, file: !2144, line: 1135, type: !4799)
!4820 = distinct !DISubprogram(name: "mbszero", scope: !2144, file: !2144, line: 1135, type: !4821, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !4823)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !4799}
!4823 = !{!4819}
!4824 = !DILocation(line: 0, scope: !4820, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 137, column: 5, scope: !4815)
!4826 = !DILocalVariable(name: "__dest", arg: 1, scope: !4827, file: !2153, line: 57, type: !102)
!4827 = distinct !DISubprogram(name: "memset", scope: !2153, file: !2153, line: 57, type: !2154, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !4828)
!4828 = !{!4826, !4829, !4830}
!4829 = !DILocalVariable(name: "__ch", arg: 2, scope: !4827, file: !2153, line: 57, type: !70)
!4830 = !DILocalVariable(name: "__len", arg: 3, scope: !4827, file: !2153, line: 57, type: !104)
!4831 = !DILocation(line: 0, scope: !4827, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 1137, column: 3, scope: !4820, inlinedAt: !4825)
!4833 = !DILocation(line: 59, column: 10, scope: !4827, inlinedAt: !4832)
!4834 = !DILocation(line: 137, column: 5, scope: !4815)
!4835 = !DILocation(line: 138, column: 11, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4796, file: !712, line: 138, column: 7)
!4837 = !DILocation(line: 138, column: 7, scope: !4796)
!4838 = !DILocation(line: 139, column: 5, scope: !4836)
!4839 = !DILocation(line: 143, column: 26, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4796, file: !712, line: 143, column: 7)
!4841 = !DILocation(line: 143, column: 41, scope: !4840)
!4842 = !DILocation(line: 143, column: 7, scope: !4796)
!4843 = !DILocation(line: 145, column: 15, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !712, line: 145, column: 11)
!4845 = distinct !DILexicalBlock(scope: !4840, file: !712, line: 144, column: 5)
!4846 = !DILocation(line: 145, column: 11, scope: !4845)
!4847 = !DILocation(line: 146, column: 32, scope: !4844)
!4848 = !DILocation(line: 146, column: 16, scope: !4844)
!4849 = !DILocation(line: 146, column: 14, scope: !4844)
!4850 = !DILocation(line: 146, column: 9, scope: !4844)
!4851 = !DILocation(line: 286, column: 1, scope: !4796)
!4852 = !DISubprogram(name: "mbsinit", scope: !4853, file: !4853, line: 293, type: !4854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1107)
!4853 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!70, !4856}
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!4858 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1033, file: !1033, line: 27, type: !3621, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4859)
!4859 = !{!4860, !4861, !4862, !4863}
!4860 = !DILocalVariable(name: "ptr", arg: 1, scope: !4858, file: !1033, line: 27, type: !102)
!4861 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4858, file: !1033, line: 27, type: !104)
!4862 = !DILocalVariable(name: "size", arg: 3, scope: !4858, file: !1033, line: 27, type: !104)
!4863 = !DILocalVariable(name: "nbytes", scope: !4858, file: !1033, line: 29, type: !104)
!4864 = !DILocation(line: 0, scope: !4858)
!4865 = !DILocation(line: 30, column: 7, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4858, file: !1033, line: 30, column: 7)
!4867 = !DILocalVariable(name: "ptr", arg: 1, scope: !4868, file: !3713, line: 2057, type: !102)
!4868 = distinct !DISubprogram(name: "rpl_realloc", scope: !3713, file: !3713, line: 2057, type: !3705, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4869)
!4869 = !{!4867, !4870}
!4870 = !DILocalVariable(name: "size", arg: 2, scope: !4868, file: !3713, line: 2057, type: !104)
!4871 = !DILocation(line: 0, scope: !4868, inlinedAt: !4872)
!4872 = distinct !DILocation(line: 37, column: 10, scope: !4858)
!4873 = !DILocation(line: 2059, column: 24, scope: !4868, inlinedAt: !4872)
!4874 = !DILocation(line: 2059, column: 10, scope: !4868, inlinedAt: !4872)
!4875 = !DILocation(line: 37, column: 3, scope: !4858)
!4876 = !DILocation(line: 32, column: 7, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4866, file: !1033, line: 31, column: 5)
!4878 = !DILocation(line: 32, column: 13, scope: !4877)
!4879 = !DILocation(line: 33, column: 7, scope: !4877)
!4880 = !DILocation(line: 38, column: 1, scope: !4858)
!4881 = distinct !DISubprogram(name: "hard_locale", scope: !730, file: !730, line: 28, type: !1655, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !4882)
!4882 = !{!4883, !4884}
!4883 = !DILocalVariable(name: "category", arg: 1, scope: !4881, file: !730, line: 28, type: !70)
!4884 = !DILocalVariable(name: "locale", scope: !4881, file: !730, line: 30, type: !4885)
!4885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4886)
!4886 = !{!4887}
!4887 = !DISubrange(count: 257)
!4888 = !DILocation(line: 0, scope: !4881)
!4889 = !DILocation(line: 30, column: 3, scope: !4881)
!4890 = !DILocation(line: 30, column: 8, scope: !4881)
!4891 = !DILocation(line: 32, column: 7, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4881, file: !730, line: 32, column: 7)
!4893 = !DILocation(line: 32, column: 7, scope: !4881)
!4894 = !DILocalVariable(name: "__s1", arg: 1, scope: !4895, file: !1135, line: 1359, type: !107)
!4895 = distinct !DISubprogram(name: "streq", scope: !1135, file: !1135, line: 1359, type: !1136, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !4896)
!4896 = !{!4894, !4897}
!4897 = !DILocalVariable(name: "__s2", arg: 2, scope: !4895, file: !1135, line: 1359, type: !107)
!4898 = !DILocation(line: 0, scope: !4895, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 35, column: 9, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4881, file: !730, line: 35, column: 7)
!4901 = !DILocation(line: 1361, column: 11, scope: !4895, inlinedAt: !4899)
!4902 = !DILocation(line: 1361, column: 10, scope: !4895, inlinedAt: !4899)
!4903 = !DILocation(line: 35, column: 29, scope: !4900)
!4904 = !DILocation(line: 0, scope: !4895, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 35, column: 32, scope: !4900)
!4906 = !DILocation(line: 1361, column: 11, scope: !4895, inlinedAt: !4905)
!4907 = !DILocation(line: 1361, column: 10, scope: !4895, inlinedAt: !4905)
!4908 = !DILocation(line: 35, column: 7, scope: !4881)
!4909 = !DILocation(line: 46, column: 3, scope: !4881)
!4910 = !DILocation(line: 47, column: 1, scope: !4881)
!4911 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1038, file: !1038, line: 154, type: !4912, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4914)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!70, !70, !101, !104}
!4914 = !{!4915, !4916, !4917}
!4915 = !DILocalVariable(name: "category", arg: 1, scope: !4911, file: !1038, line: 154, type: !70)
!4916 = !DILocalVariable(name: "buf", arg: 2, scope: !4911, file: !1038, line: 154, type: !101)
!4917 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4911, file: !1038, line: 154, type: !104)
!4918 = !DILocation(line: 0, scope: !4911)
!4919 = !DILocation(line: 159, column: 10, scope: !4911)
!4920 = !DILocation(line: 159, column: 3, scope: !4911)
!4921 = distinct !DISubprogram(name: "setlocale_null", scope: !1038, file: !1038, line: 186, type: !4922, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4924)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!107, !70}
!4924 = !{!4925}
!4925 = !DILocalVariable(name: "category", arg: 1, scope: !4921, file: !1038, line: 186, type: !70)
!4926 = !DILocation(line: 0, scope: !4921)
!4927 = !DILocation(line: 189, column: 10, scope: !4921)
!4928 = !DILocation(line: 189, column: 3, scope: !4921)
!4929 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1040, file: !1040, line: 35, type: !4922, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !4930)
!4930 = !{!4931, !4932}
!4931 = !DILocalVariable(name: "category", arg: 1, scope: !4929, file: !1040, line: 35, type: !70)
!4932 = !DILocalVariable(name: "result", scope: !4929, file: !1040, line: 37, type: !107)
!4933 = !DILocation(line: 0, scope: !4929)
!4934 = !DILocation(line: 37, column: 24, scope: !4929)
!4935 = !DILocation(line: 62, column: 3, scope: !4929)
!4936 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1040, file: !1040, line: 66, type: !4912, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !4937)
!4937 = !{!4938, !4939, !4940, !4941, !4942}
!4938 = !DILocalVariable(name: "category", arg: 1, scope: !4936, file: !1040, line: 66, type: !70)
!4939 = !DILocalVariable(name: "buf", arg: 2, scope: !4936, file: !1040, line: 66, type: !101)
!4940 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4936, file: !1040, line: 66, type: !104)
!4941 = !DILocalVariable(name: "result", scope: !4936, file: !1040, line: 111, type: !107)
!4942 = !DILocalVariable(name: "length", scope: !4943, file: !1040, line: 125, type: !104)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !1040, line: 124, column: 5)
!4944 = distinct !DILexicalBlock(scope: !4936, file: !1040, line: 113, column: 7)
!4945 = !DILocation(line: 0, scope: !4936)
!4946 = !DILocation(line: 0, scope: !4929, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 111, column: 24, scope: !4936)
!4948 = !DILocation(line: 37, column: 24, scope: !4929, inlinedAt: !4947)
!4949 = !DILocation(line: 113, column: 14, scope: !4944)
!4950 = !DILocation(line: 113, column: 7, scope: !4936)
!4951 = !DILocation(line: 116, column: 19, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4953, file: !1040, line: 116, column: 11)
!4953 = distinct !DILexicalBlock(scope: !4944, file: !1040, line: 114, column: 5)
!4954 = !DILocation(line: 116, column: 11, scope: !4953)
!4955 = !DILocation(line: 120, column: 16, scope: !4952)
!4956 = !DILocation(line: 120, column: 9, scope: !4952)
!4957 = !DILocation(line: 125, column: 23, scope: !4943)
!4958 = !DILocation(line: 0, scope: !4943)
!4959 = !DILocation(line: 126, column: 18, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4943, file: !1040, line: 126, column: 11)
!4961 = !DILocation(line: 126, column: 11, scope: !4943)
!4962 = !DILocation(line: 128, column: 39, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4960, file: !1040, line: 127, column: 9)
!4964 = !DILocalVariable(name: "__dest", arg: 1, scope: !4965, file: !2153, line: 26, type: !3981)
!4965 = distinct !DISubprogram(name: "memcpy", scope: !2153, file: !2153, line: 26, type: !3979, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !4966)
!4966 = !{!4964, !4967, !4968}
!4967 = !DILocalVariable(name: "__src", arg: 2, scope: !4965, file: !2153, line: 26, type: !1266)
!4968 = !DILocalVariable(name: "__len", arg: 3, scope: !4965, file: !2153, line: 26, type: !104)
!4969 = !DILocation(line: 0, scope: !4965, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 128, column: 11, scope: !4963)
!4971 = !DILocation(line: 29, column: 10, scope: !4965, inlinedAt: !4970)
!4972 = !DILocation(line: 129, column: 11, scope: !4963)
!4973 = !DILocation(line: 133, column: 23, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4975, file: !1040, line: 133, column: 15)
!4975 = distinct !DILexicalBlock(scope: !4960, file: !1040, line: 132, column: 9)
!4976 = !DILocation(line: 133, column: 15, scope: !4975)
!4977 = !DILocation(line: 138, column: 44, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4974, file: !1040, line: 134, column: 13)
!4979 = !DILocation(line: 0, scope: !4965, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 138, column: 15, scope: !4978)
!4981 = !DILocation(line: 29, column: 10, scope: !4965, inlinedAt: !4980)
!4982 = !DILocation(line: 139, column: 15, scope: !4978)
!4983 = !DILocation(line: 139, column: 32, scope: !4978)
!4984 = !DILocation(line: 140, column: 13, scope: !4978)
!4985 = !DILocation(line: 0, scope: !4944)
!4986 = !DILocation(line: 145, column: 1, scope: !4936)
